; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!582156 () Bool)

(assert start!582156)

(declare-fun b!5617897 () Bool)

(assert (=> b!5617897 true))

(assert (=> b!5617897 true))

(declare-fun lambda!301529 () Int)

(declare-fun lambda!301528 () Int)

(assert (=> b!5617897 (not (= lambda!301529 lambda!301528))))

(assert (=> b!5617897 true))

(assert (=> b!5617897 true))

(declare-fun b!5617877 () Bool)

(assert (=> b!5617877 true))

(declare-fun b!5617870 () Bool)

(declare-fun res!2379732 () Bool)

(declare-fun e!3463267 () Bool)

(assert (=> b!5617870 (=> (not res!2379732) (not e!3463267))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31472 0))(
  ( (C!31473 (val!25438 Int)) )
))
(declare-datatypes ((Regex!15601 0))(
  ( (ElementMatch!15601 (c!985623 C!31472)) (Concat!24446 (regOne!31714 Regex!15601) (regTwo!31714 Regex!15601)) (EmptyExpr!15601) (Star!15601 (reg!15930 Regex!15601)) (EmptyLang!15601) (Union!15601 (regOne!31715 Regex!15601) (regTwo!31715 Regex!15601)) )
))
(declare-datatypes ((List!63102 0))(
  ( (Nil!62978) (Cons!62978 (h!69426 Regex!15601) (t!376392 List!63102)) )
))
(declare-datatypes ((Context!9970 0))(
  ( (Context!9971 (exprs!5485 List!63102)) )
))
(declare-fun z!1189 () (InoxSet Context!9970))

(declare-datatypes ((List!63103 0))(
  ( (Nil!62979) (Cons!62979 (h!69427 Context!9970) (t!376393 List!63103)) )
))
(declare-fun zl!343 () List!63103)

(declare-fun toList!9385 ((InoxSet Context!9970)) List!63103)

(assert (=> b!5617870 (= res!2379732 (= (toList!9385 z!1189) zl!343))))

(declare-fun b!5617871 () Bool)

(declare-fun res!2379720 () Bool)

(declare-fun e!3463263 () Bool)

(assert (=> b!5617871 (=> res!2379720 e!3463263)))

(declare-fun r!7292 () Regex!15601)

(declare-fun generalisedConcat!1216 (List!63102) Regex!15601)

(assert (=> b!5617871 (= res!2379720 (not (= r!7292 (generalisedConcat!1216 (exprs!5485 (h!69427 zl!343))))))))

(declare-fun b!5617872 () Bool)

(declare-datatypes ((Unit!155900 0))(
  ( (Unit!155901) )
))
(declare-fun e!3463265 () Unit!155900)

(declare-fun Unit!155902 () Unit!155900)

(assert (=> b!5617872 (= e!3463265 Unit!155902)))

(declare-fun b!5617874 () Bool)

(declare-fun e!3463269 () Bool)

(declare-fun lt!2259193 () (InoxSet Context!9970))

(declare-datatypes ((List!63104 0))(
  ( (Nil!62980) (Cons!62980 (h!69428 C!31472) (t!376394 List!63104)) )
))
(declare-fun s!2326 () List!63104)

(declare-fun matchZipper!1739 ((InoxSet Context!9970) List!63104) Bool)

(assert (=> b!5617874 (= e!3463269 (matchZipper!1739 lt!2259193 (t!376394 s!2326)))))

(declare-fun tp!1556275 () Bool)

(declare-fun b!5617875 () Bool)

(declare-fun e!3463270 () Bool)

(declare-fun e!3463280 () Bool)

(declare-fun inv!82249 (Context!9970) Bool)

(assert (=> b!5617875 (= e!3463270 (and (inv!82249 (h!69427 zl!343)) e!3463280 tp!1556275))))

(declare-fun b!5617876 () Bool)

(declare-fun e!3463279 () Bool)

(declare-fun e!3463264 () Bool)

(assert (=> b!5617876 (= e!3463279 e!3463264)))

(declare-fun res!2379740 () Bool)

(assert (=> b!5617876 (=> res!2379740 e!3463264)))

(declare-fun lt!2259167 () Int)

(declare-fun lt!2259185 () Int)

(assert (=> b!5617876 (= res!2379740 (>= lt!2259167 lt!2259185))))

(declare-fun zipperDepthTotal!226 (List!63103) Int)

(assert (=> b!5617876 (= lt!2259185 (zipperDepthTotal!226 zl!343))))

(declare-fun lt!2259168 () List!63103)

(assert (=> b!5617876 (= lt!2259167 (zipperDepthTotal!226 lt!2259168))))

(declare-fun lt!2259163 () Context!9970)

(assert (=> b!5617876 (= lt!2259168 (Cons!62979 lt!2259163 Nil!62979))))

(declare-fun e!3463282 () Bool)

(declare-fun e!3463266 () Bool)

(assert (=> b!5617877 (= e!3463282 e!3463266)))

(declare-fun res!2379738 () Bool)

(assert (=> b!5617877 (=> res!2379738 e!3463266)))

(get-info :version)

(assert (=> b!5617877 (= res!2379738 (or (and ((_ is ElementMatch!15601) (regOne!31714 r!7292)) (= (c!985623 (regOne!31714 r!7292)) (h!69428 s!2326))) (not ((_ is Union!15601) (regOne!31714 r!7292)))))))

(declare-fun lt!2259172 () Unit!155900)

(assert (=> b!5617877 (= lt!2259172 e!3463265)))

(declare-fun c!985622 () Bool)

(declare-fun nullable!5633 (Regex!15601) Bool)

