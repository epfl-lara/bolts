; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!589632 () Bool)

(assert start!589632)

(declare-fun b!5728892 () Bool)

(assert (=> b!5728892 true))

(assert (=> b!5728892 true))

(declare-fun lambda!309880 () Int)

(declare-fun lambda!309879 () Int)

(assert (=> b!5728892 (not (= lambda!309880 lambda!309879))))

(assert (=> b!5728892 true))

(assert (=> b!5728892 true))

(declare-fun b!5728901 () Bool)

(assert (=> b!5728901 true))

(declare-fun b!5728871 () Bool)

(assert (=> b!5728871 true))

(declare-fun e!3522396 () Bool)

(declare-fun e!3522398 () Bool)

(assert (=> b!5728871 (= e!3522396 e!3522398)))

(declare-fun res!2418620 () Bool)

(assert (=> b!5728871 (=> res!2418620 e!3522398)))

(declare-datatypes ((C!31728 0))(
  ( (C!31729 (val!25566 Int)) )
))
(declare-datatypes ((Regex!15729 0))(
  ( (ElementMatch!15729 (c!1010799 C!31728)) (Concat!24574 (regOne!31970 Regex!15729) (regTwo!31970 Regex!15729)) (EmptyExpr!15729) (Star!15729 (reg!16058 Regex!15729)) (EmptyLang!15729) (Union!15729 (regOne!31971 Regex!15729) (regTwo!31971 Regex!15729)) )
))
(declare-datatypes ((List!63486 0))(
  ( (Nil!63362) (Cons!63362 (h!69810 Regex!15729) (t!376814 List!63486)) )
))
(declare-datatypes ((Context!10226 0))(
  ( (Context!10227 (exprs!5613 List!63486)) )
))
(declare-fun lt!2280160 () Context!10226)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2280155 () (InoxSet Context!10226))

(declare-fun lt!2280138 () (InoxSet Context!10226))

(declare-fun appendTo!108 ((InoxSet Context!10226) Context!10226) (InoxSet Context!10226))

(assert (=> b!5728871 (= res!2418620 (not (= (appendTo!108 lt!2280155 lt!2280160) lt!2280138)))))

(declare-fun r!7292 () Regex!15729)

(declare-fun lt!2280151 () List!63486)

(declare-fun lambda!309882 () Int)

(declare-fun map!14514 ((InoxSet Context!10226) Int) (InoxSet Context!10226))

(declare-fun ++!13930 (List!63486 List!63486) List!63486)

(assert (=> b!5728871 (= (map!14514 lt!2280155 lambda!309882) (store ((as const (Array Context!10226 Bool)) false) (Context!10227 (++!13930 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362) lt!2280151)) true))))

(declare-datatypes ((Unit!156448 0))(
  ( (Unit!156449) )
))
(declare-fun lt!2280130 () Unit!156448)

(declare-fun lambda!309883 () Int)

(declare-fun lemmaConcatPreservesForall!298 (List!63486 List!63486 Int) Unit!156448)

(assert (=> b!5728871 (= lt!2280130 (lemmaConcatPreservesForall!298 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362) lt!2280151 lambda!309883))))

(declare-fun lt!2280124 () Context!10226)

(declare-fun lt!2280150 () Unit!156448)

(declare-fun lemmaMapOnSingletonSet!124 ((InoxSet Context!10226) Context!10226 Int) Unit!156448)

(assert (=> b!5728871 (= lt!2280150 (lemmaMapOnSingletonSet!124 lt!2280155 lt!2280124 lambda!309882))))

(declare-fun b!5728872 () Bool)

(declare-fun res!2418615 () Bool)

(declare-fun e!3522379 () Bool)

(assert (=> b!5728872 (=> res!2418615 e!3522379)))

(get-info :version)

(assert (=> b!5728872 (= res!2418615 (or ((_ is Concat!24574) (regOne!31970 r!7292)) (not ((_ is Star!15729) (regOne!31970 r!7292)))))))

(declare-fun b!5728873 () Bool)

(declare-fun e!3522382 () Bool)

(declare-fun tp_is_empty!40711 () Bool)

(assert (=> b!5728873 (= e!3522382 tp_is_empty!40711)))

(declare-fun b!5728874 () Bool)

(declare-fun tp!1585923 () Bool)

(declare-fun tp!1585924 () Bool)

(assert (=> b!5728874 (= e!3522382 (and tp!1585923 tp!1585924))))

(declare-fun b!5728875 () Bool)

(declare-fun e!3522394 () Bool)

(assert (=> b!5728875 (= e!3522394 e!3522396)))

(declare-fun res!2418612 () Bool)

(assert (=> b!5728875 (=> res!2418612 e!3522396)))

(declare-fun e!3522380 () Bool)

(assert (=> b!5728875 (= res!2418612 e!3522380)))

(declare-fun res!2418609 () Bool)

(assert (=> b!5728875 (=> (not res!2418609) (not e!3522380))))

(declare-fun lt!2280133 () Bool)

(assert (=> b!5728875 (= res!2418609 (not lt!2280133))))

(declare-fun lt!2280146 () (InoxSet Context!10226))

(declare-datatypes ((List!63487 0))(
  ( (Nil!63363) (Cons!63363 (h!69811 C!31728) (t!376815 List!63487)) )
))
(declare-fun s!2326 () List!63487)

(declare-fun matchZipper!1867 ((InoxSet Context!10226) List!63487) Bool)

(assert (=> b!5728875 (= lt!2280133 (matchZipper!1867 lt!2280146 (t!376815 s!2326)))))

(declare-fun b!5728876 () Bool)

(declare-fun e!3522384 () Bool)

(assert (=> b!5728876 (= e!3522398 e!3522384)))

(declare-fun res!2418619 () Bool)

(assert (=> b!5728876 (=> res!2418619 e!3522384)))

(declare-datatypes ((tuple2!65652 0))(
  ( (tuple2!65653 (_1!36129 List!63487) (_2!36129 List!63487)) )
))
(declare-fun lt!2280149 () tuple2!65652)

(declare-fun ++!13931 (List!63487 List!63487) List!63487)

(assert (=> b!5728876 (= res!2418619 (not (= s!2326 (++!13931 (_1!36129 lt!2280149) (_2!36129 lt!2280149)))))))

(declare-datatypes ((Option!15738 0))(
  ( (None!15737) (Some!15737 (v!51792 tuple2!65652)) )
))
(declare-fun lt!2280141 () Option!15738)

(declare-fun get!21849 (Option!15738) tuple2!65652)

(assert (=> b!5728876 (= lt!2280149 (get!21849 lt!2280141))))

(declare-fun isDefined!12441 (Option!15738) Bool)

(assert (=> b!5728876 (isDefined!12441 lt!2280141)))

(declare-fun lt!2280126 () (InoxSet Context!10226))

(declare-fun findConcatSeparationZippers!116 ((InoxSet Context!10226) (InoxSet Context!10226) List!63487 List!63487 List!63487) Option!15738)

(assert (=> b!5728876 (= lt!2280141 (findConcatSeparationZippers!116 lt!2280155 lt!2280126 Nil!63363 s!2326 s!2326))))

(declare-fun lt!2280132 () Unit!156448)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!116 ((InoxSet Context!10226) Context!10226 List!63487) Unit!156448)

(assert (=> b!5728876 (= lt!2280132 (lemmaConcatZipperMatchesStringThenFindConcatDefined!116 lt!2280155 lt!2280160 s!2326))))

(declare-fun b!5728877 () Bool)

(assert (=> b!5728877 (= e!3522384 (matchZipper!1867 lt!2280126 (_2!36129 lt!2280149)))))

(declare-fun b!5728878 () Bool)

(declare-fun e!3522390 () Bool)

(declare-fun e!3522387 () Bool)

(assert (=> b!5728878 (= e!3522390 e!3522387)))

(declare-fun res!2418630 () Bool)

(assert (=> b!5728878 (=> (not res!2418630) (not e!3522387))))

(declare-fun lt!2280144 () Regex!15729)

(assert (=> b!5728878 (= res!2418630 (= r!7292 lt!2280144))))

(declare-datatypes ((List!63488 0))(
  ( (Nil!63364) (Cons!63364 (h!69812 Context!10226) (t!376816 List!63488)) )
))
(declare-fun zl!343 () List!63488)

(declare-fun unfocusZipper!1471 (List!63488) Regex!15729)

(assert (=> b!5728878 (= lt!2280144 (unfocusZipper!1471 zl!343))))

(declare-fun b!5728879 () Bool)

(declare-fun e!3522388 () Bool)

(declare-fun e!3522385 () Bool)

(assert (=> b!5728879 (= e!3522388 e!3522385)))

(declare-fun res!2418633 () Bool)

(assert (=> b!5728879 (=> res!2418633 e!3522385)))

(declare-fun lt!2280159 () Context!10226)

(declare-fun lt!2280153 () Regex!15729)

(assert (=> b!5728879 (= res!2418633 (not (= (unfocusZipper!1471 (Cons!63364 lt!2280159 Nil!63364)) lt!2280153)))))

(declare-fun lt!2280143 () Regex!15729)

(assert (=> b!5728879 (= lt!2280153 (Concat!24574 (reg!16058 (regOne!31970 r!7292)) lt!2280143))))

(declare-fun b!5728880 () Bool)

(declare-fun e!3522386 () Bool)

(assert (=> b!5728880 (= e!3522386 e!3522388)))

(declare-fun res!2418628 () Bool)

(assert (=> b!5728880 (=> res!2418628 e!3522388)))

(assert (=> b!5728880 (= res!2418628 (not (= r!7292 lt!2280143)))))

(declare-fun lt!2280145 () Regex!15729)

(assert (=> b!5728880 (= lt!2280143 (Concat!24574 lt!2280145 (regTwo!31970 r!7292)))))

(declare-fun b!5728881 () Bool)

(declare-fun res!2418606 () Bool)

(declare-fun e!3522401 () Bool)

(assert (=> b!5728881 (=> res!2418606 e!3522401)))

(declare-fun generalisedConcat!1344 (List!63486) Regex!15729)

(assert (=> b!5728881 (= res!2418606 (not (= r!7292 (generalisedConcat!1344 (exprs!5613 (h!69812 zl!343))))))))

(declare-fun b!5728882 () Bool)

(declare-fun e!3522392 () Bool)

(declare-fun tp!1585922 () Bool)

(assert (=> b!5728882 (= e!3522392 tp!1585922)))

(declare-fun b!5728883 () Bool)

(declare-fun res!2418616 () Bool)

(assert (=> b!5728883 (=> res!2418616 e!3522401)))

(declare-fun isEmpty!35241 (List!63488) Bool)

(assert (=> b!5728883 (= res!2418616 (not (isEmpty!35241 (t!376816 zl!343))))))

(declare-fun b!5728884 () Bool)

(declare-fun res!2418631 () Bool)

(assert (=> b!5728884 (=> (not res!2418631) (not e!3522390))))

(declare-fun z!1189 () (InoxSet Context!10226))

(declare-fun toList!9513 ((InoxSet Context!10226)) List!63488)

(assert (=> b!5728884 (= res!2418631 (= (toList!9513 z!1189) zl!343))))

(declare-fun b!5728885 () Bool)

(declare-fun res!2418604 () Bool)

(assert (=> b!5728885 (=> res!2418604 e!3522401)))

(assert (=> b!5728885 (= res!2418604 (not ((_ is Cons!63362) (exprs!5613 (h!69812 zl!343)))))))

(declare-fun b!5728886 () Bool)

(declare-fun e!3522391 () Bool)

(declare-fun lt!2280129 () (InoxSet Context!10226))

(assert (=> b!5728886 (= e!3522391 (matchZipper!1867 lt!2280129 (t!376815 s!2326)))))

(declare-fun b!5728887 () Bool)

(declare-fun e!3522381 () Bool)

(declare-fun nullable!5761 (Regex!15729) Bool)

(assert (=> b!5728887 (= e!3522381 (nullable!5761 (regOne!31970 (regOne!31970 r!7292))))))

(declare-fun b!5728888 () Bool)

(assert (=> b!5728888 (= e!3522387 (not e!3522401))))

(declare-fun res!2418622 () Bool)

(assert (=> b!5728888 (=> res!2418622 e!3522401)))

(assert (=> b!5728888 (= res!2418622 (not ((_ is Cons!63364) zl!343)))))

(declare-fun lt!2280157 () Bool)

(declare-fun matchRSpec!2832 (Regex!15729 List!63487) Bool)

(assert (=> b!5728888 (= lt!2280157 (matchRSpec!2832 r!7292 s!2326))))

(declare-fun matchR!7914 (Regex!15729 List!63487) Bool)

(assert (=> b!5728888 (= lt!2280157 (matchR!7914 r!7292 s!2326))))

(declare-fun lt!2280140 () Unit!156448)

(declare-fun mainMatchTheorem!2832 (Regex!15729 List!63487) Unit!156448)

(assert (=> b!5728888 (= lt!2280140 (mainMatchTheorem!2832 r!7292 s!2326))))

(declare-fun b!5728889 () Bool)

(declare-fun res!2418605 () Bool)

(assert (=> b!5728889 (=> res!2418605 e!3522379)))

(assert (=> b!5728889 (= res!2418605 e!3522381)))

(declare-fun res!2418621 () Bool)

(assert (=> b!5728889 (=> (not res!2418621) (not e!3522381))))

(assert (=> b!5728889 (= res!2418621 ((_ is Concat!24574) (regOne!31970 r!7292)))))

(declare-fun b!5728890 () Bool)

(declare-fun e!3522389 () Bool)

(declare-fun e!3522397 () Bool)

(assert (=> b!5728890 (= e!3522389 e!3522397)))

(declare-fun res!2418603 () Bool)

(assert (=> b!5728890 (=> res!2418603 e!3522397)))

(declare-fun lt!2280154 () (InoxSet Context!10226))

(declare-fun lt!2280127 () (InoxSet Context!10226))

(assert (=> b!5728890 (= res!2418603 (not (= lt!2280154 lt!2280127)))))

(declare-fun lambda!309881 () Int)

(declare-fun flatMap!1342 ((InoxSet Context!10226) Int) (InoxSet Context!10226))

(declare-fun derivationStepZipperUp!997 (Context!10226 C!31728) (InoxSet Context!10226))

(assert (=> b!5728890 (= (flatMap!1342 lt!2280138 lambda!309881) (derivationStepZipperUp!997 lt!2280159 (h!69811 s!2326)))))

(declare-fun lt!2280128 () Unit!156448)

(declare-fun lemmaFlatMapOnSingletonSet!874 ((InoxSet Context!10226) Context!10226 Int) Unit!156448)

(assert (=> b!5728890 (= lt!2280128 (lemmaFlatMapOnSingletonSet!874 lt!2280138 lt!2280159 lambda!309881))))

(declare-fun lt!2280123 () (InoxSet Context!10226))

(assert (=> b!5728890 (= lt!2280123 (derivationStepZipperUp!997 lt!2280159 (h!69811 s!2326)))))

(declare-fun derivationStepZipper!1812 ((InoxSet Context!10226) C!31728) (InoxSet Context!10226))

(assert (=> b!5728890 (= lt!2280154 (derivationStepZipper!1812 lt!2280138 (h!69811 s!2326)))))

(assert (=> b!5728890 (= lt!2280138 (store ((as const (Array Context!10226 Bool)) false) lt!2280159 true))))

(assert (=> b!5728890 (= lt!2280159 (Context!10227 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) lt!2280151)))))

(declare-fun b!5728891 () Bool)

(declare-fun e!3522393 () Bool)

(assert (=> b!5728891 (= e!3522385 e!3522393)))

(declare-fun res!2418629 () Bool)

(assert (=> b!5728891 (=> res!2418629 e!3522393)))

(assert (=> b!5728891 (= res!2418629 (not (= (unfocusZipper!1471 (Cons!63364 lt!2280124 Nil!63364)) (reg!16058 (regOne!31970 r!7292)))))))

(assert (=> b!5728891 (= (flatMap!1342 lt!2280126 lambda!309881) (derivationStepZipperUp!997 lt!2280160 (h!69811 s!2326)))))

(declare-fun lt!2280139 () Unit!156448)

(assert (=> b!5728891 (= lt!2280139 (lemmaFlatMapOnSingletonSet!874 lt!2280126 lt!2280160 lambda!309881))))

(assert (=> b!5728891 (= (flatMap!1342 lt!2280155 lambda!309881) (derivationStepZipperUp!997 lt!2280124 (h!69811 s!2326)))))

(declare-fun lt!2280135 () Unit!156448)

(assert (=> b!5728891 (= lt!2280135 (lemmaFlatMapOnSingletonSet!874 lt!2280155 lt!2280124 lambda!309881))))

(declare-fun lt!2280131 () (InoxSet Context!10226))

(assert (=> b!5728891 (= lt!2280131 (derivationStepZipperUp!997 lt!2280160 (h!69811 s!2326)))))

(declare-fun lt!2280122 () (InoxSet Context!10226))

(assert (=> b!5728891 (= lt!2280122 (derivationStepZipperUp!997 lt!2280124 (h!69811 s!2326)))))

(assert (=> b!5728891 (= lt!2280126 (store ((as const (Array Context!10226 Bool)) false) lt!2280160 true))))

(assert (=> b!5728891 (= lt!2280155 (store ((as const (Array Context!10226 Bool)) false) lt!2280124 true))))

(assert (=> b!5728891 (= lt!2280124 (Context!10227 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362)))))

(declare-fun e!3522402 () Bool)

(assert (=> b!5728892 (= e!3522401 e!3522402)))

(declare-fun res!2418610 () Bool)

(assert (=> b!5728892 (=> res!2418610 e!3522402)))

(declare-fun lt!2280121 () Bool)

(assert (=> b!5728892 (= res!2418610 (or (not (= lt!2280157 lt!2280121)) ((_ is Nil!63363) s!2326)))))

(declare-fun Exists!2829 (Int) Bool)

(assert (=> b!5728892 (= (Exists!2829 lambda!309879) (Exists!2829 lambda!309880))))

(declare-fun lt!2280136 () Unit!156448)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1458 (Regex!15729 Regex!15729 List!63487) Unit!156448)

(assert (=> b!5728892 (= lt!2280136 (lemmaExistCutMatchRandMatchRSpecEquivalent!1458 (regOne!31970 r!7292) (regTwo!31970 r!7292) s!2326))))

(assert (=> b!5728892 (= lt!2280121 (Exists!2829 lambda!309879))))

(declare-fun findConcatSeparation!2152 (Regex!15729 Regex!15729 List!63487 List!63487 List!63487) Option!15738)

(assert (=> b!5728892 (= lt!2280121 (isDefined!12441 (findConcatSeparation!2152 (regOne!31970 r!7292) (regTwo!31970 r!7292) Nil!63363 s!2326 s!2326)))))

(declare-fun lt!2280147 () Unit!156448)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1916 (Regex!15729 Regex!15729 List!63487) Unit!156448)

(assert (=> b!5728892 (= lt!2280147 (lemmaFindConcatSeparationEquivalentToExists!1916 (regOne!31970 r!7292) (regTwo!31970 r!7292) s!2326))))

(declare-fun e!3522400 () Bool)

(declare-fun tp!1585930 () Bool)

(declare-fun b!5728893 () Bool)

(declare-fun e!3522399 () Bool)

(declare-fun inv!82569 (Context!10226) Bool)

(assert (=> b!5728893 (= e!3522399 (and (inv!82569 (h!69812 zl!343)) e!3522400 tp!1585930))))

(declare-fun b!5728894 () Bool)

(declare-fun e!3522383 () Bool)

(declare-fun tp!1585921 () Bool)

(assert (=> b!5728894 (= e!3522383 (and tp_is_empty!40711 tp!1585921))))

(declare-fun b!5728895 () Bool)

(assert (=> b!5728895 (= e!3522393 e!3522394)))

(declare-fun res!2418634 () Bool)

(assert (=> b!5728895 (=> res!2418634 e!3522394)))

(assert (=> b!5728895 (= res!2418634 lt!2280157)))

(assert (=> b!5728895 (= (matchR!7914 lt!2280153 s!2326) (matchRSpec!2832 lt!2280153 s!2326))))

(declare-fun lt!2280148 () Unit!156448)

(assert (=> b!5728895 (= lt!2280148 (mainMatchTheorem!2832 lt!2280153 s!2326))))

(declare-fun setElem!38425 () Context!10226)

(declare-fun setRes!38425 () Bool)

(declare-fun setNonEmpty!38425 () Bool)

(declare-fun tp!1585927 () Bool)

(assert (=> setNonEmpty!38425 (= setRes!38425 (and tp!1585927 (inv!82569 setElem!38425) e!3522392))))

(declare-fun setRest!38425 () (InoxSet Context!10226))

(assert (=> setNonEmpty!38425 (= z!1189 ((_ map or) (store ((as const (Array Context!10226 Bool)) false) setElem!38425 true) setRest!38425))))

(declare-fun res!2418623 () Bool)

(assert (=> start!589632 (=> (not res!2418623) (not e!3522390))))

(declare-fun validRegex!7465 (Regex!15729) Bool)

(assert (=> start!589632 (= res!2418623 (validRegex!7465 r!7292))))

(assert (=> start!589632 e!3522390))

(assert (=> start!589632 e!3522382))

(declare-fun condSetEmpty!38425 () Bool)

(assert (=> start!589632 (= condSetEmpty!38425 (= z!1189 ((as const (Array Context!10226 Bool)) false)))))

(assert (=> start!589632 setRes!38425))

(assert (=> start!589632 e!3522399))

(assert (=> start!589632 e!3522383))

(declare-fun b!5728896 () Bool)

(declare-fun res!2418614 () Bool)

(assert (=> b!5728896 (=> res!2418614 e!3522401)))

(assert (=> b!5728896 (= res!2418614 (or ((_ is EmptyExpr!15729) r!7292) ((_ is EmptyLang!15729) r!7292) ((_ is ElementMatch!15729) r!7292) ((_ is Union!15729) r!7292) (not ((_ is Concat!24574) r!7292))))))

(declare-fun b!5728897 () Bool)

(declare-fun tp!1585925 () Bool)

(assert (=> b!5728897 (= e!3522382 tp!1585925)))

(declare-fun b!5728898 () Bool)

(assert (=> b!5728898 (= e!3522397 e!3522386)))

(declare-fun res!2418627 () Bool)

(assert (=> b!5728898 (=> res!2418627 e!3522386)))

(declare-fun lt!2280137 () Bool)

(assert (=> b!5728898 (= res!2418627 (not (= lt!2280137 (matchZipper!1867 lt!2280154 (t!376815 s!2326)))))))

(assert (=> b!5728898 (= lt!2280137 (matchZipper!1867 lt!2280138 s!2326))))

(declare-fun b!5728899 () Bool)

(declare-fun res!2418632 () Bool)

(assert (=> b!5728899 (=> res!2418632 e!3522393)))

(assert (=> b!5728899 (= res!2418632 (not (= (unfocusZipper!1471 (Cons!63364 lt!2280160 Nil!63364)) lt!2280143)))))

(declare-fun b!5728900 () Bool)

(declare-fun res!2418611 () Bool)

(assert (=> b!5728900 (=> res!2418611 e!3522394)))

(assert (=> b!5728900 (= res!2418611 (not (matchZipper!1867 z!1189 s!2326)))))

(assert (=> b!5728901 (= e!3522402 e!3522379)))

(declare-fun res!2418626 () Bool)

(assert (=> b!5728901 (=> res!2418626 e!3522379)))

(assert (=> b!5728901 (= res!2418626 (or (and ((_ is ElementMatch!15729) (regOne!31970 r!7292)) (= (c!1010799 (regOne!31970 r!7292)) (h!69811 s!2326))) ((_ is Union!15729) (regOne!31970 r!7292))))))

(declare-fun lt!2280156 () Unit!156448)

(declare-fun e!3522395 () Unit!156448)

(assert (=> b!5728901 (= lt!2280156 e!3522395)))

(declare-fun c!1010798 () Bool)

(declare-fun lt!2280125 () Bool)

(assert (=> b!5728901 (= c!1010798 lt!2280125)))

(assert (=> b!5728901 (= lt!2280125 (nullable!5761 (h!69810 (exprs!5613 (h!69812 zl!343)))))))

(assert (=> b!5728901 (= (flatMap!1342 z!1189 lambda!309881) (derivationStepZipperUp!997 (h!69812 zl!343) (h!69811 s!2326)))))

(declare-fun lt!2280134 () Unit!156448)

(assert (=> b!5728901 (= lt!2280134 (lemmaFlatMapOnSingletonSet!874 z!1189 (h!69812 zl!343) lambda!309881))))

