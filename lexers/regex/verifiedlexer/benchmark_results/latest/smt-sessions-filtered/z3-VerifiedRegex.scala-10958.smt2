; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567158 () Bool)

(assert start!567158)

(declare-fun b!5399353 () Bool)

(assert (=> b!5399353 true))

(assert (=> b!5399353 true))

(declare-fun lambda!281042 () Int)

(declare-fun lambda!281041 () Int)

(assert (=> b!5399353 (not (= lambda!281042 lambda!281041))))

(assert (=> b!5399353 true))

(assert (=> b!5399353 true))

(declare-fun b!5399316 () Bool)

(assert (=> b!5399316 true))

(declare-fun b!5399324 () Bool)

(assert (=> b!5399324 true))

(declare-fun b!5399309 () Bool)

(declare-fun e!3347846 () Bool)

(declare-fun e!3347849 () Bool)

(assert (=> b!5399309 (= e!3347846 e!3347849)))

(declare-fun res!2295186 () Bool)

(assert (=> b!5399309 (=> res!2295186 e!3347849)))

(declare-fun e!3347864 () Bool)

(assert (=> b!5399309 (= res!2295186 e!3347864)))

(declare-fun res!2295171 () Bool)

(assert (=> b!5399309 (=> (not res!2295171) (not e!3347864))))

(declare-fun lt!2200758 () Bool)

(assert (=> b!5399309 (= res!2295171 (not lt!2200758))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30596 0))(
  ( (C!30597 (val!25000 Int)) )
))
(declare-datatypes ((Regex!15163 0))(
  ( (ElementMatch!15163 (c!941021 C!30596)) (Concat!24008 (regOne!30838 Regex!15163) (regTwo!30838 Regex!15163)) (EmptyExpr!15163) (Star!15163 (reg!15492 Regex!15163)) (EmptyLang!15163) (Union!15163 (regOne!30839 Regex!15163) (regTwo!30839 Regex!15163)) )
))
(declare-datatypes ((List!61788 0))(
  ( (Nil!61664) (Cons!61664 (h!68112 Regex!15163) (t!375011 List!61788)) )
))
(declare-datatypes ((Context!9094 0))(
  ( (Context!9095 (exprs!5047 List!61788)) )
))
(declare-fun lt!2200745 () (InoxSet Context!9094))

(declare-datatypes ((List!61789 0))(
  ( (Nil!61665) (Cons!61665 (h!68113 C!30596) (t!375012 List!61789)) )
))
(declare-fun s!2326 () List!61789)

(declare-fun matchZipper!1407 ((InoxSet Context!9094) List!61789) Bool)

(assert (=> b!5399309 (= lt!2200758 (matchZipper!1407 lt!2200745 (t!375012 s!2326)))))

(declare-fun setIsEmpty!35129 () Bool)

(declare-fun setRes!35129 () Bool)

(assert (=> setIsEmpty!35129 setRes!35129))

(declare-fun b!5399310 () Bool)

(declare-fun e!3347851 () Bool)

(declare-fun e!3347866 () Bool)

(assert (=> b!5399310 (= e!3347851 e!3347866)))

(declare-fun res!2295179 () Bool)

(assert (=> b!5399310 (=> res!2295179 e!3347866)))

(declare-fun lt!2200729 () List!61789)

(assert (=> b!5399310 (= res!2295179 (not (= s!2326 lt!2200729)))))

(declare-datatypes ((tuple2!64724 0))(
  ( (tuple2!64725 (_1!35665 List!61789) (_2!35665 List!61789)) )
))
(declare-fun lt!2200749 () tuple2!64724)

(declare-fun ++!13499 (List!61789 List!61789) List!61789)

(assert (=> b!5399310 (= lt!2200729 (++!13499 (_1!35665 lt!2200749) (_2!35665 lt!2200749)))))

(declare-datatypes ((Option!15274 0))(
  ( (None!15273) (Some!15273 (v!51302 tuple2!64724)) )
))
(declare-fun lt!2200723 () Option!15274)

(declare-fun get!21247 (Option!15274) tuple2!64724)

(assert (=> b!5399310 (= lt!2200749 (get!21247 lt!2200723))))

(declare-fun isDefined!11977 (Option!15274) Bool)

(assert (=> b!5399310 (isDefined!11977 lt!2200723)))

(declare-fun lt!2200752 () (InoxSet Context!9094))

(declare-fun lt!2200766 () (InoxSet Context!9094))

(declare-fun findConcatSeparationZippers!20 ((InoxSet Context!9094) (InoxSet Context!9094) List!61789 List!61789 List!61789) Option!15274)

(assert (=> b!5399310 (= lt!2200723 (findConcatSeparationZippers!20 lt!2200752 lt!2200766 Nil!61665 s!2326 s!2326))))

(declare-fun lt!2200755 () Context!9094)

(declare-datatypes ((Unit!154174 0))(
  ( (Unit!154175) )
))
(declare-fun lt!2200735 () Unit!154174)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!20 ((InoxSet Context!9094) Context!9094 List!61789) Unit!154174)

(assert (=> b!5399310 (= lt!2200735 (lemmaConcatZipperMatchesStringThenFindConcatDefined!20 lt!2200752 lt!2200755 s!2326))))

(declare-fun b!5399311 () Bool)

(declare-fun res!2295199 () Bool)

(declare-fun e!3347856 () Bool)

(assert (=> b!5399311 (=> (not res!2295199) (not e!3347856))))

(declare-fun z!1189 () (InoxSet Context!9094))

(declare-datatypes ((List!61790 0))(
  ( (Nil!61666) (Cons!61666 (h!68114 Context!9094) (t!375013 List!61790)) )
))
(declare-fun zl!343 () List!61790)

(declare-fun toList!8947 ((InoxSet Context!9094)) List!61790)

