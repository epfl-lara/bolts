; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!682830 () Bool)

(assert start!682830)

(declare-fun b!7049959 () Bool)

(assert (=> b!7049959 true))

(declare-fun b!7049960 () Bool)

(assert (=> b!7049960 true))

(declare-fun b!7049964 () Bool)

(assert (=> b!7049964 true))

(declare-fun b!7049957 () Bool)

(declare-fun e!4238160 () Bool)

(declare-fun tp_is_empty!44279 () Bool)

(declare-fun tp!1938638 () Bool)

(assert (=> b!7049957 (= e!4238160 (and tp_is_empty!44279 tp!1938638))))

(declare-fun b!7049958 () Bool)

(declare-fun e!4238155 () Bool)

(declare-fun tp!1938639 () Bool)

(assert (=> b!7049958 (= e!4238155 tp!1938639)))

(declare-fun e!4238159 () Bool)

(declare-fun e!4238158 () Bool)

(assert (=> b!7049959 (= e!4238159 (not e!4238158))))

(declare-fun res!2878101 () Bool)

(assert (=> b!7049959 (=> res!2878101 e!4238158)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35324 0))(
  ( (C!35325 (val!27364 Int)) )
))
(declare-datatypes ((Regex!17527 0))(
  ( (ElementMatch!17527 (c!1313111 C!35324)) (Concat!26372 (regOne!35566 Regex!17527) (regTwo!35566 Regex!17527)) (EmptyExpr!17527) (Star!17527 (reg!17856 Regex!17527)) (EmptyLang!17527) (Union!17527 (regOne!35567 Regex!17527) (regTwo!35567 Regex!17527)) )
))
(declare-datatypes ((List!68109 0))(
  ( (Nil!67985) (Cons!67985 (h!74433 Regex!17527) (t!381888 List!68109)) )
))
(declare-datatypes ((Context!13046 0))(
  ( (Context!13047 (exprs!7023 List!68109)) )
))
(declare-fun lt!2529132 () (InoxSet Context!13046))

(declare-datatypes ((List!68110 0))(
  ( (Nil!67986) (Cons!67986 (h!74434 C!35324) (t!381889 List!68110)) )
))
(declare-fun s!7408 () List!68110)

(declare-fun matchZipper!3067 ((InoxSet Context!13046) List!68110) Bool)

(assert (=> b!7049959 (= res!2878101 (not (matchZipper!3067 lt!2529132 s!7408)))))

(declare-fun lt!2529128 () Context!13046)

(assert (=> b!7049959 (= lt!2529132 (store ((as const (Array Context!13046 Bool)) false) lt!2529128 true))))

(declare-fun lt!2529137 () (InoxSet Context!13046))

(declare-fun lambda!418669 () Int)

(declare-fun getWitness!1571 ((InoxSet Context!13046) Int) Context!13046)

(assert (=> b!7049959 (= lt!2529128 (getWitness!1571 lt!2529137 lambda!418669))))

(declare-datatypes ((List!68111 0))(
  ( (Nil!67987) (Cons!67987 (h!74435 Context!13046) (t!381890 List!68111)) )
))
(declare-fun lt!2529131 () List!68111)

(declare-fun exists!3492 (List!68111 Int) Bool)

(assert (=> b!7049959 (exists!3492 lt!2529131 lambda!418669)))

(declare-datatypes ((Unit!161742 0))(
  ( (Unit!161743) )
))
(declare-fun lt!2529136 () Unit!161742)

(declare-fun lemmaZipperMatchesExistsMatchingContext!466 (List!68111 List!68110) Unit!161742)

(assert (=> b!7049959 (= lt!2529136 (lemmaZipperMatchesExistsMatchingContext!466 lt!2529131 s!7408))))

(declare-fun toList!10870 ((InoxSet Context!13046)) List!68111)

(assert (=> b!7049959 (= lt!2529131 (toList!10870 lt!2529137))))

(declare-fun e!4238156 () Bool)

(assert (=> b!7049960 (= e!4238158 e!4238156)))

(declare-fun res!2878107 () Bool)

(assert (=> b!7049960 (=> res!2878107 e!4238156)))