(declare-fun lt!2280142 () Context!10226)

(assert (=> b!5728901 (= lt!2280129 (derivationStepZipperUp!997 lt!2280142 (h!69811 s!2326)))))

(declare-fun derivationStepZipperDown!1071 (Regex!15729 Context!10226 C!31728) (InoxSet Context!10226))

(assert (=> b!5728901 (= lt!2280146 (derivationStepZipperDown!1071 (h!69810 (exprs!5613 (h!69812 zl!343))) lt!2280142 (h!69811 s!2326)))))

(assert (=> b!5728901 (= lt!2280142 (Context!10227 (t!376814 (exprs!5613 (h!69812 zl!343)))))))

(declare-fun lt!2280158 () (InoxSet Context!10226))

(assert (=> b!5728901 (= lt!2280158 (derivationStepZipperUp!997 (Context!10227 (Cons!63362 (h!69810 (exprs!5613 (h!69812 zl!343))) (t!376814 (exprs!5613 (h!69812 zl!343))))) (h!69811 s!2326)))))

(declare-fun b!5728902 () Bool)

(assert (=> b!5728902 (= e!3522380 (not (matchZipper!1867 lt!2280129 (t!376815 s!2326))))))

(declare-fun b!5728903 () Bool)

(declare-fun res!2418617 () Bool)

(assert (=> b!5728903 (=> res!2418617 e!3522402)))

(declare-fun isEmpty!35242 (List!63486) Bool)

(assert (=> b!5728903 (= res!2418617 (isEmpty!35242 (t!376814 (exprs!5613 (h!69812 zl!343)))))))

(declare-fun b!5728904 () Bool)

(declare-fun res!2418607 () Bool)

(assert (=> b!5728904 (=> res!2418607 e!3522386)))

(assert (=> b!5728904 (= res!2418607 (not (= lt!2280144 r!7292)))))

(declare-fun b!5728905 () Bool)

(declare-fun tp!1585928 () Bool)

(declare-fun tp!1585929 () Bool)

(assert (=> b!5728905 (= e!3522382 (and tp!1585928 tp!1585929))))

(declare-fun b!5728906 () Bool)

(declare-fun Unit!156450 () Unit!156448)

(assert (=> b!5728906 (= e!3522395 Unit!156450)))

(declare-fun lt!2280152 () Unit!156448)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!754 ((InoxSet Context!10226) (InoxSet Context!10226) List!63487) Unit!156448)

(assert (=> b!5728906 (= lt!2280152 (lemmaZipperConcatMatchesSameAsBothZippers!754 lt!2280146 lt!2280129 (t!376815 s!2326)))))

(declare-fun res!2418613 () Bool)

(assert (=> b!5728906 (= res!2418613 (matchZipper!1867 lt!2280146 (t!376815 s!2326)))))

(assert (=> b!5728906 (=> res!2418613 e!3522391)))

(assert (=> b!5728906 (= (matchZipper!1867 ((_ map or) lt!2280146 lt!2280129) (t!376815 s!2326)) e!3522391)))

(declare-fun b!5728907 () Bool)

(declare-fun res!2418608 () Bool)

(assert (=> b!5728907 (=> res!2418608 e!3522394)))

(assert (=> b!5728907 (= res!2418608 (not lt!2280125))))

(declare-fun b!5728908 () Bool)

(declare-fun Unit!156451 () Unit!156448)

(assert (=> b!5728908 (= e!3522395 Unit!156451)))

(declare-fun b!5728909 () Bool)

(declare-fun tp!1585926 () Bool)

(assert (=> b!5728909 (= e!3522400 tp!1585926)))

(declare-fun b!5728910 () Bool)

(declare-fun res!2418618 () Bool)

(assert (=> b!5728910 (=> res!2418618 e!3522401)))

(declare-fun generalisedUnion!1592 (List!63486) Regex!15729)

(declare-fun unfocusZipperList!1157 (List!63488) List!63486)

(assert (=> b!5728910 (= res!2418618 (not (= r!7292 (generalisedUnion!1592 (unfocusZipperList!1157 zl!343)))))))

(declare-fun b!5728911 () Bool)

(declare-fun res!2418624 () Bool)

(assert (=> b!5728911 (=> res!2418624 e!3522384)))

(assert (=> b!5728911 (= res!2418624 (not (matchZipper!1867 lt!2280155 (_1!36129 lt!2280149))))))

(declare-fun b!5728912 () Bool)

(declare-fun res!2418625 () Bool)

(assert (=> b!5728912 (=> res!2418625 e!3522396)))

(assert (=> b!5728912 (= res!2418625 (or (not lt!2280133) (not lt!2280137)))))

(declare-fun setIsEmpty!38425 () Bool)

(assert (=> setIsEmpty!38425 setRes!38425))

(declare-fun b!5728913 () Bool)

(assert (=> b!5728913 (= e!3522379 e!3522389)))

(declare-fun res!2418635 () Bool)

(assert (=> b!5728913 (=> res!2418635 e!3522389)))

(assert (=> b!5728913 (= res!2418635 (not (= lt!2280146 lt!2280127)))))

(assert (=> b!5728913 (= lt!2280127 (derivationStepZipperDown!1071 (reg!16058 (regOne!31970 r!7292)) lt!2280160 (h!69811 s!2326)))))

(assert (=> b!5728913 (= lt!2280160 (Context!10227 lt!2280151))))

(assert (=> b!5728913 (= lt!2280151 (Cons!63362 lt!2280145 (t!376814 (exprs!5613 (h!69812 zl!343)))))))

(assert (=> b!5728913 (= lt!2280145 (Star!15729 (reg!16058 (regOne!31970 r!7292))))))

(assert (= (and start!589632 res!2418623) b!5728884))

(assert (= (and b!5728884 res!2418631) b!5728878))

(assert (= (and b!5728878 res!2418630) b!5728888))

(assert (= (and b!5728888 (not res!2418622)) b!5728883))

(assert (= (and b!5728883 (not res!2418616)) b!5728881))

(assert (= (and b!5728881 (not res!2418606)) b!5728885))

(assert (= (and b!5728885 (not res!2418604)) b!5728910))

(assert (= (and b!5728910 (not res!2418618)) b!5728896))

(assert (= (and b!5728896 (not res!2418614)) b!5728892))

(assert (= (and b!5728892 (not res!2418610)) b!5728903))

(assert (= (and b!5728903 (not res!2418617)) b!5728901))

(assert (= (and b!5728901 c!1010798) b!5728906))

(assert (= (and b!5728901 (not c!1010798)) b!5728908))

(assert (= (and b!5728906 (not res!2418613)) b!5728886))

(assert (= (and b!5728901 (not res!2418626)) b!5728889))

(assert (= (and b!5728889 res!2418621) b!5728887))

(assert (= (and b!5728889 (not res!2418605)) b!5728872))

(assert (= (and b!5728872 (not res!2418615)) b!5728913))

(assert (= (and b!5728913 (not res!2418635)) b!5728890))

(assert (= (and b!5728890 (not res!2418603)) b!5728898))

(assert (= (and b!5728898 (not res!2418627)) b!5728904))

(assert (= (and b!5728904 (not res!2418607)) b!5728880))

(assert (= (and b!5728880 (not res!2418628)) b!5728879))

(assert (= (and b!5728879 (not res!2418633)) b!5728891))

(assert (= (and b!5728891 (not res!2418629)) b!5728899))

(assert (= (and b!5728899 (not res!2418632)) b!5728895))

(assert (= (and b!5728895 (not res!2418634)) b!5728900))

(assert (= (and b!5728900 (not res!2418611)) b!5728907))

(assert (= (and b!5728907 (not res!2418608)) b!5728875))

(assert (= (and b!5728875 res!2418609) b!5728902))

(assert (= (and b!5728875 (not res!2418612)) b!5728912))

(assert (= (and b!5728912 (not res!2418625)) b!5728871))

(assert (= (and b!5728871 (not res!2418620)) b!5728876))

(assert (= (and b!5728876 (not res!2418619)) b!5728911))

(assert (= (and b!5728911 (not res!2418624)) b!5728877))

(assert (= (and start!589632 ((_ is ElementMatch!15729) r!7292)) b!5728873))

(assert (= (and start!589632 ((_ is Concat!24574) r!7292)) b!5728874))

(assert (= (and start!589632 ((_ is Star!15729) r!7292)) b!5728897))

(assert (= (and start!589632 ((_ is Union!15729) r!7292)) b!5728905))

(assert (= (and start!589632 condSetEmpty!38425) setIsEmpty!38425))

(assert (= (and start!589632 (not condSetEmpty!38425)) setNonEmpty!38425))

(assert (= setNonEmpty!38425 b!5728882))

(assert (= b!5728893 b!5728909))

(assert (= (and start!589632 ((_ is Cons!63364) zl!343)) b!5728893))

(assert (= (and start!589632 ((_ is Cons!63363) s!2326)) b!5728894))

(declare-fun m!6680988 () Bool)

(assert (=> start!589632 m!6680988))

(declare-fun m!6680990 () Bool)

(assert (=> b!5728871 m!6680990))

(declare-fun m!6680992 () Bool)

(assert (=> b!5728871 m!6680992))

(declare-fun m!6680994 () Bool)

(assert (=> b!5728871 m!6680994))

(declare-fun m!6680996 () Bool)

(assert (=> b!5728871 m!6680996))

(declare-fun m!6680998 () Bool)

(assert (=> b!5728871 m!6680998))

(declare-fun m!6681000 () Bool)

(assert (=> b!5728871 m!6681000))

(declare-fun m!6681002 () Bool)

(assert (=> b!5728903 m!6681002))

(declare-fun m!6681004 () Bool)

(assert (=> b!5728883 m!6681004))

(declare-fun m!6681006 () Bool)

(assert (=> b!5728877 m!6681006))

(declare-fun m!6681008 () Bool)

(assert (=> b!5728892 m!6681008))

(declare-fun m!6681010 () Bool)

(assert (=> b!5728892 m!6681010))

(declare-fun m!6681012 () Bool)

(assert (=> b!5728892 m!6681012))

(declare-fun m!6681014 () Bool)

(assert (=> b!5728892 m!6681014))

(declare-fun m!6681016 () Bool)

(assert (=> b!5728892 m!6681016))

(assert (=> b!5728892 m!6681008))

(assert (=> b!5728892 m!6681010))

(declare-fun m!6681018 () Bool)

(assert (=> b!5728892 m!6681018))

(declare-fun m!6681020 () Bool)

(assert (=> setNonEmpty!38425 m!6681020))

(declare-fun m!6681022 () Bool)

(assert (=> b!5728881 m!6681022))

(declare-fun m!6681024 () Bool)

(assert (=> b!5728875 m!6681024))

(declare-fun m!6681026 () Bool)

(assert (=> b!5728899 m!6681026))

(declare-fun m!6681028 () Bool)

(assert (=> b!5728913 m!6681028))

(declare-fun m!6681030 () Bool)

(assert (=> b!5728901 m!6681030))

(declare-fun m!6681032 () Bool)

(assert (=> b!5728901 m!6681032))

(declare-fun m!6681034 () Bool)

(assert (=> b!5728901 m!6681034))

(declare-fun m!6681036 () Bool)

(assert (=> b!5728901 m!6681036))

(declare-fun m!6681038 () Bool)

(assert (=> b!5728901 m!6681038))

(declare-fun m!6681040 () Bool)

(assert (=> b!5728901 m!6681040))

(declare-fun m!6681042 () Bool)

(assert (=> b!5728901 m!6681042))

(declare-fun m!6681044 () Bool)

(assert (=> b!5728891 m!6681044))

(declare-fun m!6681046 () Bool)

(assert (=> b!5728891 m!6681046))

(declare-fun m!6681048 () Bool)

(assert (=> b!5728891 m!6681048))

(declare-fun m!6681050 () Bool)

(assert (=> b!5728891 m!6681050))

(declare-fun m!6681052 () Bool)

(assert (=> b!5728891 m!6681052))

(declare-fun m!6681054 () Bool)

(assert (=> b!5728891 m!6681054))

(declare-fun m!6681056 () Bool)

(assert (=> b!5728891 m!6681056))

(declare-fun m!6681058 () Bool)

(assert (=> b!5728891 m!6681058))

(declare-fun m!6681060 () Bool)

(assert (=> b!5728891 m!6681060))

(declare-fun m!6681062 () Bool)

(assert (=> b!5728878 m!6681062))

(declare-fun m!6681064 () Bool)

(assert (=> b!5728898 m!6681064))

(declare-fun m!6681066 () Bool)

(assert (=> b!5728898 m!6681066))

(declare-fun m!6681068 () Bool)

(assert (=> b!5728879 m!6681068))

(declare-fun m!6681070 () Bool)

(assert (=> b!5728884 m!6681070))

(declare-fun m!6681072 () Bool)

(assert (=> b!5728902 m!6681072))

(declare-fun m!6681074 () Bool)

(assert (=> b!5728887 m!6681074))

(declare-fun m!6681076 () Bool)

(assert (=> b!5728895 m!6681076))

(declare-fun m!6681078 () Bool)

(assert (=> b!5728895 m!6681078))

(declare-fun m!6681080 () Bool)

(assert (=> b!5728895 m!6681080))

(declare-fun m!6681082 () Bool)

(assert (=> b!5728888 m!6681082))

(declare-fun m!6681084 () Bool)

(assert (=> b!5728888 m!6681084))

(declare-fun m!6681086 () Bool)

(assert (=> b!5728888 m!6681086))

(declare-fun m!6681088 () Bool)

(assert (=> b!5728911 m!6681088))

(declare-fun m!6681090 () Bool)

(assert (=> b!5728876 m!6681090))

(declare-fun m!6681092 () Bool)

(assert (=> b!5728876 m!6681092))

(declare-fun m!6681094 () Bool)

(assert (=> b!5728876 m!6681094))

(declare-fun m!6681096 () Bool)

(assert (=> b!5728876 m!6681096))

(declare-fun m!6681098 () Bool)

(assert (=> b!5728876 m!6681098))

(assert (=> b!5728886 m!6681072))

(declare-fun m!6681100 () Bool)

(assert (=> b!5728906 m!6681100))

(assert (=> b!5728906 m!6681024))

(declare-fun m!6681102 () Bool)

(assert (=> b!5728906 m!6681102))

(declare-fun m!6681104 () Bool)

(assert (=> b!5728890 m!6681104))

(declare-fun m!6681106 () Bool)

(assert (=> b!5728890 m!6681106))

(declare-fun m!6681108 () Bool)

(assert (=> b!5728890 m!6681108))

(declare-fun m!6681110 () Bool)

(assert (=> b!5728890 m!6681110))

(declare-fun m!6681112 () Bool)

(assert (=> b!5728890 m!6681112))

(declare-fun m!6681114 () Bool)

(assert (=> b!5728910 m!6681114))

(assert (=> b!5728910 m!6681114))

(declare-fun m!6681116 () Bool)

(assert (=> b!5728910 m!6681116))

(declare-fun m!6681118 () Bool)

(assert (=> b!5728900 m!6681118))

(declare-fun m!6681120 () Bool)

(assert (=> b!5728893 m!6681120))

(check-sat (not b!5728903) (not start!589632) (not b!5728871) (not b!5728881) (not b!5728882) (not b!5728886) (not b!5728899) (not b!5728895) (not b!5728891) tp_is_empty!40711 (not b!5728875) (not b!5728905) (not b!5728901) (not b!5728887) (not b!5728893) (not b!5728890) (not b!5728879) (not setNonEmpty!38425) (not b!5728898) (not b!5728900) (not b!5728902) (not b!5728884) (not b!5728897) (not b!5728877) (not b!5728909) (not b!5728906) (not b!5728874) (not b!5728876) (not b!5728913) (not b!5728878) (not b!5728894) (not b!5728888) (not b!5728910) (not b!5728883) (not b!5728911) (not b!5728892))
(check-sat)
(get-model)

(declare-fun d!1807032 () Bool)

(declare-fun c!1010913 () Bool)

(declare-fun isEmpty!35245 (List!63487) Bool)

(assert (=> d!1807032 (= c!1010913 (isEmpty!35245 (t!376815 s!2326)))))

(declare-fun e!3522611 () Bool)

(assert (=> d!1807032 (= (matchZipper!1867 lt!2280129 (t!376815 s!2326)) e!3522611)))

(declare-fun b!5729290 () Bool)

(declare-fun nullableZipper!1675 ((InoxSet Context!10226)) Bool)

(assert (=> b!5729290 (= e!3522611 (nullableZipper!1675 lt!2280129))))

(declare-fun b!5729291 () Bool)

(declare-fun head!12130 (List!63487) C!31728)

(declare-fun tail!11225 (List!63487) List!63487)

(assert (=> b!5729291 (= e!3522611 (matchZipper!1867 (derivationStepZipper!1812 lt!2280129 (head!12130 (t!376815 s!2326))) (tail!11225 (t!376815 s!2326))))))

(assert (= (and d!1807032 c!1010913) b!5729290))

(assert (= (and d!1807032 (not c!1010913)) b!5729291))

(declare-fun m!6681458 () Bool)

(assert (=> d!1807032 m!6681458))

(declare-fun m!6681460 () Bool)

(assert (=> b!5729290 m!6681460))

(declare-fun m!6681462 () Bool)

(assert (=> b!5729291 m!6681462))

(assert (=> b!5729291 m!6681462))

(declare-fun m!6681464 () Bool)

(assert (=> b!5729291 m!6681464))

(declare-fun m!6681466 () Bool)

(assert (=> b!5729291 m!6681466))

(assert (=> b!5729291 m!6681464))

(assert (=> b!5729291 m!6681466))

(declare-fun m!6681468 () Bool)

(assert (=> b!5729291 m!6681468))

(assert (=> b!5728902 d!1807032))

(declare-fun d!1807050 () Bool)

(assert (=> d!1807050 (= (isEmpty!35241 (t!376816 zl!343)) ((_ is Nil!63364) (t!376816 zl!343)))))

(assert (=> b!5728883 d!1807050))

(declare-fun d!1807052 () Bool)

(assert (=> d!1807052 (= (isEmpty!35242 (t!376814 (exprs!5613 (h!69812 zl!343)))) ((_ is Nil!63362) (t!376814 (exprs!5613 (h!69812 zl!343)))))))

(assert (=> b!5728903 d!1807052))

(declare-fun d!1807054 () Bool)

(declare-fun lt!2280233 () Regex!15729)

(assert (=> d!1807054 (validRegex!7465 lt!2280233)))

(assert (=> d!1807054 (= lt!2280233 (generalisedUnion!1592 (unfocusZipperList!1157 (Cons!63364 lt!2280159 Nil!63364))))))

(assert (=> d!1807054 (= (unfocusZipper!1471 (Cons!63364 lt!2280159 Nil!63364)) lt!2280233)))

(declare-fun bs!1339444 () Bool)

(assert (= bs!1339444 d!1807054))

(declare-fun m!6681478 () Bool)

(assert (=> bs!1339444 m!6681478))

(declare-fun m!6681480 () Bool)

(assert (=> bs!1339444 m!6681480))

(assert (=> bs!1339444 m!6681480))

(declare-fun m!6681482 () Bool)

(assert (=> bs!1339444 m!6681482))

(assert (=> b!5728879 d!1807054))

(declare-fun d!1807062 () Bool)

(declare-fun lt!2280234 () Regex!15729)

(assert (=> d!1807062 (validRegex!7465 lt!2280234)))

(assert (=> d!1807062 (= lt!2280234 (generalisedUnion!1592 (unfocusZipperList!1157 (Cons!63364 lt!2280160 Nil!63364))))))

(assert (=> d!1807062 (= (unfocusZipper!1471 (Cons!63364 lt!2280160 Nil!63364)) lt!2280234)))

(declare-fun bs!1339445 () Bool)

(assert (= bs!1339445 d!1807062))

(declare-fun m!6681484 () Bool)

(assert (=> bs!1339445 m!6681484))

(declare-fun m!6681486 () Bool)

(assert (=> bs!1339445 m!6681486))

(assert (=> bs!1339445 m!6681486))

(declare-fun m!6681488 () Bool)

(assert (=> bs!1339445 m!6681488))

(assert (=> b!5728899 d!1807062))

(declare-fun d!1807064 () Bool)

(declare-fun c!1010915 () Bool)

(assert (=> d!1807064 (= c!1010915 (isEmpty!35245 s!2326))))

(declare-fun e!3522616 () Bool)

(assert (=> d!1807064 (= (matchZipper!1867 z!1189 s!2326) e!3522616)))

(declare-fun b!5729297 () Bool)

(assert (=> b!5729297 (= e!3522616 (nullableZipper!1675 z!1189))))

(declare-fun b!5729298 () Bool)

(assert (=> b!5729298 (= e!3522616 (matchZipper!1867 (derivationStepZipper!1812 z!1189 (head!12130 s!2326)) (tail!11225 s!2326)))))

(assert (= (and d!1807064 c!1010915) b!5729297))

(assert (= (and d!1807064 (not c!1010915)) b!5729298))

(declare-fun m!6681490 () Bool)

(assert (=> d!1807064 m!6681490))

(declare-fun m!6681492 () Bool)

(assert (=> b!5729297 m!6681492))

(declare-fun m!6681494 () Bool)

(assert (=> b!5729298 m!6681494))

(assert (=> b!5729298 m!6681494))

(declare-fun m!6681496 () Bool)

(assert (=> b!5729298 m!6681496))

(declare-fun m!6681498 () Bool)

(assert (=> b!5729298 m!6681498))

(assert (=> b!5729298 m!6681496))

(assert (=> b!5729298 m!6681498))

(declare-fun m!6681500 () Bool)

(assert (=> b!5729298 m!6681500))

(assert (=> b!5728900 d!1807064))

(declare-fun bs!1339460 () Bool)

(declare-fun d!1807066 () Bool)

(assert (= bs!1339460 (and d!1807066 b!5728871)))

(declare-fun lambda!309924 () Int)

(assert (=> bs!1339460 (= lambda!309924 lambda!309883)))

(declare-fun b!5729411 () Bool)

(declare-fun e!3522675 () Bool)

(declare-fun lt!2280244 () Regex!15729)

(declare-fun head!12131 (List!63486) Regex!15729)

(assert (=> b!5729411 (= e!3522675 (= lt!2280244 (head!12131 (exprs!5613 (h!69812 zl!343)))))))

(declare-fun b!5729412 () Bool)

(declare-fun e!3522674 () Regex!15729)

(declare-fun e!3522677 () Regex!15729)

(assert (=> b!5729412 (= e!3522674 e!3522677)))

(declare-fun c!1010942 () Bool)

(assert (=> b!5729412 (= c!1010942 ((_ is Cons!63362) (exprs!5613 (h!69812 zl!343))))))

(declare-fun b!5729413 () Bool)

(declare-fun e!3522679 () Bool)

(assert (=> b!5729413 (= e!3522679 e!3522675)))

(declare-fun c!1010941 () Bool)

(declare-fun tail!11226 (List!63486) List!63486)

(assert (=> b!5729413 (= c!1010941 (isEmpty!35242 (tail!11226 (exprs!5613 (h!69812 zl!343)))))))

(declare-fun b!5729414 () Bool)

(declare-fun e!3522676 () Bool)

(assert (=> b!5729414 (= e!3522676 (isEmpty!35242 (t!376814 (exprs!5613 (h!69812 zl!343)))))))

(declare-fun b!5729415 () Bool)

(declare-fun e!3522678 () Bool)

(assert (=> b!5729415 (= e!3522678 e!3522679)))

(declare-fun c!1010943 () Bool)

(assert (=> b!5729415 (= c!1010943 (isEmpty!35242 (exprs!5613 (h!69812 zl!343))))))

(declare-fun b!5729416 () Bool)

(assert (=> b!5729416 (= e!3522674 (h!69810 (exprs!5613 (h!69812 zl!343))))))

(declare-fun b!5729417 () Bool)

(declare-fun isConcat!756 (Regex!15729) Bool)

(assert (=> b!5729417 (= e!3522675 (isConcat!756 lt!2280244))))

(assert (=> d!1807066 e!3522678))

(declare-fun res!2418796 () Bool)

(assert (=> d!1807066 (=> (not res!2418796) (not e!3522678))))

(assert (=> d!1807066 (= res!2418796 (validRegex!7465 lt!2280244))))

(assert (=> d!1807066 (= lt!2280244 e!3522674)))

(declare-fun c!1010940 () Bool)

(assert (=> d!1807066 (= c!1010940 e!3522676)))

(declare-fun res!2418795 () Bool)

(assert (=> d!1807066 (=> (not res!2418795) (not e!3522676))))