(assert (=> b!5399311 (= res!2295199 (= (toList!8947 z!1189) zl!343))))

(declare-fun b!5399312 () Bool)

(declare-fun res!2295183 () Bool)

(declare-fun e!3347857 () Bool)

(assert (=> b!5399312 (=> res!2295183 e!3347857)))

(declare-fun r!7292 () Regex!15163)

(declare-fun generalisedUnion!1092 (List!61788) Regex!15163)

(declare-fun unfocusZipperList!605 (List!61790) List!61788)

(assert (=> b!5399312 (= res!2295183 (not (= r!7292 (generalisedUnion!1092 (unfocusZipperList!605 zl!343)))))))

(declare-fun b!5399313 () Bool)

(declare-fun e!3347855 () Bool)

(declare-fun lt!2200739 () (InoxSet Context!9094))

(assert (=> b!5399313 (= e!3347855 (matchZipper!1407 lt!2200739 (t!375012 s!2326)))))

(declare-fun e!3347852 () Bool)

(declare-fun b!5399314 () Bool)

(declare-fun e!3347841 () Bool)

(declare-fun tp!1494135 () Bool)

(declare-fun inv!81154 (Context!9094) Bool)

(assert (=> b!5399314 (= e!3347841 (and (inv!81154 (h!68114 zl!343)) e!3347852 tp!1494135))))

(declare-fun b!5399315 () Bool)

(declare-fun res!2295188 () Bool)

(assert (=> b!5399315 (=> res!2295188 e!3347857)))

(get-info :version)

(assert (=> b!5399315 (= res!2295188 (not ((_ is Cons!61664) (exprs!5047 (h!68114 zl!343)))))))

(declare-fun e!3347847 () Bool)

(declare-fun e!3347859 () Bool)

(assert (=> b!5399316 (= e!3347847 e!3347859)))

(declare-fun res!2295187 () Bool)

(assert (=> b!5399316 (=> res!2295187 e!3347859)))

(assert (=> b!5399316 (= res!2295187 (or (and ((_ is ElementMatch!15163) (regOne!30838 r!7292)) (= (c!941021 (regOne!30838 r!7292)) (h!68113 s!2326))) ((_ is Union!15163) (regOne!30838 r!7292))))))

(declare-fun lt!2200742 () Unit!154174)

(declare-fun e!3347842 () Unit!154174)

(assert (=> b!5399316 (= lt!2200742 e!3347842)))

(declare-fun c!941020 () Bool)

(declare-fun lt!2200753 () Bool)

(assert (=> b!5399316 (= c!941020 lt!2200753)))

(declare-fun nullable!5332 (Regex!15163) Bool)

(assert (=> b!5399316 (= lt!2200753 (nullable!5332 (h!68112 (exprs!5047 (h!68114 zl!343)))))))

(declare-fun lambda!281043 () Int)

(declare-fun flatMap!890 ((InoxSet Context!9094) Int) (InoxSet Context!9094))

(declare-fun derivationStepZipperUp!535 (Context!9094 C!30596) (InoxSet Context!9094))

(assert (=> b!5399316 (= (flatMap!890 z!1189 lambda!281043) (derivationStepZipperUp!535 (h!68114 zl!343) (h!68113 s!2326)))))

(declare-fun lt!2200761 () Unit!154174)

(declare-fun lemmaFlatMapOnSingletonSet!422 ((InoxSet Context!9094) Context!9094 Int) Unit!154174)

(assert (=> b!5399316 (= lt!2200761 (lemmaFlatMapOnSingletonSet!422 z!1189 (h!68114 zl!343) lambda!281043))))

(declare-fun lt!2200747 () Context!9094)

(assert (=> b!5399316 (= lt!2200739 (derivationStepZipperUp!535 lt!2200747 (h!68113 s!2326)))))

(declare-fun derivationStepZipperDown!611 (Regex!15163 Context!9094 C!30596) (InoxSet Context!9094))

(assert (=> b!5399316 (= lt!2200745 (derivationStepZipperDown!611 (h!68112 (exprs!5047 (h!68114 zl!343))) lt!2200747 (h!68113 s!2326)))))

(assert (=> b!5399316 (= lt!2200747 (Context!9095 (t!375011 (exprs!5047 (h!68114 zl!343)))))))

(declare-fun lt!2200740 () (InoxSet Context!9094))

(assert (=> b!5399316 (= lt!2200740 (derivationStepZipperUp!535 (Context!9095 (Cons!61664 (h!68112 (exprs!5047 (h!68114 zl!343))) (t!375011 (exprs!5047 (h!68114 zl!343))))) (h!68113 s!2326)))))

(declare-fun b!5399317 () Bool)

(declare-fun e!3347854 () Bool)

(declare-fun e!3347858 () Bool)

(assert (=> b!5399317 (= e!3347854 e!3347858)))

(declare-fun res!2295178 () Bool)

(assert (=> b!5399317 (=> res!2295178 e!3347858)))

(declare-fun lt!2200759 () (InoxSet Context!9094))

(declare-fun lt!2200762 () (InoxSet Context!9094))

(assert (=> b!5399317 (= res!2295178 (not (= lt!2200759 lt!2200762)))))

(declare-fun lt!2200724 () Context!9094)

(declare-fun lt!2200751 () (InoxSet Context!9094))

(assert (=> b!5399317 (= (flatMap!890 lt!2200751 lambda!281043) (derivationStepZipperUp!535 lt!2200724 (h!68113 s!2326)))))

(declare-fun lt!2200732 () Unit!154174)

(assert (=> b!5399317 (= lt!2200732 (lemmaFlatMapOnSingletonSet!422 lt!2200751 lt!2200724 lambda!281043))))

(declare-fun lt!2200767 () (InoxSet Context!9094))

