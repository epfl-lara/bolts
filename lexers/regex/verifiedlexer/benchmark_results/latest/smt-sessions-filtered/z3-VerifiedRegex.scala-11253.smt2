; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!590716 () Bool)

(assert start!590716)

(declare-fun b!5741181 () Bool)

(assert (=> b!5741181 true))

(assert (=> b!5741181 true))

(declare-fun lambda!311458 () Int)

(declare-fun lambda!311457 () Int)

(assert (=> b!5741181 (not (= lambda!311458 lambda!311457))))

(assert (=> b!5741181 true))

(assert (=> b!5741181 true))

(declare-fun b!5741177 () Bool)

(assert (=> b!5741177 true))

(declare-fun b!5741147 () Bool)

(declare-fun res!2424981 () Bool)

(declare-fun e!3529048 () Bool)

(assert (=> b!5741147 (=> res!2424981 e!3529048)))

(declare-datatypes ((C!31776 0))(
  ( (C!31777 (val!25590 Int)) )
))
(declare-datatypes ((Regex!15753 0))(
  ( (ElementMatch!15753 (c!1013293 C!31776)) (Concat!24598 (regOne!32018 Regex!15753) (regTwo!32018 Regex!15753)) (EmptyExpr!15753) (Star!15753 (reg!16082 Regex!15753)) (EmptyLang!15753) (Union!15753 (regOne!32019 Regex!15753) (regTwo!32019 Regex!15753)) )
))
(declare-fun r!7292 () Regex!15753)

(get-info :version)

(assert (=> b!5741147 (= res!2424981 (or ((_ is Concat!24598) (regOne!32018 r!7292)) (not ((_ is Star!15753) (regOne!32018 r!7292)))))))

(declare-fun b!5741148 () Bool)

(declare-fun res!2424978 () Bool)

(declare-fun e!3529030 () Bool)

(assert (=> b!5741148 (=> res!2424978 e!3529030)))

(declare-datatypes ((List!63558 0))(
  ( (Nil!63434) (Cons!63434 (h!69882 Regex!15753) (t!376886 List!63558)) )
))
(declare-datatypes ((Context!10274 0))(
  ( (Context!10275 (exprs!5637 List!63558)) )
))
(declare-datatypes ((List!63559 0))(
  ( (Nil!63435) (Cons!63435 (h!69883 Context!10274) (t!376887 List!63559)) )
))
(declare-fun zl!343 () List!63559)

(declare-fun isEmpty!35317 (List!63558) Bool)

(assert (=> b!5741148 (= res!2424978 (isEmpty!35317 (t!376886 (exprs!5637 (h!69883 zl!343)))))))

(declare-fun b!5741149 () Bool)

(declare-fun e!3529047 () Bool)

(assert (=> b!5741149 (= e!3529048 e!3529047)))

(declare-fun res!2424984 () Bool)