(assert (=> d!1807066 (= res!2418795 ((_ is Cons!63362) (exprs!5613 (h!69812 zl!343))))))

(declare-fun forall!14860 (List!63486 Int) Bool)

(assert (=> d!1807066 (forall!14860 (exprs!5613 (h!69812 zl!343)) lambda!309924)))

(assert (=> d!1807066 (= (generalisedConcat!1344 (exprs!5613 (h!69812 zl!343))) lt!2280244)))

(declare-fun b!5729418 () Bool)

(assert (=> b!5729418 (= e!3522677 (Concat!24574 (h!69810 (exprs!5613 (h!69812 zl!343))) (generalisedConcat!1344 (t!376814 (exprs!5613 (h!69812 zl!343))))))))

(declare-fun b!5729419 () Bool)

(declare-fun isEmptyExpr!1233 (Regex!15729) Bool)

(assert (=> b!5729419 (= e!3522679 (isEmptyExpr!1233 lt!2280244))))

(declare-fun b!5729420 () Bool)

(assert (=> b!5729420 (= e!3522677 EmptyExpr!15729)))

(assert (= (and d!1807066 res!2418795) b!5729414))

(assert (= (and d!1807066 c!1010940) b!5729416))

(assert (= (and d!1807066 (not c!1010940)) b!5729412))

(assert (= (and b!5729412 c!1010942) b!5729418))

(assert (= (and b!5729412 (not c!1010942)) b!5729420))

(assert (= (and d!1807066 res!2418796) b!5729415))

(assert (= (and b!5729415 c!1010943) b!5729419))

(assert (= (and b!5729415 (not c!1010943)) b!5729413))

(assert (= (and b!5729413 c!1010941) b!5729411))

(assert (= (and b!5729413 (not c!1010941)) b!5729417))

(declare-fun m!6681546 () Bool)

(assert (=> b!5729413 m!6681546))

(assert (=> b!5729413 m!6681546))

(declare-fun m!6681548 () Bool)

(assert (=> b!5729413 m!6681548))

(declare-fun m!6681550 () Bool)

(assert (=> b!5729417 m!6681550))

(declare-fun m!6681552 () Bool)

(assert (=> b!5729418 m!6681552))

(declare-fun m!6681554 () Bool)

(assert (=> b!5729415 m!6681554))

(assert (=> b!5729414 m!6681002))

(declare-fun m!6681556 () Bool)

(assert (=> b!5729411 m!6681556))

(declare-fun m!6681558 () Bool)

(assert (=> d!1807066 m!6681558))

(declare-fun m!6681560 () Bool)

(assert (=> d!1807066 m!6681560))

(declare-fun m!6681562 () Bool)

(assert (=> b!5729419 m!6681562))

(assert (=> b!5728881 d!1807066))

(declare-fun d!1807082 () Bool)

(declare-fun dynLambda!24799 (Int Context!10226) (InoxSet Context!10226))

(assert (=> d!1807082 (= (flatMap!1342 z!1189 lambda!309881) (dynLambda!24799 lambda!309881 (h!69812 zl!343)))))

(declare-fun lt!2280247 () Unit!156448)

(declare-fun choose!43350 ((InoxSet Context!10226) Context!10226 Int) Unit!156448)

(assert (=> d!1807082 (= lt!2280247 (choose!43350 z!1189 (h!69812 zl!343) lambda!309881))))

(assert (=> d!1807082 (= z!1189 (store ((as const (Array Context!10226 Bool)) false) (h!69812 zl!343) true))))

(assert (=> d!1807082 (= (lemmaFlatMapOnSingletonSet!874 z!1189 (h!69812 zl!343) lambda!309881) lt!2280247)))

(declare-fun b_lambda!216507 () Bool)

(assert (=> (not b_lambda!216507) (not d!1807082)))

(declare-fun bs!1339461 () Bool)

(assert (= bs!1339461 d!1807082))

(assert (=> bs!1339461 m!6681034))

(declare-fun m!6681564 () Bool)

(assert (=> bs!1339461 m!6681564))

(declare-fun m!6681566 () Bool)

(assert (=> bs!1339461 m!6681566))

(declare-fun m!6681568 () Bool)

(assert (=> bs!1339461 m!6681568))

(assert (=> b!5728901 d!1807082))

(declare-fun d!1807084 () Bool)

(declare-fun choose!43351 ((InoxSet Context!10226) Int) (InoxSet Context!10226))

(assert (=> d!1807084 (= (flatMap!1342 z!1189 lambda!309881) (choose!43351 z!1189 lambda!309881))))

(declare-fun bs!1339462 () Bool)

(assert (= bs!1339462 d!1807084))

(declare-fun m!6681570 () Bool)

(assert (=> bs!1339462 m!6681570))

(assert (=> b!5728901 d!1807084))

(declare-fun d!1807086 () Bool)

(declare-fun nullableFct!1821 (Regex!15729) Bool)

(assert (=> d!1807086 (= (nullable!5761 (h!69810 (exprs!5613 (h!69812 zl!343)))) (nullableFct!1821 (h!69810 (exprs!5613 (h!69812 zl!343)))))))

(declare-fun bs!1339463 () Bool)

(assert (= bs!1339463 d!1807086))

(declare-fun m!6681572 () Bool)

(assert (=> bs!1339463 m!6681572))

(assert (=> b!5728901 d!1807086))

(declare-fun bm!438063 () Bool)

(declare-fun call!438068 () (InoxSet Context!10226))

(assert (=> bm!438063 (= call!438068 (derivationStepZipperDown!1071 (h!69810 (exprs!5613 (Context!10227 (Cons!63362 (h!69810 (exprs!5613 (h!69812 zl!343))) (t!376814 (exprs!5613 (h!69812 zl!343))))))) (Context!10227 (t!376814 (exprs!5613 (Context!10227 (Cons!63362 (h!69810 (exprs!5613 (h!69812 zl!343))) (t!376814 (exprs!5613 (h!69812 zl!343)))))))) (h!69811 s!2326)))))

(declare-fun d!1807088 () Bool)

(declare-fun c!1010949 () Bool)

(declare-fun e!3522686 () Bool)

(assert (=> d!1807088 (= c!1010949 e!3522686)))

(declare-fun res!2418799 () Bool)

(assert (=> d!1807088 (=> (not res!2418799) (not e!3522686))))

(assert (=> d!1807088 (= res!2418799 ((_ is Cons!63362) (exprs!5613 (Context!10227 (Cons!63362 (h!69810 (exprs!5613 (h!69812 zl!343))) (t!376814 (exprs!5613 (h!69812 zl!343))))))))))

(declare-fun e!3522687 () (InoxSet Context!10226))

(assert (=> d!1807088 (= (derivationStepZipperUp!997 (Context!10227 (Cons!63362 (h!69810 (exprs!5613 (h!69812 zl!343))) (t!376814 (exprs!5613 (h!69812 zl!343))))) (h!69811 s!2326)) e!3522687)))

(declare-fun b!5729431 () Bool)

(assert (=> b!5729431 (= e!3522686 (nullable!5761 (h!69810 (exprs!5613 (Context!10227 (Cons!63362 (h!69810 (exprs!5613 (h!69812 zl!343))) (t!376814 (exprs!5613 (h!69812 zl!343)))))))))))

(declare-fun b!5729432 () Bool)

(declare-fun e!3522688 () (InoxSet Context!10226))

(assert (=> b!5729432 (= e!3522688 ((as const (Array Context!10226 Bool)) false))))

(declare-fun b!5729433 () Bool)

(assert (=> b!5729433 (= e!3522688 call!438068)))

(declare-fun b!5729434 () Bool)

(assert (=> b!5729434 (= e!3522687 e!3522688)))

(declare-fun c!1010948 () Bool)

(assert (=> b!5729434 (= c!1010948 ((_ is Cons!63362) (exprs!5613 (Context!10227 (Cons!63362 (h!69810 (exprs!5613 (h!69812 zl!343))) (t!376814 (exprs!5613 (h!69812 zl!343))))))))))

(declare-fun b!5729435 () Bool)

(assert (=> b!5729435 (= e!3522687 ((_ map or) call!438068 (derivationStepZipperUp!997 (Context!10227 (t!376814 (exprs!5613 (Context!10227 (Cons!63362 (h!69810 (exprs!5613 (h!69812 zl!343))) (t!376814 (exprs!5613 (h!69812 zl!343)))))))) (h!69811 s!2326))))))

(assert (= (and d!1807088 res!2418799) b!5729431))

(assert (= (and d!1807088 c!1010949) b!5729435))

(assert (= (and d!1807088 (not c!1010949)) b!5729434))

(assert (= (and b!5729434 c!1010948) b!5729433))

(assert (= (and b!5729434 (not c!1010948)) b!5729432))

(assert (= (or b!5729435 b!5729433) bm!438063))

(declare-fun m!6681574 () Bool)

(assert (=> bm!438063 m!6681574))

(declare-fun m!6681576 () Bool)

(assert (=> b!5729431 m!6681576))

(declare-fun m!6681578 () Bool)

(assert (=> b!5729435 m!6681578))

(assert (=> b!5728901 d!1807088))

(declare-fun bm!438064 () Bool)

(declare-fun call!438069 () (InoxSet Context!10226))

(assert (=> bm!438064 (= call!438069 (derivationStepZipperDown!1071 (h!69810 (exprs!5613 (h!69812 zl!343))) (Context!10227 (t!376814 (exprs!5613 (h!69812 zl!343)))) (h!69811 s!2326)))))

(declare-fun d!1807090 () Bool)

(declare-fun c!1010951 () Bool)

(declare-fun e!3522689 () Bool)

(assert (=> d!1807090 (= c!1010951 e!3522689)))

(declare-fun res!2418800 () Bool)

(assert (=> d!1807090 (=> (not res!2418800) (not e!3522689))))

(assert (=> d!1807090 (= res!2418800 ((_ is Cons!63362) (exprs!5613 (h!69812 zl!343))))))

(declare-fun e!3522690 () (InoxSet Context!10226))

(assert (=> d!1807090 (= (derivationStepZipperUp!997 (h!69812 zl!343) (h!69811 s!2326)) e!3522690)))

(declare-fun b!5729436 () Bool)

(assert (=> b!5729436 (= e!3522689 (nullable!5761 (h!69810 (exprs!5613 (h!69812 zl!343)))))))

(declare-fun b!5729437 () Bool)

(declare-fun e!3522691 () (InoxSet Context!10226))

(assert (=> b!5729437 (= e!3522691 ((as const (Array Context!10226 Bool)) false))))

(declare-fun b!5729438 () Bool)

(assert (=> b!5729438 (= e!3522691 call!438069)))

(declare-fun b!5729439 () Bool)

(assert (=> b!5729439 (= e!3522690 e!3522691)))

(declare-fun c!1010950 () Bool)

(assert (=> b!5729439 (= c!1010950 ((_ is Cons!63362) (exprs!5613 (h!69812 zl!343))))))

(declare-fun b!5729440 () Bool)

(assert (=> b!5729440 (= e!3522690 ((_ map or) call!438069 (derivationStepZipperUp!997 (Context!10227 (t!376814 (exprs!5613 (h!69812 zl!343)))) (h!69811 s!2326))))))

(assert (= (and d!1807090 res!2418800) b!5729436))

(assert (= (and d!1807090 c!1010951) b!5729440))

(assert (= (and d!1807090 (not c!1010951)) b!5729439))

(assert (= (and b!5729439 c!1010950) b!5729438))

(assert (= (and b!5729439 (not c!1010950)) b!5729437))

(assert (= (or b!5729440 b!5729438) bm!438064))

(declare-fun m!6681580 () Bool)

(assert (=> bm!438064 m!6681580))

(assert (=> b!5729436 m!6681038))

(declare-fun m!6681582 () Bool)

(assert (=> b!5729440 m!6681582))

(assert (=> b!5728901 d!1807090))

(declare-fun call!438086 () (InoxSet Context!10226))

(declare-fun bm!438077 () Bool)

(declare-fun call!438085 () List!63486)

(declare-fun c!1010962 () Bool)

(assert (=> bm!438077 (= call!438086 (derivationStepZipperDown!1071 (ite c!1010962 (regOne!31971 (h!69810 (exprs!5613 (h!69812 zl!343)))) (regOne!31970 (h!69810 (exprs!5613 (h!69812 zl!343))))) (ite c!1010962 lt!2280142 (Context!10227 call!438085)) (h!69811 s!2326)))))

(declare-fun b!5729463 () Bool)

(declare-fun e!3522706 () (InoxSet Context!10226))

(declare-fun call!438083 () (InoxSet Context!10226))

(assert (=> b!5729463 (= e!3522706 call!438083)))

(declare-fun b!5729464 () Bool)

(declare-fun e!3522707 () (InoxSet Context!10226))

(declare-fun call!438087 () (InoxSet Context!10226))

(assert (=> b!5729464 (= e!3522707 ((_ map or) call!438086 call!438087))))

(declare-fun b!5729465 () Bool)

(declare-fun e!3522705 () (InoxSet Context!10226))

(declare-fun call!438082 () (InoxSet Context!10226))

(assert (=> b!5729465 (= e!3522705 ((_ map or) call!438086 call!438082))))

(declare-fun bm!438079 () Bool)

(declare-fun call!438084 () List!63486)

(declare-fun c!1010964 () Bool)

(declare-fun c!1010965 () Bool)

(assert (=> bm!438079 (= call!438087 (derivationStepZipperDown!1071 (ite c!1010962 (regTwo!31971 (h!69810 (exprs!5613 (h!69812 zl!343)))) (ite c!1010964 (regTwo!31970 (h!69810 (exprs!5613 (h!69812 zl!343)))) (ite c!1010965 (regOne!31970 (h!69810 (exprs!5613 (h!69812 zl!343)))) (reg!16058 (h!69810 (exprs!5613 (h!69812 zl!343))))))) (ite (or c!1010962 c!1010964) lt!2280142 (Context!10227 call!438084)) (h!69811 s!2326)))))

(declare-fun b!5729466 () Bool)

(declare-fun e!3522709 () Bool)

(assert (=> b!5729466 (= e!3522709 (nullable!5761 (regOne!31970 (h!69810 (exprs!5613 (h!69812 zl!343))))))))

(declare-fun b!5729467 () Bool)

(declare-fun e!3522704 () (InoxSet Context!10226))

(assert (=> b!5729467 (= e!3522704 (store ((as const (Array Context!10226 Bool)) false) lt!2280142 true))))

(declare-fun bm!438080 () Bool)

(assert (=> bm!438080 (= call!438083 call!438082)))

(declare-fun d!1807092 () Bool)

(declare-fun c!1010966 () Bool)

(assert (=> d!1807092 (= c!1010966 (and ((_ is ElementMatch!15729) (h!69810 (exprs!5613 (h!69812 zl!343)))) (= (c!1010799 (h!69810 (exprs!5613 (h!69812 zl!343)))) (h!69811 s!2326))))))

(assert (=> d!1807092 (= (derivationStepZipperDown!1071 (h!69810 (exprs!5613 (h!69812 zl!343))) lt!2280142 (h!69811 s!2326)) e!3522704)))

(declare-fun bm!438078 () Bool)

(declare-fun $colon$colon!1742 (List!63486 Regex!15729) List!63486)

(assert (=> bm!438078 (= call!438085 ($colon$colon!1742 (exprs!5613 lt!2280142) (ite (or c!1010964 c!1010965) (regTwo!31970 (h!69810 (exprs!5613 (h!69812 zl!343)))) (h!69810 (exprs!5613 (h!69812 zl!343))))))))

(declare-fun b!5729468 () Bool)

(declare-fun e!3522708 () (InoxSet Context!10226))

(assert (=> b!5729468 (= e!3522708 call!438083)))

(declare-fun b!5729469 () Bool)

(assert (=> b!5729469 (= e!3522704 e!3522707)))

(assert (=> b!5729469 (= c!1010962 ((_ is Union!15729) (h!69810 (exprs!5613 (h!69812 zl!343)))))))

(declare-fun b!5729470 () Bool)

(assert (=> b!5729470 (= e!3522706 ((as const (Array Context!10226 Bool)) false))))

(declare-fun b!5729471 () Bool)

(assert (=> b!5729471 (= c!1010964 e!3522709)))

(declare-fun res!2418803 () Bool)

(assert (=> b!5729471 (=> (not res!2418803) (not e!3522709))))

(assert (=> b!5729471 (= res!2418803 ((_ is Concat!24574) (h!69810 (exprs!5613 (h!69812 zl!343)))))))

(assert (=> b!5729471 (= e!3522707 e!3522705)))

(declare-fun b!5729472 () Bool)

(declare-fun c!1010963 () Bool)

(assert (=> b!5729472 (= c!1010963 ((_ is Star!15729) (h!69810 (exprs!5613 (h!69812 zl!343)))))))

(assert (=> b!5729472 (= e!3522708 e!3522706)))

(declare-fun bm!438081 () Bool)

(assert (=> bm!438081 (= call!438084 call!438085)))

(declare-fun b!5729473 () Bool)

(assert (=> b!5729473 (= e!3522705 e!3522708)))

(assert (=> b!5729473 (= c!1010965 ((_ is Concat!24574) (h!69810 (exprs!5613 (h!69812 zl!343)))))))

(declare-fun bm!438082 () Bool)

(assert (=> bm!438082 (= call!438082 call!438087)))

(assert (= (and d!1807092 c!1010966) b!5729467))

(assert (= (and d!1807092 (not c!1010966)) b!5729469))

(assert (= (and b!5729469 c!1010962) b!5729464))

(assert (= (and b!5729469 (not c!1010962)) b!5729471))

(assert (= (and b!5729471 res!2418803) b!5729466))

(assert (= (and b!5729471 c!1010964) b!5729465))

(assert (= (and b!5729471 (not c!1010964)) b!5729473))

(assert (= (and b!5729473 c!1010965) b!5729468))

(assert (= (and b!5729473 (not c!1010965)) b!5729472))

(assert (= (and b!5729472 c!1010963) b!5729463))

(assert (= (and b!5729472 (not c!1010963)) b!5729470))

(assert (= (or b!5729468 b!5729463) bm!438081))

(assert (= (or b!5729468 b!5729463) bm!438080))

(assert (= (or b!5729465 bm!438081) bm!438078))

(assert (= (or b!5729465 bm!438080) bm!438082))

(assert (= (or b!5729464 bm!438082) bm!438079))

(assert (= (or b!5729464 b!5729465) bm!438077))

(declare-fun m!6681584 () Bool)

(assert (=> bm!438077 m!6681584))

(declare-fun m!6681586 () Bool)

(assert (=> bm!438079 m!6681586))

(declare-fun m!6681588 () Bool)

(assert (=> b!5729467 m!6681588))

(declare-fun m!6681590 () Bool)

(assert (=> b!5729466 m!6681590))

(declare-fun m!6681592 () Bool)

(assert (=> bm!438078 m!6681592))

(assert (=> b!5728901 d!1807092))

(declare-fun bm!438083 () Bool)

(declare-fun call!438088 () (InoxSet Context!10226))

(assert (=> bm!438083 (= call!438088 (derivationStepZipperDown!1071 (h!69810 (exprs!5613 lt!2280142)) (Context!10227 (t!376814 (exprs!5613 lt!2280142))) (h!69811 s!2326)))))

(declare-fun d!1807094 () Bool)

(declare-fun c!1010968 () Bool)

(declare-fun e!3522710 () Bool)

(assert (=> d!1807094 (= c!1010968 e!3522710)))

(declare-fun res!2418804 () Bool)

(assert (=> d!1807094 (=> (not res!2418804) (not e!3522710))))

(assert (=> d!1807094 (= res!2418804 ((_ is Cons!63362) (exprs!5613 lt!2280142)))))

(declare-fun e!3522711 () (InoxSet Context!10226))

(assert (=> d!1807094 (= (derivationStepZipperUp!997 lt!2280142 (h!69811 s!2326)) e!3522711)))

(declare-fun b!5729474 () Bool)

(assert (=> b!5729474 (= e!3522710 (nullable!5761 (h!69810 (exprs!5613 lt!2280142))))))

(declare-fun b!5729475 () Bool)

(declare-fun e!3522712 () (InoxSet Context!10226))

(assert (=> b!5729475 (= e!3522712 ((as const (Array Context!10226 Bool)) false))))

(declare-fun b!5729476 () Bool)

(assert (=> b!5729476 (= e!3522712 call!438088)))

(declare-fun b!5729477 () Bool)

(assert (=> b!5729477 (= e!3522711 e!3522712)))

(declare-fun c!1010967 () Bool)

(assert (=> b!5729477 (= c!1010967 ((_ is Cons!63362) (exprs!5613 lt!2280142)))))

(declare-fun b!5729478 () Bool)

(assert (=> b!5729478 (= e!3522711 ((_ map or) call!438088 (derivationStepZipperUp!997 (Context!10227 (t!376814 (exprs!5613 lt!2280142))) (h!69811 s!2326))))))

(assert (= (and d!1807094 res!2418804) b!5729474))

(assert (= (and d!1807094 c!1010968) b!5729478))

(assert (= (and d!1807094 (not c!1010968)) b!5729477))

(assert (= (and b!5729477 c!1010967) b!5729476))

(assert (= (and b!5729477 (not c!1010967)) b!5729475))

(assert (= (or b!5729478 b!5729476) bm!438083))

(declare-fun m!6681594 () Bool)

(assert (=> bm!438083 m!6681594))

(declare-fun m!6681596 () Bool)

(assert (=> b!5729474 m!6681596))

(declare-fun m!6681598 () Bool)

(assert (=> b!5729478 m!6681598))

(assert (=> b!5728901 d!1807094))

(declare-fun d!1807096 () Bool)

(assert (=> d!1807096 (= (get!21849 lt!2280141) (v!51792 lt!2280141))))

(assert (=> b!5728876 d!1807096))

(declare-fun d!1807098 () Bool)

(assert (=> d!1807098 (isDefined!12441 (findConcatSeparationZippers!116 lt!2280155 (store ((as const (Array Context!10226 Bool)) false) lt!2280160 true) Nil!63363 s!2326 s!2326))))

(declare-fun lt!2280250 () Unit!156448)

(declare-fun choose!43354 ((InoxSet Context!10226) Context!10226 List!63487) Unit!156448)

(assert (=> d!1807098 (= lt!2280250 (choose!43354 lt!2280155 lt!2280160 s!2326))))

(assert (=> d!1807098 (matchZipper!1867 (appendTo!108 lt!2280155 lt!2280160) s!2326)))

(assert (=> d!1807098 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!116 lt!2280155 lt!2280160 s!2326) lt!2280250)))

(declare-fun bs!1339464 () Bool)

(assert (= bs!1339464 d!1807098))

(assert (=> bs!1339464 m!6681050))

(declare-fun m!6681600 () Bool)

(assert (=> bs!1339464 m!6681600))

(assert (=> bs!1339464 m!6681600))

(declare-fun m!6681602 () Bool)

(assert (=> bs!1339464 m!6681602))

(assert (=> bs!1339464 m!6681050))

(declare-fun m!6681604 () Bool)

(assert (=> bs!1339464 m!6681604))

(assert (=> bs!1339464 m!6680990))

(declare-fun m!6681606 () Bool)

(assert (=> bs!1339464 m!6681606))

(assert (=> bs!1339464 m!6680990))

(assert (=> b!5728876 d!1807098))

(declare-fun b!5729497 () Bool)

(declare-fun e!3522724 () Bool)

(declare-fun lt!2280259 () Option!15738)

(assert (=> b!5729497 (= e!3522724 (= (++!13931 (_1!36129 (get!21849 lt!2280259)) (_2!36129 (get!21849 lt!2280259))) s!2326))))

(declare-fun b!5729498 () Bool)

(declare-fun res!2418817 () Bool)

(assert (=> b!5729498 (=> (not res!2418817) (not e!3522724))))

(assert (=> b!5729498 (= res!2418817 (matchZipper!1867 lt!2280126 (_2!36129 (get!21849 lt!2280259))))))

(declare-fun b!5729499 () Bool)

(declare-fun e!3522726 () Bool)

(assert (=> b!5729499 (= e!3522726 (not (isDefined!12441 lt!2280259)))))

(declare-fun d!1807100 () Bool)

(assert (=> d!1807100 e!3522726))

(declare-fun res!2418819 () Bool)

(assert (=> d!1807100 (=> res!2418819 e!3522726)))

(assert (=> d!1807100 (= res!2418819 e!3522724)))

(declare-fun res!2418816 () Bool)

(assert (=> d!1807100 (=> (not res!2418816) (not e!3522724))))

(assert (=> d!1807100 (= res!2418816 (isDefined!12441 lt!2280259))))