(assert (=> b!5399317 (= lt!2200767 (derivationStepZipperUp!535 lt!2200724 (h!68113 s!2326)))))

(declare-fun derivationStepZipper!1402 ((InoxSet Context!9094) C!30596) (InoxSet Context!9094))

(assert (=> b!5399317 (= lt!2200759 (derivationStepZipper!1402 lt!2200751 (h!68113 s!2326)))))

(assert (=> b!5399317 (= lt!2200751 (store ((as const (Array Context!9094 Bool)) false) lt!2200724 true))))

(declare-fun lt!2200727 () List!61788)

(assert (=> b!5399317 (= lt!2200724 (Context!9095 (Cons!61664 (reg!15492 (regOne!30838 r!7292)) lt!2200727)))))

(declare-fun b!5399318 () Bool)

(declare-fun res!2295172 () Bool)

(assert (=> b!5399318 (=> res!2295172 e!3347846)))

(assert (=> b!5399318 (= res!2295172 (not lt!2200753))))

(declare-fun b!5399319 () Bool)

(declare-fun res!2295202 () Bool)

(assert (=> b!5399319 (=> res!2295202 e!3347857)))

(assert (=> b!5399319 (= res!2295202 (or ((_ is EmptyExpr!15163) r!7292) ((_ is EmptyLang!15163) r!7292) ((_ is ElementMatch!15163) r!7292) ((_ is Union!15163) r!7292) (not ((_ is Concat!24008) r!7292))))))

(declare-fun b!5399320 () Bool)

(declare-fun e!3347850 () Bool)

(assert (=> b!5399320 (= e!3347858 e!3347850)))

(declare-fun res!2295189 () Bool)

(assert (=> b!5399320 (=> res!2295189 e!3347850)))

(declare-fun lt!2200741 () Bool)

(assert (=> b!5399320 (= res!2295189 (not (= lt!2200741 (matchZipper!1407 lt!2200759 (t!375012 s!2326)))))))

(assert (=> b!5399320 (= lt!2200741 (matchZipper!1407 lt!2200751 s!2326))))

(declare-fun b!5399321 () Bool)

(declare-fun e!3347865 () Bool)

(assert (=> b!5399321 (= e!3347856 e!3347865)))

(declare-fun res!2295201 () Bool)

(assert (=> b!5399321 (=> (not res!2295201) (not e!3347865))))

(declare-fun lt!2200756 () Regex!15163)

(assert (=> b!5399321 (= res!2295201 (= r!7292 lt!2200756))))

(declare-fun unfocusZipper!905 (List!61790) Regex!15163)

(assert (=> b!5399321 (= lt!2200756 (unfocusZipper!905 zl!343))))

(declare-fun b!5399322 () Bool)

(declare-fun e!3347861 () Bool)

(declare-fun tp!1494131 () Bool)

(declare-fun tp!1494128 () Bool)

(assert (=> b!5399322 (= e!3347861 (and tp!1494131 tp!1494128))))

(declare-fun b!5399323 () Bool)

(assert (=> b!5399323 (= e!3347864 (not (matchZipper!1407 lt!2200739 (t!375012 s!2326))))))

(assert (=> b!5399324 (= e!3347849 e!3347851)))

(declare-fun res!2295204 () Bool)

(assert (=> b!5399324 (=> res!2295204 e!3347851)))

(declare-fun appendTo!22 ((InoxSet Context!9094) Context!9094) (InoxSet Context!9094))

(assert (=> b!5399324 (= res!2295204 (not (= (appendTo!22 lt!2200752 lt!2200755) lt!2200751)))))

(declare-fun lambda!281044 () Int)

(declare-fun lt!2200769 () List!61788)

(declare-fun map!14129 ((InoxSet Context!9094) Int) (InoxSet Context!9094))

(declare-fun ++!13500 (List!61788 List!61788) List!61788)

(assert (=> b!5399324 (= (map!14129 lt!2200752 lambda!281044) (store ((as const (Array Context!9094 Bool)) false) (Context!9095 (++!13500 lt!2200769 lt!2200727)) true))))

(declare-fun lambda!281045 () Int)

(declare-fun lt!2200771 () Unit!154174)

(declare-fun lemmaConcatPreservesForall!188 (List!61788 List!61788 Int) Unit!154174)

(assert (=> b!5399324 (= lt!2200771 (lemmaConcatPreservesForall!188 lt!2200769 lt!2200727 lambda!281045))))

(declare-fun lt!2200743 () Unit!154174)

(declare-fun lt!2200764 () Context!9094)

(declare-fun lemmaMapOnSingletonSet!22 ((InoxSet Context!9094) Context!9094 Int) Unit!154174)

(assert (=> b!5399324 (= lt!2200743 (lemmaMapOnSingletonSet!22 lt!2200752 lt!2200764 lambda!281044))))

(declare-fun b!5399325 () Bool)

(declare-fun e!3347862 () Bool)

(assert (=> b!5399325 (= e!3347850 e!3347862)))

(declare-fun res!2295203 () Bool)

(assert (=> b!5399325 (=> res!2295203 e!3347862)))

(declare-fun lt!2200726 () Regex!15163)

(assert (=> b!5399325 (= res!2295203 (not (= r!7292 lt!2200726)))))

(declare-fun lt!2200760 () Regex!15163)

(assert (=> b!5399325 (= lt!2200726 (Concat!24008 lt!2200760 (regTwo!30838 r!7292)))))

(declare-fun b!5399326 () Bool)

(declare-fun res!2295174 () Bool)

(assert (=> b!5399326 (=> res!2295174 e!3347846)))

(assert (=> b!5399326 (= res!2295174 (not (matchZipper!1407 z!1189 s!2326)))))

(declare-fun b!5399327 () Bool)

(declare-fun e!3347863 () Bool)

(assert (=> b!5399327 (= e!3347863 e!3347846)))