(declare-fun lt!2529125 () Context!13046)

(declare-fun z1!570 () (InoxSet Context!13046))

(declare-fun lt!2529135 () Context!13046)

(assert (=> b!7049960 (= res!2878107 (or (not (= lt!2529135 lt!2529128)) (not (select z1!570 lt!2529125))))))

(declare-fun ct2!306 () Context!13046)

(declare-fun ++!15620 (List!68109 List!68109) List!68109)

(assert (=> b!7049960 (= lt!2529135 (Context!13047 (++!15620 (exprs!7023 lt!2529125) (exprs!7023 ct2!306))))))

(declare-fun lt!2529134 () Unit!161742)

(declare-fun lambda!418671 () Int)

(declare-fun lemmaConcatPreservesForall!848 (List!68109 List!68109 Int) Unit!161742)

(assert (=> b!7049960 (= lt!2529134 (lemmaConcatPreservesForall!848 (exprs!7023 lt!2529125) (exprs!7023 ct2!306) lambda!418671))))

(declare-fun lambda!418670 () Int)

(declare-fun mapPost2!368 ((InoxSet Context!13046) Int Context!13046) Context!13046)

(assert (=> b!7049960 (= lt!2529125 (mapPost2!368 z1!570 lambda!418670 lt!2529128))))

(declare-fun b!7049961 () Bool)

(declare-fun e!4238161 () Bool)

(declare-fun lt!2529126 () Bool)

(assert (=> b!7049961 (= e!4238161 lt!2529126)))

(assert (=> b!7049961 (= lt!2529126 true)))

(declare-fun lt!2529133 () (InoxSet Context!13046))

(assert (=> b!7049961 (= lt!2529126 (matchZipper!3067 lt!2529133 Nil!67986))))

(declare-fun lt!2529127 () Unit!161742)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!22 ((InoxSet Context!13046) List!68110) Unit!161742)

(assert (=> b!7049961 (= lt!2529127 (lemmaZipperOfEmptyContextMatchesEmptyString!22 lt!2529133 Nil!67986))))

(assert (=> b!7049961 (= lt!2529133 (store ((as const (Array Context!13046 Bool)) false) lt!2529125 true))))

(declare-fun res!2878104 () Bool)

(assert (=> start!682830 (=> (not res!2878104) (not e!4238159))))

(assert (=> start!682830 (= res!2878104 (matchZipper!3067 lt!2529137 s!7408))))

(declare-fun appendTo!648 ((InoxSet Context!13046) Context!13046) (InoxSet Context!13046))

(assert (=> start!682830 (= lt!2529137 (appendTo!648 z1!570 ct2!306))))

(assert (=> start!682830 e!4238159))

(declare-fun condSetEmpty!49572 () Bool)

(assert (=> start!682830 (= condSetEmpty!49572 (= z1!570 ((as const (Array Context!13046 Bool)) false)))))

(declare-fun setRes!49572 () Bool)

(assert (=> start!682830 setRes!49572))

(declare-fun e!4238162 () Bool)

(declare-fun inv!86676 (Context!13046) Bool)

(assert (=> start!682830 (and (inv!86676 ct2!306) e!4238162)))

(assert (=> start!682830 e!4238160))

(declare-fun b!7049962 () Bool)

(declare-fun e!4238154 () Bool)

(assert (=> b!7049962 (= e!4238156 e!4238154)))

(declare-fun res!2878106 () Bool)

(assert (=> b!7049962 (=> res!2878106 e!4238154)))

(declare-fun lt!2529130 () (InoxSet Context!13046))

(assert (=> b!7049962 (= res!2878106 (not (= lt!2529130 lt!2529132)))))

(assert (=> b!7049962 (= lt!2529130 (store ((as const (Array Context!13046 Bool)) false) lt!2529135 true))))

(declare-fun lt!2529129 () Unit!161742)

(assert (=> b!7049962 (= lt!2529129 (lemmaConcatPreservesForall!848 (exprs!7023 lt!2529125) (exprs!7023 ct2!306) lambda!418671))))

(declare-fun b!7049963 () Bool)

(declare-fun res!2878105 () Bool)