(assert (=> b!5741149 (=> res!2424984 e!3529047)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2285751 () (InoxSet Context!10274))

(declare-fun lt!2285754 () (InoxSet Context!10274))

(assert (=> b!5741149 (= res!2424984 (not (= lt!2285751 lt!2285754)))))

(declare-datatypes ((List!63560 0))(
  ( (Nil!63436) (Cons!63436 (h!69884 C!31776) (t!376888 List!63560)) )
))
(declare-fun s!2326 () List!63560)

(declare-fun lt!2285747 () Context!10274)

(declare-fun derivationStepZipperDown!1095 (Regex!15753 Context!10274 C!31776) (InoxSet Context!10274))

(assert (=> b!5741149 (= lt!2285754 (derivationStepZipperDown!1095 (reg!16082 (regOne!32018 r!7292)) lt!2285747 (h!69884 s!2326)))))

(declare-fun lt!2285753 () List!63558)

(assert (=> b!5741149 (= lt!2285747 (Context!10275 lt!2285753))))

(declare-fun lt!2285752 () Regex!15753)

(assert (=> b!5741149 (= lt!2285753 (Cons!63434 lt!2285752 (t!376886 (exprs!5637 (h!69883 zl!343)))))))

(assert (=> b!5741149 (= lt!2285752 (Star!15753 (reg!16082 (regOne!32018 r!7292))))))

(declare-fun b!5741150 () Bool)

(declare-fun e!3529037 () Bool)

(assert (=> b!5741150 (= e!3529047 e!3529037)))

(declare-fun res!2424966 () Bool)

(assert (=> b!5741150 (=> res!2424966 e!3529037)))

(declare-fun lt!2285738 () (InoxSet Context!10274))

(assert (=> b!5741150 (= res!2424966 (not (= lt!2285738 lt!2285754)))))

(declare-fun lt!2285732 () Context!10274)

(declare-fun lambda!311459 () Int)

(declare-fun lt!2285730 () (InoxSet Context!10274))

(declare-fun flatMap!1366 ((InoxSet Context!10274) Int) (InoxSet Context!10274))

(declare-fun derivationStepZipperUp!1021 (Context!10274 C!31776) (InoxSet Context!10274))

(assert (=> b!5741150 (= (flatMap!1366 lt!2285730 lambda!311459) (derivationStepZipperUp!1021 lt!2285732 (h!69884 s!2326)))))

(declare-datatypes ((Unit!156544 0))(
  ( (Unit!156545) )
))
(declare-fun lt!2285733 () Unit!156544)

(declare-fun lemmaFlatMapOnSingletonSet!898 ((InoxSet Context!10274) Context!10274 Int) Unit!156544)

(assert (=> b!5741150 (= lt!2285733 (lemmaFlatMapOnSingletonSet!898 lt!2285730 lt!2285732 lambda!311459))))

(declare-fun lt!2285722 () (InoxSet Context!10274))

(assert (=> b!5741150 (= lt!2285722 (derivationStepZipperUp!1021 lt!2285732 (h!69884 s!2326)))))

(declare-fun derivationStepZipper!1836 ((InoxSet Context!10274) C!31776) (InoxSet Context!10274))

(assert (=> b!5741150 (= lt!2285738 (derivationStepZipper!1836 lt!2285730 (h!69884 s!2326)))))

(assert (=> b!5741150 (= lt!2285730 (store ((as const (Array Context!10274 Bool)) false) lt!2285732 true))))

(assert (=> b!5741150 (= lt!2285732 (Context!10275 (Cons!63434 (reg!16082 (regOne!32018 r!7292)) lt!2285753)))))

(declare-fun b!5741152 () Bool)

(declare-fun res!2424968 () Bool)

(assert (=> b!5741152 (=> res!2424968 e!3529037)))

(declare-fun lt!2285719 () Regex!15753)

(assert (=> b!5741152 (= res!2424968 (not (= lt!2285719 r!7292)))))

(declare-fun b!5741153 () Bool)

(declare-fun e!3529032 () Bool)

(declare-fun e!3529038 () Bool)

(assert (=> b!5741153 (= e!3529032 e!3529038)))

(declare-fun res!2424972 () Bool)

(assert (=> b!5741153 (=> (not res!2424972) (not e!3529038))))

(assert (=> b!5741153 (= res!2424972 (= r!7292 lt!2285719))))

(declare-fun unfocusZipper!1495 (List!63559) Regex!15753)

(assert (=> b!5741153 (= lt!2285719 (unfocusZipper!1495 zl!343))))

(declare-fun b!5741154 () Bool)

(declare-fun res!2424974 () Bool)

(declare-fun e!3529033 () Bool)

(assert (=> b!5741154 (=> res!2424974 e!3529033)))

(declare-fun lt!2285735 () (InoxSet Context!10274))

(declare-fun matchZipper!1891 ((InoxSet Context!10274) List!63560) Bool)

(assert (=> b!5741154 (= res!2424974 (not (matchZipper!1891 lt!2285735 (t!376888 s!2326))))))

(declare-fun b!5741155 () Bool)

(declare-fun res!2424987 () Bool)

(declare-fun e!3529042 () Bool)

(assert (=> b!5741155 (=> res!2424987 e!3529042)))

(declare-fun generalisedUnion!1616 (List!63558) Regex!15753)

(declare-fun unfocusZipperList!1181 (List!63559) List!63558)

(assert (=> b!5741155 (= res!2424987 (not (= r!7292 (generalisedUnion!1616 (unfocusZipperList!1181 zl!343)))))))

(declare-fun b!5741156 () Bool)

(declare-fun e!3529044 () Unit!156544)

(declare-fun Unit!156546 () Unit!156544)

(assert (=> b!5741156 (= e!3529044 Unit!156546)))

(declare-fun lt!2285723 () Unit!156544)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!778 ((InoxSet Context!10274) (InoxSet Context!10274) List!63560) Unit!156544)

(assert (=> b!5741156 (= lt!2285723 (lemmaZipperConcatMatchesSameAsBothZippers!778 lt!2285751 lt!2285735 (t!376888 s!2326)))))

(declare-fun res!2424977 () Bool)

(assert (=> b!5741156 (= res!2424977 (matchZipper!1891 lt!2285751 (t!376888 s!2326)))))

(declare-fun e!3529034 () Bool)

(assert (=> b!5741156 (=> res!2424977 e!3529034)))

(assert (=> b!5741156 (= (matchZipper!1891 ((_ map or) lt!2285751 lt!2285735) (t!376888 s!2326)) e!3529034)))

(declare-fun b!5741157 () Bool)

(declare-fun res!2424973 () Bool)