(declare-fun e!3522725 () Option!15738)

(assert (=> d!1807100 (= lt!2280259 e!3522725)))

(declare-fun c!1010973 () Bool)

(declare-fun e!3522727 () Bool)

(assert (=> d!1807100 (= c!1010973 e!3522727)))

(declare-fun res!2418818 () Bool)

(assert (=> d!1807100 (=> (not res!2418818) (not e!3522727))))

(assert (=> d!1807100 (= res!2418818 (matchZipper!1867 lt!2280155 Nil!63363))))

(assert (=> d!1807100 (= (++!13931 Nil!63363 s!2326) s!2326)))

(assert (=> d!1807100 (= (findConcatSeparationZippers!116 lt!2280155 lt!2280126 Nil!63363 s!2326 s!2326) lt!2280259)))

(declare-fun b!5729500 () Bool)

(declare-fun res!2418815 () Bool)

(assert (=> b!5729500 (=> (not res!2418815) (not e!3522724))))

(assert (=> b!5729500 (= res!2418815 (matchZipper!1867 lt!2280155 (_1!36129 (get!21849 lt!2280259))))))

(declare-fun b!5729501 () Bool)

(declare-fun e!3522723 () Option!15738)

(assert (=> b!5729501 (= e!3522723 None!15737)))

(declare-fun b!5729502 () Bool)

(assert (=> b!5729502 (= e!3522725 e!3522723)))

(declare-fun c!1010974 () Bool)

(assert (=> b!5729502 (= c!1010974 ((_ is Nil!63363) s!2326))))

(declare-fun b!5729503 () Bool)

(assert (=> b!5729503 (= e!3522725 (Some!15737 (tuple2!65653 Nil!63363 s!2326)))))

(declare-fun b!5729504 () Bool)

(declare-fun lt!2280257 () Unit!156448)

(declare-fun lt!2280258 () Unit!156448)

(assert (=> b!5729504 (= lt!2280257 lt!2280258)))

(assert (=> b!5729504 (= (++!13931 (++!13931 Nil!63363 (Cons!63363 (h!69811 s!2326) Nil!63363)) (t!376815 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2078 (List!63487 C!31728 List!63487 List!63487) Unit!156448)

(assert (=> b!5729504 (= lt!2280258 (lemmaMoveElementToOtherListKeepsConcatEq!2078 Nil!63363 (h!69811 s!2326) (t!376815 s!2326) s!2326))))

(assert (=> b!5729504 (= e!3522723 (findConcatSeparationZippers!116 lt!2280155 lt!2280126 (++!13931 Nil!63363 (Cons!63363 (h!69811 s!2326) Nil!63363)) (t!376815 s!2326) s!2326))))

(declare-fun b!5729505 () Bool)

(assert (=> b!5729505 (= e!3522727 (matchZipper!1867 lt!2280126 s!2326))))

(assert (= (and d!1807100 res!2418818) b!5729505))

(assert (= (and d!1807100 c!1010973) b!5729503))

(assert (= (and d!1807100 (not c!1010973)) b!5729502))

(assert (= (and b!5729502 c!1010974) b!5729501))

(assert (= (and b!5729502 (not c!1010974)) b!5729504))

(assert (= (and d!1807100 res!2418816) b!5729500))

(assert (= (and b!5729500 res!2418815) b!5729498))

(assert (= (and b!5729498 res!2418817) b!5729497))

(assert (= (and d!1807100 (not res!2418819)) b!5729499))

(declare-fun m!6681608 () Bool)

(assert (=> b!5729498 m!6681608))

(declare-fun m!6681610 () Bool)

(assert (=> b!5729498 m!6681610))

(assert (=> b!5729497 m!6681608))

(declare-fun m!6681612 () Bool)

(assert (=> b!5729497 m!6681612))

(assert (=> b!5729500 m!6681608))

(declare-fun m!6681614 () Bool)

(assert (=> b!5729500 m!6681614))

(declare-fun m!6681616 () Bool)

(assert (=> d!1807100 m!6681616))

(declare-fun m!6681618 () Bool)

(assert (=> d!1807100 m!6681618))

(declare-fun m!6681620 () Bool)

(assert (=> d!1807100 m!6681620))

(declare-fun m!6681622 () Bool)

(assert (=> b!5729505 m!6681622))

(declare-fun m!6681624 () Bool)

(assert (=> b!5729504 m!6681624))

(assert (=> b!5729504 m!6681624))

(declare-fun m!6681626 () Bool)

(assert (=> b!5729504 m!6681626))

(declare-fun m!6681628 () Bool)

(assert (=> b!5729504 m!6681628))

(assert (=> b!5729504 m!6681624))

(declare-fun m!6681630 () Bool)

(assert (=> b!5729504 m!6681630))

(assert (=> b!5729499 m!6681616))

(assert (=> b!5728876 d!1807100))

(declare-fun b!5729516 () Bool)

(declare-fun res!2418825 () Bool)

(declare-fun e!3522732 () Bool)

(assert (=> b!5729516 (=> (not res!2418825) (not e!3522732))))

(declare-fun lt!2280262 () List!63487)

(declare-fun size!40044 (List!63487) Int)

(assert (=> b!5729516 (= res!2418825 (= (size!40044 lt!2280262) (+ (size!40044 (_1!36129 lt!2280149)) (size!40044 (_2!36129 lt!2280149)))))))

(declare-fun b!5729517 () Bool)

(assert (=> b!5729517 (= e!3522732 (or (not (= (_2!36129 lt!2280149) Nil!63363)) (= lt!2280262 (_1!36129 lt!2280149))))))

(declare-fun d!1807102 () Bool)

(assert (=> d!1807102 e!3522732))

(declare-fun res!2418824 () Bool)

(assert (=> d!1807102 (=> (not res!2418824) (not e!3522732))))

(declare-fun content!11532 (List!63487) (InoxSet C!31728))

(assert (=> d!1807102 (= res!2418824 (= (content!11532 lt!2280262) ((_ map or) (content!11532 (_1!36129 lt!2280149)) (content!11532 (_2!36129 lt!2280149)))))))

(declare-fun e!3522733 () List!63487)

(assert (=> d!1807102 (= lt!2280262 e!3522733)))

(declare-fun c!1010977 () Bool)

(assert (=> d!1807102 (= c!1010977 ((_ is Nil!63363) (_1!36129 lt!2280149)))))

(assert (=> d!1807102 (= (++!13931 (_1!36129 lt!2280149) (_2!36129 lt!2280149)) lt!2280262)))

(declare-fun b!5729514 () Bool)

(assert (=> b!5729514 (= e!3522733 (_2!36129 lt!2280149))))

(declare-fun b!5729515 () Bool)

(assert (=> b!5729515 (= e!3522733 (Cons!63363 (h!69811 (_1!36129 lt!2280149)) (++!13931 (t!376815 (_1!36129 lt!2280149)) (_2!36129 lt!2280149))))))

(assert (= (and d!1807102 c!1010977) b!5729514))

(assert (= (and d!1807102 (not c!1010977)) b!5729515))

(assert (= (and d!1807102 res!2418824) b!5729516))

(assert (= (and b!5729516 res!2418825) b!5729517))

(declare-fun m!6681632 () Bool)

(assert (=> b!5729516 m!6681632))

(declare-fun m!6681634 () Bool)

(assert (=> b!5729516 m!6681634))

(declare-fun m!6681636 () Bool)

(assert (=> b!5729516 m!6681636))

(declare-fun m!6681638 () Bool)

(assert (=> d!1807102 m!6681638))

(declare-fun m!6681640 () Bool)

(assert (=> d!1807102 m!6681640))

(declare-fun m!6681642 () Bool)

(assert (=> d!1807102 m!6681642))

(declare-fun m!6681644 () Bool)

(assert (=> b!5729515 m!6681644))

(assert (=> b!5728876 d!1807102))

(declare-fun d!1807104 () Bool)

(declare-fun isEmpty!35246 (Option!15738) Bool)

(assert (=> d!1807104 (= (isDefined!12441 lt!2280141) (not (isEmpty!35246 lt!2280141)))))

(declare-fun bs!1339465 () Bool)

(assert (= bs!1339465 d!1807104))

(declare-fun m!6681646 () Bool)

(assert (=> bs!1339465 m!6681646))

(assert (=> b!5728876 d!1807104))

(declare-fun d!1807106 () Bool)

(declare-fun c!1010978 () Bool)

(assert (=> d!1807106 (= c!1010978 (isEmpty!35245 (_2!36129 lt!2280149)))))

(declare-fun e!3522734 () Bool)

(assert (=> d!1807106 (= (matchZipper!1867 lt!2280126 (_2!36129 lt!2280149)) e!3522734)))

(declare-fun b!5729518 () Bool)

(assert (=> b!5729518 (= e!3522734 (nullableZipper!1675 lt!2280126))))

(declare-fun b!5729519 () Bool)

(assert (=> b!5729519 (= e!3522734 (matchZipper!1867 (derivationStepZipper!1812 lt!2280126 (head!12130 (_2!36129 lt!2280149))) (tail!11225 (_2!36129 lt!2280149))))))

(assert (= (and d!1807106 c!1010978) b!5729518))

(assert (= (and d!1807106 (not c!1010978)) b!5729519))

(declare-fun m!6681648 () Bool)

(assert (=> d!1807106 m!6681648))

(declare-fun m!6681650 () Bool)

(assert (=> b!5729518 m!6681650))

(declare-fun m!6681652 () Bool)

(assert (=> b!5729519 m!6681652))

(assert (=> b!5729519 m!6681652))

(declare-fun m!6681654 () Bool)

(assert (=> b!5729519 m!6681654))

(declare-fun m!6681656 () Bool)

(assert (=> b!5729519 m!6681656))

(assert (=> b!5729519 m!6681654))

(assert (=> b!5729519 m!6681656))

(declare-fun m!6681658 () Bool)

(assert (=> b!5729519 m!6681658))

(assert (=> b!5728877 d!1807106))

(declare-fun d!1807108 () Bool)

(declare-fun c!1010979 () Bool)

(assert (=> d!1807108 (= c!1010979 (isEmpty!35245 (t!376815 s!2326)))))

(declare-fun e!3522735 () Bool)

(assert (=> d!1807108 (= (matchZipper!1867 lt!2280154 (t!376815 s!2326)) e!3522735)))

(declare-fun b!5729520 () Bool)

(assert (=> b!5729520 (= e!3522735 (nullableZipper!1675 lt!2280154))))

(declare-fun b!5729521 () Bool)

(assert (=> b!5729521 (= e!3522735 (matchZipper!1867 (derivationStepZipper!1812 lt!2280154 (head!12130 (t!376815 s!2326))) (tail!11225 (t!376815 s!2326))))))

(assert (= (and d!1807108 c!1010979) b!5729520))

(assert (= (and d!1807108 (not c!1010979)) b!5729521))

(assert (=> d!1807108 m!6681458))

(declare-fun m!6681660 () Bool)

(assert (=> b!5729520 m!6681660))

(assert (=> b!5729521 m!6681462))

(assert (=> b!5729521 m!6681462))

(declare-fun m!6681662 () Bool)

(assert (=> b!5729521 m!6681662))

(assert (=> b!5729521 m!6681466))

(assert (=> b!5729521 m!6681662))

(assert (=> b!5729521 m!6681466))

(declare-fun m!6681664 () Bool)

(assert (=> b!5729521 m!6681664))

(assert (=> b!5728898 d!1807108))

(declare-fun d!1807110 () Bool)

(declare-fun c!1010980 () Bool)

(assert (=> d!1807110 (= c!1010980 (isEmpty!35245 s!2326))))

(declare-fun e!3522736 () Bool)

(assert (=> d!1807110 (= (matchZipper!1867 lt!2280138 s!2326) e!3522736)))

(declare-fun b!5729522 () Bool)

(assert (=> b!5729522 (= e!3522736 (nullableZipper!1675 lt!2280138))))

(declare-fun b!5729523 () Bool)

(assert (=> b!5729523 (= e!3522736 (matchZipper!1867 (derivationStepZipper!1812 lt!2280138 (head!12130 s!2326)) (tail!11225 s!2326)))))

(assert (= (and d!1807110 c!1010980) b!5729522))

(assert (= (and d!1807110 (not c!1010980)) b!5729523))

(assert (=> d!1807110 m!6681490))

(declare-fun m!6681666 () Bool)

(assert (=> b!5729522 m!6681666))

(assert (=> b!5729523 m!6681494))

(assert (=> b!5729523 m!6681494))

(declare-fun m!6681668 () Bool)

(assert (=> b!5729523 m!6681668))

(assert (=> b!5729523 m!6681498))

(assert (=> b!5729523 m!6681668))

(assert (=> b!5729523 m!6681498))

(declare-fun m!6681670 () Bool)

(assert (=> b!5729523 m!6681670))

(assert (=> b!5728898 d!1807110))

(declare-fun d!1807112 () Bool)

(declare-fun lt!2280263 () Regex!15729)

(assert (=> d!1807112 (validRegex!7465 lt!2280263)))

(assert (=> d!1807112 (= lt!2280263 (generalisedUnion!1592 (unfocusZipperList!1157 zl!343)))))

(assert (=> d!1807112 (= (unfocusZipper!1471 zl!343) lt!2280263)))

(declare-fun bs!1339466 () Bool)

(assert (= bs!1339466 d!1807112))

(declare-fun m!6681672 () Bool)

(assert (=> bs!1339466 m!6681672))

(assert (=> bs!1339466 m!6681114))

(assert (=> bs!1339466 m!6681114))

(assert (=> bs!1339466 m!6681116))

(assert (=> b!5728878 d!1807112))

(declare-fun b!5729552 () Bool)

(declare-fun res!2418842 () Bool)

(declare-fun e!3522756 () Bool)

(assert (=> b!5729552 (=> res!2418842 e!3522756)))

(assert (=> b!5729552 (= res!2418842 (not ((_ is ElementMatch!15729) lt!2280153)))))

(declare-fun e!3522755 () Bool)

(assert (=> b!5729552 (= e!3522755 e!3522756)))

(declare-fun b!5729553 () Bool)

(declare-fun e!3522752 () Bool)

(declare-fun lt!2280266 () Bool)

(declare-fun call!438091 () Bool)

(assert (=> b!5729553 (= e!3522752 (= lt!2280266 call!438091))))

(declare-fun b!5729554 () Bool)

(assert (=> b!5729554 (= e!3522752 e!3522755)))

(declare-fun c!1010988 () Bool)

(assert (=> b!5729554 (= c!1010988 ((_ is EmptyLang!15729) lt!2280153))))

(declare-fun b!5729555 () Bool)

(declare-fun res!2418844 () Bool)

(declare-fun e!3522757 () Bool)

(assert (=> b!5729555 (=> (not res!2418844) (not e!3522757))))

(assert (=> b!5729555 (= res!2418844 (isEmpty!35245 (tail!11225 s!2326)))))

(declare-fun b!5729556 () Bool)

(declare-fun e!3522751 () Bool)

(assert (=> b!5729556 (= e!3522756 e!3522751)))

(declare-fun res!2418848 () Bool)

(assert (=> b!5729556 (=> (not res!2418848) (not e!3522751))))

(assert (=> b!5729556 (= res!2418848 (not lt!2280266))))

(declare-fun b!5729557 () Bool)

(declare-fun e!3522754 () Bool)

(declare-fun derivativeStep!4528 (Regex!15729 C!31728) Regex!15729)

(assert (=> b!5729557 (= e!3522754 (matchR!7914 (derivativeStep!4528 lt!2280153 (head!12130 s!2326)) (tail!11225 s!2326)))))

(declare-fun b!5729558 () Bool)

(assert (=> b!5729558 (= e!3522755 (not lt!2280266))))

(declare-fun b!5729559 () Bool)

(declare-fun e!3522753 () Bool)

(assert (=> b!5729559 (= e!3522753 (not (= (head!12130 s!2326) (c!1010799 lt!2280153))))))

(declare-fun b!5729560 () Bool)

(declare-fun res!2418846 () Bool)

(assert (=> b!5729560 (=> res!2418846 e!3522756)))

(assert (=> b!5729560 (= res!2418846 e!3522757)))

(declare-fun res!2418845 () Bool)

(assert (=> b!5729560 (=> (not res!2418845) (not e!3522757))))

(assert (=> b!5729560 (= res!2418845 lt!2280266)))

(declare-fun d!1807114 () Bool)

(assert (=> d!1807114 e!3522752))

(declare-fun c!1010987 () Bool)

(assert (=> d!1807114 (= c!1010987 ((_ is EmptyExpr!15729) lt!2280153))))

(assert (=> d!1807114 (= lt!2280266 e!3522754)))

(declare-fun c!1010989 () Bool)

(assert (=> d!1807114 (= c!1010989 (isEmpty!35245 s!2326))))

(assert (=> d!1807114 (validRegex!7465 lt!2280153)))

(assert (=> d!1807114 (= (matchR!7914 lt!2280153 s!2326) lt!2280266)))

(declare-fun b!5729561 () Bool)

(assert (=> b!5729561 (= e!3522751 e!3522753)))

(declare-fun res!2418843 () Bool)

(assert (=> b!5729561 (=> res!2418843 e!3522753)))

(assert (=> b!5729561 (= res!2418843 call!438091)))

(declare-fun b!5729562 () Bool)

(declare-fun res!2418849 () Bool)

(assert (=> b!5729562 (=> (not res!2418849) (not e!3522757))))

(assert (=> b!5729562 (= res!2418849 (not call!438091))))

(declare-fun b!5729563 () Bool)

(assert (=> b!5729563 (= e!3522754 (nullable!5761 lt!2280153))))

(declare-fun b!5729564 () Bool)

(assert (=> b!5729564 (= e!3522757 (= (head!12130 s!2326) (c!1010799 lt!2280153)))))

(declare-fun bm!438086 () Bool)

(assert (=> bm!438086 (= call!438091 (isEmpty!35245 s!2326))))

(declare-fun b!5729565 () Bool)

(declare-fun res!2418847 () Bool)

(assert (=> b!5729565 (=> res!2418847 e!3522753)))

(assert (=> b!5729565 (= res!2418847 (not (isEmpty!35245 (tail!11225 s!2326))))))

(assert (= (and d!1807114 c!1010989) b!5729563))

(assert (= (and d!1807114 (not c!1010989)) b!5729557))

(assert (= (and d!1807114 c!1010987) b!5729553))

(assert (= (and d!1807114 (not c!1010987)) b!5729554))

(assert (= (and b!5729554 c!1010988) b!5729558))

(assert (= (and b!5729554 (not c!1010988)) b!5729552))

(assert (= (and b!5729552 (not res!2418842)) b!5729560))

(assert (= (and b!5729560 res!2418845) b!5729562))

(assert (= (and b!5729562 res!2418849) b!5729555))

(assert (= (and b!5729555 res!2418844) b!5729564))

(assert (= (and b!5729560 (not res!2418846)) b!5729556))

(assert (= (and b!5729556 res!2418848) b!5729561))

(assert (= (and b!5729561 (not res!2418843)) b!5729565))

(assert (= (and b!5729565 (not res!2418847)) b!5729559))

(assert (= (or b!5729553 b!5729561 b!5729562) bm!438086))

(assert (=> b!5729559 m!6681494))

(assert (=> b!5729564 m!6681494))

(declare-fun m!6681674 () Bool)

(assert (=> b!5729563 m!6681674))

(assert (=> bm!438086 m!6681490))

(assert (=> b!5729565 m!6681498))

(assert (=> b!5729565 m!6681498))

(declare-fun m!6681676 () Bool)

(assert (=> b!5729565 m!6681676))

(assert (=> b!5729555 m!6681498))

(assert (=> b!5729555 m!6681498))

(assert (=> b!5729555 m!6681676))

(assert (=> d!1807114 m!6681490))

(declare-fun m!6681678 () Bool)

(assert (=> d!1807114 m!6681678))

(assert (=> b!5729557 m!6681494))

(assert (=> b!5729557 m!6681494))

(declare-fun m!6681680 () Bool)

(assert (=> b!5729557 m!6681680))

(assert (=> b!5729557 m!6681498))

(assert (=> b!5729557 m!6681680))

(assert (=> b!5729557 m!6681498))

(declare-fun m!6681682 () Bool)

(assert (=> b!5729557 m!6681682))

(assert (=> b!5728895 d!1807114))

(declare-fun bs!1339467 () Bool)

(declare-fun b!5729607 () Bool)

(assert (= bs!1339467 (and b!5729607 b!5728892)))

(declare-fun lambda!309929 () Int)

(assert (=> bs!1339467 (not (= lambda!309929 lambda!309879))))

(assert (=> bs!1339467 (not (= lambda!309929 lambda!309880))))

(assert (=> b!5729607 true))

(assert (=> b!5729607 true))

(declare-fun bs!1339468 () Bool)

(declare-fun b!5729604 () Bool)

(assert (= bs!1339468 (and b!5729604 b!5728892)))

(declare-fun lambda!309930 () Int)

(assert (=> bs!1339468 (not (= lambda!309930 lambda!309879))))

(assert (=> bs!1339468 (= (and (= (regOne!31970 lt!2280153) (regOne!31970 r!7292)) (= (regTwo!31970 lt!2280153) (regTwo!31970 r!7292))) (= lambda!309930 lambda!309880))))

(declare-fun bs!1339469 () Bool)

(assert (= bs!1339469 (and b!5729604 b!5729607)))

(assert (=> bs!1339469 (not (= lambda!309930 lambda!309929))))

(assert (=> b!5729604 true))

(assert (=> b!5729604 true))

(declare-fun b!5729599 () Bool)

(declare-fun e!3522776 () Bool)

(declare-fun call!438096 () Bool)

(assert (=> b!5729599 (= e!3522776 call!438096)))

(declare-fun b!5729600 () Bool)

(declare-fun e!3522781 () Bool)

(assert (=> b!5729600 (= e!3522781 (matchRSpec!2832 (regTwo!31971 lt!2280153) s!2326))))

(declare-fun b!5729601 () Bool)

(declare-fun e!3522778 () Bool)

(assert (=> b!5729601 (= e!3522778 e!3522781)))

(declare-fun res!2418867 () Bool)

(assert (=> b!5729601 (= res!2418867 (matchRSpec!2832 (regOne!31971 lt!2280153) s!2326))))

(assert (=> b!5729601 (=> res!2418867 e!3522781)))

(declare-fun b!5729602 () Bool)

(declare-fun e!3522782 () Bool)

(assert (=> b!5729602 (= e!3522778 e!3522782)))

(declare-fun c!1010999 () Bool)

(assert (=> b!5729602 (= c!1010999 ((_ is Star!15729) lt!2280153))))

(declare-fun call!438097 () Bool)

(declare-fun bm!438091 () Bool)

(assert (=> bm!438091 (= call!438097 (Exists!2829 (ite c!1010999 lambda!309929 lambda!309930)))))

(declare-fun b!5729603 () Bool)

(declare-fun e!3522777 () Bool)

(assert (=> b!5729603 (= e!3522777 (= s!2326 (Cons!63363 (c!1010799 lt!2280153) Nil!63363)))))

(declare-fun bm!438092 () Bool)

(assert (=> bm!438092 (= call!438096 (isEmpty!35245 s!2326))))

(assert (=> b!5729604 (= e!3522782 call!438097)))

(declare-fun d!1807116 () Bool)

(declare-fun c!1011000 () Bool)

(assert (=> d!1807116 (= c!1011000 ((_ is EmptyExpr!15729) lt!2280153))))

(assert (=> d!1807116 (= (matchRSpec!2832 lt!2280153 s!2326) e!3522776)))

(declare-fun b!5729598 () Bool)

(declare-fun e!3522779 () Bool)

(assert (=> b!5729598 (= e!3522776 e!3522779)))

(declare-fun res!2418868 () Bool)

(assert (=> b!5729598 (= res!2418868 (not ((_ is EmptyLang!15729) lt!2280153)))))

(assert (=> b!5729598 (=> (not res!2418868) (not e!3522779))))

(declare-fun b!5729605 () Bool)

(declare-fun res!2418866 () Bool)

(declare-fun e!3522780 () Bool)

(assert (=> b!5729605 (=> res!2418866 e!3522780)))

(assert (=> b!5729605 (= res!2418866 call!438096)))

(assert (=> b!5729605 (= e!3522782 e!3522780)))

(declare-fun b!5729606 () Bool)

(declare-fun c!1010998 () Bool)

(assert (=> b!5729606 (= c!1010998 ((_ is ElementMatch!15729) lt!2280153))))

(assert (=> b!5729606 (= e!3522779 e!3522777)))

(assert (=> b!5729607 (= e!3522780 call!438097)))

(declare-fun b!5729608 () Bool)

(declare-fun c!1011001 () Bool)

(assert (=> b!5729608 (= c!1011001 ((_ is Union!15729) lt!2280153))))

(assert (=> b!5729608 (= e!3522777 e!3522778)))

(assert (= (and d!1807116 c!1011000) b!5729599))

(assert (= (and d!1807116 (not c!1011000)) b!5729598))

(assert (= (and b!5729598 res!2418868) b!5729606))

(assert (= (and b!5729606 c!1010998) b!5729603))

(assert (= (and b!5729606 (not c!1010998)) b!5729608))

(assert (= (and b!5729608 c!1011001) b!5729601))

(assert (= (and b!5729608 (not c!1011001)) b!5729602))

(assert (= (and b!5729601 (not res!2418867)) b!5729600))

(assert (= (and b!5729602 c!1010999) b!5729605))

(assert (= (and b!5729602 (not c!1010999)) b!5729604))

(assert (= (and b!5729605 (not res!2418866)) b!5729607))

(assert (= (or b!5729607 b!5729604) bm!438091))

(assert (= (or b!5729599 b!5729605) bm!438092))

(declare-fun m!6681684 () Bool)

(assert (=> b!5729600 m!6681684))

(declare-fun m!6681686 () Bool)

(assert (=> b!5729601 m!6681686))

(declare-fun m!6681688 () Bool)

(assert (=> bm!438091 m!6681688))

(assert (=> bm!438092 m!6681490))

(assert (=> b!5728895 d!1807116))

(declare-fun d!1807118 () Bool)

(assert (=> d!1807118 (= (matchR!7914 lt!2280153 s!2326) (matchRSpec!2832 lt!2280153 s!2326))))

(declare-fun lt!2280269 () Unit!156448)

(declare-fun choose!43355 (Regex!15729 List!63487) Unit!156448)

(assert (=> d!1807118 (= lt!2280269 (choose!43355 lt!2280153 s!2326))))

(assert (=> d!1807118 (validRegex!7465 lt!2280153)))

(assert (=> d!1807118 (= (mainMatchTheorem!2832 lt!2280153 s!2326) lt!2280269)))

(declare-fun bs!1339470 () Bool)

(assert (= bs!1339470 d!1807118))

(assert (=> bs!1339470 m!6681076))

(assert (=> bs!1339470 m!6681078))

(declare-fun m!6681690 () Bool)

(assert (=> bs!1339470 m!6681690))

(assert (=> bs!1339470 m!6681678))

(assert (=> b!5728895 d!1807118))

(declare-fun d!1807120 () Bool)

(declare-fun c!1011002 () Bool)

(assert (=> d!1807120 (= c!1011002 (isEmpty!35245 (t!376815 s!2326)))))

(declare-fun e!3522783 () Bool)

(assert (=> d!1807120 (= (matchZipper!1867 lt!2280146 (t!376815 s!2326)) e!3522783)))

(declare-fun b!5729609 () Bool)

(assert (=> b!5729609 (= e!3522783 (nullableZipper!1675 lt!2280146))))

(declare-fun b!5729610 () Bool)

(assert (=> b!5729610 (= e!3522783 (matchZipper!1867 (derivationStepZipper!1812 lt!2280146 (head!12130 (t!376815 s!2326))) (tail!11225 (t!376815 s!2326))))))

(assert (= (and d!1807120 c!1011002) b!5729609))

(assert (= (and d!1807120 (not c!1011002)) b!5729610))

(assert (=> d!1807120 m!6681458))

(declare-fun m!6681692 () Bool)

(assert (=> b!5729609 m!6681692))

(assert (=> b!5729610 m!6681462))

(assert (=> b!5729610 m!6681462))

(declare-fun m!6681694 () Bool)

(assert (=> b!5729610 m!6681694))

(assert (=> b!5729610 m!6681466))

(assert (=> b!5729610 m!6681694))

(assert (=> b!5729610 m!6681466))

(declare-fun m!6681696 () Bool)

(assert (=> b!5729610 m!6681696))

(assert (=> b!5728875 d!1807120))

(declare-fun bs!1339471 () Bool)

(declare-fun d!1807122 () Bool)

(assert (= bs!1339471 (and d!1807122 b!5728871)))

(declare-fun lambda!309933 () Int)

(assert (=> bs!1339471 (= lambda!309933 lambda!309883)))

(declare-fun bs!1339472 () Bool)

(assert (= bs!1339472 (and d!1807122 d!1807066)))

(assert (=> bs!1339472 (= lambda!309933 lambda!309924)))

(assert (=> d!1807122 (= (inv!82569 setElem!38425) (forall!14860 (exprs!5613 setElem!38425) lambda!309933))))

(declare-fun bs!1339473 () Bool)

(assert (= bs!1339473 d!1807122))

(declare-fun m!6681698 () Bool)

(assert (=> bs!1339473 m!6681698))

(assert (=> setNonEmpty!38425 d!1807122))

(declare-fun d!1807124 () Bool)

(assert (=> d!1807124 (forall!14860 (++!13930 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362) lt!2280151) lambda!309883)))

(declare-fun lt!2280272 () Unit!156448)

(declare-fun choose!43356 (List!63486 List!63486 Int) Unit!156448)

(assert (=> d!1807124 (= lt!2280272 (choose!43356 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362) lt!2280151 lambda!309883))))

(assert (=> d!1807124 (forall!14860 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362) lambda!309883)))

(assert (=> d!1807124 (= (lemmaConcatPreservesForall!298 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362) lt!2280151 lambda!309883) lt!2280272)))