(declare-fun res!2295193 () Bool)

(assert (=> b!5399327 (=> res!2295193 e!3347846)))

(declare-fun lt!2200738 () Bool)

(assert (=> b!5399327 (= res!2295193 lt!2200738)))

(declare-fun lt!2200733 () Bool)

(declare-fun lt!2200734 () Regex!15163)

(declare-fun matchRSpec!2266 (Regex!15163 List!61789) Bool)

(assert (=> b!5399327 (= lt!2200733 (matchRSpec!2266 lt!2200734 s!2326))))

(declare-fun matchR!7348 (Regex!15163 List!61789) Bool)

(assert (=> b!5399327 (= lt!2200733 (matchR!7348 lt!2200734 s!2326))))

(declare-fun lt!2200731 () Unit!154174)

(declare-fun mainMatchTheorem!2266 (Regex!15163 List!61789) Unit!154174)

(assert (=> b!5399327 (= lt!2200731 (mainMatchTheorem!2266 lt!2200734 s!2326))))

(declare-fun b!5399328 () Bool)

(declare-fun tp!1494134 () Bool)

(assert (=> b!5399328 (= e!3347852 tp!1494134)))

(declare-fun b!5399329 () Bool)

(declare-fun res!2295200 () Bool)

(assert (=> b!5399329 (=> res!2295200 e!3347849)))

(assert (=> b!5399329 (= res!2295200 (or (not lt!2200758) (not lt!2200741)))))

(declare-fun b!5399330 () Bool)

(declare-fun res!2295192 () Bool)

(assert (=> b!5399330 (=> res!2295192 e!3347857)))

(declare-fun isEmpty!33657 (List!61790) Bool)

(assert (=> b!5399330 (= res!2295192 (not (isEmpty!33657 (t!375013 zl!343))))))

(declare-fun b!5399331 () Bool)

(assert (=> b!5399331 (= e!3347865 (not e!3347857))))

(declare-fun res!2295173 () Bool)

(assert (=> b!5399331 (=> res!2295173 e!3347857)))

(assert (=> b!5399331 (= res!2295173 (not ((_ is Cons!61666) zl!343)))))

(assert (=> b!5399331 (= lt!2200738 (matchRSpec!2266 r!7292 s!2326))))

(assert (=> b!5399331 (= lt!2200738 (matchR!7348 r!7292 s!2326))))

(declare-fun lt!2200725 () Unit!154174)

(assert (=> b!5399331 (= lt!2200725 (mainMatchTheorem!2266 r!7292 s!2326))))

(declare-fun b!5399332 () Bool)

(declare-fun res!2295184 () Bool)

(assert (=> b!5399332 (=> res!2295184 e!3347859)))

(declare-fun e!3347860 () Bool)

(assert (=> b!5399332 (= res!2295184 e!3347860)))

(declare-fun res!2295205 () Bool)

(assert (=> b!5399332 (=> (not res!2295205) (not e!3347860))))

(assert (=> b!5399332 (= res!2295205 ((_ is Concat!24008) (regOne!30838 r!7292)))))

(declare-fun b!5399333 () Bool)

(declare-fun tp_is_empty!39579 () Bool)

(assert (=> b!5399333 (= e!3347861 tp_is_empty!39579)))

(declare-fun b!5399334 () Bool)

(declare-fun Unit!154176 () Unit!154174)

(assert (=> b!5399334 (= e!3347842 Unit!154176)))

(declare-fun lt!2200765 () Unit!154174)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!400 ((InoxSet Context!9094) (InoxSet Context!9094) List!61789) Unit!154174)

(assert (=> b!5399334 (= lt!2200765 (lemmaZipperConcatMatchesSameAsBothZippers!400 lt!2200745 lt!2200739 (t!375012 s!2326)))))

(declare-fun res!2295181 () Bool)

(assert (=> b!5399334 (= res!2295181 (matchZipper!1407 lt!2200745 (t!375012 s!2326)))))

(assert (=> b!5399334 (=> res!2295181 e!3347855)))

(assert (=> b!5399334 (= (matchZipper!1407 ((_ map or) lt!2200745 lt!2200739) (t!375012 s!2326)) e!3347855)))

(declare-fun b!5399335 () Bool)

(declare-fun e!3347853 () Bool)

(declare-fun e!3347844 () Bool)

(assert (=> b!5399335 (= e!3347853 e!3347844)))

(declare-fun res!2295191 () Bool)

(assert (=> b!5399335 (=> res!2295191 e!3347844)))

(declare-fun lt!2200750 () List!61790)

(assert (=> b!5399335 (= res!2295191 (not (= (unfocusZipper!905 lt!2200750) (reg!15492 (regOne!30838 r!7292)))))))

(assert (=> b!5399335 (= lt!2200750 (Cons!61666 lt!2200764 Nil!61666))))

(assert (=> b!5399335 (= (flatMap!890 lt!2200766 lambda!281043) (derivationStepZipperUp!535 lt!2200755 (h!68113 s!2326)))))

(declare-fun lt!2200757 () Unit!154174)

(assert (=> b!5399335 (= lt!2200757 (lemmaFlatMapOnSingletonSet!422 lt!2200766 lt!2200755 lambda!281043))))

(assert (=> b!5399335 (= (flatMap!890 lt!2200752 lambda!281043) (derivationStepZipperUp!535 lt!2200764 (h!68113 s!2326)))))

(declare-fun lt!2200748 () Unit!154174)

(assert (=> b!5399335 (= lt!2200748 (lemmaFlatMapOnSingletonSet!422 lt!2200752 lt!2200764 lambda!281043))))

(declare-fun lt!2200736 () (InoxSet Context!9094))

(assert (=> b!5399335 (= lt!2200736 (derivationStepZipperUp!535 lt!2200755 (h!68113 s!2326)))))