(assert (=> b!5741157 (=> res!2424973 e!3529042)))

(assert (=> b!5741157 (= res!2424973 (or ((_ is EmptyExpr!15753) r!7292) ((_ is EmptyLang!15753) r!7292) ((_ is ElementMatch!15753) r!7292) ((_ is Union!15753) r!7292) (not ((_ is Concat!24598) r!7292))))))

(declare-fun b!5741158 () Bool)

(declare-fun res!2424986 () Bool)

(declare-fun e!3529041 () Bool)

(assert (=> b!5741158 (=> res!2424986 e!3529041)))

(declare-fun lt!2285728 () Regex!15753)

(assert (=> b!5741158 (= res!2424986 (not (= (unfocusZipper!1495 (Cons!63435 lt!2285747 Nil!63435)) lt!2285728)))))

(declare-fun b!5741159 () Bool)

(declare-fun res!2424990 () Bool)

(assert (=> b!5741159 (=> res!2424990 e!3529033)))

(declare-fun lt!2285743 () Bool)

(assert (=> b!5741159 (= res!2424990 lt!2285743)))

(declare-fun b!5741160 () Bool)

(assert (=> b!5741160 (= e!3529038 (not e!3529042))))

(declare-fun res!2424982 () Bool)

(assert (=> b!5741160 (=> res!2424982 e!3529042)))

(assert (=> b!5741160 (= res!2424982 (not ((_ is Cons!63435) zl!343)))))

(declare-fun lt!2285737 () Bool)

(declare-fun matchRSpec!2856 (Regex!15753 List!63560) Bool)

(assert (=> b!5741160 (= lt!2285737 (matchRSpec!2856 r!7292 s!2326))))

(declare-fun matchR!7938 (Regex!15753 List!63560) Bool)

(assert (=> b!5741160 (= lt!2285737 (matchR!7938 r!7292 s!2326))))

(declare-fun lt!2285731 () Unit!156544)

(declare-fun mainMatchTheorem!2856 (Regex!15753 List!63560) Unit!156544)

(assert (=> b!5741160 (= lt!2285731 (mainMatchTheorem!2856 r!7292 s!2326))))

(declare-fun b!5741161 () Bool)

(declare-fun e!3529046 () Bool)

(declare-fun tp!1587455 () Bool)

(declare-fun tp!1587457 () Bool)

(assert (=> b!5741161 (= e!3529046 (and tp!1587455 tp!1587457))))

(declare-fun b!5741162 () Bool)

(declare-fun res!2424971 () Bool)

(assert (=> b!5741162 (=> res!2424971 e!3529042)))

(assert (=> b!5741162 (= res!2424971 (not ((_ is Cons!63434) (exprs!5637 (h!69883 zl!343)))))))

(declare-fun b!5741163 () Bool)

(declare-fun res!2424967 () Bool)

(declare-fun e!3529029 () Bool)

(assert (=> b!5741163 (=> res!2424967 e!3529029)))

(declare-fun lt!2285745 () Bool)

(assert (=> b!5741163 (= res!2424967 (not lt!2285745))))

(declare-fun b!5741164 () Bool)

(assert (=> b!5741164 (= e!3529033 true)))

(declare-fun lt!2285724 () Context!10274)

(declare-fun lt!2285742 () (InoxSet Context!10274))

(assert (=> b!5741164 (= (flatMap!1366 lt!2285742 lambda!311459) (derivationStepZipperUp!1021 lt!2285724 (h!69884 s!2326)))))

(declare-fun lt!2285726 () Unit!156544)

(assert (=> b!5741164 (= lt!2285726 (lemmaFlatMapOnSingletonSet!898 lt!2285742 lt!2285724 lambda!311459))))

(assert (=> b!5741164 (= lt!2285742 (store ((as const (Array Context!10274 Bool)) false) lt!2285724 true))))

(declare-fun b!5741165 () Bool)

(declare-fun tp_is_empty!40759 () Bool)

(assert (=> b!5741165 (= e!3529046 tp_is_empty!40759)))

(declare-fun b!5741166 () Bool)

(declare-fun tp!1587459 () Bool)

(declare-fun tp!1587458 () Bool)

(assert (=> b!5741166 (= e!3529046 (and tp!1587459 tp!1587458))))

(declare-fun b!5741167 () Bool)

(declare-fun e!3529036 () Bool)

(assert (=> b!5741167 (= e!3529036 (not (matchZipper!1891 lt!2285735 (t!376888 s!2326))))))

(declare-fun b!5741168 () Bool)

(declare-fun res!2424965 () Bool)

(assert (=> b!5741168 (=> res!2424965 e!3529029)))

(declare-fun z!1189 () (InoxSet Context!10274))