(declare-fun bs!1339474 () Bool)

(assert (= bs!1339474 d!1807124))

(assert (=> bs!1339474 m!6680992))

(assert (=> bs!1339474 m!6680992))

(declare-fun m!6681700 () Bool)

(assert (=> bs!1339474 m!6681700))

(declare-fun m!6681702 () Bool)

(assert (=> bs!1339474 m!6681702))

(declare-fun m!6681704 () Bool)

(assert (=> bs!1339474 m!6681704))

(assert (=> b!5728871 d!1807124))

(declare-fun d!1807126 () Bool)

(declare-fun dynLambda!24800 (Int Context!10226) Context!10226)

(assert (=> d!1807126 (= (map!14514 lt!2280155 lambda!309882) (store ((as const (Array Context!10226 Bool)) false) (dynLambda!24800 lambda!309882 lt!2280124) true))))

(declare-fun lt!2280275 () Unit!156448)

(declare-fun choose!43357 ((InoxSet Context!10226) Context!10226 Int) Unit!156448)

(assert (=> d!1807126 (= lt!2280275 (choose!43357 lt!2280155 lt!2280124 lambda!309882))))

(assert (=> d!1807126 (= lt!2280155 (store ((as const (Array Context!10226 Bool)) false) lt!2280124 true))))

(assert (=> d!1807126 (= (lemmaMapOnSingletonSet!124 lt!2280155 lt!2280124 lambda!309882) lt!2280275)))

(declare-fun b_lambda!216509 () Bool)

(assert (=> (not b_lambda!216509) (not d!1807126)))

(declare-fun bs!1339475 () Bool)

(assert (= bs!1339475 d!1807126))

(declare-fun m!6681706 () Bool)

(assert (=> bs!1339475 m!6681706))

(declare-fun m!6681708 () Bool)

(assert (=> bs!1339475 m!6681708))

(declare-fun m!6681710 () Bool)

(assert (=> bs!1339475 m!6681710))

(assert (=> bs!1339475 m!6681706))

(assert (=> bs!1339475 m!6681052))

(assert (=> bs!1339475 m!6680996))

(assert (=> b!5728871 d!1807126))

(declare-fun b!5729621 () Bool)

(declare-fun res!2418874 () Bool)

(declare-fun e!3522789 () Bool)

(assert (=> b!5729621 (=> (not res!2418874) (not e!3522789))))

(declare-fun lt!2280278 () List!63486)

(declare-fun size!40045 (List!63486) Int)

(assert (=> b!5729621 (= res!2418874 (= (size!40045 lt!2280278) (+ (size!40045 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362)) (size!40045 lt!2280151))))))

(declare-fun b!5729620 () Bool)

(declare-fun e!3522788 () List!63486)

(assert (=> b!5729620 (= e!3522788 (Cons!63362 (h!69810 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362)) (++!13930 (t!376814 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362)) lt!2280151)))))

(declare-fun b!5729622 () Bool)

(assert (=> b!5729622 (= e!3522789 (or (not (= lt!2280151 Nil!63362)) (= lt!2280278 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362))))))

(declare-fun b!5729619 () Bool)

(assert (=> b!5729619 (= e!3522788 lt!2280151)))

(declare-fun d!1807128 () Bool)

(assert (=> d!1807128 e!3522789))

(declare-fun res!2418873 () Bool)

(assert (=> d!1807128 (=> (not res!2418873) (not e!3522789))))

(declare-fun content!11533 (List!63486) (InoxSet Regex!15729))

(assert (=> d!1807128 (= res!2418873 (= (content!11533 lt!2280278) ((_ map or) (content!11533 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362)) (content!11533 lt!2280151))))))

(assert (=> d!1807128 (= lt!2280278 e!3522788)))

(declare-fun c!1011005 () Bool)

(assert (=> d!1807128 (= c!1011005 ((_ is Nil!63362) (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362)))))

(assert (=> d!1807128 (= (++!13930 (Cons!63362 (reg!16058 (regOne!31970 r!7292)) Nil!63362) lt!2280151) lt!2280278)))

(assert (= (and d!1807128 c!1011005) b!5729619))

(assert (= (and d!1807128 (not c!1011005)) b!5729620))

(assert (= (and d!1807128 res!2418873) b!5729621))

(assert (= (and b!5729621 res!2418874) b!5729622))

(declare-fun m!6681712 () Bool)

(assert (=> b!5729621 m!6681712))

(declare-fun m!6681714 () Bool)

(assert (=> b!5729621 m!6681714))

(declare-fun m!6681716 () Bool)

(assert (=> b!5729621 m!6681716))

(declare-fun m!6681718 () Bool)

(assert (=> b!5729620 m!6681718))

(declare-fun m!6681720 () Bool)

(assert (=> d!1807128 m!6681720))

(declare-fun m!6681722 () Bool)

(assert (=> d!1807128 m!6681722))

(declare-fun m!6681724 () Bool)

(assert (=> d!1807128 m!6681724))

(assert (=> b!5728871 d!1807128))

(declare-fun bs!1339476 () Bool)

(declare-fun d!1807130 () Bool)

(assert (= bs!1339476 (and d!1807130 b!5728871)))

(declare-fun lambda!309938 () Int)

(assert (=> bs!1339476 (= (= (exprs!5613 lt!2280160) lt!2280151) (= lambda!309938 lambda!309882))))

(assert (=> d!1807130 true))

(assert (=> d!1807130 (= (appendTo!108 lt!2280155 lt!2280160) (map!14514 lt!2280155 lambda!309938))))

(declare-fun bs!1339477 () Bool)

(assert (= bs!1339477 d!1807130))

(declare-fun m!6681726 () Bool)

(assert (=> bs!1339477 m!6681726))

(assert (=> b!5728871 d!1807130))

(declare-fun d!1807132 () Bool)

(declare-fun choose!43358 ((InoxSet Context!10226) Int) (InoxSet Context!10226))

(assert (=> d!1807132 (= (map!14514 lt!2280155 lambda!309882) (choose!43358 lt!2280155 lambda!309882))))

(declare-fun bs!1339478 () Bool)

(assert (= bs!1339478 d!1807132))

(declare-fun m!6681728 () Bool)

(assert (=> bs!1339478 m!6681728))

(assert (=> b!5728871 d!1807132))

(declare-fun b!5729643 () Bool)

(declare-fun e!3522801 () Bool)

(declare-fun lt!2280288 () Option!15738)

(assert (=> b!5729643 (= e!3522801 (not (isDefined!12441 lt!2280288)))))

(declare-fun b!5729644 () Bool)

(declare-fun res!2418887 () Bool)

(declare-fun e!3522803 () Bool)

(assert (=> b!5729644 (=> (not res!2418887) (not e!3522803))))

(assert (=> b!5729644 (= res!2418887 (matchR!7914 (regOne!31970 r!7292) (_1!36129 (get!21849 lt!2280288))))))

(declare-fun b!5729645 () Bool)

(assert (=> b!5729645 (= e!3522803 (= (++!13931 (_1!36129 (get!21849 lt!2280288)) (_2!36129 (get!21849 lt!2280288))) s!2326))))

(declare-fun b!5729646 () Bool)

(declare-fun res!2418888 () Bool)

(assert (=> b!5729646 (=> (not res!2418888) (not e!3522803))))

(assert (=> b!5729646 (= res!2418888 (matchR!7914 (regTwo!31970 r!7292) (_2!36129 (get!21849 lt!2280288))))))

(declare-fun b!5729647 () Bool)

(declare-fun e!3522800 () Bool)

(assert (=> b!5729647 (= e!3522800 (matchR!7914 (regTwo!31970 r!7292) s!2326))))

(declare-fun b!5729648 () Bool)

(declare-fun e!3522802 () Option!15738)

(declare-fun e!3522804 () Option!15738)

(assert (=> b!5729648 (= e!3522802 e!3522804)))

(declare-fun c!1011012 () Bool)

(assert (=> b!5729648 (= c!1011012 ((_ is Nil!63363) s!2326))))

(declare-fun d!1807134 () Bool)

(assert (=> d!1807134 e!3522801))

(declare-fun res!2418885 () Bool)

(assert (=> d!1807134 (=> res!2418885 e!3522801)))

(assert (=> d!1807134 (= res!2418885 e!3522803)))

(declare-fun res!2418886 () Bool)

(assert (=> d!1807134 (=> (not res!2418886) (not e!3522803))))

(assert (=> d!1807134 (= res!2418886 (isDefined!12441 lt!2280288))))

(assert (=> d!1807134 (= lt!2280288 e!3522802)))

(declare-fun c!1011011 () Bool)

(assert (=> d!1807134 (= c!1011011 e!3522800)))

(declare-fun res!2418889 () Bool)

(assert (=> d!1807134 (=> (not res!2418889) (not e!3522800))))

(assert (=> d!1807134 (= res!2418889 (matchR!7914 (regOne!31970 r!7292) Nil!63363))))

(assert (=> d!1807134 (validRegex!7465 (regOne!31970 r!7292))))

(assert (=> d!1807134 (= (findConcatSeparation!2152 (regOne!31970 r!7292) (regTwo!31970 r!7292) Nil!63363 s!2326 s!2326) lt!2280288)))

(declare-fun b!5729649 () Bool)

(assert (=> b!5729649 (= e!3522802 (Some!15737 (tuple2!65653 Nil!63363 s!2326)))))

(declare-fun b!5729650 () Bool)

(assert (=> b!5729650 (= e!3522804 None!15737)))

(declare-fun b!5729651 () Bool)

(declare-fun lt!2280287 () Unit!156448)

(declare-fun lt!2280289 () Unit!156448)

(assert (=> b!5729651 (= lt!2280287 lt!2280289)))

(assert (=> b!5729651 (= (++!13931 (++!13931 Nil!63363 (Cons!63363 (h!69811 s!2326) Nil!63363)) (t!376815 s!2326)) s!2326)))

(assert (=> b!5729651 (= lt!2280289 (lemmaMoveElementToOtherListKeepsConcatEq!2078 Nil!63363 (h!69811 s!2326) (t!376815 s!2326) s!2326))))

(assert (=> b!5729651 (= e!3522804 (findConcatSeparation!2152 (regOne!31970 r!7292) (regTwo!31970 r!7292) (++!13931 Nil!63363 (Cons!63363 (h!69811 s!2326) Nil!63363)) (t!376815 s!2326) s!2326))))

(assert (= (and d!1807134 res!2418889) b!5729647))

(assert (= (and d!1807134 c!1011011) b!5729649))

(assert (= (and d!1807134 (not c!1011011)) b!5729648))

(assert (= (and b!5729648 c!1011012) b!5729650))

(assert (= (and b!5729648 (not c!1011012)) b!5729651))

(assert (= (and d!1807134 res!2418886) b!5729644))

(assert (= (and b!5729644 res!2418887) b!5729646))

(assert (= (and b!5729646 res!2418888) b!5729645))

(assert (= (and d!1807134 (not res!2418885)) b!5729643))

(declare-fun m!6681730 () Bool)

(assert (=> b!5729646 m!6681730))

(declare-fun m!6681732 () Bool)

(assert (=> b!5729646 m!6681732))

(declare-fun m!6681734 () Bool)

(assert (=> b!5729647 m!6681734))

(assert (=> b!5729645 m!6681730))

(declare-fun m!6681736 () Bool)

(assert (=> b!5729645 m!6681736))

(declare-fun m!6681738 () Bool)

(assert (=> d!1807134 m!6681738))

(declare-fun m!6681740 () Bool)

(assert (=> d!1807134 m!6681740))

(declare-fun m!6681742 () Bool)

(assert (=> d!1807134 m!6681742))

(assert (=> b!5729651 m!6681624))

(assert (=> b!5729651 m!6681624))

(assert (=> b!5729651 m!6681626))

(assert (=> b!5729651 m!6681628))

(assert (=> b!5729651 m!6681624))

(declare-fun m!6681744 () Bool)

(assert (=> b!5729651 m!6681744))

(assert (=> b!5729644 m!6681730))

(declare-fun m!6681746 () Bool)

(assert (=> b!5729644 m!6681746))

(assert (=> b!5729643 m!6681738))

(assert (=> b!5728892 d!1807134))

(declare-fun d!1807136 () Bool)

(declare-fun choose!43359 (Int) Bool)

(assert (=> d!1807136 (= (Exists!2829 lambda!309879) (choose!43359 lambda!309879))))

(declare-fun bs!1339479 () Bool)

(assert (= bs!1339479 d!1807136))

(declare-fun m!6681748 () Bool)

(assert (=> bs!1339479 m!6681748))

(assert (=> b!5728892 d!1807136))

(declare-fun d!1807138 () Bool)

(assert (=> d!1807138 (= (Exists!2829 lambda!309880) (choose!43359 lambda!309880))))

(declare-fun bs!1339480 () Bool)

(assert (= bs!1339480 d!1807138))

(declare-fun m!6681750 () Bool)

(assert (=> bs!1339480 m!6681750))

(assert (=> b!5728892 d!1807138))

(declare-fun bs!1339481 () Bool)

(declare-fun d!1807140 () Bool)

(assert (= bs!1339481 (and d!1807140 b!5728892)))

(declare-fun lambda!309941 () Int)

(assert (=> bs!1339481 (= lambda!309941 lambda!309879)))

(assert (=> bs!1339481 (not (= lambda!309941 lambda!309880))))

(declare-fun bs!1339482 () Bool)

(assert (= bs!1339482 (and d!1807140 b!5729607)))

(assert (=> bs!1339482 (not (= lambda!309941 lambda!309929))))

(declare-fun bs!1339483 () Bool)

(assert (= bs!1339483 (and d!1807140 b!5729604)))

(assert (=> bs!1339483 (not (= lambda!309941 lambda!309930))))

(assert (=> d!1807140 true))

(assert (=> d!1807140 true))

(assert (=> d!1807140 true))

(assert (=> d!1807140 (= (isDefined!12441 (findConcatSeparation!2152 (regOne!31970 r!7292) (regTwo!31970 r!7292) Nil!63363 s!2326 s!2326)) (Exists!2829 lambda!309941))))

(declare-fun lt!2280292 () Unit!156448)

(declare-fun choose!43360 (Regex!15729 Regex!15729 List!63487) Unit!156448)

(assert (=> d!1807140 (= lt!2280292 (choose!43360 (regOne!31970 r!7292) (regTwo!31970 r!7292) s!2326))))

(assert (=> d!1807140 (validRegex!7465 (regOne!31970 r!7292))))

(assert (=> d!1807140 (= (lemmaFindConcatSeparationEquivalentToExists!1916 (regOne!31970 r!7292) (regTwo!31970 r!7292) s!2326) lt!2280292)))

(declare-fun bs!1339484 () Bool)

(assert (= bs!1339484 d!1807140))

(declare-fun m!6681752 () Bool)

(assert (=> bs!1339484 m!6681752))

(declare-fun m!6681754 () Bool)

(assert (=> bs!1339484 m!6681754))

(assert (=> bs!1339484 m!6681742))

(assert (=> bs!1339484 m!6681010))

(assert (=> bs!1339484 m!6681012))

(assert (=> bs!1339484 m!6681010))

(assert (=> b!5728892 d!1807140))

(declare-fun bs!1339485 () Bool)

(declare-fun d!1807142 () Bool)

(assert (= bs!1339485 (and d!1807142 b!5729607)))

(declare-fun lambda!309946 () Int)

(assert (=> bs!1339485 (not (= lambda!309946 lambda!309929))))

(declare-fun bs!1339486 () Bool)

(assert (= bs!1339486 (and d!1807142 d!1807140)))

(assert (=> bs!1339486 (= lambda!309946 lambda!309941)))

(declare-fun bs!1339487 () Bool)

(assert (= bs!1339487 (and d!1807142 b!5728892)))

(assert (=> bs!1339487 (not (= lambda!309946 lambda!309880))))

(assert (=> bs!1339487 (= lambda!309946 lambda!309879)))

(declare-fun bs!1339488 () Bool)

(assert (= bs!1339488 (and d!1807142 b!5729604)))

(assert (=> bs!1339488 (not (= lambda!309946 lambda!309930))))

(assert (=> d!1807142 true))

(assert (=> d!1807142 true))

(assert (=> d!1807142 true))

(declare-fun lambda!309947 () Int)

(assert (=> bs!1339486 (not (= lambda!309947 lambda!309941))))

(assert (=> bs!1339487 (= lambda!309947 lambda!309880)))

(assert (=> bs!1339487 (not (= lambda!309947 lambda!309879))))

(assert (=> bs!1339488 (= (and (= (regOne!31970 r!7292) (regOne!31970 lt!2280153)) (= (regTwo!31970 r!7292) (regTwo!31970 lt!2280153))) (= lambda!309947 lambda!309930))))

(assert (=> bs!1339485 (not (= lambda!309947 lambda!309929))))

(declare-fun bs!1339489 () Bool)

(assert (= bs!1339489 d!1807142))

(assert (=> bs!1339489 (not (= lambda!309947 lambda!309946))))

(assert (=> d!1807142 true))

(assert (=> d!1807142 true))

(assert (=> d!1807142 true))

(assert (=> d!1807142 (= (Exists!2829 lambda!309946) (Exists!2829 lambda!309947))))

(declare-fun lt!2280295 () Unit!156448)

(declare-fun choose!43361 (Regex!15729 Regex!15729 List!63487) Unit!156448)

(assert (=> d!1807142 (= lt!2280295 (choose!43361 (regOne!31970 r!7292) (regTwo!31970 r!7292) s!2326))))

(assert (=> d!1807142 (validRegex!7465 (regOne!31970 r!7292))))

(assert (=> d!1807142 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1458 (regOne!31970 r!7292) (regTwo!31970 r!7292) s!2326) lt!2280295)))

(declare-fun m!6681756 () Bool)

(assert (=> bs!1339489 m!6681756))

(declare-fun m!6681758 () Bool)

(assert (=> bs!1339489 m!6681758))

(declare-fun m!6681760 () Bool)

(assert (=> bs!1339489 m!6681760))

(assert (=> bs!1339489 m!6681742))

(assert (=> b!5728892 d!1807142))

(declare-fun d!1807144 () Bool)

(assert (=> d!1807144 (= (isDefined!12441 (findConcatSeparation!2152 (regOne!31970 r!7292) (regTwo!31970 r!7292) Nil!63363 s!2326 s!2326)) (not (isEmpty!35246 (findConcatSeparation!2152 (regOne!31970 r!7292) (regTwo!31970 r!7292) Nil!63363 s!2326 s!2326))))))

(declare-fun bs!1339490 () Bool)

(assert (= bs!1339490 d!1807144))

(assert (=> bs!1339490 m!6681010))

(declare-fun m!6681762 () Bool)

(assert (=> bs!1339490 m!6681762))

(assert (=> b!5728892 d!1807144))

(declare-fun bs!1339491 () Bool)

(declare-fun d!1807146 () Bool)

(assert (= bs!1339491 (and d!1807146 b!5728871)))

(declare-fun lambda!309948 () Int)

(assert (=> bs!1339491 (= lambda!309948 lambda!309883)))

(declare-fun bs!1339492 () Bool)

(assert (= bs!1339492 (and d!1807146 d!1807066)))

(assert (=> bs!1339492 (= lambda!309948 lambda!309924)))