(assert (=> b!7049963 (=> res!2878105 e!4238161)))

(assert (=> b!7049963 (= res!2878105 (not (matchZipper!3067 (store ((as const (Array Context!13046 Bool)) false) ct2!306 true) s!7408)))))

(declare-fun e!4238157 () Bool)

(assert (=> b!7049964 (= e!4238154 e!4238157)))

(declare-fun res!2878109 () Bool)

(assert (=> b!7049964 (=> res!2878109 e!4238157)))

(declare-fun lt!2529139 () (InoxSet Context!13046))

(declare-fun derivationStepZipper!2983 ((InoxSet Context!13046) C!35324) (InoxSet Context!13046))

(assert (=> b!7049964 (= res!2878109 (not (= (derivationStepZipper!2983 lt!2529130 (h!74434 s!7408)) lt!2529139)))))

(declare-fun lambda!418672 () Int)

(declare-fun flatMap!2474 ((InoxSet Context!13046) Int) (InoxSet Context!13046))

(declare-fun derivationStepZipperUp!2137 (Context!13046 C!35324) (InoxSet Context!13046))

(assert (=> b!7049964 (= (flatMap!2474 lt!2529130 lambda!418672) (derivationStepZipperUp!2137 lt!2529135 (h!74434 s!7408)))))

(declare-fun lt!2529138 () Unit!161742)

(declare-fun lemmaFlatMapOnSingletonSet!1988 ((InoxSet Context!13046) Context!13046 Int) Unit!161742)

(assert (=> b!7049964 (= lt!2529138 (lemmaFlatMapOnSingletonSet!1988 lt!2529130 lt!2529135 lambda!418672))))

(assert (=> b!7049964 (= lt!2529139 (derivationStepZipperUp!2137 lt!2529135 (h!74434 s!7408)))))

(declare-fun lt!2529124 () Unit!161742)

(assert (=> b!7049964 (= lt!2529124 (lemmaConcatPreservesForall!848 (exprs!7023 lt!2529125) (exprs!7023 ct2!306) lambda!418671))))

(declare-fun setIsEmpty!49572 () Bool)

(assert (=> setIsEmpty!49572 setRes!49572))

(declare-fun b!7049965 () Bool)

(declare-fun tp!1938637 () Bool)

(assert (=> b!7049965 (= e!4238162 tp!1938637)))

(declare-fun b!7049966 () Bool)

(declare-fun res!2878108 () Bool)

(assert (=> b!7049966 (=> (not res!2878108) (not e!4238159))))

(get-info :version)

(assert (=> b!7049966 (= res!2878108 ((_ is Cons!67986) s!7408))))

(declare-fun b!7049967 () Bool)

(declare-fun res!2878103 () Bool)

(assert (=> b!7049967 (=> res!2878103 e!4238158)))

(assert (=> b!7049967 (= res!2878103 (not (select lt!2529137 lt!2529128)))))

(declare-fun b!7049968 () Bool)

(assert (=> b!7049968 (= e!4238157 e!4238161)))

(declare-fun res!2878110 () Bool)

(assert (=> b!7049968 (=> res!2878110 e!4238161)))

(assert (=> b!7049968 (= res!2878110 (not (= lt!2529135 ct2!306)))))

(declare-fun lt!2529140 () Unit!161742)

(assert (=> b!7049968 (= lt!2529140 (lemmaConcatPreservesForall!848 (exprs!7023 lt!2529125) (exprs!7023 ct2!306) lambda!418671))))

(declare-fun b!7049969 () Bool)

(declare-fun res!2878102 () Bool)

(assert (=> b!7049969 (=> res!2878102 e!4238157)))

(assert (=> b!7049969 (= res!2878102 ((_ is Cons!67985) (exprs!7023 lt!2529125)))))

(declare-fun setNonEmpty!49572 () Bool)

(declare-fun tp!1938636 () Bool)

(declare-fun setElem!49572 () Context!13046)

(assert (=> setNonEmpty!49572 (= setRes!49572 (and tp!1938636 (inv!86676 setElem!49572) e!4238155))))

(declare-fun setRest!49572 () (InoxSet Context!13046))