(assert (=> b!5741168 (= res!2424965 (not (matchZipper!1891 z!1189 s!2326)))))

(declare-fun b!5741169 () Bool)

(declare-fun res!2424985 () Bool)

(assert (=> b!5741169 (=> (not res!2424985) (not e!3529032))))

(declare-fun toList!9537 ((InoxSet Context!10274)) List!63559)

(assert (=> b!5741169 (= res!2424985 (= (toList!9537 z!1189) zl!343))))

(declare-fun b!5741170 () Bool)

(declare-fun e!3529039 () Bool)

(declare-fun nullable!5785 (Regex!15753) Bool)

(assert (=> b!5741170 (= e!3529039 (nullable!5785 (regOne!32018 (regOne!32018 r!7292))))))

(declare-fun b!5741171 () Bool)

(assert (=> b!5741171 (= e!3529029 e!3529033)))

(declare-fun res!2424975 () Bool)

(assert (=> b!5741171 (=> res!2424975 e!3529033)))

(assert (=> b!5741171 (= res!2424975 e!3529036)))

(declare-fun res!2424994 () Bool)

(assert (=> b!5741171 (=> (not res!2424994) (not e!3529036))))

(assert (=> b!5741171 (= res!2424994 (not lt!2285743))))

(assert (=> b!5741171 (= lt!2285743 (matchZipper!1891 lt!2285751 (t!376888 s!2326)))))

(declare-fun b!5741172 () Bool)

(declare-fun Unit!156547 () Unit!156544)

(assert (=> b!5741172 (= e!3529044 Unit!156547)))

(declare-fun b!5741151 () Bool)

(declare-fun e!3529045 () Bool)

(declare-fun tp!1587462 () Bool)

(assert (=> b!5741151 (= e!3529045 tp!1587462)))

(declare-fun res!2424988 () Bool)

(assert (=> start!590716 (=> (not res!2424988) (not e!3529032))))

(declare-fun validRegex!7489 (Regex!15753) Bool)

(assert (=> start!590716 (= res!2424988 (validRegex!7489 r!7292))))

(assert (=> start!590716 e!3529032))

(assert (=> start!590716 e!3529046))

(declare-fun condSetEmpty!38539 () Bool)

(assert (=> start!590716 (= condSetEmpty!38539 (= z!1189 ((as const (Array Context!10274 Bool)) false)))))

(declare-fun setRes!38539 () Bool)

(assert (=> start!590716 setRes!38539))

(declare-fun e!3529028 () Bool)

(assert (=> start!590716 e!3529028))

(declare-fun e!3529040 () Bool)

(assert (=> start!590716 e!3529040))

(declare-fun b!5741173 () Bool)

(declare-fun e!3529035 () Bool)

(declare-fun e!3529043 () Bool)

(assert (=> b!5741173 (= e!3529035 e!3529043)))

(declare-fun res!2424980 () Bool)

(assert (=> b!5741173 (=> res!2424980 e!3529043)))

(declare-fun lt!2285720 () Regex!15753)

(assert (=> b!5741173 (= res!2424980 (not (= (unfocusZipper!1495 (Cons!63435 lt!2285732 Nil!63435)) lt!2285720)))))

(assert (=> b!5741173 (= lt!2285720 (Concat!24598 (reg!16082 (regOne!32018 r!7292)) lt!2285728))))

(declare-fun b!5741174 () Bool)

(declare-fun res!2424989 () Bool)

(assert (=> b!5741174 (=> res!2424989 e!3529048)))

(assert (=> b!5741174 (= res!2424989 e!3529039)))

(declare-fun res!2424991 () Bool)

(assert (=> b!5741174 (=> (not res!2424991) (not e!3529039))))

(assert (=> b!5741174 (= res!2424991 ((_ is Concat!24598) (regOne!32018 r!7292)))))

(declare-fun b!5741175 () Bool)

(declare-fun tp!1587461 () Bool)

(assert (=> b!5741175 (= e!3529046 tp!1587461)))

(declare-fun b!5741176 () Bool)

(declare-fun e!3529031 () Bool)

(declare-fun tp!1587453 () Bool)

(assert (=> b!5741176 (= e!3529031 tp!1587453)))

(declare-fun setIsEmpty!38539 () Bool)

(assert (=> setIsEmpty!38539 setRes!38539))

(assert (=> b!5741177 (= e!3529030 e!3529048)))

(declare-fun res!2424970 () Bool)

(assert (=> b!5741177 (=> res!2424970 e!3529048)))

(assert (=> b!5741177 (= res!2424970 (or (and ((_ is ElementMatch!15753) (regOne!32018 r!7292)) (= (c!1013293 (regOne!32018 r!7292)) (h!69884 s!2326))) ((_ is Union!15753) (regOne!32018 r!7292))))))