(declare-fun bs!1339493 () Bool)

(assert (= bs!1339493 (and d!1807146 d!1807122)))

(assert (=> bs!1339493 (= lambda!309948 lambda!309933)))

(assert (=> d!1807146 (= (inv!82569 (h!69812 zl!343)) (forall!14860 (exprs!5613 (h!69812 zl!343)) lambda!309948))))

(declare-fun bs!1339494 () Bool)

(assert (= bs!1339494 d!1807146))

(declare-fun m!6681764 () Bool)

(assert (=> bs!1339494 m!6681764))

(assert (=> b!5728893 d!1807146))

(declare-fun c!1011013 () Bool)

(declare-fun call!438101 () List!63486)

(declare-fun call!438102 () (InoxSet Context!10226))

(declare-fun bm!438093 () Bool)

(assert (=> bm!438093 (= call!438102 (derivationStepZipperDown!1071 (ite c!1011013 (regOne!31971 (reg!16058 (regOne!31970 r!7292))) (regOne!31970 (reg!16058 (regOne!31970 r!7292)))) (ite c!1011013 lt!2280160 (Context!10227 call!438101)) (h!69811 s!2326)))))

(declare-fun b!5729664 () Bool)

(declare-fun e!3522813 () (InoxSet Context!10226))

(declare-fun call!438099 () (InoxSet Context!10226))

(assert (=> b!5729664 (= e!3522813 call!438099)))

(declare-fun b!5729665 () Bool)

(declare-fun e!3522814 () (InoxSet Context!10226))

(declare-fun call!438103 () (InoxSet Context!10226))

(assert (=> b!5729665 (= e!3522814 ((_ map or) call!438102 call!438103))))

(declare-fun b!5729666 () Bool)

(declare-fun e!3522812 () (InoxSet Context!10226))

(declare-fun call!438098 () (InoxSet Context!10226))

(assert (=> b!5729666 (= e!3522812 ((_ map or) call!438102 call!438098))))

(declare-fun call!438100 () List!63486)

(declare-fun c!1011015 () Bool)

(declare-fun bm!438095 () Bool)

(declare-fun c!1011016 () Bool)

(assert (=> bm!438095 (= call!438103 (derivationStepZipperDown!1071 (ite c!1011013 (regTwo!31971 (reg!16058 (regOne!31970 r!7292))) (ite c!1011015 (regTwo!31970 (reg!16058 (regOne!31970 r!7292))) (ite c!1011016 (regOne!31970 (reg!16058 (regOne!31970 r!7292))) (reg!16058 (reg!16058 (regOne!31970 r!7292)))))) (ite (or c!1011013 c!1011015) lt!2280160 (Context!10227 call!438100)) (h!69811 s!2326)))))

(declare-fun b!5729667 () Bool)

(declare-fun e!3522816 () Bool)

(assert (=> b!5729667 (= e!3522816 (nullable!5761 (regOne!31970 (reg!16058 (regOne!31970 r!7292)))))))

(declare-fun b!5729668 () Bool)

(declare-fun e!3522811 () (InoxSet Context!10226))

(assert (=> b!5729668 (= e!3522811 (store ((as const (Array Context!10226 Bool)) false) lt!2280160 true))))

(declare-fun bm!438096 () Bool)

(assert (=> bm!438096 (= call!438099 call!438098)))

(declare-fun d!1807148 () Bool)

(declare-fun c!1011017 () Bool)

(assert (=> d!1807148 (= c!1011017 (and ((_ is ElementMatch!15729) (reg!16058 (regOne!31970 r!7292))) (= (c!1010799 (reg!16058 (regOne!31970 r!7292))) (h!69811 s!2326))))))

(assert (=> d!1807148 (= (derivationStepZipperDown!1071 (reg!16058 (regOne!31970 r!7292)) lt!2280160 (h!69811 s!2326)) e!3522811)))

(declare-fun bm!438094 () Bool)

(assert (=> bm!438094 (= call!438101 ($colon$colon!1742 (exprs!5613 lt!2280160) (ite (or c!1011015 c!1011016) (regTwo!31970 (reg!16058 (regOne!31970 r!7292))) (reg!16058 (regOne!31970 r!7292)))))))

(declare-fun b!5729669 () Bool)

(declare-fun e!3522815 () (InoxSet Context!10226))

(assert (=> b!5729669 (= e!3522815 call!438099)))

(declare-fun b!5729670 () Bool)

(assert (=> b!5729670 (= e!3522811 e!3522814)))

(assert (=> b!5729670 (= c!1011013 ((_ is Union!15729) (reg!16058 (regOne!31970 r!7292))))))

(declare-fun b!5729671 () Bool)

(assert (=> b!5729671 (= e!3522813 ((as const (Array Context!10226 Bool)) false))))

(declare-fun b!5729672 () Bool)

(assert (=> b!5729672 (= c!1011015 e!3522816)))

(declare-fun res!2418902 () Bool)

(assert (=> b!5729672 (=> (not res!2418902) (not e!3522816))))

(assert (=> b!5729672 (= res!2418902 ((_ is Concat!24574) (reg!16058 (regOne!31970 r!7292))))))

(assert (=> b!5729672 (= e!3522814 e!3522812)))

(declare-fun b!5729673 () Bool)

(declare-fun c!1011014 () Bool)

(assert (=> b!5729673 (= c!1011014 ((_ is Star!15729) (reg!16058 (regOne!31970 r!7292))))))

(assert (=> b!5729673 (= e!3522815 e!3522813)))

(declare-fun bm!438097 () Bool)

(assert (=> bm!438097 (= call!438100 call!438101)))

(declare-fun b!5729674 () Bool)

(assert (=> b!5729674 (= e!3522812 e!3522815)))

(assert (=> b!5729674 (= c!1011016 ((_ is Concat!24574) (reg!16058 (regOne!31970 r!7292))))))

(declare-fun bm!438098 () Bool)

(assert (=> bm!438098 (= call!438098 call!438103)))

(assert (= (and d!1807148 c!1011017) b!5729668))

(assert (= (and d!1807148 (not c!1011017)) b!5729670))

(assert (= (and b!5729670 c!1011013) b!5729665))

(assert (= (and b!5729670 (not c!1011013)) b!5729672))

(assert (= (and b!5729672 res!2418902) b!5729667))

(assert (= (and b!5729672 c!1011015) b!5729666))

(assert (= (and b!5729672 (not c!1011015)) b!5729674))

(assert (= (and b!5729674 c!1011016) b!5729669))

(assert (= (and b!5729674 (not c!1011016)) b!5729673))

(assert (= (and b!5729673 c!1011014) b!5729664))

(assert (= (and b!5729673 (not c!1011014)) b!5729671))

(assert (= (or b!5729669 b!5729664) bm!438097))

(assert (= (or b!5729669 b!5729664) bm!438096))

(assert (= (or b!5729666 bm!438097) bm!438094))

(assert (= (or b!5729666 bm!438096) bm!438098))

(assert (= (or b!5729665 bm!438098) bm!438095))

(assert (= (or b!5729665 b!5729666) bm!438093))

(declare-fun m!6681766 () Bool)

(assert (=> bm!438093 m!6681766))

(declare-fun m!6681768 () Bool)

(assert (=> bm!438095 m!6681768))

(assert (=> b!5729668 m!6681050))

(declare-fun m!6681770 () Bool)

(assert (=> b!5729667 m!6681770))

(declare-fun m!6681772 () Bool)

(assert (=> bm!438094 m!6681772))

(assert (=> b!5728913 d!1807148))

(declare-fun bs!1339495 () Bool)

(declare-fun d!1807150 () Bool)

(assert (= bs!1339495 (and d!1807150 b!5728871)))

(declare-fun lambda!309951 () Int)

(assert (=> bs!1339495 (= lambda!309951 lambda!309883)))

(declare-fun bs!1339496 () Bool)

(assert (= bs!1339496 (and d!1807150 d!1807066)))

(assert (=> bs!1339496 (= lambda!309951 lambda!309924)))

(declare-fun bs!1339497 () Bool)

(assert (= bs!1339497 (and d!1807150 d!1807122)))

(assert (=> bs!1339497 (= lambda!309951 lambda!309933)))

(declare-fun bs!1339498 () Bool)

(assert (= bs!1339498 (and d!1807150 d!1807146)))

(assert (=> bs!1339498 (= lambda!309951 lambda!309948)))

(declare-fun e!3522829 () Bool)

(assert (=> d!1807150 e!3522829))

(declare-fun res!2418907 () Bool)

(assert (=> d!1807150 (=> (not res!2418907) (not e!3522829))))

(declare-fun lt!2280298 () Regex!15729)

(assert (=> d!1807150 (= res!2418907 (validRegex!7465 lt!2280298))))

(declare-fun e!3522833 () Regex!15729)

(assert (=> d!1807150 (= lt!2280298 e!3522833)))

(declare-fun c!1011027 () Bool)

(declare-fun e!3522834 () Bool)

(assert (=> d!1807150 (= c!1011027 e!3522834)))

(declare-fun res!2418908 () Bool)

(assert (=> d!1807150 (=> (not res!2418908) (not e!3522834))))

(assert (=> d!1807150 (= res!2418908 ((_ is Cons!63362) (unfocusZipperList!1157 zl!343)))))

(assert (=> d!1807150 (forall!14860 (unfocusZipperList!1157 zl!343) lambda!309951)))

(assert (=> d!1807150 (= (generalisedUnion!1592 (unfocusZipperList!1157 zl!343)) lt!2280298)))

(declare-fun b!5729695 () Bool)

(declare-fun e!3522830 () Regex!15729)

(assert (=> b!5729695 (= e!3522830 EmptyLang!15729)))

(declare-fun b!5729696 () Bool)

(assert (=> b!5729696 (= e!3522833 e!3522830)))

(declare-fun c!1011026 () Bool)

(assert (=> b!5729696 (= c!1011026 ((_ is Cons!63362) (unfocusZipperList!1157 zl!343)))))

(declare-fun b!5729697 () Bool)

(assert (=> b!5729697 (= e!3522834 (isEmpty!35242 (t!376814 (unfocusZipperList!1157 zl!343))))))

(declare-fun b!5729698 () Bool)

(assert (=> b!5729698 (= e!3522830 (Union!15729 (h!69810 (unfocusZipperList!1157 zl!343)) (generalisedUnion!1592 (t!376814 (unfocusZipperList!1157 zl!343)))))))

(declare-fun b!5729699 () Bool)

(declare-fun e!3522831 () Bool)

(declare-fun isUnion!674 (Regex!15729) Bool)

(assert (=> b!5729699 (= e!3522831 (isUnion!674 lt!2280298))))

(declare-fun b!5729700 () Bool)

(declare-fun e!3522832 () Bool)

(declare-fun isEmptyLang!1244 (Regex!15729) Bool)

(assert (=> b!5729700 (= e!3522832 (isEmptyLang!1244 lt!2280298))))

(declare-fun b!5729701 () Bool)

(assert (=> b!5729701 (= e!3522832 e!3522831)))

(declare-fun c!1011029 () Bool)

(assert (=> b!5729701 (= c!1011029 (isEmpty!35242 (tail!11226 (unfocusZipperList!1157 zl!343))))))

(declare-fun b!5729702 () Bool)

(assert (=> b!5729702 (= e!3522831 (= lt!2280298 (head!12131 (unfocusZipperList!1157 zl!343))))))

(declare-fun b!5729703 () Bool)

(assert (=> b!5729703 (= e!3522829 e!3522832)))

(declare-fun c!1011028 () Bool)

(assert (=> b!5729703 (= c!1011028 (isEmpty!35242 (unfocusZipperList!1157 zl!343)))))

(declare-fun b!5729704 () Bool)

(assert (=> b!5729704 (= e!3522833 (h!69810 (unfocusZipperList!1157 zl!343)))))

(assert (= (and d!1807150 res!2418908) b!5729697))

(assert (= (and d!1807150 c!1011027) b!5729704))

(assert (= (and d!1807150 (not c!1011027)) b!5729696))

(assert (= (and b!5729696 c!1011026) b!5729698))

(assert (= (and b!5729696 (not c!1011026)) b!5729695))

(assert (= (and d!1807150 res!2418907) b!5729703))

(assert (= (and b!5729703 c!1011028) b!5729700))

(assert (= (and b!5729703 (not c!1011028)) b!5729701))

(assert (= (and b!5729701 c!1011029) b!5729702))

(assert (= (and b!5729701 (not c!1011029)) b!5729699))

(assert (=> b!5729702 m!6681114))

(declare-fun m!6681774 () Bool)

(assert (=> b!5729702 m!6681774))

(declare-fun m!6681776 () Bool)

(assert (=> b!5729700 m!6681776))

(declare-fun m!6681778 () Bool)

(assert (=> b!5729697 m!6681778))

(declare-fun m!6681780 () Bool)

(assert (=> b!5729698 m!6681780))

(declare-fun m!6681782 () Bool)

(assert (=> b!5729699 m!6681782))

(declare-fun m!6681784 () Bool)

(assert (=> d!1807150 m!6681784))

(assert (=> d!1807150 m!6681114))

(declare-fun m!6681786 () Bool)

(assert (=> d!1807150 m!6681786))

(assert (=> b!5729701 m!6681114))

(declare-fun m!6681788 () Bool)

(assert (=> b!5729701 m!6681788))

(assert (=> b!5729701 m!6681788))

(declare-fun m!6681790 () Bool)

(assert (=> b!5729701 m!6681790))

(assert (=> b!5729703 m!6681114))

(declare-fun m!6681792 () Bool)

(assert (=> b!5729703 m!6681792))

(assert (=> b!5728910 d!1807150))

(declare-fun bs!1339499 () Bool)

(declare-fun d!1807152 () Bool)

(assert (= bs!1339499 (and d!1807152 d!1807150)))

(declare-fun lambda!309954 () Int)

(assert (=> bs!1339499 (= lambda!309954 lambda!309951)))

(declare-fun bs!1339500 () Bool)

(assert (= bs!1339500 (and d!1807152 b!5728871)))

(assert (=> bs!1339500 (= lambda!309954 lambda!309883)))

(declare-fun bs!1339501 () Bool)

(assert (= bs!1339501 (and d!1807152 d!1807066)))

(assert (=> bs!1339501 (= lambda!309954 lambda!309924)))

(declare-fun bs!1339502 () Bool)

(assert (= bs!1339502 (and d!1807152 d!1807146)))

(assert (=> bs!1339502 (= lambda!309954 lambda!309948)))

(declare-fun bs!1339503 () Bool)

(assert (= bs!1339503 (and d!1807152 d!1807122)))

(assert (=> bs!1339503 (= lambda!309954 lambda!309933)))

(declare-fun lt!2280301 () List!63486)

(assert (=> d!1807152 (forall!14860 lt!2280301 lambda!309954)))

(declare-fun e!3522837 () List!63486)

(assert (=> d!1807152 (= lt!2280301 e!3522837)))

(declare-fun c!1011032 () Bool)

(assert (=> d!1807152 (= c!1011032 ((_ is Cons!63364) zl!343))))

(assert (=> d!1807152 (= (unfocusZipperList!1157 zl!343) lt!2280301)))

(declare-fun b!5729709 () Bool)

(assert (=> b!5729709 (= e!3522837 (Cons!63362 (generalisedConcat!1344 (exprs!5613 (h!69812 zl!343))) (unfocusZipperList!1157 (t!376816 zl!343))))))

(declare-fun b!5729710 () Bool)

(assert (=> b!5729710 (= e!3522837 Nil!63362)))

(assert (= (and d!1807152 c!1011032) b!5729709))

(assert (= (and d!1807152 (not c!1011032)) b!5729710))

(declare-fun m!6681794 () Bool)

(assert (=> d!1807152 m!6681794))

(assert (=> b!5729709 m!6681022))

(declare-fun m!6681796 () Bool)

(assert (=> b!5729709 m!6681796))

(assert (=> b!5728910 d!1807152))

(declare-fun d!1807154 () Bool)

(assert (=> d!1807154 (= (flatMap!1342 lt!2280138 lambda!309881) (choose!43351 lt!2280138 lambda!309881))))

(declare-fun bs!1339504 () Bool)

(assert (= bs!1339504 d!1807154))

(declare-fun m!6681798 () Bool)

(assert (=> bs!1339504 m!6681798))

(assert (=> b!5728890 d!1807154))

(declare-fun bm!438099 () Bool)

(declare-fun call!438104 () (InoxSet Context!10226))

(assert (=> bm!438099 (= call!438104 (derivationStepZipperDown!1071 (h!69810 (exprs!5613 lt!2280159)) (Context!10227 (t!376814 (exprs!5613 lt!2280159))) (h!69811 s!2326)))))

(declare-fun d!1807156 () Bool)

(declare-fun c!1011034 () Bool)

(declare-fun e!3522838 () Bool)

(assert (=> d!1807156 (= c!1011034 e!3522838)))

(declare-fun res!2418909 () Bool)

(assert (=> d!1807156 (=> (not res!2418909) (not e!3522838))))

(assert (=> d!1807156 (= res!2418909 ((_ is Cons!63362) (exprs!5613 lt!2280159)))))

(declare-fun e!3522839 () (InoxSet Context!10226))

(assert (=> d!1807156 (= (derivationStepZipperUp!997 lt!2280159 (h!69811 s!2326)) e!3522839)))

(declare-fun b!5729711 () Bool)

(assert (=> b!5729711 (= e!3522838 (nullable!5761 (h!69810 (exprs!5613 lt!2280159))))))

(declare-fun b!5729712 () Bool)

(declare-fun e!3522840 () (InoxSet Context!10226))

(assert (=> b!5729712 (= e!3522840 ((as const (Array Context!10226 Bool)) false))))

(declare-fun b!5729713 () Bool)

(assert (=> b!5729713 (= e!3522840 call!438104)))

(declare-fun b!5729714 () Bool)

(assert (=> b!5729714 (= e!3522839 e!3522840)))

(declare-fun c!1011033 () Bool)

(assert (=> b!5729714 (= c!1011033 ((_ is Cons!63362) (exprs!5613 lt!2280159)))))

(declare-fun b!5729715 () Bool)

(assert (=> b!5729715 (= e!3522839 ((_ map or) call!438104 (derivationStepZipperUp!997 (Context!10227 (t!376814 (exprs!5613 lt!2280159))) (h!69811 s!2326))))))

(assert (= (and d!1807156 res!2418909) b!5729711))

(assert (= (and d!1807156 c!1011034) b!5729715))

(assert (= (and d!1807156 (not c!1011034)) b!5729714))

(assert (= (and b!5729714 c!1011033) b!5729713))

(assert (= (and b!5729714 (not c!1011033)) b!5729712))

(assert (= (or b!5729715 b!5729713) bm!438099))

(declare-fun m!6681800 () Bool)

(assert (=> bm!438099 m!6681800))

(declare-fun m!6681802 () Bool)

(assert (=> b!5729711 m!6681802))

(declare-fun m!6681804 () Bool)

(assert (=> b!5729715 m!6681804))

(assert (=> b!5728890 d!1807156))

(declare-fun d!1807158 () Bool)

(assert (=> d!1807158 (= (flatMap!1342 lt!2280138 lambda!309881) (dynLambda!24799 lambda!309881 lt!2280159))))

(declare-fun lt!2280302 () Unit!156448)

(assert (=> d!1807158 (= lt!2280302 (choose!43350 lt!2280138 lt!2280159 lambda!309881))))

(assert (=> d!1807158 (= lt!2280138 (store ((as const (Array Context!10226 Bool)) false) lt!2280159 true))))

(assert (=> d!1807158 (= (lemmaFlatMapOnSingletonSet!874 lt!2280138 lt!2280159 lambda!309881) lt!2280302)))

(declare-fun b_lambda!216511 () Bool)

(assert (=> (not b_lambda!216511) (not d!1807158)))

(declare-fun bs!1339505 () Bool)

(assert (= bs!1339505 d!1807158))

(assert (=> bs!1339505 m!6681108))

(declare-fun m!6681806 () Bool)

(assert (=> bs!1339505 m!6681806))

(declare-fun m!6681808 () Bool)

(assert (=> bs!1339505 m!6681808))

(assert (=> bs!1339505 m!6681112))

(assert (=> b!5728890 d!1807158))

(declare-fun bs!1339506 () Bool)

(declare-fun d!1807160 () Bool)

(assert (= bs!1339506 (and d!1807160 b!5728901)))

(declare-fun lambda!309957 () Int)

(assert (=> bs!1339506 (= lambda!309957 lambda!309881)))

(assert (=> d!1807160 true))

(assert (=> d!1807160 (= (derivationStepZipper!1812 lt!2280138 (h!69811 s!2326)) (flatMap!1342 lt!2280138 lambda!309957))))

(declare-fun bs!1339507 () Bool)

(assert (= bs!1339507 d!1807160))

(declare-fun m!6681810 () Bool)

(assert (=> bs!1339507 m!6681810))

(assert (=> b!5728890 d!1807160))

(declare-fun bm!438100 () Bool)

(declare-fun call!438105 () (InoxSet Context!10226))

(assert (=> bm!438100 (= call!438105 (derivationStepZipperDown!1071 (h!69810 (exprs!5613 lt!2280160)) (Context!10227 (t!376814 (exprs!5613 lt!2280160))) (h!69811 s!2326)))))

(declare-fun d!1807162 () Bool)

(declare-fun c!1011038 () Bool)

(declare-fun e!3522841 () Bool)

(assert (=> d!1807162 (= c!1011038 e!3522841)))

(declare-fun res!2418910 () Bool)

(assert (=> d!1807162 (=> (not res!2418910) (not e!3522841))))

(assert (=> d!1807162 (= res!2418910 ((_ is Cons!63362) (exprs!5613 lt!2280160)))))

(declare-fun e!3522842 () (InoxSet Context!10226))

(assert (=> d!1807162 (= (derivationStepZipperUp!997 lt!2280160 (h!69811 s!2326)) e!3522842)))

(declare-fun b!5729718 () Bool)

(assert (=> b!5729718 (= e!3522841 (nullable!5761 (h!69810 (exprs!5613 lt!2280160))))))

(declare-fun b!5729719 () Bool)

(declare-fun e!3522843 () (InoxSet Context!10226))

(assert (=> b!5729719 (= e!3522843 ((as const (Array Context!10226 Bool)) false))))

(declare-fun b!5729720 () Bool)

(assert (=> b!5729720 (= e!3522843 call!438105)))

(declare-fun b!5729721 () Bool)

(assert (=> b!5729721 (= e!3522842 e!3522843)))

(declare-fun c!1011037 () Bool)

(assert (=> b!5729721 (= c!1011037 ((_ is Cons!63362) (exprs!5613 lt!2280160)))))

(declare-fun b!5729722 () Bool)

(assert (=> b!5729722 (= e!3522842 ((_ map or) call!438105 (derivationStepZipperUp!997 (Context!10227 (t!376814 (exprs!5613 lt!2280160))) (h!69811 s!2326))))))

(assert (= (and d!1807162 res!2418910) b!5729718))

(assert (= (and d!1807162 c!1011038) b!5729722))

(assert (= (and d!1807162 (not c!1011038)) b!5729721))

(assert (= (and b!5729721 c!1011037) b!5729720))

(assert (= (and b!5729721 (not c!1011037)) b!5729719))

(assert (= (or b!5729722 b!5729720) bm!438100))

(declare-fun m!6681812 () Bool)

(assert (=> bm!438100 m!6681812))

(declare-fun m!6681814 () Bool)

(assert (=> b!5729718 m!6681814))

(declare-fun m!6681816 () Bool)

(assert (=> b!5729722 m!6681816))

(assert (=> b!5728891 d!1807162))

(declare-fun d!1807164 () Bool)

(assert (=> d!1807164 (= (flatMap!1342 lt!2280155 lambda!309881) (dynLambda!24799 lambda!309881 lt!2280124))))

(declare-fun lt!2280303 () Unit!156448)

(assert (=> d!1807164 (= lt!2280303 (choose!43350 lt!2280155 lt!2280124 lambda!309881))))

(assert (=> d!1807164 (= lt!2280155 (store ((as const (Array Context!10226 Bool)) false) lt!2280124 true))))

(assert (=> d!1807164 (= (lemmaFlatMapOnSingletonSet!874 lt!2280155 lt!2280124 lambda!309881) lt!2280303)))

(declare-fun b_lambda!216513 () Bool)

(assert (=> (not b_lambda!216513) (not d!1807164)))

(declare-fun bs!1339508 () Bool)

(assert (= bs!1339508 d!1807164))

(assert (=> bs!1339508 m!6681046))

(declare-fun m!6681818 () Bool)

(assert (=> bs!1339508 m!6681818))