(declare-fun lt!2200746 () (InoxSet Context!9094))

(assert (=> b!5399335 (= lt!2200746 (derivationStepZipperUp!535 lt!2200764 (h!68113 s!2326)))))

(assert (=> b!5399335 (= lt!2200766 (store ((as const (Array Context!9094 Bool)) false) lt!2200755 true))))

(assert (=> b!5399335 (= lt!2200752 (store ((as const (Array Context!9094 Bool)) false) lt!2200764 true))))

(assert (=> b!5399335 (= lt!2200764 (Context!9095 lt!2200769))))

(assert (=> b!5399335 (= lt!2200769 (Cons!61664 (reg!15492 (regOne!30838 r!7292)) Nil!61664))))

(declare-fun b!5399336 () Bool)

(declare-fun res!2295197 () Bool)

(assert (=> b!5399336 (=> res!2295197 e!3347859)))

(assert (=> b!5399336 (= res!2295197 (or ((_ is Concat!24008) (regOne!30838 r!7292)) (not ((_ is Star!15163) (regOne!30838 r!7292)))))))

(declare-fun b!5399337 () Bool)

(assert (=> b!5399337 (= e!3347866 true)))

(declare-fun e!3347845 () Bool)

(assert (=> b!5399337 e!3347845))

(declare-fun res!2295194 () Bool)

(assert (=> b!5399337 (=> (not res!2295194) (not e!3347845))))

(assert (=> b!5399337 (= res!2295194 (matchR!7348 lt!2200734 lt!2200729))))

(declare-fun lt!2200730 () Unit!154174)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!186 (Regex!15163 Regex!15163 List!61789 List!61789) Unit!154174)

(assert (=> b!5399337 (= lt!2200730 (lemmaTwoRegexMatchThenConcatMatchesConcatString!186 (reg!15492 (regOne!30838 r!7292)) lt!2200726 (_1!35665 lt!2200749) (_2!35665 lt!2200749)))))

(assert (=> b!5399337 (matchR!7348 lt!2200726 (_2!35665 lt!2200749))))

(declare-fun lt!2200737 () Unit!154174)

(declare-fun lt!2200763 () List!61790)

(declare-fun theoremZipperRegexEquiv!477 ((InoxSet Context!9094) List!61790 Regex!15163 List!61789) Unit!154174)

(assert (=> b!5399337 (= lt!2200737 (theoremZipperRegexEquiv!477 lt!2200766 lt!2200763 lt!2200726 (_2!35665 lt!2200749)))))

(assert (=> b!5399337 (matchR!7348 (reg!15492 (regOne!30838 r!7292)) (_1!35665 lt!2200749))))

(declare-fun lt!2200728 () Unit!154174)

(assert (=> b!5399337 (= lt!2200728 (theoremZipperRegexEquiv!477 lt!2200752 lt!2200750 (reg!15492 (regOne!30838 r!7292)) (_1!35665 lt!2200749)))))

(assert (=> b!5399337 (matchZipper!1407 (store ((as const (Array Context!9094 Bool)) false) (Context!9095 (++!13500 lt!2200769 lt!2200727)) true) lt!2200729)))

(declare-fun lt!2200744 () Unit!154174)

(assert (=> b!5399337 (= lt!2200744 (lemmaConcatPreservesForall!188 lt!2200769 lt!2200727 lambda!281045))))

(declare-fun lt!2200770 () Unit!154174)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!36 (Context!9094 Context!9094 List!61789 List!61789) Unit!154174)

(assert (=> b!5399337 (= lt!2200770 (lemmaConcatenateContextMatchesConcatOfStrings!36 lt!2200764 lt!2200755 (_1!35665 lt!2200749) (_2!35665 lt!2200749)))))

(declare-fun b!5399338 () Bool)

(declare-fun tp!1494136 () Bool)

(declare-fun tp!1494132 () Bool)

(assert (=> b!5399338 (= e!3347861 (and tp!1494136 tp!1494132))))

(declare-fun b!5399339 () Bool)

(declare-fun res!2295176 () Bool)

(assert (=> b!5399339 (=> res!2295176 e!3347866)))

(assert (=> b!5399339 (= res!2295176 (not (matchZipper!1407 lt!2200752 (_1!35665 lt!2200749))))))

(declare-fun b!5399340 () Bool)

(declare-fun e!3347843 () Bool)

(declare-fun tp!1494137 () Bool)

(assert (=> b!5399340 (= e!3347843 tp!1494137)))

(declare-fun b!5399341 () Bool)

(assert (=> b!5399341 (= e!3347859 e!3347854)))

(declare-fun res!2295182 () Bool)

(assert (=> b!5399341 (=> res!2295182 e!3347854)))

(assert (=> b!5399341 (= res!2295182 (not (= lt!2200745 lt!2200762)))))

(assert (=> b!5399341 (= lt!2200762 (derivationStepZipperDown!611 (reg!15492 (regOne!30838 r!7292)) lt!2200755 (h!68113 s!2326)))))

(assert (=> b!5399341 (= lt!2200755 (Context!9095 lt!2200727))))

(assert (=> b!5399341 (= lt!2200727 (Cons!61664 lt!2200760 (t!375011 (exprs!5047 (h!68114 zl!343)))))))

(assert (=> b!5399341 (= lt!2200760 (Star!15163 (reg!15492 (regOne!30838 r!7292))))))

(declare-fun b!5399342 () Bool)

(declare-fun res!2295198 () Bool)

(assert (=> b!5399342 (=> res!2295198 e!3347857)))

(declare-fun generalisedConcat!832 (List!61788) Regex!15163)

(assert (=> b!5399342 (= res!2295198 (not (= r!7292 (generalisedConcat!832 (exprs!5047 (h!68114 zl!343))))))))

(declare-fun b!5399343 () Bool)