(declare-fun lt!2285736 () Unit!156544)

(assert (=> b!5741177 (= lt!2285736 e!3529044)))

(declare-fun c!1013292 () Bool)

(assert (=> b!5741177 (= c!1013292 lt!2285745)))

(assert (=> b!5741177 (= lt!2285745 (nullable!5785 (h!69882 (exprs!5637 (h!69883 zl!343)))))))

(assert (=> b!5741177 (= (flatMap!1366 z!1189 lambda!311459) (derivationStepZipperUp!1021 (h!69883 zl!343) (h!69884 s!2326)))))

(declare-fun lt!2285748 () Unit!156544)

(assert (=> b!5741177 (= lt!2285748 (lemmaFlatMapOnSingletonSet!898 z!1189 (h!69883 zl!343) lambda!311459))))

(assert (=> b!5741177 (= lt!2285735 (derivationStepZipperUp!1021 lt!2285724 (h!69884 s!2326)))))

(assert (=> b!5741177 (= lt!2285751 (derivationStepZipperDown!1095 (h!69882 (exprs!5637 (h!69883 zl!343))) lt!2285724 (h!69884 s!2326)))))

(assert (=> b!5741177 (= lt!2285724 (Context!10275 (t!376886 (exprs!5637 (h!69883 zl!343)))))))

(declare-fun lt!2285744 () (InoxSet Context!10274))

(assert (=> b!5741177 (= lt!2285744 (derivationStepZipperUp!1021 (Context!10275 (Cons!63434 (h!69882 (exprs!5637 (h!69883 zl!343))) (t!376886 (exprs!5637 (h!69883 zl!343))))) (h!69884 s!2326)))))

(declare-fun b!5741178 () Bool)

(assert (=> b!5741178 (= e!3529043 e!3529041)))

(declare-fun res!2424983 () Bool)

(assert (=> b!5741178 (=> res!2424983 e!3529041)))

(declare-fun lt!2285749 () Context!10274)

(assert (=> b!5741178 (= res!2424983 (not (= (unfocusZipper!1495 (Cons!63435 lt!2285749 Nil!63435)) (reg!16082 (regOne!32018 r!7292)))))))

(declare-fun lt!2285746 () (InoxSet Context!10274))

(assert (=> b!5741178 (= (flatMap!1366 lt!2285746 lambda!311459) (derivationStepZipperUp!1021 lt!2285747 (h!69884 s!2326)))))

(declare-fun lt!2285725 () Unit!156544)

(assert (=> b!5741178 (= lt!2285725 (lemmaFlatMapOnSingletonSet!898 lt!2285746 lt!2285747 lambda!311459))))

(declare-fun lt!2285741 () (InoxSet Context!10274))

(assert (=> b!5741178 (= (flatMap!1366 lt!2285741 lambda!311459) (derivationStepZipperUp!1021 lt!2285749 (h!69884 s!2326)))))

(declare-fun lt!2285721 () Unit!156544)

(assert (=> b!5741178 (= lt!2285721 (lemmaFlatMapOnSingletonSet!898 lt!2285741 lt!2285749 lambda!311459))))

(declare-fun lt!2285750 () (InoxSet Context!10274))

(assert (=> b!5741178 (= lt!2285750 (derivationStepZipperUp!1021 lt!2285747 (h!69884 s!2326)))))

(declare-fun lt!2285740 () (InoxSet Context!10274))

(assert (=> b!5741178 (= lt!2285740 (derivationStepZipperUp!1021 lt!2285749 (h!69884 s!2326)))))

(assert (=> b!5741178 (= lt!2285746 (store ((as const (Array Context!10274 Bool)) false) lt!2285747 true))))

(assert (=> b!5741178 (= lt!2285741 (store ((as const (Array Context!10274 Bool)) false) lt!2285749 true))))

(assert (=> b!5741178 (= lt!2285749 (Context!10275 (Cons!63434 (reg!16082 (regOne!32018 r!7292)) Nil!63434)))))

(declare-fun tp!1587456 () Bool)

(declare-fun b!5741179 () Bool)

(declare-fun inv!82629 (Context!10274) Bool)

(assert (=> b!5741179 (= e!3529028 (and (inv!82629 (h!69883 zl!343)) e!3529031 tp!1587456))))

(declare-fun b!5741180 () Bool)

(assert (=> b!5741180 (= e!3529041 e!3529029)))

(declare-fun res!2424992 () Bool)

(assert (=> b!5741180 (=> res!2424992 e!3529029)))

(assert (=> b!5741180 (= res!2424992 lt!2285737)))

(assert (=> b!5741180 (= (matchR!7938 lt!2285720 s!2326) (matchRSpec!2856 lt!2285720 s!2326))))

(declare-fun lt!2285739 () Unit!156544)