(assert (=> setNonEmpty!49572 (= z1!570 ((_ map or) (store ((as const (Array Context!13046 Bool)) false) setElem!49572 true) setRest!49572))))

(assert (= (and start!682830 res!2878104) b!7049966))

(assert (= (and b!7049966 res!2878108) b!7049959))

(assert (= (and b!7049959 (not res!2878101)) b!7049967))

(assert (= (and b!7049967 (not res!2878103)) b!7049960))

(assert (= (and b!7049960 (not res!2878107)) b!7049962))

(assert (= (and b!7049962 (not res!2878106)) b!7049964))

(assert (= (and b!7049964 (not res!2878109)) b!7049969))

(assert (= (and b!7049969 (not res!2878102)) b!7049968))

(assert (= (and b!7049968 (not res!2878110)) b!7049963))

(assert (= (and b!7049963 (not res!2878105)) b!7049961))

(assert (= (and start!682830 condSetEmpty!49572) setIsEmpty!49572))

(assert (= (and start!682830 (not condSetEmpty!49572)) setNonEmpty!49572))

(assert (= setNonEmpty!49572 b!7049958))

(assert (= start!682830 b!7049965))

(assert (= (and start!682830 ((_ is Cons!67986) s!7408)) b!7049957))

(declare-fun m!7765592 () Bool)

(assert (=> b!7049963 m!7765592))

(assert (=> b!7049963 m!7765592))

(declare-fun m!7765594 () Bool)

(assert (=> b!7049963 m!7765594))

(declare-fun m!7765596 () Bool)

(assert (=> b!7049960 m!7765596))

(declare-fun m!7765598 () Bool)

(assert (=> b!7049960 m!7765598))

(declare-fun m!7765600 () Bool)

(assert (=> b!7049960 m!7765600))

(declare-fun m!7765602 () Bool)

(assert (=> b!7049960 m!7765602))

(declare-fun m!7765604 () Bool)

(assert (=> start!682830 m!7765604))

(declare-fun m!7765606 () Bool)

(assert (=> start!682830 m!7765606))

(declare-fun m!7765608 () Bool)

(assert (=> start!682830 m!7765608))

(declare-fun m!7765610 () Bool)

(assert (=> b!7049961 m!7765610))

(declare-fun m!7765612 () Bool)

(assert (=> b!7049961 m!7765612))

(declare-fun m!7765614 () Bool)

(assert (=> b!7049961 m!7765614))

(declare-fun m!7765616 () Bool)

(assert (=> setNonEmpty!49572 m!7765616))

(declare-fun m!7765618 () Bool)

(assert (=> b!7049962 m!7765618))

(assert (=> b!7049962 m!7765600))

(assert (=> b!7049964 m!7765600))

(declare-fun m!7765620 () Bool)

(assert (=> b!7049964 m!7765620))

(declare-fun m!7765622 () Bool)

(assert (=> b!7049964 m!7765622))

(declare-fun m!7765624 () Bool)

(assert (=> b!7049964 m!7765624))

(declare-fun m!7765626 () Bool)

(assert (=> b!7049964 m!7765626))

(declare-fun m!7765628 () Bool)

(assert (=> b!7049967 m!7765628))

(declare-fun m!7765630 () Bool)

(assert (=> b!7049959 m!7765630))

(declare-fun m!7765632 () Bool)

(assert (=> b!7049959 m!7765632))

(declare-fun m!7765634 () Bool)

(assert (=> b!7049959 m!7765634))

(declare-fun m!7765636 () Bool)

(assert (=> b!7049959 m!7765636))

(declare-fun m!7765638 () Bool)

(assert (=> b!7049959 m!7765638))

(declare-fun m!7765640 () Bool)

(assert (=> b!7049959 m!7765640))

(assert (=> b!7049968 m!7765600))

(check-sat (not b!7049962) tp_is_empty!44279 (not b!7049957) (not b!7049963) (not b!7049965) (not b!7049961) (not b!7049968) (not b!7049964) (not b!7049959) (not start!682830) (not setNonEmpty!49572) (not b!7049960) (not b!7049958))
(check-sat)