(assert (=> b!5617877 (= c!985622 (nullable!5633 (h!69426 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun lambda!301530 () Int)

(declare-fun flatMap!1214 ((InoxSet Context!9970) Int) (InoxSet Context!9970))

(declare-fun derivationStepZipperUp!869 (Context!9970 C!31472) (InoxSet Context!9970))

(assert (=> b!5617877 (= (flatMap!1214 z!1189 lambda!301530) (derivationStepZipperUp!869 (h!69427 zl!343) (h!69428 s!2326)))))

(declare-fun lt!2259178 () Unit!155900)

(declare-fun lemmaFlatMapOnSingletonSet!746 ((InoxSet Context!9970) Context!9970 Int) Unit!155900)

(assert (=> b!5617877 (= lt!2259178 (lemmaFlatMapOnSingletonSet!746 z!1189 (h!69427 zl!343) lambda!301530))))

(declare-fun lt!2259187 () (InoxSet Context!9970))

(declare-fun lt!2259184 () Context!9970)

(assert (=> b!5617877 (= lt!2259187 (derivationStepZipperUp!869 lt!2259184 (h!69428 s!2326)))))

(declare-fun lt!2259189 () (InoxSet Context!9970))

(declare-fun derivationStepZipperDown!943 (Regex!15601 Context!9970 C!31472) (InoxSet Context!9970))

(assert (=> b!5617877 (= lt!2259189 (derivationStepZipperDown!943 (h!69426 (exprs!5485 (h!69427 zl!343))) lt!2259184 (h!69428 s!2326)))))

(assert (=> b!5617877 (= lt!2259184 (Context!9971 (t!376392 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun lt!2259202 () (InoxSet Context!9970))

(assert (=> b!5617877 (= lt!2259202 (derivationStepZipperUp!869 (Context!9971 (Cons!62978 (h!69426 (exprs!5485 (h!69427 zl!343))) (t!376392 (exprs!5485 (h!69427 zl!343))))) (h!69428 s!2326)))))

(declare-fun b!5617878 () Bool)

(declare-fun e!3463275 () Bool)

(assert (=> b!5617878 (= e!3463275 (matchZipper!1739 lt!2259187 (t!376394 s!2326)))))

(declare-fun b!5617879 () Bool)

(declare-fun e!3463285 () Unit!155900)

(declare-fun Unit!155903 () Unit!155900)

(assert (=> b!5617879 (= e!3463285 Unit!155903)))

(declare-fun lt!2259177 () Unit!155900)

(declare-fun lt!2259197 () (InoxSet Context!9970))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!626 ((InoxSet Context!9970) (InoxSet Context!9970) List!63104) Unit!155900)

(assert (=> b!5617879 (= lt!2259177 (lemmaZipperConcatMatchesSameAsBothZippers!626 lt!2259197 lt!2259187 (t!376394 s!2326)))))

(declare-fun res!2379731 () Bool)

(declare-fun lt!2259161 () Bool)

(assert (=> b!5617879 (= res!2379731 lt!2259161)))

(assert (=> b!5617879 (=> res!2379731 e!3463275)))

(assert (=> b!5617879 (= (matchZipper!1739 ((_ map or) lt!2259197 lt!2259187) (t!376394 s!2326)) e!3463275)))

(declare-fun b!5617880 () Bool)

(declare-fun e!3463271 () Bool)

(assert (=> b!5617880 (= e!3463271 (not (matchZipper!1739 lt!2259193 (t!376394 s!2326))))))

(declare-fun b!5617881 () Bool)

(declare-fun e!3463276 () Bool)

(declare-fun tp_is_empty!40455 () Bool)

(assert (=> b!5617881 (= e!3463276 tp_is_empty!40455)))

(declare-fun b!5617882 () Bool)

(declare-fun e!3463277 () Bool)

(assert (=> b!5617882 (= e!3463277 (matchZipper!1739 lt!2259187 (t!376394 s!2326)))))

(declare-fun b!5617883 () Bool)

(declare-fun Unit!155904 () Unit!155900)

(assert (=> b!5617883 (= e!3463265 Unit!155904)))

(declare-fun lt!2259196 () Unit!155900)

(assert (=> b!5617883 (= lt!2259196 (lemmaZipperConcatMatchesSameAsBothZippers!626 lt!2259189 lt!2259187 (t!376394 s!2326)))))

(declare-fun res!2379721 () Bool)

(assert (=> b!5617883 (= res!2379721 (matchZipper!1739 lt!2259189 (t!376394 s!2326)))))

(assert (=> b!5617883 (=> res!2379721 e!3463277)))

(assert (=> b!5617883 (= (matchZipper!1739 ((_ map or) lt!2259189 lt!2259187) (t!376394 s!2326)) e!3463277)))

(declare-fun b!5617884 () Bool)

(declare-fun e!3463274 () Bool)

(declare-fun lt!2259176 () (InoxSet Context!9970))

(assert (=> b!5617884 (= e!3463274 (matchZipper!1739 lt!2259176 s!2326))))

(declare-fun b!5617885 () Bool)

(declare-fun tp!1556273 () Bool)

(assert (=> b!5617885 (= e!3463280 tp!1556273)))

(declare-fun b!5617886 () Bool)

(declare-fun e!3463278 () Bool)

(assert (=> b!5617886 (= e!3463267 e!3463278)))

(declare-fun res!2379729 () Bool)

(assert (=> b!5617886 (=> (not res!2379729) (not e!3463278))))

(declare-fun lt!2259162 () Regex!15601)

(assert (=> b!5617886 (= res!2379729 (= r!7292 lt!2259162))))

(declare-fun unfocusZipper!1343 (List!63103) Regex!15601)

(assert (=> b!5617886 (= lt!2259162 (unfocusZipper!1343 zl!343))))

(declare-fun b!5617887 () Bool)

(declare-fun e!3463268 () Unit!155900)

(declare-fun Unit!155905 () Unit!155900)

(assert (=> b!5617887 (= e!3463268 Unit!155905)))

(declare-fun lt!2259206 () Unit!155900)

(assert (=> b!5617887 (= lt!2259206 (lemmaZipperConcatMatchesSameAsBothZippers!626 lt!2259193 lt!2259187 (t!376394 s!2326)))))

(declare-fun res!2379742 () Bool)

(assert (=> b!5617887 (= res!2379742 (matchZipper!1739 lt!2259193 (t!376394 s!2326)))))

(declare-fun e!3463273 () Bool)

(assert (=> b!5617887 (=> res!2379742 e!3463273)))

(assert (=> b!5617887 (= (matchZipper!1739 ((_ map or) lt!2259193 lt!2259187) (t!376394 s!2326)) e!3463273)))

(declare-fun b!5617873 () Bool)

(declare-fun e!3463286 () Bool)

(declare-fun tp!1556271 () Bool)

(assert (=> b!5617873 (= e!3463286 (and tp_is_empty!40455 tp!1556271))))

(declare-fun res!2379734 () Bool)

(assert (=> start!582156 (=> (not res!2379734) (not e!3463267))))

(declare-fun validRegex!7337 (Regex!15601) Bool)

(assert (=> start!582156 (= res!2379734 (validRegex!7337 r!7292))))

(assert (=> start!582156 e!3463267))

(assert (=> start!582156 e!3463276))

(declare-fun condSetEmpty!37472 () Bool)

(assert (=> start!582156 (= condSetEmpty!37472 (= z!1189 ((as const (Array Context!9970 Bool)) false)))))

(declare-fun setRes!37472 () Bool)

(assert (=> start!582156 setRes!37472))

(assert (=> start!582156 e!3463270))

(assert (=> start!582156 e!3463286))

(declare-fun b!5617888 () Bool)

(declare-fun tp!1556267 () Bool)

(declare-fun tp!1556274 () Bool)

(assert (=> b!5617888 (= e!3463276 (and tp!1556267 tp!1556274))))

(declare-fun b!5617889 () Bool)

(declare-fun e!3463262 () Bool)

(declare-fun e!3463283 () Bool)

(assert (=> b!5617889 (= e!3463262 e!3463283)))

(declare-fun res!2379718 () Bool)

(assert (=> b!5617889 (=> res!2379718 e!3463283)))

(assert (=> b!5617889 (= res!2379718 e!3463271)))

(declare-fun res!2379730 () Bool)

(assert (=> b!5617889 (=> (not res!2379730) (not e!3463271))))

(assert (=> b!5617889 (= res!2379730 (not (= (matchZipper!1739 lt!2259189 (t!376394 s!2326)) lt!2259161)))))

(declare-fun lt!2259180 () (InoxSet Context!9970))

(assert (=> b!5617889 (= (matchZipper!1739 lt!2259180 (t!376394 s!2326)) e!3463269)))

(declare-fun res!2379719 () Bool)

(assert (=> b!5617889 (=> res!2379719 e!3463269)))

(assert (=> b!5617889 (= res!2379719 lt!2259161)))

(assert (=> b!5617889 (= lt!2259161 (matchZipper!1739 lt!2259197 (t!376394 s!2326)))))

(declare-fun lt!2259198 () Unit!155900)

(assert (=> b!5617889 (= lt!2259198 (lemmaZipperConcatMatchesSameAsBothZippers!626 lt!2259197 lt!2259193 (t!376394 s!2326)))))

(declare-fun b!5617890 () Bool)

(declare-fun Unit!155906 () Unit!155900)

(assert (=> b!5617890 (= e!3463268 Unit!155906)))

(declare-fun b!5617891 () Bool)

(assert (=> b!5617891 (= e!3463283 e!3463279)))

(declare-fun res!2379737 () Bool)

(assert (=> b!5617891 (=> res!2379737 e!3463279)))

(declare-fun lt!2259203 () Bool)

(assert (=> b!5617891 (= res!2379737 (not (= lt!2259203 e!3463274)))))

(declare-fun res!2379725 () Bool)

(assert (=> b!5617891 (=> res!2379725 e!3463274)))

(declare-fun lt!2259204 () Bool)

(assert (=> b!5617891 (= res!2379725 lt!2259204)))

(assert (=> b!5617891 (= lt!2259203 (matchZipper!1739 z!1189 s!2326))))

(declare-fun lt!2259182 () (InoxSet Context!9970))

(assert (=> b!5617891 (= lt!2259204 (matchZipper!1739 lt!2259182 s!2326))))

(declare-fun lt!2259194 () Unit!155900)

(assert (=> b!5617891 (= lt!2259194 e!3463268)))

(declare-fun c!985620 () Bool)

(assert (=> b!5617891 (= c!985620 (nullable!5633 (regTwo!31715 (regOne!31714 r!7292))))))

(declare-fun lt!2259171 () Context!9970)

(assert (=> b!5617891 (= (flatMap!1214 lt!2259176 lambda!301530) (derivationStepZipperUp!869 lt!2259171 (h!69428 s!2326)))))

(declare-fun lt!2259183 () Unit!155900)

(assert (=> b!5617891 (= lt!2259183 (lemmaFlatMapOnSingletonSet!746 lt!2259176 lt!2259171 lambda!301530))))

(declare-fun lt!2259175 () (InoxSet Context!9970))

(assert (=> b!5617891 (= lt!2259175 (derivationStepZipperUp!869 lt!2259171 (h!69428 s!2326)))))

(declare-fun lt!2259166 () Unit!155900)

(assert (=> b!5617891 (= lt!2259166 e!3463285)))

(declare-fun c!985621 () Bool)

(assert (=> b!5617891 (= c!985621 (nullable!5633 (regOne!31715 (regOne!31714 r!7292))))))

(assert (=> b!5617891 (= (flatMap!1214 lt!2259182 lambda!301530) (derivationStepZipperUp!869 lt!2259163 (h!69428 s!2326)))))

(declare-fun lt!2259181 () Unit!155900)

(assert (=> b!5617891 (= lt!2259181 (lemmaFlatMapOnSingletonSet!746 lt!2259182 lt!2259163 lambda!301530))))

(declare-fun lt!2259173 () (InoxSet Context!9970))

(assert (=> b!5617891 (= lt!2259173 (derivationStepZipperUp!869 lt!2259163 (h!69428 s!2326)))))

(assert (=> b!5617891 (= lt!2259176 (store ((as const (Array Context!9970 Bool)) false) lt!2259171 true))))

(declare-fun lt!2259186 () List!63102)

(assert (=> b!5617891 (= lt!2259171 (Context!9971 lt!2259186))))

(assert (=> b!5617891 (= lt!2259186 (Cons!62978 (regTwo!31715 (regOne!31714 r!7292)) (t!376392 (exprs!5485 (h!69427 zl!343)))))))

(assert (=> b!5617891 (= lt!2259182 (store ((as const (Array Context!9970 Bool)) false) lt!2259163 true))))

(declare-fun lt!2259195 () List!63102)

(assert (=> b!5617891 (= lt!2259163 (Context!9971 lt!2259195))))

(assert (=> b!5617891 (= lt!2259195 (Cons!62978 (regOne!31715 (regOne!31714 r!7292)) (t!376392 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun b!5617892 () Bool)

(declare-fun e!3463281 () Bool)

(declare-fun e!3463284 () Bool)

(assert (=> b!5617892 (= e!3463281 e!3463284)))

(declare-fun res!2379733 () Bool)

(assert (=> b!5617892 (=> res!2379733 e!3463284)))

(declare-fun lt!2259190 () Bool)

(declare-fun lt!2259169 () Bool)

(assert (=> b!5617892 (= res!2379733 (or (and (not (= lt!2259203 lt!2259169)) (not lt!2259190)) (not (= r!7292 (Concat!24446 (Union!15601 (regOne!31715 (regOne!31714 r!7292)) (regTwo!31715 (regOne!31714 r!7292))) (regTwo!31714 r!7292))))))))

(declare-fun lt!2259170 () Regex!15601)

(declare-fun matchRSpec!2704 (Regex!15601 List!63104) Bool)

(assert (=> b!5617892 (= lt!2259190 (matchRSpec!2704 lt!2259170 s!2326))))

(declare-fun lt!2259201 () Unit!155900)

(declare-fun mainMatchTheorem!2704 (Regex!15601 List!63104) Unit!155900)

(assert (=> b!5617892 (= lt!2259201 (mainMatchTheorem!2704 lt!2259170 s!2326))))

(declare-fun lt!2259192 () Regex!15601)

(assert (=> b!5617892 (= lt!2259169 (matchRSpec!2704 lt!2259192 s!2326))))

(declare-fun lt!2259174 () Unit!155900)

(assert (=> b!5617892 (= lt!2259174 (mainMatchTheorem!2704 lt!2259192 s!2326))))

(assert (=> b!5617892 (= lt!2259190 (matchZipper!1739 lt!2259176 s!2326))))

(declare-fun matchR!7786 (Regex!15601 List!63104) Bool)

(assert (=> b!5617892 (= lt!2259190 (matchR!7786 lt!2259170 s!2326))))

(declare-fun lt!2259199 () List!63103)

(declare-fun lt!2259200 () Unit!155900)

(declare-fun theoremZipperRegexEquiv!617 ((InoxSet Context!9970) List!63103 Regex!15601 List!63104) Unit!155900)

(assert (=> b!5617892 (= lt!2259200 (theoremZipperRegexEquiv!617 lt!2259176 lt!2259199 lt!2259170 s!2326))))

(assert (=> b!5617892 (= lt!2259170 (generalisedConcat!1216 lt!2259186))))

(assert (=> b!5617892 (= lt!2259169 lt!2259204)))

(assert (=> b!5617892 (= lt!2259169 (matchR!7786 lt!2259192 s!2326))))

(declare-fun lt!2259179 () Unit!155900)

(assert (=> b!5617892 (= lt!2259179 (theoremZipperRegexEquiv!617 lt!2259182 lt!2259168 lt!2259192 s!2326))))

(assert (=> b!5617892 (= lt!2259192 (generalisedConcat!1216 lt!2259195))))

(declare-fun b!5617893 () Bool)

(assert (=> b!5617893 (= e!3463264 e!3463281)))

(declare-fun res!2379736 () Bool)

(assert (=> b!5617893 (=> res!2379736 e!3463281)))

(assert (=> b!5617893 (= res!2379736 (>= (zipperDepthTotal!226 lt!2259199) lt!2259185))))

(assert (=> b!5617893 (= lt!2259199 (Cons!62979 lt!2259171 Nil!62979))))

(declare-fun b!5617894 () Bool)

(declare-fun tp!1556266 () Bool)

(assert (=> b!5617894 (= e!3463276 tp!1556266)))

(declare-fun e!3463272 () Bool)

(declare-fun setElem!37472 () Context!9970)

(declare-fun tp!1556269 () Bool)

(declare-fun setNonEmpty!37472 () Bool)

(assert (=> setNonEmpty!37472 (= setRes!37472 (and tp!1556269 (inv!82249 setElem!37472) e!3463272))))

(declare-fun setRest!37472 () (InoxSet Context!9970))

(assert (=> setNonEmpty!37472 (= z!1189 ((_ map or) (store ((as const (Array Context!9970 Bool)) false) setElem!37472 true) setRest!37472))))

(declare-fun b!5617895 () Bool)

(declare-fun tp!1556270 () Bool)

(assert (=> b!5617895 (= e!3463272 tp!1556270)))

(declare-fun b!5617896 () Bool)

(declare-fun tp!1556268 () Bool)

(declare-fun tp!1556272 () Bool)

(assert (=> b!5617896 (= e!3463276 (and tp!1556268 tp!1556272))))

(assert (=> b!5617897 (= e!3463263 e!3463282)))

(declare-fun res!2379735 () Bool)

(assert (=> b!5617897 (=> res!2379735 e!3463282)))

(declare-fun lt!2259165 () Bool)

(declare-fun lt!2259188 () Bool)

(assert (=> b!5617897 (= res!2379735 (or (not (= lt!2259188 lt!2259165)) ((_ is Nil!62980) s!2326)))))

(declare-fun Exists!2701 (Int) Bool)

(assert (=> b!5617897 (= (Exists!2701 lambda!301528) (Exists!2701 lambda!301529))))

(declare-fun lt!2259164 () Unit!155900)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1330 (Regex!15601 Regex!15601 List!63104) Unit!155900)

(assert (=> b!5617897 (= lt!2259164 (lemmaExistCutMatchRandMatchRSpecEquivalent!1330 (regOne!31714 r!7292) (regTwo!31714 r!7292) s!2326))))

(assert (=> b!5617897 (= lt!2259165 (Exists!2701 lambda!301528))))

(declare-datatypes ((tuple2!65396 0))(
  ( (tuple2!65397 (_1!36001 List!63104) (_2!36001 List!63104)) )
))
(declare-datatypes ((Option!15610 0))(
  ( (None!15609) (Some!15609 (v!51654 tuple2!65396)) )
))
(declare-fun isDefined!12313 (Option!15610) Bool)

(declare-fun findConcatSeparation!2024 (Regex!15601 Regex!15601 List!63104 List!63104 List!63104) Option!15610)

(assert (=> b!5617897 (= lt!2259165 (isDefined!12313 (findConcatSeparation!2024 (regOne!31714 r!7292) (regTwo!31714 r!7292) Nil!62980 s!2326 s!2326)))))

(declare-fun lt!2259205 () Unit!155900)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1788 (Regex!15601 Regex!15601 List!63104) Unit!155900)

(assert (=> b!5617897 (= lt!2259205 (lemmaFindConcatSeparationEquivalentToExists!1788 (regOne!31714 r!7292) (regTwo!31714 r!7292) s!2326))))

(declare-fun b!5617898 () Bool)

(assert (=> b!5617898 (= e!3463273 (matchZipper!1739 lt!2259187 (t!376394 s!2326)))))

(declare-fun b!5617899 () Bool)

(declare-fun res!2379727 () Bool)

(assert (=> b!5617899 (=> res!2379727 e!3463263)))

(declare-fun generalisedUnion!1464 (List!63102) Regex!15601)

(declare-fun unfocusZipperList!1029 (List!63103) List!63102)

(assert (=> b!5617899 (= res!2379727 (not (= r!7292 (generalisedUnion!1464 (unfocusZipperList!1029 zl!343)))))))

(declare-fun b!5617900 () Bool)

(declare-fun res!2379728 () Bool)

(assert (=> b!5617900 (=> res!2379728 e!3463263)))

(declare-fun isEmpty!34802 (List!63103) Bool)

(assert (=> b!5617900 (= res!2379728 (not (isEmpty!34802 (t!376393 zl!343))))))

(declare-fun b!5617901 () Bool)

(declare-fun res!2379739 () Bool)

(assert (=> b!5617901 (=> res!2379739 e!3463263)))

(assert (=> b!5617901 (= res!2379739 (not ((_ is Cons!62978) (exprs!5485 (h!69427 zl!343)))))))

(declare-fun b!5617902 () Bool)

(assert (=> b!5617902 (= e!3463278 (not e!3463263))))

(declare-fun res!2379741 () Bool)

(assert (=> b!5617902 (=> res!2379741 e!3463263)))

(assert (=> b!5617902 (= res!2379741 (not ((_ is Cons!62979) zl!343)))))

(assert (=> b!5617902 (= lt!2259188 (matchRSpec!2704 r!7292 s!2326))))

(assert (=> b!5617902 (= lt!2259188 (matchR!7786 r!7292 s!2326))))

(declare-fun lt!2259191 () Unit!155900)

(assert (=> b!5617902 (= lt!2259191 (mainMatchTheorem!2704 r!7292 s!2326))))

(declare-fun b!5617903 () Bool)

(declare-fun Unit!155907 () Unit!155900)

(assert (=> b!5617903 (= e!3463285 Unit!155907)))

(declare-fun setIsEmpty!37472 () Bool)

(assert (=> setIsEmpty!37472 setRes!37472))

(declare-fun b!5617904 () Bool)

(assert (=> b!5617904 (= e!3463284 (= lt!2259192 (Concat!24446 (regOne!31715 (regOne!31714 r!7292)) (generalisedConcat!1216 (t!376392 (exprs!5485 (h!69427 zl!343)))))))))

(declare-fun b!5617905 () Bool)

(declare-fun res!2379724 () Bool)

(assert (=> b!5617905 (=> res!2379724 e!3463279)))

(assert (=> b!5617905 (= res!2379724 (or (not (= lt!2259162 r!7292)) (not (= (exprs!5485 (h!69427 zl!343)) (Cons!62978 (regOne!31714 r!7292) (t!376392 (exprs!5485 (h!69427 zl!343))))))))))

(declare-fun b!5617906 () Bool)

(assert (=> b!5617906 (= e!3463266 e!3463262)))

(declare-fun res!2379726 () Bool)

(assert (=> b!5617906 (=> res!2379726 e!3463262)))

(assert (=> b!5617906 (= res!2379726 (not (= lt!2259189 lt!2259180)))))

(assert (=> b!5617906 (= lt!2259180 ((_ map or) lt!2259197 lt!2259193))))

(assert (=> b!5617906 (= lt!2259193 (derivationStepZipperDown!943 (regTwo!31715 (regOne!31714 r!7292)) lt!2259184 (h!69428 s!2326)))))

(assert (=> b!5617906 (= lt!2259197 (derivationStepZipperDown!943 (regOne!31715 (regOne!31714 r!7292)) lt!2259184 (h!69428 s!2326)))))

(declare-fun b!5617907 () Bool)

(declare-fun res!2379723 () Bool)

(assert (=> b!5617907 (=> res!2379723 e!3463282)))

(declare-fun isEmpty!34803 (List!63102) Bool)

(assert (=> b!5617907 (= res!2379723 (isEmpty!34803 (t!376392 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun b!5617908 () Bool)

(declare-fun res!2379722 () Bool)

(assert (=> b!5617908 (=> res!2379722 e!3463263)))

(assert (=> b!5617908 (= res!2379722 (or ((_ is EmptyExpr!15601) r!7292) ((_ is EmptyLang!15601) r!7292) ((_ is ElementMatch!15601) r!7292) ((_ is Union!15601) r!7292) (not ((_ is Concat!24446) r!7292))))))

(assert (= (and start!582156 res!2379734) b!5617870))

(assert (= (and b!5617870 res!2379732) b!5617886))

(assert (= (and b!5617886 res!2379729) b!5617902))

(assert (= (and b!5617902 (not res!2379741)) b!5617900))

(assert (= (and b!5617900 (not res!2379728)) b!5617871))

(assert (= (and b!5617871 (not res!2379720)) b!5617901))

(assert (= (and b!5617901 (not res!2379739)) b!5617899))

(assert (= (and b!5617899 (not res!2379727)) b!5617908))

(assert (= (and b!5617908 (not res!2379722)) b!5617897))

(assert (= (and b!5617897 (not res!2379735)) b!5617907))

(assert (= (and b!5617907 (not res!2379723)) b!5617877))

(assert (= (and b!5617877 c!985622) b!5617883))

(assert (= (and b!5617877 (not c!985622)) b!5617872))

(assert (= (and b!5617883 (not res!2379721)) b!5617882))

(assert (= (and b!5617877 (not res!2379738)) b!5617906))

(assert (= (and b!5617906 (not res!2379726)) b!5617889))

(assert (= (and b!5617889 (not res!2379719)) b!5617874))

(assert (= (and b!5617889 res!2379730) b!5617880))

(assert (= (and b!5617889 (not res!2379718)) b!5617891))

(assert (= (and b!5617891 c!985621) b!5617879))

(assert (= (and b!5617891 (not c!985621)) b!5617903))

(assert (= (and b!5617879 (not res!2379731)) b!5617878))

(assert (= (and b!5617891 c!985620) b!5617887))

(assert (= (and b!5617891 (not c!985620)) b!5617890))

(assert (= (and b!5617887 (not res!2379742)) b!5617898))

(assert (= (and b!5617891 (not res!2379725)) b!5617884))

(assert (= (and b!5617891 (not res!2379737)) b!5617905))

(assert (= (and b!5617905 (not res!2379724)) b!5617876))

(assert (= (and b!5617876 (not res!2379740)) b!5617893))

(assert (= (and b!5617893 (not res!2379736)) b!5617892))

(assert (= (and b!5617892 (not res!2379733)) b!5617904))

(assert (= (and start!582156 ((_ is ElementMatch!15601) r!7292)) b!5617881))

(assert (= (and start!582156 ((_ is Concat!24446) r!7292)) b!5617896))

(assert (= (and start!582156 ((_ is Star!15601) r!7292)) b!5617894))

(assert (= (and start!582156 ((_ is Union!15601) r!7292)) b!5617888))

(assert (= (and start!582156 condSetEmpty!37472) setIsEmpty!37472))

(assert (= (and start!582156 (not condSetEmpty!37472)) setNonEmpty!37472))

(assert (= setNonEmpty!37472 b!5617895))

(assert (= b!5617875 b!5617885))

(assert (= (and start!582156 ((_ is Cons!62979) zl!343)) b!5617875))

(assert (= (and start!582156 ((_ is Cons!62980) s!2326)) b!5617873))

(declare-fun m!6591718 () Bool)

(assert (=> b!5617883 m!6591718))

(declare-fun m!6591720 () Bool)

(assert (=> b!5617883 m!6591720))

(declare-fun m!6591722 () Bool)

(assert (=> b!5617883 m!6591722))

(declare-fun m!6591724 () Bool)

(assert (=> b!5617879 m!6591724))

(declare-fun m!6591726 () Bool)

(assert (=> b!5617879 m!6591726))

(declare-fun m!6591728 () Bool)

(assert (=> b!5617877 m!6591728))

(declare-fun m!6591730 () Bool)

(assert (=> b!5617877 m!6591730))

(declare-fun m!6591732 () Bool)

(assert (=> b!5617877 m!6591732))

(declare-fun m!6591734 () Bool)

(assert (=> b!5617877 m!6591734))

(declare-fun m!6591736 () Bool)

(assert (=> b!5617877 m!6591736))

(declare-fun m!6591738 () Bool)

(assert (=> b!5617877 m!6591738))

(declare-fun m!6591740 () Bool)

(assert (=> b!5617877 m!6591740))

(declare-fun m!6591742 () Bool)

(assert (=> b!5617886 m!6591742))

(declare-fun m!6591744 () Bool)

(assert (=> b!5617897 m!6591744))

(declare-fun m!6591746 () Bool)

(assert (=> b!5617897 m!6591746))

(declare-fun m!6591748 () Bool)

(assert (=> b!5617897 m!6591748))

(declare-fun m!6591750 () Bool)

(assert (=> b!5617897 m!6591750))

(assert (=> b!5617897 m!6591744))

(declare-fun m!6591752 () Bool)

(assert (=> b!5617897 m!6591752))

(assert (=> b!5617897 m!6591746))

(declare-fun m!6591754 () Bool)

(assert (=> b!5617897 m!6591754))

(declare-fun m!6591756 () Bool)

(assert (=> b!5617893 m!6591756))

(declare-fun m!6591758 () Bool)

(assert (=> b!5617876 m!6591758))

(declare-fun m!6591760 () Bool)

(assert (=> b!5617876 m!6591760))

(assert (=> b!5617889 m!6591720))

(declare-fun m!6591762 () Bool)

(assert (=> b!5617889 m!6591762))

(declare-fun m!6591764 () Bool)

(assert (=> b!5617889 m!6591764))

(declare-fun m!6591766 () Bool)

(assert (=> b!5617889 m!6591766))

(declare-fun m!6591768 () Bool)

(assert (=> b!5617871 m!6591768))

(declare-fun m!6591770 () Bool)

(assert (=> b!5617904 m!6591770))

(declare-fun m!6591772 () Bool)

(assert (=> start!582156 m!6591772))

(declare-fun m!6591774 () Bool)

(assert (=> b!5617891 m!6591774))

(declare-fun m!6591776 () Bool)

(assert (=> b!5617891 m!6591776))

(declare-fun m!6591778 () Bool)

(assert (=> b!5617891 m!6591778))

(declare-fun m!6591780 () Bool)

(assert (=> b!5617891 m!6591780))

(declare-fun m!6591782 () Bool)

(assert (=> b!5617891 m!6591782))

(declare-fun m!6591784 () Bool)

(assert (=> b!5617891 m!6591784))

(declare-fun m!6591786 () Bool)

(assert (=> b!5617891 m!6591786))

(declare-fun m!6591788 () Bool)

(assert (=> b!5617891 m!6591788))

(declare-fun m!6591790 () Bool)

(assert (=> b!5617891 m!6591790))

(declare-fun m!6591792 () Bool)

(assert (=> b!5617891 m!6591792))

(declare-fun m!6591794 () Bool)

(assert (=> b!5617891 m!6591794))

(declare-fun m!6591796 () Bool)

(assert (=> b!5617891 m!6591796))

(declare-fun m!6591798 () Bool)

(assert (=> b!5617898 m!6591798))

(declare-fun m!6591800 () Bool)

(assert (=> b!5617874 m!6591800))

(assert (=> b!5617878 m!6591798))

(assert (=> b!5617882 m!6591798))

(declare-fun m!6591802 () Bool)

(assert (=> b!5617875 m!6591802))

(declare-fun m!6591804 () Bool)

(assert (=> setNonEmpty!37472 m!6591804))

(declare-fun m!6591806 () Bool)

(assert (=> b!5617899 m!6591806))

(assert (=> b!5617899 m!6591806))

(declare-fun m!6591808 () Bool)

(assert (=> b!5617899 m!6591808))

(declare-fun m!6591810 () Bool)

(assert (=> b!5617884 m!6591810))

(assert (=> b!5617880 m!6591800))

(declare-fun m!6591812 () Bool)

(assert (=> b!5617887 m!6591812))

(assert (=> b!5617887 m!6591800))

(declare-fun m!6591814 () Bool)

(assert (=> b!5617887 m!6591814))

(declare-fun m!6591816 () Bool)

(assert (=> b!5617892 m!6591816))

(declare-fun m!6591818 () Bool)

(assert (=> b!5617892 m!6591818))

(declare-fun m!6591820 () Bool)

(assert (=> b!5617892 m!6591820))

(declare-fun m!6591822 () Bool)

(assert (=> b!5617892 m!6591822))

(declare-fun m!6591824 () Bool)

(assert (=> b!5617892 m!6591824))

(declare-fun m!6591826 () Bool)

(assert (=> b!5617892 m!6591826))

(declare-fun m!6591828 () Bool)

(assert (=> b!5617892 m!6591828))

(assert (=> b!5617892 m!6591810))

(declare-fun m!6591830 () Bool)

(assert (=> b!5617892 m!6591830))

(declare-fun m!6591832 () Bool)

(assert (=> b!5617892 m!6591832))

(declare-fun m!6591834 () Bool)

(assert (=> b!5617892 m!6591834))

(declare-fun m!6591836 () Bool)

(assert (=> b!5617902 m!6591836))

(declare-fun m!6591838 () Bool)

(assert (=> b!5617902 m!6591838))

(declare-fun m!6591840 () Bool)

(assert (=> b!5617902 m!6591840))

(declare-fun m!6591842 () Bool)

(assert (=> b!5617870 m!6591842))

(declare-fun m!6591844 () Bool)

(assert (=> b!5617907 m!6591844))

(declare-fun m!6591846 () Bool)

(assert (=> b!5617900 m!6591846))

(declare-fun m!6591848 () Bool)

(assert (=> b!5617906 m!6591848))

(declare-fun m!6591850 () Bool)

(assert (=> b!5617906 m!6591850))

(check-sat (not b!5617889) (not b!5617892) (not b!5617878) (not b!5617894) (not b!5617880) (not b!5617876) (not b!5617897) (not b!5617884) (not b!5617874) (not b!5617895) (not b!5617891) (not b!5617887) (not b!5617873) (not b!5617877) (not b!5617883) (not b!5617899) (not b!5617882) tp_is_empty!40455 (not b!5617879) (not b!5617898) (not b!5617906) (not b!5617875) (not b!5617885) (not setNonEmpty!37472) (not b!5617896) (not b!5617902) (not b!5617888) (not b!5617886) (not b!5617900) (not b!5617871) (not b!5617870) (not b!5617904) (not b!5617893) (not b!5617907) (not start!582156))
(check-sat)
(get-model)

(declare-fun d!1775558 () Bool)

(declare-fun c!985694 () Bool)

(declare-fun isEmpty!34806 (List!63104) Bool)

(assert (=> d!1775558 (= c!985694 (isEmpty!34806 (t!376394 s!2326)))))

(declare-fun e!3463400 () Bool)

(assert (=> d!1775558 (= (matchZipper!1739 lt!2259193 (t!376394 s!2326)) e!3463400)))

(declare-fun b!5618104 () Bool)

(declare-fun nullableZipper!1588 ((InoxSet Context!9970)) Bool)

(assert (=> b!5618104 (= e!3463400 (nullableZipper!1588 lt!2259193))))

(declare-fun b!5618105 () Bool)

(declare-fun derivationStepZipper!1692 ((InoxSet Context!9970) C!31472) (InoxSet Context!9970))

(declare-fun head!11955 (List!63104) C!31472)

(declare-fun tail!11050 (List!63104) List!63104)

(assert (=> b!5618105 (= e!3463400 (matchZipper!1739 (derivationStepZipper!1692 lt!2259193 (head!11955 (t!376394 s!2326))) (tail!11050 (t!376394 s!2326))))))

(assert (= (and d!1775558 c!985694) b!5618104))

(assert (= (and d!1775558 (not c!985694)) b!5618105))

(declare-fun m!6591990 () Bool)

(assert (=> d!1775558 m!6591990))

(declare-fun m!6591992 () Bool)

(assert (=> b!5618104 m!6591992))

(declare-fun m!6591994 () Bool)

(assert (=> b!5618105 m!6591994))

(assert (=> b!5618105 m!6591994))

(declare-fun m!6591996 () Bool)

(assert (=> b!5618105 m!6591996))

(declare-fun m!6591998 () Bool)

(assert (=> b!5618105 m!6591998))

(assert (=> b!5618105 m!6591996))

(assert (=> b!5618105 m!6591998))

(declare-fun m!6592000 () Bool)

(assert (=> b!5618105 m!6592000))

(assert (=> b!5617880 d!1775558))

(declare-fun d!1775566 () Bool)

(assert (=> d!1775566 (= (isEmpty!34802 (t!376393 zl!343)) ((_ is Nil!62979) (t!376393 zl!343)))))

(assert (=> b!5617900 d!1775566))

(declare-fun e!3463405 () Bool)

(declare-fun d!1775568 () Bool)

(assert (=> d!1775568 (= (matchZipper!1739 ((_ map or) lt!2259197 lt!2259187) (t!376394 s!2326)) e!3463405)))

(declare-fun res!2379798 () Bool)

(assert (=> d!1775568 (=> res!2379798 e!3463405)))

(assert (=> d!1775568 (= res!2379798 (matchZipper!1739 lt!2259197 (t!376394 s!2326)))))

(declare-fun lt!2259241 () Unit!155900)

(declare-fun choose!42525 ((InoxSet Context!9970) (InoxSet Context!9970) List!63104) Unit!155900)

(assert (=> d!1775568 (= lt!2259241 (choose!42525 lt!2259197 lt!2259187 (t!376394 s!2326)))))

(assert (=> d!1775568 (= (lemmaZipperConcatMatchesSameAsBothZippers!626 lt!2259197 lt!2259187 (t!376394 s!2326)) lt!2259241)))

(declare-fun b!5618112 () Bool)

(assert (=> b!5618112 (= e!3463405 (matchZipper!1739 lt!2259187 (t!376394 s!2326)))))

(assert (= (and d!1775568 (not res!2379798)) b!5618112))

(assert (=> d!1775568 m!6591726))

(assert (=> d!1775568 m!6591764))

(declare-fun m!6592006 () Bool)

(assert (=> d!1775568 m!6592006))

(assert (=> b!5618112 m!6591798))

(assert (=> b!5617879 d!1775568))

(declare-fun d!1775572 () Bool)

(declare-fun c!985695 () Bool)

(assert (=> d!1775572 (= c!985695 (isEmpty!34806 (t!376394 s!2326)))))

(declare-fun e!3463406 () Bool)

(assert (=> d!1775572 (= (matchZipper!1739 ((_ map or) lt!2259197 lt!2259187) (t!376394 s!2326)) e!3463406)))

(declare-fun b!5618113 () Bool)

(assert (=> b!5618113 (= e!3463406 (nullableZipper!1588 ((_ map or) lt!2259197 lt!2259187)))))

(declare-fun b!5618114 () Bool)

(assert (=> b!5618114 (= e!3463406 (matchZipper!1739 (derivationStepZipper!1692 ((_ map or) lt!2259197 lt!2259187) (head!11955 (t!376394 s!2326))) (tail!11050 (t!376394 s!2326))))))

(assert (= (and d!1775572 c!985695) b!5618113))

(assert (= (and d!1775572 (not c!985695)) b!5618114))

(assert (=> d!1775572 m!6591990))

(declare-fun m!6592008 () Bool)

(assert (=> b!5618113 m!6592008))

(assert (=> b!5618114 m!6591994))

(assert (=> b!5618114 m!6591994))

(declare-fun m!6592010 () Bool)

(assert (=> b!5618114 m!6592010))

(assert (=> b!5618114 m!6591998))

(assert (=> b!5618114 m!6592010))

(assert (=> b!5618114 m!6591998))

(declare-fun m!6592012 () Bool)

(assert (=> b!5618114 m!6592012))

(assert (=> b!5617879 d!1775572))

(declare-fun b!5618175 () Bool)

(declare-fun e!3463441 () Regex!15601)

(assert (=> b!5618175 (= e!3463441 (Union!15601 (h!69426 (unfocusZipperList!1029 zl!343)) (generalisedUnion!1464 (t!376392 (unfocusZipperList!1029 zl!343)))))))

(declare-fun b!5618176 () Bool)

(assert (=> b!5618176 (= e!3463441 EmptyLang!15601)))

(declare-fun d!1775574 () Bool)

(declare-fun e!3463442 () Bool)

(assert (=> d!1775574 e!3463442))

(declare-fun res!2379828 () Bool)

(assert (=> d!1775574 (=> (not res!2379828) (not e!3463442))))

(declare-fun lt!2259247 () Regex!15601)

(assert (=> d!1775574 (= res!2379828 (validRegex!7337 lt!2259247))))

(declare-fun e!3463443 () Regex!15601)

(assert (=> d!1775574 (= lt!2259247 e!3463443)))

(declare-fun c!985712 () Bool)

(declare-fun e!3463446 () Bool)

(assert (=> d!1775574 (= c!985712 e!3463446)))

(declare-fun res!2379827 () Bool)

(assert (=> d!1775574 (=> (not res!2379827) (not e!3463446))))

(assert (=> d!1775574 (= res!2379827 ((_ is Cons!62978) (unfocusZipperList!1029 zl!343)))))

(declare-fun lambda!301558 () Int)

(declare-fun forall!14760 (List!63102 Int) Bool)

(assert (=> d!1775574 (forall!14760 (unfocusZipperList!1029 zl!343) lambda!301558)))

(assert (=> d!1775574 (= (generalisedUnion!1464 (unfocusZipperList!1029 zl!343)) lt!2259247)))

(declare-fun b!5618177 () Bool)

(declare-fun e!3463444 () Bool)

(assert (=> b!5618177 (= e!3463442 e!3463444)))

(declare-fun c!985714 () Bool)

(assert (=> b!5618177 (= c!985714 (isEmpty!34803 (unfocusZipperList!1029 zl!343)))))

(declare-fun b!5618178 () Bool)

(declare-fun e!3463445 () Bool)

(assert (=> b!5618178 (= e!3463444 e!3463445)))

(declare-fun c!985713 () Bool)

(declare-fun tail!11051 (List!63102) List!63102)

(assert (=> b!5618178 (= c!985713 (isEmpty!34803 (tail!11051 (unfocusZipperList!1029 zl!343))))))

(declare-fun b!5618179 () Bool)

(declare-fun head!11956 (List!63102) Regex!15601)

(assert (=> b!5618179 (= e!3463445 (= lt!2259247 (head!11956 (unfocusZipperList!1029 zl!343))))))

(declare-fun b!5618180 () Bool)

(declare-fun isEmptyLang!1157 (Regex!15601) Bool)

(assert (=> b!5618180 (= e!3463444 (isEmptyLang!1157 lt!2259247))))

(declare-fun b!5618181 () Bool)

(assert (=> b!5618181 (= e!3463446 (isEmpty!34803 (t!376392 (unfocusZipperList!1029 zl!343))))))

(declare-fun b!5618182 () Bool)

(assert (=> b!5618182 (= e!3463443 (h!69426 (unfocusZipperList!1029 zl!343)))))

(declare-fun b!5618183 () Bool)

(assert (=> b!5618183 (= e!3463443 e!3463441)))

(declare-fun c!985715 () Bool)

(assert (=> b!5618183 (= c!985715 ((_ is Cons!62978) (unfocusZipperList!1029 zl!343)))))

(declare-fun b!5618184 () Bool)

(declare-fun isUnion!587 (Regex!15601) Bool)

(assert (=> b!5618184 (= e!3463445 (isUnion!587 lt!2259247))))

(assert (= (and d!1775574 res!2379827) b!5618181))

(assert (= (and d!1775574 c!985712) b!5618182))

(assert (= (and d!1775574 (not c!985712)) b!5618183))

(assert (= (and b!5618183 c!985715) b!5618175))

(assert (= (and b!5618183 (not c!985715)) b!5618176))

(assert (= (and d!1775574 res!2379828) b!5618177))

(assert (= (and b!5618177 c!985714) b!5618180))

(assert (= (and b!5618177 (not c!985714)) b!5618178))

(assert (= (and b!5618178 c!985713) b!5618179))

(assert (= (and b!5618178 (not c!985713)) b!5618184))

(declare-fun m!6592022 () Bool)

(assert (=> b!5618180 m!6592022))

(declare-fun m!6592024 () Bool)

(assert (=> d!1775574 m!6592024))

(assert (=> d!1775574 m!6591806))

(declare-fun m!6592026 () Bool)

(assert (=> d!1775574 m!6592026))

(assert (=> b!5618177 m!6591806))

(declare-fun m!6592028 () Bool)

(assert (=> b!5618177 m!6592028))

(assert (=> b!5618178 m!6591806))

(declare-fun m!6592030 () Bool)

(assert (=> b!5618178 m!6592030))

(assert (=> b!5618178 m!6592030))

(declare-fun m!6592032 () Bool)

(assert (=> b!5618178 m!6592032))

(declare-fun m!6592034 () Bool)

(assert (=> b!5618175 m!6592034))

(assert (=> b!5618179 m!6591806))

(declare-fun m!6592036 () Bool)

(assert (=> b!5618179 m!6592036))

(declare-fun m!6592038 () Bool)

(assert (=> b!5618184 m!6592038))

(declare-fun m!6592040 () Bool)

(assert (=> b!5618181 m!6592040))

(assert (=> b!5617899 d!1775574))

(declare-fun bs!1301169 () Bool)

(declare-fun d!1775580 () Bool)

(assert (= bs!1301169 (and d!1775580 d!1775574)))

(declare-fun lambda!301563 () Int)

(assert (=> bs!1301169 (= lambda!301563 lambda!301558)))

(declare-fun lt!2259252 () List!63102)

(assert (=> d!1775580 (forall!14760 lt!2259252 lambda!301563)))

(declare-fun e!3463458 () List!63102)

(assert (=> d!1775580 (= lt!2259252 e!3463458)))

(declare-fun c!985724 () Bool)

(assert (=> d!1775580 (= c!985724 ((_ is Cons!62979) zl!343))))

(assert (=> d!1775580 (= (unfocusZipperList!1029 zl!343) lt!2259252)))

(declare-fun b!5618204 () Bool)

(assert (=> b!5618204 (= e!3463458 (Cons!62978 (generalisedConcat!1216 (exprs!5485 (h!69427 zl!343))) (unfocusZipperList!1029 (t!376393 zl!343))))))

(declare-fun b!5618205 () Bool)

(assert (=> b!5618205 (= e!3463458 Nil!62978)))

(assert (= (and d!1775580 c!985724) b!5618204))

(assert (= (and d!1775580 (not c!985724)) b!5618205))

(declare-fun m!6592048 () Bool)

(assert (=> d!1775580 m!6592048))

(assert (=> b!5618204 m!6591768))

(declare-fun m!6592050 () Bool)

(assert (=> b!5618204 m!6592050))

(assert (=> b!5617899 d!1775580))

(declare-fun d!1775584 () Bool)

(declare-fun c!985729 () Bool)

(assert (=> d!1775584 (= c!985729 (isEmpty!34806 (t!376394 s!2326)))))

(declare-fun e!3463471 () Bool)

(assert (=> d!1775584 (= (matchZipper!1739 lt!2259187 (t!376394 s!2326)) e!3463471)))

(declare-fun b!5618230 () Bool)

(assert (=> b!5618230 (= e!3463471 (nullableZipper!1588 lt!2259187))))

(declare-fun b!5618231 () Bool)

(assert (=> b!5618231 (= e!3463471 (matchZipper!1739 (derivationStepZipper!1692 lt!2259187 (head!11955 (t!376394 s!2326))) (tail!11050 (t!376394 s!2326))))))

(assert (= (and d!1775584 c!985729) b!5618230))

(assert (= (and d!1775584 (not c!985729)) b!5618231))

(assert (=> d!1775584 m!6591990))

(declare-fun m!6592052 () Bool)

(assert (=> b!5618230 m!6592052))

(assert (=> b!5618231 m!6591994))

(assert (=> b!5618231 m!6591994))

(declare-fun m!6592054 () Bool)

(assert (=> b!5618231 m!6592054))

(assert (=> b!5618231 m!6591998))

(assert (=> b!5618231 m!6592054))

(assert (=> b!5618231 m!6591998))

(declare-fun m!6592056 () Bool)

(assert (=> b!5618231 m!6592056))

(assert (=> b!5617878 d!1775584))

(assert (=> b!5617898 d!1775584))

(assert (=> b!5617882 d!1775584))

(declare-fun bs!1301216 () Bool)

(declare-fun b!5618363 () Bool)

(assert (= bs!1301216 (and b!5618363 b!5617897)))

(declare-fun lambda!301575 () Int)

(assert (=> bs!1301216 (not (= lambda!301575 lambda!301528))))

(assert (=> bs!1301216 (not (= lambda!301575 lambda!301529))))

(assert (=> b!5618363 true))

(assert (=> b!5618363 true))

(declare-fun bs!1301218 () Bool)

(declare-fun b!5618370 () Bool)

(assert (= bs!1301218 (and b!5618370 b!5617897)))

(declare-fun lambda!301576 () Int)

(assert (=> bs!1301218 (not (= lambda!301576 lambda!301528))))

(assert (=> bs!1301218 (= lambda!301576 lambda!301529)))

(declare-fun bs!1301219 () Bool)

(assert (= bs!1301219 (and b!5618370 b!5618363)))

(assert (=> bs!1301219 (not (= lambda!301576 lambda!301575))))

(assert (=> b!5618370 true))

(assert (=> b!5618370 true))

(declare-fun b!5618360 () Bool)

(declare-fun e!3463546 () Bool)

(assert (=> b!5618360 (= e!3463546 (= s!2326 (Cons!62980 (c!985623 r!7292) Nil!62980)))))

(declare-fun b!5618361 () Bool)

(declare-fun e!3463549 () Bool)

(declare-fun e!3463551 () Bool)

(assert (=> b!5618361 (= e!3463549 e!3463551)))

(declare-fun res!2379904 () Bool)

(assert (=> b!5618361 (= res!2379904 (matchRSpec!2704 (regOne!31715 r!7292) s!2326))))

(assert (=> b!5618361 (=> res!2379904 e!3463551)))

(declare-fun b!5618362 () Bool)

(declare-fun e!3463550 () Bool)

(declare-fun e!3463547 () Bool)

(assert (=> b!5618362 (= e!3463550 e!3463547)))

(declare-fun res!2379903 () Bool)

(assert (=> b!5618362 (= res!2379903 (not ((_ is EmptyLang!15601) r!7292)))))

(assert (=> b!5618362 (=> (not res!2379903) (not e!3463547))))

(declare-fun e!3463545 () Bool)

(declare-fun call!422973 () Bool)

(assert (=> b!5618363 (= e!3463545 call!422973)))

(declare-fun b!5618364 () Bool)

(declare-fun c!985767 () Bool)

(assert (=> b!5618364 (= c!985767 ((_ is Union!15601) r!7292))))

(assert (=> b!5618364 (= e!3463546 e!3463549)))

(declare-fun bm!422967 () Bool)

(declare-fun call!422972 () Bool)

(assert (=> bm!422967 (= call!422972 (isEmpty!34806 s!2326))))

(declare-fun bm!422968 () Bool)

(declare-fun c!985768 () Bool)

(assert (=> bm!422968 (= call!422973 (Exists!2701 (ite c!985768 lambda!301575 lambda!301576)))))

(declare-fun d!1775586 () Bool)

(declare-fun c!985769 () Bool)

(assert (=> d!1775586 (= c!985769 ((_ is EmptyExpr!15601) r!7292))))

(assert (=> d!1775586 (= (matchRSpec!2704 r!7292 s!2326) e!3463550)))

(declare-fun b!5618365 () Bool)

(assert (=> b!5618365 (= e!3463550 call!422972)))

(declare-fun b!5618366 () Bool)

(declare-fun c!985770 () Bool)

(assert (=> b!5618366 (= c!985770 ((_ is ElementMatch!15601) r!7292))))

(assert (=> b!5618366 (= e!3463547 e!3463546)))

(declare-fun b!5618367 () Bool)

(assert (=> b!5618367 (= e!3463551 (matchRSpec!2704 (regTwo!31715 r!7292) s!2326))))

(declare-fun b!5618368 () Bool)

(declare-fun res!2379902 () Bool)

(assert (=> b!5618368 (=> res!2379902 e!3463545)))

(assert (=> b!5618368 (= res!2379902 call!422972)))

(declare-fun e!3463548 () Bool)

(assert (=> b!5618368 (= e!3463548 e!3463545)))

(declare-fun b!5618369 () Bool)

(assert (=> b!5618369 (= e!3463549 e!3463548)))

(assert (=> b!5618369 (= c!985768 ((_ is Star!15601) r!7292))))

(assert (=> b!5618370 (= e!3463548 call!422973)))

(assert (= (and d!1775586 c!985769) b!5618365))

(assert (= (and d!1775586 (not c!985769)) b!5618362))

(assert (= (and b!5618362 res!2379903) b!5618366))

(assert (= (and b!5618366 c!985770) b!5618360))

(assert (= (and b!5618366 (not c!985770)) b!5618364))

(assert (= (and b!5618364 c!985767) b!5618361))

(assert (= (and b!5618364 (not c!985767)) b!5618369))

(assert (= (and b!5618361 (not res!2379904)) b!5618367))

(assert (= (and b!5618369 c!985768) b!5618368))

(assert (= (and b!5618369 (not c!985768)) b!5618370))

(assert (= (and b!5618368 (not res!2379902)) b!5618363))

(assert (= (or b!5618363 b!5618370) bm!422968))

(assert (= (or b!5618365 b!5618368) bm!422967))

(declare-fun m!6592178 () Bool)

(assert (=> b!5618361 m!6592178))

(declare-fun m!6592180 () Bool)

(assert (=> bm!422967 m!6592180))

(declare-fun m!6592182 () Bool)

(assert (=> bm!422968 m!6592182))

(declare-fun m!6592186 () Bool)

(assert (=> b!5618367 m!6592186))

(assert (=> b!5617902 d!1775586))

(declare-fun b!5618518 () Bool)

(declare-fun e!3463629 () Bool)

(declare-fun e!3463632 () Bool)

(assert (=> b!5618518 (= e!3463629 e!3463632)))

(declare-fun c!985807 () Bool)

(assert (=> b!5618518 (= c!985807 ((_ is EmptyLang!15601) r!7292))))

(declare-fun b!5618519 () Bool)

(declare-fun res!2379934 () Bool)

(declare-fun e!3463630 () Bool)

(assert (=> b!5618519 (=> res!2379934 e!3463630)))

(assert (=> b!5618519 (= res!2379934 (not (isEmpty!34806 (tail!11050 s!2326))))))

(declare-fun bm!422984 () Bool)

(declare-fun call!422989 () Bool)

(assert (=> bm!422984 (= call!422989 (isEmpty!34806 s!2326))))

(declare-fun b!5618520 () Bool)

(declare-fun res!2379938 () Bool)

(declare-fun e!3463626 () Bool)

(assert (=> b!5618520 (=> (not res!2379938) (not e!3463626))))

(assert (=> b!5618520 (= res!2379938 (not call!422989))))

(declare-fun b!5618521 () Bool)

(declare-fun lt!2259281 () Bool)

(assert (=> b!5618521 (= e!3463632 (not lt!2259281))))

(declare-fun d!1775624 () Bool)

(assert (=> d!1775624 e!3463629))

(declare-fun c!985806 () Bool)

(assert (=> d!1775624 (= c!985806 ((_ is EmptyExpr!15601) r!7292))))

(declare-fun e!3463631 () Bool)

(assert (=> d!1775624 (= lt!2259281 e!3463631)))

(declare-fun c!985805 () Bool)

(assert (=> d!1775624 (= c!985805 (isEmpty!34806 s!2326))))

(assert (=> d!1775624 (validRegex!7337 r!7292)))

(assert (=> d!1775624 (= (matchR!7786 r!7292 s!2326) lt!2259281)))

(declare-fun b!5618522 () Bool)

(declare-fun res!2379940 () Bool)

(declare-fun e!3463628 () Bool)

(assert (=> b!5618522 (=> res!2379940 e!3463628)))

(assert (=> b!5618522 (= res!2379940 e!3463626)))

(declare-fun res!2379933 () Bool)

(assert (=> b!5618522 (=> (not res!2379933) (not e!3463626))))

(assert (=> b!5618522 (= res!2379933 lt!2259281)))

(declare-fun b!5618523 () Bool)

(declare-fun e!3463627 () Bool)

(assert (=> b!5618523 (= e!3463628 e!3463627)))

(declare-fun res!2379935 () Bool)

(assert (=> b!5618523 (=> (not res!2379935) (not e!3463627))))

(assert (=> b!5618523 (= res!2379935 (not lt!2259281))))

(declare-fun b!5618524 () Bool)

(declare-fun res!2379937 () Bool)

(assert (=> b!5618524 (=> res!2379937 e!3463628)))

(assert (=> b!5618524 (= res!2379937 (not ((_ is ElementMatch!15601) r!7292)))))

(assert (=> b!5618524 (= e!3463632 e!3463628)))

(declare-fun b!5618525 () Bool)

(assert (=> b!5618525 (= e!3463631 (nullable!5633 r!7292))))

(declare-fun b!5618526 () Bool)

(assert (=> b!5618526 (= e!3463630 (not (= (head!11955 s!2326) (c!985623 r!7292))))))

(declare-fun b!5618527 () Bool)

(assert (=> b!5618527 (= e!3463629 (= lt!2259281 call!422989))))

(declare-fun b!5618528 () Bool)

(declare-fun derivativeStep!4441 (Regex!15601 C!31472) Regex!15601)

(assert (=> b!5618528 (= e!3463631 (matchR!7786 (derivativeStep!4441 r!7292 (head!11955 s!2326)) (tail!11050 s!2326)))))

(declare-fun b!5618529 () Bool)

(assert (=> b!5618529 (= e!3463626 (= (head!11955 s!2326) (c!985623 r!7292)))))

(declare-fun b!5618530 () Bool)

(assert (=> b!5618530 (= e!3463627 e!3463630)))

(declare-fun res!2379936 () Bool)

(assert (=> b!5618530 (=> res!2379936 e!3463630)))

(assert (=> b!5618530 (= res!2379936 call!422989)))

(declare-fun b!5618531 () Bool)

(declare-fun res!2379939 () Bool)

(assert (=> b!5618531 (=> (not res!2379939) (not e!3463626))))

(assert (=> b!5618531 (= res!2379939 (isEmpty!34806 (tail!11050 s!2326)))))

(assert (= (and d!1775624 c!985805) b!5618525))

(assert (= (and d!1775624 (not c!985805)) b!5618528))

(assert (= (and d!1775624 c!985806) b!5618527))

(assert (= (and d!1775624 (not c!985806)) b!5618518))

(assert (= (and b!5618518 c!985807) b!5618521))

(assert (= (and b!5618518 (not c!985807)) b!5618524))

(assert (= (and b!5618524 (not res!2379937)) b!5618522))

(assert (= (and b!5618522 res!2379933) b!5618520))

(assert (= (and b!5618520 res!2379938) b!5618531))

(assert (= (and b!5618531 res!2379939) b!5618529))

(assert (= (and b!5618522 (not res!2379940)) b!5618523))

(assert (= (and b!5618523 res!2379935) b!5618530))

(assert (= (and b!5618530 (not res!2379936)) b!5618519))

(assert (= (and b!5618519 (not res!2379934)) b!5618526))

(assert (= (or b!5618527 b!5618520 b!5618530) bm!422984))

(declare-fun m!6592302 () Bool)

(assert (=> b!5618528 m!6592302))

(assert (=> b!5618528 m!6592302))

(declare-fun m!6592304 () Bool)

(assert (=> b!5618528 m!6592304))

(declare-fun m!6592306 () Bool)

(assert (=> b!5618528 m!6592306))

(assert (=> b!5618528 m!6592304))

(assert (=> b!5618528 m!6592306))

(declare-fun m!6592308 () Bool)

(assert (=> b!5618528 m!6592308))

(assert (=> b!5618526 m!6592302))

(assert (=> bm!422984 m!6592180))

(declare-fun m!6592310 () Bool)

(assert (=> b!5618525 m!6592310))

(assert (=> b!5618519 m!6592306))

(assert (=> b!5618519 m!6592306))

(declare-fun m!6592312 () Bool)

(assert (=> b!5618519 m!6592312))

(assert (=> d!1775624 m!6592180))

(assert (=> d!1775624 m!6591772))

(assert (=> b!5618531 m!6592306))

(assert (=> b!5618531 m!6592306))

(assert (=> b!5618531 m!6592312))

(assert (=> b!5618529 m!6592302))

(assert (=> b!5617902 d!1775624))

(declare-fun d!1775682 () Bool)

(assert (=> d!1775682 (= (matchR!7786 r!7292 s!2326) (matchRSpec!2704 r!7292 s!2326))))

(declare-fun lt!2259284 () Unit!155900)

(declare-fun choose!42526 (Regex!15601 List!63104) Unit!155900)

(assert (=> d!1775682 (= lt!2259284 (choose!42526 r!7292 s!2326))))

(assert (=> d!1775682 (validRegex!7337 r!7292)))

(assert (=> d!1775682 (= (mainMatchTheorem!2704 r!7292 s!2326) lt!2259284)))

(declare-fun bs!1301239 () Bool)

(assert (= bs!1301239 d!1775682))

(assert (=> bs!1301239 m!6591838))

(assert (=> bs!1301239 m!6591836))

(declare-fun m!6592314 () Bool)

(assert (=> bs!1301239 m!6592314))

(assert (=> bs!1301239 m!6591772))

(assert (=> b!5617902 d!1775682))

(assert (=> b!5617874 d!1775558))

(declare-fun bs!1301240 () Bool)

(declare-fun d!1775684 () Bool)

(assert (= bs!1301240 (and d!1775684 d!1775574)))

(declare-fun lambda!301580 () Int)

(assert (=> bs!1301240 (= lambda!301580 lambda!301558)))

(declare-fun bs!1301241 () Bool)

(assert (= bs!1301241 (and d!1775684 d!1775580)))

(assert (=> bs!1301241 (= lambda!301580 lambda!301563)))

(assert (=> d!1775684 (= (inv!82249 setElem!37472) (forall!14760 (exprs!5485 setElem!37472) lambda!301580))))

(declare-fun bs!1301242 () Bool)

(assert (= bs!1301242 d!1775684))

(declare-fun m!6592316 () Bool)

(assert (=> bs!1301242 m!6592316))

(assert (=> setNonEmpty!37472 d!1775684))

(declare-fun b!5618545 () Bool)

(declare-fun e!3463644 () (InoxSet Context!9970))

(declare-fun e!3463643 () (InoxSet Context!9970))

(assert (=> b!5618545 (= e!3463644 e!3463643)))

(declare-fun c!985813 () Bool)

(assert (=> b!5618545 (= c!985813 ((_ is Cons!62978) (exprs!5485 lt!2259184)))))

(declare-fun b!5618546 () Bool)

(declare-fun call!422992 () (InoxSet Context!9970))

(assert (=> b!5618546 (= e!3463644 ((_ map or) call!422992 (derivationStepZipperUp!869 (Context!9971 (t!376392 (exprs!5485 lt!2259184))) (h!69428 s!2326))))))

(declare-fun bm!422987 () Bool)

(assert (=> bm!422987 (= call!422992 (derivationStepZipperDown!943 (h!69426 (exprs!5485 lt!2259184)) (Context!9971 (t!376392 (exprs!5485 lt!2259184))) (h!69428 s!2326)))))

(declare-fun b!5618548 () Bool)

(assert (=> b!5618548 (= e!3463643 ((as const (Array Context!9970 Bool)) false))))

(declare-fun b!5618549 () Bool)

(declare-fun e!3463642 () Bool)

(assert (=> b!5618549 (= e!3463642 (nullable!5633 (h!69426 (exprs!5485 lt!2259184))))))

(declare-fun b!5618547 () Bool)

(assert (=> b!5618547 (= e!3463643 call!422992)))

(declare-fun d!1775686 () Bool)

(declare-fun c!985812 () Bool)

(assert (=> d!1775686 (= c!985812 e!3463642)))

(declare-fun res!2379943 () Bool)

(assert (=> d!1775686 (=> (not res!2379943) (not e!3463642))))

(assert (=> d!1775686 (= res!2379943 ((_ is Cons!62978) (exprs!5485 lt!2259184)))))

(assert (=> d!1775686 (= (derivationStepZipperUp!869 lt!2259184 (h!69428 s!2326)) e!3463644)))

(assert (= (and d!1775686 res!2379943) b!5618549))

(assert (= (and d!1775686 c!985812) b!5618546))

(assert (= (and d!1775686 (not c!985812)) b!5618545))

(assert (= (and b!5618545 c!985813) b!5618547))

(assert (= (and b!5618545 (not c!985813)) b!5618548))

(assert (= (or b!5618546 b!5618547) bm!422987))

(declare-fun m!6592318 () Bool)

(assert (=> b!5618546 m!6592318))

(declare-fun m!6592320 () Bool)

(assert (=> bm!422987 m!6592320))

(declare-fun m!6592322 () Bool)

(assert (=> b!5618549 m!6592322))

(assert (=> b!5617877 d!1775686))

(declare-fun call!423009 () (InoxSet Context!9970))

(declare-fun c!985826 () Bool)

(declare-fun call!423008 () List!63102)

(declare-fun bm!423000 () Bool)

(assert (=> bm!423000 (= call!423009 (derivationStepZipperDown!943 (ite c!985826 (regOne!31715 (h!69426 (exprs!5485 (h!69427 zl!343)))) (regOne!31714 (h!69426 (exprs!5485 (h!69427 zl!343))))) (ite c!985826 lt!2259184 (Context!9971 call!423008)) (h!69428 s!2326)))))

(declare-fun b!5618573 () Bool)

(declare-fun e!3463662 () (InoxSet Context!9970))

(declare-fun call!423010 () (InoxSet Context!9970))

(assert (=> b!5618573 (= e!3463662 ((_ map or) call!423009 call!423010))))

(declare-fun b!5618574 () Bool)

(declare-fun e!3463660 () (InoxSet Context!9970))

(declare-fun call!423005 () (InoxSet Context!9970))

(assert (=> b!5618574 (= e!3463660 call!423005)))

(declare-fun call!423006 () List!63102)

(declare-fun bm!423001 () Bool)

(declare-fun c!985828 () Bool)

(declare-fun c!985824 () Bool)

(assert (=> bm!423001 (= call!423010 (derivationStepZipperDown!943 (ite c!985826 (regTwo!31715 (h!69426 (exprs!5485 (h!69427 zl!343)))) (ite c!985828 (regTwo!31714 (h!69426 (exprs!5485 (h!69427 zl!343)))) (ite c!985824 (regOne!31714 (h!69426 (exprs!5485 (h!69427 zl!343)))) (reg!15930 (h!69426 (exprs!5485 (h!69427 zl!343))))))) (ite (or c!985826 c!985828) lt!2259184 (Context!9971 call!423006)) (h!69428 s!2326)))))

(declare-fun b!5618575 () Bool)

(declare-fun e!3463657 () (InoxSet Context!9970))

(declare-fun call!423007 () (InoxSet Context!9970))

(assert (=> b!5618575 (= e!3463657 ((_ map or) call!423009 call!423007))))

(declare-fun b!5618576 () Bool)

(declare-fun e!3463659 () (InoxSet Context!9970))

(assert (=> b!5618576 (= e!3463659 e!3463662)))

(assert (=> b!5618576 (= c!985826 ((_ is Union!15601) (h!69426 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun bm!423002 () Bool)

(assert (=> bm!423002 (= call!423007 call!423010)))

(declare-fun b!5618577 () Bool)

(declare-fun e!3463661 () Bool)

(assert (=> b!5618577 (= c!985828 e!3463661)))

(declare-fun res!2379946 () Bool)

(assert (=> b!5618577 (=> (not res!2379946) (not e!3463661))))

(assert (=> b!5618577 (= res!2379946 ((_ is Concat!24446) (h!69426 (exprs!5485 (h!69427 zl!343)))))))

(assert (=> b!5618577 (= e!3463662 e!3463657)))

(declare-fun b!5618572 () Bool)

(assert (=> b!5618572 (= e!3463661 (nullable!5633 (regOne!31714 (h!69426 (exprs!5485 (h!69427 zl!343))))))))

(declare-fun d!1775688 () Bool)

(declare-fun c!985825 () Bool)

(assert (=> d!1775688 (= c!985825 (and ((_ is ElementMatch!15601) (h!69426 (exprs!5485 (h!69427 zl!343)))) (= (c!985623 (h!69426 (exprs!5485 (h!69427 zl!343)))) (h!69428 s!2326))))))

(assert (=> d!1775688 (= (derivationStepZipperDown!943 (h!69426 (exprs!5485 (h!69427 zl!343))) lt!2259184 (h!69428 s!2326)) e!3463659)))

(declare-fun b!5618578 () Bool)

(declare-fun e!3463658 () (InoxSet Context!9970))

(assert (=> b!5618578 (= e!3463658 ((as const (Array Context!9970 Bool)) false))))

(declare-fun b!5618579 () Bool)

(assert (=> b!5618579 (= e!3463658 call!423005)))

(declare-fun bm!423003 () Bool)

(assert (=> bm!423003 (= call!423006 call!423008)))

(declare-fun b!5618580 () Bool)

(assert (=> b!5618580 (= e!3463659 (store ((as const (Array Context!9970 Bool)) false) lt!2259184 true))))

(declare-fun bm!423004 () Bool)

(declare-fun $colon$colon!1656 (List!63102 Regex!15601) List!63102)

(assert (=> bm!423004 (= call!423008 ($colon$colon!1656 (exprs!5485 lt!2259184) (ite (or c!985828 c!985824) (regTwo!31714 (h!69426 (exprs!5485 (h!69427 zl!343)))) (h!69426 (exprs!5485 (h!69427 zl!343))))))))

(declare-fun bm!423005 () Bool)

(assert (=> bm!423005 (= call!423005 call!423007)))

(declare-fun b!5618581 () Bool)

(declare-fun c!985827 () Bool)

(assert (=> b!5618581 (= c!985827 ((_ is Star!15601) (h!69426 (exprs!5485 (h!69427 zl!343)))))))

(assert (=> b!5618581 (= e!3463660 e!3463658)))

(declare-fun b!5618582 () Bool)

(assert (=> b!5618582 (= e!3463657 e!3463660)))

(assert (=> b!5618582 (= c!985824 ((_ is Concat!24446) (h!69426 (exprs!5485 (h!69427 zl!343)))))))

(assert (= (and d!1775688 c!985825) b!5618580))

(assert (= (and d!1775688 (not c!985825)) b!5618576))

(assert (= (and b!5618576 c!985826) b!5618573))

(assert (= (and b!5618576 (not c!985826)) b!5618577))

(assert (= (and b!5618577 res!2379946) b!5618572))

(assert (= (and b!5618577 c!985828) b!5618575))

(assert (= (and b!5618577 (not c!985828)) b!5618582))

(assert (= (and b!5618582 c!985824) b!5618574))

(assert (= (and b!5618582 (not c!985824)) b!5618581))

(assert (= (and b!5618581 c!985827) b!5618579))

(assert (= (and b!5618581 (not c!985827)) b!5618578))

(assert (= (or b!5618574 b!5618579) bm!423003))

(assert (= (or b!5618574 b!5618579) bm!423005))

(assert (= (or b!5618575 bm!423003) bm!423004))

(assert (= (or b!5618575 bm!423005) bm!423002))

(assert (= (or b!5618573 bm!423002) bm!423001))

(assert (= (or b!5618573 b!5618575) bm!423000))

(declare-fun m!6592324 () Bool)

(assert (=> bm!423000 m!6592324))

(declare-fun m!6592326 () Bool)

(assert (=> bm!423001 m!6592326))

(declare-fun m!6592328 () Bool)

(assert (=> bm!423004 m!6592328))

(declare-fun m!6592330 () Bool)

(assert (=> b!5618580 m!6592330))

(declare-fun m!6592332 () Bool)

(assert (=> b!5618572 m!6592332))

(assert (=> b!5617877 d!1775688))

(declare-fun b!5618583 () Bool)

(declare-fun e!3463665 () (InoxSet Context!9970))

(declare-fun e!3463664 () (InoxSet Context!9970))

(assert (=> b!5618583 (= e!3463665 e!3463664)))

(declare-fun c!985830 () Bool)

(assert (=> b!5618583 (= c!985830 ((_ is Cons!62978) (exprs!5485 (Context!9971 (Cons!62978 (h!69426 (exprs!5485 (h!69427 zl!343))) (t!376392 (exprs!5485 (h!69427 zl!343))))))))))

(declare-fun b!5618584 () Bool)

(declare-fun call!423011 () (InoxSet Context!9970))

(assert (=> b!5618584 (= e!3463665 ((_ map or) call!423011 (derivationStepZipperUp!869 (Context!9971 (t!376392 (exprs!5485 (Context!9971 (Cons!62978 (h!69426 (exprs!5485 (h!69427 zl!343))) (t!376392 (exprs!5485 (h!69427 zl!343)))))))) (h!69428 s!2326))))))

(declare-fun bm!423006 () Bool)

(assert (=> bm!423006 (= call!423011 (derivationStepZipperDown!943 (h!69426 (exprs!5485 (Context!9971 (Cons!62978 (h!69426 (exprs!5485 (h!69427 zl!343))) (t!376392 (exprs!5485 (h!69427 zl!343))))))) (Context!9971 (t!376392 (exprs!5485 (Context!9971 (Cons!62978 (h!69426 (exprs!5485 (h!69427 zl!343))) (t!376392 (exprs!5485 (h!69427 zl!343)))))))) (h!69428 s!2326)))))

(declare-fun b!5618586 () Bool)

(assert (=> b!5618586 (= e!3463664 ((as const (Array Context!9970 Bool)) false))))

(declare-fun b!5618587 () Bool)

(declare-fun e!3463663 () Bool)

(assert (=> b!5618587 (= e!3463663 (nullable!5633 (h!69426 (exprs!5485 (Context!9971 (Cons!62978 (h!69426 (exprs!5485 (h!69427 zl!343))) (t!376392 (exprs!5485 (h!69427 zl!343)))))))))))

(declare-fun b!5618585 () Bool)

(assert (=> b!5618585 (= e!3463664 call!423011)))

(declare-fun d!1775690 () Bool)

(declare-fun c!985829 () Bool)

(assert (=> d!1775690 (= c!985829 e!3463663)))

(declare-fun res!2379947 () Bool)

(assert (=> d!1775690 (=> (not res!2379947) (not e!3463663))))

(assert (=> d!1775690 (= res!2379947 ((_ is Cons!62978) (exprs!5485 (Context!9971 (Cons!62978 (h!69426 (exprs!5485 (h!69427 zl!343))) (t!376392 (exprs!5485 (h!69427 zl!343))))))))))

(assert (=> d!1775690 (= (derivationStepZipperUp!869 (Context!9971 (Cons!62978 (h!69426 (exprs!5485 (h!69427 zl!343))) (t!376392 (exprs!5485 (h!69427 zl!343))))) (h!69428 s!2326)) e!3463665)))

(assert (= (and d!1775690 res!2379947) b!5618587))

(assert (= (and d!1775690 c!985829) b!5618584))

(assert (= (and d!1775690 (not c!985829)) b!5618583))

(assert (= (and b!5618583 c!985830) b!5618585))

(assert (= (and b!5618583 (not c!985830)) b!5618586))

(assert (= (or b!5618584 b!5618585) bm!423006))

(declare-fun m!6592334 () Bool)

(assert (=> b!5618584 m!6592334))

(declare-fun m!6592336 () Bool)

(assert (=> bm!423006 m!6592336))

(declare-fun m!6592338 () Bool)

(assert (=> b!5618587 m!6592338))

(assert (=> b!5617877 d!1775690))

(declare-fun b!5618588 () Bool)

(declare-fun e!3463668 () (InoxSet Context!9970))

(declare-fun e!3463667 () (InoxSet Context!9970))

(assert (=> b!5618588 (= e!3463668 e!3463667)))

(declare-fun c!985832 () Bool)

(assert (=> b!5618588 (= c!985832 ((_ is Cons!62978) (exprs!5485 (h!69427 zl!343))))))

(declare-fun b!5618589 () Bool)

(declare-fun call!423012 () (InoxSet Context!9970))

(assert (=> b!5618589 (= e!3463668 ((_ map or) call!423012 (derivationStepZipperUp!869 (Context!9971 (t!376392 (exprs!5485 (h!69427 zl!343)))) (h!69428 s!2326))))))

(declare-fun bm!423007 () Bool)

(assert (=> bm!423007 (= call!423012 (derivationStepZipperDown!943 (h!69426 (exprs!5485 (h!69427 zl!343))) (Context!9971 (t!376392 (exprs!5485 (h!69427 zl!343)))) (h!69428 s!2326)))))

(declare-fun b!5618591 () Bool)

(assert (=> b!5618591 (= e!3463667 ((as const (Array Context!9970 Bool)) false))))

(declare-fun b!5618592 () Bool)

(declare-fun e!3463666 () Bool)

(assert (=> b!5618592 (= e!3463666 (nullable!5633 (h!69426 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun b!5618590 () Bool)

(assert (=> b!5618590 (= e!3463667 call!423012)))

(declare-fun d!1775692 () Bool)

(declare-fun c!985831 () Bool)

(assert (=> d!1775692 (= c!985831 e!3463666)))

(declare-fun res!2379948 () Bool)

(assert (=> d!1775692 (=> (not res!2379948) (not e!3463666))))

(assert (=> d!1775692 (= res!2379948 ((_ is Cons!62978) (exprs!5485 (h!69427 zl!343))))))

(assert (=> d!1775692 (= (derivationStepZipperUp!869 (h!69427 zl!343) (h!69428 s!2326)) e!3463668)))

(assert (= (and d!1775692 res!2379948) b!5618592))

(assert (= (and d!1775692 c!985831) b!5618589))

(assert (= (and d!1775692 (not c!985831)) b!5618588))

(assert (= (and b!5618588 c!985832) b!5618590))

(assert (= (and b!5618588 (not c!985832)) b!5618591))

(assert (= (or b!5618589 b!5618590) bm!423007))

(declare-fun m!6592340 () Bool)

(assert (=> b!5618589 m!6592340))

(declare-fun m!6592342 () Bool)

(assert (=> bm!423007 m!6592342))

(assert (=> b!5618592 m!6591740))

(assert (=> b!5617877 d!1775692))

(declare-fun d!1775694 () Bool)

(declare-fun dynLambda!24631 (Int Context!9970) (InoxSet Context!9970))

(assert (=> d!1775694 (= (flatMap!1214 z!1189 lambda!301530) (dynLambda!24631 lambda!301530 (h!69427 zl!343)))))

(declare-fun lt!2259287 () Unit!155900)

(declare-fun choose!42528 ((InoxSet Context!9970) Context!9970 Int) Unit!155900)

(assert (=> d!1775694 (= lt!2259287 (choose!42528 z!1189 (h!69427 zl!343) lambda!301530))))

(assert (=> d!1775694 (= z!1189 (store ((as const (Array Context!9970 Bool)) false) (h!69427 zl!343) true))))

(assert (=> d!1775694 (= (lemmaFlatMapOnSingletonSet!746 z!1189 (h!69427 zl!343) lambda!301530) lt!2259287)))

(declare-fun b_lambda!212655 () Bool)

(assert (=> (not b_lambda!212655) (not d!1775694)))

(declare-fun bs!1301243 () Bool)

(assert (= bs!1301243 d!1775694))

(assert (=> bs!1301243 m!6591738))

(declare-fun m!6592344 () Bool)

(assert (=> bs!1301243 m!6592344))

(declare-fun m!6592346 () Bool)

(assert (=> bs!1301243 m!6592346))

(declare-fun m!6592348 () Bool)

(assert (=> bs!1301243 m!6592348))

(assert (=> b!5617877 d!1775694))

(declare-fun d!1775696 () Bool)

(declare-fun choose!42529 ((InoxSet Context!9970) Int) (InoxSet Context!9970))

(assert (=> d!1775696 (= (flatMap!1214 z!1189 lambda!301530) (choose!42529 z!1189 lambda!301530))))

(declare-fun bs!1301244 () Bool)

(assert (= bs!1301244 d!1775696))

(declare-fun m!6592350 () Bool)

(assert (=> bs!1301244 m!6592350))

(assert (=> b!5617877 d!1775696))

(declare-fun d!1775698 () Bool)

(declare-fun nullableFct!1733 (Regex!15601) Bool)

(assert (=> d!1775698 (= (nullable!5633 (h!69426 (exprs!5485 (h!69427 zl!343)))) (nullableFct!1733 (h!69426 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun bs!1301245 () Bool)

(assert (= bs!1301245 d!1775698))

(declare-fun m!6592352 () Bool)

(assert (=> bs!1301245 m!6592352))

(assert (=> b!5617877 d!1775698))

(declare-fun b!5618611 () Bool)

(declare-fun res!2379961 () Bool)

(declare-fun e!3463683 () Bool)

(assert (=> b!5618611 (=> (not res!2379961) (not e!3463683))))

(declare-fun lt!2259294 () Option!15610)

(declare-fun get!21690 (Option!15610) tuple2!65396)

(assert (=> b!5618611 (= res!2379961 (matchR!7786 (regOne!31714 r!7292) (_1!36001 (get!21690 lt!2259294))))))

(declare-fun b!5618612 () Bool)

(declare-fun res!2379963 () Bool)

(assert (=> b!5618612 (=> (not res!2379963) (not e!3463683))))

(assert (=> b!5618612 (= res!2379963 (matchR!7786 (regTwo!31714 r!7292) (_2!36001 (get!21690 lt!2259294))))))

(declare-fun b!5618613 () Bool)

(declare-fun ++!13822 (List!63104 List!63104) List!63104)

(assert (=> b!5618613 (= e!3463683 (= (++!13822 (_1!36001 (get!21690 lt!2259294)) (_2!36001 (get!21690 lt!2259294))) s!2326))))

(declare-fun b!5618614 () Bool)

(declare-fun e!3463679 () Bool)

(assert (=> b!5618614 (= e!3463679 (matchR!7786 (regTwo!31714 r!7292) s!2326))))

(declare-fun b!5618615 () Bool)

(declare-fun e!3463681 () Bool)

(assert (=> b!5618615 (= e!3463681 (not (isDefined!12313 lt!2259294)))))

(declare-fun d!1775700 () Bool)

(assert (=> d!1775700 e!3463681))

(declare-fun res!2379962 () Bool)

(assert (=> d!1775700 (=> res!2379962 e!3463681)))

(assert (=> d!1775700 (= res!2379962 e!3463683)))

(declare-fun res!2379959 () Bool)

(assert (=> d!1775700 (=> (not res!2379959) (not e!3463683))))

(assert (=> d!1775700 (= res!2379959 (isDefined!12313 lt!2259294))))

(declare-fun e!3463680 () Option!15610)

(assert (=> d!1775700 (= lt!2259294 e!3463680)))

(declare-fun c!985838 () Bool)

(assert (=> d!1775700 (= c!985838 e!3463679)))

(declare-fun res!2379960 () Bool)

(assert (=> d!1775700 (=> (not res!2379960) (not e!3463679))))

(assert (=> d!1775700 (= res!2379960 (matchR!7786 (regOne!31714 r!7292) Nil!62980))))

(assert (=> d!1775700 (validRegex!7337 (regOne!31714 r!7292))))

(assert (=> d!1775700 (= (findConcatSeparation!2024 (regOne!31714 r!7292) (regTwo!31714 r!7292) Nil!62980 s!2326 s!2326) lt!2259294)))

(declare-fun b!5618616 () Bool)

(assert (=> b!5618616 (= e!3463680 (Some!15609 (tuple2!65397 Nil!62980 s!2326)))))

(declare-fun b!5618617 () Bool)

(declare-fun lt!2259295 () Unit!155900)

(declare-fun lt!2259296 () Unit!155900)

(assert (=> b!5618617 (= lt!2259295 lt!2259296)))

(assert (=> b!5618617 (= (++!13822 (++!13822 Nil!62980 (Cons!62980 (h!69428 s!2326) Nil!62980)) (t!376394 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1991 (List!63104 C!31472 List!63104 List!63104) Unit!155900)

(assert (=> b!5618617 (= lt!2259296 (lemmaMoveElementToOtherListKeepsConcatEq!1991 Nil!62980 (h!69428 s!2326) (t!376394 s!2326) s!2326))))

(declare-fun e!3463682 () Option!15610)

(assert (=> b!5618617 (= e!3463682 (findConcatSeparation!2024 (regOne!31714 r!7292) (regTwo!31714 r!7292) (++!13822 Nil!62980 (Cons!62980 (h!69428 s!2326) Nil!62980)) (t!376394 s!2326) s!2326))))

(declare-fun b!5618618 () Bool)

(assert (=> b!5618618 (= e!3463682 None!15609)))

(declare-fun b!5618619 () Bool)

(assert (=> b!5618619 (= e!3463680 e!3463682)))

(declare-fun c!985837 () Bool)

(assert (=> b!5618619 (= c!985837 ((_ is Nil!62980) s!2326))))

(assert (= (and d!1775700 res!2379960) b!5618614))

(assert (= (and d!1775700 c!985838) b!5618616))

(assert (= (and d!1775700 (not c!985838)) b!5618619))

(assert (= (and b!5618619 c!985837) b!5618618))

(assert (= (and b!5618619 (not c!985837)) b!5618617))

(assert (= (and d!1775700 res!2379959) b!5618611))

(assert (= (and b!5618611 res!2379961) b!5618612))

(assert (= (and b!5618612 res!2379963) b!5618613))

(assert (= (and d!1775700 (not res!2379962)) b!5618615))

(declare-fun m!6592354 () Bool)

(assert (=> b!5618612 m!6592354))

(declare-fun m!6592356 () Bool)

(assert (=> b!5618612 m!6592356))

(declare-fun m!6592358 () Bool)

(assert (=> b!5618617 m!6592358))

(assert (=> b!5618617 m!6592358))

(declare-fun m!6592360 () Bool)

(assert (=> b!5618617 m!6592360))

(declare-fun m!6592362 () Bool)

(assert (=> b!5618617 m!6592362))

(assert (=> b!5618617 m!6592358))

(declare-fun m!6592364 () Bool)

(assert (=> b!5618617 m!6592364))

(assert (=> b!5618611 m!6592354))

(declare-fun m!6592366 () Bool)

(assert (=> b!5618611 m!6592366))

(declare-fun m!6592368 () Bool)

(assert (=> b!5618615 m!6592368))

(assert (=> b!5618613 m!6592354))

(declare-fun m!6592370 () Bool)

(assert (=> b!5618613 m!6592370))

(assert (=> d!1775700 m!6592368))

(declare-fun m!6592372 () Bool)

(assert (=> d!1775700 m!6592372))

(declare-fun m!6592374 () Bool)

(assert (=> d!1775700 m!6592374))

(declare-fun m!6592376 () Bool)

(assert (=> b!5618614 m!6592376))

(assert (=> b!5617897 d!1775700))

(declare-fun d!1775702 () Bool)

(declare-fun choose!42530 (Int) Bool)

(assert (=> d!1775702 (= (Exists!2701 lambda!301528) (choose!42530 lambda!301528))))

(declare-fun bs!1301246 () Bool)

(assert (= bs!1301246 d!1775702))

(declare-fun m!6592378 () Bool)

(assert (=> bs!1301246 m!6592378))

(assert (=> b!5617897 d!1775702))

(declare-fun d!1775704 () Bool)

(assert (=> d!1775704 (= (Exists!2701 lambda!301529) (choose!42530 lambda!301529))))

(declare-fun bs!1301247 () Bool)

(assert (= bs!1301247 d!1775704))

(declare-fun m!6592380 () Bool)

(assert (=> bs!1301247 m!6592380))

(assert (=> b!5617897 d!1775704))

(declare-fun bs!1301248 () Bool)

(declare-fun d!1775706 () Bool)

(assert (= bs!1301248 (and d!1775706 b!5617897)))

(declare-fun lambda!301583 () Int)

(assert (=> bs!1301248 (= lambda!301583 lambda!301528)))

(assert (=> bs!1301248 (not (= lambda!301583 lambda!301529))))

(declare-fun bs!1301249 () Bool)

(assert (= bs!1301249 (and d!1775706 b!5618363)))

(assert (=> bs!1301249 (not (= lambda!301583 lambda!301575))))

(declare-fun bs!1301250 () Bool)

(assert (= bs!1301250 (and d!1775706 b!5618370)))

(assert (=> bs!1301250 (not (= lambda!301583 lambda!301576))))

(assert (=> d!1775706 true))

(assert (=> d!1775706 true))

(assert (=> d!1775706 true))

(assert (=> d!1775706 (= (isDefined!12313 (findConcatSeparation!2024 (regOne!31714 r!7292) (regTwo!31714 r!7292) Nil!62980 s!2326 s!2326)) (Exists!2701 lambda!301583))))

(declare-fun lt!2259299 () Unit!155900)

(declare-fun choose!42531 (Regex!15601 Regex!15601 List!63104) Unit!155900)

(assert (=> d!1775706 (= lt!2259299 (choose!42531 (regOne!31714 r!7292) (regTwo!31714 r!7292) s!2326))))

(assert (=> d!1775706 (validRegex!7337 (regOne!31714 r!7292))))

(assert (=> d!1775706 (= (lemmaFindConcatSeparationEquivalentToExists!1788 (regOne!31714 r!7292) (regTwo!31714 r!7292) s!2326) lt!2259299)))

(declare-fun bs!1301251 () Bool)

(assert (= bs!1301251 d!1775706))

(assert (=> bs!1301251 m!6591746))

(declare-fun m!6592382 () Bool)

(assert (=> bs!1301251 m!6592382))

(assert (=> bs!1301251 m!6592374))

(assert (=> bs!1301251 m!6591746))

(assert (=> bs!1301251 m!6591748))

(declare-fun m!6592384 () Bool)

(assert (=> bs!1301251 m!6592384))

(assert (=> b!5617897 d!1775706))

(declare-fun bs!1301252 () Bool)

(declare-fun d!1775708 () Bool)

(assert (= bs!1301252 (and d!1775708 b!5618370)))

(declare-fun lambda!301588 () Int)

(assert (=> bs!1301252 (not (= lambda!301588 lambda!301576))))

(declare-fun bs!1301253 () Bool)

(assert (= bs!1301253 (and d!1775708 d!1775706)))

(assert (=> bs!1301253 (= lambda!301588 lambda!301583)))

(declare-fun bs!1301254 () Bool)

(assert (= bs!1301254 (and d!1775708 b!5618363)))

(assert (=> bs!1301254 (not (= lambda!301588 lambda!301575))))

(declare-fun bs!1301255 () Bool)

(assert (= bs!1301255 (and d!1775708 b!5617897)))

(assert (=> bs!1301255 (= lambda!301588 lambda!301528)))

(assert (=> bs!1301255 (not (= lambda!301588 lambda!301529))))

(assert (=> d!1775708 true))

(assert (=> d!1775708 true))

(assert (=> d!1775708 true))

(declare-fun lambda!301589 () Int)

(assert (=> bs!1301252 (= lambda!301589 lambda!301576)))

(assert (=> bs!1301253 (not (= lambda!301589 lambda!301583))))

(assert (=> bs!1301254 (not (= lambda!301589 lambda!301575))))

(assert (=> bs!1301255 (not (= lambda!301589 lambda!301528))))

(assert (=> bs!1301255 (= lambda!301589 lambda!301529)))

(declare-fun bs!1301256 () Bool)

(assert (= bs!1301256 d!1775708))

(assert (=> bs!1301256 (not (= lambda!301589 lambda!301588))))

(assert (=> d!1775708 true))

(assert (=> d!1775708 true))

(assert (=> d!1775708 true))

(assert (=> d!1775708 (= (Exists!2701 lambda!301588) (Exists!2701 lambda!301589))))

(declare-fun lt!2259302 () Unit!155900)

(declare-fun choose!42532 (Regex!15601 Regex!15601 List!63104) Unit!155900)

(assert (=> d!1775708 (= lt!2259302 (choose!42532 (regOne!31714 r!7292) (regTwo!31714 r!7292) s!2326))))

(assert (=> d!1775708 (validRegex!7337 (regOne!31714 r!7292))))

(assert (=> d!1775708 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1330 (regOne!31714 r!7292) (regTwo!31714 r!7292) s!2326) lt!2259302)))

(declare-fun m!6592386 () Bool)

(assert (=> bs!1301256 m!6592386))

(declare-fun m!6592388 () Bool)

(assert (=> bs!1301256 m!6592388))

(declare-fun m!6592390 () Bool)

(assert (=> bs!1301256 m!6592390))

(assert (=> bs!1301256 m!6592374))

(assert (=> b!5617897 d!1775708))

(declare-fun d!1775710 () Bool)

(declare-fun isEmpty!34807 (Option!15610) Bool)

(assert (=> d!1775710 (= (isDefined!12313 (findConcatSeparation!2024 (regOne!31714 r!7292) (regTwo!31714 r!7292) Nil!62980 s!2326 s!2326)) (not (isEmpty!34807 (findConcatSeparation!2024 (regOne!31714 r!7292) (regTwo!31714 r!7292) Nil!62980 s!2326 s!2326))))))

(declare-fun bs!1301257 () Bool)

(assert (= bs!1301257 d!1775710))

(assert (=> bs!1301257 m!6591746))

(declare-fun m!6592392 () Bool)

(assert (=> bs!1301257 m!6592392))

(assert (=> b!5617897 d!1775710))

(declare-fun d!1775712 () Bool)

(declare-fun lt!2259305 () Int)

(assert (=> d!1775712 (>= lt!2259305 0)))

(declare-fun e!3463692 () Int)

(assert (=> d!1775712 (= lt!2259305 e!3463692)))

(declare-fun c!985841 () Bool)

(assert (=> d!1775712 (= c!985841 ((_ is Cons!62979) zl!343))))

(assert (=> d!1775712 (= (zipperDepthTotal!226 zl!343) lt!2259305)))

(declare-fun b!5618636 () Bool)

(declare-fun contextDepthTotal!202 (Context!9970) Int)

(assert (=> b!5618636 (= e!3463692 (+ (contextDepthTotal!202 (h!69427 zl!343)) (zipperDepthTotal!226 (t!376393 zl!343))))))

(declare-fun b!5618637 () Bool)

(assert (=> b!5618637 (= e!3463692 0)))

(assert (= (and d!1775712 c!985841) b!5618636))

(assert (= (and d!1775712 (not c!985841)) b!5618637))

(declare-fun m!6592394 () Bool)

(assert (=> b!5618636 m!6592394))

(declare-fun m!6592396 () Bool)

(assert (=> b!5618636 m!6592396))

(assert (=> b!5617876 d!1775712))

(declare-fun d!1775714 () Bool)

(declare-fun lt!2259306 () Int)

(assert (=> d!1775714 (>= lt!2259306 0)))

(declare-fun e!3463693 () Int)

(assert (=> d!1775714 (= lt!2259306 e!3463693)))

(declare-fun c!985842 () Bool)

(assert (=> d!1775714 (= c!985842 ((_ is Cons!62979) lt!2259168))))

(assert (=> d!1775714 (= (zipperDepthTotal!226 lt!2259168) lt!2259306)))

(declare-fun b!5618638 () Bool)

(assert (=> b!5618638 (= e!3463693 (+ (contextDepthTotal!202 (h!69427 lt!2259168)) (zipperDepthTotal!226 (t!376393 lt!2259168))))))

(declare-fun b!5618639 () Bool)

(assert (=> b!5618639 (= e!3463693 0)))

(assert (= (and d!1775714 c!985842) b!5618638))

(assert (= (and d!1775714 (not c!985842)) b!5618639))

(declare-fun m!6592398 () Bool)

(assert (=> b!5618638 m!6592398))

(declare-fun m!6592400 () Bool)

(assert (=> b!5618638 m!6592400))

(assert (=> b!5617876 d!1775714))

(declare-fun bs!1301258 () Bool)

(declare-fun d!1775716 () Bool)

(assert (= bs!1301258 (and d!1775716 d!1775574)))

(declare-fun lambda!301590 () Int)

(assert (=> bs!1301258 (= lambda!301590 lambda!301558)))

(declare-fun bs!1301259 () Bool)

(assert (= bs!1301259 (and d!1775716 d!1775580)))

(assert (=> bs!1301259 (= lambda!301590 lambda!301563)))

(declare-fun bs!1301260 () Bool)

(assert (= bs!1301260 (and d!1775716 d!1775684)))

(assert (=> bs!1301260 (= lambda!301590 lambda!301580)))

(assert (=> d!1775716 (= (inv!82249 (h!69427 zl!343)) (forall!14760 (exprs!5485 (h!69427 zl!343)) lambda!301590))))

(declare-fun bs!1301261 () Bool)

(assert (= bs!1301261 d!1775716))

(declare-fun m!6592402 () Bool)

(assert (=> bs!1301261 m!6592402))

(assert (=> b!5617875 d!1775716))

(declare-fun d!1775718 () Bool)

(declare-fun c!985843 () Bool)

(assert (=> d!1775718 (= c!985843 (isEmpty!34806 (t!376394 s!2326)))))

(declare-fun e!3463694 () Bool)

(assert (=> d!1775718 (= (matchZipper!1739 lt!2259189 (t!376394 s!2326)) e!3463694)))

(declare-fun b!5618640 () Bool)

(assert (=> b!5618640 (= e!3463694 (nullableZipper!1588 lt!2259189))))

(declare-fun b!5618641 () Bool)

(assert (=> b!5618641 (= e!3463694 (matchZipper!1739 (derivationStepZipper!1692 lt!2259189 (head!11955 (t!376394 s!2326))) (tail!11050 (t!376394 s!2326))))))

(assert (= (and d!1775718 c!985843) b!5618640))

(assert (= (and d!1775718 (not c!985843)) b!5618641))

(assert (=> d!1775718 m!6591990))

(declare-fun m!6592404 () Bool)

(assert (=> b!5618640 m!6592404))

(assert (=> b!5618641 m!6591994))

(assert (=> b!5618641 m!6591994))

(declare-fun m!6592406 () Bool)

(assert (=> b!5618641 m!6592406))

(assert (=> b!5618641 m!6591998))

(assert (=> b!5618641 m!6592406))

(assert (=> b!5618641 m!6591998))

(declare-fun m!6592408 () Bool)

(assert (=> b!5618641 m!6592408))

(assert (=> b!5617889 d!1775718))

(declare-fun d!1775720 () Bool)

(declare-fun c!985844 () Bool)

(assert (=> d!1775720 (= c!985844 (isEmpty!34806 (t!376394 s!2326)))))

(declare-fun e!3463695 () Bool)

(assert (=> d!1775720 (= (matchZipper!1739 lt!2259180 (t!376394 s!2326)) e!3463695)))

(declare-fun b!5618642 () Bool)

(assert (=> b!5618642 (= e!3463695 (nullableZipper!1588 lt!2259180))))

(declare-fun b!5618643 () Bool)

(assert (=> b!5618643 (= e!3463695 (matchZipper!1739 (derivationStepZipper!1692 lt!2259180 (head!11955 (t!376394 s!2326))) (tail!11050 (t!376394 s!2326))))))

(assert (= (and d!1775720 c!985844) b!5618642))

(assert (= (and d!1775720 (not c!985844)) b!5618643))

(assert (=> d!1775720 m!6591990))

(declare-fun m!6592410 () Bool)

(assert (=> b!5618642 m!6592410))

(assert (=> b!5618643 m!6591994))

(assert (=> b!5618643 m!6591994))

(declare-fun m!6592412 () Bool)

(assert (=> b!5618643 m!6592412))

(assert (=> b!5618643 m!6591998))

(assert (=> b!5618643 m!6592412))

(assert (=> b!5618643 m!6591998))

(declare-fun m!6592414 () Bool)

(assert (=> b!5618643 m!6592414))

(assert (=> b!5617889 d!1775720))

(declare-fun d!1775722 () Bool)

(declare-fun c!985845 () Bool)

(assert (=> d!1775722 (= c!985845 (isEmpty!34806 (t!376394 s!2326)))))

(declare-fun e!3463696 () Bool)

(assert (=> d!1775722 (= (matchZipper!1739 lt!2259197 (t!376394 s!2326)) e!3463696)))

(declare-fun b!5618644 () Bool)

(assert (=> b!5618644 (= e!3463696 (nullableZipper!1588 lt!2259197))))

(declare-fun b!5618645 () Bool)

(assert (=> b!5618645 (= e!3463696 (matchZipper!1739 (derivationStepZipper!1692 lt!2259197 (head!11955 (t!376394 s!2326))) (tail!11050 (t!376394 s!2326))))))

(assert (= (and d!1775722 c!985845) b!5618644))

(assert (= (and d!1775722 (not c!985845)) b!5618645))

(assert (=> d!1775722 m!6591990))

(declare-fun m!6592416 () Bool)

(assert (=> b!5618644 m!6592416))

(assert (=> b!5618645 m!6591994))

(assert (=> b!5618645 m!6591994))

(declare-fun m!6592418 () Bool)

(assert (=> b!5618645 m!6592418))

(assert (=> b!5618645 m!6591998))

(assert (=> b!5618645 m!6592418))

(assert (=> b!5618645 m!6591998))

(declare-fun m!6592420 () Bool)

(assert (=> b!5618645 m!6592420))

(assert (=> b!5617889 d!1775722))

(declare-fun e!3463697 () Bool)

(declare-fun d!1775724 () Bool)

(assert (=> d!1775724 (= (matchZipper!1739 ((_ map or) lt!2259197 lt!2259193) (t!376394 s!2326)) e!3463697)))

(declare-fun res!2379976 () Bool)

(assert (=> d!1775724 (=> res!2379976 e!3463697)))

(assert (=> d!1775724 (= res!2379976 (matchZipper!1739 lt!2259197 (t!376394 s!2326)))))

(declare-fun lt!2259307 () Unit!155900)

(assert (=> d!1775724 (= lt!2259307 (choose!42525 lt!2259197 lt!2259193 (t!376394 s!2326)))))

(assert (=> d!1775724 (= (lemmaZipperConcatMatchesSameAsBothZippers!626 lt!2259197 lt!2259193 (t!376394 s!2326)) lt!2259307)))

(declare-fun b!5618646 () Bool)

(assert (=> b!5618646 (= e!3463697 (matchZipper!1739 lt!2259193 (t!376394 s!2326)))))

(assert (= (and d!1775724 (not res!2379976)) b!5618646))

(declare-fun m!6592422 () Bool)

(assert (=> d!1775724 m!6592422))

(assert (=> d!1775724 m!6591764))

(declare-fun m!6592424 () Bool)

(assert (=> d!1775724 m!6592424))

(assert (=> b!5618646 m!6591800))

(assert (=> b!5617889 d!1775724))

(declare-fun d!1775726 () Bool)

(declare-fun lt!2259308 () Int)

(assert (=> d!1775726 (>= lt!2259308 0)))

(declare-fun e!3463698 () Int)

(assert (=> d!1775726 (= lt!2259308 e!3463698)))

(declare-fun c!985846 () Bool)

(assert (=> d!1775726 (= c!985846 ((_ is Cons!62979) lt!2259199))))

(assert (=> d!1775726 (= (zipperDepthTotal!226 lt!2259199) lt!2259308)))

(declare-fun b!5618647 () Bool)

(assert (=> b!5618647 (= e!3463698 (+ (contextDepthTotal!202 (h!69427 lt!2259199)) (zipperDepthTotal!226 (t!376393 lt!2259199))))))

(declare-fun b!5618648 () Bool)

(assert (=> b!5618648 (= e!3463698 0)))

(assert (= (and d!1775726 c!985846) b!5618647))

(assert (= (and d!1775726 (not c!985846)) b!5618648))

(declare-fun m!6592426 () Bool)

(assert (=> b!5618647 m!6592426))

(declare-fun m!6592428 () Bool)

(assert (=> b!5618647 m!6592428))

(assert (=> b!5617893 d!1775726))

(declare-fun bs!1301262 () Bool)

(declare-fun d!1775728 () Bool)

(assert (= bs!1301262 (and d!1775728 d!1775574)))

(declare-fun lambda!301593 () Int)

(assert (=> bs!1301262 (= lambda!301593 lambda!301558)))

(declare-fun bs!1301263 () Bool)

(assert (= bs!1301263 (and d!1775728 d!1775580)))

(assert (=> bs!1301263 (= lambda!301593 lambda!301563)))

(declare-fun bs!1301264 () Bool)

(assert (= bs!1301264 (and d!1775728 d!1775684)))

(assert (=> bs!1301264 (= lambda!301593 lambda!301580)))

(declare-fun bs!1301265 () Bool)

(assert (= bs!1301265 (and d!1775728 d!1775716)))

(assert (=> bs!1301265 (= lambda!301593 lambda!301590)))

(declare-fun b!5618669 () Bool)

(declare-fun e!3463714 () Regex!15601)

(assert (=> b!5618669 (= e!3463714 (Concat!24446 (h!69426 (exprs!5485 (h!69427 zl!343))) (generalisedConcat!1216 (t!376392 (exprs!5485 (h!69427 zl!343))))))))

(declare-fun b!5618670 () Bool)

(declare-fun e!3463715 () Bool)

(assert (=> b!5618670 (= e!3463715 (isEmpty!34803 (t!376392 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun b!5618671 () Bool)

(declare-fun e!3463712 () Bool)

(declare-fun e!3463716 () Bool)

(assert (=> b!5618671 (= e!3463712 e!3463716)))

(declare-fun c!985858 () Bool)

(assert (=> b!5618671 (= c!985858 (isEmpty!34803 (exprs!5485 (h!69427 zl!343))))))

(declare-fun b!5618672 () Bool)

(declare-fun lt!2259311 () Regex!15601)

(declare-fun isEmptyExpr!1147 (Regex!15601) Bool)

(assert (=> b!5618672 (= e!3463716 (isEmptyExpr!1147 lt!2259311))))

(declare-fun b!5618673 () Bool)

(declare-fun e!3463713 () Bool)

(declare-fun isConcat!670 (Regex!15601) Bool)

(assert (=> b!5618673 (= e!3463713 (isConcat!670 lt!2259311))))

(assert (=> d!1775728 e!3463712))

(declare-fun res!2379982 () Bool)

(assert (=> d!1775728 (=> (not res!2379982) (not e!3463712))))

(assert (=> d!1775728 (= res!2379982 (validRegex!7337 lt!2259311))))

(declare-fun e!3463711 () Regex!15601)

(assert (=> d!1775728 (= lt!2259311 e!3463711)))

(declare-fun c!985855 () Bool)

(assert (=> d!1775728 (= c!985855 e!3463715)))

(declare-fun res!2379981 () Bool)

(assert (=> d!1775728 (=> (not res!2379981) (not e!3463715))))

(assert (=> d!1775728 (= res!2379981 ((_ is Cons!62978) (exprs!5485 (h!69427 zl!343))))))

(assert (=> d!1775728 (forall!14760 (exprs!5485 (h!69427 zl!343)) lambda!301593)))

(assert (=> d!1775728 (= (generalisedConcat!1216 (exprs!5485 (h!69427 zl!343))) lt!2259311)))

(declare-fun b!5618674 () Bool)

(assert (=> b!5618674 (= e!3463711 e!3463714)))

(declare-fun c!985857 () Bool)

(assert (=> b!5618674 (= c!985857 ((_ is Cons!62978) (exprs!5485 (h!69427 zl!343))))))

(declare-fun b!5618675 () Bool)

(assert (=> b!5618675 (= e!3463713 (= lt!2259311 (head!11956 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun b!5618676 () Bool)

(assert (=> b!5618676 (= e!3463716 e!3463713)))

(declare-fun c!985856 () Bool)

(assert (=> b!5618676 (= c!985856 (isEmpty!34803 (tail!11051 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun b!5618677 () Bool)

(assert (=> b!5618677 (= e!3463714 EmptyExpr!15601)))

(declare-fun b!5618678 () Bool)

(assert (=> b!5618678 (= e!3463711 (h!69426 (exprs!5485 (h!69427 zl!343))))))

(assert (= (and d!1775728 res!2379981) b!5618670))

(assert (= (and d!1775728 c!985855) b!5618678))

(assert (= (and d!1775728 (not c!985855)) b!5618674))

(assert (= (and b!5618674 c!985857) b!5618669))

(assert (= (and b!5618674 (not c!985857)) b!5618677))

(assert (= (and d!1775728 res!2379982) b!5618671))

(assert (= (and b!5618671 c!985858) b!5618672))

(assert (= (and b!5618671 (not c!985858)) b!5618676))

(assert (= (and b!5618676 c!985856) b!5618675))

(assert (= (and b!5618676 (not c!985856)) b!5618673))

(declare-fun m!6592430 () Bool)

(assert (=> b!5618673 m!6592430))

(declare-fun m!6592432 () Bool)

(assert (=> b!5618671 m!6592432))

(declare-fun m!6592434 () Bool)

(assert (=> d!1775728 m!6592434))

(declare-fun m!6592436 () Bool)

(assert (=> d!1775728 m!6592436))

(declare-fun m!6592438 () Bool)

(assert (=> b!5618675 m!6592438))

(declare-fun m!6592440 () Bool)

(assert (=> b!5618672 m!6592440))

(assert (=> b!5618670 m!6591844))

(assert (=> b!5618669 m!6591770))

(declare-fun m!6592442 () Bool)

(assert (=> b!5618676 m!6592442))

(assert (=> b!5618676 m!6592442))

(declare-fun m!6592444 () Bool)

(assert (=> b!5618676 m!6592444))

(assert (=> b!5617871 d!1775728))

(declare-fun d!1775730 () Bool)

(declare-fun c!985859 () Bool)

(assert (=> d!1775730 (= c!985859 (isEmpty!34806 s!2326))))

(declare-fun e!3463717 () Bool)

(assert (=> d!1775730 (= (matchZipper!1739 lt!2259176 s!2326) e!3463717)))

(declare-fun b!5618679 () Bool)

(assert (=> b!5618679 (= e!3463717 (nullableZipper!1588 lt!2259176))))

(declare-fun b!5618680 () Bool)

(assert (=> b!5618680 (= e!3463717 (matchZipper!1739 (derivationStepZipper!1692 lt!2259176 (head!11955 s!2326)) (tail!11050 s!2326)))))

(assert (= (and d!1775730 c!985859) b!5618679))

(assert (= (and d!1775730 (not c!985859)) b!5618680))

(assert (=> d!1775730 m!6592180))

(declare-fun m!6592446 () Bool)

(assert (=> b!5618679 m!6592446))

(assert (=> b!5618680 m!6592302))

(assert (=> b!5618680 m!6592302))

(declare-fun m!6592448 () Bool)

(assert (=> b!5618680 m!6592448))

(assert (=> b!5618680 m!6592306))

(assert (=> b!5618680 m!6592448))

(assert (=> b!5618680 m!6592306))

(declare-fun m!6592450 () Bool)

(assert (=> b!5618680 m!6592450))

(assert (=> b!5617892 d!1775730))

(declare-fun d!1775732 () Bool)

(assert (=> d!1775732 (= (matchR!7786 lt!2259192 s!2326) (matchRSpec!2704 lt!2259192 s!2326))))

(declare-fun lt!2259312 () Unit!155900)

(assert (=> d!1775732 (= lt!2259312 (choose!42526 lt!2259192 s!2326))))

(assert (=> d!1775732 (validRegex!7337 lt!2259192)))

(assert (=> d!1775732 (= (mainMatchTheorem!2704 lt!2259192 s!2326) lt!2259312)))

(declare-fun bs!1301266 () Bool)

(assert (= bs!1301266 d!1775732))

(assert (=> bs!1301266 m!6591818))

(assert (=> bs!1301266 m!6591830))

(declare-fun m!6592452 () Bool)

(assert (=> bs!1301266 m!6592452))

(declare-fun m!6592454 () Bool)

(assert (=> bs!1301266 m!6592454))

(assert (=> b!5617892 d!1775732))

(declare-fun b!5618681 () Bool)

(declare-fun e!3463721 () Bool)

(declare-fun e!3463724 () Bool)

(assert (=> b!5618681 (= e!3463721 e!3463724)))

(declare-fun c!985862 () Bool)

(assert (=> b!5618681 (= c!985862 ((_ is EmptyLang!15601) lt!2259192))))

(declare-fun b!5618682 () Bool)

(declare-fun res!2379984 () Bool)

(declare-fun e!3463722 () Bool)

(assert (=> b!5618682 (=> res!2379984 e!3463722)))

(assert (=> b!5618682 (= res!2379984 (not (isEmpty!34806 (tail!11050 s!2326))))))

(declare-fun bm!423008 () Bool)

(declare-fun call!423013 () Bool)

(assert (=> bm!423008 (= call!423013 (isEmpty!34806 s!2326))))

(declare-fun b!5618683 () Bool)

(declare-fun res!2379988 () Bool)

(declare-fun e!3463718 () Bool)

(assert (=> b!5618683 (=> (not res!2379988) (not e!3463718))))

(assert (=> b!5618683 (= res!2379988 (not call!423013))))

(declare-fun b!5618684 () Bool)

(declare-fun lt!2259313 () Bool)

(assert (=> b!5618684 (= e!3463724 (not lt!2259313))))

(declare-fun d!1775734 () Bool)

(assert (=> d!1775734 e!3463721))

(declare-fun c!985861 () Bool)

(assert (=> d!1775734 (= c!985861 ((_ is EmptyExpr!15601) lt!2259192))))

(declare-fun e!3463723 () Bool)

(assert (=> d!1775734 (= lt!2259313 e!3463723)))

(declare-fun c!985860 () Bool)

(assert (=> d!1775734 (= c!985860 (isEmpty!34806 s!2326))))

(assert (=> d!1775734 (validRegex!7337 lt!2259192)))

(assert (=> d!1775734 (= (matchR!7786 lt!2259192 s!2326) lt!2259313)))

(declare-fun b!5618685 () Bool)

(declare-fun res!2379990 () Bool)

(declare-fun e!3463720 () Bool)

(assert (=> b!5618685 (=> res!2379990 e!3463720)))

(assert (=> b!5618685 (= res!2379990 e!3463718)))

(declare-fun res!2379983 () Bool)

(assert (=> b!5618685 (=> (not res!2379983) (not e!3463718))))

(assert (=> b!5618685 (= res!2379983 lt!2259313)))

(declare-fun b!5618686 () Bool)

(declare-fun e!3463719 () Bool)

(assert (=> b!5618686 (= e!3463720 e!3463719)))

(declare-fun res!2379985 () Bool)

(assert (=> b!5618686 (=> (not res!2379985) (not e!3463719))))

(assert (=> b!5618686 (= res!2379985 (not lt!2259313))))

(declare-fun b!5618687 () Bool)

(declare-fun res!2379987 () Bool)

(assert (=> b!5618687 (=> res!2379987 e!3463720)))

(assert (=> b!5618687 (= res!2379987 (not ((_ is ElementMatch!15601) lt!2259192)))))

(assert (=> b!5618687 (= e!3463724 e!3463720)))

(declare-fun b!5618688 () Bool)

(assert (=> b!5618688 (= e!3463723 (nullable!5633 lt!2259192))))

(declare-fun b!5618689 () Bool)

(assert (=> b!5618689 (= e!3463722 (not (= (head!11955 s!2326) (c!985623 lt!2259192))))))

(declare-fun b!5618690 () Bool)

(assert (=> b!5618690 (= e!3463721 (= lt!2259313 call!423013))))

(declare-fun b!5618691 () Bool)

(assert (=> b!5618691 (= e!3463723 (matchR!7786 (derivativeStep!4441 lt!2259192 (head!11955 s!2326)) (tail!11050 s!2326)))))

(declare-fun b!5618692 () Bool)

(assert (=> b!5618692 (= e!3463718 (= (head!11955 s!2326) (c!985623 lt!2259192)))))

(declare-fun b!5618693 () Bool)

(assert (=> b!5618693 (= e!3463719 e!3463722)))

(declare-fun res!2379986 () Bool)

(assert (=> b!5618693 (=> res!2379986 e!3463722)))

(assert (=> b!5618693 (= res!2379986 call!423013)))

(declare-fun b!5618694 () Bool)

(declare-fun res!2379989 () Bool)

(assert (=> b!5618694 (=> (not res!2379989) (not e!3463718))))

(assert (=> b!5618694 (= res!2379989 (isEmpty!34806 (tail!11050 s!2326)))))

(assert (= (and d!1775734 c!985860) b!5618688))

(assert (= (and d!1775734 (not c!985860)) b!5618691))

(assert (= (and d!1775734 c!985861) b!5618690))

(assert (= (and d!1775734 (not c!985861)) b!5618681))

(assert (= (and b!5618681 c!985862) b!5618684))

(assert (= (and b!5618681 (not c!985862)) b!5618687))

(assert (= (and b!5618687 (not res!2379987)) b!5618685))

(assert (= (and b!5618685 res!2379983) b!5618683))

(assert (= (and b!5618683 res!2379988) b!5618694))

(assert (= (and b!5618694 res!2379989) b!5618692))

(assert (= (and b!5618685 (not res!2379990)) b!5618686))

(assert (= (and b!5618686 res!2379985) b!5618693))

(assert (= (and b!5618693 (not res!2379986)) b!5618682))

(assert (= (and b!5618682 (not res!2379984)) b!5618689))

(assert (= (or b!5618690 b!5618683 b!5618693) bm!423008))

(assert (=> b!5618691 m!6592302))

(assert (=> b!5618691 m!6592302))

(declare-fun m!6592456 () Bool)

(assert (=> b!5618691 m!6592456))

(assert (=> b!5618691 m!6592306))

(assert (=> b!5618691 m!6592456))

(assert (=> b!5618691 m!6592306))

(declare-fun m!6592458 () Bool)

(assert (=> b!5618691 m!6592458))

(assert (=> b!5618689 m!6592302))

(assert (=> bm!423008 m!6592180))

(declare-fun m!6592460 () Bool)

(assert (=> b!5618688 m!6592460))

(assert (=> b!5618682 m!6592306))

(assert (=> b!5618682 m!6592306))

(assert (=> b!5618682 m!6592312))

(assert (=> d!1775734 m!6592180))

(assert (=> d!1775734 m!6592454))

(assert (=> b!5618694 m!6592306))

(assert (=> b!5618694 m!6592306))

(assert (=> b!5618694 m!6592312))

(assert (=> b!5618692 m!6592302))

(assert (=> b!5617892 d!1775734))

(declare-fun bs!1301267 () Bool)

(declare-fun b!5618698 () Bool)

(assert (= bs!1301267 (and b!5618698 b!5618370)))

(declare-fun lambda!301594 () Int)

(assert (=> bs!1301267 (not (= lambda!301594 lambda!301576))))

(declare-fun bs!1301268 () Bool)

(assert (= bs!1301268 (and b!5618698 d!1775708)))

(assert (=> bs!1301268 (not (= lambda!301594 lambda!301589))))

(declare-fun bs!1301269 () Bool)

(assert (= bs!1301269 (and b!5618698 d!1775706)))

(assert (=> bs!1301269 (not (= lambda!301594 lambda!301583))))

(declare-fun bs!1301270 () Bool)

(assert (= bs!1301270 (and b!5618698 b!5618363)))

(assert (=> bs!1301270 (= (and (= (reg!15930 lt!2259170) (reg!15930 r!7292)) (= lt!2259170 r!7292)) (= lambda!301594 lambda!301575))))

(declare-fun bs!1301271 () Bool)

(assert (= bs!1301271 (and b!5618698 b!5617897)))

(assert (=> bs!1301271 (not (= lambda!301594 lambda!301528))))

(assert (=> bs!1301271 (not (= lambda!301594 lambda!301529))))

(assert (=> bs!1301268 (not (= lambda!301594 lambda!301588))))

(assert (=> b!5618698 true))

(assert (=> b!5618698 true))

(declare-fun bs!1301272 () Bool)

(declare-fun b!5618705 () Bool)

(assert (= bs!1301272 (and b!5618705 b!5618370)))

(declare-fun lambda!301595 () Int)

(assert (=> bs!1301272 (= (and (= (regOne!31714 lt!2259170) (regOne!31714 r!7292)) (= (regTwo!31714 lt!2259170) (regTwo!31714 r!7292))) (= lambda!301595 lambda!301576))))

(declare-fun bs!1301273 () Bool)

(assert (= bs!1301273 (and b!5618705 d!1775708)))

(assert (=> bs!1301273 (= (and (= (regOne!31714 lt!2259170) (regOne!31714 r!7292)) (= (regTwo!31714 lt!2259170) (regTwo!31714 r!7292))) (= lambda!301595 lambda!301589))))

(declare-fun bs!1301274 () Bool)

(assert (= bs!1301274 (and b!5618705 d!1775706)))

(assert (=> bs!1301274 (not (= lambda!301595 lambda!301583))))

(declare-fun bs!1301275 () Bool)

(assert (= bs!1301275 (and b!5618705 b!5618363)))

(assert (=> bs!1301275 (not (= lambda!301595 lambda!301575))))

(declare-fun bs!1301276 () Bool)

(assert (= bs!1301276 (and b!5618705 b!5618698)))

(assert (=> bs!1301276 (not (= lambda!301595 lambda!301594))))

(declare-fun bs!1301277 () Bool)

(assert (= bs!1301277 (and b!5618705 b!5617897)))

(assert (=> bs!1301277 (not (= lambda!301595 lambda!301528))))

(assert (=> bs!1301277 (= (and (= (regOne!31714 lt!2259170) (regOne!31714 r!7292)) (= (regTwo!31714 lt!2259170) (regTwo!31714 r!7292))) (= lambda!301595 lambda!301529))))

(assert (=> bs!1301273 (not (= lambda!301595 lambda!301588))))

(assert (=> b!5618705 true))

(assert (=> b!5618705 true))

(declare-fun b!5618695 () Bool)

(declare-fun e!3463726 () Bool)

(assert (=> b!5618695 (= e!3463726 (= s!2326 (Cons!62980 (c!985623 lt!2259170) Nil!62980)))))

(declare-fun b!5618696 () Bool)

(declare-fun e!3463729 () Bool)

(declare-fun e!3463731 () Bool)

(assert (=> b!5618696 (= e!3463729 e!3463731)))

(declare-fun res!2379993 () Bool)

(assert (=> b!5618696 (= res!2379993 (matchRSpec!2704 (regOne!31715 lt!2259170) s!2326))))

(assert (=> b!5618696 (=> res!2379993 e!3463731)))

(declare-fun b!5618697 () Bool)

(declare-fun e!3463730 () Bool)

(declare-fun e!3463727 () Bool)

(assert (=> b!5618697 (= e!3463730 e!3463727)))

(declare-fun res!2379992 () Bool)

(assert (=> b!5618697 (= res!2379992 (not ((_ is EmptyLang!15601) lt!2259170)))))

(assert (=> b!5618697 (=> (not res!2379992) (not e!3463727))))

(declare-fun e!3463725 () Bool)

(declare-fun call!423015 () Bool)

(assert (=> b!5618698 (= e!3463725 call!423015)))

(declare-fun b!5618699 () Bool)

(declare-fun c!985863 () Bool)

(assert (=> b!5618699 (= c!985863 ((_ is Union!15601) lt!2259170))))

(assert (=> b!5618699 (= e!3463726 e!3463729)))

(declare-fun bm!423009 () Bool)

(declare-fun call!423014 () Bool)

(assert (=> bm!423009 (= call!423014 (isEmpty!34806 s!2326))))

(declare-fun c!985864 () Bool)

(declare-fun bm!423010 () Bool)

(assert (=> bm!423010 (= call!423015 (Exists!2701 (ite c!985864 lambda!301594 lambda!301595)))))

(declare-fun d!1775736 () Bool)

(declare-fun c!985865 () Bool)

(assert (=> d!1775736 (= c!985865 ((_ is EmptyExpr!15601) lt!2259170))))

(assert (=> d!1775736 (= (matchRSpec!2704 lt!2259170 s!2326) e!3463730)))

(declare-fun b!5618700 () Bool)

(assert (=> b!5618700 (= e!3463730 call!423014)))

(declare-fun b!5618701 () Bool)

(declare-fun c!985866 () Bool)

(assert (=> b!5618701 (= c!985866 ((_ is ElementMatch!15601) lt!2259170))))

(assert (=> b!5618701 (= e!3463727 e!3463726)))

(declare-fun b!5618702 () Bool)

(assert (=> b!5618702 (= e!3463731 (matchRSpec!2704 (regTwo!31715 lt!2259170) s!2326))))

(declare-fun b!5618703 () Bool)

(declare-fun res!2379991 () Bool)

(assert (=> b!5618703 (=> res!2379991 e!3463725)))

(assert (=> b!5618703 (= res!2379991 call!423014)))

(declare-fun e!3463728 () Bool)

(assert (=> b!5618703 (= e!3463728 e!3463725)))

(declare-fun b!5618704 () Bool)

(assert (=> b!5618704 (= e!3463729 e!3463728)))

(assert (=> b!5618704 (= c!985864 ((_ is Star!15601) lt!2259170))))

(assert (=> b!5618705 (= e!3463728 call!423015)))

(assert (= (and d!1775736 c!985865) b!5618700))

(assert (= (and d!1775736 (not c!985865)) b!5618697))

(assert (= (and b!5618697 res!2379992) b!5618701))

(assert (= (and b!5618701 c!985866) b!5618695))

(assert (= (and b!5618701 (not c!985866)) b!5618699))

(assert (= (and b!5618699 c!985863) b!5618696))

(assert (= (and b!5618699 (not c!985863)) b!5618704))

(assert (= (and b!5618696 (not res!2379993)) b!5618702))

(assert (= (and b!5618704 c!985864) b!5618703))

(assert (= (and b!5618704 (not c!985864)) b!5618705))

(assert (= (and b!5618703 (not res!2379991)) b!5618698))

(assert (= (or b!5618698 b!5618705) bm!423010))

(assert (= (or b!5618700 b!5618703) bm!423009))

(declare-fun m!6592462 () Bool)

(assert (=> b!5618696 m!6592462))

(assert (=> bm!423009 m!6592180))

(declare-fun m!6592464 () Bool)

(assert (=> bm!423010 m!6592464))

(declare-fun m!6592466 () Bool)

(assert (=> b!5618702 m!6592466))

(assert (=> b!5617892 d!1775736))

(declare-fun bs!1301278 () Bool)

(declare-fun d!1775738 () Bool)

(assert (= bs!1301278 (and d!1775738 d!1775684)))

(declare-fun lambda!301596 () Int)

(assert (=> bs!1301278 (= lambda!301596 lambda!301580)))

(declare-fun bs!1301279 () Bool)

(assert (= bs!1301279 (and d!1775738 d!1775728)))

(assert (=> bs!1301279 (= lambda!301596 lambda!301593)))

(declare-fun bs!1301280 () Bool)

(assert (= bs!1301280 (and d!1775738 d!1775574)))

(assert (=> bs!1301280 (= lambda!301596 lambda!301558)))

(declare-fun bs!1301281 () Bool)

(assert (= bs!1301281 (and d!1775738 d!1775580)))

(assert (=> bs!1301281 (= lambda!301596 lambda!301563)))

(declare-fun bs!1301282 () Bool)

(assert (= bs!1301282 (and d!1775738 d!1775716)))

(assert (=> bs!1301282 (= lambda!301596 lambda!301590)))

(declare-fun b!5618706 () Bool)

(declare-fun e!3463735 () Regex!15601)

(assert (=> b!5618706 (= e!3463735 (Concat!24446 (h!69426 lt!2259195) (generalisedConcat!1216 (t!376392 lt!2259195))))))

(declare-fun b!5618707 () Bool)

(declare-fun e!3463736 () Bool)

(assert (=> b!5618707 (= e!3463736 (isEmpty!34803 (t!376392 lt!2259195)))))

(declare-fun b!5618708 () Bool)

(declare-fun e!3463733 () Bool)

(declare-fun e!3463737 () Bool)

(assert (=> b!5618708 (= e!3463733 e!3463737)))

(declare-fun c!985870 () Bool)

(assert (=> b!5618708 (= c!985870 (isEmpty!34803 lt!2259195))))

(declare-fun b!5618709 () Bool)

(declare-fun lt!2259314 () Regex!15601)

(assert (=> b!5618709 (= e!3463737 (isEmptyExpr!1147 lt!2259314))))

(declare-fun b!5618710 () Bool)

(declare-fun e!3463734 () Bool)

(assert (=> b!5618710 (= e!3463734 (isConcat!670 lt!2259314))))

(assert (=> d!1775738 e!3463733))

(declare-fun res!2379995 () Bool)

(assert (=> d!1775738 (=> (not res!2379995) (not e!3463733))))

(assert (=> d!1775738 (= res!2379995 (validRegex!7337 lt!2259314))))

(declare-fun e!3463732 () Regex!15601)

(assert (=> d!1775738 (= lt!2259314 e!3463732)))

(declare-fun c!985867 () Bool)

(assert (=> d!1775738 (= c!985867 e!3463736)))

(declare-fun res!2379994 () Bool)

(assert (=> d!1775738 (=> (not res!2379994) (not e!3463736))))

(assert (=> d!1775738 (= res!2379994 ((_ is Cons!62978) lt!2259195))))

(assert (=> d!1775738 (forall!14760 lt!2259195 lambda!301596)))

(assert (=> d!1775738 (= (generalisedConcat!1216 lt!2259195) lt!2259314)))

(declare-fun b!5618711 () Bool)

(assert (=> b!5618711 (= e!3463732 e!3463735)))

(declare-fun c!985869 () Bool)

(assert (=> b!5618711 (= c!985869 ((_ is Cons!62978) lt!2259195))))

(declare-fun b!5618712 () Bool)

(assert (=> b!5618712 (= e!3463734 (= lt!2259314 (head!11956 lt!2259195)))))

(declare-fun b!5618713 () Bool)

(assert (=> b!5618713 (= e!3463737 e!3463734)))

(declare-fun c!985868 () Bool)

(assert (=> b!5618713 (= c!985868 (isEmpty!34803 (tail!11051 lt!2259195)))))

(declare-fun b!5618714 () Bool)

(assert (=> b!5618714 (= e!3463735 EmptyExpr!15601)))

(declare-fun b!5618715 () Bool)

(assert (=> b!5618715 (= e!3463732 (h!69426 lt!2259195))))

(assert (= (and d!1775738 res!2379994) b!5618707))

(assert (= (and d!1775738 c!985867) b!5618715))

(assert (= (and d!1775738 (not c!985867)) b!5618711))

(assert (= (and b!5618711 c!985869) b!5618706))

(assert (= (and b!5618711 (not c!985869)) b!5618714))

(assert (= (and d!1775738 res!2379995) b!5618708))

(assert (= (and b!5618708 c!985870) b!5618709))

(assert (= (and b!5618708 (not c!985870)) b!5618713))

(assert (= (and b!5618713 c!985868) b!5618712))

(assert (= (and b!5618713 (not c!985868)) b!5618710))

(declare-fun m!6592468 () Bool)

(assert (=> b!5618710 m!6592468))

(declare-fun m!6592470 () Bool)

(assert (=> b!5618708 m!6592470))

(declare-fun m!6592472 () Bool)

(assert (=> d!1775738 m!6592472))

(declare-fun m!6592474 () Bool)

(assert (=> d!1775738 m!6592474))

(declare-fun m!6592476 () Bool)

(assert (=> b!5618712 m!6592476))

(declare-fun m!6592478 () Bool)

(assert (=> b!5618709 m!6592478))

(declare-fun m!6592480 () Bool)

(assert (=> b!5618707 m!6592480))

(declare-fun m!6592482 () Bool)

(assert (=> b!5618706 m!6592482))

(declare-fun m!6592484 () Bool)

(assert (=> b!5618713 m!6592484))

(assert (=> b!5618713 m!6592484))

(declare-fun m!6592486 () Bool)

(assert (=> b!5618713 m!6592486))

(assert (=> b!5617892 d!1775738))

(declare-fun bs!1301283 () Bool)

(declare-fun b!5618719 () Bool)

(assert (= bs!1301283 (and b!5618719 b!5618370)))

(declare-fun lambda!301597 () Int)

(assert (=> bs!1301283 (not (= lambda!301597 lambda!301576))))

(declare-fun bs!1301284 () Bool)

(assert (= bs!1301284 (and b!5618719 d!1775708)))

(assert (=> bs!1301284 (not (= lambda!301597 lambda!301589))))

(declare-fun bs!1301285 () Bool)

(assert (= bs!1301285 (and b!5618719 d!1775706)))

(assert (=> bs!1301285 (not (= lambda!301597 lambda!301583))))

(declare-fun bs!1301286 () Bool)

(assert (= bs!1301286 (and b!5618719 b!5618363)))

(assert (=> bs!1301286 (= (and (= (reg!15930 lt!2259192) (reg!15930 r!7292)) (= lt!2259192 r!7292)) (= lambda!301597 lambda!301575))))

(declare-fun bs!1301287 () Bool)

(assert (= bs!1301287 (and b!5618719 b!5618698)))

(assert (=> bs!1301287 (= (and (= (reg!15930 lt!2259192) (reg!15930 lt!2259170)) (= lt!2259192 lt!2259170)) (= lambda!301597 lambda!301594))))

(declare-fun bs!1301288 () Bool)

(assert (= bs!1301288 (and b!5618719 b!5617897)))

(assert (=> bs!1301288 (not (= lambda!301597 lambda!301528))))

(assert (=> bs!1301288 (not (= lambda!301597 lambda!301529))))

(declare-fun bs!1301289 () Bool)

(assert (= bs!1301289 (and b!5618719 b!5618705)))

(assert (=> bs!1301289 (not (= lambda!301597 lambda!301595))))

(assert (=> bs!1301284 (not (= lambda!301597 lambda!301588))))

(assert (=> b!5618719 true))

(assert (=> b!5618719 true))

(declare-fun bs!1301290 () Bool)

(declare-fun b!5618726 () Bool)

(assert (= bs!1301290 (and b!5618726 b!5618370)))

(declare-fun lambda!301598 () Int)

(assert (=> bs!1301290 (= (and (= (regOne!31714 lt!2259192) (regOne!31714 r!7292)) (= (regTwo!31714 lt!2259192) (regTwo!31714 r!7292))) (= lambda!301598 lambda!301576))))

(declare-fun bs!1301291 () Bool)

(assert (= bs!1301291 (and b!5618726 d!1775708)))

(assert (=> bs!1301291 (= (and (= (regOne!31714 lt!2259192) (regOne!31714 r!7292)) (= (regTwo!31714 lt!2259192) (regTwo!31714 r!7292))) (= lambda!301598 lambda!301589))))

(declare-fun bs!1301292 () Bool)

(assert (= bs!1301292 (and b!5618726 b!5618719)))

(assert (=> bs!1301292 (not (= lambda!301598 lambda!301597))))

(declare-fun bs!1301293 () Bool)

(assert (= bs!1301293 (and b!5618726 d!1775706)))

(assert (=> bs!1301293 (not (= lambda!301598 lambda!301583))))

(declare-fun bs!1301294 () Bool)

(assert (= bs!1301294 (and b!5618726 b!5618363)))

(assert (=> bs!1301294 (not (= lambda!301598 lambda!301575))))

(declare-fun bs!1301295 () Bool)

(assert (= bs!1301295 (and b!5618726 b!5618698)))

(assert (=> bs!1301295 (not (= lambda!301598 lambda!301594))))

(declare-fun bs!1301296 () Bool)

(assert (= bs!1301296 (and b!5618726 b!5617897)))

(assert (=> bs!1301296 (not (= lambda!301598 lambda!301528))))

(assert (=> bs!1301296 (= (and (= (regOne!31714 lt!2259192) (regOne!31714 r!7292)) (= (regTwo!31714 lt!2259192) (regTwo!31714 r!7292))) (= lambda!301598 lambda!301529))))

(declare-fun bs!1301297 () Bool)

(assert (= bs!1301297 (and b!5618726 b!5618705)))

(assert (=> bs!1301297 (= (and (= (regOne!31714 lt!2259192) (regOne!31714 lt!2259170)) (= (regTwo!31714 lt!2259192) (regTwo!31714 lt!2259170))) (= lambda!301598 lambda!301595))))

(assert (=> bs!1301291 (not (= lambda!301598 lambda!301588))))

(assert (=> b!5618726 true))

(assert (=> b!5618726 true))

(declare-fun b!5618716 () Bool)

(declare-fun e!3463739 () Bool)

(assert (=> b!5618716 (= e!3463739 (= s!2326 (Cons!62980 (c!985623 lt!2259192) Nil!62980)))))

(declare-fun b!5618717 () Bool)

(declare-fun e!3463742 () Bool)

(declare-fun e!3463744 () Bool)

(assert (=> b!5618717 (= e!3463742 e!3463744)))

(declare-fun res!2379998 () Bool)

(assert (=> b!5618717 (= res!2379998 (matchRSpec!2704 (regOne!31715 lt!2259192) s!2326))))

(assert (=> b!5618717 (=> res!2379998 e!3463744)))

(declare-fun b!5618718 () Bool)

(declare-fun e!3463743 () Bool)

(declare-fun e!3463740 () Bool)

(assert (=> b!5618718 (= e!3463743 e!3463740)))

(declare-fun res!2379997 () Bool)

(assert (=> b!5618718 (= res!2379997 (not ((_ is EmptyLang!15601) lt!2259192)))))

(assert (=> b!5618718 (=> (not res!2379997) (not e!3463740))))

(declare-fun e!3463738 () Bool)

(declare-fun call!423017 () Bool)

(assert (=> b!5618719 (= e!3463738 call!423017)))

(declare-fun b!5618720 () Bool)

(declare-fun c!985871 () Bool)

(assert (=> b!5618720 (= c!985871 ((_ is Union!15601) lt!2259192))))

(assert (=> b!5618720 (= e!3463739 e!3463742)))

(declare-fun bm!423011 () Bool)

(declare-fun call!423016 () Bool)

(assert (=> bm!423011 (= call!423016 (isEmpty!34806 s!2326))))

(declare-fun c!985872 () Bool)

(declare-fun bm!423012 () Bool)

(assert (=> bm!423012 (= call!423017 (Exists!2701 (ite c!985872 lambda!301597 lambda!301598)))))

(declare-fun d!1775740 () Bool)

(declare-fun c!985873 () Bool)

(assert (=> d!1775740 (= c!985873 ((_ is EmptyExpr!15601) lt!2259192))))

(assert (=> d!1775740 (= (matchRSpec!2704 lt!2259192 s!2326) e!3463743)))

(declare-fun b!5618721 () Bool)

(assert (=> b!5618721 (= e!3463743 call!423016)))

(declare-fun b!5618722 () Bool)

(declare-fun c!985874 () Bool)

(assert (=> b!5618722 (= c!985874 ((_ is ElementMatch!15601) lt!2259192))))

(assert (=> b!5618722 (= e!3463740 e!3463739)))

(declare-fun b!5618723 () Bool)

(assert (=> b!5618723 (= e!3463744 (matchRSpec!2704 (regTwo!31715 lt!2259192) s!2326))))

(declare-fun b!5618724 () Bool)

(declare-fun res!2379996 () Bool)

(assert (=> b!5618724 (=> res!2379996 e!3463738)))

(assert (=> b!5618724 (= res!2379996 call!423016)))

(declare-fun e!3463741 () Bool)

(assert (=> b!5618724 (= e!3463741 e!3463738)))

(declare-fun b!5618725 () Bool)

(assert (=> b!5618725 (= e!3463742 e!3463741)))

(assert (=> b!5618725 (= c!985872 ((_ is Star!15601) lt!2259192))))

(assert (=> b!5618726 (= e!3463741 call!423017)))

(assert (= (and d!1775740 c!985873) b!5618721))

(assert (= (and d!1775740 (not c!985873)) b!5618718))

(assert (= (and b!5618718 res!2379997) b!5618722))

(assert (= (and b!5618722 c!985874) b!5618716))

(assert (= (and b!5618722 (not c!985874)) b!5618720))

(assert (= (and b!5618720 c!985871) b!5618717))

(assert (= (and b!5618720 (not c!985871)) b!5618725))

(assert (= (and b!5618717 (not res!2379998)) b!5618723))

(assert (= (and b!5618725 c!985872) b!5618724))

(assert (= (and b!5618725 (not c!985872)) b!5618726))

(assert (= (and b!5618724 (not res!2379996)) b!5618719))

(assert (= (or b!5618719 b!5618726) bm!423012))

(assert (= (or b!5618721 b!5618724) bm!423011))

(declare-fun m!6592488 () Bool)

(assert (=> b!5618717 m!6592488))

(assert (=> bm!423011 m!6592180))

(declare-fun m!6592490 () Bool)

(assert (=> bm!423012 m!6592490))

(declare-fun m!6592492 () Bool)

(assert (=> b!5618723 m!6592492))

(assert (=> b!5617892 d!1775740))

(declare-fun d!1775742 () Bool)

(assert (=> d!1775742 (= (matchR!7786 lt!2259170 s!2326) (matchZipper!1739 lt!2259176 s!2326))))

(declare-fun lt!2259317 () Unit!155900)

(declare-fun choose!42536 ((InoxSet Context!9970) List!63103 Regex!15601 List!63104) Unit!155900)

(assert (=> d!1775742 (= lt!2259317 (choose!42536 lt!2259176 lt!2259199 lt!2259170 s!2326))))

(assert (=> d!1775742 (validRegex!7337 lt!2259170)))

(assert (=> d!1775742 (= (theoremZipperRegexEquiv!617 lt!2259176 lt!2259199 lt!2259170 s!2326) lt!2259317)))

(declare-fun bs!1301298 () Bool)

(assert (= bs!1301298 d!1775742))

(assert (=> bs!1301298 m!6591822))

(assert (=> bs!1301298 m!6591810))

(declare-fun m!6592494 () Bool)

(assert (=> bs!1301298 m!6592494))

(declare-fun m!6592496 () Bool)

(assert (=> bs!1301298 m!6592496))

(assert (=> b!5617892 d!1775742))

(declare-fun b!5618727 () Bool)

(declare-fun e!3463748 () Bool)

(declare-fun e!3463751 () Bool)

(assert (=> b!5618727 (= e!3463748 e!3463751)))

(declare-fun c!985877 () Bool)

(assert (=> b!5618727 (= c!985877 ((_ is EmptyLang!15601) lt!2259170))))

(declare-fun b!5618728 () Bool)

(declare-fun res!2380000 () Bool)

(declare-fun e!3463749 () Bool)

(assert (=> b!5618728 (=> res!2380000 e!3463749)))

(assert (=> b!5618728 (= res!2380000 (not (isEmpty!34806 (tail!11050 s!2326))))))

(declare-fun bm!423013 () Bool)

(declare-fun call!423018 () Bool)

(assert (=> bm!423013 (= call!423018 (isEmpty!34806 s!2326))))

(declare-fun b!5618729 () Bool)

(declare-fun res!2380004 () Bool)

(declare-fun e!3463745 () Bool)

(assert (=> b!5618729 (=> (not res!2380004) (not e!3463745))))

(assert (=> b!5618729 (= res!2380004 (not call!423018))))

(declare-fun b!5618730 () Bool)

(declare-fun lt!2259318 () Bool)

(assert (=> b!5618730 (= e!3463751 (not lt!2259318))))

(declare-fun d!1775744 () Bool)

(assert (=> d!1775744 e!3463748))

(declare-fun c!985876 () Bool)

(assert (=> d!1775744 (= c!985876 ((_ is EmptyExpr!15601) lt!2259170))))

(declare-fun e!3463750 () Bool)

(assert (=> d!1775744 (= lt!2259318 e!3463750)))

(declare-fun c!985875 () Bool)

(assert (=> d!1775744 (= c!985875 (isEmpty!34806 s!2326))))

(assert (=> d!1775744 (validRegex!7337 lt!2259170)))

(assert (=> d!1775744 (= (matchR!7786 lt!2259170 s!2326) lt!2259318)))

(declare-fun b!5618731 () Bool)

(declare-fun res!2380006 () Bool)

(declare-fun e!3463747 () Bool)

(assert (=> b!5618731 (=> res!2380006 e!3463747)))

(assert (=> b!5618731 (= res!2380006 e!3463745)))

(declare-fun res!2379999 () Bool)

(assert (=> b!5618731 (=> (not res!2379999) (not e!3463745))))

(assert (=> b!5618731 (= res!2379999 lt!2259318)))

(declare-fun b!5618732 () Bool)

(declare-fun e!3463746 () Bool)

(assert (=> b!5618732 (= e!3463747 e!3463746)))

(declare-fun res!2380001 () Bool)

(assert (=> b!5618732 (=> (not res!2380001) (not e!3463746))))

(assert (=> b!5618732 (= res!2380001 (not lt!2259318))))

(declare-fun b!5618733 () Bool)

(declare-fun res!2380003 () Bool)

(assert (=> b!5618733 (=> res!2380003 e!3463747)))

(assert (=> b!5618733 (= res!2380003 (not ((_ is ElementMatch!15601) lt!2259170)))))

(assert (=> b!5618733 (= e!3463751 e!3463747)))

(declare-fun b!5618734 () Bool)

(assert (=> b!5618734 (= e!3463750 (nullable!5633 lt!2259170))))

(declare-fun b!5618735 () Bool)

(assert (=> b!5618735 (= e!3463749 (not (= (head!11955 s!2326) (c!985623 lt!2259170))))))

(declare-fun b!5618736 () Bool)

(assert (=> b!5618736 (= e!3463748 (= lt!2259318 call!423018))))

(declare-fun b!5618737 () Bool)

(assert (=> b!5618737 (= e!3463750 (matchR!7786 (derivativeStep!4441 lt!2259170 (head!11955 s!2326)) (tail!11050 s!2326)))))

(declare-fun b!5618738 () Bool)

(assert (=> b!5618738 (= e!3463745 (= (head!11955 s!2326) (c!985623 lt!2259170)))))

(declare-fun b!5618739 () Bool)

(assert (=> b!5618739 (= e!3463746 e!3463749)))

(declare-fun res!2380002 () Bool)

(assert (=> b!5618739 (=> res!2380002 e!3463749)))

(assert (=> b!5618739 (= res!2380002 call!423018)))

(declare-fun b!5618740 () Bool)

(declare-fun res!2380005 () Bool)

(assert (=> b!5618740 (=> (not res!2380005) (not e!3463745))))

(assert (=> b!5618740 (= res!2380005 (isEmpty!34806 (tail!11050 s!2326)))))

(assert (= (and d!1775744 c!985875) b!5618734))

(assert (= (and d!1775744 (not c!985875)) b!5618737))

(assert (= (and d!1775744 c!985876) b!5618736))

(assert (= (and d!1775744 (not c!985876)) b!5618727))

(assert (= (and b!5618727 c!985877) b!5618730))

(assert (= (and b!5618727 (not c!985877)) b!5618733))

(assert (= (and b!5618733 (not res!2380003)) b!5618731))

(assert (= (and b!5618731 res!2379999) b!5618729))

(assert (= (and b!5618729 res!2380004) b!5618740))

(assert (= (and b!5618740 res!2380005) b!5618738))

(assert (= (and b!5618731 (not res!2380006)) b!5618732))

(assert (= (and b!5618732 res!2380001) b!5618739))

(assert (= (and b!5618739 (not res!2380002)) b!5618728))

(assert (= (and b!5618728 (not res!2380000)) b!5618735))

(assert (= (or b!5618736 b!5618729 b!5618739) bm!423013))

(assert (=> b!5618737 m!6592302))

(assert (=> b!5618737 m!6592302))

(declare-fun m!6592498 () Bool)

(assert (=> b!5618737 m!6592498))

(assert (=> b!5618737 m!6592306))

(assert (=> b!5618737 m!6592498))

(assert (=> b!5618737 m!6592306))

(declare-fun m!6592500 () Bool)

(assert (=> b!5618737 m!6592500))

(assert (=> b!5618735 m!6592302))

(assert (=> bm!423013 m!6592180))

(declare-fun m!6592502 () Bool)

(assert (=> b!5618734 m!6592502))

(assert (=> b!5618728 m!6592306))

(assert (=> b!5618728 m!6592306))

(assert (=> b!5618728 m!6592312))

(assert (=> d!1775744 m!6592180))

(assert (=> d!1775744 m!6592496))

(assert (=> b!5618740 m!6592306))

(assert (=> b!5618740 m!6592306))

(assert (=> b!5618740 m!6592312))

(assert (=> b!5618738 m!6592302))

(assert (=> b!5617892 d!1775744))

(declare-fun d!1775746 () Bool)

(assert (=> d!1775746 (= (matchR!7786 lt!2259192 s!2326) (matchZipper!1739 lt!2259182 s!2326))))

(declare-fun lt!2259319 () Unit!155900)

(assert (=> d!1775746 (= lt!2259319 (choose!42536 lt!2259182 lt!2259168 lt!2259192 s!2326))))

(assert (=> d!1775746 (validRegex!7337 lt!2259192)))

(assert (=> d!1775746 (= (theoremZipperRegexEquiv!617 lt!2259182 lt!2259168 lt!2259192 s!2326) lt!2259319)))

(declare-fun bs!1301299 () Bool)

(assert (= bs!1301299 d!1775746))

(assert (=> bs!1301299 m!6591818))

(assert (=> bs!1301299 m!6591790))

(declare-fun m!6592504 () Bool)

(assert (=> bs!1301299 m!6592504))

(assert (=> bs!1301299 m!6592454))

(assert (=> b!5617892 d!1775746))

(declare-fun d!1775748 () Bool)

(assert (=> d!1775748 (= (matchR!7786 lt!2259170 s!2326) (matchRSpec!2704 lt!2259170 s!2326))))

(declare-fun lt!2259320 () Unit!155900)

(assert (=> d!1775748 (= lt!2259320 (choose!42526 lt!2259170 s!2326))))

(assert (=> d!1775748 (validRegex!7337 lt!2259170)))

(assert (=> d!1775748 (= (mainMatchTheorem!2704 lt!2259170 s!2326) lt!2259320)))

(declare-fun bs!1301300 () Bool)

(assert (= bs!1301300 d!1775748))

(assert (=> bs!1301300 m!6591822))

(assert (=> bs!1301300 m!6591816))

(declare-fun m!6592506 () Bool)

(assert (=> bs!1301300 m!6592506))

(assert (=> bs!1301300 m!6592496))

(assert (=> b!5617892 d!1775748))

(declare-fun bs!1301301 () Bool)

(declare-fun d!1775750 () Bool)

(assert (= bs!1301301 (and d!1775750 d!1775684)))

(declare-fun lambda!301599 () Int)

(assert (=> bs!1301301 (= lambda!301599 lambda!301580)))

(declare-fun bs!1301302 () Bool)

(assert (= bs!1301302 (and d!1775750 d!1775728)))

(assert (=> bs!1301302 (= lambda!301599 lambda!301593)))

(declare-fun bs!1301303 () Bool)

(assert (= bs!1301303 (and d!1775750 d!1775738)))

(assert (=> bs!1301303 (= lambda!301599 lambda!301596)))

(declare-fun bs!1301304 () Bool)

(assert (= bs!1301304 (and d!1775750 d!1775574)))

(assert (=> bs!1301304 (= lambda!301599 lambda!301558)))

(declare-fun bs!1301305 () Bool)

(assert (= bs!1301305 (and d!1775750 d!1775580)))

(assert (=> bs!1301305 (= lambda!301599 lambda!301563)))

(declare-fun bs!1301306 () Bool)

(assert (= bs!1301306 (and d!1775750 d!1775716)))

(assert (=> bs!1301306 (= lambda!301599 lambda!301590)))

(declare-fun b!5618741 () Bool)

(declare-fun e!3463755 () Regex!15601)

(assert (=> b!5618741 (= e!3463755 (Concat!24446 (h!69426 lt!2259186) (generalisedConcat!1216 (t!376392 lt!2259186))))))

(declare-fun b!5618742 () Bool)

(declare-fun e!3463756 () Bool)

(assert (=> b!5618742 (= e!3463756 (isEmpty!34803 (t!376392 lt!2259186)))))

(declare-fun b!5618743 () Bool)

(declare-fun e!3463753 () Bool)

(declare-fun e!3463757 () Bool)

(assert (=> b!5618743 (= e!3463753 e!3463757)))

(declare-fun c!985881 () Bool)

(assert (=> b!5618743 (= c!985881 (isEmpty!34803 lt!2259186))))

(declare-fun b!5618744 () Bool)

(declare-fun lt!2259321 () Regex!15601)

(assert (=> b!5618744 (= e!3463757 (isEmptyExpr!1147 lt!2259321))))

(declare-fun b!5618745 () Bool)

(declare-fun e!3463754 () Bool)

(assert (=> b!5618745 (= e!3463754 (isConcat!670 lt!2259321))))

(assert (=> d!1775750 e!3463753))

(declare-fun res!2380008 () Bool)

(assert (=> d!1775750 (=> (not res!2380008) (not e!3463753))))

(assert (=> d!1775750 (= res!2380008 (validRegex!7337 lt!2259321))))

(declare-fun e!3463752 () Regex!15601)

(assert (=> d!1775750 (= lt!2259321 e!3463752)))

(declare-fun c!985878 () Bool)

(assert (=> d!1775750 (= c!985878 e!3463756)))

(declare-fun res!2380007 () Bool)

(assert (=> d!1775750 (=> (not res!2380007) (not e!3463756))))

(assert (=> d!1775750 (= res!2380007 ((_ is Cons!62978) lt!2259186))))

(assert (=> d!1775750 (forall!14760 lt!2259186 lambda!301599)))

(assert (=> d!1775750 (= (generalisedConcat!1216 lt!2259186) lt!2259321)))

(declare-fun b!5618746 () Bool)

(assert (=> b!5618746 (= e!3463752 e!3463755)))

(declare-fun c!985880 () Bool)

(assert (=> b!5618746 (= c!985880 ((_ is Cons!62978) lt!2259186))))

(declare-fun b!5618747 () Bool)

(assert (=> b!5618747 (= e!3463754 (= lt!2259321 (head!11956 lt!2259186)))))

(declare-fun b!5618748 () Bool)

(assert (=> b!5618748 (= e!3463757 e!3463754)))

(declare-fun c!985879 () Bool)

(assert (=> b!5618748 (= c!985879 (isEmpty!34803 (tail!11051 lt!2259186)))))

(declare-fun b!5618749 () Bool)

(assert (=> b!5618749 (= e!3463755 EmptyExpr!15601)))

(declare-fun b!5618750 () Bool)

(assert (=> b!5618750 (= e!3463752 (h!69426 lt!2259186))))

(assert (= (and d!1775750 res!2380007) b!5618742))

(assert (= (and d!1775750 c!985878) b!5618750))

(assert (= (and d!1775750 (not c!985878)) b!5618746))

(assert (= (and b!5618746 c!985880) b!5618741))

(assert (= (and b!5618746 (not c!985880)) b!5618749))

(assert (= (and d!1775750 res!2380008) b!5618743))

(assert (= (and b!5618743 c!985881) b!5618744))

(assert (= (and b!5618743 (not c!985881)) b!5618748))

(assert (= (and b!5618748 c!985879) b!5618747))

(assert (= (and b!5618748 (not c!985879)) b!5618745))

(declare-fun m!6592508 () Bool)

(assert (=> b!5618745 m!6592508))

(declare-fun m!6592510 () Bool)

(assert (=> b!5618743 m!6592510))

(declare-fun m!6592512 () Bool)

(assert (=> d!1775750 m!6592512))

(declare-fun m!6592514 () Bool)

(assert (=> d!1775750 m!6592514))

(declare-fun m!6592516 () Bool)

(assert (=> b!5618747 m!6592516))

(declare-fun m!6592518 () Bool)

(assert (=> b!5618744 m!6592518))

(declare-fun m!6592520 () Bool)

(assert (=> b!5618742 m!6592520))

(declare-fun m!6592522 () Bool)

(assert (=> b!5618741 m!6592522))

(declare-fun m!6592524 () Bool)

(assert (=> b!5618748 m!6592524))

(assert (=> b!5618748 m!6592524))

(declare-fun m!6592526 () Bool)

(assert (=> b!5618748 m!6592526))

(assert (=> b!5617892 d!1775750))

(declare-fun d!1775752 () Bool)

(declare-fun e!3463760 () Bool)

(assert (=> d!1775752 e!3463760))

(declare-fun res!2380011 () Bool)

(assert (=> d!1775752 (=> (not res!2380011) (not e!3463760))))

(declare-fun lt!2259324 () List!63103)

(declare-fun noDuplicate!1569 (List!63103) Bool)

(assert (=> d!1775752 (= res!2380011 (noDuplicate!1569 lt!2259324))))

(declare-fun choose!42537 ((InoxSet Context!9970)) List!63103)

(assert (=> d!1775752 (= lt!2259324 (choose!42537 z!1189))))

(assert (=> d!1775752 (= (toList!9385 z!1189) lt!2259324)))

(declare-fun b!5618753 () Bool)

(declare-fun content!11378 (List!63103) (InoxSet Context!9970))

(assert (=> b!5618753 (= e!3463760 (= (content!11378 lt!2259324) z!1189))))

(assert (= (and d!1775752 res!2380011) b!5618753))

(declare-fun m!6592528 () Bool)

(assert (=> d!1775752 m!6592528))

(declare-fun m!6592530 () Bool)

(assert (=> d!1775752 m!6592530))

(declare-fun m!6592532 () Bool)

(assert (=> b!5618753 m!6592532))

(assert (=> b!5617870 d!1775752))

(declare-fun d!1775754 () Bool)

(declare-fun c!985882 () Bool)

(assert (=> d!1775754 (= c!985882 (isEmpty!34806 s!2326))))

(declare-fun e!3463761 () Bool)

(assert (=> d!1775754 (= (matchZipper!1739 z!1189 s!2326) e!3463761)))

(declare-fun b!5618754 () Bool)

(assert (=> b!5618754 (= e!3463761 (nullableZipper!1588 z!1189))))

(declare-fun b!5618755 () Bool)

(assert (=> b!5618755 (= e!3463761 (matchZipper!1739 (derivationStepZipper!1692 z!1189 (head!11955 s!2326)) (tail!11050 s!2326)))))

(assert (= (and d!1775754 c!985882) b!5618754))

(assert (= (and d!1775754 (not c!985882)) b!5618755))

(assert (=> d!1775754 m!6592180))

(declare-fun m!6592534 () Bool)

(assert (=> b!5618754 m!6592534))

(assert (=> b!5618755 m!6592302))

(assert (=> b!5618755 m!6592302))

(declare-fun m!6592536 () Bool)

(assert (=> b!5618755 m!6592536))

(assert (=> b!5618755 m!6592306))

(assert (=> b!5618755 m!6592536))

(assert (=> b!5618755 m!6592306))

(declare-fun m!6592538 () Bool)

(assert (=> b!5618755 m!6592538))

(assert (=> b!5617891 d!1775754))

(declare-fun b!5618756 () Bool)

(declare-fun e!3463764 () (InoxSet Context!9970))

(declare-fun e!3463763 () (InoxSet Context!9970))

(assert (=> b!5618756 (= e!3463764 e!3463763)))

(declare-fun c!985884 () Bool)

(assert (=> b!5618756 (= c!985884 ((_ is Cons!62978) (exprs!5485 lt!2259163)))))

(declare-fun call!423019 () (InoxSet Context!9970))

(declare-fun b!5618757 () Bool)

(assert (=> b!5618757 (= e!3463764 ((_ map or) call!423019 (derivationStepZipperUp!869 (Context!9971 (t!376392 (exprs!5485 lt!2259163))) (h!69428 s!2326))))))

(declare-fun bm!423014 () Bool)

(assert (=> bm!423014 (= call!423019 (derivationStepZipperDown!943 (h!69426 (exprs!5485 lt!2259163)) (Context!9971 (t!376392 (exprs!5485 lt!2259163))) (h!69428 s!2326)))))

(declare-fun b!5618759 () Bool)

(assert (=> b!5618759 (= e!3463763 ((as const (Array Context!9970 Bool)) false))))

(declare-fun b!5618760 () Bool)

(declare-fun e!3463762 () Bool)

(assert (=> b!5618760 (= e!3463762 (nullable!5633 (h!69426 (exprs!5485 lt!2259163))))))

(declare-fun b!5618758 () Bool)

(assert (=> b!5618758 (= e!3463763 call!423019)))

(declare-fun d!1775756 () Bool)

(declare-fun c!985883 () Bool)

(assert (=> d!1775756 (= c!985883 e!3463762)))

(declare-fun res!2380012 () Bool)

(assert (=> d!1775756 (=> (not res!2380012) (not e!3463762))))

(assert (=> d!1775756 (= res!2380012 ((_ is Cons!62978) (exprs!5485 lt!2259163)))))

(assert (=> d!1775756 (= (derivationStepZipperUp!869 lt!2259163 (h!69428 s!2326)) e!3463764)))

(assert (= (and d!1775756 res!2380012) b!5618760))

(assert (= (and d!1775756 c!985883) b!5618757))

(assert (= (and d!1775756 (not c!985883)) b!5618756))

(assert (= (and b!5618756 c!985884) b!5618758))

(assert (= (and b!5618756 (not c!985884)) b!5618759))

(assert (= (or b!5618757 b!5618758) bm!423014))

(declare-fun m!6592540 () Bool)

(assert (=> b!5618757 m!6592540))

(declare-fun m!6592542 () Bool)

(assert (=> bm!423014 m!6592542))

(declare-fun m!6592544 () Bool)

(assert (=> b!5618760 m!6592544))

(assert (=> b!5617891 d!1775756))

(declare-fun d!1775758 () Bool)

(assert (=> d!1775758 (= (flatMap!1214 lt!2259182 lambda!301530) (dynLambda!24631 lambda!301530 lt!2259163))))

(declare-fun lt!2259325 () Unit!155900)

(assert (=> d!1775758 (= lt!2259325 (choose!42528 lt!2259182 lt!2259163 lambda!301530))))

(assert (=> d!1775758 (= lt!2259182 (store ((as const (Array Context!9970 Bool)) false) lt!2259163 true))))

(assert (=> d!1775758 (= (lemmaFlatMapOnSingletonSet!746 lt!2259182 lt!2259163 lambda!301530) lt!2259325)))

(declare-fun b_lambda!212657 () Bool)

(assert (=> (not b_lambda!212657) (not d!1775758)))

(declare-fun bs!1301307 () Bool)

(assert (= bs!1301307 d!1775758))

(assert (=> bs!1301307 m!6591784))

(declare-fun m!6592546 () Bool)

(assert (=> bs!1301307 m!6592546))

(declare-fun m!6592548 () Bool)

(assert (=> bs!1301307 m!6592548))

(assert (=> bs!1301307 m!6591782))

(assert (=> b!5617891 d!1775758))

(declare-fun d!1775760 () Bool)

(assert (=> d!1775760 (= (flatMap!1214 lt!2259176 lambda!301530) (choose!42529 lt!2259176 lambda!301530))))

(declare-fun bs!1301308 () Bool)

(assert (= bs!1301308 d!1775760))

(declare-fun m!6592550 () Bool)

(assert (=> bs!1301308 m!6592550))

(assert (=> b!5617891 d!1775760))

(declare-fun d!1775762 () Bool)

(declare-fun c!985885 () Bool)

(assert (=> d!1775762 (= c!985885 (isEmpty!34806 s!2326))))

(declare-fun e!3463765 () Bool)

(assert (=> d!1775762 (= (matchZipper!1739 lt!2259182 s!2326) e!3463765)))

(declare-fun b!5618761 () Bool)

(assert (=> b!5618761 (= e!3463765 (nullableZipper!1588 lt!2259182))))

(declare-fun b!5618762 () Bool)

(assert (=> b!5618762 (= e!3463765 (matchZipper!1739 (derivationStepZipper!1692 lt!2259182 (head!11955 s!2326)) (tail!11050 s!2326)))))

(assert (= (and d!1775762 c!985885) b!5618761))

(assert (= (and d!1775762 (not c!985885)) b!5618762))

(assert (=> d!1775762 m!6592180))

(declare-fun m!6592552 () Bool)

(assert (=> b!5618761 m!6592552))

(assert (=> b!5618762 m!6592302))

(assert (=> b!5618762 m!6592302))

(declare-fun m!6592554 () Bool)

(assert (=> b!5618762 m!6592554))

(assert (=> b!5618762 m!6592306))

(assert (=> b!5618762 m!6592554))

(assert (=> b!5618762 m!6592306))

(declare-fun m!6592556 () Bool)

(assert (=> b!5618762 m!6592556))

(assert (=> b!5617891 d!1775762))

(declare-fun d!1775764 () Bool)

(assert (=> d!1775764 (= (flatMap!1214 lt!2259182 lambda!301530) (choose!42529 lt!2259182 lambda!301530))))

(declare-fun bs!1301309 () Bool)

(assert (= bs!1301309 d!1775764))

(declare-fun m!6592558 () Bool)

(assert (=> bs!1301309 m!6592558))

(assert (=> b!5617891 d!1775764))

(declare-fun b!5618763 () Bool)

(declare-fun e!3463768 () (InoxSet Context!9970))

(declare-fun e!3463767 () (InoxSet Context!9970))

(assert (=> b!5618763 (= e!3463768 e!3463767)))

(declare-fun c!985887 () Bool)

(assert (=> b!5618763 (= c!985887 ((_ is Cons!62978) (exprs!5485 lt!2259171)))))

(declare-fun b!5618764 () Bool)

(declare-fun call!423020 () (InoxSet Context!9970))

(assert (=> b!5618764 (= e!3463768 ((_ map or) call!423020 (derivationStepZipperUp!869 (Context!9971 (t!376392 (exprs!5485 lt!2259171))) (h!69428 s!2326))))))

(declare-fun bm!423015 () Bool)

(assert (=> bm!423015 (= call!423020 (derivationStepZipperDown!943 (h!69426 (exprs!5485 lt!2259171)) (Context!9971 (t!376392 (exprs!5485 lt!2259171))) (h!69428 s!2326)))))

(declare-fun b!5618766 () Bool)

(assert (=> b!5618766 (= e!3463767 ((as const (Array Context!9970 Bool)) false))))

(declare-fun b!5618767 () Bool)

(declare-fun e!3463766 () Bool)

(assert (=> b!5618767 (= e!3463766 (nullable!5633 (h!69426 (exprs!5485 lt!2259171))))))

(declare-fun b!5618765 () Bool)

(assert (=> b!5618765 (= e!3463767 call!423020)))

(declare-fun d!1775766 () Bool)

(declare-fun c!985886 () Bool)

(assert (=> d!1775766 (= c!985886 e!3463766)))

(declare-fun res!2380013 () Bool)

(assert (=> d!1775766 (=> (not res!2380013) (not e!3463766))))

(assert (=> d!1775766 (= res!2380013 ((_ is Cons!62978) (exprs!5485 lt!2259171)))))

(assert (=> d!1775766 (= (derivationStepZipperUp!869 lt!2259171 (h!69428 s!2326)) e!3463768)))

(assert (= (and d!1775766 res!2380013) b!5618767))

(assert (= (and d!1775766 c!985886) b!5618764))

(assert (= (and d!1775766 (not c!985886)) b!5618763))

(assert (= (and b!5618763 c!985887) b!5618765))

(assert (= (and b!5618763 (not c!985887)) b!5618766))

(assert (= (or b!5618764 b!5618765) bm!423015))

(declare-fun m!6592560 () Bool)

(assert (=> b!5618764 m!6592560))

(declare-fun m!6592562 () Bool)

(assert (=> bm!423015 m!6592562))

(declare-fun m!6592564 () Bool)

(assert (=> b!5618767 m!6592564))

(assert (=> b!5617891 d!1775766))

(declare-fun d!1775768 () Bool)

(assert (=> d!1775768 (= (nullable!5633 (regOne!31715 (regOne!31714 r!7292))) (nullableFct!1733 (regOne!31715 (regOne!31714 r!7292))))))

(declare-fun bs!1301310 () Bool)

(assert (= bs!1301310 d!1775768))

(declare-fun m!6592566 () Bool)

(assert (=> bs!1301310 m!6592566))

(assert (=> b!5617891 d!1775768))

(declare-fun d!1775770 () Bool)

(assert (=> d!1775770 (= (flatMap!1214 lt!2259176 lambda!301530) (dynLambda!24631 lambda!301530 lt!2259171))))

(declare-fun lt!2259326 () Unit!155900)

(assert (=> d!1775770 (= lt!2259326 (choose!42528 lt!2259176 lt!2259171 lambda!301530))))

(assert (=> d!1775770 (= lt!2259176 (store ((as const (Array Context!9970 Bool)) false) lt!2259171 true))))

(assert (=> d!1775770 (= (lemmaFlatMapOnSingletonSet!746 lt!2259176 lt!2259171 lambda!301530) lt!2259326)))

(declare-fun b_lambda!212659 () Bool)

(assert (=> (not b_lambda!212659) (not d!1775770)))

(declare-fun bs!1301311 () Bool)

(assert (= bs!1301311 d!1775770))

(assert (=> bs!1301311 m!6591776))

(declare-fun m!6592568 () Bool)

(assert (=> bs!1301311 m!6592568))

(declare-fun m!6592570 () Bool)

(assert (=> bs!1301311 m!6592570))

(assert (=> bs!1301311 m!6591788))

(assert (=> b!5617891 d!1775770))

(declare-fun d!1775772 () Bool)

(assert (=> d!1775772 (= (nullable!5633 (regTwo!31715 (regOne!31714 r!7292))) (nullableFct!1733 (regTwo!31715 (regOne!31714 r!7292))))))

(declare-fun bs!1301312 () Bool)

(assert (= bs!1301312 d!1775772))

(declare-fun m!6592572 () Bool)

(assert (=> bs!1301312 m!6592572))

(assert (=> b!5617891 d!1775772))

(declare-fun bs!1301313 () Bool)

(declare-fun d!1775774 () Bool)

(assert (= bs!1301313 (and d!1775774 d!1775750)))

(declare-fun lambda!301600 () Int)

(assert (=> bs!1301313 (= lambda!301600 lambda!301599)))

(declare-fun bs!1301314 () Bool)

(assert (= bs!1301314 (and d!1775774 d!1775684)))

(assert (=> bs!1301314 (= lambda!301600 lambda!301580)))

(declare-fun bs!1301315 () Bool)

(assert (= bs!1301315 (and d!1775774 d!1775728)))

(assert (=> bs!1301315 (= lambda!301600 lambda!301593)))

(declare-fun bs!1301316 () Bool)

(assert (= bs!1301316 (and d!1775774 d!1775738)))

(assert (=> bs!1301316 (= lambda!301600 lambda!301596)))

(declare-fun bs!1301317 () Bool)

(assert (= bs!1301317 (and d!1775774 d!1775574)))

(assert (=> bs!1301317 (= lambda!301600 lambda!301558)))

(declare-fun bs!1301318 () Bool)

(assert (= bs!1301318 (and d!1775774 d!1775580)))

(assert (=> bs!1301318 (= lambda!301600 lambda!301563)))

(declare-fun bs!1301319 () Bool)

(assert (= bs!1301319 (and d!1775774 d!1775716)))

(assert (=> bs!1301319 (= lambda!301600 lambda!301590)))

(declare-fun b!5618768 () Bool)

(declare-fun e!3463772 () Regex!15601)

(assert (=> b!5618768 (= e!3463772 (Concat!24446 (h!69426 (t!376392 (exprs!5485 (h!69427 zl!343)))) (generalisedConcat!1216 (t!376392 (t!376392 (exprs!5485 (h!69427 zl!343)))))))))

(declare-fun b!5618769 () Bool)

(declare-fun e!3463773 () Bool)

(assert (=> b!5618769 (= e!3463773 (isEmpty!34803 (t!376392 (t!376392 (exprs!5485 (h!69427 zl!343))))))))

(declare-fun b!5618770 () Bool)

(declare-fun e!3463770 () Bool)

(declare-fun e!3463774 () Bool)

(assert (=> b!5618770 (= e!3463770 e!3463774)))

(declare-fun c!985891 () Bool)

(assert (=> b!5618770 (= c!985891 (isEmpty!34803 (t!376392 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun b!5618771 () Bool)

(declare-fun lt!2259327 () Regex!15601)

(assert (=> b!5618771 (= e!3463774 (isEmptyExpr!1147 lt!2259327))))

(declare-fun b!5618772 () Bool)

(declare-fun e!3463771 () Bool)

(assert (=> b!5618772 (= e!3463771 (isConcat!670 lt!2259327))))

(assert (=> d!1775774 e!3463770))

(declare-fun res!2380015 () Bool)

(assert (=> d!1775774 (=> (not res!2380015) (not e!3463770))))

(assert (=> d!1775774 (= res!2380015 (validRegex!7337 lt!2259327))))

(declare-fun e!3463769 () Regex!15601)

(assert (=> d!1775774 (= lt!2259327 e!3463769)))

(declare-fun c!985888 () Bool)

(assert (=> d!1775774 (= c!985888 e!3463773)))

(declare-fun res!2380014 () Bool)

(assert (=> d!1775774 (=> (not res!2380014) (not e!3463773))))

(assert (=> d!1775774 (= res!2380014 ((_ is Cons!62978) (t!376392 (exprs!5485 (h!69427 zl!343)))))))

(assert (=> d!1775774 (forall!14760 (t!376392 (exprs!5485 (h!69427 zl!343))) lambda!301600)))

(assert (=> d!1775774 (= (generalisedConcat!1216 (t!376392 (exprs!5485 (h!69427 zl!343)))) lt!2259327)))

(declare-fun b!5618773 () Bool)

(assert (=> b!5618773 (= e!3463769 e!3463772)))

(declare-fun c!985890 () Bool)

(assert (=> b!5618773 (= c!985890 ((_ is Cons!62978) (t!376392 (exprs!5485 (h!69427 zl!343)))))))

(declare-fun b!5618774 () Bool)

(assert (=> b!5618774 (= e!3463771 (= lt!2259327 (head!11956 (t!376392 (exprs!5485 (h!69427 zl!343))))))))

(declare-fun b!5618775 () Bool)

(assert (=> b!5618775 (= e!3463774 e!3463771)))

(declare-fun c!985889 () Bool)

(assert (=> b!5618775 (= c!985889 (isEmpty!34803 (tail!11051 (t!376392 (exprs!5485 (h!69427 zl!343))))))))

(declare-fun b!5618776 () Bool)

(assert (=> b!5618776 (= e!3463772 EmptyExpr!15601)))

(declare-fun b!5618777 () Bool)

(assert (=> b!5618777 (= e!3463769 (h!69426 (t!376392 (exprs!5485 (h!69427 zl!343)))))))

(assert (= (and d!1775774 res!2380014) b!5618769))

(assert (= (and d!1775774 c!985888) b!5618777))

(assert (= (and d!1775774 (not c!985888)) b!5618773))

(assert (= (and b!5618773 c!985890) b!5618768))

(assert (= (and b!5618773 (not c!985890)) b!5618776))

(assert (= (and d!1775774 res!2380015) b!5618770))

(assert (= (and b!5618770 c!985891) b!5618771))

(assert (= (and b!5618770 (not c!985891)) b!5618775))

(assert (= (and b!5618775 c!985889) b!5618774))

(assert (= (and b!5618775 (not c!985889)) b!5618772))

(declare-fun m!6592574 () Bool)

(assert (=> b!5618772 m!6592574))

(assert (=> b!5618770 m!6591844))

(declare-fun m!6592576 () Bool)

(assert (=> d!1775774 m!6592576))

(declare-fun m!6592578 () Bool)

(assert (=> d!1775774 m!6592578))

(declare-fun m!6592580 () Bool)

(assert (=> b!5618774 m!6592580))

(declare-fun m!6592582 () Bool)

(assert (=> b!5618771 m!6592582))

(declare-fun m!6592584 () Bool)

(assert (=> b!5618769 m!6592584))

(declare-fun m!6592586 () Bool)

(assert (=> b!5618768 m!6592586))

(declare-fun m!6592588 () Bool)

(assert (=> b!5618775 m!6592588))

(assert (=> b!5618775 m!6592588))

(declare-fun m!6592590 () Bool)

(assert (=> b!5618775 m!6592590))

(assert (=> b!5617904 d!1775774))

(assert (=> b!5617884 d!1775730))

(declare-fun e!3463775 () Bool)

(declare-fun d!1775776 () Bool)

(assert (=> d!1775776 (= (matchZipper!1739 ((_ map or) lt!2259189 lt!2259187) (t!376394 s!2326)) e!3463775)))

(declare-fun res!2380016 () Bool)

(assert (=> d!1775776 (=> res!2380016 e!3463775)))

(assert (=> d!1775776 (= res!2380016 (matchZipper!1739 lt!2259189 (t!376394 s!2326)))))

(declare-fun lt!2259328 () Unit!155900)

(assert (=> d!1775776 (= lt!2259328 (choose!42525 lt!2259189 lt!2259187 (t!376394 s!2326)))))

(assert (=> d!1775776 (= (lemmaZipperConcatMatchesSameAsBothZippers!626 lt!2259189 lt!2259187 (t!376394 s!2326)) lt!2259328)))

(declare-fun b!5618778 () Bool)

(assert (=> b!5618778 (= e!3463775 (matchZipper!1739 lt!2259187 (t!376394 s!2326)))))

(assert (= (and d!1775776 (not res!2380016)) b!5618778))

(assert (=> d!1775776 m!6591722))

(assert (=> d!1775776 m!6591720))

(declare-fun m!6592592 () Bool)

(assert (=> d!1775776 m!6592592))

(assert (=> b!5618778 m!6591798))

(assert (=> b!5617883 d!1775776))

(assert (=> b!5617883 d!1775718))

(declare-fun d!1775778 () Bool)

(declare-fun c!985892 () Bool)

(assert (=> d!1775778 (= c!985892 (isEmpty!34806 (t!376394 s!2326)))))

(declare-fun e!3463776 () Bool)

(assert (=> d!1775778 (= (matchZipper!1739 ((_ map or) lt!2259189 lt!2259187) (t!376394 s!2326)) e!3463776)))

(declare-fun b!5618779 () Bool)

(assert (=> b!5618779 (= e!3463776 (nullableZipper!1588 ((_ map or) lt!2259189 lt!2259187)))))

(declare-fun b!5618780 () Bool)

(assert (=> b!5618780 (= e!3463776 (matchZipper!1739 (derivationStepZipper!1692 ((_ map or) lt!2259189 lt!2259187) (head!11955 (t!376394 s!2326))) (tail!11050 (t!376394 s!2326))))))

(assert (= (and d!1775778 c!985892) b!5618779))

(assert (= (and d!1775778 (not c!985892)) b!5618780))

(assert (=> d!1775778 m!6591990))

(declare-fun m!6592594 () Bool)

(assert (=> b!5618779 m!6592594))

(assert (=> b!5618780 m!6591994))

(assert (=> b!5618780 m!6591994))

(declare-fun m!6592596 () Bool)

(assert (=> b!5618780 m!6592596))

(assert (=> b!5618780 m!6591998))

(assert (=> b!5618780 m!6592596))

(assert (=> b!5618780 m!6591998))

(declare-fun m!6592598 () Bool)

(assert (=> b!5618780 m!6592598))

(assert (=> b!5617883 d!1775778))

(declare-fun b!5618799 () Bool)

(declare-fun res!2380031 () Bool)

(declare-fun e!3463792 () Bool)

(assert (=> b!5618799 (=> res!2380031 e!3463792)))

(assert (=> b!5618799 (= res!2380031 (not ((_ is Concat!24446) r!7292)))))

(declare-fun e!3463793 () Bool)

(assert (=> b!5618799 (= e!3463793 e!3463792)))

(declare-fun b!5618800 () Bool)

(declare-fun e!3463795 () Bool)

(assert (=> b!5618800 (= e!3463792 e!3463795)))

(declare-fun res!2380029 () Bool)

(assert (=> b!5618800 (=> (not res!2380029) (not e!3463795))))

(declare-fun call!423027 () Bool)

(assert (=> b!5618800 (= res!2380029 call!423027)))

(declare-fun bm!423022 () Bool)

(declare-fun call!423028 () Bool)

(assert (=> bm!423022 (= call!423027 call!423028)))

(declare-fun b!5618802 () Bool)

(declare-fun res!2380030 () Bool)

(declare-fun e!3463797 () Bool)

(assert (=> b!5618802 (=> (not res!2380030) (not e!3463797))))

(assert (=> b!5618802 (= res!2380030 call!423027)))

(assert (=> b!5618802 (= e!3463793 e!3463797)))

(declare-fun bm!423023 () Bool)

(declare-fun call!423029 () Bool)

(declare-fun c!985898 () Bool)

(assert (=> bm!423023 (= call!423029 (validRegex!7337 (ite c!985898 (regTwo!31715 r!7292) (regTwo!31714 r!7292))))))

(declare-fun b!5618803 () Bool)

(assert (=> b!5618803 (= e!3463795 call!423029)))

(declare-fun b!5618804 () Bool)

(declare-fun e!3463796 () Bool)

(declare-fun e!3463791 () Bool)

(assert (=> b!5618804 (= e!3463796 e!3463791)))

(declare-fun res!2380027 () Bool)

(assert (=> b!5618804 (= res!2380027 (not (nullable!5633 (reg!15930 r!7292))))))

(assert (=> b!5618804 (=> (not res!2380027) (not e!3463791))))

(declare-fun d!1775780 () Bool)

(declare-fun res!2380028 () Bool)

(declare-fun e!3463794 () Bool)

(assert (=> d!1775780 (=> res!2380028 e!3463794)))

(assert (=> d!1775780 (= res!2380028 ((_ is ElementMatch!15601) r!7292))))

(assert (=> d!1775780 (= (validRegex!7337 r!7292) e!3463794)))

(declare-fun b!5618801 () Bool)

(assert (=> b!5618801 (= e!3463797 call!423029)))

(declare-fun b!5618805 () Bool)

(assert (=> b!5618805 (= e!3463791 call!423028)))

(declare-fun c!985897 () Bool)

(declare-fun bm!423024 () Bool)

(assert (=> bm!423024 (= call!423028 (validRegex!7337 (ite c!985897 (reg!15930 r!7292) (ite c!985898 (regOne!31715 r!7292) (regOne!31714 r!7292)))))))

(declare-fun b!5618806 () Bool)

(assert (=> b!5618806 (= e!3463796 e!3463793)))

(assert (=> b!5618806 (= c!985898 ((_ is Union!15601) r!7292))))

(declare-fun b!5618807 () Bool)

(assert (=> b!5618807 (= e!3463794 e!3463796)))

(assert (=> b!5618807 (= c!985897 ((_ is Star!15601) r!7292))))

(assert (= (and d!1775780 (not res!2380028)) b!5618807))

(assert (= (and b!5618807 c!985897) b!5618804))

(assert (= (and b!5618807 (not c!985897)) b!5618806))

(assert (= (and b!5618804 res!2380027) b!5618805))

(assert (= (and b!5618806 c!985898) b!5618802))

(assert (= (and b!5618806 (not c!985898)) b!5618799))

(assert (= (and b!5618802 res!2380030) b!5618801))

(assert (= (and b!5618799 (not res!2380031)) b!5618800))

(assert (= (and b!5618800 res!2380029) b!5618803))

(assert (= (or b!5618801 b!5618803) bm!423023))

(assert (= (or b!5618802 b!5618800) bm!423022))

(assert (= (or b!5618805 bm!423022) bm!423024))

(declare-fun m!6592600 () Bool)

(assert (=> bm!423023 m!6592600))

(declare-fun m!6592602 () Bool)

(assert (=> b!5618804 m!6592602))

(declare-fun m!6592604 () Bool)

(assert (=> bm!423024 m!6592604))

(assert (=> start!582156 d!1775780))

(declare-fun d!1775782 () Bool)

(assert (=> d!1775782 (= (isEmpty!34803 (t!376392 (exprs!5485 (h!69427 zl!343)))) ((_ is Nil!62978) (t!376392 (exprs!5485 (h!69427 zl!343)))))))

(assert (=> b!5617907 d!1775782))

(declare-fun d!1775784 () Bool)

(declare-fun e!3463798 () Bool)

(assert (=> d!1775784 (= (matchZipper!1739 ((_ map or) lt!2259193 lt!2259187) (t!376394 s!2326)) e!3463798)))

(declare-fun res!2380032 () Bool)

(assert (=> d!1775784 (=> res!2380032 e!3463798)))

(assert (=> d!1775784 (= res!2380032 (matchZipper!1739 lt!2259193 (t!376394 s!2326)))))

(declare-fun lt!2259329 () Unit!155900)

(assert (=> d!1775784 (= lt!2259329 (choose!42525 lt!2259193 lt!2259187 (t!376394 s!2326)))))

(assert (=> d!1775784 (= (lemmaZipperConcatMatchesSameAsBothZippers!626 lt!2259193 lt!2259187 (t!376394 s!2326)) lt!2259329)))

(declare-fun b!5618808 () Bool)

(assert (=> b!5618808 (= e!3463798 (matchZipper!1739 lt!2259187 (t!376394 s!2326)))))

(assert (= (and d!1775784 (not res!2380032)) b!5618808))

(assert (=> d!1775784 m!6591814))

(assert (=> d!1775784 m!6591800))

(declare-fun m!6592606 () Bool)

(assert (=> d!1775784 m!6592606))

(assert (=> b!5618808 m!6591798))

(assert (=> b!5617887 d!1775784))

(assert (=> b!5617887 d!1775558))

(declare-fun d!1775786 () Bool)

(declare-fun c!985899 () Bool)

(assert (=> d!1775786 (= c!985899 (isEmpty!34806 (t!376394 s!2326)))))

(declare-fun e!3463799 () Bool)

(assert (=> d!1775786 (= (matchZipper!1739 ((_ map or) lt!2259193 lt!2259187) (t!376394 s!2326)) e!3463799)))

(declare-fun b!5618809 () Bool)

(assert (=> b!5618809 (= e!3463799 (nullableZipper!1588 ((_ map or) lt!2259193 lt!2259187)))))

(declare-fun b!5618810 () Bool)

(assert (=> b!5618810 (= e!3463799 (matchZipper!1739 (derivationStepZipper!1692 ((_ map or) lt!2259193 lt!2259187) (head!11955 (t!376394 s!2326))) (tail!11050 (t!376394 s!2326))))))

(assert (= (and d!1775786 c!985899) b!5618809))

(assert (= (and d!1775786 (not c!985899)) b!5618810))

(assert (=> d!1775786 m!6591990))

(declare-fun m!6592608 () Bool)

(assert (=> b!5618809 m!6592608))

(assert (=> b!5618810 m!6591994))

(assert (=> b!5618810 m!6591994))

(declare-fun m!6592610 () Bool)

(assert (=> b!5618810 m!6592610))

(assert (=> b!5618810 m!6591998))

(assert (=> b!5618810 m!6592610))

(assert (=> b!5618810 m!6591998))

(declare-fun m!6592612 () Bool)

(assert (=> b!5618810 m!6592612))

(assert (=> b!5617887 d!1775786))

(declare-fun c!985902 () Bool)

(declare-fun call!423033 () List!63102)

(declare-fun bm!423025 () Bool)

(declare-fun call!423034 () (InoxSet Context!9970))

(assert (=> bm!423025 (= call!423034 (derivationStepZipperDown!943 (ite c!985902 (regOne!31715 (regTwo!31715 (regOne!31714 r!7292))) (regOne!31714 (regTwo!31715 (regOne!31714 r!7292)))) (ite c!985902 lt!2259184 (Context!9971 call!423033)) (h!69428 s!2326)))))

(declare-fun b!5618812 () Bool)

(declare-fun e!3463805 () (InoxSet Context!9970))

(declare-fun call!423035 () (InoxSet Context!9970))

(assert (=> b!5618812 (= e!3463805 ((_ map or) call!423034 call!423035))))

(declare-fun b!5618813 () Bool)

(declare-fun e!3463803 () (InoxSet Context!9970))

(declare-fun call!423030 () (InoxSet Context!9970))

(assert (=> b!5618813 (= e!3463803 call!423030)))

(declare-fun c!985904 () Bool)

(declare-fun c!985900 () Bool)

(declare-fun call!423031 () List!63102)

(declare-fun bm!423026 () Bool)

(assert (=> bm!423026 (= call!423035 (derivationStepZipperDown!943 (ite c!985902 (regTwo!31715 (regTwo!31715 (regOne!31714 r!7292))) (ite c!985904 (regTwo!31714 (regTwo!31715 (regOne!31714 r!7292))) (ite c!985900 (regOne!31714 (regTwo!31715 (regOne!31714 r!7292))) (reg!15930 (regTwo!31715 (regOne!31714 r!7292)))))) (ite (or c!985902 c!985904) lt!2259184 (Context!9971 call!423031)) (h!69428 s!2326)))))

(declare-fun b!5618814 () Bool)

(declare-fun e!3463800 () (InoxSet Context!9970))

(declare-fun call!423032 () (InoxSet Context!9970))

(assert (=> b!5618814 (= e!3463800 ((_ map or) call!423034 call!423032))))

(declare-fun b!5618815 () Bool)

(declare-fun e!3463802 () (InoxSet Context!9970))

(assert (=> b!5618815 (= e!3463802 e!3463805)))

(assert (=> b!5618815 (= c!985902 ((_ is Union!15601) (regTwo!31715 (regOne!31714 r!7292))))))

(declare-fun bm!423027 () Bool)

(assert (=> bm!423027 (= call!423032 call!423035)))

(declare-fun b!5618816 () Bool)

(declare-fun e!3463804 () Bool)

(assert (=> b!5618816 (= c!985904 e!3463804)))

(declare-fun res!2380033 () Bool)

(assert (=> b!5618816 (=> (not res!2380033) (not e!3463804))))

(assert (=> b!5618816 (= res!2380033 ((_ is Concat!24446) (regTwo!31715 (regOne!31714 r!7292))))))

(assert (=> b!5618816 (= e!3463805 e!3463800)))

(declare-fun b!5618811 () Bool)

(assert (=> b!5618811 (= e!3463804 (nullable!5633 (regOne!31714 (regTwo!31715 (regOne!31714 r!7292)))))))

(declare-fun d!1775788 () Bool)

(declare-fun c!985901 () Bool)

(assert (=> d!1775788 (= c!985901 (and ((_ is ElementMatch!15601) (regTwo!31715 (regOne!31714 r!7292))) (= (c!985623 (regTwo!31715 (regOne!31714 r!7292))) (h!69428 s!2326))))))

(assert (=> d!1775788 (= (derivationStepZipperDown!943 (regTwo!31715 (regOne!31714 r!7292)) lt!2259184 (h!69428 s!2326)) e!3463802)))

(declare-fun b!5618817 () Bool)

(declare-fun e!3463801 () (InoxSet Context!9970))

(assert (=> b!5618817 (= e!3463801 ((as const (Array Context!9970 Bool)) false))))

(declare-fun b!5618818 () Bool)

(assert (=> b!5618818 (= e!3463801 call!423030)))

(declare-fun bm!423028 () Bool)

(assert (=> bm!423028 (= call!423031 call!423033)))

(declare-fun b!5618819 () Bool)

(assert (=> b!5618819 (= e!3463802 (store ((as const (Array Context!9970 Bool)) false) lt!2259184 true))))

(declare-fun bm!423029 () Bool)

(assert (=> bm!423029 (= call!423033 ($colon$colon!1656 (exprs!5485 lt!2259184) (ite (or c!985904 c!985900) (regTwo!31714 (regTwo!31715 (regOne!31714 r!7292))) (regTwo!31715 (regOne!31714 r!7292)))))))

(declare-fun bm!423030 () Bool)

(assert (=> bm!423030 (= call!423030 call!423032)))

(declare-fun b!5618820 () Bool)

(declare-fun c!985903 () Bool)

(assert (=> b!5618820 (= c!985903 ((_ is Star!15601) (regTwo!31715 (regOne!31714 r!7292))))))

(assert (=> b!5618820 (= e!3463803 e!3463801)))

(declare-fun b!5618821 () Bool)

(assert (=> b!5618821 (= e!3463800 e!3463803)))

(assert (=> b!5618821 (= c!985900 ((_ is Concat!24446) (regTwo!31715 (regOne!31714 r!7292))))))

(assert (= (and d!1775788 c!985901) b!5618819))

(assert (= (and d!1775788 (not c!985901)) b!5618815))

(assert (= (and b!5618815 c!985902) b!5618812))

(assert (= (and b!5618815 (not c!985902)) b!5618816))

(assert (= (and b!5618816 res!2380033) b!5618811))

(assert (= (and b!5618816 c!985904) b!5618814))

(assert (= (and b!5618816 (not c!985904)) b!5618821))

(assert (= (and b!5618821 c!985900) b!5618813))

(assert (= (and b!5618821 (not c!985900)) b!5618820))

(assert (= (and b!5618820 c!985903) b!5618818))

(assert (= (and b!5618820 (not c!985903)) b!5618817))

(assert (= (or b!5618813 b!5618818) bm!423028))

(assert (= (or b!5618813 b!5618818) bm!423030))

(assert (= (or b!5618814 bm!423028) bm!423029))

(assert (= (or b!5618814 bm!423030) bm!423027))

(assert (= (or b!5618812 bm!423027) bm!423026))

(assert (= (or b!5618812 b!5618814) bm!423025))

(declare-fun m!6592614 () Bool)

(assert (=> bm!423025 m!6592614))

(declare-fun m!6592616 () Bool)

(assert (=> bm!423026 m!6592616))

(declare-fun m!6592618 () Bool)

(assert (=> bm!423029 m!6592618))

(assert (=> b!5618819 m!6592330))

(declare-fun m!6592620 () Bool)

(assert (=> b!5618811 m!6592620))

(assert (=> b!5617906 d!1775788))

(declare-fun c!985907 () Bool)

(declare-fun bm!423031 () Bool)

(declare-fun call!423040 () (InoxSet Context!9970))

(declare-fun call!423039 () List!63102)

(assert (=> bm!423031 (= call!423040 (derivationStepZipperDown!943 (ite c!985907 (regOne!31715 (regOne!31715 (regOne!31714 r!7292))) (regOne!31714 (regOne!31715 (regOne!31714 r!7292)))) (ite c!985907 lt!2259184 (Context!9971 call!423039)) (h!69428 s!2326)))))

(declare-fun b!5618823 () Bool)

(declare-fun e!3463811 () (InoxSet Context!9970))

(declare-fun call!423041 () (InoxSet Context!9970))

(assert (=> b!5618823 (= e!3463811 ((_ map or) call!423040 call!423041))))

(declare-fun b!5618824 () Bool)

(declare-fun e!3463809 () (InoxSet Context!9970))

(declare-fun call!423036 () (InoxSet Context!9970))

(assert (=> b!5618824 (= e!3463809 call!423036)))

(declare-fun bm!423032 () Bool)

(declare-fun call!423037 () List!63102)

(declare-fun c!985905 () Bool)

(declare-fun c!985909 () Bool)

(assert (=> bm!423032 (= call!423041 (derivationStepZipperDown!943 (ite c!985907 (regTwo!31715 (regOne!31715 (regOne!31714 r!7292))) (ite c!985909 (regTwo!31714 (regOne!31715 (regOne!31714 r!7292))) (ite c!985905 (regOne!31714 (regOne!31715 (regOne!31714 r!7292))) (reg!15930 (regOne!31715 (regOne!31714 r!7292)))))) (ite (or c!985907 c!985909) lt!2259184 (Context!9971 call!423037)) (h!69428 s!2326)))))

(declare-fun b!5618825 () Bool)

(declare-fun e!3463806 () (InoxSet Context!9970))

(declare-fun call!423038 () (InoxSet Context!9970))

(assert (=> b!5618825 (= e!3463806 ((_ map or) call!423040 call!423038))))

(declare-fun b!5618826 () Bool)

(declare-fun e!3463808 () (InoxSet Context!9970))

(assert (=> b!5618826 (= e!3463808 e!3463811)))

(assert (=> b!5618826 (= c!985907 ((_ is Union!15601) (regOne!31715 (regOne!31714 r!7292))))))

(declare-fun bm!423033 () Bool)

(assert (=> bm!423033 (= call!423038 call!423041)))

(declare-fun b!5618827 () Bool)

(declare-fun e!3463810 () Bool)

(assert (=> b!5618827 (= c!985909 e!3463810)))

(declare-fun res!2380034 () Bool)

(assert (=> b!5618827 (=> (not res!2380034) (not e!3463810))))

(assert (=> b!5618827 (= res!2380034 ((_ is Concat!24446) (regOne!31715 (regOne!31714 r!7292))))))

(assert (=> b!5618827 (= e!3463811 e!3463806)))

(declare-fun b!5618822 () Bool)

(assert (=> b!5618822 (= e!3463810 (nullable!5633 (regOne!31714 (regOne!31715 (regOne!31714 r!7292)))))))

(declare-fun d!1775790 () Bool)

(declare-fun c!985906 () Bool)

(assert (=> d!1775790 (= c!985906 (and ((_ is ElementMatch!15601) (regOne!31715 (regOne!31714 r!7292))) (= (c!985623 (regOne!31715 (regOne!31714 r!7292))) (h!69428 s!2326))))))

(assert (=> d!1775790 (= (derivationStepZipperDown!943 (regOne!31715 (regOne!31714 r!7292)) lt!2259184 (h!69428 s!2326)) e!3463808)))

(declare-fun b!5618828 () Bool)

(declare-fun e!3463807 () (InoxSet Context!9970))

(assert (=> b!5618828 (= e!3463807 ((as const (Array Context!9970 Bool)) false))))

(declare-fun b!5618829 () Bool)

(assert (=> b!5618829 (= e!3463807 call!423036)))

(declare-fun bm!423034 () Bool)

(assert (=> bm!423034 (= call!423037 call!423039)))

(declare-fun b!5618830 () Bool)

(assert (=> b!5618830 (= e!3463808 (store ((as const (Array Context!9970 Bool)) false) lt!2259184 true))))

(declare-fun bm!423035 () Bool)

(assert (=> bm!423035 (= call!423039 ($colon$colon!1656 (exprs!5485 lt!2259184) (ite (or c!985909 c!985905) (regTwo!31714 (regOne!31715 (regOne!31714 r!7292))) (regOne!31715 (regOne!31714 r!7292)))))))

(declare-fun bm!423036 () Bool)

(assert (=> bm!423036 (= call!423036 call!423038)))

(declare-fun b!5618831 () Bool)

(declare-fun c!985908 () Bool)

(assert (=> b!5618831 (= c!985908 ((_ is Star!15601) (regOne!31715 (regOne!31714 r!7292))))))

(assert (=> b!5618831 (= e!3463809 e!3463807)))

(declare-fun b!5618832 () Bool)

(assert (=> b!5618832 (= e!3463806 e!3463809)))

(assert (=> b!5618832 (= c!985905 ((_ is Concat!24446) (regOne!31715 (regOne!31714 r!7292))))))

(assert (= (and d!1775790 c!985906) b!5618830))

(assert (= (and d!1775790 (not c!985906)) b!5618826))

(assert (= (and b!5618826 c!985907) b!5618823))

(assert (= (and b!5618826 (not c!985907)) b!5618827))

(assert (= (and b!5618827 res!2380034) b!5618822))

(assert (= (and b!5618827 c!985909) b!5618825))

(assert (= (and b!5618827 (not c!985909)) b!5618832))

(assert (= (and b!5618832 c!985905) b!5618824))

(assert (= (and b!5618832 (not c!985905)) b!5618831))

(assert (= (and b!5618831 c!985908) b!5618829))

(assert (= (and b!5618831 (not c!985908)) b!5618828))

(assert (= (or b!5618824 b!5618829) bm!423034))

(assert (= (or b!5618824 b!5618829) bm!423036))

(assert (= (or b!5618825 bm!423034) bm!423035))

(assert (= (or b!5618825 bm!423036) bm!423033))

(assert (= (or b!5618823 bm!423033) bm!423032))

(assert (= (or b!5618823 b!5618825) bm!423031))

(declare-fun m!6592622 () Bool)

(assert (=> bm!423031 m!6592622))

(declare-fun m!6592624 () Bool)

(assert (=> bm!423032 m!6592624))

(declare-fun m!6592626 () Bool)

(assert (=> bm!423035 m!6592626))

(assert (=> b!5618830 m!6592330))

(declare-fun m!6592628 () Bool)

(assert (=> b!5618822 m!6592628))

(assert (=> b!5617906 d!1775790))

(declare-fun d!1775792 () Bool)

(declare-fun lt!2259332 () Regex!15601)

(assert (=> d!1775792 (validRegex!7337 lt!2259332)))

(assert (=> d!1775792 (= lt!2259332 (generalisedUnion!1464 (unfocusZipperList!1029 zl!343)))))

(assert (=> d!1775792 (= (unfocusZipper!1343 zl!343) lt!2259332)))

(declare-fun bs!1301320 () Bool)

(assert (= bs!1301320 d!1775792))

(declare-fun m!6592630 () Bool)

(assert (=> bs!1301320 m!6592630))

(assert (=> bs!1301320 m!6591806))

(assert (=> bs!1301320 m!6591806))

(assert (=> bs!1301320 m!6591808))

(assert (=> b!5617886 d!1775792))

(declare-fun b!5618837 () Bool)

(declare-fun e!3463814 () Bool)

(declare-fun tp!1556338 () Bool)

(declare-fun tp!1556339 () Bool)

(assert (=> b!5618837 (= e!3463814 (and tp!1556338 tp!1556339))))

(assert (=> b!5617895 (= tp!1556270 e!3463814)))

(assert (= (and b!5617895 ((_ is Cons!62978) (exprs!5485 setElem!37472))) b!5618837))

(declare-fun b!5618838 () Bool)

(declare-fun e!3463815 () Bool)

(declare-fun tp!1556340 () Bool)

(declare-fun tp!1556341 () Bool)

(assert (=> b!5618838 (= e!3463815 (and tp!1556340 tp!1556341))))

(assert (=> b!5617885 (= tp!1556273 e!3463815)))

(assert (= (and b!5617885 ((_ is Cons!62978) (exprs!5485 (h!69427 zl!343)))) b!5618838))

(declare-fun condSetEmpty!37478 () Bool)

(assert (=> setNonEmpty!37472 (= condSetEmpty!37478 (= setRest!37472 ((as const (Array Context!9970 Bool)) false)))))

(declare-fun setRes!37478 () Bool)

(assert (=> setNonEmpty!37472 (= tp!1556269 setRes!37478)))

(declare-fun setIsEmpty!37478 () Bool)

(assert (=> setIsEmpty!37478 setRes!37478))

(declare-fun tp!1556347 () Bool)

(declare-fun e!3463818 () Bool)

(declare-fun setElem!37478 () Context!9970)

(declare-fun setNonEmpty!37478 () Bool)

(assert (=> setNonEmpty!37478 (= setRes!37478 (and tp!1556347 (inv!82249 setElem!37478) e!3463818))))

(declare-fun setRest!37478 () (InoxSet Context!9970))

(assert (=> setNonEmpty!37478 (= setRest!37472 ((_ map or) (store ((as const (Array Context!9970 Bool)) false) setElem!37478 true) setRest!37478))))

(declare-fun b!5618843 () Bool)

(declare-fun tp!1556346 () Bool)

(assert (=> b!5618843 (= e!3463818 tp!1556346)))

(assert (= (and setNonEmpty!37472 condSetEmpty!37478) setIsEmpty!37478))

(assert (= (and setNonEmpty!37472 (not condSetEmpty!37478)) setNonEmpty!37478))

(assert (= setNonEmpty!37478 b!5618843))

(declare-fun m!6592632 () Bool)

(assert (=> setNonEmpty!37478 m!6592632))

(declare-fun b!5618848 () Bool)

(declare-fun e!3463821 () Bool)

(declare-fun tp!1556350 () Bool)

(assert (=> b!5618848 (= e!3463821 (and tp_is_empty!40455 tp!1556350))))

(assert (=> b!5617873 (= tp!1556271 e!3463821)))

(assert (= (and b!5617873 ((_ is Cons!62980) (t!376394 s!2326))) b!5618848))

(declare-fun b!5618859 () Bool)

(declare-fun e!3463824 () Bool)

(assert (=> b!5618859 (= e!3463824 tp_is_empty!40455)))

(declare-fun b!5618860 () Bool)

(declare-fun tp!1556364 () Bool)

(declare-fun tp!1556361 () Bool)

(assert (=> b!5618860 (= e!3463824 (and tp!1556364 tp!1556361))))

(declare-fun b!5618862 () Bool)

(declare-fun tp!1556363 () Bool)

(declare-fun tp!1556365 () Bool)

(assert (=> b!5618862 (= e!3463824 (and tp!1556363 tp!1556365))))

(assert (=> b!5617894 (= tp!1556266 e!3463824)))

(declare-fun b!5618861 () Bool)

(declare-fun tp!1556362 () Bool)

(assert (=> b!5618861 (= e!3463824 tp!1556362)))

(assert (= (and b!5617894 ((_ is ElementMatch!15601) (reg!15930 r!7292))) b!5618859))

(assert (= (and b!5617894 ((_ is Concat!24446) (reg!15930 r!7292))) b!5618860))

(assert (= (and b!5617894 ((_ is Star!15601) (reg!15930 r!7292))) b!5618861))

(assert (= (and b!5617894 ((_ is Union!15601) (reg!15930 r!7292))) b!5618862))

(declare-fun b!5618863 () Bool)

(declare-fun e!3463825 () Bool)

(assert (=> b!5618863 (= e!3463825 tp_is_empty!40455)))

(declare-fun b!5618864 () Bool)

(declare-fun tp!1556369 () Bool)

(declare-fun tp!1556366 () Bool)

(assert (=> b!5618864 (= e!3463825 (and tp!1556369 tp!1556366))))

(declare-fun b!5618866 () Bool)

(declare-fun tp!1556368 () Bool)

(declare-fun tp!1556370 () Bool)

(assert (=> b!5618866 (= e!3463825 (and tp!1556368 tp!1556370))))

(assert (=> b!5617888 (= tp!1556267 e!3463825)))

(declare-fun b!5618865 () Bool)

(declare-fun tp!1556367 () Bool)

(assert (=> b!5618865 (= e!3463825 tp!1556367)))

(assert (= (and b!5617888 ((_ is ElementMatch!15601) (regOne!31715 r!7292))) b!5618863))

(assert (= (and b!5617888 ((_ is Concat!24446) (regOne!31715 r!7292))) b!5618864))

(assert (= (and b!5617888 ((_ is Star!15601) (regOne!31715 r!7292))) b!5618865))

(assert (= (and b!5617888 ((_ is Union!15601) (regOne!31715 r!7292))) b!5618866))

(declare-fun b!5618867 () Bool)

(declare-fun e!3463826 () Bool)

(assert (=> b!5618867 (= e!3463826 tp_is_empty!40455)))

(declare-fun b!5618868 () Bool)

(declare-fun tp!1556374 () Bool)

(declare-fun tp!1556371 () Bool)

(assert (=> b!5618868 (= e!3463826 (and tp!1556374 tp!1556371))))

(declare-fun b!5618870 () Bool)

(declare-fun tp!1556373 () Bool)

(declare-fun tp!1556375 () Bool)

(assert (=> b!5618870 (= e!3463826 (and tp!1556373 tp!1556375))))

(assert (=> b!5617888 (= tp!1556274 e!3463826)))

(declare-fun b!5618869 () Bool)

(declare-fun tp!1556372 () Bool)

(assert (=> b!5618869 (= e!3463826 tp!1556372)))

(assert (= (and b!5617888 ((_ is ElementMatch!15601) (regTwo!31715 r!7292))) b!5618867))

(assert (= (and b!5617888 ((_ is Concat!24446) (regTwo!31715 r!7292))) b!5618868))

(assert (= (and b!5617888 ((_ is Star!15601) (regTwo!31715 r!7292))) b!5618869))

(assert (= (and b!5617888 ((_ is Union!15601) (regTwo!31715 r!7292))) b!5618870))

(declare-fun b!5618871 () Bool)

(declare-fun e!3463827 () Bool)

(assert (=> b!5618871 (= e!3463827 tp_is_empty!40455)))

(declare-fun b!5618872 () Bool)

(declare-fun tp!1556379 () Bool)

(declare-fun tp!1556376 () Bool)

(assert (=> b!5618872 (= e!3463827 (and tp!1556379 tp!1556376))))

(declare-fun b!5618874 () Bool)

(declare-fun tp!1556378 () Bool)

(declare-fun tp!1556380 () Bool)

(assert (=> b!5618874 (= e!3463827 (and tp!1556378 tp!1556380))))

(assert (=> b!5617896 (= tp!1556268 e!3463827)))

(declare-fun b!5618873 () Bool)

(declare-fun tp!1556377 () Bool)

(assert (=> b!5618873 (= e!3463827 tp!1556377)))

(assert (= (and b!5617896 ((_ is ElementMatch!15601) (regOne!31714 r!7292))) b!5618871))

(assert (= (and b!5617896 ((_ is Concat!24446) (regOne!31714 r!7292))) b!5618872))

(assert (= (and b!5617896 ((_ is Star!15601) (regOne!31714 r!7292))) b!5618873))

(assert (= (and b!5617896 ((_ is Union!15601) (regOne!31714 r!7292))) b!5618874))

(declare-fun b!5618875 () Bool)

(declare-fun e!3463828 () Bool)

(assert (=> b!5618875 (= e!3463828 tp_is_empty!40455)))

(declare-fun b!5618876 () Bool)

(declare-fun tp!1556384 () Bool)

(declare-fun tp!1556381 () Bool)

(assert (=> b!5618876 (= e!3463828 (and tp!1556384 tp!1556381))))

(declare-fun b!5618878 () Bool)

(declare-fun tp!1556383 () Bool)

(declare-fun tp!1556385 () Bool)

(assert (=> b!5618878 (= e!3463828 (and tp!1556383 tp!1556385))))

(assert (=> b!5617896 (= tp!1556272 e!3463828)))

(declare-fun b!5618877 () Bool)

(declare-fun tp!1556382 () Bool)

(assert (=> b!5618877 (= e!3463828 tp!1556382)))

(assert (= (and b!5617896 ((_ is ElementMatch!15601) (regTwo!31714 r!7292))) b!5618875))

(assert (= (and b!5617896 ((_ is Concat!24446) (regTwo!31714 r!7292))) b!5618876))

(assert (= (and b!5617896 ((_ is Star!15601) (regTwo!31714 r!7292))) b!5618877))

(assert (= (and b!5617896 ((_ is Union!15601) (regTwo!31714 r!7292))) b!5618878))

(declare-fun b!5618886 () Bool)

(declare-fun e!3463834 () Bool)

(declare-fun tp!1556390 () Bool)

(assert (=> b!5618886 (= e!3463834 tp!1556390)))

(declare-fun tp!1556391 () Bool)

(declare-fun b!5618885 () Bool)

(declare-fun e!3463833 () Bool)

(assert (=> b!5618885 (= e!3463833 (and (inv!82249 (h!69427 (t!376393 zl!343))) e!3463834 tp!1556391))))

(assert (=> b!5617875 (= tp!1556275 e!3463833)))

(assert (= b!5618885 b!5618886))

(assert (= (and b!5617875 ((_ is Cons!62979) (t!376393 zl!343))) b!5618885))

(declare-fun m!6592634 () Bool)

(assert (=> b!5618885 m!6592634))

(declare-fun b_lambda!212661 () Bool)

(assert (= b_lambda!212659 (or b!5617877 b_lambda!212661)))

(declare-fun bs!1301321 () Bool)

(declare-fun d!1775794 () Bool)

(assert (= bs!1301321 (and d!1775794 b!5617877)))

(assert (=> bs!1301321 (= (dynLambda!24631 lambda!301530 lt!2259171) (derivationStepZipperUp!869 lt!2259171 (h!69428 s!2326)))))

(assert (=> bs!1301321 m!6591792))

(assert (=> d!1775770 d!1775794))

(declare-fun b_lambda!212663 () Bool)

(assert (= b_lambda!212657 (or b!5617877 b_lambda!212663)))

(declare-fun bs!1301322 () Bool)

(declare-fun d!1775796 () Bool)

(assert (= bs!1301322 (and d!1775796 b!5617877)))

(assert (=> bs!1301322 (= (dynLambda!24631 lambda!301530 lt!2259163) (derivationStepZipperUp!869 lt!2259163 (h!69428 s!2326)))))

(assert (=> bs!1301322 m!6591794))

(assert (=> d!1775758 d!1775796))

(declare-fun b_lambda!212665 () Bool)

(assert (= b_lambda!212655 (or b!5617877 b_lambda!212665)))

(declare-fun bs!1301323 () Bool)

(declare-fun d!1775798 () Bool)

(assert (= bs!1301323 (and d!1775798 b!5617877)))

(assert (=> bs!1301323 (= (dynLambda!24631 lambda!301530 (h!69427 zl!343)) (derivationStepZipperUp!869 (h!69427 zl!343) (h!69428 s!2326)))))

(assert (=> bs!1301323 m!6591734))

(assert (=> d!1775694 d!1775798))

(check-sat (not d!1775784) (not b!5618869) (not b!5618753) (not b!5618178) (not b!5618180) (not d!1775584) (not b!5618768) (not bm!423014) (not b!5618774) (not bm!423035) (not b!5618822) (not b!5618692) (not b!5618809) (not b!5618874) (not b!5618873) (not b!5618689) (not b!5618679) (not b!5618114) (not b!5618870) (not d!1775558) (not b!5618670) (not d!1775758) (not bs!1301321) (not d!1775572) (not b!5618105) tp_is_empty!40455 (not b!5618645) (not b!5618696) (not b!5618735) (not b!5618747) (not b!5618760) (not b!5618615) (not d!1775700) (not d!1775702) (not d!1775786) (not b!5618745) (not bm!423004) (not d!1775732) (not b!5618549) (not b!5618810) (not d!1775580) (not b!5618175) (not b!5618757) (not d!1775720) (not d!1775760) (not b!5618770) (not b!5618643) (not b!5618682) (not bm!423031) (not b!5618860) (not b!5618644) (not b!5618767) (not d!1775696) (not bs!1301322) (not b!5618743) (not b!5618872) (not b!5618708) (not b!5618592) (not b!5618762) (not b!5618761) (not d!1775568) (not d!1775754) (not b!5618754) (not bm!423007) (not b!5618885) (not bm!423025) (not bm!422984) (not b!5618669) (not d!1775718) (not bm!423012) (not bm!423008) (not b!5618709) (not d!1775764) (not bm!423009) (not b!5618868) (not b!5618741) (not b!5618179) (not b!5618177) (not b!5618738) (not bm!423013) (not d!1775574) (not b!5618611) (not d!1775746) (not d!1775776) (not b!5618876) (not b!5618886) (not b!5618764) (not b!5618771) (not d!1775722) (not b!5618231) (not b!5618694) (not b!5618778) (not d!1775738) (not d!1775728) (not bm!423001) (not d!1775706) (not bm!423006) (not bm!423032) (not bm!422967) (not b!5618367) (not b!5618528) (not d!1775698) (not bm!422968) (not d!1775752) (not b!5618843) (not bm!423015) (not bm!423026) (not d!1775770) (not setNonEmpty!37478) (not d!1775748) (not b!5618612) (not bm!423029) (not b!5618838) (not b!5618676) (not b!5618675) (not d!1775744) (not b!5618113) (not b!5618589) (not d!1775730) (not b!5618638) (not bm!423024) (not b!5618775) (not b!5618878) (not b!5618734) (not d!1775624) (not b!5618712) (not b!5618769) (not b!5618641) (not b!5618780) (not b!5618613) (not b!5618636) (not b!5618672) (not b!5618866) (not b!5618181) (not b!5618811) (not b!5618710) (not b!5618691) (not d!1775708) (not b_lambda!212663) (not b!5618772) (not b!5618529) (not bm!423011) (not b!5618584) (not bm!423010) (not b_lambda!212665) (not b!5618572) (not b!5618848) (not d!1775774) (not d!1775742) (not b!5618744) (not b!5618865) (not b!5618361) (not b!5618646) (not b!5618861) (not b!5618728) (not d!1775724) (not b!5618808) (not bm!423023) (not d!1775716) (not d!1775734) (not d!1775778) (not b!5618864) (not b!5618688) (not b!5618647) (not bm!423000) (not b!5618614) (not b!5618804) (not b!5618742) (not b!5618546) (not d!1775684) (not d!1775710) (not d!1775682) (not b!5618519) (not b!5618877) (not b!5618779) (not b!5618723) (not b!5618531) (not b!5618673) (not d!1775762) (not b!5618748) (not b!5618204) (not d!1775694) (not d!1775750) (not d!1775792) (not bs!1301323) (not b!5618862) (not d!1775772) (not b!5618617) (not b!5618526) (not b!5618525) (not b!5618837) (not b!5618737) (not b!5618707) (not b!5618104) (not b!5618680) (not b!5618713) (not b!5618671) (not b!5618230) (not b!5618717) (not b!5618706) (not b!5618587) (not b!5618702) (not b!5618740) (not b!5618755) (not b!5618184) (not b!5618640) (not b!5618642) (not b!5618112) (not d!1775704) (not b_lambda!212661) (not d!1775768) (not bm!422987))
(check-sat)