(assert (=> b!5741180 (= lt!2285739 (mainMatchTheorem!2856 lt!2285720 s!2326))))

(declare-fun setElem!38539 () Context!10274)

(declare-fun setNonEmpty!38539 () Bool)

(declare-fun tp!1587454 () Bool)

(assert (=> setNonEmpty!38539 (= setRes!38539 (and tp!1587454 (inv!82629 setElem!38539) e!3529045))))

(declare-fun setRest!38539 () (InoxSet Context!10274))

(assert (=> setNonEmpty!38539 (= z!1189 ((_ map or) (store ((as const (Array Context!10274 Bool)) false) setElem!38539 true) setRest!38539))))

(assert (=> b!5741181 (= e!3529042 e!3529030)))

(declare-fun res!2424995 () Bool)

(assert (=> b!5741181 (=> res!2424995 e!3529030)))

(declare-fun lt!2285727 () Bool)

(assert (=> b!5741181 (= res!2424995 (or (not (= lt!2285737 lt!2285727)) ((_ is Nil!63436) s!2326)))))

(declare-fun Exists!2853 (Int) Bool)

(assert (=> b!5741181 (= (Exists!2853 lambda!311457) (Exists!2853 lambda!311458))))

(declare-fun lt!2285734 () Unit!156544)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1482 (Regex!15753 Regex!15753 List!63560) Unit!156544)

(assert (=> b!5741181 (= lt!2285734 (lemmaExistCutMatchRandMatchRSpecEquivalent!1482 (regOne!32018 r!7292) (regTwo!32018 r!7292) s!2326))))

(assert (=> b!5741181 (= lt!2285727 (Exists!2853 lambda!311457))))

(declare-datatypes ((tuple2!65700 0))(
  ( (tuple2!65701 (_1!36153 List!63560) (_2!36153 List!63560)) )
))
(declare-datatypes ((Option!15762 0))(
  ( (None!15761) (Some!15761 (v!51816 tuple2!65700)) )
))
(declare-fun isDefined!12465 (Option!15762) Bool)

(declare-fun findConcatSeparation!2176 (Regex!15753 Regex!15753 List!63560 List!63560 List!63560) Option!15762)

(assert (=> b!5741181 (= lt!2285727 (isDefined!12465 (findConcatSeparation!2176 (regOne!32018 r!7292) (regTwo!32018 r!7292) Nil!63436 s!2326 s!2326)))))

(declare-fun lt!2285729 () Unit!156544)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1940 (Regex!15753 Regex!15753 List!63560) Unit!156544)

(assert (=> b!5741181 (= lt!2285729 (lemmaFindConcatSeparationEquivalentToExists!1940 (regOne!32018 r!7292) (regTwo!32018 r!7292) s!2326))))

(declare-fun b!5741182 () Bool)

(declare-fun res!2424969 () Bool)

(assert (=> b!5741182 (=> res!2424969 e!3529037)))

(assert (=> b!5741182 (= res!2424969 (not (= (matchZipper!1891 lt!2285730 s!2326) (matchZipper!1891 lt!2285738 (t!376888 s!2326)))))))

(declare-fun b!5741183 () Bool)

(assert (=> b!5741183 (= e!3529037 e!3529035)))

(declare-fun res!2424993 () Bool)

(assert (=> b!5741183 (=> res!2424993 e!3529035)))

(assert (=> b!5741183 (= res!2424993 (not (= r!7292 lt!2285728)))))

(assert (=> b!5741183 (= lt!2285728 (Concat!24598 lt!2285752 (regTwo!32018 r!7292)))))

(declare-fun b!5741184 () Bool)

(declare-fun res!2424979 () Bool)

(assert (=> b!5741184 (=> res!2424979 e!3529042)))

(declare-fun isEmpty!35318 (List!63559) Bool)

(assert (=> b!5741184 (= res!2424979 (not (isEmpty!35318 (t!376887 zl!343))))))

(declare-fun b!5741185 () Bool)

(assert (=> b!5741185 (= e!3529034 (matchZipper!1891 lt!2285735 (t!376888 s!2326)))))

(declare-fun b!5741186 () Bool)

(declare-fun tp!1587460 () Bool)

(assert (=> b!5741186 (= e!3529040 (and tp_is_empty!40759 tp!1587460))))

(declare-fun b!5741187 () Bool)

(declare-fun res!2424976 () Bool)

(assert (=> b!5741187 (=> res!2424976 e!3529042)))

(declare-fun generalisedConcat!1368 (List!63558) Regex!15753)

(assert (=> b!5741187 (= res!2424976 (not (= r!7292 (generalisedConcat!1368 (exprs!5637 (h!69883 zl!343))))))))

(assert (= (and start!590716 res!2424988) b!5741169))