(assert (=> b!5399343 (= e!3347862 e!3347853)))

(declare-fun res!2295175 () Bool)

(assert (=> b!5399343 (=> res!2295175 e!3347853)))

(assert (=> b!5399343 (= res!2295175 (not (= (unfocusZipper!905 (Cons!61666 lt!2200724 Nil!61666)) lt!2200734)))))

(assert (=> b!5399343 (= lt!2200734 (Concat!24008 (reg!15492 (regOne!30838 r!7292)) lt!2200726))))

(declare-fun b!5399344 () Bool)

(assert (=> b!5399344 (= e!3347860 (nullable!5332 (regOne!30838 (regOne!30838 r!7292))))))

(declare-fun b!5399345 () Bool)

(declare-fun res!2295180 () Bool)

(assert (=> b!5399345 (=> res!2295180 e!3347847)))

(declare-fun isEmpty!33658 (List!61788) Bool)

(assert (=> b!5399345 (= res!2295180 (isEmpty!33658 (t!375011 (exprs!5047 (h!68114 zl!343)))))))

(declare-fun b!5399346 () Bool)

(declare-fun res!2295190 () Bool)

(assert (=> b!5399346 (=> res!2295190 e!3347866)))

(assert (=> b!5399346 (= res!2295190 (not (matchZipper!1407 lt!2200766 (_2!35665 lt!2200749))))))

(declare-fun b!5399347 () Bool)

(declare-fun Unit!154177 () Unit!154174)

(assert (=> b!5399347 (= e!3347842 Unit!154177)))

(declare-fun res!2295196 () Bool)

(assert (=> start!567158 (=> (not res!2295196) (not e!3347856))))

(declare-fun validRegex!6899 (Regex!15163) Bool)

(assert (=> start!567158 (= res!2295196 (validRegex!6899 r!7292))))

(assert (=> start!567158 e!3347856))

(assert (=> start!567158 e!3347861))

(declare-fun condSetEmpty!35129 () Bool)

(assert (=> start!567158 (= condSetEmpty!35129 (= z!1189 ((as const (Array Context!9094 Bool)) false)))))

(assert (=> start!567158 setRes!35129))

(assert (=> start!567158 e!3347841))

(declare-fun e!3347848 () Bool)

(assert (=> start!567158 e!3347848))

(declare-fun b!5399348 () Bool)

(declare-fun tp!1494133 () Bool)

(assert (=> b!5399348 (= e!3347861 tp!1494133)))

(declare-fun b!5399349 () Bool)

(declare-fun tp!1494130 () Bool)

(assert (=> b!5399349 (= e!3347848 (and tp_is_empty!39579 tp!1494130))))

(declare-fun tp!1494129 () Bool)

(declare-fun setNonEmpty!35129 () Bool)

(declare-fun setElem!35129 () Context!9094)

(assert (=> setNonEmpty!35129 (= setRes!35129 (and tp!1494129 (inv!81154 setElem!35129) e!3347843))))

(declare-fun setRest!35129 () (InoxSet Context!9094))

(assert (=> setNonEmpty!35129 (= z!1189 ((_ map or) (store ((as const (Array Context!9094 Bool)) false) setElem!35129 true) setRest!35129))))

(declare-fun b!5399350 () Bool)

(assert (=> b!5399350 (= e!3347844 e!3347863)))

(declare-fun res!2295177 () Bool)

(assert (=> b!5399350 (=> res!2295177 e!3347863)))

(assert (=> b!5399350 (= res!2295177 (not (= (unfocusZipper!905 lt!2200763) lt!2200726)))))

(assert (=> b!5399350 (= lt!2200763 (Cons!61666 lt!2200755 Nil!61666))))

(declare-fun b!5399351 () Bool)

(assert (=> b!5399351 (= e!3347845 lt!2200733)))

(declare-fun b!5399352 () Bool)

(declare-fun res!2295195 () Bool)

(assert (=> b!5399352 (=> res!2295195 e!3347850)))

(assert (=> b!5399352 (= res!2295195 (not (= lt!2200756 r!7292)))))

(assert (=> b!5399353 (= e!3347857 e!3347847)))

(declare-fun res!2295185 () Bool)

(assert (=> b!5399353 (=> res!2295185 e!3347847)))

(declare-fun lt!2200772 () Bool)

(assert (=> b!5399353 (= res!2295185 (or (not (= lt!2200738 lt!2200772)) ((_ is Nil!61665) s!2326)))))

(declare-fun Exists!2344 (Int) Bool)

(assert (=> b!5399353 (= (Exists!2344 lambda!281041) (Exists!2344 lambda!281042))))

(declare-fun lt!2200754 () Unit!154174)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!998 (Regex!15163 Regex!15163 List!61789) Unit!154174)

(assert (=> b!5399353 (= lt!2200754 (lemmaExistCutMatchRandMatchRSpecEquivalent!998 (regOne!30838 r!7292) (regTwo!30838 r!7292) s!2326))))

(assert (=> b!5399353 (= lt!2200772 (Exists!2344 lambda!281041))))

(declare-fun findConcatSeparation!1688 (Regex!15163 Regex!15163 List!61789 List!61789 List!61789) Option!15274)

(assert (=> b!5399353 (= lt!2200772 (isDefined!11977 (findConcatSeparation!1688 (regOne!30838 r!7292) (regTwo!30838 r!7292) Nil!61665 s!2326 s!2326)))))

(declare-fun lt!2200768 () Unit!154174)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1452 (Regex!15163 Regex!15163 List!61789) Unit!154174)

(assert (=> b!5399353 (= lt!2200768 (lemmaFindConcatSeparationEquivalentToExists!1452 (regOne!30838 r!7292) (regTwo!30838 r!7292) s!2326))))

(assert (= (and start!567158 res!2295196) b!5399311))