(declare-fun m!6681820 () Bool)

(assert (=> bs!1339508 m!6681820))

(assert (=> bs!1339508 m!6681052))

(assert (=> b!5728891 d!1807164))

(declare-fun d!1807166 () Bool)

(assert (=> d!1807166 (= (flatMap!1342 lt!2280155 lambda!309881) (choose!43351 lt!2280155 lambda!309881))))

(declare-fun bs!1339509 () Bool)

(assert (= bs!1339509 d!1807166))

(declare-fun m!6681822 () Bool)

(assert (=> bs!1339509 m!6681822))

(assert (=> b!5728891 d!1807166))

(declare-fun d!1807168 () Bool)

(declare-fun lt!2280304 () Regex!15729)

(assert (=> d!1807168 (validRegex!7465 lt!2280304)))

(assert (=> d!1807168 (= lt!2280304 (generalisedUnion!1592 (unfocusZipperList!1157 (Cons!63364 lt!2280124 Nil!63364))))))

(assert (=> d!1807168 (= (unfocusZipper!1471 (Cons!63364 lt!2280124 Nil!63364)) lt!2280304)))

(declare-fun bs!1339510 () Bool)

(assert (= bs!1339510 d!1807168))

(declare-fun m!6681824 () Bool)

(assert (=> bs!1339510 m!6681824))

(declare-fun m!6681826 () Bool)

(assert (=> bs!1339510 m!6681826))

(assert (=> bs!1339510 m!6681826))

(declare-fun m!6681828 () Bool)

(assert (=> bs!1339510 m!6681828))

(assert (=> b!5728891 d!1807168))

(declare-fun bm!438101 () Bool)

(declare-fun call!438106 () (InoxSet Context!10226))

(assert (=> bm!438101 (= call!438106 (derivationStepZipperDown!1071 (h!69810 (exprs!5613 lt!2280124)) (Context!10227 (t!376814 (exprs!5613 lt!2280124))) (h!69811 s!2326)))))

(declare-fun d!1807170 () Bool)

(declare-fun c!1011040 () Bool)

(declare-fun e!3522844 () Bool)

(assert (=> d!1807170 (= c!1011040 e!3522844)))

(declare-fun res!2418911 () Bool)

(assert (=> d!1807170 (=> (not res!2418911) (not e!3522844))))

(assert (=> d!1807170 (= res!2418911 ((_ is Cons!63362) (exprs!5613 lt!2280124)))))

(declare-fun e!3522845 () (InoxSet Context!10226))

(assert (=> d!1807170 (= (derivationStepZipperUp!997 lt!2280124 (h!69811 s!2326)) e!3522845)))

(declare-fun b!5729723 () Bool)

(assert (=> b!5729723 (= e!3522844 (nullable!5761 (h!69810 (exprs!5613 lt!2280124))))))

(declare-fun b!5729724 () Bool)

(declare-fun e!3522846 () (InoxSet Context!10226))

(assert (=> b!5729724 (= e!3522846 ((as const (Array Context!10226 Bool)) false))))

(declare-fun b!5729725 () Bool)

(assert (=> b!5729725 (= e!3522846 call!438106)))

(declare-fun b!5729726 () Bool)

(assert (=> b!5729726 (= e!3522845 e!3522846)))

(declare-fun c!1011039 () Bool)

(assert (=> b!5729726 (= c!1011039 ((_ is Cons!63362) (exprs!5613 lt!2280124)))))

(declare-fun b!5729727 () Bool)

(assert (=> b!5729727 (= e!3522845 ((_ map or) call!438106 (derivationStepZipperUp!997 (Context!10227 (t!376814 (exprs!5613 lt!2280124))) (h!69811 s!2326))))))

(assert (= (and d!1807170 res!2418911) b!5729723))

(assert (= (and d!1807170 c!1011040) b!5729727))

(assert (= (and d!1807170 (not c!1011040)) b!5729726))

(assert (= (and b!5729726 c!1011039) b!5729725))

(assert (= (and b!5729726 (not c!1011039)) b!5729724))

(assert (= (or b!5729727 b!5729725) bm!438101))

(declare-fun m!6681830 () Bool)

(assert (=> bm!438101 m!6681830))

(declare-fun m!6681832 () Bool)

(assert (=> b!5729723 m!6681832))

(declare-fun m!6681834 () Bool)

(assert (=> b!5729727 m!6681834))

(assert (=> b!5728891 d!1807170))

(declare-fun d!1807172 () Bool)

(assert (=> d!1807172 (= (flatMap!1342 lt!2280126 lambda!309881) (dynLambda!24799 lambda!309881 lt!2280160))))

(declare-fun lt!2280305 () Unit!156448)

(assert (=> d!1807172 (= lt!2280305 (choose!43350 lt!2280126 lt!2280160 lambda!309881))))

(assert (=> d!1807172 (= lt!2280126 (store ((as const (Array Context!10226 Bool)) false) lt!2280160 true))))

(assert (=> d!1807172 (= (lemmaFlatMapOnSingletonSet!874 lt!2280126 lt!2280160 lambda!309881) lt!2280305)))

(declare-fun b_lambda!216515 () Bool)

(assert (=> (not b_lambda!216515) (not d!1807172)))

(declare-fun bs!1339511 () Bool)

(assert (= bs!1339511 d!1807172))

(assert (=> bs!1339511 m!6681058))

(declare-fun m!6681836 () Bool)

(assert (=> bs!1339511 m!6681836))

(declare-fun m!6681838 () Bool)

(assert (=> bs!1339511 m!6681838))

(assert (=> bs!1339511 m!6681050))

(assert (=> b!5728891 d!1807172))

(declare-fun d!1807174 () Bool)

(assert (=> d!1807174 (= (flatMap!1342 lt!2280126 lambda!309881) (choose!43351 lt!2280126 lambda!309881))))

(declare-fun bs!1339512 () Bool)

(assert (= bs!1339512 d!1807174))

(declare-fun m!6681840 () Bool)

(assert (=> bs!1339512 m!6681840))

(assert (=> b!5728891 d!1807174))

(declare-fun d!1807176 () Bool)

(declare-fun c!1011041 () Bool)

(assert (=> d!1807176 (= c!1011041 (isEmpty!35245 (_1!36129 lt!2280149)))))

(declare-fun e!3522847 () Bool)

(assert (=> d!1807176 (= (matchZipper!1867 lt!2280155 (_1!36129 lt!2280149)) e!3522847)))

(declare-fun b!5729728 () Bool)

(assert (=> b!5729728 (= e!3522847 (nullableZipper!1675 lt!2280155))))

(declare-fun b!5729729 () Bool)

(assert (=> b!5729729 (= e!3522847 (matchZipper!1867 (derivationStepZipper!1812 lt!2280155 (head!12130 (_1!36129 lt!2280149))) (tail!11225 (_1!36129 lt!2280149))))))

(assert (= (and d!1807176 c!1011041) b!5729728))

(assert (= (and d!1807176 (not c!1011041)) b!5729729))

(declare-fun m!6681842 () Bool)

(assert (=> d!1807176 m!6681842))

(declare-fun m!6681844 () Bool)

(assert (=> b!5729728 m!6681844))

(declare-fun m!6681846 () Bool)

(assert (=> b!5729729 m!6681846))

(assert (=> b!5729729 m!6681846))

(declare-fun m!6681848 () Bool)

(assert (=> b!5729729 m!6681848))

(declare-fun m!6681850 () Bool)

(assert (=> b!5729729 m!6681850))

(assert (=> b!5729729 m!6681848))

(assert (=> b!5729729 m!6681850))

(declare-fun m!6681852 () Bool)

(assert (=> b!5729729 m!6681852))

(assert (=> b!5728911 d!1807176))

(declare-fun b!5729748 () Bool)

(declare-fun e!3522865 () Bool)

(declare-fun e!3522863 () Bool)

(assert (=> b!5729748 (= e!3522865 e!3522863)))

(declare-fun res!2418926 () Bool)

(assert (=> b!5729748 (=> (not res!2418926) (not e!3522863))))

(declare-fun call!438114 () Bool)

(assert (=> b!5729748 (= res!2418926 call!438114)))

(declare-fun d!1807178 () Bool)

(declare-fun res!2418925 () Bool)

(declare-fun e!3522867 () Bool)

(assert (=> d!1807178 (=> res!2418925 e!3522867)))

(assert (=> d!1807178 (= res!2418925 ((_ is ElementMatch!15729) r!7292))))

(assert (=> d!1807178 (= (validRegex!7465 r!7292) e!3522867)))

(declare-fun b!5729749 () Bool)

(declare-fun e!3522862 () Bool)

(declare-fun e!3522864 () Bool)

(assert (=> b!5729749 (= e!3522862 e!3522864)))

(declare-fun c!1011047 () Bool)

(assert (=> b!5729749 (= c!1011047 ((_ is Union!15729) r!7292))))

(declare-fun b!5729750 () Bool)

(declare-fun e!3522866 () Bool)

(declare-fun call!438113 () Bool)

(assert (=> b!5729750 (= e!3522866 call!438113)))

(declare-fun bm!438108 () Bool)

(assert (=> bm!438108 (= call!438114 (validRegex!7465 (ite c!1011047 (regOne!31971 r!7292) (regOne!31970 r!7292))))))

(declare-fun b!5729751 () Bool)

(declare-fun e!3522868 () Bool)

(declare-fun call!438115 () Bool)

(assert (=> b!5729751 (= e!3522868 call!438115)))

(declare-fun bm!438109 () Bool)

(declare-fun c!1011046 () Bool)

(assert (=> bm!438109 (= call!438113 (validRegex!7465 (ite c!1011046 (reg!16058 r!7292) (ite c!1011047 (regTwo!31971 r!7292) (regTwo!31970 r!7292)))))))

(declare-fun b!5729752 () Bool)

(assert (=> b!5729752 (= e!3522863 call!438115)))

(declare-fun b!5729753 () Bool)

(assert (=> b!5729753 (= e!3522867 e!3522862)))

(assert (=> b!5729753 (= c!1011046 ((_ is Star!15729) r!7292))))

(declare-fun b!5729754 () Bool)

(declare-fun res!2418924 () Bool)

(assert (=> b!5729754 (=> (not res!2418924) (not e!3522868))))

(assert (=> b!5729754 (= res!2418924 call!438114)))

(assert (=> b!5729754 (= e!3522864 e!3522868)))

(declare-fun bm!438110 () Bool)

(assert (=> bm!438110 (= call!438115 call!438113)))

(declare-fun b!5729755 () Bool)

(declare-fun res!2418923 () Bool)

(assert (=> b!5729755 (=> res!2418923 e!3522865)))

(assert (=> b!5729755 (= res!2418923 (not ((_ is Concat!24574) r!7292)))))

(assert (=> b!5729755 (= e!3522864 e!3522865)))

(declare-fun b!5729756 () Bool)

(assert (=> b!5729756 (= e!3522862 e!3522866)))

(declare-fun res!2418922 () Bool)

(assert (=> b!5729756 (= res!2418922 (not (nullable!5761 (reg!16058 r!7292))))))

(assert (=> b!5729756 (=> (not res!2418922) (not e!3522866))))

(assert (= (and d!1807178 (not res!2418925)) b!5729753))

(assert (= (and b!5729753 c!1011046) b!5729756))

(assert (= (and b!5729753 (not c!1011046)) b!5729749))

(assert (= (and b!5729756 res!2418922) b!5729750))

(assert (= (and b!5729749 c!1011047) b!5729754))

(assert (= (and b!5729749 (not c!1011047)) b!5729755))

(assert (= (and b!5729754 res!2418924) b!5729751))

(assert (= (and b!5729755 (not res!2418923)) b!5729748))

(assert (= (and b!5729748 res!2418926) b!5729752))

(assert (= (or b!5729751 b!5729752) bm!438110))

(assert (= (or b!5729754 b!5729748) bm!438108))

(assert (= (or b!5729750 bm!438110) bm!438109))

(declare-fun m!6681854 () Bool)

(assert (=> bm!438108 m!6681854))

(declare-fun m!6681856 () Bool)

(assert (=> bm!438109 m!6681856))

(declare-fun m!6681858 () Bool)

(assert (=> b!5729756 m!6681858))

(assert (=> start!589632 d!1807178))

(declare-fun d!1807180 () Bool)

(assert (=> d!1807180 (= (nullable!5761 (regOne!31970 (regOne!31970 r!7292))) (nullableFct!1821 (regOne!31970 (regOne!31970 r!7292))))))

(declare-fun bs!1339513 () Bool)

(assert (= bs!1339513 d!1807180))

(declare-fun m!6681860 () Bool)

(assert (=> bs!1339513 m!6681860))

(assert (=> b!5728887 d!1807180))

(declare-fun bs!1339514 () Bool)

(declare-fun b!5729766 () Bool)

(assert (= bs!1339514 (and b!5729766 d!1807142)))

(declare-fun lambda!309958 () Int)

(assert (=> bs!1339514 (not (= lambda!309958 lambda!309947))))

(declare-fun bs!1339515 () Bool)

(assert (= bs!1339515 (and b!5729766 d!1807140)))

(assert (=> bs!1339515 (not (= lambda!309958 lambda!309941))))

(declare-fun bs!1339516 () Bool)

(assert (= bs!1339516 (and b!5729766 b!5728892)))

(assert (=> bs!1339516 (not (= lambda!309958 lambda!309880))))

(assert (=> bs!1339516 (not (= lambda!309958 lambda!309879))))

(declare-fun bs!1339517 () Bool)

(assert (= bs!1339517 (and b!5729766 b!5729604)))

(assert (=> bs!1339517 (not (= lambda!309958 lambda!309930))))

(declare-fun bs!1339518 () Bool)

(assert (= bs!1339518 (and b!5729766 b!5729607)))

(assert (=> bs!1339518 (= (and (= (reg!16058 r!7292) (reg!16058 lt!2280153)) (= r!7292 lt!2280153)) (= lambda!309958 lambda!309929))))

(assert (=> bs!1339514 (not (= lambda!309958 lambda!309946))))

(assert (=> b!5729766 true))

(assert (=> b!5729766 true))

(declare-fun bs!1339519 () Bool)

(declare-fun b!5729763 () Bool)

(assert (= bs!1339519 (and b!5729763 d!1807142)))

(declare-fun lambda!309959 () Int)

(assert (=> bs!1339519 (= lambda!309959 lambda!309947)))

(declare-fun bs!1339520 () Bool)

(assert (= bs!1339520 (and b!5729763 d!1807140)))

(assert (=> bs!1339520 (not (= lambda!309959 lambda!309941))))

(declare-fun bs!1339521 () Bool)

(assert (= bs!1339521 (and b!5729763 b!5728892)))

(assert (=> bs!1339521 (= lambda!309959 lambda!309880)))

(assert (=> bs!1339521 (not (= lambda!309959 lambda!309879))))

(declare-fun bs!1339522 () Bool)

(assert (= bs!1339522 (and b!5729763 b!5729604)))

(assert (=> bs!1339522 (= (and (= (regOne!31970 r!7292) (regOne!31970 lt!2280153)) (= (regTwo!31970 r!7292) (regTwo!31970 lt!2280153))) (= lambda!309959 lambda!309930))))

(declare-fun bs!1339523 () Bool)

(assert (= bs!1339523 (and b!5729763 b!5729607)))

(assert (=> bs!1339523 (not (= lambda!309959 lambda!309929))))

(assert (=> bs!1339519 (not (= lambda!309959 lambda!309946))))

(declare-fun bs!1339524 () Bool)

(assert (= bs!1339524 (and b!5729763 b!5729766)))

(assert (=> bs!1339524 (not (= lambda!309959 lambda!309958))))

(assert (=> b!5729763 true))

(assert (=> b!5729763 true))

(declare-fun b!5729758 () Bool)

(declare-fun e!3522869 () Bool)

(declare-fun call!438116 () Bool)

(assert (=> b!5729758 (= e!3522869 call!438116)))

(declare-fun b!5729759 () Bool)

(declare-fun e!3522874 () Bool)

(assert (=> b!5729759 (= e!3522874 (matchRSpec!2832 (regTwo!31971 r!7292) s!2326))))

(declare-fun b!5729760 () Bool)

(declare-fun e!3522871 () Bool)

(assert (=> b!5729760 (= e!3522871 e!3522874)))

(declare-fun res!2418928 () Bool)

(assert (=> b!5729760 (= res!2418928 (matchRSpec!2832 (regOne!31971 r!7292) s!2326))))

(assert (=> b!5729760 (=> res!2418928 e!3522874)))

(declare-fun b!5729761 () Bool)

(declare-fun e!3522875 () Bool)

(assert (=> b!5729761 (= e!3522871 e!3522875)))

(declare-fun c!1011049 () Bool)

(assert (=> b!5729761 (= c!1011049 ((_ is Star!15729) r!7292))))

(declare-fun bm!438111 () Bool)

(declare-fun call!438117 () Bool)

(assert (=> bm!438111 (= call!438117 (Exists!2829 (ite c!1011049 lambda!309958 lambda!309959)))))

(declare-fun b!5729762 () Bool)

(declare-fun e!3522870 () Bool)

(assert (=> b!5729762 (= e!3522870 (= s!2326 (Cons!63363 (c!1010799 r!7292) Nil!63363)))))

(declare-fun bm!438112 () Bool)

(assert (=> bm!438112 (= call!438116 (isEmpty!35245 s!2326))))

(assert (=> b!5729763 (= e!3522875 call!438117)))

(declare-fun d!1807182 () Bool)

(declare-fun c!1011050 () Bool)

(assert (=> d!1807182 (= c!1011050 ((_ is EmptyExpr!15729) r!7292))))

(assert (=> d!1807182 (= (matchRSpec!2832 r!7292 s!2326) e!3522869)))

(declare-fun b!5729757 () Bool)

(declare-fun e!3522872 () Bool)

(assert (=> b!5729757 (= e!3522869 e!3522872)))

(declare-fun res!2418929 () Bool)

(assert (=> b!5729757 (= res!2418929 (not ((_ is EmptyLang!15729) r!7292)))))

(assert (=> b!5729757 (=> (not res!2418929) (not e!3522872))))

(declare-fun b!5729764 () Bool)

(declare-fun res!2418927 () Bool)

(declare-fun e!3522873 () Bool)

(assert (=> b!5729764 (=> res!2418927 e!3522873)))

(assert (=> b!5729764 (= res!2418927 call!438116)))

(assert (=> b!5729764 (= e!3522875 e!3522873)))

(declare-fun b!5729765 () Bool)

(declare-fun c!1011048 () Bool)

(assert (=> b!5729765 (= c!1011048 ((_ is ElementMatch!15729) r!7292))))

(assert (=> b!5729765 (= e!3522872 e!3522870)))

(assert (=> b!5729766 (= e!3522873 call!438117)))

(declare-fun b!5729767 () Bool)

(declare-fun c!1011051 () Bool)

(assert (=> b!5729767 (= c!1011051 ((_ is Union!15729) r!7292))))

(assert (=> b!5729767 (= e!3522870 e!3522871)))

(assert (= (and d!1807182 c!1011050) b!5729758))

(assert (= (and d!1807182 (not c!1011050)) b!5729757))

(assert (= (and b!5729757 res!2418929) b!5729765))

(assert (= (and b!5729765 c!1011048) b!5729762))

(assert (= (and b!5729765 (not c!1011048)) b!5729767))

(assert (= (and b!5729767 c!1011051) b!5729760))

(assert (= (and b!5729767 (not c!1011051)) b!5729761))

(assert (= (and b!5729760 (not res!2418928)) b!5729759))

(assert (= (and b!5729761 c!1011049) b!5729764))

(assert (= (and b!5729761 (not c!1011049)) b!5729763))

(assert (= (and b!5729764 (not res!2418927)) b!5729766))

(assert (= (or b!5729766 b!5729763) bm!438111))

(assert (= (or b!5729758 b!5729764) bm!438112))

(declare-fun m!6681862 () Bool)

(assert (=> b!5729759 m!6681862))

(declare-fun m!6681864 () Bool)

(assert (=> b!5729760 m!6681864))

(declare-fun m!6681866 () Bool)

(assert (=> bm!438111 m!6681866))

(assert (=> bm!438112 m!6681490))

(assert (=> b!5728888 d!1807182))

(declare-fun b!5729768 () Bool)

(declare-fun res!2418930 () Bool)

(declare-fun e!3522881 () Bool)

(assert (=> b!5729768 (=> res!2418930 e!3522881)))

(assert (=> b!5729768 (= res!2418930 (not ((_ is ElementMatch!15729) r!7292)))))

(declare-fun e!3522880 () Bool)

(assert (=> b!5729768 (= e!3522880 e!3522881)))

(declare-fun b!5729769 () Bool)

(declare-fun e!3522877 () Bool)

(declare-fun lt!2280306 () Bool)

(declare-fun call!438118 () Bool)

(assert (=> b!5729769 (= e!3522877 (= lt!2280306 call!438118))))

(declare-fun b!5729770 () Bool)

(assert (=> b!5729770 (= e!3522877 e!3522880)))

(declare-fun c!1011053 () Bool)

(assert (=> b!5729770 (= c!1011053 ((_ is EmptyLang!15729) r!7292))))

(declare-fun b!5729771 () Bool)

(declare-fun res!2418932 () Bool)

(declare-fun e!3522882 () Bool)

(assert (=> b!5729771 (=> (not res!2418932) (not e!3522882))))

(assert (=> b!5729771 (= res!2418932 (isEmpty!35245 (tail!11225 s!2326)))))

(declare-fun b!5729772 () Bool)

(declare-fun e!3522876 () Bool)

(assert (=> b!5729772 (= e!3522881 e!3522876)))

(declare-fun res!2418936 () Bool)

(assert (=> b!5729772 (=> (not res!2418936) (not e!3522876))))

(assert (=> b!5729772 (= res!2418936 (not lt!2280306))))

(declare-fun b!5729773 () Bool)

(declare-fun e!3522879 () Bool)

(assert (=> b!5729773 (= e!3522879 (matchR!7914 (derivativeStep!4528 r!7292 (head!12130 s!2326)) (tail!11225 s!2326)))))

(declare-fun b!5729774 () Bool)

(assert (=> b!5729774 (= e!3522880 (not lt!2280306))))

(declare-fun b!5729775 () Bool)

(declare-fun e!3522878 () Bool)

(assert (=> b!5729775 (= e!3522878 (not (= (head!12130 s!2326) (c!1010799 r!7292))))))

(declare-fun b!5729776 () Bool)

(declare-fun res!2418934 () Bool)

(assert (=> b!5729776 (=> res!2418934 e!3522881)))

(assert (=> b!5729776 (= res!2418934 e!3522882)))

(declare-fun res!2418933 () Bool)

(assert (=> b!5729776 (=> (not res!2418933) (not e!3522882))))

(assert (=> b!5729776 (= res!2418933 lt!2280306)))

(declare-fun d!1807184 () Bool)

(assert (=> d!1807184 e!3522877))

(declare-fun c!1011052 () Bool)

(assert (=> d!1807184 (= c!1011052 ((_ is EmptyExpr!15729) r!7292))))

(assert (=> d!1807184 (= lt!2280306 e!3522879)))

(declare-fun c!1011054 () Bool)

(assert (=> d!1807184 (= c!1011054 (isEmpty!35245 s!2326))))

(assert (=> d!1807184 (validRegex!7465 r!7292)))

(assert (=> d!1807184 (= (matchR!7914 r!7292 s!2326) lt!2280306)))

(declare-fun b!5729777 () Bool)

(assert (=> b!5729777 (= e!3522876 e!3522878)))

(declare-fun res!2418931 () Bool)

(assert (=> b!5729777 (=> res!2418931 e!3522878)))

(assert (=> b!5729777 (= res!2418931 call!438118)))

(declare-fun b!5729778 () Bool)

(declare-fun res!2418937 () Bool)

(assert (=> b!5729778 (=> (not res!2418937) (not e!3522882))))

(assert (=> b!5729778 (= res!2418937 (not call!438118))))

(declare-fun b!5729779 () Bool)

(assert (=> b!5729779 (= e!3522879 (nullable!5761 r!7292))))

(declare-fun b!5729780 () Bool)

(assert (=> b!5729780 (= e!3522882 (= (head!12130 s!2326) (c!1010799 r!7292)))))

(declare-fun bm!438113 () Bool)

(assert (=> bm!438113 (= call!438118 (isEmpty!35245 s!2326))))

(declare-fun b!5729781 () Bool)

(declare-fun res!2418935 () Bool)

(assert (=> b!5729781 (=> res!2418935 e!3522878)))

(assert (=> b!5729781 (= res!2418935 (not (isEmpty!35245 (tail!11225 s!2326))))))