(assert (= (and b!5741169 res!2424985) b!5741153))

(assert (= (and b!5741153 res!2424972) b!5741160))

(assert (= (and b!5741160 (not res!2424982)) b!5741184))

(assert (= (and b!5741184 (not res!2424979)) b!5741187))

(assert (= (and b!5741187 (not res!2424976)) b!5741162))

(assert (= (and b!5741162 (not res!2424971)) b!5741155))

(assert (= (and b!5741155 (not res!2424987)) b!5741157))

(assert (= (and b!5741157 (not res!2424973)) b!5741181))

(assert (= (and b!5741181 (not res!2424995)) b!5741148))

(assert (= (and b!5741148 (not res!2424978)) b!5741177))

(assert (= (and b!5741177 c!1013292) b!5741156))

(assert (= (and b!5741177 (not c!1013292)) b!5741172))

(assert (= (and b!5741156 (not res!2424977)) b!5741185))

(assert (= (and b!5741177 (not res!2424970)) b!5741174))

(assert (= (and b!5741174 res!2424991) b!5741170))

(assert (= (and b!5741174 (not res!2424989)) b!5741147))

(assert (= (and b!5741147 (not res!2424981)) b!5741149))

(assert (= (and b!5741149 (not res!2424984)) b!5741150))

(assert (= (and b!5741150 (not res!2424966)) b!5741182))

(assert (= (and b!5741182 (not res!2424969)) b!5741152))

(assert (= (and b!5741152 (not res!2424968)) b!5741183))

(assert (= (and b!5741183 (not res!2424993)) b!5741173))

(assert (= (and b!5741173 (not res!2424980)) b!5741178))

(assert (= (and b!5741178 (not res!2424983)) b!5741158))

(assert (= (and b!5741158 (not res!2424986)) b!5741180))

(assert (= (and b!5741180 (not res!2424992)) b!5741168))

(assert (= (and b!5741168 (not res!2424965)) b!5741163))

(assert (= (and b!5741163 (not res!2424967)) b!5741171))

(assert (= (and b!5741171 res!2424994) b!5741167))

(assert (= (and b!5741171 (not res!2424975)) b!5741159))

(assert (= (and b!5741159 (not res!2424990)) b!5741154))

(assert (= (and b!5741154 (not res!2424974)) b!5741164))

(assert (= (and start!590716 ((_ is ElementMatch!15753) r!7292)) b!5741165))

(assert (= (and start!590716 ((_ is Concat!24598) r!7292)) b!5741166))

(assert (= (and start!590716 ((_ is Star!15753) r!7292)) b!5741175))

(assert (= (and start!590716 ((_ is Union!15753) r!7292)) b!5741161))

(assert (= (and start!590716 condSetEmpty!38539) setIsEmpty!38539))

(assert (= (and start!590716 (not condSetEmpty!38539)) setNonEmpty!38539))

(assert (= setNonEmpty!38539 b!5741151))

(assert (= b!5741179 b!5741176))

(assert (= (and start!590716 ((_ is Cons!63435) zl!343)) b!5741179))

(assert (= (and start!590716 ((_ is Cons!63436) s!2326)) b!5741186))

(declare-fun m!6693024 () Bool)

(assert (=> b!5741150 m!6693024))

(declare-fun m!6693026 () Bool)

(assert (=> b!5741150 m!6693026))

(declare-fun m!6693028 () Bool)

(assert (=> b!5741150 m!6693028))

(declare-fun m!6693030 () Bool)

(assert (=> b!5741150 m!6693030))

(declare-fun m!6693032 () Bool)

(assert (=> b!5741150 m!6693032))

(declare-fun m!6693034 () Bool)

(assert (=> b!5741177 m!6693034))

(declare-fun m!6693036 () Bool)

(assert (=> b!5741177 m!6693036))

(declare-fun m!6693038 () Bool)

(assert (=> b!5741177 m!6693038))

(declare-fun m!6693040 () Bool)

(assert (=> b!5741177 m!6693040))

(declare-fun m!6693042 () Bool)

(assert (=> b!5741177 m!6693042))

(declare-fun m!6693044 () Bool)

(assert (=> b!5741177 m!6693044))

(declare-fun m!6693046 () Bool)

(assert (=> b!5741177 m!6693046))

(declare-fun m!6693048 () Bool)

(assert (=> b!5741173 m!6693048))

(declare-fun m!6693050 () Bool)

(assert (=> b!5741184 m!6693050))

(declare-fun m!6693052 () Bool)

(assert (=> b!5741180 m!6693052))

(declare-fun m!6693054 () Bool)

(assert (=> b!5741180 m!6693054))

(declare-fun m!6693056 () Bool)

(assert (=> b!5741180 m!6693056))

(declare-fun m!6693058 () Bool)