(assert (= (and b!5399311 res!2295199) b!5399321))

(assert (= (and b!5399321 res!2295201) b!5399331))

(assert (= (and b!5399331 (not res!2295173)) b!5399330))

(assert (= (and b!5399330 (not res!2295192)) b!5399342))

(assert (= (and b!5399342 (not res!2295198)) b!5399315))

(assert (= (and b!5399315 (not res!2295188)) b!5399312))

(assert (= (and b!5399312 (not res!2295183)) b!5399319))

(assert (= (and b!5399319 (not res!2295202)) b!5399353))

(assert (= (and b!5399353 (not res!2295185)) b!5399345))

(assert (= (and b!5399345 (not res!2295180)) b!5399316))

(assert (= (and b!5399316 c!941020) b!5399334))

(assert (= (and b!5399316 (not c!941020)) b!5399347))

(assert (= (and b!5399334 (not res!2295181)) b!5399313))

(assert (= (and b!5399316 (not res!2295187)) b!5399332))

(assert (= (and b!5399332 res!2295205) b!5399344))

(assert (= (and b!5399332 (not res!2295184)) b!5399336))

(assert (= (and b!5399336 (not res!2295197)) b!5399341))

(assert (= (and b!5399341 (not res!2295182)) b!5399317))

(assert (= (and b!5399317 (not res!2295178)) b!5399320))

(assert (= (and b!5399320 (not res!2295189)) b!5399352))

(assert (= (and b!5399352 (not res!2295195)) b!5399325))

(assert (= (and b!5399325 (not res!2295203)) b!5399343))

(assert (= (and b!5399343 (not res!2295175)) b!5399335))

(assert (= (and b!5399335 (not res!2295191)) b!5399350))

(assert (= (and b!5399350 (not res!2295177)) b!5399327))

(assert (= (and b!5399327 (not res!2295193)) b!5399326))

(assert (= (and b!5399326 (not res!2295174)) b!5399318))

(assert (= (and b!5399318 (not res!2295172)) b!5399309))

(assert (= (and b!5399309 res!2295171) b!5399323))

(assert (= (and b!5399309 (not res!2295186)) b!5399329))

(assert (= (and b!5399329 (not res!2295200)) b!5399324))

(assert (= (and b!5399324 (not res!2295204)) b!5399310))

(assert (= (and b!5399310 (not res!2295179)) b!5399339))

(assert (= (and b!5399339 (not res!2295176)) b!5399346))

(assert (= (and b!5399346 (not res!2295190)) b!5399337))

(assert (= (and b!5399337 res!2295194) b!5399351))

(assert (= (and start!567158 ((_ is ElementMatch!15163) r!7292)) b!5399333))

(assert (= (and start!567158 ((_ is Concat!24008) r!7292)) b!5399338))

(assert (= (and start!567158 ((_ is Star!15163) r!7292)) b!5399348))

(assert (= (and start!567158 ((_ is Union!15163) r!7292)) b!5399322))

(assert (= (and start!567158 condSetEmpty!35129) setIsEmpty!35129))

(assert (= (and start!567158 (not condSetEmpty!35129)) setNonEmpty!35129))

(assert (= setNonEmpty!35129 b!5399340))

(assert (= b!5399314 b!5399328))

(assert (= (and start!567158 ((_ is Cons!61666) zl!343)) b!5399314))

(assert (= (and start!567158 ((_ is Cons!61665) s!2326)) b!5399349))

(declare-fun m!6423934 () Bool)

(assert (=> b!5399342 m!6423934))

(declare-fun m!6423936 () Bool)

(assert (=> b!5399345 m!6423936))

(declare-fun m!6423938 () Bool)

(assert (=> b!5399346 m!6423938))

(declare-fun m!6423940 () Bool)

(assert (=> b!5399326 m!6423940))

(declare-fun m!6423942 () Bool)

(assert (=> b!5399310 m!6423942))

(declare-fun m!6423944 () Bool)

(assert (=> b!5399310 m!6423944))

(declare-fun m!6423946 () Bool)

(assert (=> b!5399310 m!6423946))

(declare-fun m!6423948 () Bool)

(assert (=> b!5399310 m!6423948))

(declare-fun m!6423950 () Bool)

(assert (=> b!5399310 m!6423950))

(declare-fun m!6423952 () Bool)

(assert (=> b!5399339 m!6423952))

(declare-fun m!6423954 () Bool)

(assert (=> b!5399311 m!6423954))

(declare-fun m!6423956 () Bool)

(assert (=> b!5399312 m!6423956))

(assert (=> b!5399312 m!6423956))

(declare-fun m!6423958 () Bool)

(assert (=> b!5399312 m!6423958))

(declare-fun m!6423960 () Bool)

(assert (=> b!5399313 m!6423960))

(declare-fun m!6423962 () Bool)

(assert (=> b!5399330 m!6423962))

(declare-fun m!6423964 () Bool)

(assert (=> b!5399320 m!6423964))

(declare-fun m!6423966 () Bool)

(assert (=> b!5399320 m!6423966))

(declare-fun m!6423968 () Bool)

(assert (=> b!5399341 m!6423968))

(declare-fun m!6423970 () Bool)

(assert (=> setNonEmpty!35129 m!6423970))

(declare-fun m!6423972 () Bool)

(assert (=> b!5399316 m!6423972))

(declare-fun m!6423974 () Bool)

(assert (=> b!5399316 m!6423974))

(declare-fun m!6423976 () Bool)

(assert (=> b!5399316 m!6423976))

(declare-fun m!6423978 () Bool)

(assert (=> b!5399316 m!6423978))

(declare-fun m!6423980 () Bool)

(assert (=> b!5399316 m!6423980))

(declare-fun m!6423982 () Bool)

(assert (=> b!5399316 m!6423982))

