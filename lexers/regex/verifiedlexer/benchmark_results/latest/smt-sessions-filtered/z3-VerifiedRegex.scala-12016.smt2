; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!674016 () Bool)

(assert start!674016)

(declare-fun b!7003502 () Bool)

(assert (=> b!7003502 true))

(declare-fun b!7003497 () Bool)

(assert (=> b!7003497 true))

(declare-fun b!7003473 () Bool)

(assert (=> b!7003473 true))

(declare-fun b!7003468 () Bool)

(declare-fun res!2857108 () Bool)

(declare-fun e!4209652 () Bool)

(assert (=> b!7003468 (=> res!2857108 e!4209652)))

(declare-datatypes ((C!34828 0))(
  ( (C!34829 (val!27116 Int)) )
))
(declare-datatypes ((List!67382 0))(
  ( (Nil!67258) (Cons!67258 (h!73706 C!34828) (t!381135 List!67382)) )
))
(declare-datatypes ((tuple2!67904 0))(
  ( (tuple2!67905 (_1!37255 List!67382) (_2!37255 List!67382)) )
))
(declare-fun lt!2498164 () tuple2!67904)

(declare-fun isPrefix!5822 (List!67382 List!67382) Bool)

(assert (=> b!7003468 (= res!2857108 (not (isPrefix!5822 Nil!67258 (_1!37255 lt!2498164))))))

(declare-fun b!7003469 () Bool)

(declare-fun e!4209648 () Bool)

(declare-fun e!4209655 () Bool)

(assert (=> b!7003469 (= e!4209648 e!4209655)))

(declare-fun res!2857139 () Bool)

(assert (=> b!7003469 (=> res!2857139 e!4209655)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17279 0))(
  ( (ElementMatch!17279 (c!1300321 C!34828)) (Concat!26124 (regOne!35070 Regex!17279) (regTwo!35070 Regex!17279)) (EmptyExpr!17279) (Star!17279 (reg!17608 Regex!17279)) (EmptyLang!17279) (Union!17279 (regOne!35071 Regex!17279) (regTwo!35071 Regex!17279)) )
))
(declare-datatypes ((List!67383 0))(
  ( (Nil!67259) (Cons!67259 (h!73707 Regex!17279) (t!381136 List!67383)) )
))
(declare-datatypes ((Context!12550 0))(
  ( (Context!12551 (exprs!6775 List!67383)) )
))
(declare-fun lt!2498155 () (InoxSet Context!12550))

(declare-fun lt!2498162 () (InoxSet Context!12550))

(declare-fun s!7408 () List!67382)

(declare-fun derivationStepZipper!2759 ((InoxSet Context!12550) C!34828) (InoxSet Context!12550))

(assert (=> b!7003469 (= res!2857139 (not (= (derivationStepZipper!2759 lt!2498162 (h!73706 s!7408)) lt!2498155)))))

(declare-fun lt!2498191 () Context!12550)

(declare-fun derivationStepZipperUp!1929 (Context!12550 C!34828) (InoxSet Context!12550))

(assert (=> b!7003469 (= lt!2498155 (derivationStepZipperUp!1929 lt!2498191 (h!73706 s!7408)))))

(declare-fun lambda!406061 () Int)

(declare-fun flatMap!2265 ((InoxSet Context!12550) Int) (InoxSet Context!12550))

(assert (=> b!7003469 (= (flatMap!2265 lt!2498162 lambda!406061) (derivationStepZipperUp!1929 lt!2498191 (h!73706 s!7408)))))

(declare-datatypes ((Unit!161218 0))(
  ( (Unit!161219) )
))
(declare-fun lt!2498158 () Unit!161218)

(declare-fun lemmaFlatMapOnSingletonSet!1780 ((InoxSet Context!12550) Context!12550 Int) Unit!161218)

(assert (=> b!7003469 (= lt!2498158 (lemmaFlatMapOnSingletonSet!1780 lt!2498162 lt!2498191 lambda!406061))))

(assert (=> b!7003469 (= lt!2498162 (store ((as const (Array Context!12550 Bool)) false) lt!2498191 true))))

(declare-fun b!7003470 () Bool)

(declare-fun res!2857110 () Bool)

(declare-fun e!4209646 () Bool)

(assert (=> b!7003470 (=> res!2857110 e!4209646)))

(get-info :version)

(assert (=> b!7003470 (= res!2857110 (not ((_ is Cons!67259) (exprs!6775 lt!2498191))))))

(declare-fun b!7003471 () Bool)

(declare-fun res!2857133 () Bool)

(declare-fun e!4209661 () Bool)

(assert (=> b!7003471 (=> res!2857133 e!4209661)))

(declare-fun lt!2498153 () Context!12550)

(declare-fun lt!2498176 () (InoxSet Context!12550))

(assert (=> b!7003471 (= res!2857133 (not (select lt!2498176 lt!2498153)))))

(declare-fun b!7003472 () Bool)

(declare-fun e!4209649 () Bool)

(declare-fun e!4209664 () Bool)

(assert (=> b!7003472 (= e!4209649 e!4209664)))

(declare-fun res!2857125 () Bool)

(assert (=> b!7003472 (=> res!2857125 e!4209664)))

(declare-fun lt!2498151 () (InoxSet Context!12550))

(declare-fun lt!2498144 () (InoxSet Context!12550))

(assert (=> b!7003472 (= res!2857125 (not (= lt!2498151 lt!2498144)))))

(declare-fun lt!2498195 () (InoxSet Context!12550))