(assert (=> b!5741168 m!6693058))

(declare-fun m!6693060 () Bool)

(assert (=> b!5741158 m!6693060))

(declare-fun m!6693062 () Bool)

(assert (=> b!5741153 m!6693062))

(declare-fun m!6693064 () Bool)

(assert (=> start!590716 m!6693064))

(declare-fun m!6693066 () Bool)

(assert (=> b!5741182 m!6693066))

(declare-fun m!6693068 () Bool)

(assert (=> b!5741182 m!6693068))

(declare-fun m!6693070 () Bool)

(assert (=> b!5741149 m!6693070))

(declare-fun m!6693072 () Bool)

(assert (=> b!5741148 m!6693072))

(declare-fun m!6693074 () Bool)

(assert (=> b!5741170 m!6693074))

(declare-fun m!6693076 () Bool)

(assert (=> b!5741185 m!6693076))

(declare-fun m!6693078 () Bool)

(assert (=> setNonEmpty!38539 m!6693078))

(assert (=> b!5741154 m!6693076))

(assert (=> b!5741167 m!6693076))

(declare-fun m!6693080 () Bool)

(assert (=> b!5741164 m!6693080))

(assert (=> b!5741164 m!6693040))

(declare-fun m!6693082 () Bool)

(assert (=> b!5741164 m!6693082))

(declare-fun m!6693084 () Bool)

(assert (=> b!5741164 m!6693084))

(declare-fun m!6693086 () Bool)

(assert (=> b!5741156 m!6693086))

(declare-fun m!6693088 () Bool)

(assert (=> b!5741156 m!6693088))

(declare-fun m!6693090 () Bool)

(assert (=> b!5741156 m!6693090))

(declare-fun m!6693092 () Bool)

(assert (=> b!5741187 m!6693092))

(declare-fun m!6693094 () Bool)

(assert (=> b!5741160 m!6693094))

(declare-fun m!6693096 () Bool)

(assert (=> b!5741160 m!6693096))

(declare-fun m!6693098 () Bool)

(assert (=> b!5741160 m!6693098))

(declare-fun m!6693100 () Bool)

(assert (=> b!5741169 m!6693100))

(declare-fun m!6693102 () Bool)

(assert (=> b!5741179 m!6693102))

(declare-fun m!6693104 () Bool)

(assert (=> b!5741181 m!6693104))

(declare-fun m!6693106 () Bool)

(assert (=> b!5741181 m!6693106))

(declare-fun m!6693108 () Bool)

(assert (=> b!5741181 m!6693108))

(declare-fun m!6693110 () Bool)

(assert (=> b!5741181 m!6693110))

(assert (=> b!5741181 m!6693110))

(declare-fun m!6693112 () Bool)

(assert (=> b!5741181 m!6693112))

(assert (=> b!5741181 m!6693104))

(declare-fun m!6693114 () Bool)

(assert (=> b!5741181 m!6693114))

(assert (=> b!5741171 m!6693088))

(declare-fun m!6693116 () Bool)

(assert (=> b!5741178 m!6693116))

(declare-fun m!6693118 () Bool)

(assert (=> b!5741178 m!6693118))

(declare-fun m!6693120 () Bool)

(assert (=> b!5741178 m!6693120))

(declare-fun m!6693122 () Bool)

(assert (=> b!5741178 m!6693122))

(declare-fun m!6693124 () Bool)

(assert (=> b!5741178 m!6693124))

(declare-fun m!6693126 () Bool)

(assert (=> b!5741178 m!6693126))

(declare-fun m!6693128 () Bool)

(assert (=> b!5741178 m!6693128))

(declare-fun m!6693130 () Bool)

(assert (=> b!5741178 m!6693130))

(declare-fun m!6693132 () Bool)

(assert (=> b!5741178 m!6693132))

(declare-fun m!6693134 () Bool)

(assert (=> b!5741155 m!6693134))

(assert (=> b!5741155 m!6693134))

(declare-fun m!6693136 () Bool)

(assert (=> b!5741155 m!6693136))

(check-sat (not b!5741154) (not b!5741169) (not b!5741180) (not b!5741164) (not b!5741178) (not b!5741167) (not b!5741179) (not b!5741149) (not b!5741182) (not b!5741160) (not b!5741173) (not b!5741168) tp_is_empty!40759 (not b!5741187) (not b!5741181) (not b!5741175) (not b!5741185) (not setNonEmpty!38539) (not b!5741150) (not b!5741184) (not b!5741177) (not b!5741156) (not start!590716) (not b!5741176) (not b!5741171) (not b!5741166) (not b!5741155) (not b!5741170) (not b!5741148) (not b!5741151) (not b!5741158) (not b!5741161) (not b!5741153) (not b!5741186))
(check-sat)