(declare-fun m!6423984 () Bool)

(assert (=> b!5399316 m!6423984))

(declare-fun m!6423986 () Bool)

(assert (=> b!5399334 m!6423986))

(declare-fun m!6423988 () Bool)

(assert (=> b!5399334 m!6423988))

(declare-fun m!6423990 () Bool)

(assert (=> b!5399334 m!6423990))

(declare-fun m!6423992 () Bool)

(assert (=> b!5399335 m!6423992))

(declare-fun m!6423994 () Bool)

(assert (=> b!5399335 m!6423994))

(declare-fun m!6423996 () Bool)

(assert (=> b!5399335 m!6423996))

(declare-fun m!6423998 () Bool)

(assert (=> b!5399335 m!6423998))

(declare-fun m!6424000 () Bool)

(assert (=> b!5399335 m!6424000))

(declare-fun m!6424002 () Bool)

(assert (=> b!5399335 m!6424002))

(declare-fun m!6424004 () Bool)

(assert (=> b!5399335 m!6424004))

(declare-fun m!6424006 () Bool)

(assert (=> b!5399335 m!6424006))

(declare-fun m!6424008 () Bool)

(assert (=> b!5399335 m!6424008))

(declare-fun m!6424010 () Bool)

(assert (=> b!5399327 m!6424010))

(declare-fun m!6424012 () Bool)

(assert (=> b!5399327 m!6424012))

(declare-fun m!6424014 () Bool)

(assert (=> b!5399327 m!6424014))

(declare-fun m!6424016 () Bool)

(assert (=> b!5399321 m!6424016))

(declare-fun m!6424018 () Bool)

(assert (=> b!5399343 m!6424018))

(declare-fun m!6424020 () Bool)

(assert (=> start!567158 m!6424020))

(declare-fun m!6424022 () Bool)

(assert (=> b!5399350 m!6424022))

(declare-fun m!6424024 () Bool)

(assert (=> b!5399331 m!6424024))

(declare-fun m!6424026 () Bool)

(assert (=> b!5399331 m!6424026))

(declare-fun m!6424028 () Bool)

(assert (=> b!5399331 m!6424028))

(assert (=> b!5399323 m!6423960))

(assert (=> b!5399309 m!6423988))

(declare-fun m!6424030 () Bool)

(assert (=> b!5399337 m!6424030))

(declare-fun m!6424032 () Bool)

(assert (=> b!5399337 m!6424032))

(declare-fun m!6424034 () Bool)

(assert (=> b!5399337 m!6424034))

(declare-fun m!6424036 () Bool)

(assert (=> b!5399337 m!6424036))

(declare-fun m!6424038 () Bool)

(assert (=> b!5399337 m!6424038))

(declare-fun m!6424040 () Bool)

(assert (=> b!5399337 m!6424040))

(declare-fun m!6424042 () Bool)

(assert (=> b!5399337 m!6424042))

(declare-fun m!6424044 () Bool)

(assert (=> b!5399337 m!6424044))

(declare-fun m!6424046 () Bool)

(assert (=> b!5399337 m!6424046))

(declare-fun m!6424048 () Bool)

(assert (=> b!5399337 m!6424048))

(declare-fun m!6424050 () Bool)

(assert (=> b!5399337 m!6424050))

(assert (=> b!5399337 m!6424030))

(declare-fun m!6424052 () Bool)

(assert (=> b!5399344 m!6424052))

(declare-fun m!6424054 () Bool)

(assert (=> b!5399317 m!6424054))

(declare-fun m!6424056 () Bool)

(assert (=> b!5399317 m!6424056))

(declare-fun m!6424058 () Bool)

(assert (=> b!5399317 m!6424058))

(declare-fun m!6424060 () Bool)

(assert (=> b!5399317 m!6424060))

(declare-fun m!6424062 () Bool)

(assert (=> b!5399317 m!6424062))

(assert (=> b!5399324 m!6424034))

(declare-fun m!6424064 () Bool)

(assert (=> b!5399324 m!6424064))

(declare-fun m!6424066 () Bool)

(assert (=> b!5399324 m!6424066))

(assert (=> b!5399324 m!6424050))

(declare-fun m!6424068 () Bool)

(assert (=> b!5399324 m!6424068))

(assert (=> b!5399324 m!6424030))

(declare-fun m!6424070 () Bool)

(assert (=> b!5399353 m!6424070))

(declare-fun m!6424072 () Bool)

(assert (=> b!5399353 m!6424072))

(declare-fun m!6424074 () Bool)

(assert (=> b!5399353 m!6424074))

(assert (=> b!5399353 m!6424070))

(declare-fun m!6424076 () Bool)

(assert (=> b!5399353 m!6424076))

(declare-fun m!6424078 () Bool)

(assert (=> b!5399353 m!6424078))

(assert (=> b!5399353 m!6424072))

(declare-fun m!6424080 () Bool)

(assert (=> b!5399353 m!6424080))

(declare-fun m!6424082 () Bool)

(assert (=> b!5399314 m!6424082))

(check-sat (not b!5399309) (not b!5399328) (not b!5399339) (not b!5399350) (not b!5399317) (not b!5399342) (not start!567158) (not b!5399320) (not b!5399353) (not b!5399349) (not b!5399314) (not b!5399312) tp_is_empty!39579 (not b!5399311) (not b!5399313) (not b!5399322) (not b!5399337) (not b!5399343) (not b!5399341) (not b!5399316) (not b!5399323) (not b!5399331) (not b!5399326) (not b!5399348) (not b!5399324) (not b!5399321) (not b!5399346) (not b!5399310) (not b!5399335) (not setNonEmpty!35129) (not b!5399330) (not b!5399345) (not b!5399327) (not b!5399340) (not b!5399338) (not b!5399334) (not b!5399344))
(check-sat)