(declare-fun lt!2498175 () (InoxSet Context!12550))

(assert (=> b!7003472 (= lt!2498144 ((_ map or) lt!2498195 lt!2498175))))

(declare-fun lt!2498181 () Context!12550)

(assert (=> b!7003472 (= lt!2498175 (derivationStepZipperUp!1929 lt!2498181 (h!73706 s!7408)))))

(declare-fun derivationStepZipperDown!1997 (Regex!17279 Context!12550 C!34828) (InoxSet Context!12550))

(assert (=> b!7003472 (= lt!2498195 (derivationStepZipperDown!1997 (h!73707 (exprs!6775 lt!2498191)) lt!2498181 (h!73706 s!7408)))))

(declare-fun lt!2498166 () List!67383)

(declare-fun ct2!306 () Context!12550)

(declare-fun ++!15259 (List!67383 List!67383) List!67383)

(assert (=> b!7003472 (= lt!2498181 (Context!12551 (++!15259 lt!2498166 (exprs!6775 ct2!306))))))

(declare-fun lt!2498165 () Unit!161218)

(declare-fun lambda!406060 () Int)

(declare-fun lemmaConcatPreservesForall!615 (List!67383 List!67383 Int) Unit!161218)

(assert (=> b!7003472 (= lt!2498165 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun lt!2498182 () Unit!161218)

(assert (=> b!7003472 (= lt!2498182 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun e!4209662 () Bool)

(assert (=> b!7003473 (= e!4209662 e!4209646)))

(declare-fun res!2857134 () Bool)

(assert (=> b!7003473 (=> res!2857134 e!4209646)))

(declare-fun lt!2498137 () (InoxSet Context!12550))

(assert (=> b!7003473 (= res!2857134 (not (= (derivationStepZipper!2759 lt!2498137 (h!73706 s!7408)) lt!2498151)))))

(declare-fun lt!2498134 () Context!12550)

(assert (=> b!7003473 (= (flatMap!2265 lt!2498137 lambda!406061) (derivationStepZipperUp!1929 lt!2498134 (h!73706 s!7408)))))

(declare-fun lt!2498179 () Unit!161218)

(assert (=> b!7003473 (= lt!2498179 (lemmaFlatMapOnSingletonSet!1780 lt!2498137 lt!2498134 lambda!406061))))

(assert (=> b!7003473 (= lt!2498151 (derivationStepZipperUp!1929 lt!2498134 (h!73706 s!7408)))))

(declare-fun lt!2498177 () Unit!161218)

(assert (=> b!7003473 (= lt!2498177 (lemmaConcatPreservesForall!615 (exprs!6775 lt!2498191) (exprs!6775 ct2!306) lambda!406060))))

(declare-fun b!7003474 () Bool)

(assert (=> b!7003474 (= e!4209646 e!4209649)))

(declare-fun res!2857136 () Bool)

(assert (=> b!7003474 (=> res!2857136 e!4209649)))

(declare-fun nullable!7039 (Regex!17279) Bool)

(assert (=> b!7003474 (= res!2857136 (not (nullable!7039 (h!73707 (exprs!6775 lt!2498191)))))))

(declare-fun lt!2498150 () Context!12550)

(assert (=> b!7003474 (= lt!2498150 (Context!12551 lt!2498166))))

(declare-fun tail!13326 (List!67383) List!67383)

(assert (=> b!7003474 (= lt!2498166 (tail!13326 (exprs!6775 lt!2498191)))))

(declare-fun res!2857120 () Bool)

(declare-fun e!4209656 () Bool)

(assert (=> start!674016 (=> (not res!2857120) (not e!4209656))))

(declare-fun matchZipper!2819 ((InoxSet Context!12550) List!67382) Bool)

(assert (=> start!674016 (= res!2857120 (matchZipper!2819 lt!2498176 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12550))

(declare-fun appendTo!400 ((InoxSet Context!12550) Context!12550) (InoxSet Context!12550))

(assert (=> start!674016 (= lt!2498176 (appendTo!400 z1!570 ct2!306))))

(assert (=> start!674016 e!4209656))

(declare-fun condSetEmpty!48159 () Bool)

(assert (=> start!674016 (= condSetEmpty!48159 (= z1!570 ((as const (Array Context!12550 Bool)) false)))))

(declare-fun setRes!48159 () Bool)

(assert (=> start!674016 setRes!48159))

(declare-fun e!4209654 () Bool)

(declare-fun inv!86056 (Context!12550) Bool)

(assert (=> start!674016 (and (inv!86056 ct2!306) e!4209654)))

(declare-fun e!4209642 () Bool)

(assert (=> start!674016 e!4209642))

(declare-fun b!7003475 () Bool)

(declare-fun res!2857123 () Bool)

(assert (=> b!7003475 (=> (not res!2857123) (not e!4209656))))

(assert (=> b!7003475 (= res!2857123 ((_ is Cons!67258) s!7408))))

(declare-fun b!7003476 () Bool)

(declare-fun e!4209645 () Bool)

(assert (=> b!7003476 (= e!4209645 (not (matchZipper!2819 lt!2498175 (t!381135 s!7408))))))

(declare-fun lt!2498143 () Unit!161218)

(assert (=> b!7003476 (= lt!2498143 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun b!7003477 () Bool)

(declare-fun e!4209643 () Bool)

(declare-fun tp!1931390 () Bool)

(assert (=> b!7003477 (= e!4209643 tp!1931390)))

(declare-fun b!7003478 () Bool)

(declare-fun e!4209651 () Bool)

(declare-fun e!4209663 () Bool)

(assert (=> b!7003478 (= e!4209651 e!4209663)))

(declare-fun res!2857117 () Bool)

(assert (=> b!7003478 (=> res!2857117 e!4209663)))

(assert (=> b!7003478 (= res!2857117 (not (matchZipper!2819 lt!2498175 (t!381135 s!7408))))))

(declare-fun lt!2498190 () Unit!161218)

(assert (=> b!7003478 (= lt!2498190 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun b!7003479 () Bool)

(declare-fun e!4209658 () Bool)

(assert (=> b!7003479 (= e!4209658 e!4209662)))

(declare-fun res!2857111 () Bool)

(assert (=> b!7003479 (=> res!2857111 e!4209662)))

(declare-fun lt!2498141 () (InoxSet Context!12550))

(assert (=> b!7003479 (= res!2857111 (not (= lt!2498137 lt!2498141)))))

(assert (=> b!7003479 (= lt!2498137 (store ((as const (Array Context!12550 Bool)) false) lt!2498134 true))))

(declare-fun lt!2498156 () Unit!161218)

(assert (=> b!7003479 (= lt!2498156 (lemmaConcatPreservesForall!615 (exprs!6775 lt!2498191) (exprs!6775 ct2!306) lambda!406060))))

(declare-fun b!7003480 () Bool)

(declare-fun e!4209660 () Bool)

(assert (=> b!7003480 (= e!4209660 e!4209648)))

(declare-fun res!2857137 () Bool)

(assert (=> b!7003480 (=> res!2857137 e!4209648)))

(declare-fun lt!2498173 () (InoxSet Context!12550))

(assert (=> b!7003480 (= res!2857137 (not (matchZipper!2819 lt!2498173 (_1!37255 lt!2498164))))))

(declare-datatypes ((Option!16784 0))(
  ( (None!16783) (Some!16783 (v!53061 tuple2!67904)) )
))
(declare-fun lt!2498186 () Option!16784)

(declare-fun get!23588 (Option!16784) tuple2!67904)

(assert (=> b!7003480 (= lt!2498164 (get!23588 lt!2498186))))

(declare-fun isDefined!13485 (Option!16784) Bool)

(assert (=> b!7003480 (isDefined!13485 lt!2498186)))

(declare-fun lt!2498178 () (InoxSet Context!12550))

(declare-fun findConcatSeparationZippers!300 ((InoxSet Context!12550) (InoxSet Context!12550) List!67382 List!67382 List!67382) Option!16784)

(assert (=> b!7003480 (= lt!2498186 (findConcatSeparationZippers!300 lt!2498173 lt!2498178 Nil!67258 s!7408 s!7408))))

(assert (=> b!7003480 (= lt!2498178 (store ((as const (Array Context!12550 Bool)) false) ct2!306 true))))

(declare-fun lt!2498138 () Unit!161218)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!300 ((InoxSet Context!12550) Context!12550 List!67382) Unit!161218)

(assert (=> b!7003480 (= lt!2498138 (lemmaConcatZipperMatchesStringThenFindConcatDefined!300 lt!2498173 ct2!306 s!7408))))

(declare-fun b!7003481 () Bool)

(declare-fun res!2857138 () Bool)

(assert (=> b!7003481 (=> res!2857138 e!4209648)))

(assert (=> b!7003481 (= res!2857138 (not (matchZipper!2819 lt!2498178 (_2!37255 lt!2498164))))))

(declare-fun b!7003482 () Bool)

(declare-fun e!4209644 () Bool)

(declare-fun e!4209650 () Bool)

(assert (=> b!7003482 (= e!4209644 e!4209650)))

(declare-fun res!2857129 () Bool)

(assert (=> b!7003482 (=> res!2857129 e!4209650)))

(declare-fun e!4209647 () Bool)

(assert (=> b!7003482 (= res!2857129 e!4209647)))

(declare-fun res!2857109 () Bool)

(assert (=> b!7003482 (=> (not res!2857109) (not e!4209647))))

(declare-fun lt!2498197 () Bool)

(declare-fun lt!2498188 () Bool)

(assert (=> b!7003482 (= res!2857109 (not (= lt!2498197 lt!2498188)))))

(assert (=> b!7003482 (= lt!2498197 (matchZipper!2819 lt!2498162 (_1!37255 lt!2498164)))))

(declare-fun lt!2498140 () (InoxSet Context!12550))

(declare-fun lt!2498163 () List!67382)

(declare-fun e!4209657 () Bool)

(assert (=> b!7003482 (= (matchZipper!2819 lt!2498140 lt!2498163) e!4209657)))

(declare-fun res!2857128 () Bool)

(assert (=> b!7003482 (=> res!2857128 e!4209657)))

(assert (=> b!7003482 (= res!2857128 lt!2498188)))

(declare-fun lt!2498184 () (InoxSet Context!12550))

(assert (=> b!7003482 (= lt!2498188 (matchZipper!2819 lt!2498184 lt!2498163))))

(declare-fun lt!2498196 () (InoxSet Context!12550))

(declare-fun lt!2498170 () Unit!161218)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1452 ((InoxSet Context!12550) (InoxSet Context!12550) List!67382) Unit!161218)

(assert (=> b!7003482 (= lt!2498170 (lemmaZipperConcatMatchesSameAsBothZippers!1452 lt!2498184 lt!2498196 lt!2498163))))

(declare-fun tail!13327 (List!67382) List!67382)

(assert (=> b!7003482 (= lt!2498163 (tail!13327 (_1!37255 lt!2498164)))))

(declare-fun b!7003483 () Bool)

(declare-fun e!4209641 () Bool)

(declare-fun e!4209653 () Bool)

(assert (=> b!7003483 (= e!4209641 e!4209653)))

(declare-fun res!2857131 () Bool)

(assert (=> b!7003483 (=> res!2857131 e!4209653)))

(declare-fun lt!2498194 () (InoxSet Context!12550))

(assert (=> b!7003483 (= res!2857131 (not (matchZipper!2819 lt!2498194 s!7408)))))

(declare-fun lt!2498192 () Unit!161218)

(assert (=> b!7003483 (= lt!2498192 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun setElem!48159 () Context!12550)

(declare-fun tp!1931392 () Bool)

(declare-fun setNonEmpty!48159 () Bool)

(assert (=> setNonEmpty!48159 (= setRes!48159 (and tp!1931392 (inv!86056 setElem!48159) e!4209643))))

(declare-fun setRest!48159 () (InoxSet Context!12550))

(assert (=> setNonEmpty!48159 (= z1!570 ((_ map or) (store ((as const (Array Context!12550 Bool)) false) setElem!48159 true) setRest!48159))))

(declare-fun b!7003484 () Bool)

(declare-fun res!2857118 () Bool)

(assert (=> b!7003484 (=> res!2857118 e!4209652)))

(declare-fun lt!2498183 () (InoxSet Context!12550))

(assert (=> b!7003484 (= res!2857118 (not (matchZipper!2819 lt!2498183 lt!2498163)))))

(declare-fun b!7003485 () Bool)

(declare-fun e!4209659 () Bool)

(assert (=> b!7003485 (= e!4209659 (matchZipper!2819 lt!2498175 (t!381135 s!7408)))))

(declare-fun b!7003486 () Bool)

(assert (=> b!7003486 (= e!4209655 e!4209644)))

(declare-fun res!2857135 () Bool)

(assert (=> b!7003486 (=> res!2857135 e!4209644)))

(assert (=> b!7003486 (= res!2857135 (not (= lt!2498155 lt!2498140)))))

(assert (=> b!7003486 (= lt!2498140 ((_ map or) lt!2498184 lt!2498196))))

(assert (=> b!7003486 (= lt!2498196 (derivationStepZipperUp!1929 lt!2498150 (h!73706 s!7408)))))

(assert (=> b!7003486 (= lt!2498184 (derivationStepZipperDown!1997 (h!73707 (exprs!6775 lt!2498191)) lt!2498150 (h!73706 s!7408)))))

(declare-fun b!7003487 () Bool)

(declare-fun res!2857119 () Bool)

(assert (=> b!7003487 (=> res!2857119 e!4209648)))

(declare-fun ++!15260 (List!67382 List!67382) List!67382)

(assert (=> b!7003487 (= res!2857119 (not (= (++!15260 (_1!37255 lt!2498164) (_2!37255 lt!2498164)) s!7408)))))

(declare-fun b!7003488 () Bool)

(assert (=> b!7003488 (= e!4209652 true)))

(declare-fun lt!2498185 () List!67382)

(assert (=> b!7003488 (= lt!2498185 (++!15260 Nil!67258 s!7408))))

(declare-fun b!7003489 () Bool)

(assert (=> b!7003489 (= e!4209657 (matchZipper!2819 lt!2498196 lt!2498163))))

(declare-fun b!7003490 () Bool)

(declare-fun res!2857124 () Bool)

(assert (=> b!7003490 (=> res!2857124 e!4209646)))

(declare-fun isEmpty!39276 (List!67383) Bool)

(assert (=> b!7003490 (= res!2857124 (isEmpty!39276 (exprs!6775 lt!2498191)))))

(declare-fun b!7003491 () Bool)

(declare-fun res!2857121 () Bool)

(assert (=> b!7003491 (=> res!2857121 e!4209660)))

(declare-fun lt!2498180 () Int)

(declare-datatypes ((List!67384 0))(
  ( (Nil!67260) (Cons!67260 (h!73708 Context!12550) (t!381137 List!67384)) )
))
(declare-fun zipperDepthTotal!500 (List!67384) Int)

(assert (=> b!7003491 (= res!2857121 (>= (zipperDepthTotal!500 (Cons!67260 lt!2498150 Nil!67260)) lt!2498180))))

(declare-fun b!7003492 () Bool)

(declare-fun res!2857114 () Bool)

(assert (=> b!7003492 (=> res!2857114 e!4209652)))

(assert (=> b!7003492 (= res!2857114 (not lt!2498197))))

(declare-fun b!7003493 () Bool)

(declare-fun tp_is_empty!43783 () Bool)

(declare-fun tp!1931391 () Bool)

(assert (=> b!7003493 (= e!4209642 (and tp_is_empty!43783 tp!1931391))))

(declare-fun b!7003494 () Bool)

(assert (=> b!7003494 (= e!4209664 e!4209651)))

(declare-fun res!2857126 () Bool)

(assert (=> b!7003494 (=> res!2857126 e!4209651)))

(assert (=> b!7003494 (= res!2857126 e!4209645)))

(declare-fun res!2857122 () Bool)

(assert (=> b!7003494 (=> (not res!2857122) (not e!4209645))))

(declare-fun lt!2498149 () Bool)

(declare-fun lt!2498187 () Bool)

(assert (=> b!7003494 (= res!2857122 (not (= lt!2498149 lt!2498187)))))

(assert (=> b!7003494 (= lt!2498149 (matchZipper!2819 lt!2498151 (t!381135 s!7408)))))

(declare-fun lt!2498161 () Unit!161218)

(assert (=> b!7003494 (= lt!2498161 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(assert (=> b!7003494 (= (matchZipper!2819 lt!2498144 (t!381135 s!7408)) e!4209659)))

(declare-fun res!2857107 () Bool)

(assert (=> b!7003494 (=> res!2857107 e!4209659)))

(assert (=> b!7003494 (= res!2857107 lt!2498187)))

(assert (=> b!7003494 (= lt!2498187 (matchZipper!2819 lt!2498195 (t!381135 s!7408)))))

(declare-fun lt!2498160 () Unit!161218)

(assert (=> b!7003494 (= lt!2498160 (lemmaZipperConcatMatchesSameAsBothZippers!1452 lt!2498195 lt!2498175 (t!381135 s!7408)))))

(declare-fun lt!2498168 () Unit!161218)

(assert (=> b!7003494 (= lt!2498168 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun lt!2498172 () Unit!161218)

(assert (=> b!7003494 (= lt!2498172 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun b!7003495 () Bool)

(assert (=> b!7003495 (= e!4209647 (not (matchZipper!2819 lt!2498196 lt!2498163)))))

(declare-fun b!7003496 () Bool)

(assert (=> b!7003496 (= e!4209650 e!4209652)))

(declare-fun res!2857132 () Bool)

(assert (=> b!7003496 (=> res!2857132 e!4209652)))

(declare-fun lt!2498142 () C!34828)

(assert (=> b!7003496 (= res!2857132 (not (= (derivationStepZipper!2759 lt!2498173 lt!2498142) lt!2498183)))))

(assert (=> b!7003496 (= lt!2498183 (derivationStepZipperUp!1929 lt!2498150 lt!2498142))))

(declare-fun head!14150 (List!67382) C!34828)

(assert (=> b!7003496 (= lt!2498142 (head!14150 (_1!37255 lt!2498164)))))

(assert (=> b!7003496 (= (flatMap!2265 lt!2498173 lambda!406061) (derivationStepZipperUp!1929 lt!2498150 (h!73706 s!7408)))))

(declare-fun lt!2498157 () Unit!161218)

(assert (=> b!7003496 (= lt!2498157 (lemmaFlatMapOnSingletonSet!1780 lt!2498173 lt!2498150 lambda!406061))))

(assert (=> b!7003497 (= e!4209661 e!4209658)))

(declare-fun res!2857112 () Bool)

(assert (=> b!7003497 (=> res!2857112 e!4209658)))

(assert (=> b!7003497 (= res!2857112 (or (not (= lt!2498134 lt!2498153)) (not (select z1!570 lt!2498191))))))

(assert (=> b!7003497 (= lt!2498134 (Context!12551 (++!15259 (exprs!6775 lt!2498191) (exprs!6775 ct2!306))))))

(declare-fun lt!2498169 () Unit!161218)

(assert (=> b!7003497 (= lt!2498169 (lemmaConcatPreservesForall!615 (exprs!6775 lt!2498191) (exprs!6775 ct2!306) lambda!406060))))

(declare-fun lambda!406059 () Int)

(declare-fun mapPost2!134 ((InoxSet Context!12550) Int Context!12550) Context!12550)

(assert (=> b!7003497 (= lt!2498191 (mapPost2!134 z1!570 lambda!406059 lt!2498153))))

(declare-fun b!7003498 () Bool)

(assert (=> b!7003498 (= e!4209653 e!4209660)))

(declare-fun res!2857113 () Bool)

(assert (=> b!7003498 (=> res!2857113 e!4209660)))

(declare-fun lt!2498152 () Int)

(declare-fun contextDepthTotal!472 (Context!12550) Int)

(assert (=> b!7003498 (= res!2857113 (<= lt!2498152 (contextDepthTotal!472 lt!2498150)))))

(assert (=> b!7003498 (<= lt!2498152 lt!2498180)))

(declare-fun lt!2498189 () List!67384)

(assert (=> b!7003498 (= lt!2498180 (zipperDepthTotal!500 lt!2498189))))

(assert (=> b!7003498 (= lt!2498152 (contextDepthTotal!472 lt!2498191))))

(declare-fun lt!2498174 () Unit!161218)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!40 (List!67384 Context!12550) Unit!161218)

(assert (=> b!7003498 (= lt!2498174 (lemmaTotalDepthZipperLargerThanOfAnyContext!40 lt!2498189 lt!2498191))))

(declare-fun toList!10639 ((InoxSet Context!12550)) List!67384)

(assert (=> b!7003498 (= lt!2498189 (toList!10639 z1!570))))

(declare-fun lt!2498171 () Unit!161218)

(assert (=> b!7003498 (= lt!2498171 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun lt!2498154 () Unit!161218)

(assert (=> b!7003498 (= lt!2498154 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun lt!2498136 () Unit!161218)

(assert (=> b!7003498 (= lt!2498136 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(assert (=> b!7003498 (= (flatMap!2265 lt!2498173 lambda!406061) (derivationStepZipperUp!1929 lt!2498150 (h!73706 s!7408)))))

(declare-fun lt!2498167 () Unit!161218)

(assert (=> b!7003498 (= lt!2498167 (lemmaFlatMapOnSingletonSet!1780 lt!2498173 lt!2498150 lambda!406061))))

(declare-fun map!15565 ((InoxSet Context!12550) Int) (InoxSet Context!12550))

(assert (=> b!7003498 (= (map!15565 lt!2498173 lambda!406059) (store ((as const (Array Context!12550 Bool)) false) (Context!12551 (++!15259 lt!2498166 (exprs!6775 ct2!306))) true))))

(declare-fun lt!2498145 () Unit!161218)

(assert (=> b!7003498 (= lt!2498145 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun lt!2498133 () Unit!161218)

(declare-fun lemmaMapOnSingletonSet!344 ((InoxSet Context!12550) Context!12550 Int) Unit!161218)

(assert (=> b!7003498 (= lt!2498133 (lemmaMapOnSingletonSet!344 lt!2498173 lt!2498150 lambda!406059))))

(assert (=> b!7003498 (= lt!2498173 (store ((as const (Array Context!12550 Bool)) false) lt!2498150 true))))

(declare-fun setIsEmpty!48159 () Bool)

(assert (=> setIsEmpty!48159 setRes!48159))

(declare-fun b!7003499 () Bool)

(assert (=> b!7003499 (= e!4209663 e!4209641)))

(declare-fun res!2857115 () Bool)

(assert (=> b!7003499 (=> res!2857115 e!4209641)))

(assert (=> b!7003499 (= res!2857115 (not (= (derivationStepZipper!2759 lt!2498194 (h!73706 s!7408)) lt!2498175)))))

(declare-fun lt!2498148 () Unit!161218)

(assert (=> b!7003499 (= lt!2498148 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun lt!2498135 () Unit!161218)

(assert (=> b!7003499 (= lt!2498135 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(assert (=> b!7003499 (= (flatMap!2265 lt!2498194 lambda!406061) (derivationStepZipperUp!1929 lt!2498181 (h!73706 s!7408)))))

(declare-fun lt!2498193 () Unit!161218)

(assert (=> b!7003499 (= lt!2498193 (lemmaFlatMapOnSingletonSet!1780 lt!2498194 lt!2498181 lambda!406061))))

(assert (=> b!7003499 (= lt!2498194 (store ((as const (Array Context!12550 Bool)) false) lt!2498181 true))))

(declare-fun lt!2498159 () Unit!161218)

(assert (=> b!7003499 (= lt!2498159 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun lt!2498139 () Unit!161218)

(assert (=> b!7003499 (= lt!2498139 (lemmaConcatPreservesForall!615 lt!2498166 (exprs!6775 ct2!306) lambda!406060))))

(declare-fun b!7003500 () Bool)

(declare-fun tp!1931389 () Bool)

(assert (=> b!7003500 (= e!4209654 tp!1931389)))

(declare-fun b!7003501 () Bool)

(declare-fun res!2857127 () Bool)

(assert (=> b!7003501 (=> res!2857127 e!4209648)))

(declare-fun isEmpty!39277 (List!67382) Bool)

(assert (=> b!7003501 (= res!2857127 (isEmpty!39277 (_1!37255 lt!2498164)))))

(assert (=> b!7003502 (= e!4209656 (not e!4209661))))

(declare-fun res!2857116 () Bool)

(assert (=> b!7003502 (=> res!2857116 e!4209661)))

(assert (=> b!7003502 (= res!2857116 (not (matchZipper!2819 lt!2498141 s!7408)))))

(assert (=> b!7003502 (= lt!2498141 (store ((as const (Array Context!12550 Bool)) false) lt!2498153 true))))

(declare-fun lambda!406058 () Int)

(declare-fun getWitness!1204 ((InoxSet Context!12550) Int) Context!12550)

(assert (=> b!7003502 (= lt!2498153 (getWitness!1204 lt!2498176 lambda!406058))))

(declare-fun lt!2498147 () List!67384)

(declare-fun exists!3100 (List!67384 Int) Bool)

(assert (=> b!7003502 (exists!3100 lt!2498147 lambda!406058)))

(declare-fun lt!2498146 () Unit!161218)

(declare-fun lemmaZipperMatchesExistsMatchingContext!248 (List!67384 List!67382) Unit!161218)

(assert (=> b!7003502 (= lt!2498146 (lemmaZipperMatchesExistsMatchingContext!248 lt!2498147 s!7408))))

(assert (=> b!7003502 (= lt!2498147 (toList!10639 lt!2498176))))

(declare-fun b!7003503 () Bool)

(declare-fun res!2857130 () Bool)

(assert (=> b!7003503 (=> res!2857130 e!4209651)))

(assert (=> b!7003503 (= res!2857130 (not lt!2498149))))

(assert (= (and start!674016 res!2857120) b!7003475))

(assert (= (and b!7003475 res!2857123) b!7003502))

(assert (= (and b!7003502 (not res!2857116)) b!7003471))

(assert (= (and b!7003471 (not res!2857133)) b!7003497))

(assert (= (and b!7003497 (not res!2857112)) b!7003479))

(assert (= (and b!7003479 (not res!2857111)) b!7003473))

(assert (= (and b!7003473 (not res!2857134)) b!7003470))

(assert (= (and b!7003470 (not res!2857110)) b!7003490))

(assert (= (and b!7003490 (not res!2857124)) b!7003474))

(assert (= (and b!7003474 (not res!2857136)) b!7003472))

(assert (= (and b!7003472 (not res!2857125)) b!7003494))

(assert (= (and b!7003494 (not res!2857107)) b!7003485))

(assert (= (and b!7003494 res!2857122) b!7003476))

(assert (= (and b!7003494 (not res!2857126)) b!7003503))

(assert (= (and b!7003503 (not res!2857130)) b!7003478))

(assert (= (and b!7003478 (not res!2857117)) b!7003499))

(assert (= (and b!7003499 (not res!2857115)) b!7003483))

(assert (= (and b!7003483 (not res!2857131)) b!7003498))

(assert (= (and b!7003498 (not res!2857113)) b!7003491))

(assert (= (and b!7003491 (not res!2857121)) b!7003480))

(assert (= (and b!7003480 (not res!2857137)) b!7003481))

(assert (= (and b!7003481 (not res!2857138)) b!7003487))

(assert (= (and b!7003487 (not res!2857119)) b!7003501))

(assert (= (and b!7003501 (not res!2857127)) b!7003469))

(assert (= (and b!7003469 (not res!2857139)) b!7003486))

(assert (= (and b!7003486 (not res!2857135)) b!7003482))

(assert (= (and b!7003482 (not res!2857128)) b!7003489))

(assert (= (and b!7003482 res!2857109) b!7003495))

(assert (= (and b!7003482 (not res!2857129)) b!7003496))

(assert (= (and b!7003496 (not res!2857132)) b!7003484))

(assert (= (and b!7003484 (not res!2857118)) b!7003492))

(assert (= (and b!7003492 (not res!2857114)) b!7003468))

(assert (= (and b!7003468 (not res!2857108)) b!7003488))

(assert (= (and start!674016 condSetEmpty!48159) setIsEmpty!48159))

(assert (= (and start!674016 (not condSetEmpty!48159)) setNonEmpty!48159))

(assert (= setNonEmpty!48159 b!7003477))

(assert (= start!674016 b!7003500))

(assert (= (and start!674016 ((_ is Cons!67258) s!7408)) b!7003493))

(declare-fun m!7698886 () Bool)

(assert (=> b!7003481 m!7698886))

(declare-fun m!7698888 () Bool)

(assert (=> b!7003474 m!7698888))

(declare-fun m!7698890 () Bool)

(assert (=> b!7003474 m!7698890))

(declare-fun m!7698892 () Bool)

(assert (=> b!7003486 m!7698892))

(declare-fun m!7698894 () Bool)

(assert (=> b!7003486 m!7698894))

(declare-fun m!7698896 () Bool)

(assert (=> b!7003499 m!7698896))

(declare-fun m!7698898 () Bool)

(assert (=> b!7003499 m!7698898))

(declare-fun m!7698900 () Bool)

(assert (=> b!7003499 m!7698900))

(declare-fun m!7698902 () Bool)

(assert (=> b!7003499 m!7698902))

(assert (=> b!7003499 m!7698896))

(assert (=> b!7003499 m!7698896))

(declare-fun m!7698904 () Bool)

(assert (=> b!7003499 m!7698904))

(declare-fun m!7698906 () Bool)

(assert (=> b!7003499 m!7698906))

(assert (=> b!7003499 m!7698896))

(declare-fun m!7698908 () Bool)

(assert (=> b!7003502 m!7698908))

(declare-fun m!7698910 () Bool)

(assert (=> b!7003502 m!7698910))

(declare-fun m!7698912 () Bool)

(assert (=> b!7003502 m!7698912))

(declare-fun m!7698914 () Bool)

(assert (=> b!7003502 m!7698914))

(declare-fun m!7698916 () Bool)

(assert (=> b!7003502 m!7698916))

(declare-fun m!7698918 () Bool)

(assert (=> b!7003502 m!7698918))

(declare-fun m!7698920 () Bool)

(assert (=> b!7003472 m!7698920))

(assert (=> b!7003472 m!7698896))

(assert (=> b!7003472 m!7698898))

(assert (=> b!7003472 m!7698896))

(declare-fun m!7698922 () Bool)

(assert (=> b!7003472 m!7698922))

(declare-fun m!7698924 () Bool)

(assert (=> b!7003489 m!7698924))

(declare-fun m!7698926 () Bool)

(assert (=> b!7003485 m!7698926))

(assert (=> b!7003495 m!7698924))

(declare-fun m!7698928 () Bool)

(assert (=> b!7003479 m!7698928))

(declare-fun m!7698930 () Bool)

(assert (=> b!7003479 m!7698930))

(declare-fun m!7698932 () Bool)

(assert (=> b!7003468 m!7698932))

(assert (=> b!7003478 m!7698926))

(assert (=> b!7003478 m!7698896))

(declare-fun m!7698934 () Bool)

(assert (=> b!7003483 m!7698934))

(assert (=> b!7003483 m!7698896))

(declare-fun m!7698936 () Bool)

(assert (=> b!7003487 m!7698936))

(declare-fun m!7698938 () Bool)

(assert (=> b!7003496 m!7698938))

(declare-fun m!7698940 () Bool)

(assert (=> b!7003496 m!7698940))

(declare-fun m!7698942 () Bool)

(assert (=> b!7003496 m!7698942))

(declare-fun m!7698944 () Bool)

(assert (=> b!7003496 m!7698944))

(declare-fun m!7698946 () Bool)

(assert (=> b!7003496 m!7698946))

(assert (=> b!7003496 m!7698892))

(declare-fun m!7698948 () Bool)

(assert (=> b!7003484 m!7698948))

(declare-fun m!7698950 () Bool)

(assert (=> b!7003501 m!7698950))

(declare-fun m!7698952 () Bool)

(assert (=> b!7003480 m!7698952))

(declare-fun m!7698954 () Bool)

(assert (=> b!7003480 m!7698954))

(declare-fun m!7698956 () Bool)

(assert (=> b!7003480 m!7698956))

(declare-fun m!7698958 () Bool)

(assert (=> b!7003480 m!7698958))

(declare-fun m!7698960 () Bool)

(assert (=> b!7003480 m!7698960))

(declare-fun m!7698962 () Bool)

(assert (=> b!7003480 m!7698962))

(declare-fun m!7698964 () Bool)

(assert (=> b!7003498 m!7698964))

(declare-fun m!7698966 () Bool)

(assert (=> b!7003498 m!7698966))

(assert (=> b!7003498 m!7698896))

(assert (=> b!7003498 m!7698896))

(assert (=> b!7003498 m!7698944))

(declare-fun m!7698968 () Bool)

(assert (=> b!7003498 m!7698968))

(declare-fun m!7698970 () Bool)

(assert (=> b!7003498 m!7698970))

(assert (=> b!7003498 m!7698942))

(declare-fun m!7698972 () Bool)

(assert (=> b!7003498 m!7698972))

(declare-fun m!7698974 () Bool)

(assert (=> b!7003498 m!7698974))

(declare-fun m!7698976 () Bool)

(assert (=> b!7003498 m!7698976))

(declare-fun m!7698978 () Bool)

(assert (=> b!7003498 m!7698978))

(assert (=> b!7003498 m!7698922))

(assert (=> b!7003498 m!7698892))

(assert (=> b!7003498 m!7698896))

(declare-fun m!7698980 () Bool)

(assert (=> b!7003498 m!7698980))

(assert (=> b!7003498 m!7698896))

(declare-fun m!7698982 () Bool)

(assert (=> start!674016 m!7698982))

(declare-fun m!7698984 () Bool)

(assert (=> start!674016 m!7698984))

(declare-fun m!7698986 () Bool)

(assert (=> start!674016 m!7698986))

(declare-fun m!7698988 () Bool)

(assert (=> b!7003471 m!7698988))

(declare-fun m!7698990 () Bool)

(assert (=> b!7003491 m!7698990))

(declare-fun m!7698992 () Bool)

(assert (=> b!7003482 m!7698992))

(declare-fun m!7698994 () Bool)

(assert (=> b!7003482 m!7698994))

(declare-fun m!7698996 () Bool)

(assert (=> b!7003482 m!7698996))

(declare-fun m!7698998 () Bool)

(assert (=> b!7003482 m!7698998))

(declare-fun m!7699000 () Bool)

(assert (=> b!7003482 m!7699000))

(declare-fun m!7699002 () Bool)

(assert (=> b!7003497 m!7699002))

(declare-fun m!7699004 () Bool)

(assert (=> b!7003497 m!7699004))

(assert (=> b!7003497 m!7698930))

(declare-fun m!7699006 () Bool)

(assert (=> b!7003497 m!7699006))

(assert (=> b!7003476 m!7698926))

(assert (=> b!7003476 m!7698896))

(declare-fun m!7699008 () Bool)

(assert (=> b!7003488 m!7699008))

(declare-fun m!7699010 () Bool)

(assert (=> b!7003469 m!7699010))

(declare-fun m!7699012 () Bool)

(assert (=> b!7003469 m!7699012))

(declare-fun m!7699014 () Bool)

(assert (=> b!7003469 m!7699014))

(declare-fun m!7699016 () Bool)

(assert (=> b!7003469 m!7699016))

(declare-fun m!7699018 () Bool)

(assert (=> b!7003469 m!7699018))

(declare-fun m!7699020 () Bool)

(assert (=> setNonEmpty!48159 m!7699020))

(declare-fun m!7699022 () Bool)

(assert (=> b!7003473 m!7699022))

(declare-fun m!7699024 () Bool)

(assert (=> b!7003473 m!7699024))

(assert (=> b!7003473 m!7698930))

(declare-fun m!7699026 () Bool)

(assert (=> b!7003473 m!7699026))

(declare-fun m!7699028 () Bool)

(assert (=> b!7003473 m!7699028))

(declare-fun m!7699030 () Bool)

(assert (=> b!7003490 m!7699030))

(assert (=> b!7003494 m!7698896))

(declare-fun m!7699032 () Bool)

(assert (=> b!7003494 m!7699032))

(declare-fun m!7699034 () Bool)

(assert (=> b!7003494 m!7699034))

(declare-fun m!7699036 () Bool)

(assert (=> b!7003494 m!7699036))

(assert (=> b!7003494 m!7698896))

(assert (=> b!7003494 m!7698896))

(declare-fun m!7699038 () Bool)

(assert (=> b!7003494 m!7699038))

(check-sat (not b!7003493) (not b!7003495) (not b!7003469) (not b!7003500) (not b!7003494) (not b!7003479) (not b!7003488) (not b!7003502) (not b!7003491) (not b!7003476) (not b!7003496) (not b!7003468) (not b!7003497) (not b!7003501) (not b!7003483) (not b!7003499) (not b!7003472) (not b!7003484) (not b!7003498) (not b!7003486) (not b!7003489) (not b!7003478) (not b!7003482) (not start!674016) (not b!7003477) (not b!7003481) (not b!7003473) (not b!7003485) (not b!7003487) (not b!7003490) (not b!7003474) (not setNonEmpty!48159) (not b!7003480) tp_is_empty!43783)
(check-sat)