(assert (= (and d!1807184 c!1011054) b!5729779))

(assert (= (and d!1807184 (not c!1011054)) b!5729773))

(assert (= (and d!1807184 c!1011052) b!5729769))

(assert (= (and d!1807184 (not c!1011052)) b!5729770))

(assert (= (and b!5729770 c!1011053) b!5729774))

(assert (= (and b!5729770 (not c!1011053)) b!5729768))

(assert (= (and b!5729768 (not res!2418930)) b!5729776))

(assert (= (and b!5729776 res!2418933) b!5729778))

(assert (= (and b!5729778 res!2418937) b!5729771))

(assert (= (and b!5729771 res!2418932) b!5729780))

(assert (= (and b!5729776 (not res!2418934)) b!5729772))

(assert (= (and b!5729772 res!2418936) b!5729777))

(assert (= (and b!5729777 (not res!2418931)) b!5729781))

(assert (= (and b!5729781 (not res!2418935)) b!5729775))

(assert (= (or b!5729769 b!5729777 b!5729778) bm!438113))

(assert (=> b!5729775 m!6681494))

(assert (=> b!5729780 m!6681494))

(declare-fun m!6681868 () Bool)

(assert (=> b!5729779 m!6681868))

(assert (=> bm!438113 m!6681490))

(assert (=> b!5729781 m!6681498))

(assert (=> b!5729781 m!6681498))

(assert (=> b!5729781 m!6681676))

(assert (=> b!5729771 m!6681498))

(assert (=> b!5729771 m!6681498))

(assert (=> b!5729771 m!6681676))

(assert (=> d!1807184 m!6681490))

(assert (=> d!1807184 m!6680988))

(assert (=> b!5729773 m!6681494))

(assert (=> b!5729773 m!6681494))

(declare-fun m!6681870 () Bool)

(assert (=> b!5729773 m!6681870))

(assert (=> b!5729773 m!6681498))

(assert (=> b!5729773 m!6681870))

(assert (=> b!5729773 m!6681498))

(declare-fun m!6681872 () Bool)

(assert (=> b!5729773 m!6681872))

(assert (=> b!5728888 d!1807184))

(declare-fun d!1807186 () Bool)

(assert (=> d!1807186 (= (matchR!7914 r!7292 s!2326) (matchRSpec!2832 r!7292 s!2326))))

(declare-fun lt!2280307 () Unit!156448)

(assert (=> d!1807186 (= lt!2280307 (choose!43355 r!7292 s!2326))))

(assert (=> d!1807186 (validRegex!7465 r!7292)))

(assert (=> d!1807186 (= (mainMatchTheorem!2832 r!7292 s!2326) lt!2280307)))

(declare-fun bs!1339525 () Bool)

(assert (= bs!1339525 d!1807186))

(assert (=> bs!1339525 m!6681084))

(assert (=> bs!1339525 m!6681082))

(declare-fun m!6681874 () Bool)

(assert (=> bs!1339525 m!6681874))

(assert (=> bs!1339525 m!6680988))

(assert (=> b!5728888 d!1807186))

(declare-fun d!1807188 () Bool)

(declare-fun e!3522885 () Bool)

(assert (=> d!1807188 e!3522885))

(declare-fun res!2418940 () Bool)

(assert (=> d!1807188 (=> (not res!2418940) (not e!3522885))))

(declare-fun lt!2280310 () List!63488)

(declare-fun noDuplicate!1655 (List!63488) Bool)

(assert (=> d!1807188 (= res!2418940 (noDuplicate!1655 lt!2280310))))

(declare-fun choose!43362 ((InoxSet Context!10226)) List!63488)

(assert (=> d!1807188 (= lt!2280310 (choose!43362 z!1189))))

(assert (=> d!1807188 (= (toList!9513 z!1189) lt!2280310)))

(declare-fun b!5729784 () Bool)

(declare-fun content!11534 (List!63488) (InoxSet Context!10226))

(assert (=> b!5729784 (= e!3522885 (= (content!11534 lt!2280310) z!1189))))

(assert (= (and d!1807188 res!2418940) b!5729784))

(declare-fun m!6681876 () Bool)

(assert (=> d!1807188 m!6681876))

(declare-fun m!6681878 () Bool)

(assert (=> d!1807188 m!6681878))

(declare-fun m!6681880 () Bool)

(assert (=> b!5729784 m!6681880))

(assert (=> b!5728884 d!1807188))

(declare-fun d!1807190 () Bool)

(declare-fun e!3522888 () Bool)

(assert (=> d!1807190 (= (matchZipper!1867 ((_ map or) lt!2280146 lt!2280129) (t!376815 s!2326)) e!3522888)))

(declare-fun res!2418943 () Bool)

(assert (=> d!1807190 (=> res!2418943 e!3522888)))

(assert (=> d!1807190 (= res!2418943 (matchZipper!1867 lt!2280146 (t!376815 s!2326)))))

(declare-fun lt!2280313 () Unit!156448)

(declare-fun choose!43363 ((InoxSet Context!10226) (InoxSet Context!10226) List!63487) Unit!156448)

(assert (=> d!1807190 (= lt!2280313 (choose!43363 lt!2280146 lt!2280129 (t!376815 s!2326)))))

(assert (=> d!1807190 (= (lemmaZipperConcatMatchesSameAsBothZippers!754 lt!2280146 lt!2280129 (t!376815 s!2326)) lt!2280313)))

(declare-fun b!5729787 () Bool)

(assert (=> b!5729787 (= e!3522888 (matchZipper!1867 lt!2280129 (t!376815 s!2326)))))

(assert (= (and d!1807190 (not res!2418943)) b!5729787))

(assert (=> d!1807190 m!6681102))

(assert (=> d!1807190 m!6681024))

(declare-fun m!6681882 () Bool)

(assert (=> d!1807190 m!6681882))

(assert (=> b!5729787 m!6681072))

(assert (=> b!5728906 d!1807190))

(assert (=> b!5728906 d!1807120))

(declare-fun d!1807192 () Bool)

(declare-fun c!1011055 () Bool)

(assert (=> d!1807192 (= c!1011055 (isEmpty!35245 (t!376815 s!2326)))))

(declare-fun e!3522889 () Bool)

(assert (=> d!1807192 (= (matchZipper!1867 ((_ map or) lt!2280146 lt!2280129) (t!376815 s!2326)) e!3522889)))

(declare-fun b!5729788 () Bool)

(assert (=> b!5729788 (= e!3522889 (nullableZipper!1675 ((_ map or) lt!2280146 lt!2280129)))))

(declare-fun b!5729789 () Bool)

(assert (=> b!5729789 (= e!3522889 (matchZipper!1867 (derivationStepZipper!1812 ((_ map or) lt!2280146 lt!2280129) (head!12130 (t!376815 s!2326))) (tail!11225 (t!376815 s!2326))))))

(assert (= (and d!1807192 c!1011055) b!5729788))

(assert (= (and d!1807192 (not c!1011055)) b!5729789))

(assert (=> d!1807192 m!6681458))

(declare-fun m!6681884 () Bool)

(assert (=> b!5729788 m!6681884))

(assert (=> b!5729789 m!6681462))

(assert (=> b!5729789 m!6681462))

(declare-fun m!6681886 () Bool)

(assert (=> b!5729789 m!6681886))

(assert (=> b!5729789 m!6681466))

(assert (=> b!5729789 m!6681886))

(assert (=> b!5729789 m!6681466))

(declare-fun m!6681888 () Bool)

(assert (=> b!5729789 m!6681888))

(assert (=> b!5728906 d!1807192))

(assert (=> b!5728886 d!1807032))

(declare-fun b!5729797 () Bool)

(declare-fun e!3522895 () Bool)

(declare-fun tp!1585993 () Bool)

(assert (=> b!5729797 (= e!3522895 tp!1585993)))

(declare-fun e!3522894 () Bool)

(declare-fun tp!1585994 () Bool)

(declare-fun b!5729796 () Bool)

(assert (=> b!5729796 (= e!3522894 (and (inv!82569 (h!69812 (t!376816 zl!343))) e!3522895 tp!1585994))))

(assert (=> b!5728893 (= tp!1585930 e!3522894)))

(assert (= b!5729796 b!5729797))

(assert (= (and b!5728893 ((_ is Cons!63364) (t!376816 zl!343))) b!5729796))

(declare-fun m!6681890 () Bool)

(assert (=> b!5729796 m!6681890))

(declare-fun b!5729802 () Bool)

(declare-fun e!3522898 () Bool)

(declare-fun tp!1585999 () Bool)

(declare-fun tp!1586000 () Bool)

(assert (=> b!5729802 (= e!3522898 (and tp!1585999 tp!1586000))))

(assert (=> b!5728882 (= tp!1585922 e!3522898)))

(assert (= (and b!5728882 ((_ is Cons!63362) (exprs!5613 setElem!38425))) b!5729802))

(declare-fun b!5729813 () Bool)

(declare-fun e!3522901 () Bool)

(assert (=> b!5729813 (= e!3522901 tp_is_empty!40711)))

(assert (=> b!5728897 (= tp!1585925 e!3522901)))

(declare-fun b!5729815 () Bool)

(declare-fun tp!1586014 () Bool)

(assert (=> b!5729815 (= e!3522901 tp!1586014)))

(declare-fun b!5729816 () Bool)

(declare-fun tp!1586013 () Bool)

(declare-fun tp!1586011 () Bool)

(assert (=> b!5729816 (= e!3522901 (and tp!1586013 tp!1586011))))

(declare-fun b!5729814 () Bool)

(declare-fun tp!1586012 () Bool)

(declare-fun tp!1586015 () Bool)

(assert (=> b!5729814 (= e!3522901 (and tp!1586012 tp!1586015))))

(assert (= (and b!5728897 ((_ is ElementMatch!15729) (reg!16058 r!7292))) b!5729813))

(assert (= (and b!5728897 ((_ is Concat!24574) (reg!16058 r!7292))) b!5729814))

(assert (= (and b!5728897 ((_ is Star!15729) (reg!16058 r!7292))) b!5729815))

(assert (= (and b!5728897 ((_ is Union!15729) (reg!16058 r!7292))) b!5729816))

(declare-fun b!5729821 () Bool)

(declare-fun e!3522904 () Bool)

(declare-fun tp!1586018 () Bool)

(assert (=> b!5729821 (= e!3522904 (and tp_is_empty!40711 tp!1586018))))

(assert (=> b!5728894 (= tp!1585921 e!3522904)))

(assert (= (and b!5728894 ((_ is Cons!63363) (t!376815 s!2326))) b!5729821))

(declare-fun b!5729822 () Bool)

(declare-fun e!3522905 () Bool)

(declare-fun tp!1586019 () Bool)

(declare-fun tp!1586020 () Bool)

(assert (=> b!5729822 (= e!3522905 (and tp!1586019 tp!1586020))))

(assert (=> b!5728909 (= tp!1585926 e!3522905)))

(assert (= (and b!5728909 ((_ is Cons!63362) (exprs!5613 (h!69812 zl!343)))) b!5729822))

(declare-fun b!5729823 () Bool)

(declare-fun e!3522906 () Bool)

(assert (=> b!5729823 (= e!3522906 tp_is_empty!40711)))

(assert (=> b!5728874 (= tp!1585923 e!3522906)))

(declare-fun b!5729825 () Bool)

(declare-fun tp!1586024 () Bool)

(assert (=> b!5729825 (= e!3522906 tp!1586024)))

(declare-fun b!5729826 () Bool)

(declare-fun tp!1586023 () Bool)

(declare-fun tp!1586021 () Bool)

(assert (=> b!5729826 (= e!3522906 (and tp!1586023 tp!1586021))))

(declare-fun b!5729824 () Bool)

(declare-fun tp!1586022 () Bool)

(declare-fun tp!1586025 () Bool)

(assert (=> b!5729824 (= e!3522906 (and tp!1586022 tp!1586025))))

(assert (= (and b!5728874 ((_ is ElementMatch!15729) (regOne!31970 r!7292))) b!5729823))

(assert (= (and b!5728874 ((_ is Concat!24574) (regOne!31970 r!7292))) b!5729824))

(assert (= (and b!5728874 ((_ is Star!15729) (regOne!31970 r!7292))) b!5729825))

(assert (= (and b!5728874 ((_ is Union!15729) (regOne!31970 r!7292))) b!5729826))

(declare-fun b!5729827 () Bool)

(declare-fun e!3522907 () Bool)

(assert (=> b!5729827 (= e!3522907 tp_is_empty!40711)))

(assert (=> b!5728874 (= tp!1585924 e!3522907)))

(declare-fun b!5729829 () Bool)

(declare-fun tp!1586029 () Bool)

(assert (=> b!5729829 (= e!3522907 tp!1586029)))

(declare-fun b!5729830 () Bool)

(declare-fun tp!1586028 () Bool)

(declare-fun tp!1586026 () Bool)

(assert (=> b!5729830 (= e!3522907 (and tp!1586028 tp!1586026))))

(declare-fun b!5729828 () Bool)

(declare-fun tp!1586027 () Bool)

(declare-fun tp!1586030 () Bool)

(assert (=> b!5729828 (= e!3522907 (and tp!1586027 tp!1586030))))

(assert (= (and b!5728874 ((_ is ElementMatch!15729) (regTwo!31970 r!7292))) b!5729827))

(assert (= (and b!5728874 ((_ is Concat!24574) (regTwo!31970 r!7292))) b!5729828))

(assert (= (and b!5728874 ((_ is Star!15729) (regTwo!31970 r!7292))) b!5729829))

(assert (= (and b!5728874 ((_ is Union!15729) (regTwo!31970 r!7292))) b!5729830))

(declare-fun b!5729831 () Bool)

(declare-fun e!3522908 () Bool)

(assert (=> b!5729831 (= e!3522908 tp_is_empty!40711)))

(assert (=> b!5728905 (= tp!1585928 e!3522908)))

(declare-fun b!5729833 () Bool)

(declare-fun tp!1586034 () Bool)

(assert (=> b!5729833 (= e!3522908 tp!1586034)))

(declare-fun b!5729834 () Bool)

(declare-fun tp!1586033 () Bool)

(declare-fun tp!1586031 () Bool)

(assert (=> b!5729834 (= e!3522908 (and tp!1586033 tp!1586031))))

(declare-fun b!5729832 () Bool)

(declare-fun tp!1586032 () Bool)

(declare-fun tp!1586035 () Bool)

(assert (=> b!5729832 (= e!3522908 (and tp!1586032 tp!1586035))))

(assert (= (and b!5728905 ((_ is ElementMatch!15729) (regOne!31971 r!7292))) b!5729831))

(assert (= (and b!5728905 ((_ is Concat!24574) (regOne!31971 r!7292))) b!5729832))

(assert (= (and b!5728905 ((_ is Star!15729) (regOne!31971 r!7292))) b!5729833))

(assert (= (and b!5728905 ((_ is Union!15729) (regOne!31971 r!7292))) b!5729834))

(declare-fun b!5729835 () Bool)

(declare-fun e!3522909 () Bool)

(assert (=> b!5729835 (= e!3522909 tp_is_empty!40711)))

(assert (=> b!5728905 (= tp!1585929 e!3522909)))

(declare-fun b!5729837 () Bool)

(declare-fun tp!1586039 () Bool)

(assert (=> b!5729837 (= e!3522909 tp!1586039)))

(declare-fun b!5729838 () Bool)

(declare-fun tp!1586038 () Bool)

(declare-fun tp!1586036 () Bool)

(assert (=> b!5729838 (= e!3522909 (and tp!1586038 tp!1586036))))

(declare-fun b!5729836 () Bool)

(declare-fun tp!1586037 () Bool)

(declare-fun tp!1586040 () Bool)

(assert (=> b!5729836 (= e!3522909 (and tp!1586037 tp!1586040))))

(assert (= (and b!5728905 ((_ is ElementMatch!15729) (regTwo!31971 r!7292))) b!5729835))

(assert (= (and b!5728905 ((_ is Concat!24574) (regTwo!31971 r!7292))) b!5729836))

(assert (= (and b!5728905 ((_ is Star!15729) (regTwo!31971 r!7292))) b!5729837))

(assert (= (and b!5728905 ((_ is Union!15729) (regTwo!31971 r!7292))) b!5729838))

(declare-fun condSetEmpty!38431 () Bool)

(assert (=> setNonEmpty!38425 (= condSetEmpty!38431 (= setRest!38425 ((as const (Array Context!10226 Bool)) false)))))

(declare-fun setRes!38431 () Bool)

(assert (=> setNonEmpty!38425 (= tp!1585927 setRes!38431)))

(declare-fun setIsEmpty!38431 () Bool)

(assert (=> setIsEmpty!38431 setRes!38431))

(declare-fun setNonEmpty!38431 () Bool)

(declare-fun e!3522912 () Bool)

(declare-fun tp!1586045 () Bool)

(declare-fun setElem!38431 () Context!10226)

(assert (=> setNonEmpty!38431 (= setRes!38431 (and tp!1586045 (inv!82569 setElem!38431) e!3522912))))

(declare-fun setRest!38431 () (InoxSet Context!10226))

(assert (=> setNonEmpty!38431 (= setRest!38425 ((_ map or) (store ((as const (Array Context!10226 Bool)) false) setElem!38431 true) setRest!38431))))

(declare-fun b!5729843 () Bool)

(declare-fun tp!1586046 () Bool)

(assert (=> b!5729843 (= e!3522912 tp!1586046)))

(assert (= (and setNonEmpty!38425 condSetEmpty!38431) setIsEmpty!38431))

(assert (= (and setNonEmpty!38425 (not condSetEmpty!38431)) setNonEmpty!38431))

(assert (= setNonEmpty!38431 b!5729843))

(declare-fun m!6681892 () Bool)

(assert (=> setNonEmpty!38431 m!6681892))

(declare-fun b_lambda!216517 () Bool)

(assert (= b_lambda!216515 (or b!5728901 b_lambda!216517)))

(declare-fun bs!1339526 () Bool)

(declare-fun d!1807194 () Bool)

(assert (= bs!1339526 (and d!1807194 b!5728901)))

(assert (=> bs!1339526 (= (dynLambda!24799 lambda!309881 lt!2280160) (derivationStepZipperUp!997 lt!2280160 (h!69811 s!2326)))))

(assert (=> bs!1339526 m!6681056))

(assert (=> d!1807172 d!1807194))

(declare-fun b_lambda!216519 () Bool)

(assert (= b_lambda!216509 (or b!5728871 b_lambda!216519)))

(declare-fun bs!1339527 () Bool)

(declare-fun d!1807196 () Bool)

(assert (= bs!1339527 (and d!1807196 b!5728871)))

(declare-fun lt!2280314 () Unit!156448)

(assert (=> bs!1339527 (= lt!2280314 (lemmaConcatPreservesForall!298 (exprs!5613 lt!2280124) lt!2280151 lambda!309883))))

(assert (=> bs!1339527 (= (dynLambda!24800 lambda!309882 lt!2280124) (Context!10227 (++!13930 (exprs!5613 lt!2280124) lt!2280151)))))

(declare-fun m!6681894 () Bool)

(assert (=> bs!1339527 m!6681894))

(declare-fun m!6681896 () Bool)

(assert (=> bs!1339527 m!6681896))

(assert (=> d!1807126 d!1807196))

(declare-fun b_lambda!216521 () Bool)

(assert (= b_lambda!216507 (or b!5728901 b_lambda!216521)))

(declare-fun bs!1339528 () Bool)

(declare-fun d!1807198 () Bool)

(assert (= bs!1339528 (and d!1807198 b!5728901)))

(assert (=> bs!1339528 (= (dynLambda!24799 lambda!309881 (h!69812 zl!343)) (derivationStepZipperUp!997 (h!69812 zl!343) (h!69811 s!2326)))))

(assert (=> bs!1339528 m!6681032))

(assert (=> d!1807082 d!1807198))

(declare-fun b_lambda!216523 () Bool)

(assert (= b_lambda!216513 (or b!5728901 b_lambda!216523)))

(declare-fun bs!1339529 () Bool)

(declare-fun d!1807200 () Bool)

(assert (= bs!1339529 (and d!1807200 b!5728901)))

(assert (=> bs!1339529 (= (dynLambda!24799 lambda!309881 lt!2280124) (derivationStepZipperUp!997 lt!2280124 (h!69811 s!2326)))))

(assert (=> bs!1339529 m!6681048))

(assert (=> d!1807164 d!1807200))

(declare-fun b_lambda!216525 () Bool)

(assert (= b_lambda!216511 (or b!5728901 b_lambda!216525)))

(declare-fun bs!1339530 () Bool)

(declare-fun d!1807202 () Bool)

(assert (= bs!1339530 (and d!1807202 b!5728901)))

(assert (=> bs!1339530 (= (dynLambda!24799 lambda!309881 lt!2280159) (derivationStepZipperUp!997 lt!2280159 (h!69811 s!2326)))))

(assert (=> bs!1339530 m!6681106))

(assert (=> d!1807158 d!1807202))

(check-sat (not b!5729834) (not b!5729520) (not b!5729787) (not b!5729644) (not d!1807066) (not d!1807120) (not bm!438111) (not bs!1339530) (not bm!438112) (not d!1807102) (not b!5729814) (not b!5729440) (not b!5729643) (not b!5729727) (not b!5729557) (not b!5729702) (not b!5729431) (not b!5729559) (not b!5729802) (not b!5729815) (not bm!438101) (not d!1807112) (not d!1807134) (not b!5729843) (not b!5729699) (not b!5729698) (not b!5729435) (not b!5729832) (not d!1807146) (not b!5729728) (not d!1807190) (not bs!1339528) (not b!5729413) (not b!5729697) (not d!1807176) (not b!5729775) tp_is_empty!40711 (not b!5729700) (not b!5729621) (not b!5729718) (not b!5729722) (not bm!438064) (not d!1807118) (not d!1807150) (not b!5729838) (not bm!438091) (not d!1807100) (not d!1807132) (not d!1807062) (not d!1807108) (not d!1807084) (not b!5729796) (not d!1807064) (not b!5729478) (not d!1807158) (not b!5729563) (not bm!438095) (not bm!438109) (not b!5729837) (not b!5729498) (not b!5729601) (not b!5729822) (not bm!438094) (not b!5729711) (not b!5729784) (not bs!1339527) (not bm!438077) (not b!5729723) (not b!5729291) (not d!1807164) (not b!5729797) (not b!5729756) (not b_lambda!216525) (not b!5729825) (not d!1807138) (not d!1807140) (not b!5729290) (not d!1807130) (not b!5729709) (not b!5729417) (not b!5729414) (not d!1807154) (not d!1807142) (not d!1807110) (not b!5729760) (not b!5729418) (not b!5729773) (not b!5729826) (not d!1807082) (not b!5729701) (not b!5729466) (not d!1807106) (not bm!438099) (not d!1807174) (not bm!438100) (not b!5729415) (not setNonEmpty!38431) (not b!5729499) (not b!5729516) (not d!1807086) (not bs!1339526) (not b!5729515) (not d!1807180) (not d!1807184) (not b!5729505) (not bm!438086) (not d!1807136) (not b!5729504) (not b!5729703) (not b!5729646) (not d!1807188) (not b!5729565) (not b!5729419) (not b!5729771) (not b!5729522) (not bm!438108) (not b!5729780) (not b!5729297) (not b!5729781) (not d!1807160) (not b!5729789) (not b!5729645) (not b!5729779) (not b_lambda!216517) (not b!5729521) (not b!5729759) (not d!1807168) (not b!5729500) (not b!5729298) (not bm!438113) (not b_lambda!216519) (not b!5729667) (not d!1807098) (not b!5729836) (not bm!438083) (not bs!1339529) (not bm!438078) (not b_lambda!216523) (not b!5729651) (not b!5729610) (not b!5729788) (not d!1807128) (not b!5729609) (not b!5729829) (not d!1807126) (not d!1807114) (not b!5729600) (not b!5729474) (not d!1807152) (not d!1807186) (not b!5729715) (not b!5729620) (not d!1807054) (not d!1807144) (not bm!438079) (not b!5729497) (not b!5729821) (not b_lambda!216521) (not b!5729830) (not d!1807032) (not b!5729729) (not b!5729519) (not d!1807172) (not b!5729816) (not bm!438093) (not d!1807166) (not d!1807124) (not b!5729436) (not b!5729518) (not b!5729555) (not d!1807122) (not b!5729564) (not b!5729833) (not b!5729828) (not b!5729647) (not bm!438063) (not b!5729411) (not d!1807104) (not b!5729523) (not d!1807192) (not b!5729824) (not bm!438092))
(check-sat)
