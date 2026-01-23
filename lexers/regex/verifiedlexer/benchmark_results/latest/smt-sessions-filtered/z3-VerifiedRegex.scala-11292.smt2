; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595652 () Bool)

(assert start!595652)

(declare-fun b!5813220 () Bool)

(assert (=> b!5813220 true))

(assert (=> b!5813220 true))

(declare-fun lambda!317696 () Int)

(declare-fun lambda!317695 () Int)

(assert (=> b!5813220 (not (= lambda!317696 lambda!317695))))

(assert (=> b!5813220 true))

(assert (=> b!5813220 true))

(declare-fun lambda!317697 () Int)

(assert (=> b!5813220 (not (= lambda!317697 lambda!317695))))

(assert (=> b!5813220 (not (= lambda!317697 lambda!317696))))

(assert (=> b!5813220 true))

(assert (=> b!5813220 true))

(declare-fun b!5813230 () Bool)

(assert (=> b!5813230 true))

(declare-fun b!5813233 () Bool)

(assert (=> b!5813233 true))

(declare-fun b!5813216 () Bool)

(declare-fun e!3568111 () Bool)

(declare-fun e!3568107 () Bool)

(assert (=> b!5813216 (= e!3568111 e!3568107)))

(declare-fun res!2451427 () Bool)

(assert (=> b!5813216 (=> res!2451427 e!3568107)))

(declare-datatypes ((C!31932 0))(
  ( (C!31933 (val!25668 Int)) )
))
(declare-datatypes ((List!63792 0))(
  ( (Nil!63668) (Cons!63668 (h!70116 C!31932) (t!377147 List!63792)) )
))
(declare-fun s!2326 () List!63792)

(declare-datatypes ((tuple2!65856 0))(
  ( (tuple2!65857 (_1!36231 List!63792) (_2!36231 List!63792)) )
))
(declare-fun lt!2300579 () tuple2!65856)

(declare-fun ++!14046 (List!63792 List!63792) List!63792)

(assert (=> b!5813216 (= res!2451427 (not (= s!2326 (++!14046 (_1!36231 lt!2300579) (_2!36231 lt!2300579)))))))

(declare-datatypes ((Option!15840 0))(
  ( (None!15839) (Some!15839 (v!51903 tuple2!65856)) )
))
(declare-fun lt!2300603 () Option!15840)

(declare-fun get!21982 (Option!15840) tuple2!65856)

(assert (=> b!5813216 (= lt!2300579 (get!21982 lt!2300603))))

(declare-fun isDefined!12543 (Option!15840) Bool)

(assert (=> b!5813216 (isDefined!12543 lt!2300603)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15831 0))(
  ( (ElementMatch!15831 (c!1030197 C!31932)) (Concat!24676 (regOne!32174 Regex!15831) (regTwo!32174 Regex!15831)) (EmptyExpr!15831) (Star!15831 (reg!16160 Regex!15831)) (EmptyLang!15831) (Union!15831 (regOne!32175 Regex!15831) (regTwo!32175 Regex!15831)) )
))
(declare-datatypes ((List!63793 0))(
  ( (Nil!63669) (Cons!63669 (h!70117 Regex!15831) (t!377148 List!63793)) )
))
(declare-datatypes ((Context!10430 0))(
  ( (Context!10431 (exprs!5715 List!63793)) )
))
(declare-fun lt!2300583 () (InoxSet Context!10430))

(declare-fun lt!2300593 () (InoxSet Context!10430))

(declare-fun findConcatSeparationZippers!148 ((InoxSet Context!10430) (InoxSet Context!10430) List!63792 List!63792 List!63792) Option!15840)

(assert (=> b!5813216 (= lt!2300603 (findConcatSeparationZippers!148 lt!2300593 lt!2300583 Nil!63668 s!2326 s!2326))))

(declare-fun lt!2300598 () Context!10430)

(declare-datatypes ((Unit!156922 0))(
  ( (Unit!156923) )
))
(declare-fun lt!2300599 () Unit!156922)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!148 ((InoxSet Context!10430) Context!10430 List!63792) Unit!156922)

(assert (=> b!5813216 (= lt!2300599 (lemmaConcatZipperMatchesStringThenFindConcatDefined!148 lt!2300593 lt!2300598 s!2326))))

(declare-fun b!5813217 () Bool)

(declare-fun res!2451424 () Bool)

(declare-fun e!3568103 () Bool)

(assert (=> b!5813217 (=> res!2451424 e!3568103)))

(get-info :version)

(assert (=> b!5813217 (= res!2451424 ((_ is Nil!63668) s!2326))))

(declare-fun b!5813218 () Bool)

(declare-fun res!2451436 () Bool)

(declare-fun e!3568108 () Bool)

(assert (=> b!5813218 (=> res!2451436 e!3568108)))

(declare-fun z!1189 () (InoxSet Context!10430))

(declare-fun matchZipper!1959 ((InoxSet Context!10430) List!63792) Bool)

(assert (=> b!5813218 (= res!2451436 (not (matchZipper!1959 z!1189 s!2326)))))

(declare-fun res!2451425 () Bool)

(declare-fun e!3568101 () Bool)

(assert (=> start!595652 (=> (not res!2451425) (not e!3568101))))

(declare-fun r!7292 () Regex!15831)

(declare-fun validRegex!7567 (Regex!15831) Bool)

(assert (=> start!595652 (= res!2451425 (validRegex!7567 r!7292))))

(assert (=> start!595652 e!3568101))

(declare-fun e!3568116 () Bool)

(assert (=> start!595652 e!3568116))

(declare-fun condSetEmpty!39160 () Bool)

(assert (=> start!595652 (= condSetEmpty!39160 (= z!1189 ((as const (Array Context!10430 Bool)) false)))))

(declare-fun setRes!39160 () Bool)

(assert (=> start!595652 setRes!39160))

(declare-fun e!3568109 () Bool)

(assert (=> start!595652 e!3568109))

(declare-fun e!3568114 () Bool)

(assert (=> start!595652 e!3568114))

(declare-fun b!5813219 () Bool)

(declare-fun e!3568102 () Bool)

(declare-fun e!3568112 () Bool)

(assert (=> b!5813219 (= e!3568102 (not e!3568112))))

(declare-fun res!2451429 () Bool)

(assert (=> b!5813219 (=> res!2451429 e!3568112)))

(declare-datatypes ((List!63794 0))(
  ( (Nil!63670) (Cons!63670 (h!70118 Context!10430) (t!377149 List!63794)) )
))
(declare-fun zl!343 () List!63794)

(assert (=> b!5813219 (= res!2451429 (not ((_ is Cons!63670) zl!343)))))

(declare-fun lt!2300580 () Bool)

(declare-fun matchRSpec!2934 (Regex!15831 List!63792) Bool)

(assert (=> b!5813219 (= lt!2300580 (matchRSpec!2934 r!7292 s!2326))))

(declare-fun matchR!8016 (Regex!15831 List!63792) Bool)

(assert (=> b!5813219 (= lt!2300580 (matchR!8016 r!7292 s!2326))))

(declare-fun lt!2300585 () Unit!156922)

(declare-fun mainMatchTheorem!2934 (Regex!15831 List!63792) Unit!156922)

(assert (=> b!5813219 (= lt!2300585 (mainMatchTheorem!2934 r!7292 s!2326))))

(assert (=> b!5813220 (= e!3568112 e!3568103)))

(declare-fun res!2451435 () Bool)

(assert (=> b!5813220 (=> res!2451435 e!3568103)))

(declare-fun e!3568110 () Bool)

(assert (=> b!5813220 (= res!2451435 (not (= lt!2300580 e!3568110)))))

(declare-fun res!2451415 () Bool)

(assert (=> b!5813220 (=> res!2451415 e!3568110)))

(declare-fun isEmpty!35587 (List!63792) Bool)

(assert (=> b!5813220 (= res!2451415 (isEmpty!35587 s!2326))))

(declare-fun Exists!2931 (Int) Bool)

(assert (=> b!5813220 (= (Exists!2931 lambda!317695) (Exists!2931 lambda!317697))))

(declare-fun lt!2300581 () Unit!156922)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1560 (Regex!15831 Regex!15831 List!63792) Unit!156922)

(assert (=> b!5813220 (= lt!2300581 (lemmaExistCutMatchRandMatchRSpecEquivalent!1560 (reg!16160 r!7292) r!7292 s!2326))))

(assert (=> b!5813220 (= (Exists!2931 lambda!317695) (Exists!2931 lambda!317696))))

(declare-fun lt!2300592 () Unit!156922)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!612 (Regex!15831 List!63792) Unit!156922)

(assert (=> b!5813220 (= lt!2300592 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!612 (reg!16160 r!7292) s!2326))))

(declare-fun lt!2300606 () Bool)

(assert (=> b!5813220 (= lt!2300606 (Exists!2931 lambda!317695))))

(declare-fun findConcatSeparation!2254 (Regex!15831 Regex!15831 List!63792 List!63792 List!63792) Option!15840)

(assert (=> b!5813220 (= lt!2300606 (isDefined!12543 (findConcatSeparation!2254 (reg!16160 r!7292) r!7292 Nil!63668 s!2326 s!2326)))))

(declare-fun lt!2300589 () Unit!156922)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2018 (Regex!15831 Regex!15831 List!63792) Unit!156922)

(assert (=> b!5813220 (= lt!2300589 (lemmaFindConcatSeparationEquivalentToExists!2018 (reg!16160 r!7292) r!7292 s!2326))))

(declare-fun b!5813221 () Bool)

(declare-fun tp!1604072 () Bool)

(declare-fun tp!1604079 () Bool)

(assert (=> b!5813221 (= e!3568116 (and tp!1604072 tp!1604079))))

(declare-fun b!5813222 () Bool)

(declare-fun res!2451432 () Bool)

(declare-fun e!3568100 () Bool)

(assert (=> b!5813222 (=> res!2451432 e!3568100)))

(declare-fun unfocusZipper!1573 (List!63794) Regex!15831)

(assert (=> b!5813222 (= res!2451432 (not (= (unfocusZipper!1573 (Cons!63670 lt!2300598 Nil!63670)) r!7292)))))

(declare-fun b!5813223 () Bool)

(declare-fun e!3568106 () Bool)

(declare-fun e!3568104 () Bool)

(assert (=> b!5813223 (= e!3568106 e!3568104)))

(declare-fun res!2451416 () Bool)

(assert (=> b!5813223 (=> res!2451416 e!3568104)))

(declare-fun lt!2300582 () (InoxSet Context!10430))

(declare-fun derivationStepZipperDown!1169 (Regex!15831 Context!10430 C!31932) (InoxSet Context!10430))

(assert (=> b!5813223 (= res!2451416 (not (= lt!2300582 (derivationStepZipperDown!1169 (reg!16160 r!7292) lt!2300598 (h!70116 s!2326)))))))

(declare-fun lt!2300602 () List!63793)

(assert (=> b!5813223 (= lt!2300598 (Context!10431 lt!2300602))))

(declare-fun lambda!317698 () Int)

(declare-fun lt!2300584 () (InoxSet Context!10430))

(declare-fun lt!2300586 () Context!10430)

(declare-fun flatMap!1438 ((InoxSet Context!10430) Int) (InoxSet Context!10430))

(declare-fun derivationStepZipperUp!1095 (Context!10430 C!31932) (InoxSet Context!10430))

(assert (=> b!5813223 (= (flatMap!1438 lt!2300584 lambda!317698) (derivationStepZipperUp!1095 lt!2300586 (h!70116 s!2326)))))

(declare-fun lt!2300604 () Unit!156922)

(declare-fun lemmaFlatMapOnSingletonSet!970 ((InoxSet Context!10430) Context!10430 Int) Unit!156922)

(assert (=> b!5813223 (= lt!2300604 (lemmaFlatMapOnSingletonSet!970 lt!2300584 lt!2300586 lambda!317698))))

(declare-fun lt!2300600 () (InoxSet Context!10430))

(assert (=> b!5813223 (= lt!2300600 (derivationStepZipperUp!1095 lt!2300586 (h!70116 s!2326)))))

(assert (=> b!5813223 (= lt!2300584 (store ((as const (Array Context!10430 Bool)) false) lt!2300586 true))))

(assert (=> b!5813223 (= lt!2300586 (Context!10431 (Cons!63669 (reg!16160 r!7292) lt!2300602)))))

(assert (=> b!5813223 (= lt!2300602 (Cons!63669 r!7292 Nil!63669))))

(declare-fun b!5813224 () Bool)

(assert (=> b!5813224 (= e!3568100 e!3568108)))

(declare-fun res!2451423 () Bool)

(assert (=> b!5813224 (=> res!2451423 e!3568108)))

(declare-fun lt!2300588 () Bool)

(assert (=> b!5813224 (= res!2451423 lt!2300588)))

(declare-fun lt!2300594 () Regex!15831)

(assert (=> b!5813224 (= lt!2300588 (matchRSpec!2934 lt!2300594 s!2326))))

(assert (=> b!5813224 (= lt!2300588 (matchR!8016 lt!2300594 s!2326))))

(declare-fun lt!2300590 () Unit!156922)

(assert (=> b!5813224 (= lt!2300590 (mainMatchTheorem!2934 lt!2300594 s!2326))))

(declare-fun b!5813225 () Bool)

(declare-fun res!2451414 () Bool)

(assert (=> b!5813225 (=> res!2451414 e!3568104)))

(declare-fun derivationStepZipper!1900 ((InoxSet Context!10430) C!31932) (InoxSet Context!10430))

(assert (=> b!5813225 (= res!2451414 (not (= (matchZipper!1959 lt!2300584 s!2326) (matchZipper!1959 (derivationStepZipper!1900 lt!2300584 (h!70116 s!2326)) (t!377147 s!2326)))))))

(declare-fun b!5813226 () Bool)

(declare-fun tp_is_empty!40915 () Bool)

(declare-fun tp!1604075 () Bool)

(assert (=> b!5813226 (= e!3568114 (and tp_is_empty!40915 tp!1604075))))

(declare-fun b!5813227 () Bool)

(assert (=> b!5813227 (= e!3568107 (matchZipper!1959 lt!2300593 (_1!36231 lt!2300579)))))

(declare-fun e!3568117 () Bool)

(declare-fun setElem!39160 () Context!10430)

(declare-fun setNonEmpty!39160 () Bool)

(declare-fun tp!1604080 () Bool)

(declare-fun inv!82824 (Context!10430) Bool)

(assert (=> setNonEmpty!39160 (= setRes!39160 (and tp!1604080 (inv!82824 setElem!39160) e!3568117))))

(declare-fun setRest!39160 () (InoxSet Context!10430))

(assert (=> setNonEmpty!39160 (= z!1189 ((_ map or) (store ((as const (Array Context!10430 Bool)) false) setElem!39160 true) setRest!39160))))

(declare-fun b!5813228 () Bool)

(declare-fun tp!1604078 () Bool)

(declare-fun tp!1604071 () Bool)

(assert (=> b!5813228 (= e!3568116 (and tp!1604078 tp!1604071))))

(declare-fun b!5813229 () Bool)

(assert (=> b!5813229 (= e!3568101 e!3568102)))

(declare-fun res!2451431 () Bool)

(assert (=> b!5813229 (=> (not res!2451431) (not e!3568102))))

(declare-fun lt!2300578 () Regex!15831)

(assert (=> b!5813229 (= res!2451431 (= r!7292 lt!2300578))))

(assert (=> b!5813229 (= lt!2300578 (unfocusZipper!1573 zl!343))))

(declare-fun e!3568115 () Bool)

(assert (=> b!5813230 (= e!3568115 e!3568106)))

(declare-fun res!2451430 () Bool)

(assert (=> b!5813230 (=> res!2451430 e!3568106)))

(declare-fun lt!2300595 () (InoxSet Context!10430))

(assert (=> b!5813230 (= res!2451430 (not (= lt!2300582 lt!2300595)))))

(assert (=> b!5813230 (= (flatMap!1438 z!1189 lambda!317698) (derivationStepZipperUp!1095 (h!70118 zl!343) (h!70116 s!2326)))))

(declare-fun lt!2300576 () Unit!156922)

(assert (=> b!5813230 (= lt!2300576 (lemmaFlatMapOnSingletonSet!970 z!1189 (h!70118 zl!343) lambda!317698))))

(declare-fun b!5813231 () Bool)

(declare-fun tp!1604077 () Bool)

(assert (=> b!5813231 (= e!3568117 tp!1604077)))

(declare-fun b!5813232 () Bool)

(assert (=> b!5813232 (= e!3568110 lt!2300606)))

(assert (=> b!5813233 (= e!3568108 e!3568111)))

(declare-fun res!2451412 () Bool)

(assert (=> b!5813233 (=> res!2451412 e!3568111)))

(declare-fun appendTo!140 ((InoxSet Context!10430) Context!10430) (InoxSet Context!10430))

(assert (=> b!5813233 (= res!2451412 (not (= (appendTo!140 lt!2300593 lt!2300598) lt!2300584)))))

(declare-fun lambda!317699 () Int)

(declare-fun map!14599 ((InoxSet Context!10430) Int) (InoxSet Context!10430))

(declare-fun ++!14047 (List!63793 List!63793) List!63793)

(assert (=> b!5813233 (= (map!14599 lt!2300593 lambda!317699) (store ((as const (Array Context!10430 Bool)) false) (Context!10431 (++!14047 (Cons!63669 (reg!16160 r!7292) Nil!63669) lt!2300602)) true))))

(declare-fun lt!2300605 () Unit!156922)

(declare-fun lambda!317700 () Int)

(declare-fun lemmaConcatPreservesForall!332 (List!63793 List!63793 Int) Unit!156922)

(assert (=> b!5813233 (= lt!2300605 (lemmaConcatPreservesForall!332 (Cons!63669 (reg!16160 r!7292) Nil!63669) lt!2300602 lambda!317700))))

(declare-fun lt!2300575 () Context!10430)

(declare-fun lt!2300601 () Unit!156922)

(declare-fun lemmaMapOnSingletonSet!158 ((InoxSet Context!10430) Context!10430 Int) Unit!156922)

(assert (=> b!5813233 (= lt!2300601 (lemmaMapOnSingletonSet!158 lt!2300593 lt!2300575 lambda!317699))))

(declare-fun b!5813234 () Bool)

(declare-fun res!2451413 () Bool)

(assert (=> b!5813234 (=> res!2451413 e!3568100)))

(assert (=> b!5813234 (= res!2451413 (not (= (unfocusZipper!1573 (Cons!63670 lt!2300575 Nil!63670)) (reg!16160 r!7292))))))

(declare-fun b!5813235 () Bool)

(declare-fun e!3568105 () Bool)

(declare-fun tp!1604073 () Bool)

(assert (=> b!5813235 (= e!3568105 tp!1604073)))

(declare-fun b!5813236 () Bool)

(declare-fun res!2451426 () Bool)

(assert (=> b!5813236 (=> (not res!2451426) (not e!3568101))))

(declare-fun toList!9615 ((InoxSet Context!10430)) List!63794)

(assert (=> b!5813236 (= res!2451426 (= (toList!9615 z!1189) zl!343))))

(declare-fun b!5813237 () Bool)

(declare-fun res!2451433 () Bool)

(assert (=> b!5813237 (=> res!2451433 e!3568112)))

(declare-fun generalisedConcat!1446 (List!63793) Regex!15831)

(assert (=> b!5813237 (= res!2451433 (not (= r!7292 (generalisedConcat!1446 (exprs!5715 (h!70118 zl!343))))))))

(declare-fun b!5813238 () Bool)

(assert (=> b!5813238 (= e!3568103 e!3568115)))

(declare-fun res!2451421 () Bool)

(assert (=> b!5813238 (=> res!2451421 e!3568115)))

(declare-fun lt!2300591 () (InoxSet Context!10430))

(assert (=> b!5813238 (= res!2451421 (not (= lt!2300591 lt!2300595)))))

(assert (=> b!5813238 (= lt!2300595 (derivationStepZipperDown!1169 r!7292 (Context!10431 Nil!63669) (h!70116 s!2326)))))

(assert (=> b!5813238 (= lt!2300591 (derivationStepZipperUp!1095 (Context!10431 (Cons!63669 r!7292 Nil!63669)) (h!70116 s!2326)))))

(assert (=> b!5813238 (= lt!2300582 (derivationStepZipper!1900 z!1189 (h!70116 s!2326)))))

(declare-fun b!5813239 () Bool)

(declare-fun res!2451418 () Bool)

(assert (=> b!5813239 (=> res!2451418 e!3568112)))

(declare-fun generalisedUnion!1694 (List!63793) Regex!15831)

(declare-fun unfocusZipperList!1259 (List!63794) List!63793)

(assert (=> b!5813239 (= res!2451418 (not (= r!7292 (generalisedUnion!1694 (unfocusZipperList!1259 zl!343)))))))

(declare-fun b!5813240 () Bool)

(declare-fun e!3568113 () Bool)

(assert (=> b!5813240 (= e!3568104 e!3568113)))

(declare-fun res!2451434 () Bool)

(assert (=> b!5813240 (=> res!2451434 e!3568113)))

(assert (=> b!5813240 (= res!2451434 (not (= (unfocusZipper!1573 (Cons!63670 lt!2300586 Nil!63670)) lt!2300594)))))

(assert (=> b!5813240 (= lt!2300594 (Concat!24676 (reg!16160 r!7292) r!7292))))

(declare-fun b!5813241 () Bool)

(declare-fun res!2451428 () Bool)

(assert (=> b!5813241 (=> res!2451428 e!3568112)))

(assert (=> b!5813241 (= res!2451428 (not ((_ is Cons!63669) (exprs!5715 (h!70118 zl!343)))))))

(declare-fun b!5813242 () Bool)

(declare-fun res!2451422 () Bool)

(assert (=> b!5813242 (=> res!2451422 e!3568112)))

(declare-fun isEmpty!35588 (List!63794) Bool)

(assert (=> b!5813242 (= res!2451422 (not (isEmpty!35588 (t!377149 zl!343))))))

(declare-fun setIsEmpty!39160 () Bool)

(assert (=> setIsEmpty!39160 setRes!39160))

(declare-fun b!5813243 () Bool)

(assert (=> b!5813243 (= e!3568116 tp_is_empty!40915)))

(declare-fun b!5813244 () Bool)

(declare-fun tp!1604074 () Bool)

(assert (=> b!5813244 (= e!3568116 tp!1604074)))

(declare-fun tp!1604076 () Bool)

(declare-fun b!5813245 () Bool)

(assert (=> b!5813245 (= e!3568109 (and (inv!82824 (h!70118 zl!343)) e!3568105 tp!1604076))))

(declare-fun b!5813246 () Bool)

(assert (=> b!5813246 (= e!3568113 e!3568100)))

(declare-fun res!2451420 () Bool)

(assert (=> b!5813246 (=> res!2451420 e!3568100)))

(assert (=> b!5813246 (= res!2451420 (not (= lt!2300582 (derivationStepZipper!1900 lt!2300583 (h!70116 s!2326)))))))

(assert (=> b!5813246 (= (flatMap!1438 lt!2300583 lambda!317698) (derivationStepZipperUp!1095 lt!2300598 (h!70116 s!2326)))))

(declare-fun lt!2300597 () Unit!156922)

(assert (=> b!5813246 (= lt!2300597 (lemmaFlatMapOnSingletonSet!970 lt!2300583 lt!2300598 lambda!317698))))

(assert (=> b!5813246 (= (flatMap!1438 lt!2300593 lambda!317698) (derivationStepZipperUp!1095 lt!2300575 (h!70116 s!2326)))))

(declare-fun lt!2300587 () Unit!156922)

(assert (=> b!5813246 (= lt!2300587 (lemmaFlatMapOnSingletonSet!970 lt!2300593 lt!2300575 lambda!317698))))

(declare-fun lt!2300577 () (InoxSet Context!10430))

(assert (=> b!5813246 (= lt!2300577 (derivationStepZipperUp!1095 lt!2300598 (h!70116 s!2326)))))

(declare-fun lt!2300596 () (InoxSet Context!10430))

(assert (=> b!5813246 (= lt!2300596 (derivationStepZipperUp!1095 lt!2300575 (h!70116 s!2326)))))

(assert (=> b!5813246 (= lt!2300583 (store ((as const (Array Context!10430 Bool)) false) lt!2300598 true))))

(assert (=> b!5813246 (= lt!2300593 (store ((as const (Array Context!10430 Bool)) false) lt!2300575 true))))

(assert (=> b!5813246 (= lt!2300575 (Context!10431 (Cons!63669 (reg!16160 r!7292) Nil!63669)))))

(declare-fun b!5813247 () Bool)

(declare-fun res!2451419 () Bool)

(assert (=> b!5813247 (=> res!2451419 e!3568104)))

(assert (=> b!5813247 (= res!2451419 (or (not (= lt!2300578 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5813248 () Bool)

(declare-fun res!2451417 () Bool)

(assert (=> b!5813248 (=> res!2451417 e!3568112)))

(assert (=> b!5813248 (= res!2451417 (or ((_ is EmptyExpr!15831) r!7292) ((_ is EmptyLang!15831) r!7292) ((_ is ElementMatch!15831) r!7292) ((_ is Union!15831) r!7292) ((_ is Concat!24676) r!7292)))))

(assert (= (and start!595652 res!2451425) b!5813236))

(assert (= (and b!5813236 res!2451426) b!5813229))

(assert (= (and b!5813229 res!2451431) b!5813219))

(assert (= (and b!5813219 (not res!2451429)) b!5813242))

(assert (= (and b!5813242 (not res!2451422)) b!5813237))

(assert (= (and b!5813237 (not res!2451433)) b!5813241))

(assert (= (and b!5813241 (not res!2451428)) b!5813239))

(assert (= (and b!5813239 (not res!2451418)) b!5813248))

(assert (= (and b!5813248 (not res!2451417)) b!5813220))

(assert (= (and b!5813220 (not res!2451415)) b!5813232))

(assert (= (and b!5813220 (not res!2451435)) b!5813217))

(assert (= (and b!5813217 (not res!2451424)) b!5813238))

(assert (= (and b!5813238 (not res!2451421)) b!5813230))

(assert (= (and b!5813230 (not res!2451430)) b!5813223))

(assert (= (and b!5813223 (not res!2451416)) b!5813225))

(assert (= (and b!5813225 (not res!2451414)) b!5813247))

(assert (= (and b!5813247 (not res!2451419)) b!5813240))

(assert (= (and b!5813240 (not res!2451434)) b!5813246))

(assert (= (and b!5813246 (not res!2451420)) b!5813234))

(assert (= (and b!5813234 (not res!2451413)) b!5813222))

(assert (= (and b!5813222 (not res!2451432)) b!5813224))

(assert (= (and b!5813224 (not res!2451423)) b!5813218))

(assert (= (and b!5813218 (not res!2451436)) b!5813233))

(assert (= (and b!5813233 (not res!2451412)) b!5813216))

(assert (= (and b!5813216 (not res!2451427)) b!5813227))

(assert (= (and start!595652 ((_ is ElementMatch!15831) r!7292)) b!5813243))

(assert (= (and start!595652 ((_ is Concat!24676) r!7292)) b!5813221))

(assert (= (and start!595652 ((_ is Star!15831) r!7292)) b!5813244))

(assert (= (and start!595652 ((_ is Union!15831) r!7292)) b!5813228))

(assert (= (and start!595652 condSetEmpty!39160) setIsEmpty!39160))

(assert (= (and start!595652 (not condSetEmpty!39160)) setNonEmpty!39160))

(assert (= setNonEmpty!39160 b!5813231))

(assert (= b!5813245 b!5813235))

(assert (= (and start!595652 ((_ is Cons!63670) zl!343)) b!5813245))

(assert (= (and start!595652 ((_ is Cons!63668) s!2326)) b!5813226))

(declare-fun m!6751226 () Bool)

(assert (=> b!5813220 m!6751226))

(declare-fun m!6751228 () Bool)

(assert (=> b!5813220 m!6751228))

(declare-fun m!6751230 () Bool)

(assert (=> b!5813220 m!6751230))

(declare-fun m!6751232 () Bool)

(assert (=> b!5813220 m!6751232))

(assert (=> b!5813220 m!6751228))

(declare-fun m!6751234 () Bool)

(assert (=> b!5813220 m!6751234))

(declare-fun m!6751236 () Bool)

(assert (=> b!5813220 m!6751236))

(declare-fun m!6751238 () Bool)

(assert (=> b!5813220 m!6751238))

(declare-fun m!6751240 () Bool)

(assert (=> b!5813220 m!6751240))

(declare-fun m!6751242 () Bool)

(assert (=> b!5813220 m!6751242))

(assert (=> b!5813220 m!6751234))

(assert (=> b!5813220 m!6751228))

(declare-fun m!6751244 () Bool)

(assert (=> b!5813222 m!6751244))

(declare-fun m!6751246 () Bool)

(assert (=> b!5813245 m!6751246))

(declare-fun m!6751248 () Bool)

(assert (=> b!5813224 m!6751248))

(declare-fun m!6751250 () Bool)

(assert (=> b!5813224 m!6751250))

(declare-fun m!6751252 () Bool)

(assert (=> b!5813224 m!6751252))

(declare-fun m!6751254 () Bool)

(assert (=> b!5813223 m!6751254))

(declare-fun m!6751256 () Bool)

(assert (=> b!5813223 m!6751256))

(declare-fun m!6751258 () Bool)

(assert (=> b!5813223 m!6751258))

(declare-fun m!6751260 () Bool)

(assert (=> b!5813223 m!6751260))

(declare-fun m!6751262 () Bool)

(assert (=> b!5813223 m!6751262))

(declare-fun m!6751264 () Bool)

(assert (=> b!5813229 m!6751264))

(declare-fun m!6751266 () Bool)

(assert (=> b!5813238 m!6751266))

(declare-fun m!6751268 () Bool)

(assert (=> b!5813238 m!6751268))

(declare-fun m!6751270 () Bool)

(assert (=> b!5813238 m!6751270))

(declare-fun m!6751272 () Bool)

(assert (=> b!5813234 m!6751272))

(declare-fun m!6751274 () Bool)

(assert (=> setNonEmpty!39160 m!6751274))

(declare-fun m!6751276 () Bool)

(assert (=> b!5813216 m!6751276))

(declare-fun m!6751278 () Bool)

(assert (=> b!5813216 m!6751278))

(declare-fun m!6751280 () Bool)

(assert (=> b!5813216 m!6751280))

(declare-fun m!6751282 () Bool)

(assert (=> b!5813216 m!6751282))

(declare-fun m!6751284 () Bool)

(assert (=> b!5813216 m!6751284))

(declare-fun m!6751286 () Bool)

(assert (=> b!5813239 m!6751286))

(assert (=> b!5813239 m!6751286))

(declare-fun m!6751288 () Bool)

(assert (=> b!5813239 m!6751288))

(declare-fun m!6751290 () Bool)

(assert (=> b!5813240 m!6751290))

(declare-fun m!6751292 () Bool)

(assert (=> b!5813219 m!6751292))

(declare-fun m!6751294 () Bool)

(assert (=> b!5813219 m!6751294))

(declare-fun m!6751296 () Bool)

(assert (=> b!5813219 m!6751296))

(declare-fun m!6751298 () Bool)

(assert (=> b!5813227 m!6751298))

(declare-fun m!6751300 () Bool)

(assert (=> b!5813218 m!6751300))

(declare-fun m!6751302 () Bool)

(assert (=> b!5813230 m!6751302))

(declare-fun m!6751304 () Bool)

(assert (=> b!5813230 m!6751304))

(declare-fun m!6751306 () Bool)

(assert (=> b!5813230 m!6751306))

(declare-fun m!6751308 () Bool)

(assert (=> start!595652 m!6751308))

(declare-fun m!6751310 () Bool)

(assert (=> b!5813236 m!6751310))

(declare-fun m!6751312 () Bool)

(assert (=> b!5813225 m!6751312))

(declare-fun m!6751314 () Bool)

(assert (=> b!5813225 m!6751314))

(assert (=> b!5813225 m!6751314))

(declare-fun m!6751316 () Bool)

(assert (=> b!5813225 m!6751316))

(declare-fun m!6751318 () Bool)

(assert (=> b!5813237 m!6751318))

(declare-fun m!6751320 () Bool)

(assert (=> b!5813242 m!6751320))

(declare-fun m!6751322 () Bool)

(assert (=> b!5813233 m!6751322))

(declare-fun m!6751324 () Bool)

(assert (=> b!5813233 m!6751324))

(declare-fun m!6751326 () Bool)

(assert (=> b!5813233 m!6751326))

(declare-fun m!6751328 () Bool)

(assert (=> b!5813233 m!6751328))

(declare-fun m!6751330 () Bool)

(assert (=> b!5813233 m!6751330))

(declare-fun m!6751332 () Bool)

(assert (=> b!5813233 m!6751332))

(declare-fun m!6751334 () Bool)

(assert (=> b!5813246 m!6751334))

(declare-fun m!6751336 () Bool)

(assert (=> b!5813246 m!6751336))

(declare-fun m!6751338 () Bool)

(assert (=> b!5813246 m!6751338))

(declare-fun m!6751340 () Bool)

(assert (=> b!5813246 m!6751340))

(declare-fun m!6751342 () Bool)

(assert (=> b!5813246 m!6751342))

(declare-fun m!6751344 () Bool)

(assert (=> b!5813246 m!6751344))

(declare-fun m!6751346 () Bool)

(assert (=> b!5813246 m!6751346))

(declare-fun m!6751348 () Bool)

(assert (=> b!5813246 m!6751348))

(declare-fun m!6751350 () Bool)

(assert (=> b!5813246 m!6751350))

(check-sat (not b!5813230) (not b!5813236) (not b!5813240) (not b!5813239) (not b!5813233) (not b!5813223) (not b!5813226) (not b!5813231) (not setNonEmpty!39160) (not b!5813244) (not b!5813229) (not b!5813227) (not b!5813234) (not b!5813242) (not b!5813216) (not b!5813246) (not b!5813228) tp_is_empty!40915 (not b!5813225) (not b!5813222) (not b!5813221) (not b!5813238) (not b!5813218) (not b!5813219) (not b!5813224) (not b!5813235) (not b!5813220) (not b!5813237) (not start!595652) (not b!5813245))
(check-sat)
(get-model)

(declare-fun d!1830539 () Bool)

(declare-fun choose!44159 (Int) Bool)

(assert (=> d!1830539 (= (Exists!2931 lambda!317696) (choose!44159 lambda!317696))))

(declare-fun bs!1372390 () Bool)

(assert (= bs!1372390 d!1830539))

(declare-fun m!6751352 () Bool)

(assert (=> bs!1372390 m!6751352))

(assert (=> b!5813220 d!1830539))

(declare-fun d!1830541 () Bool)

(assert (=> d!1830541 (= (Exists!2931 lambda!317697) (choose!44159 lambda!317697))))

(declare-fun bs!1372391 () Bool)

(assert (= bs!1372391 d!1830541))

(declare-fun m!6751354 () Bool)

(assert (=> bs!1372391 m!6751354))

(assert (=> b!5813220 d!1830541))

(declare-fun d!1830543 () Bool)

(declare-fun isEmpty!35590 (Option!15840) Bool)

(assert (=> d!1830543 (= (isDefined!12543 (findConcatSeparation!2254 (reg!16160 r!7292) r!7292 Nil!63668 s!2326 s!2326)) (not (isEmpty!35590 (findConcatSeparation!2254 (reg!16160 r!7292) r!7292 Nil!63668 s!2326 s!2326))))))

(declare-fun bs!1372392 () Bool)

(assert (= bs!1372392 d!1830543))

(assert (=> bs!1372392 m!6751234))

(declare-fun m!6751356 () Bool)

(assert (=> bs!1372392 m!6751356))

(assert (=> b!5813220 d!1830543))

(declare-fun d!1830545 () Bool)

(assert (=> d!1830545 (= (Exists!2931 lambda!317695) (choose!44159 lambda!317695))))

(declare-fun bs!1372393 () Bool)

(assert (= bs!1372393 d!1830545))

(declare-fun m!6751358 () Bool)

(assert (=> bs!1372393 m!6751358))

(assert (=> b!5813220 d!1830545))

(declare-fun bs!1372394 () Bool)

(declare-fun d!1830547 () Bool)

(assert (= bs!1372394 (and d!1830547 b!5813220)))

(declare-fun lambda!317705 () Int)

(assert (=> bs!1372394 (= lambda!317705 lambda!317695)))

(assert (=> bs!1372394 (not (= lambda!317705 lambda!317696))))

(assert (=> bs!1372394 (not (= lambda!317705 lambda!317697))))

(assert (=> d!1830547 true))

(assert (=> d!1830547 true))

(assert (=> d!1830547 true))

(declare-fun lambda!317706 () Int)

(assert (=> bs!1372394 (not (= lambda!317706 lambda!317695))))

(assert (=> bs!1372394 (not (= lambda!317706 lambda!317696))))

(assert (=> bs!1372394 (= lambda!317706 lambda!317697)))

(declare-fun bs!1372395 () Bool)

(assert (= bs!1372395 d!1830547))

(assert (=> bs!1372395 (not (= lambda!317706 lambda!317705))))

(assert (=> d!1830547 true))

(assert (=> d!1830547 true))

(assert (=> d!1830547 true))

(assert (=> d!1830547 (= (Exists!2931 lambda!317705) (Exists!2931 lambda!317706))))

(declare-fun lt!2300609 () Unit!156922)

(declare-fun choose!44160 (Regex!15831 Regex!15831 List!63792) Unit!156922)

(assert (=> d!1830547 (= lt!2300609 (choose!44160 (reg!16160 r!7292) r!7292 s!2326))))

(assert (=> d!1830547 (validRegex!7567 (reg!16160 r!7292))))

(assert (=> d!1830547 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1560 (reg!16160 r!7292) r!7292 s!2326) lt!2300609)))

(declare-fun m!6751372 () Bool)

(assert (=> bs!1372395 m!6751372))

(declare-fun m!6751374 () Bool)

(assert (=> bs!1372395 m!6751374))

(declare-fun m!6751376 () Bool)

(assert (=> bs!1372395 m!6751376))

(declare-fun m!6751378 () Bool)

(assert (=> bs!1372395 m!6751378))

(assert (=> b!5813220 d!1830547))

(declare-fun bs!1372401 () Bool)

(declare-fun d!1830553 () Bool)

(assert (= bs!1372401 (and d!1830553 b!5813220)))

(declare-fun lambda!317717 () Int)

(assert (=> bs!1372401 (not (= lambda!317717 lambda!317697))))

(declare-fun bs!1372402 () Bool)

(assert (= bs!1372402 (and d!1830553 d!1830547)))

(assert (=> bs!1372402 (not (= lambda!317717 lambda!317706))))

(assert (=> bs!1372401 (not (= lambda!317717 lambda!317696))))

(assert (=> bs!1372401 (= (= (Star!15831 (reg!16160 r!7292)) r!7292) (= lambda!317717 lambda!317695))))

(assert (=> bs!1372402 (= (= (Star!15831 (reg!16160 r!7292)) r!7292) (= lambda!317717 lambda!317705))))

(assert (=> d!1830553 true))

(assert (=> d!1830553 true))

(declare-fun lambda!317718 () Int)

(assert (=> bs!1372401 (not (= lambda!317718 lambda!317697))))

(assert (=> bs!1372402 (not (= lambda!317718 lambda!317706))))

(assert (=> bs!1372401 (= (= (Star!15831 (reg!16160 r!7292)) r!7292) (= lambda!317718 lambda!317696))))

(assert (=> bs!1372401 (not (= lambda!317718 lambda!317695))))

(declare-fun bs!1372406 () Bool)

(assert (= bs!1372406 d!1830553))

(assert (=> bs!1372406 (not (= lambda!317718 lambda!317717))))

(assert (=> bs!1372402 (not (= lambda!317718 lambda!317705))))

(assert (=> d!1830553 true))

(assert (=> d!1830553 true))

(assert (=> d!1830553 (= (Exists!2931 lambda!317717) (Exists!2931 lambda!317718))))

(declare-fun lt!2300618 () Unit!156922)

(declare-fun choose!44161 (Regex!15831 List!63792) Unit!156922)

(assert (=> d!1830553 (= lt!2300618 (choose!44161 (reg!16160 r!7292) s!2326))))

(assert (=> d!1830553 (validRegex!7567 (reg!16160 r!7292))))

(assert (=> d!1830553 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!612 (reg!16160 r!7292) s!2326) lt!2300618)))

(declare-fun m!6751414 () Bool)

(assert (=> bs!1372406 m!6751414))

(declare-fun m!6751416 () Bool)

(assert (=> bs!1372406 m!6751416))

(declare-fun m!6751418 () Bool)

(assert (=> bs!1372406 m!6751418))

(assert (=> bs!1372406 m!6751378))

(assert (=> b!5813220 d!1830553))

(declare-fun d!1830569 () Bool)

(assert (=> d!1830569 (= (isEmpty!35587 s!2326) ((_ is Nil!63668) s!2326))))

(assert (=> b!5813220 d!1830569))

(declare-fun b!5813412 () Bool)

(declare-fun lt!2300642 () Unit!156922)

(declare-fun lt!2300640 () Unit!156922)

(assert (=> b!5813412 (= lt!2300642 lt!2300640)))

(assert (=> b!5813412 (= (++!14046 (++!14046 Nil!63668 (Cons!63668 (h!70116 s!2326) Nil!63668)) (t!377147 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2148 (List!63792 C!31932 List!63792 List!63792) Unit!156922)

(assert (=> b!5813412 (= lt!2300640 (lemmaMoveElementToOtherListKeepsConcatEq!2148 Nil!63668 (h!70116 s!2326) (t!377147 s!2326) s!2326))))

(declare-fun e!3568201 () Option!15840)

(assert (=> b!5813412 (= e!3568201 (findConcatSeparation!2254 (reg!16160 r!7292) r!7292 (++!14046 Nil!63668 (Cons!63668 (h!70116 s!2326) Nil!63668)) (t!377147 s!2326) s!2326))))

(declare-fun b!5813413 () Bool)

(declare-fun e!3568202 () Option!15840)

(assert (=> b!5813413 (= e!3568202 (Some!15839 (tuple2!65857 Nil!63668 s!2326)))))

(declare-fun d!1830571 () Bool)

(declare-fun e!3568199 () Bool)

(assert (=> d!1830571 e!3568199))

(declare-fun res!2451533 () Bool)

(assert (=> d!1830571 (=> res!2451533 e!3568199)))

(declare-fun e!3568203 () Bool)

(assert (=> d!1830571 (= res!2451533 e!3568203)))

(declare-fun res!2451534 () Bool)

(assert (=> d!1830571 (=> (not res!2451534) (not e!3568203))))

(declare-fun lt!2300641 () Option!15840)

(assert (=> d!1830571 (= res!2451534 (isDefined!12543 lt!2300641))))

(assert (=> d!1830571 (= lt!2300641 e!3568202)))

(declare-fun c!1030230 () Bool)

(declare-fun e!3568200 () Bool)

(assert (=> d!1830571 (= c!1030230 e!3568200)))

(declare-fun res!2451532 () Bool)

(assert (=> d!1830571 (=> (not res!2451532) (not e!3568200))))

(assert (=> d!1830571 (= res!2451532 (matchR!8016 (reg!16160 r!7292) Nil!63668))))

(assert (=> d!1830571 (validRegex!7567 (reg!16160 r!7292))))

(assert (=> d!1830571 (= (findConcatSeparation!2254 (reg!16160 r!7292) r!7292 Nil!63668 s!2326 s!2326) lt!2300641)))

(declare-fun b!5813414 () Bool)

(assert (=> b!5813414 (= e!3568202 e!3568201)))

(declare-fun c!1030231 () Bool)

(assert (=> b!5813414 (= c!1030231 ((_ is Nil!63668) s!2326))))

(declare-fun b!5813415 () Bool)

(declare-fun res!2451530 () Bool)

(assert (=> b!5813415 (=> (not res!2451530) (not e!3568203))))

(assert (=> b!5813415 (= res!2451530 (matchR!8016 r!7292 (_2!36231 (get!21982 lt!2300641))))))

(declare-fun b!5813416 () Bool)

(assert (=> b!5813416 (= e!3568199 (not (isDefined!12543 lt!2300641)))))

(declare-fun b!5813417 () Bool)

(declare-fun res!2451531 () Bool)

(assert (=> b!5813417 (=> (not res!2451531) (not e!3568203))))

(assert (=> b!5813417 (= res!2451531 (matchR!8016 (reg!16160 r!7292) (_1!36231 (get!21982 lt!2300641))))))

(declare-fun b!5813418 () Bool)

(assert (=> b!5813418 (= e!3568200 (matchR!8016 r!7292 s!2326))))

(declare-fun b!5813419 () Bool)

(assert (=> b!5813419 (= e!3568203 (= (++!14046 (_1!36231 (get!21982 lt!2300641)) (_2!36231 (get!21982 lt!2300641))) s!2326))))

(declare-fun b!5813420 () Bool)

(assert (=> b!5813420 (= e!3568201 None!15839)))

(assert (= (and d!1830571 res!2451532) b!5813418))

(assert (= (and d!1830571 c!1030230) b!5813413))

(assert (= (and d!1830571 (not c!1030230)) b!5813414))

(assert (= (and b!5813414 c!1030231) b!5813420))

(assert (= (and b!5813414 (not c!1030231)) b!5813412))

(assert (= (and d!1830571 res!2451534) b!5813417))

(assert (= (and b!5813417 res!2451531) b!5813415))

(assert (= (and b!5813415 res!2451530) b!5813419))

(assert (= (and d!1830571 (not res!2451533)) b!5813416))

(assert (=> b!5813418 m!6751294))

(declare-fun m!6751436 () Bool)

(assert (=> d!1830571 m!6751436))

(declare-fun m!6751438 () Bool)

(assert (=> d!1830571 m!6751438))

(assert (=> d!1830571 m!6751378))

(assert (=> b!5813416 m!6751436))

(declare-fun m!6751440 () Bool)

(assert (=> b!5813415 m!6751440))

(declare-fun m!6751442 () Bool)

(assert (=> b!5813415 m!6751442))

(assert (=> b!5813417 m!6751440))

(declare-fun m!6751444 () Bool)

(assert (=> b!5813417 m!6751444))

(declare-fun m!6751446 () Bool)

(assert (=> b!5813412 m!6751446))

(assert (=> b!5813412 m!6751446))

(declare-fun m!6751448 () Bool)

(assert (=> b!5813412 m!6751448))

(declare-fun m!6751450 () Bool)

(assert (=> b!5813412 m!6751450))

(assert (=> b!5813412 m!6751446))

(declare-fun m!6751452 () Bool)

(assert (=> b!5813412 m!6751452))

(assert (=> b!5813419 m!6751440))

(declare-fun m!6751454 () Bool)

(assert (=> b!5813419 m!6751454))

(assert (=> b!5813220 d!1830571))

(declare-fun bs!1372425 () Bool)

(declare-fun d!1830581 () Bool)

(assert (= bs!1372425 (and d!1830581 b!5813220)))

(declare-fun lambda!317736 () Int)

(assert (=> bs!1372425 (not (= lambda!317736 lambda!317697))))

(declare-fun bs!1372426 () Bool)

(assert (= bs!1372426 (and d!1830581 d!1830547)))

(assert (=> bs!1372426 (not (= lambda!317736 lambda!317706))))

(declare-fun bs!1372427 () Bool)

(assert (= bs!1372427 (and d!1830581 d!1830553)))

(assert (=> bs!1372427 (not (= lambda!317736 lambda!317718))))

(assert (=> bs!1372425 (not (= lambda!317736 lambda!317696))))

(assert (=> bs!1372425 (= lambda!317736 lambda!317695)))

(assert (=> bs!1372427 (= (= r!7292 (Star!15831 (reg!16160 r!7292))) (= lambda!317736 lambda!317717))))

(assert (=> bs!1372426 (= lambda!317736 lambda!317705)))

(assert (=> d!1830581 true))

(assert (=> d!1830581 true))

(assert (=> d!1830581 true))

(assert (=> d!1830581 (= (isDefined!12543 (findConcatSeparation!2254 (reg!16160 r!7292) r!7292 Nil!63668 s!2326 s!2326)) (Exists!2931 lambda!317736))))

(declare-fun lt!2300652 () Unit!156922)

(declare-fun choose!44165 (Regex!15831 Regex!15831 List!63792) Unit!156922)

(assert (=> d!1830581 (= lt!2300652 (choose!44165 (reg!16160 r!7292) r!7292 s!2326))))

(assert (=> d!1830581 (validRegex!7567 (reg!16160 r!7292))))

(assert (=> d!1830581 (= (lemmaFindConcatSeparationEquivalentToExists!2018 (reg!16160 r!7292) r!7292 s!2326) lt!2300652)))

(declare-fun bs!1372428 () Bool)

(assert (= bs!1372428 d!1830581))

(declare-fun m!6751494 () Bool)

(assert (=> bs!1372428 m!6751494))

(declare-fun m!6751496 () Bool)

(assert (=> bs!1372428 m!6751496))

(assert (=> bs!1372428 m!6751234))

(assert (=> bs!1372428 m!6751236))

(assert (=> bs!1372428 m!6751234))

(assert (=> bs!1372428 m!6751378))

(assert (=> b!5813220 d!1830581))

(declare-fun d!1830593 () Bool)

(declare-fun lt!2300658 () Regex!15831)

(assert (=> d!1830593 (validRegex!7567 lt!2300658)))

(assert (=> d!1830593 (= lt!2300658 (generalisedUnion!1694 (unfocusZipperList!1259 (Cons!63670 lt!2300586 Nil!63670))))))

(assert (=> d!1830593 (= (unfocusZipper!1573 (Cons!63670 lt!2300586 Nil!63670)) lt!2300658)))

(declare-fun bs!1372430 () Bool)

(assert (= bs!1372430 d!1830593))

(declare-fun m!6751506 () Bool)

(assert (=> bs!1372430 m!6751506))

(declare-fun m!6751512 () Bool)

(assert (=> bs!1372430 m!6751512))

(assert (=> bs!1372430 m!6751512))

(declare-fun m!6751514 () Bool)

(assert (=> bs!1372430 m!6751514))

(assert (=> b!5813240 d!1830593))

(declare-fun bs!1372432 () Bool)

(declare-fun d!1830599 () Bool)

(assert (= bs!1372432 (and d!1830599 b!5813233)))

(declare-fun lambda!317742 () Int)

(assert (=> bs!1372432 (= lambda!317742 lambda!317700)))

(declare-fun b!5813540 () Bool)

(declare-fun e!3568278 () Bool)

(declare-fun lt!2300664 () Regex!15831)

(declare-fun head!12269 (List!63793) Regex!15831)

(assert (=> b!5813540 (= e!3568278 (= lt!2300664 (head!12269 (unfocusZipperList!1259 zl!343))))))

(declare-fun b!5813542 () Bool)

(declare-fun e!3568283 () Bool)

(declare-fun e!3568280 () Bool)

(assert (=> b!5813542 (= e!3568283 e!3568280)))

(declare-fun c!1030270 () Bool)

(declare-fun isEmpty!35592 (List!63793) Bool)

(assert (=> b!5813542 (= c!1030270 (isEmpty!35592 (unfocusZipperList!1259 zl!343)))))

(declare-fun b!5813543 () Bool)

(declare-fun isUnion!741 (Regex!15831) Bool)

(assert (=> b!5813543 (= e!3568278 (isUnion!741 lt!2300664))))

(declare-fun b!5813544 () Bool)

(declare-fun e!3568282 () Regex!15831)

(assert (=> b!5813544 (= e!3568282 (Union!15831 (h!70117 (unfocusZipperList!1259 zl!343)) (generalisedUnion!1694 (t!377148 (unfocusZipperList!1259 zl!343)))))))

(declare-fun b!5813545 () Bool)

(declare-fun e!3568279 () Regex!15831)

(assert (=> b!5813545 (= e!3568279 e!3568282)))

(declare-fun c!1030268 () Bool)

(assert (=> b!5813545 (= c!1030268 ((_ is Cons!63669) (unfocusZipperList!1259 zl!343)))))

(declare-fun b!5813546 () Bool)

(declare-fun isEmptyLang!1311 (Regex!15831) Bool)

(assert (=> b!5813546 (= e!3568280 (isEmptyLang!1311 lt!2300664))))

(declare-fun b!5813547 () Bool)

(assert (=> b!5813547 (= e!3568280 e!3568278)))

(declare-fun c!1030269 () Bool)

(declare-fun tail!11365 (List!63793) List!63793)

(assert (=> b!5813547 (= c!1030269 (isEmpty!35592 (tail!11365 (unfocusZipperList!1259 zl!343))))))

(declare-fun b!5813548 () Bool)

(assert (=> b!5813548 (= e!3568279 (h!70117 (unfocusZipperList!1259 zl!343)))))

(declare-fun b!5813549 () Bool)

(declare-fun e!3568281 () Bool)

(assert (=> b!5813549 (= e!3568281 (isEmpty!35592 (t!377148 (unfocusZipperList!1259 zl!343))))))

(declare-fun b!5813541 () Bool)

(assert (=> b!5813541 (= e!3568282 EmptyLang!15831)))

(assert (=> d!1830599 e!3568283))

(declare-fun res!2451585 () Bool)

(assert (=> d!1830599 (=> (not res!2451585) (not e!3568283))))

(assert (=> d!1830599 (= res!2451585 (validRegex!7567 lt!2300664))))

(assert (=> d!1830599 (= lt!2300664 e!3568279)))

(declare-fun c!1030267 () Bool)

(assert (=> d!1830599 (= c!1030267 e!3568281)))

(declare-fun res!2451584 () Bool)

(assert (=> d!1830599 (=> (not res!2451584) (not e!3568281))))

(assert (=> d!1830599 (= res!2451584 ((_ is Cons!63669) (unfocusZipperList!1259 zl!343)))))

(declare-fun forall!14937 (List!63793 Int) Bool)

(assert (=> d!1830599 (forall!14937 (unfocusZipperList!1259 zl!343) lambda!317742)))

(assert (=> d!1830599 (= (generalisedUnion!1694 (unfocusZipperList!1259 zl!343)) lt!2300664)))

(assert (= (and d!1830599 res!2451584) b!5813549))

(assert (= (and d!1830599 c!1030267) b!5813548))

(assert (= (and d!1830599 (not c!1030267)) b!5813545))

(assert (= (and b!5813545 c!1030268) b!5813544))

(assert (= (and b!5813545 (not c!1030268)) b!5813541))

(assert (= (and d!1830599 res!2451585) b!5813542))

(assert (= (and b!5813542 c!1030270) b!5813546))

(assert (= (and b!5813542 (not c!1030270)) b!5813547))

(assert (= (and b!5813547 c!1030269) b!5813540))

(assert (= (and b!5813547 (not c!1030269)) b!5813543))

(declare-fun m!6751542 () Bool)

(assert (=> b!5813546 m!6751542))

(declare-fun m!6751544 () Bool)

(assert (=> b!5813544 m!6751544))

(declare-fun m!6751546 () Bool)

(assert (=> b!5813543 m!6751546))

(declare-fun m!6751548 () Bool)

(assert (=> d!1830599 m!6751548))

(assert (=> d!1830599 m!6751286))

(declare-fun m!6751550 () Bool)

(assert (=> d!1830599 m!6751550))

(assert (=> b!5813547 m!6751286))

(declare-fun m!6751552 () Bool)

(assert (=> b!5813547 m!6751552))

(assert (=> b!5813547 m!6751552))

(declare-fun m!6751554 () Bool)

(assert (=> b!5813547 m!6751554))

(declare-fun m!6751556 () Bool)

(assert (=> b!5813549 m!6751556))

(assert (=> b!5813540 m!6751286))

(declare-fun m!6751558 () Bool)

(assert (=> b!5813540 m!6751558))

(assert (=> b!5813542 m!6751286))

(declare-fun m!6751560 () Bool)

(assert (=> b!5813542 m!6751560))

(assert (=> b!5813239 d!1830599))

(declare-fun bs!1372450 () Bool)

(declare-fun d!1830605 () Bool)

(assert (= bs!1372450 (and d!1830605 b!5813233)))

(declare-fun lambda!317750 () Int)

(assert (=> bs!1372450 (= lambda!317750 lambda!317700)))

(declare-fun bs!1372451 () Bool)

(assert (= bs!1372451 (and d!1830605 d!1830599)))

(assert (=> bs!1372451 (= lambda!317750 lambda!317742)))

(declare-fun lt!2300669 () List!63793)

(assert (=> d!1830605 (forall!14937 lt!2300669 lambda!317750)))

(declare-fun e!3568300 () List!63793)

(assert (=> d!1830605 (= lt!2300669 e!3568300)))

(declare-fun c!1030280 () Bool)

(assert (=> d!1830605 (= c!1030280 ((_ is Cons!63670) zl!343))))

(assert (=> d!1830605 (= (unfocusZipperList!1259 zl!343) lt!2300669)))

(declare-fun b!5813579 () Bool)

(assert (=> b!5813579 (= e!3568300 (Cons!63669 (generalisedConcat!1446 (exprs!5715 (h!70118 zl!343))) (unfocusZipperList!1259 (t!377149 zl!343))))))

(declare-fun b!5813580 () Bool)

(assert (=> b!5813580 (= e!3568300 Nil!63669)))

(assert (= (and d!1830605 c!1030280) b!5813579))

(assert (= (and d!1830605 (not c!1030280)) b!5813580))

(declare-fun m!6751578 () Bool)

(assert (=> d!1830605 m!6751578))

(assert (=> b!5813579 m!6751318))

(declare-fun m!6751580 () Bool)

(assert (=> b!5813579 m!6751580))

(assert (=> b!5813239 d!1830605))

(declare-fun bs!1372465 () Bool)

(declare-fun b!5813669 () Bool)

(assert (= bs!1372465 (and b!5813669 b!5813220)))

(declare-fun lambda!317764 () Int)

(assert (=> bs!1372465 (not (= lambda!317764 lambda!317697))))

(declare-fun bs!1372466 () Bool)

(assert (= bs!1372466 (and b!5813669 d!1830581)))

(assert (=> bs!1372466 (not (= lambda!317764 lambda!317736))))

(declare-fun bs!1372467 () Bool)

(assert (= bs!1372467 (and b!5813669 d!1830547)))

(assert (=> bs!1372467 (not (= lambda!317764 lambda!317706))))

(declare-fun bs!1372468 () Bool)

(assert (= bs!1372468 (and b!5813669 d!1830553)))

(assert (=> bs!1372468 (= (= r!7292 (Star!15831 (reg!16160 r!7292))) (= lambda!317764 lambda!317718))))

(assert (=> bs!1372465 (= lambda!317764 lambda!317696)))

(assert (=> bs!1372465 (not (= lambda!317764 lambda!317695))))

(assert (=> bs!1372468 (not (= lambda!317764 lambda!317717))))

(assert (=> bs!1372467 (not (= lambda!317764 lambda!317705))))

(assert (=> b!5813669 true))

(assert (=> b!5813669 true))

(declare-fun bs!1372469 () Bool)

(declare-fun b!5813662 () Bool)

(assert (= bs!1372469 (and b!5813662 b!5813220)))

(declare-fun lambda!317765 () Int)

(assert (=> bs!1372469 (= (and (= (regOne!32174 r!7292) (reg!16160 r!7292)) (= (regTwo!32174 r!7292) r!7292)) (= lambda!317765 lambda!317697))))

(declare-fun bs!1372470 () Bool)

(assert (= bs!1372470 (and b!5813662 d!1830581)))

(assert (=> bs!1372470 (not (= lambda!317765 lambda!317736))))

(declare-fun bs!1372471 () Bool)

(assert (= bs!1372471 (and b!5813662 b!5813669)))

(assert (=> bs!1372471 (not (= lambda!317765 lambda!317764))))

(declare-fun bs!1372472 () Bool)

(assert (= bs!1372472 (and b!5813662 d!1830547)))

(assert (=> bs!1372472 (= (and (= (regOne!32174 r!7292) (reg!16160 r!7292)) (= (regTwo!32174 r!7292) r!7292)) (= lambda!317765 lambda!317706))))

(declare-fun bs!1372473 () Bool)

(assert (= bs!1372473 (and b!5813662 d!1830553)))

(assert (=> bs!1372473 (not (= lambda!317765 lambda!317718))))

(assert (=> bs!1372469 (not (= lambda!317765 lambda!317696))))

(assert (=> bs!1372469 (not (= lambda!317765 lambda!317695))))

(assert (=> bs!1372473 (not (= lambda!317765 lambda!317717))))

(assert (=> bs!1372472 (not (= lambda!317765 lambda!317705))))

(assert (=> b!5813662 true))

(assert (=> b!5813662 true))

(declare-fun b!5813661 () Bool)

(declare-fun e!3568348 () Bool)

(declare-fun e!3568351 () Bool)

(assert (=> b!5813661 (= e!3568348 e!3568351)))

(declare-fun c!1030310 () Bool)

(assert (=> b!5813661 (= c!1030310 ((_ is Star!15831) r!7292))))

(declare-fun call!454048 () Bool)

(assert (=> b!5813662 (= e!3568351 call!454048)))

(declare-fun b!5813663 () Bool)

(declare-fun c!1030313 () Bool)

(assert (=> b!5813663 (= c!1030313 ((_ is Union!15831) r!7292))))

(declare-fun e!3568352 () Bool)

(assert (=> b!5813663 (= e!3568352 e!3568348)))

(declare-fun b!5813664 () Bool)

(assert (=> b!5813664 (= e!3568352 (= s!2326 (Cons!63668 (c!1030197 r!7292) Nil!63668)))))

(declare-fun b!5813666 () Bool)

(declare-fun res!2451623 () Bool)

(declare-fun e!3568349 () Bool)

(assert (=> b!5813666 (=> res!2451623 e!3568349)))

(declare-fun call!454047 () Bool)

(assert (=> b!5813666 (= res!2451623 call!454047)))

(assert (=> b!5813666 (= e!3568351 e!3568349)))

(declare-fun bm!454042 () Bool)

(assert (=> bm!454042 (= call!454047 (isEmpty!35587 s!2326))))

(declare-fun b!5813667 () Bool)

(declare-fun e!3568347 () Bool)

(assert (=> b!5813667 (= e!3568348 e!3568347)))

(declare-fun res!2451622 () Bool)

(assert (=> b!5813667 (= res!2451622 (matchRSpec!2934 (regOne!32175 r!7292) s!2326))))

(assert (=> b!5813667 (=> res!2451622 e!3568347)))

(declare-fun b!5813668 () Bool)

(declare-fun e!3568346 () Bool)

(assert (=> b!5813668 (= e!3568346 call!454047)))

(declare-fun bm!454043 () Bool)

(assert (=> bm!454043 (= call!454048 (Exists!2931 (ite c!1030310 lambda!317764 lambda!317765)))))

(assert (=> b!5813669 (= e!3568349 call!454048)))

(declare-fun d!1830617 () Bool)

(declare-fun c!1030311 () Bool)

(assert (=> d!1830617 (= c!1030311 ((_ is EmptyExpr!15831) r!7292))))

(assert (=> d!1830617 (= (matchRSpec!2934 r!7292 s!2326) e!3568346)))

(declare-fun b!5813665 () Bool)

(assert (=> b!5813665 (= e!3568347 (matchRSpec!2934 (regTwo!32175 r!7292) s!2326))))

(declare-fun b!5813670 () Bool)

(declare-fun c!1030312 () Bool)

(assert (=> b!5813670 (= c!1030312 ((_ is ElementMatch!15831) r!7292))))

(declare-fun e!3568350 () Bool)

(assert (=> b!5813670 (= e!3568350 e!3568352)))

(declare-fun b!5813671 () Bool)

(assert (=> b!5813671 (= e!3568346 e!3568350)))

(declare-fun res!2451621 () Bool)

(assert (=> b!5813671 (= res!2451621 (not ((_ is EmptyLang!15831) r!7292)))))

(assert (=> b!5813671 (=> (not res!2451621) (not e!3568350))))

(assert (= (and d!1830617 c!1030311) b!5813668))

(assert (= (and d!1830617 (not c!1030311)) b!5813671))

(assert (= (and b!5813671 res!2451621) b!5813670))

(assert (= (and b!5813670 c!1030312) b!5813664))

(assert (= (and b!5813670 (not c!1030312)) b!5813663))

(assert (= (and b!5813663 c!1030313) b!5813667))

(assert (= (and b!5813663 (not c!1030313)) b!5813661))

(assert (= (and b!5813667 (not res!2451622)) b!5813665))

(assert (= (and b!5813661 c!1030310) b!5813666))

(assert (= (and b!5813661 (not c!1030310)) b!5813662))

(assert (= (and b!5813666 (not res!2451623)) b!5813669))

(assert (= (or b!5813669 b!5813662) bm!454043))

(assert (= (or b!5813668 b!5813666) bm!454042))

(assert (=> bm!454042 m!6751230))

(declare-fun m!6751632 () Bool)

(assert (=> b!5813667 m!6751632))

(declare-fun m!6751634 () Bool)

(assert (=> bm!454043 m!6751634))

(declare-fun m!6751636 () Bool)

(assert (=> b!5813665 m!6751636))

(assert (=> b!5813219 d!1830617))

(declare-fun b!5813738 () Bool)

(declare-fun res!2451644 () Bool)

(declare-fun e!3568389 () Bool)

(assert (=> b!5813738 (=> res!2451644 e!3568389)))

(assert (=> b!5813738 (= res!2451644 (not ((_ is ElementMatch!15831) r!7292)))))

(declare-fun e!3568388 () Bool)

(assert (=> b!5813738 (= e!3568388 e!3568389)))

(declare-fun b!5813739 () Bool)

(declare-fun e!3568394 () Bool)

(assert (=> b!5813739 (= e!3568394 e!3568388)))

(declare-fun c!1030338 () Bool)

(assert (=> b!5813739 (= c!1030338 ((_ is EmptyLang!15831) r!7292))))

(declare-fun b!5813740 () Bool)

(declare-fun lt!2300680 () Bool)

(assert (=> b!5813740 (= e!3568388 (not lt!2300680))))

(declare-fun b!5813741 () Bool)

(declare-fun e!3568392 () Bool)

(declare-fun derivativeStep!4598 (Regex!15831 C!31932) Regex!15831)

(declare-fun head!12271 (List!63792) C!31932)

(declare-fun tail!11366 (List!63792) List!63792)

(assert (=> b!5813741 (= e!3568392 (matchR!8016 (derivativeStep!4598 r!7292 (head!12271 s!2326)) (tail!11366 s!2326)))))

(declare-fun d!1830637 () Bool)

(assert (=> d!1830637 e!3568394))

(declare-fun c!1030339 () Bool)

(assert (=> d!1830637 (= c!1030339 ((_ is EmptyExpr!15831) r!7292))))

(assert (=> d!1830637 (= lt!2300680 e!3568392)))

(declare-fun c!1030337 () Bool)

(assert (=> d!1830637 (= c!1030337 (isEmpty!35587 s!2326))))

(assert (=> d!1830637 (validRegex!7567 r!7292)))

(assert (=> d!1830637 (= (matchR!8016 r!7292 s!2326) lt!2300680)))

(declare-fun b!5813742 () Bool)

(declare-fun call!454070 () Bool)

(assert (=> b!5813742 (= e!3568394 (= lt!2300680 call!454070))))

(declare-fun b!5813743 () Bool)

(declare-fun e!3568391 () Bool)

(assert (=> b!5813743 (= e!3568391 (= (head!12271 s!2326) (c!1030197 r!7292)))))

(declare-fun b!5813744 () Bool)

(declare-fun res!2451649 () Bool)

(assert (=> b!5813744 (=> (not res!2451649) (not e!3568391))))

(assert (=> b!5813744 (= res!2451649 (not call!454070))))

(declare-fun b!5813745 () Bool)

(declare-fun nullable!5855 (Regex!15831) Bool)

(assert (=> b!5813745 (= e!3568392 (nullable!5855 r!7292))))

(declare-fun bm!454065 () Bool)

(assert (=> bm!454065 (= call!454070 (isEmpty!35587 s!2326))))

(declare-fun b!5813746 () Bool)

(declare-fun res!2451645 () Bool)

(assert (=> b!5813746 (=> res!2451645 e!3568389)))

(assert (=> b!5813746 (= res!2451645 e!3568391)))

(declare-fun res!2451647 () Bool)

(assert (=> b!5813746 (=> (not res!2451647) (not e!3568391))))

(assert (=> b!5813746 (= res!2451647 lt!2300680)))

(declare-fun b!5813747 () Bool)

(declare-fun e!3568390 () Bool)

(assert (=> b!5813747 (= e!3568389 e!3568390)))

(declare-fun res!2451651 () Bool)

(assert (=> b!5813747 (=> (not res!2451651) (not e!3568390))))

(assert (=> b!5813747 (= res!2451651 (not lt!2300680))))

(declare-fun b!5813748 () Bool)

(declare-fun e!3568393 () Bool)

(assert (=> b!5813748 (= e!3568393 (not (= (head!12271 s!2326) (c!1030197 r!7292))))))

(declare-fun b!5813749 () Bool)

(declare-fun res!2451650 () Bool)

(assert (=> b!5813749 (=> res!2451650 e!3568393)))

(assert (=> b!5813749 (= res!2451650 (not (isEmpty!35587 (tail!11366 s!2326))))))

(declare-fun b!5813750 () Bool)

(declare-fun res!2451648 () Bool)

(assert (=> b!5813750 (=> (not res!2451648) (not e!3568391))))

(assert (=> b!5813750 (= res!2451648 (isEmpty!35587 (tail!11366 s!2326)))))

(declare-fun b!5813751 () Bool)

(assert (=> b!5813751 (= e!3568390 e!3568393)))

(declare-fun res!2451646 () Bool)

(assert (=> b!5813751 (=> res!2451646 e!3568393)))

(assert (=> b!5813751 (= res!2451646 call!454070)))

(assert (= (and d!1830637 c!1030337) b!5813745))

(assert (= (and d!1830637 (not c!1030337)) b!5813741))

(assert (= (and d!1830637 c!1030339) b!5813742))

(assert (= (and d!1830637 (not c!1030339)) b!5813739))

(assert (= (and b!5813739 c!1030338) b!5813740))

(assert (= (and b!5813739 (not c!1030338)) b!5813738))

(assert (= (and b!5813738 (not res!2451644)) b!5813746))

(assert (= (and b!5813746 res!2451647) b!5813744))

(assert (= (and b!5813744 res!2451649) b!5813750))

(assert (= (and b!5813750 res!2451648) b!5813743))

(assert (= (and b!5813746 (not res!2451645)) b!5813747))

(assert (= (and b!5813747 res!2451651) b!5813751))

(assert (= (and b!5813751 (not res!2451646)) b!5813749))

(assert (= (and b!5813749 (not res!2451650)) b!5813748))

(assert (= (or b!5813742 b!5813744 b!5813751) bm!454065))

(declare-fun m!6751658 () Bool)

(assert (=> b!5813745 m!6751658))

(declare-fun m!6751660 () Bool)

(assert (=> b!5813750 m!6751660))

(assert (=> b!5813750 m!6751660))

(declare-fun m!6751662 () Bool)

(assert (=> b!5813750 m!6751662))

(declare-fun m!6751664 () Bool)

(assert (=> b!5813743 m!6751664))

(assert (=> b!5813741 m!6751664))

(assert (=> b!5813741 m!6751664))

(declare-fun m!6751666 () Bool)

(assert (=> b!5813741 m!6751666))

(assert (=> b!5813741 m!6751660))

(assert (=> b!5813741 m!6751666))

(assert (=> b!5813741 m!6751660))

(declare-fun m!6751668 () Bool)

(assert (=> b!5813741 m!6751668))

(assert (=> b!5813749 m!6751660))

(assert (=> b!5813749 m!6751660))

(assert (=> b!5813749 m!6751662))

(assert (=> b!5813748 m!6751664))

(assert (=> d!1830637 m!6751230))

(assert (=> d!1830637 m!6751308))

(assert (=> bm!454065 m!6751230))

(assert (=> b!5813219 d!1830637))

(declare-fun d!1830647 () Bool)

(assert (=> d!1830647 (= (matchR!8016 r!7292 s!2326) (matchRSpec!2934 r!7292 s!2326))))

(declare-fun lt!2300686 () Unit!156922)

(declare-fun choose!44166 (Regex!15831 List!63792) Unit!156922)

(assert (=> d!1830647 (= lt!2300686 (choose!44166 r!7292 s!2326))))

(assert (=> d!1830647 (validRegex!7567 r!7292)))

(assert (=> d!1830647 (= (mainMatchTheorem!2934 r!7292 s!2326) lt!2300686)))

(declare-fun bs!1372483 () Bool)

(assert (= bs!1372483 d!1830647))

(assert (=> bs!1372483 m!6751294))

(assert (=> bs!1372483 m!6751292))

(declare-fun m!6751678 () Bool)

(assert (=> bs!1372483 m!6751678))

(assert (=> bs!1372483 m!6751308))

(assert (=> b!5813219 d!1830647))

(declare-fun d!1830649 () Bool)

(declare-fun c!1030345 () Bool)

(assert (=> d!1830649 (= c!1030345 (isEmpty!35587 s!2326))))

(declare-fun e!3568403 () Bool)

(assert (=> d!1830649 (= (matchZipper!1959 z!1189 s!2326) e!3568403)))

(declare-fun b!5813768 () Bool)

(declare-fun nullableZipper!1738 ((InoxSet Context!10430)) Bool)

(assert (=> b!5813768 (= e!3568403 (nullableZipper!1738 z!1189))))

(declare-fun b!5813769 () Bool)

(assert (=> b!5813769 (= e!3568403 (matchZipper!1959 (derivationStepZipper!1900 z!1189 (head!12271 s!2326)) (tail!11366 s!2326)))))

(assert (= (and d!1830649 c!1030345) b!5813768))

(assert (= (and d!1830649 (not c!1030345)) b!5813769))

(assert (=> d!1830649 m!6751230))

(declare-fun m!6751688 () Bool)

(assert (=> b!5813768 m!6751688))

(assert (=> b!5813769 m!6751664))

(assert (=> b!5813769 m!6751664))

(declare-fun m!6751690 () Bool)

(assert (=> b!5813769 m!6751690))

(assert (=> b!5813769 m!6751660))

(assert (=> b!5813769 m!6751690))

(assert (=> b!5813769 m!6751660))

(declare-fun m!6751692 () Bool)

(assert (=> b!5813769 m!6751692))

(assert (=> b!5813218 d!1830649))

(declare-fun b!5813810 () Bool)

(declare-fun c!1030364 () Bool)

(declare-fun e!3568428 () Bool)

(assert (=> b!5813810 (= c!1030364 e!3568428)))

(declare-fun res!2451670 () Bool)

(assert (=> b!5813810 (=> (not res!2451670) (not e!3568428))))

(assert (=> b!5813810 (= res!2451670 ((_ is Concat!24676) r!7292))))

(declare-fun e!3568427 () (InoxSet Context!10430))

(declare-fun e!3568431 () (InoxSet Context!10430))

(assert (=> b!5813810 (= e!3568427 e!3568431)))

(declare-fun call!454085 () (InoxSet Context!10430))

(declare-fun c!1030363 () Bool)

(declare-fun call!454088 () List!63793)

(declare-fun bm!454078 () Bool)

(declare-fun c!1030362 () Bool)

(assert (=> bm!454078 (= call!454085 (derivationStepZipperDown!1169 (ite c!1030362 (regTwo!32175 r!7292) (ite c!1030364 (regTwo!32174 r!7292) (ite c!1030363 (regOne!32174 r!7292) (reg!16160 r!7292)))) (ite (or c!1030362 c!1030364) (Context!10431 Nil!63669) (Context!10431 call!454088)) (h!70116 s!2326)))))

(declare-fun b!5813811 () Bool)

(declare-fun e!3568430 () (InoxSet Context!10430))

(assert (=> b!5813811 (= e!3568430 ((as const (Array Context!10430 Bool)) false))))

(declare-fun b!5813812 () Bool)

(declare-fun call!454087 () (InoxSet Context!10430))

(assert (=> b!5813812 (= e!3568430 call!454087)))

(declare-fun bm!454079 () Bool)

(declare-fun call!454084 () List!63793)

(declare-fun $colon$colon!1809 (List!63793 Regex!15831) List!63793)

(assert (=> bm!454079 (= call!454084 ($colon$colon!1809 (exprs!5715 (Context!10431 Nil!63669)) (ite (or c!1030364 c!1030363) (regTwo!32174 r!7292) r!7292)))))

(declare-fun b!5813813 () Bool)

(declare-fun call!454086 () (InoxSet Context!10430))

(declare-fun call!454083 () (InoxSet Context!10430))

(assert (=> b!5813813 (= e!3568431 ((_ map or) call!454086 call!454083))))

(declare-fun b!5813814 () Bool)

(declare-fun e!3568426 () (InoxSet Context!10430))

(assert (=> b!5813814 (= e!3568431 e!3568426)))

(assert (=> b!5813814 (= c!1030363 ((_ is Concat!24676) r!7292))))

(declare-fun b!5813816 () Bool)

(assert (=> b!5813816 (= e!3568426 call!454087)))

(declare-fun bm!454080 () Bool)

(assert (=> bm!454080 (= call!454088 call!454084)))

(declare-fun b!5813818 () Bool)

(declare-fun c!1030360 () Bool)

(assert (=> b!5813818 (= c!1030360 ((_ is Star!15831) r!7292))))

(assert (=> b!5813818 (= e!3568426 e!3568430)))

(declare-fun b!5813820 () Bool)

(assert (=> b!5813820 (= e!3568427 ((_ map or) call!454086 call!454085))))

(declare-fun bm!454081 () Bool)

(assert (=> bm!454081 (= call!454087 call!454083)))

(declare-fun bm!454082 () Bool)

(assert (=> bm!454082 (= call!454083 call!454085)))

(declare-fun b!5813826 () Bool)

(assert (=> b!5813826 (= e!3568428 (nullable!5855 (regOne!32174 r!7292)))))

(declare-fun b!5813829 () Bool)

(declare-fun e!3568429 () (InoxSet Context!10430))

(assert (=> b!5813829 (= e!3568429 e!3568427)))

(assert (=> b!5813829 (= c!1030362 ((_ is Union!15831) r!7292))))

(declare-fun bm!454083 () Bool)

(assert (=> bm!454083 (= call!454086 (derivationStepZipperDown!1169 (ite c!1030362 (regOne!32175 r!7292) (regOne!32174 r!7292)) (ite c!1030362 (Context!10431 Nil!63669) (Context!10431 call!454084)) (h!70116 s!2326)))))

(declare-fun b!5813815 () Bool)

(assert (=> b!5813815 (= e!3568429 (store ((as const (Array Context!10430 Bool)) false) (Context!10431 Nil!63669) true))))

(declare-fun d!1830655 () Bool)

(declare-fun c!1030361 () Bool)

(assert (=> d!1830655 (= c!1030361 (and ((_ is ElementMatch!15831) r!7292) (= (c!1030197 r!7292) (h!70116 s!2326))))))

(assert (=> d!1830655 (= (derivationStepZipperDown!1169 r!7292 (Context!10431 Nil!63669) (h!70116 s!2326)) e!3568429)))

(assert (= (and d!1830655 c!1030361) b!5813815))

(assert (= (and d!1830655 (not c!1030361)) b!5813829))

(assert (= (and b!5813829 c!1030362) b!5813820))

(assert (= (and b!5813829 (not c!1030362)) b!5813810))

(assert (= (and b!5813810 res!2451670) b!5813826))

(assert (= (and b!5813810 c!1030364) b!5813813))

(assert (= (and b!5813810 (not c!1030364)) b!5813814))

(assert (= (and b!5813814 c!1030363) b!5813816))

(assert (= (and b!5813814 (not c!1030363)) b!5813818))

(assert (= (and b!5813818 c!1030360) b!5813812))

(assert (= (and b!5813818 (not c!1030360)) b!5813811))

(assert (= (or b!5813816 b!5813812) bm!454080))

(assert (= (or b!5813816 b!5813812) bm!454081))

(assert (= (or b!5813813 bm!454080) bm!454079))

(assert (= (or b!5813813 bm!454081) bm!454082))

(assert (= (or b!5813820 bm!454082) bm!454078))

(assert (= (or b!5813820 b!5813813) bm!454083))

(declare-fun m!6751694 () Bool)

(assert (=> bm!454083 m!6751694))

(declare-fun m!6751696 () Bool)

(assert (=> bm!454079 m!6751696))

(declare-fun m!6751698 () Bool)

(assert (=> b!5813826 m!6751698))

(declare-fun m!6751700 () Bool)

(assert (=> b!5813815 m!6751700))

(declare-fun m!6751708 () Bool)

(assert (=> bm!454078 m!6751708))

(assert (=> b!5813238 d!1830655))

(declare-fun bm!454086 () Bool)

(declare-fun call!454091 () (InoxSet Context!10430))

(assert (=> bm!454086 (= call!454091 (derivationStepZipperDown!1169 (h!70117 (exprs!5715 (Context!10431 (Cons!63669 r!7292 Nil!63669)))) (Context!10431 (t!377148 (exprs!5715 (Context!10431 (Cons!63669 r!7292 Nil!63669))))) (h!70116 s!2326)))))

(declare-fun b!5813840 () Bool)

(declare-fun e!3568445 () (InoxSet Context!10430))

(assert (=> b!5813840 (= e!3568445 call!454091)))

(declare-fun b!5813841 () Bool)

(declare-fun e!3568444 () (InoxSet Context!10430))

(assert (=> b!5813841 (= e!3568444 ((_ map or) call!454091 (derivationStepZipperUp!1095 (Context!10431 (t!377148 (exprs!5715 (Context!10431 (Cons!63669 r!7292 Nil!63669))))) (h!70116 s!2326))))))

(declare-fun b!5813842 () Bool)

(assert (=> b!5813842 (= e!3568444 e!3568445)))

(declare-fun c!1030371 () Bool)

(assert (=> b!5813842 (= c!1030371 ((_ is Cons!63669) (exprs!5715 (Context!10431 (Cons!63669 r!7292 Nil!63669)))))))

(declare-fun b!5813843 () Bool)

(assert (=> b!5813843 (= e!3568445 ((as const (Array Context!10430 Bool)) false))))

(declare-fun d!1830657 () Bool)

(declare-fun c!1030372 () Bool)

(declare-fun e!3568443 () Bool)

(assert (=> d!1830657 (= c!1030372 e!3568443)))

(declare-fun res!2451678 () Bool)

(assert (=> d!1830657 (=> (not res!2451678) (not e!3568443))))

(assert (=> d!1830657 (= res!2451678 ((_ is Cons!63669) (exprs!5715 (Context!10431 (Cons!63669 r!7292 Nil!63669)))))))

(assert (=> d!1830657 (= (derivationStepZipperUp!1095 (Context!10431 (Cons!63669 r!7292 Nil!63669)) (h!70116 s!2326)) e!3568444)))

(declare-fun b!5813844 () Bool)

(assert (=> b!5813844 (= e!3568443 (nullable!5855 (h!70117 (exprs!5715 (Context!10431 (Cons!63669 r!7292 Nil!63669))))))))

(assert (= (and d!1830657 res!2451678) b!5813844))

(assert (= (and d!1830657 c!1030372) b!5813841))

(assert (= (and d!1830657 (not c!1030372)) b!5813842))

(assert (= (and b!5813842 c!1030371) b!5813840))

(assert (= (and b!5813842 (not c!1030371)) b!5813843))

(assert (= (or b!5813841 b!5813840) bm!454086))

(declare-fun m!6751722 () Bool)

(assert (=> bm!454086 m!6751722))

(declare-fun m!6751724 () Bool)

(assert (=> b!5813841 m!6751724))

(declare-fun m!6751726 () Bool)

(assert (=> b!5813844 m!6751726))

(assert (=> b!5813238 d!1830657))

(declare-fun bs!1372485 () Bool)

(declare-fun d!1830663 () Bool)

(assert (= bs!1372485 (and d!1830663 b!5813230)))

(declare-fun lambda!317770 () Int)

(assert (=> bs!1372485 (= lambda!317770 lambda!317698)))

(assert (=> d!1830663 true))

(assert (=> d!1830663 (= (derivationStepZipper!1900 z!1189 (h!70116 s!2326)) (flatMap!1438 z!1189 lambda!317770))))

(declare-fun bs!1372486 () Bool)

(assert (= bs!1372486 d!1830663))

(declare-fun m!6751728 () Bool)

(assert (=> bs!1372486 m!6751728))

(assert (=> b!5813238 d!1830663))

(declare-fun bs!1372496 () Bool)

(declare-fun d!1830665 () Bool)

(assert (= bs!1372496 (and d!1830665 b!5813233)))

(declare-fun lambda!317774 () Int)

(assert (=> bs!1372496 (= lambda!317774 lambda!317700)))

(declare-fun bs!1372497 () Bool)

(assert (= bs!1372497 (and d!1830665 d!1830599)))

(assert (=> bs!1372497 (= lambda!317774 lambda!317742)))

(declare-fun bs!1372498 () Bool)

(assert (= bs!1372498 (and d!1830665 d!1830605)))

(assert (=> bs!1372498 (= lambda!317774 lambda!317750)))

(declare-fun b!5813890 () Bool)

(declare-fun e!3568473 () Regex!15831)

(assert (=> b!5813890 (= e!3568473 EmptyExpr!15831)))

(declare-fun b!5813891 () Bool)

(declare-fun e!3568474 () Regex!15831)

(assert (=> b!5813891 (= e!3568474 e!3568473)))

(declare-fun c!1030392 () Bool)

(assert (=> b!5813891 (= c!1030392 ((_ is Cons!63669) (exprs!5715 (h!70118 zl!343))))))

(declare-fun b!5813892 () Bool)

(declare-fun e!3568475 () Bool)

(declare-fun lt!2300707 () Regex!15831)

(declare-fun isEmptyExpr!1303 (Regex!15831) Bool)

(assert (=> b!5813892 (= e!3568475 (isEmptyExpr!1303 lt!2300707))))

(declare-fun e!3568476 () Bool)

(assert (=> d!1830665 e!3568476))

(declare-fun res!2451688 () Bool)

(assert (=> d!1830665 (=> (not res!2451688) (not e!3568476))))

(assert (=> d!1830665 (= res!2451688 (validRegex!7567 lt!2300707))))

(assert (=> d!1830665 (= lt!2300707 e!3568474)))

(declare-fun c!1030394 () Bool)

(declare-fun e!3568477 () Bool)

(assert (=> d!1830665 (= c!1030394 e!3568477)))

(declare-fun res!2451689 () Bool)

(assert (=> d!1830665 (=> (not res!2451689) (not e!3568477))))

(assert (=> d!1830665 (= res!2451689 ((_ is Cons!63669) (exprs!5715 (h!70118 zl!343))))))

(assert (=> d!1830665 (forall!14937 (exprs!5715 (h!70118 zl!343)) lambda!317774)))

(assert (=> d!1830665 (= (generalisedConcat!1446 (exprs!5715 (h!70118 zl!343))) lt!2300707)))

(declare-fun b!5813893 () Bool)

(declare-fun e!3568472 () Bool)

(assert (=> b!5813893 (= e!3568475 e!3568472)))

(declare-fun c!1030393 () Bool)

(assert (=> b!5813893 (= c!1030393 (isEmpty!35592 (tail!11365 (exprs!5715 (h!70118 zl!343)))))))

(declare-fun b!5813894 () Bool)

(assert (=> b!5813894 (= e!3568473 (Concat!24676 (h!70117 (exprs!5715 (h!70118 zl!343))) (generalisedConcat!1446 (t!377148 (exprs!5715 (h!70118 zl!343))))))))

(declare-fun b!5813895 () Bool)

(assert (=> b!5813895 (= e!3568476 e!3568475)))

(declare-fun c!1030395 () Bool)

(assert (=> b!5813895 (= c!1030395 (isEmpty!35592 (exprs!5715 (h!70118 zl!343))))))

(declare-fun b!5813896 () Bool)

(assert (=> b!5813896 (= e!3568472 (= lt!2300707 (head!12269 (exprs!5715 (h!70118 zl!343)))))))

(declare-fun b!5813897 () Bool)

(assert (=> b!5813897 (= e!3568474 (h!70117 (exprs!5715 (h!70118 zl!343))))))

(declare-fun b!5813898 () Bool)

(assert (=> b!5813898 (= e!3568477 (isEmpty!35592 (t!377148 (exprs!5715 (h!70118 zl!343)))))))

(declare-fun b!5813899 () Bool)

(declare-fun isConcat!826 (Regex!15831) Bool)

(assert (=> b!5813899 (= e!3568472 (isConcat!826 lt!2300707))))

(assert (= (and d!1830665 res!2451689) b!5813898))

(assert (= (and d!1830665 c!1030394) b!5813897))

(assert (= (and d!1830665 (not c!1030394)) b!5813891))

(assert (= (and b!5813891 c!1030392) b!5813894))

(assert (= (and b!5813891 (not c!1030392)) b!5813890))

(assert (= (and d!1830665 res!2451688) b!5813895))

(assert (= (and b!5813895 c!1030395) b!5813892))

(assert (= (and b!5813895 (not c!1030395)) b!5813893))

(assert (= (and b!5813893 c!1030393) b!5813896))

(assert (= (and b!5813893 (not c!1030393)) b!5813899))

(declare-fun m!6751792 () Bool)

(assert (=> b!5813894 m!6751792))

(declare-fun m!6751794 () Bool)

(assert (=> b!5813896 m!6751794))

(declare-fun m!6751796 () Bool)

(assert (=> b!5813898 m!6751796))

(declare-fun m!6751798 () Bool)

(assert (=> b!5813892 m!6751798))

(declare-fun m!6751800 () Bool)

(assert (=> b!5813899 m!6751800))

(declare-fun m!6751802 () Bool)

(assert (=> b!5813895 m!6751802))

(declare-fun m!6751804 () Bool)

(assert (=> d!1830665 m!6751804))

(declare-fun m!6751806 () Bool)

(assert (=> d!1830665 m!6751806))

(declare-fun m!6751808 () Bool)

(assert (=> b!5813893 m!6751808))

(assert (=> b!5813893 m!6751808))

(declare-fun m!6751810 () Bool)

(assert (=> b!5813893 m!6751810))

(assert (=> b!5813237 d!1830665))

(declare-fun b!5813912 () Bool)

(declare-fun res!2451694 () Bool)

(declare-fun e!3568483 () Bool)

(assert (=> b!5813912 (=> (not res!2451694) (not e!3568483))))

(declare-fun lt!2300714 () List!63792)

(declare-fun size!40117 (List!63792) Int)

(assert (=> b!5813912 (= res!2451694 (= (size!40117 lt!2300714) (+ (size!40117 (_1!36231 lt!2300579)) (size!40117 (_2!36231 lt!2300579)))))))

(declare-fun d!1830689 () Bool)

(assert (=> d!1830689 e!3568483))

(declare-fun res!2451695 () Bool)

(assert (=> d!1830689 (=> (not res!2451695) (not e!3568483))))

(declare-fun content!11673 (List!63792) (InoxSet C!31932))

(assert (=> d!1830689 (= res!2451695 (= (content!11673 lt!2300714) ((_ map or) (content!11673 (_1!36231 lt!2300579)) (content!11673 (_2!36231 lt!2300579)))))))

(declare-fun e!3568482 () List!63792)

(assert (=> d!1830689 (= lt!2300714 e!3568482)))

(declare-fun c!1030399 () Bool)

(assert (=> d!1830689 (= c!1030399 ((_ is Nil!63668) (_1!36231 lt!2300579)))))

(assert (=> d!1830689 (= (++!14046 (_1!36231 lt!2300579) (_2!36231 lt!2300579)) lt!2300714)))

(declare-fun b!5813911 () Bool)

(assert (=> b!5813911 (= e!3568482 (Cons!63668 (h!70116 (_1!36231 lt!2300579)) (++!14046 (t!377147 (_1!36231 lt!2300579)) (_2!36231 lt!2300579))))))

(declare-fun b!5813910 () Bool)

(assert (=> b!5813910 (= e!3568482 (_2!36231 lt!2300579))))

(declare-fun b!5813913 () Bool)

(assert (=> b!5813913 (= e!3568483 (or (not (= (_2!36231 lt!2300579) Nil!63668)) (= lt!2300714 (_1!36231 lt!2300579))))))

(assert (= (and d!1830689 c!1030399) b!5813910))

(assert (= (and d!1830689 (not c!1030399)) b!5813911))

(assert (= (and d!1830689 res!2451695) b!5813912))

(assert (= (and b!5813912 res!2451694) b!5813913))

(declare-fun m!6751814 () Bool)

(assert (=> b!5813912 m!6751814))

(declare-fun m!6751816 () Bool)

(assert (=> b!5813912 m!6751816))

(declare-fun m!6751818 () Bool)

(assert (=> b!5813912 m!6751818))

(declare-fun m!6751820 () Bool)

(assert (=> d!1830689 m!6751820))

(declare-fun m!6751822 () Bool)

(assert (=> d!1830689 m!6751822))

(declare-fun m!6751824 () Bool)

(assert (=> d!1830689 m!6751824))

(declare-fun m!6751826 () Bool)

(assert (=> b!5813911 m!6751826))

(assert (=> b!5813216 d!1830689))

(declare-fun d!1830693 () Bool)

(assert (=> d!1830693 (isDefined!12543 (findConcatSeparationZippers!148 lt!2300593 (store ((as const (Array Context!10430 Bool)) false) lt!2300598 true) Nil!63668 s!2326 s!2326))))

(declare-fun lt!2300721 () Unit!156922)

(declare-fun choose!44167 ((InoxSet Context!10430) Context!10430 List!63792) Unit!156922)

(assert (=> d!1830693 (= lt!2300721 (choose!44167 lt!2300593 lt!2300598 s!2326))))

(assert (=> d!1830693 (matchZipper!1959 (appendTo!140 lt!2300593 lt!2300598) s!2326)))

(assert (=> d!1830693 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!148 lt!2300593 lt!2300598 s!2326) lt!2300721)))

(declare-fun bs!1372503 () Bool)

(assert (= bs!1372503 d!1830693))

(assert (=> bs!1372503 m!6751322))

(declare-fun m!6751850 () Bool)

(assert (=> bs!1372503 m!6751850))

(declare-fun m!6751852 () Bool)

(assert (=> bs!1372503 m!6751852))

(assert (=> bs!1372503 m!6751348))

(declare-fun m!6751854 () Bool)

(assert (=> bs!1372503 m!6751854))

(assert (=> bs!1372503 m!6751322))

(assert (=> bs!1372503 m!6751348))

(assert (=> bs!1372503 m!6751854))

(declare-fun m!6751856 () Bool)

(assert (=> bs!1372503 m!6751856))

(assert (=> b!5813216 d!1830693))

(declare-fun d!1830701 () Bool)

(assert (=> d!1830701 (= (isDefined!12543 lt!2300603) (not (isEmpty!35590 lt!2300603)))))

(declare-fun bs!1372504 () Bool)

(assert (= bs!1372504 d!1830701))

(declare-fun m!6751858 () Bool)

(assert (=> bs!1372504 m!6751858))

(assert (=> b!5813216 d!1830701))

(declare-fun b!5813998 () Bool)

(declare-fun res!2451712 () Bool)

(declare-fun e!3568525 () Bool)

(assert (=> b!5813998 (=> (not res!2451712) (not e!3568525))))

(declare-fun lt!2300733 () Option!15840)

(assert (=> b!5813998 (= res!2451712 (matchZipper!1959 lt!2300593 (_1!36231 (get!21982 lt!2300733))))))

(declare-fun b!5813999 () Bool)

(declare-fun e!3568524 () Option!15840)

(declare-fun e!3568523 () Option!15840)

(assert (=> b!5813999 (= e!3568524 e!3568523)))

(declare-fun c!1030407 () Bool)

(assert (=> b!5813999 (= c!1030407 ((_ is Nil!63668) s!2326))))

(declare-fun d!1830703 () Bool)

(declare-fun e!3568526 () Bool)

(assert (=> d!1830703 e!3568526))

(declare-fun res!2451715 () Bool)

(assert (=> d!1830703 (=> res!2451715 e!3568526)))

(assert (=> d!1830703 (= res!2451715 e!3568525)))

(declare-fun res!2451716 () Bool)

(assert (=> d!1830703 (=> (not res!2451716) (not e!3568525))))

(assert (=> d!1830703 (= res!2451716 (isDefined!12543 lt!2300733))))

(assert (=> d!1830703 (= lt!2300733 e!3568524)))

(declare-fun c!1030408 () Bool)

(declare-fun e!3568527 () Bool)

(assert (=> d!1830703 (= c!1030408 e!3568527)))

(declare-fun res!2451713 () Bool)

(assert (=> d!1830703 (=> (not res!2451713) (not e!3568527))))

(assert (=> d!1830703 (= res!2451713 (matchZipper!1959 lt!2300593 Nil!63668))))

(assert (=> d!1830703 (= (++!14046 Nil!63668 s!2326) s!2326)))

(assert (=> d!1830703 (= (findConcatSeparationZippers!148 lt!2300593 lt!2300583 Nil!63668 s!2326 s!2326) lt!2300733)))

(declare-fun b!5814000 () Bool)

(assert (=> b!5814000 (= e!3568523 None!15839)))

(declare-fun b!5814001 () Bool)

(assert (=> b!5814001 (= e!3568524 (Some!15839 (tuple2!65857 Nil!63668 s!2326)))))

(declare-fun b!5814002 () Bool)

(declare-fun res!2451714 () Bool)

(assert (=> b!5814002 (=> (not res!2451714) (not e!3568525))))

(assert (=> b!5814002 (= res!2451714 (matchZipper!1959 lt!2300583 (_2!36231 (get!21982 lt!2300733))))))

(declare-fun b!5814003 () Bool)

(assert (=> b!5814003 (= e!3568527 (matchZipper!1959 lt!2300583 s!2326))))

(declare-fun b!5814004 () Bool)

(assert (=> b!5814004 (= e!3568525 (= (++!14046 (_1!36231 (get!21982 lt!2300733)) (_2!36231 (get!21982 lt!2300733))) s!2326))))

(declare-fun b!5814005 () Bool)

(assert (=> b!5814005 (= e!3568526 (not (isDefined!12543 lt!2300733)))))

(declare-fun b!5814006 () Bool)

(declare-fun lt!2300732 () Unit!156922)

(declare-fun lt!2300734 () Unit!156922)

(assert (=> b!5814006 (= lt!2300732 lt!2300734)))

(assert (=> b!5814006 (= (++!14046 (++!14046 Nil!63668 (Cons!63668 (h!70116 s!2326) Nil!63668)) (t!377147 s!2326)) s!2326)))

(assert (=> b!5814006 (= lt!2300734 (lemmaMoveElementToOtherListKeepsConcatEq!2148 Nil!63668 (h!70116 s!2326) (t!377147 s!2326) s!2326))))

(assert (=> b!5814006 (= e!3568523 (findConcatSeparationZippers!148 lt!2300593 lt!2300583 (++!14046 Nil!63668 (Cons!63668 (h!70116 s!2326) Nil!63668)) (t!377147 s!2326) s!2326))))

(assert (= (and d!1830703 res!2451713) b!5814003))

(assert (= (and d!1830703 c!1030408) b!5814001))

(assert (= (and d!1830703 (not c!1030408)) b!5813999))

(assert (= (and b!5813999 c!1030407) b!5814000))

(assert (= (and b!5813999 (not c!1030407)) b!5814006))

(assert (= (and d!1830703 res!2451716) b!5813998))

(assert (= (and b!5813998 res!2451712) b!5814002))

(assert (= (and b!5814002 res!2451714) b!5814004))

(assert (= (and d!1830703 (not res!2451715)) b!5814005))

(declare-fun m!6751874 () Bool)

(assert (=> b!5813998 m!6751874))

(declare-fun m!6751876 () Bool)

(assert (=> b!5813998 m!6751876))

(declare-fun m!6751878 () Bool)

(assert (=> d!1830703 m!6751878))

(declare-fun m!6751880 () Bool)

(assert (=> d!1830703 m!6751880))

(declare-fun m!6751882 () Bool)

(assert (=> d!1830703 m!6751882))

(assert (=> b!5814004 m!6751874))

(declare-fun m!6751884 () Bool)

(assert (=> b!5814004 m!6751884))

(assert (=> b!5814002 m!6751874))

(declare-fun m!6751886 () Bool)

(assert (=> b!5814002 m!6751886))

(assert (=> b!5814005 m!6751878))

(declare-fun m!6751888 () Bool)

(assert (=> b!5814003 m!6751888))

(assert (=> b!5814006 m!6751446))

(assert (=> b!5814006 m!6751446))

(assert (=> b!5814006 m!6751448))

(assert (=> b!5814006 m!6751450))

(assert (=> b!5814006 m!6751446))

(declare-fun m!6751890 () Bool)

(assert (=> b!5814006 m!6751890))

(assert (=> b!5813216 d!1830703))

(declare-fun d!1830715 () Bool)

(assert (=> d!1830715 (= (get!21982 lt!2300603) (v!51903 lt!2300603))))

(assert (=> b!5813216 d!1830715))

(declare-fun d!1830717 () Bool)

(declare-fun e!3568530 () Bool)

(assert (=> d!1830717 e!3568530))

(declare-fun res!2451719 () Bool)

(assert (=> d!1830717 (=> (not res!2451719) (not e!3568530))))

(declare-fun lt!2300737 () List!63794)

(declare-fun noDuplicate!1723 (List!63794) Bool)

(assert (=> d!1830717 (= res!2451719 (noDuplicate!1723 lt!2300737))))

(declare-fun choose!44168 ((InoxSet Context!10430)) List!63794)

(assert (=> d!1830717 (= lt!2300737 (choose!44168 z!1189))))

(assert (=> d!1830717 (= (toList!9615 z!1189) lt!2300737)))

(declare-fun b!5814009 () Bool)

(declare-fun content!11674 (List!63794) (InoxSet Context!10430))

(assert (=> b!5814009 (= e!3568530 (= (content!11674 lt!2300737) z!1189))))

(assert (= (and d!1830717 res!2451719) b!5814009))

(declare-fun m!6751892 () Bool)

(assert (=> d!1830717 m!6751892))

(declare-fun m!6751894 () Bool)

(assert (=> d!1830717 m!6751894))

(declare-fun m!6751896 () Bool)

(assert (=> b!5814009 m!6751896))

(assert (=> b!5813236 d!1830717))

(declare-fun d!1830719 () Bool)

(declare-fun lt!2300738 () Regex!15831)

(assert (=> d!1830719 (validRegex!7567 lt!2300738)))

(assert (=> d!1830719 (= lt!2300738 (generalisedUnion!1694 (unfocusZipperList!1259 (Cons!63670 lt!2300575 Nil!63670))))))

(assert (=> d!1830719 (= (unfocusZipper!1573 (Cons!63670 lt!2300575 Nil!63670)) lt!2300738)))

(declare-fun bs!1372511 () Bool)

(assert (= bs!1372511 d!1830719))

(declare-fun m!6751898 () Bool)

(assert (=> bs!1372511 m!6751898))

(declare-fun m!6751900 () Bool)

(assert (=> bs!1372511 m!6751900))

(assert (=> bs!1372511 m!6751900))

(declare-fun m!6751902 () Bool)

(assert (=> bs!1372511 m!6751902))

(assert (=> b!5813234 d!1830719))

(declare-fun d!1830721 () Bool)

(assert (=> d!1830721 (forall!14937 (++!14047 (Cons!63669 (reg!16160 r!7292) Nil!63669) lt!2300602) lambda!317700)))

(declare-fun lt!2300741 () Unit!156922)

(declare-fun choose!44169 (List!63793 List!63793 Int) Unit!156922)

(assert (=> d!1830721 (= lt!2300741 (choose!44169 (Cons!63669 (reg!16160 r!7292) Nil!63669) lt!2300602 lambda!317700))))

(assert (=> d!1830721 (forall!14937 (Cons!63669 (reg!16160 r!7292) Nil!63669) lambda!317700)))

(assert (=> d!1830721 (= (lemmaConcatPreservesForall!332 (Cons!63669 (reg!16160 r!7292) Nil!63669) lt!2300602 lambda!317700) lt!2300741)))

(declare-fun bs!1372512 () Bool)

(assert (= bs!1372512 d!1830721))

(assert (=> bs!1372512 m!6751332))

(assert (=> bs!1372512 m!6751332))

(declare-fun m!6751904 () Bool)

(assert (=> bs!1372512 m!6751904))

(declare-fun m!6751906 () Bool)

(assert (=> bs!1372512 m!6751906))

(declare-fun m!6751908 () Bool)

(assert (=> bs!1372512 m!6751908))

(assert (=> b!5813233 d!1830721))

(declare-fun b!5814018 () Bool)

(declare-fun e!3568536 () List!63793)

(assert (=> b!5814018 (= e!3568536 lt!2300602)))

(declare-fun lt!2300744 () List!63793)

(declare-fun b!5814021 () Bool)

(declare-fun e!3568535 () Bool)

(assert (=> b!5814021 (= e!3568535 (or (not (= lt!2300602 Nil!63669)) (= lt!2300744 (Cons!63669 (reg!16160 r!7292) Nil!63669))))))

(declare-fun d!1830723 () Bool)

(assert (=> d!1830723 e!3568535))

(declare-fun res!2451724 () Bool)

(assert (=> d!1830723 (=> (not res!2451724) (not e!3568535))))

(declare-fun content!11675 (List!63793) (InoxSet Regex!15831))

(assert (=> d!1830723 (= res!2451724 (= (content!11675 lt!2300744) ((_ map or) (content!11675 (Cons!63669 (reg!16160 r!7292) Nil!63669)) (content!11675 lt!2300602))))))

(assert (=> d!1830723 (= lt!2300744 e!3568536)))

(declare-fun c!1030411 () Bool)

(assert (=> d!1830723 (= c!1030411 ((_ is Nil!63669) (Cons!63669 (reg!16160 r!7292) Nil!63669)))))

(assert (=> d!1830723 (= (++!14047 (Cons!63669 (reg!16160 r!7292) Nil!63669) lt!2300602) lt!2300744)))

(declare-fun b!5814019 () Bool)

(assert (=> b!5814019 (= e!3568536 (Cons!63669 (h!70117 (Cons!63669 (reg!16160 r!7292) Nil!63669)) (++!14047 (t!377148 (Cons!63669 (reg!16160 r!7292) Nil!63669)) lt!2300602)))))

(declare-fun b!5814020 () Bool)

(declare-fun res!2451725 () Bool)

(assert (=> b!5814020 (=> (not res!2451725) (not e!3568535))))

(declare-fun size!40118 (List!63793) Int)

(assert (=> b!5814020 (= res!2451725 (= (size!40118 lt!2300744) (+ (size!40118 (Cons!63669 (reg!16160 r!7292) Nil!63669)) (size!40118 lt!2300602))))))

(assert (= (and d!1830723 c!1030411) b!5814018))

(assert (= (and d!1830723 (not c!1030411)) b!5814019))

(assert (= (and d!1830723 res!2451724) b!5814020))

(assert (= (and b!5814020 res!2451725) b!5814021))

(declare-fun m!6751910 () Bool)

(assert (=> d!1830723 m!6751910))

(declare-fun m!6751912 () Bool)

(assert (=> d!1830723 m!6751912))

(declare-fun m!6751914 () Bool)

(assert (=> d!1830723 m!6751914))

(declare-fun m!6751916 () Bool)

(assert (=> b!5814019 m!6751916))

(declare-fun m!6751918 () Bool)

(assert (=> b!5814020 m!6751918))

(declare-fun m!6751920 () Bool)

(assert (=> b!5814020 m!6751920))

(declare-fun m!6751922 () Bool)

(assert (=> b!5814020 m!6751922))

(assert (=> b!5813233 d!1830723))

(declare-fun bs!1372513 () Bool)

(declare-fun d!1830725 () Bool)

(assert (= bs!1372513 (and d!1830725 b!5813233)))

(declare-fun lambda!317784 () Int)

(assert (=> bs!1372513 (= (= (exprs!5715 lt!2300598) lt!2300602) (= lambda!317784 lambda!317699))))

(assert (=> d!1830725 true))

(assert (=> d!1830725 (= (appendTo!140 lt!2300593 lt!2300598) (map!14599 lt!2300593 lambda!317784))))

(declare-fun bs!1372514 () Bool)

(assert (= bs!1372514 d!1830725))

(declare-fun m!6751924 () Bool)

(assert (=> bs!1372514 m!6751924))

(assert (=> b!5813233 d!1830725))

(declare-fun d!1830727 () Bool)

(declare-fun choose!44170 ((InoxSet Context!10430) Int) (InoxSet Context!10430))

(assert (=> d!1830727 (= (map!14599 lt!2300593 lambda!317699) (choose!44170 lt!2300593 lambda!317699))))

(declare-fun bs!1372515 () Bool)

(assert (= bs!1372515 d!1830727))

(declare-fun m!6751926 () Bool)

(assert (=> bs!1372515 m!6751926))

(assert (=> b!5813233 d!1830727))

(declare-fun d!1830729 () Bool)

(declare-fun dynLambda!24930 (Int Context!10430) Context!10430)

(assert (=> d!1830729 (= (map!14599 lt!2300593 lambda!317699) (store ((as const (Array Context!10430 Bool)) false) (dynLambda!24930 lambda!317699 lt!2300575) true))))

(declare-fun lt!2300749 () Unit!156922)

(declare-fun choose!44171 ((InoxSet Context!10430) Context!10430 Int) Unit!156922)

(assert (=> d!1830729 (= lt!2300749 (choose!44171 lt!2300593 lt!2300575 lambda!317699))))

(assert (=> d!1830729 (= lt!2300593 (store ((as const (Array Context!10430 Bool)) false) lt!2300575 true))))

(assert (=> d!1830729 (= (lemmaMapOnSingletonSet!158 lt!2300593 lt!2300575 lambda!317699) lt!2300749)))

(declare-fun b_lambda!219177 () Bool)

(assert (=> (not b_lambda!219177) (not d!1830729)))

(declare-fun bs!1372516 () Bool)

(assert (= bs!1372516 d!1830729))

(declare-fun m!6751928 () Bool)

(assert (=> bs!1372516 m!6751928))

(assert (=> bs!1372516 m!6751338))

(declare-fun m!6751930 () Bool)

(assert (=> bs!1372516 m!6751930))

(declare-fun m!6751932 () Bool)

(assert (=> bs!1372516 m!6751932))

(assert (=> bs!1372516 m!6751324))

(assert (=> bs!1372516 m!6751930))

(assert (=> b!5813233 d!1830729))

(declare-fun d!1830731 () Bool)

(declare-fun choose!44172 ((InoxSet Context!10430) Int) (InoxSet Context!10430))

(assert (=> d!1830731 (= (flatMap!1438 z!1189 lambda!317698) (choose!44172 z!1189 lambda!317698))))

(declare-fun bs!1372517 () Bool)

(assert (= bs!1372517 d!1830731))

(declare-fun m!6751934 () Bool)

(assert (=> bs!1372517 m!6751934))

(assert (=> b!5813230 d!1830731))

(declare-fun bm!454094 () Bool)

(declare-fun call!454099 () (InoxSet Context!10430))

(assert (=> bm!454094 (= call!454099 (derivationStepZipperDown!1169 (h!70117 (exprs!5715 (h!70118 zl!343))) (Context!10431 (t!377148 (exprs!5715 (h!70118 zl!343)))) (h!70116 s!2326)))))

(declare-fun b!5814024 () Bool)

(declare-fun e!3568539 () (InoxSet Context!10430))

(assert (=> b!5814024 (= e!3568539 call!454099)))

(declare-fun b!5814025 () Bool)

(declare-fun e!3568538 () (InoxSet Context!10430))

(assert (=> b!5814025 (= e!3568538 ((_ map or) call!454099 (derivationStepZipperUp!1095 (Context!10431 (t!377148 (exprs!5715 (h!70118 zl!343)))) (h!70116 s!2326))))))

(declare-fun b!5814026 () Bool)

(assert (=> b!5814026 (= e!3568538 e!3568539)))

(declare-fun c!1030413 () Bool)

(assert (=> b!5814026 (= c!1030413 ((_ is Cons!63669) (exprs!5715 (h!70118 zl!343))))))

(declare-fun b!5814027 () Bool)

(assert (=> b!5814027 (= e!3568539 ((as const (Array Context!10430 Bool)) false))))

(declare-fun d!1830733 () Bool)

(declare-fun c!1030414 () Bool)

(declare-fun e!3568537 () Bool)

(assert (=> d!1830733 (= c!1030414 e!3568537)))

(declare-fun res!2451726 () Bool)

(assert (=> d!1830733 (=> (not res!2451726) (not e!3568537))))

(assert (=> d!1830733 (= res!2451726 ((_ is Cons!63669) (exprs!5715 (h!70118 zl!343))))))

(assert (=> d!1830733 (= (derivationStepZipperUp!1095 (h!70118 zl!343) (h!70116 s!2326)) e!3568538)))

(declare-fun b!5814028 () Bool)

(assert (=> b!5814028 (= e!3568537 (nullable!5855 (h!70117 (exprs!5715 (h!70118 zl!343)))))))

(assert (= (and d!1830733 res!2451726) b!5814028))

(assert (= (and d!1830733 c!1030414) b!5814025))

(assert (= (and d!1830733 (not c!1030414)) b!5814026))

(assert (= (and b!5814026 c!1030413) b!5814024))

(assert (= (and b!5814026 (not c!1030413)) b!5814027))

(assert (= (or b!5814025 b!5814024) bm!454094))

(declare-fun m!6751936 () Bool)

(assert (=> bm!454094 m!6751936))

(declare-fun m!6751938 () Bool)

(assert (=> b!5814025 m!6751938))

(declare-fun m!6751940 () Bool)

(assert (=> b!5814028 m!6751940))

(assert (=> b!5813230 d!1830733))

(declare-fun d!1830735 () Bool)

(declare-fun dynLambda!24931 (Int Context!10430) (InoxSet Context!10430))

(assert (=> d!1830735 (= (flatMap!1438 z!1189 lambda!317698) (dynLambda!24931 lambda!317698 (h!70118 zl!343)))))

(declare-fun lt!2300752 () Unit!156922)

(declare-fun choose!44173 ((InoxSet Context!10430) Context!10430 Int) Unit!156922)

(assert (=> d!1830735 (= lt!2300752 (choose!44173 z!1189 (h!70118 zl!343) lambda!317698))))

(assert (=> d!1830735 (= z!1189 (store ((as const (Array Context!10430 Bool)) false) (h!70118 zl!343) true))))

(assert (=> d!1830735 (= (lemmaFlatMapOnSingletonSet!970 z!1189 (h!70118 zl!343) lambda!317698) lt!2300752)))

(declare-fun b_lambda!219179 () Bool)

(assert (=> (not b_lambda!219179) (not d!1830735)))

(declare-fun bs!1372518 () Bool)

(assert (= bs!1372518 d!1830735))

(assert (=> bs!1372518 m!6751302))

(declare-fun m!6751942 () Bool)

(assert (=> bs!1372518 m!6751942))

(declare-fun m!6751944 () Bool)

(assert (=> bs!1372518 m!6751944))

(declare-fun m!6751946 () Bool)

(assert (=> bs!1372518 m!6751946))

(assert (=> b!5813230 d!1830735))

(declare-fun d!1830737 () Bool)

(declare-fun lt!2300753 () Regex!15831)

(assert (=> d!1830737 (validRegex!7567 lt!2300753)))

(assert (=> d!1830737 (= lt!2300753 (generalisedUnion!1694 (unfocusZipperList!1259 zl!343)))))

(assert (=> d!1830737 (= (unfocusZipper!1573 zl!343) lt!2300753)))

(declare-fun bs!1372519 () Bool)

(assert (= bs!1372519 d!1830737))

(declare-fun m!6751948 () Bool)

(assert (=> bs!1372519 m!6751948))

(assert (=> bs!1372519 m!6751286))

(assert (=> bs!1372519 m!6751286))

(assert (=> bs!1372519 m!6751288))

(assert (=> b!5813229 d!1830737))

(declare-fun bs!1372520 () Bool)

(declare-fun d!1830739 () Bool)

(assert (= bs!1372520 (and d!1830739 b!5813233)))

(declare-fun lambda!317787 () Int)

(assert (=> bs!1372520 (= lambda!317787 lambda!317700)))

(declare-fun bs!1372521 () Bool)

(assert (= bs!1372521 (and d!1830739 d!1830599)))

(assert (=> bs!1372521 (= lambda!317787 lambda!317742)))

(declare-fun bs!1372522 () Bool)

(assert (= bs!1372522 (and d!1830739 d!1830605)))

(assert (=> bs!1372522 (= lambda!317787 lambda!317750)))

(declare-fun bs!1372523 () Bool)

(assert (= bs!1372523 (and d!1830739 d!1830665)))

(assert (=> bs!1372523 (= lambda!317787 lambda!317774)))

(assert (=> d!1830739 (= (inv!82824 setElem!39160) (forall!14937 (exprs!5715 setElem!39160) lambda!317787))))

(declare-fun bs!1372524 () Bool)

(assert (= bs!1372524 d!1830739))

(declare-fun m!6751950 () Bool)

(assert (=> bs!1372524 m!6751950))

(assert (=> setNonEmpty!39160 d!1830739))

(declare-fun d!1830741 () Bool)

(assert (=> d!1830741 (= (flatMap!1438 lt!2300593 lambda!317698) (dynLambda!24931 lambda!317698 lt!2300575))))

(declare-fun lt!2300754 () Unit!156922)

(assert (=> d!1830741 (= lt!2300754 (choose!44173 lt!2300593 lt!2300575 lambda!317698))))

(assert (=> d!1830741 (= lt!2300593 (store ((as const (Array Context!10430 Bool)) false) lt!2300575 true))))

(assert (=> d!1830741 (= (lemmaFlatMapOnSingletonSet!970 lt!2300593 lt!2300575 lambda!317698) lt!2300754)))

(declare-fun b_lambda!219181 () Bool)

(assert (=> (not b_lambda!219181) (not d!1830741)))

(declare-fun bs!1372525 () Bool)

(assert (= bs!1372525 d!1830741))

(assert (=> bs!1372525 m!6751342))

(declare-fun m!6751952 () Bool)

(assert (=> bs!1372525 m!6751952))

(declare-fun m!6751954 () Bool)

(assert (=> bs!1372525 m!6751954))

(assert (=> bs!1372525 m!6751338))

(assert (=> b!5813246 d!1830741))

(declare-fun d!1830743 () Bool)

(assert (=> d!1830743 (= (flatMap!1438 lt!2300583 lambda!317698) (choose!44172 lt!2300583 lambda!317698))))

(declare-fun bs!1372526 () Bool)

(assert (= bs!1372526 d!1830743))

(declare-fun m!6751956 () Bool)

(assert (=> bs!1372526 m!6751956))

(assert (=> b!5813246 d!1830743))

(declare-fun bm!454095 () Bool)

(declare-fun call!454100 () (InoxSet Context!10430))

(assert (=> bm!454095 (= call!454100 (derivationStepZipperDown!1169 (h!70117 (exprs!5715 lt!2300598)) (Context!10431 (t!377148 (exprs!5715 lt!2300598))) (h!70116 s!2326)))))

(declare-fun b!5814029 () Bool)

(declare-fun e!3568542 () (InoxSet Context!10430))

(assert (=> b!5814029 (= e!3568542 call!454100)))

(declare-fun b!5814030 () Bool)

(declare-fun e!3568541 () (InoxSet Context!10430))

(assert (=> b!5814030 (= e!3568541 ((_ map or) call!454100 (derivationStepZipperUp!1095 (Context!10431 (t!377148 (exprs!5715 lt!2300598))) (h!70116 s!2326))))))

(declare-fun b!5814031 () Bool)

(assert (=> b!5814031 (= e!3568541 e!3568542)))

(declare-fun c!1030415 () Bool)

(assert (=> b!5814031 (= c!1030415 ((_ is Cons!63669) (exprs!5715 lt!2300598)))))

(declare-fun b!5814032 () Bool)

(assert (=> b!5814032 (= e!3568542 ((as const (Array Context!10430 Bool)) false))))

(declare-fun d!1830745 () Bool)

(declare-fun c!1030416 () Bool)

(declare-fun e!3568540 () Bool)

(assert (=> d!1830745 (= c!1030416 e!3568540)))

(declare-fun res!2451727 () Bool)

(assert (=> d!1830745 (=> (not res!2451727) (not e!3568540))))

(assert (=> d!1830745 (= res!2451727 ((_ is Cons!63669) (exprs!5715 lt!2300598)))))

(assert (=> d!1830745 (= (derivationStepZipperUp!1095 lt!2300598 (h!70116 s!2326)) e!3568541)))

(declare-fun b!5814033 () Bool)

(assert (=> b!5814033 (= e!3568540 (nullable!5855 (h!70117 (exprs!5715 lt!2300598))))))

(assert (= (and d!1830745 res!2451727) b!5814033))

(assert (= (and d!1830745 c!1030416) b!5814030))

(assert (= (and d!1830745 (not c!1030416)) b!5814031))

(assert (= (and b!5814031 c!1030415) b!5814029))

(assert (= (and b!5814031 (not c!1030415)) b!5814032))

(assert (= (or b!5814030 b!5814029) bm!454095))

(declare-fun m!6751958 () Bool)

(assert (=> bm!454095 m!6751958))

(declare-fun m!6751960 () Bool)

(assert (=> b!5814030 m!6751960))

(declare-fun m!6751962 () Bool)

(assert (=> b!5814033 m!6751962))

(assert (=> b!5813246 d!1830745))

(declare-fun d!1830747 () Bool)

(assert (=> d!1830747 (= (flatMap!1438 lt!2300583 lambda!317698) (dynLambda!24931 lambda!317698 lt!2300598))))

(declare-fun lt!2300755 () Unit!156922)

(assert (=> d!1830747 (= lt!2300755 (choose!44173 lt!2300583 lt!2300598 lambda!317698))))

(assert (=> d!1830747 (= lt!2300583 (store ((as const (Array Context!10430 Bool)) false) lt!2300598 true))))

(assert (=> d!1830747 (= (lemmaFlatMapOnSingletonSet!970 lt!2300583 lt!2300598 lambda!317698) lt!2300755)))

(declare-fun b_lambda!219183 () Bool)

(assert (=> (not b_lambda!219183) (not d!1830747)))

(declare-fun bs!1372527 () Bool)

(assert (= bs!1372527 d!1830747))

(assert (=> bs!1372527 m!6751334))

(declare-fun m!6751964 () Bool)

(assert (=> bs!1372527 m!6751964))

(declare-fun m!6751966 () Bool)

(assert (=> bs!1372527 m!6751966))

(assert (=> bs!1372527 m!6751348))

(assert (=> b!5813246 d!1830747))

(declare-fun d!1830749 () Bool)

(assert (=> d!1830749 (= (flatMap!1438 lt!2300593 lambda!317698) (choose!44172 lt!2300593 lambda!317698))))

(declare-fun bs!1372528 () Bool)

(assert (= bs!1372528 d!1830749))

(declare-fun m!6751968 () Bool)

(assert (=> bs!1372528 m!6751968))

(assert (=> b!5813246 d!1830749))

(declare-fun bs!1372529 () Bool)

(declare-fun d!1830751 () Bool)

(assert (= bs!1372529 (and d!1830751 b!5813230)))

(declare-fun lambda!317788 () Int)

(assert (=> bs!1372529 (= lambda!317788 lambda!317698)))

(declare-fun bs!1372530 () Bool)

(assert (= bs!1372530 (and d!1830751 d!1830663)))

(assert (=> bs!1372530 (= lambda!317788 lambda!317770)))

(assert (=> d!1830751 true))

(assert (=> d!1830751 (= (derivationStepZipper!1900 lt!2300583 (h!70116 s!2326)) (flatMap!1438 lt!2300583 lambda!317788))))

(declare-fun bs!1372531 () Bool)

(assert (= bs!1372531 d!1830751))

(declare-fun m!6751970 () Bool)

(assert (=> bs!1372531 m!6751970))

(assert (=> b!5813246 d!1830751))

(declare-fun bm!454096 () Bool)

(declare-fun call!454101 () (InoxSet Context!10430))

(assert (=> bm!454096 (= call!454101 (derivationStepZipperDown!1169 (h!70117 (exprs!5715 lt!2300575)) (Context!10431 (t!377148 (exprs!5715 lt!2300575))) (h!70116 s!2326)))))

(declare-fun b!5814034 () Bool)

(declare-fun e!3568545 () (InoxSet Context!10430))

(assert (=> b!5814034 (= e!3568545 call!454101)))

(declare-fun e!3568544 () (InoxSet Context!10430))

(declare-fun b!5814035 () Bool)

(assert (=> b!5814035 (= e!3568544 ((_ map or) call!454101 (derivationStepZipperUp!1095 (Context!10431 (t!377148 (exprs!5715 lt!2300575))) (h!70116 s!2326))))))

(declare-fun b!5814036 () Bool)

(assert (=> b!5814036 (= e!3568544 e!3568545)))

(declare-fun c!1030417 () Bool)

(assert (=> b!5814036 (= c!1030417 ((_ is Cons!63669) (exprs!5715 lt!2300575)))))

(declare-fun b!5814037 () Bool)

(assert (=> b!5814037 (= e!3568545 ((as const (Array Context!10430 Bool)) false))))

(declare-fun d!1830753 () Bool)

(declare-fun c!1030418 () Bool)

(declare-fun e!3568543 () Bool)

(assert (=> d!1830753 (= c!1030418 e!3568543)))

(declare-fun res!2451728 () Bool)

(assert (=> d!1830753 (=> (not res!2451728) (not e!3568543))))

(assert (=> d!1830753 (= res!2451728 ((_ is Cons!63669) (exprs!5715 lt!2300575)))))

(assert (=> d!1830753 (= (derivationStepZipperUp!1095 lt!2300575 (h!70116 s!2326)) e!3568544)))

(declare-fun b!5814038 () Bool)

(assert (=> b!5814038 (= e!3568543 (nullable!5855 (h!70117 (exprs!5715 lt!2300575))))))

(assert (= (and d!1830753 res!2451728) b!5814038))

(assert (= (and d!1830753 c!1030418) b!5814035))

(assert (= (and d!1830753 (not c!1030418)) b!5814036))

(assert (= (and b!5814036 c!1030417) b!5814034))

(assert (= (and b!5814036 (not c!1030417)) b!5814037))

(assert (= (or b!5814035 b!5814034) bm!454096))

(declare-fun m!6751972 () Bool)

(assert (=> bm!454096 m!6751972))

(declare-fun m!6751974 () Bool)

(assert (=> b!5814035 m!6751974))

(declare-fun m!6751976 () Bool)

(assert (=> b!5814038 m!6751976))

(assert (=> b!5813246 d!1830753))

(declare-fun d!1830755 () Bool)

(declare-fun c!1030419 () Bool)

(assert (=> d!1830755 (= c!1030419 (isEmpty!35587 (_1!36231 lt!2300579)))))

(declare-fun e!3568546 () Bool)

(assert (=> d!1830755 (= (matchZipper!1959 lt!2300593 (_1!36231 lt!2300579)) e!3568546)))

(declare-fun b!5814039 () Bool)

(assert (=> b!5814039 (= e!3568546 (nullableZipper!1738 lt!2300593))))

(declare-fun b!5814040 () Bool)

(assert (=> b!5814040 (= e!3568546 (matchZipper!1959 (derivationStepZipper!1900 lt!2300593 (head!12271 (_1!36231 lt!2300579))) (tail!11366 (_1!36231 lt!2300579))))))

(assert (= (and d!1830755 c!1030419) b!5814039))

(assert (= (and d!1830755 (not c!1030419)) b!5814040))

(declare-fun m!6751978 () Bool)

(assert (=> d!1830755 m!6751978))

(declare-fun m!6751980 () Bool)

(assert (=> b!5814039 m!6751980))

(declare-fun m!6751982 () Bool)

(assert (=> b!5814040 m!6751982))

(assert (=> b!5814040 m!6751982))

(declare-fun m!6751984 () Bool)

(assert (=> b!5814040 m!6751984))

(declare-fun m!6751986 () Bool)

(assert (=> b!5814040 m!6751986))

(assert (=> b!5814040 m!6751984))

(assert (=> b!5814040 m!6751986))

(declare-fun m!6751988 () Bool)

(assert (=> b!5814040 m!6751988))

(assert (=> b!5813227 d!1830755))

(declare-fun bs!1372532 () Bool)

(declare-fun d!1830757 () Bool)

(assert (= bs!1372532 (and d!1830757 d!1830599)))

(declare-fun lambda!317789 () Int)

(assert (=> bs!1372532 (= lambda!317789 lambda!317742)))

(declare-fun bs!1372533 () Bool)

(assert (= bs!1372533 (and d!1830757 b!5813233)))

(assert (=> bs!1372533 (= lambda!317789 lambda!317700)))

(declare-fun bs!1372534 () Bool)

(assert (= bs!1372534 (and d!1830757 d!1830665)))

(assert (=> bs!1372534 (= lambda!317789 lambda!317774)))

(declare-fun bs!1372535 () Bool)

(assert (= bs!1372535 (and d!1830757 d!1830605)))

(assert (=> bs!1372535 (= lambda!317789 lambda!317750)))

(declare-fun bs!1372536 () Bool)

(assert (= bs!1372536 (and d!1830757 d!1830739)))

(assert (=> bs!1372536 (= lambda!317789 lambda!317787)))

(assert (=> d!1830757 (= (inv!82824 (h!70118 zl!343)) (forall!14937 (exprs!5715 (h!70118 zl!343)) lambda!317789))))

(declare-fun bs!1372537 () Bool)

(assert (= bs!1372537 d!1830757))

(declare-fun m!6751990 () Bool)

(assert (=> bs!1372537 m!6751990))

(assert (=> b!5813245 d!1830757))

(declare-fun d!1830759 () Bool)

(declare-fun c!1030420 () Bool)

(assert (=> d!1830759 (= c!1030420 (isEmpty!35587 s!2326))))

(declare-fun e!3568547 () Bool)

(assert (=> d!1830759 (= (matchZipper!1959 lt!2300584 s!2326) e!3568547)))

(declare-fun b!5814041 () Bool)

(assert (=> b!5814041 (= e!3568547 (nullableZipper!1738 lt!2300584))))

(declare-fun b!5814042 () Bool)

(assert (=> b!5814042 (= e!3568547 (matchZipper!1959 (derivationStepZipper!1900 lt!2300584 (head!12271 s!2326)) (tail!11366 s!2326)))))

(assert (= (and d!1830759 c!1030420) b!5814041))

(assert (= (and d!1830759 (not c!1030420)) b!5814042))

(assert (=> d!1830759 m!6751230))

(declare-fun m!6751992 () Bool)

(assert (=> b!5814041 m!6751992))

(assert (=> b!5814042 m!6751664))

(assert (=> b!5814042 m!6751664))

(declare-fun m!6751994 () Bool)

(assert (=> b!5814042 m!6751994))

(assert (=> b!5814042 m!6751660))

(assert (=> b!5814042 m!6751994))

(assert (=> b!5814042 m!6751660))

(declare-fun m!6751996 () Bool)

(assert (=> b!5814042 m!6751996))

(assert (=> b!5813225 d!1830759))

(declare-fun d!1830761 () Bool)

(declare-fun c!1030421 () Bool)

(assert (=> d!1830761 (= c!1030421 (isEmpty!35587 (t!377147 s!2326)))))

(declare-fun e!3568548 () Bool)

(assert (=> d!1830761 (= (matchZipper!1959 (derivationStepZipper!1900 lt!2300584 (h!70116 s!2326)) (t!377147 s!2326)) e!3568548)))

(declare-fun b!5814043 () Bool)

(assert (=> b!5814043 (= e!3568548 (nullableZipper!1738 (derivationStepZipper!1900 lt!2300584 (h!70116 s!2326))))))

(declare-fun b!5814044 () Bool)

(assert (=> b!5814044 (= e!3568548 (matchZipper!1959 (derivationStepZipper!1900 (derivationStepZipper!1900 lt!2300584 (h!70116 s!2326)) (head!12271 (t!377147 s!2326))) (tail!11366 (t!377147 s!2326))))))

(assert (= (and d!1830761 c!1030421) b!5814043))

(assert (= (and d!1830761 (not c!1030421)) b!5814044))

(declare-fun m!6751998 () Bool)

(assert (=> d!1830761 m!6751998))

(assert (=> b!5814043 m!6751314))

(declare-fun m!6752000 () Bool)

(assert (=> b!5814043 m!6752000))

(declare-fun m!6752002 () Bool)

(assert (=> b!5814044 m!6752002))

(assert (=> b!5814044 m!6751314))

(assert (=> b!5814044 m!6752002))

(declare-fun m!6752004 () Bool)

(assert (=> b!5814044 m!6752004))

(declare-fun m!6752006 () Bool)

(assert (=> b!5814044 m!6752006))

(assert (=> b!5814044 m!6752004))

(assert (=> b!5814044 m!6752006))

(declare-fun m!6752008 () Bool)

(assert (=> b!5814044 m!6752008))

(assert (=> b!5813225 d!1830761))

(declare-fun bs!1372538 () Bool)

(declare-fun d!1830763 () Bool)

(assert (= bs!1372538 (and d!1830763 b!5813230)))

(declare-fun lambda!317790 () Int)

(assert (=> bs!1372538 (= lambda!317790 lambda!317698)))

(declare-fun bs!1372539 () Bool)

(assert (= bs!1372539 (and d!1830763 d!1830663)))

(assert (=> bs!1372539 (= lambda!317790 lambda!317770)))

(declare-fun bs!1372540 () Bool)

(assert (= bs!1372540 (and d!1830763 d!1830751)))

(assert (=> bs!1372540 (= lambda!317790 lambda!317788)))

(assert (=> d!1830763 true))

(assert (=> d!1830763 (= (derivationStepZipper!1900 lt!2300584 (h!70116 s!2326)) (flatMap!1438 lt!2300584 lambda!317790))))

(declare-fun bs!1372541 () Bool)

(assert (= bs!1372541 d!1830763))

(declare-fun m!6752010 () Bool)

(assert (=> bs!1372541 m!6752010))

(assert (=> b!5813225 d!1830763))

(declare-fun bs!1372542 () Bool)

(declare-fun b!5814053 () Bool)

(assert (= bs!1372542 (and b!5814053 b!5813220)))

(declare-fun lambda!317791 () Int)

(assert (=> bs!1372542 (not (= lambda!317791 lambda!317697))))

(declare-fun bs!1372543 () Bool)

(assert (= bs!1372543 (and b!5814053 d!1830581)))

(assert (=> bs!1372543 (not (= lambda!317791 lambda!317736))))

(declare-fun bs!1372544 () Bool)

(assert (= bs!1372544 (and b!5814053 b!5813662)))

(assert (=> bs!1372544 (not (= lambda!317791 lambda!317765))))

(declare-fun bs!1372545 () Bool)

(assert (= bs!1372545 (and b!5814053 b!5813669)))

(assert (=> bs!1372545 (= (and (= (reg!16160 lt!2300594) (reg!16160 r!7292)) (= lt!2300594 r!7292)) (= lambda!317791 lambda!317764))))

(declare-fun bs!1372546 () Bool)

(assert (= bs!1372546 (and b!5814053 d!1830547)))

(assert (=> bs!1372546 (not (= lambda!317791 lambda!317706))))

(declare-fun bs!1372547 () Bool)

(assert (= bs!1372547 (and b!5814053 d!1830553)))

(assert (=> bs!1372547 (= (and (= (reg!16160 lt!2300594) (reg!16160 r!7292)) (= lt!2300594 (Star!15831 (reg!16160 r!7292)))) (= lambda!317791 lambda!317718))))

(assert (=> bs!1372542 (= (and (= (reg!16160 lt!2300594) (reg!16160 r!7292)) (= lt!2300594 r!7292)) (= lambda!317791 lambda!317696))))

(assert (=> bs!1372542 (not (= lambda!317791 lambda!317695))))

(assert (=> bs!1372547 (not (= lambda!317791 lambda!317717))))

(assert (=> bs!1372546 (not (= lambda!317791 lambda!317705))))

(assert (=> b!5814053 true))

(assert (=> b!5814053 true))

(declare-fun bs!1372548 () Bool)

(declare-fun b!5814046 () Bool)

(assert (= bs!1372548 (and b!5814046 b!5813220)))

(declare-fun lambda!317792 () Int)

(assert (=> bs!1372548 (= (and (= (regOne!32174 lt!2300594) (reg!16160 r!7292)) (= (regTwo!32174 lt!2300594) r!7292)) (= lambda!317792 lambda!317697))))

(declare-fun bs!1372549 () Bool)

(assert (= bs!1372549 (and b!5814046 d!1830581)))

(assert (=> bs!1372549 (not (= lambda!317792 lambda!317736))))

(declare-fun bs!1372550 () Bool)

(assert (= bs!1372550 (and b!5814046 b!5813662)))

(assert (=> bs!1372550 (= (and (= (regOne!32174 lt!2300594) (regOne!32174 r!7292)) (= (regTwo!32174 lt!2300594) (regTwo!32174 r!7292))) (= lambda!317792 lambda!317765))))

(declare-fun bs!1372551 () Bool)

(assert (= bs!1372551 (and b!5814046 b!5813669)))

(assert (=> bs!1372551 (not (= lambda!317792 lambda!317764))))

(declare-fun bs!1372552 () Bool)

(assert (= bs!1372552 (and b!5814046 b!5814053)))

(assert (=> bs!1372552 (not (= lambda!317792 lambda!317791))))

(declare-fun bs!1372553 () Bool)

(assert (= bs!1372553 (and b!5814046 d!1830547)))

(assert (=> bs!1372553 (= (and (= (regOne!32174 lt!2300594) (reg!16160 r!7292)) (= (regTwo!32174 lt!2300594) r!7292)) (= lambda!317792 lambda!317706))))

(declare-fun bs!1372554 () Bool)

(assert (= bs!1372554 (and b!5814046 d!1830553)))

(assert (=> bs!1372554 (not (= lambda!317792 lambda!317718))))

(assert (=> bs!1372548 (not (= lambda!317792 lambda!317696))))

(assert (=> bs!1372548 (not (= lambda!317792 lambda!317695))))

(assert (=> bs!1372554 (not (= lambda!317792 lambda!317717))))

(assert (=> bs!1372553 (not (= lambda!317792 lambda!317705))))

(assert (=> b!5814046 true))

(assert (=> b!5814046 true))

(declare-fun b!5814045 () Bool)

(declare-fun e!3568551 () Bool)

(declare-fun e!3568554 () Bool)

(assert (=> b!5814045 (= e!3568551 e!3568554)))

(declare-fun c!1030422 () Bool)

(assert (=> b!5814045 (= c!1030422 ((_ is Star!15831) lt!2300594))))

(declare-fun call!454103 () Bool)

(assert (=> b!5814046 (= e!3568554 call!454103)))

(declare-fun b!5814047 () Bool)

(declare-fun c!1030425 () Bool)

(assert (=> b!5814047 (= c!1030425 ((_ is Union!15831) lt!2300594))))

(declare-fun e!3568555 () Bool)

(assert (=> b!5814047 (= e!3568555 e!3568551)))

(declare-fun b!5814048 () Bool)

(assert (=> b!5814048 (= e!3568555 (= s!2326 (Cons!63668 (c!1030197 lt!2300594) Nil!63668)))))

(declare-fun b!5814050 () Bool)

(declare-fun res!2451731 () Bool)

(declare-fun e!3568552 () Bool)

(assert (=> b!5814050 (=> res!2451731 e!3568552)))

(declare-fun call!454102 () Bool)

(assert (=> b!5814050 (= res!2451731 call!454102)))

(assert (=> b!5814050 (= e!3568554 e!3568552)))

(declare-fun bm!454097 () Bool)

(assert (=> bm!454097 (= call!454102 (isEmpty!35587 s!2326))))

(declare-fun b!5814051 () Bool)

(declare-fun e!3568550 () Bool)

(assert (=> b!5814051 (= e!3568551 e!3568550)))

(declare-fun res!2451730 () Bool)

(assert (=> b!5814051 (= res!2451730 (matchRSpec!2934 (regOne!32175 lt!2300594) s!2326))))

(assert (=> b!5814051 (=> res!2451730 e!3568550)))

(declare-fun b!5814052 () Bool)

(declare-fun e!3568549 () Bool)

(assert (=> b!5814052 (= e!3568549 call!454102)))

(declare-fun bm!454098 () Bool)

(assert (=> bm!454098 (= call!454103 (Exists!2931 (ite c!1030422 lambda!317791 lambda!317792)))))

(assert (=> b!5814053 (= e!3568552 call!454103)))

(declare-fun d!1830765 () Bool)

(declare-fun c!1030423 () Bool)

(assert (=> d!1830765 (= c!1030423 ((_ is EmptyExpr!15831) lt!2300594))))

(assert (=> d!1830765 (= (matchRSpec!2934 lt!2300594 s!2326) e!3568549)))

(declare-fun b!5814049 () Bool)

(assert (=> b!5814049 (= e!3568550 (matchRSpec!2934 (regTwo!32175 lt!2300594) s!2326))))

(declare-fun b!5814054 () Bool)

(declare-fun c!1030424 () Bool)

(assert (=> b!5814054 (= c!1030424 ((_ is ElementMatch!15831) lt!2300594))))

(declare-fun e!3568553 () Bool)

(assert (=> b!5814054 (= e!3568553 e!3568555)))

(declare-fun b!5814055 () Bool)

(assert (=> b!5814055 (= e!3568549 e!3568553)))

(declare-fun res!2451729 () Bool)

(assert (=> b!5814055 (= res!2451729 (not ((_ is EmptyLang!15831) lt!2300594)))))

(assert (=> b!5814055 (=> (not res!2451729) (not e!3568553))))

(assert (= (and d!1830765 c!1030423) b!5814052))

(assert (= (and d!1830765 (not c!1030423)) b!5814055))

(assert (= (and b!5814055 res!2451729) b!5814054))

(assert (= (and b!5814054 c!1030424) b!5814048))

(assert (= (and b!5814054 (not c!1030424)) b!5814047))

(assert (= (and b!5814047 c!1030425) b!5814051))

(assert (= (and b!5814047 (not c!1030425)) b!5814045))

(assert (= (and b!5814051 (not res!2451730)) b!5814049))

(assert (= (and b!5814045 c!1030422) b!5814050))

(assert (= (and b!5814045 (not c!1030422)) b!5814046))

(assert (= (and b!5814050 (not res!2451731)) b!5814053))

(assert (= (or b!5814053 b!5814046) bm!454098))

(assert (= (or b!5814052 b!5814050) bm!454097))

(assert (=> bm!454097 m!6751230))

(declare-fun m!6752012 () Bool)

(assert (=> b!5814051 m!6752012))

(declare-fun m!6752014 () Bool)

(assert (=> bm!454098 m!6752014))

(declare-fun m!6752016 () Bool)

(assert (=> b!5814049 m!6752016))

(assert (=> b!5813224 d!1830765))

(declare-fun b!5814056 () Bool)

(declare-fun res!2451732 () Bool)

(declare-fun e!3568557 () Bool)

(assert (=> b!5814056 (=> res!2451732 e!3568557)))

(assert (=> b!5814056 (= res!2451732 (not ((_ is ElementMatch!15831) lt!2300594)))))

(declare-fun e!3568556 () Bool)

(assert (=> b!5814056 (= e!3568556 e!3568557)))

(declare-fun b!5814057 () Bool)

(declare-fun e!3568562 () Bool)

(assert (=> b!5814057 (= e!3568562 e!3568556)))

(declare-fun c!1030427 () Bool)

(assert (=> b!5814057 (= c!1030427 ((_ is EmptyLang!15831) lt!2300594))))

(declare-fun b!5814058 () Bool)

(declare-fun lt!2300756 () Bool)

(assert (=> b!5814058 (= e!3568556 (not lt!2300756))))

(declare-fun b!5814059 () Bool)

(declare-fun e!3568560 () Bool)

(assert (=> b!5814059 (= e!3568560 (matchR!8016 (derivativeStep!4598 lt!2300594 (head!12271 s!2326)) (tail!11366 s!2326)))))

(declare-fun d!1830767 () Bool)

(assert (=> d!1830767 e!3568562))

(declare-fun c!1030428 () Bool)

(assert (=> d!1830767 (= c!1030428 ((_ is EmptyExpr!15831) lt!2300594))))

(assert (=> d!1830767 (= lt!2300756 e!3568560)))

(declare-fun c!1030426 () Bool)

(assert (=> d!1830767 (= c!1030426 (isEmpty!35587 s!2326))))

(assert (=> d!1830767 (validRegex!7567 lt!2300594)))

(assert (=> d!1830767 (= (matchR!8016 lt!2300594 s!2326) lt!2300756)))

(declare-fun b!5814060 () Bool)

(declare-fun call!454104 () Bool)

(assert (=> b!5814060 (= e!3568562 (= lt!2300756 call!454104))))

(declare-fun b!5814061 () Bool)

(declare-fun e!3568559 () Bool)

(assert (=> b!5814061 (= e!3568559 (= (head!12271 s!2326) (c!1030197 lt!2300594)))))

(declare-fun b!5814062 () Bool)

(declare-fun res!2451737 () Bool)

(assert (=> b!5814062 (=> (not res!2451737) (not e!3568559))))

(assert (=> b!5814062 (= res!2451737 (not call!454104))))

(declare-fun b!5814063 () Bool)

(assert (=> b!5814063 (= e!3568560 (nullable!5855 lt!2300594))))

(declare-fun bm!454099 () Bool)

(assert (=> bm!454099 (= call!454104 (isEmpty!35587 s!2326))))

(declare-fun b!5814064 () Bool)

(declare-fun res!2451733 () Bool)

(assert (=> b!5814064 (=> res!2451733 e!3568557)))

(assert (=> b!5814064 (= res!2451733 e!3568559)))

(declare-fun res!2451735 () Bool)

(assert (=> b!5814064 (=> (not res!2451735) (not e!3568559))))

(assert (=> b!5814064 (= res!2451735 lt!2300756)))

(declare-fun b!5814065 () Bool)

(declare-fun e!3568558 () Bool)

(assert (=> b!5814065 (= e!3568557 e!3568558)))

(declare-fun res!2451739 () Bool)

(assert (=> b!5814065 (=> (not res!2451739) (not e!3568558))))

(assert (=> b!5814065 (= res!2451739 (not lt!2300756))))

(declare-fun b!5814066 () Bool)

(declare-fun e!3568561 () Bool)

(assert (=> b!5814066 (= e!3568561 (not (= (head!12271 s!2326) (c!1030197 lt!2300594))))))

(declare-fun b!5814067 () Bool)

(declare-fun res!2451738 () Bool)

(assert (=> b!5814067 (=> res!2451738 e!3568561)))

(assert (=> b!5814067 (= res!2451738 (not (isEmpty!35587 (tail!11366 s!2326))))))

(declare-fun b!5814068 () Bool)

(declare-fun res!2451736 () Bool)

(assert (=> b!5814068 (=> (not res!2451736) (not e!3568559))))

(assert (=> b!5814068 (= res!2451736 (isEmpty!35587 (tail!11366 s!2326)))))

(declare-fun b!5814069 () Bool)

(assert (=> b!5814069 (= e!3568558 e!3568561)))

(declare-fun res!2451734 () Bool)

(assert (=> b!5814069 (=> res!2451734 e!3568561)))

(assert (=> b!5814069 (= res!2451734 call!454104)))

(assert (= (and d!1830767 c!1030426) b!5814063))

(assert (= (and d!1830767 (not c!1030426)) b!5814059))

(assert (= (and d!1830767 c!1030428) b!5814060))

(assert (= (and d!1830767 (not c!1030428)) b!5814057))

(assert (= (and b!5814057 c!1030427) b!5814058))

(assert (= (and b!5814057 (not c!1030427)) b!5814056))

(assert (= (and b!5814056 (not res!2451732)) b!5814064))

(assert (= (and b!5814064 res!2451735) b!5814062))

(assert (= (and b!5814062 res!2451737) b!5814068))

(assert (= (and b!5814068 res!2451736) b!5814061))

(assert (= (and b!5814064 (not res!2451733)) b!5814065))

(assert (= (and b!5814065 res!2451739) b!5814069))

(assert (= (and b!5814069 (not res!2451734)) b!5814067))

(assert (= (and b!5814067 (not res!2451738)) b!5814066))

(assert (= (or b!5814060 b!5814062 b!5814069) bm!454099))

(declare-fun m!6752018 () Bool)

(assert (=> b!5814063 m!6752018))

(assert (=> b!5814068 m!6751660))

(assert (=> b!5814068 m!6751660))

(assert (=> b!5814068 m!6751662))

(assert (=> b!5814061 m!6751664))

(assert (=> b!5814059 m!6751664))

(assert (=> b!5814059 m!6751664))

(declare-fun m!6752020 () Bool)

(assert (=> b!5814059 m!6752020))

(assert (=> b!5814059 m!6751660))

(assert (=> b!5814059 m!6752020))

(assert (=> b!5814059 m!6751660))

(declare-fun m!6752022 () Bool)

(assert (=> b!5814059 m!6752022))

(assert (=> b!5814067 m!6751660))

(assert (=> b!5814067 m!6751660))

(assert (=> b!5814067 m!6751662))

(assert (=> b!5814066 m!6751664))

(assert (=> d!1830767 m!6751230))

(declare-fun m!6752024 () Bool)

(assert (=> d!1830767 m!6752024))

(assert (=> bm!454099 m!6751230))

(assert (=> b!5813224 d!1830767))

(declare-fun d!1830769 () Bool)

(assert (=> d!1830769 (= (matchR!8016 lt!2300594 s!2326) (matchRSpec!2934 lt!2300594 s!2326))))

(declare-fun lt!2300757 () Unit!156922)

(assert (=> d!1830769 (= lt!2300757 (choose!44166 lt!2300594 s!2326))))

(assert (=> d!1830769 (validRegex!7567 lt!2300594)))

(assert (=> d!1830769 (= (mainMatchTheorem!2934 lt!2300594 s!2326) lt!2300757)))

(declare-fun bs!1372555 () Bool)

(assert (= bs!1372555 d!1830769))

(assert (=> bs!1372555 m!6751250))

(assert (=> bs!1372555 m!6751248))

(declare-fun m!6752026 () Bool)

(assert (=> bs!1372555 m!6752026))

(assert (=> bs!1372555 m!6752024))

(assert (=> b!5813224 d!1830769))

(declare-fun bm!454106 () Bool)

(declare-fun call!454113 () Bool)

(declare-fun c!1030433 () Bool)

(assert (=> bm!454106 (= call!454113 (validRegex!7567 (ite c!1030433 (regOne!32175 r!7292) (regOne!32174 r!7292))))))

(declare-fun b!5814088 () Bool)

(declare-fun e!3568577 () Bool)

(declare-fun call!454111 () Bool)

(assert (=> b!5814088 (= e!3568577 call!454111)))

(declare-fun d!1830771 () Bool)

(declare-fun res!2451753 () Bool)

(declare-fun e!3568581 () Bool)

(assert (=> d!1830771 (=> res!2451753 e!3568581)))

(assert (=> d!1830771 (= res!2451753 ((_ is ElementMatch!15831) r!7292))))

(assert (=> d!1830771 (= (validRegex!7567 r!7292) e!3568581)))

(declare-fun b!5814089 () Bool)

(declare-fun res!2451750 () Bool)

(declare-fun e!3568582 () Bool)

(assert (=> b!5814089 (=> res!2451750 e!3568582)))

(assert (=> b!5814089 (= res!2451750 (not ((_ is Concat!24676) r!7292)))))

(declare-fun e!3568580 () Bool)

(assert (=> b!5814089 (= e!3568580 e!3568582)))

(declare-fun b!5814090 () Bool)

(declare-fun res!2451754 () Bool)

(declare-fun e!3568583 () Bool)

(assert (=> b!5814090 (=> (not res!2451754) (not e!3568583))))

(assert (=> b!5814090 (= res!2451754 call!454113)))

(assert (=> b!5814090 (= e!3568580 e!3568583)))

(declare-fun b!5814091 () Bool)

(declare-fun e!3568579 () Bool)

(declare-fun call!454112 () Bool)

(assert (=> b!5814091 (= e!3568579 call!454112)))

(declare-fun b!5814092 () Bool)

(declare-fun e!3568578 () Bool)

(assert (=> b!5814092 (= e!3568578 e!3568580)))

(assert (=> b!5814092 (= c!1030433 ((_ is Union!15831) r!7292))))

(declare-fun b!5814093 () Bool)

(assert (=> b!5814093 (= e!3568581 e!3568578)))

(declare-fun c!1030434 () Bool)

(assert (=> b!5814093 (= c!1030434 ((_ is Star!15831) r!7292))))

(declare-fun b!5814094 () Bool)

(assert (=> b!5814094 (= e!3568578 e!3568579)))

(declare-fun res!2451752 () Bool)

(assert (=> b!5814094 (= res!2451752 (not (nullable!5855 (reg!16160 r!7292))))))

(assert (=> b!5814094 (=> (not res!2451752) (not e!3568579))))

(declare-fun bm!454107 () Bool)

(assert (=> bm!454107 (= call!454112 (validRegex!7567 (ite c!1030434 (reg!16160 r!7292) (ite c!1030433 (regTwo!32175 r!7292) (regTwo!32174 r!7292)))))))

(declare-fun bm!454108 () Bool)

(assert (=> bm!454108 (= call!454111 call!454112)))

(declare-fun b!5814095 () Bool)

(assert (=> b!5814095 (= e!3568583 call!454111)))

(declare-fun b!5814096 () Bool)

(assert (=> b!5814096 (= e!3568582 e!3568577)))

(declare-fun res!2451751 () Bool)

(assert (=> b!5814096 (=> (not res!2451751) (not e!3568577))))

(assert (=> b!5814096 (= res!2451751 call!454113)))

(assert (= (and d!1830771 (not res!2451753)) b!5814093))

(assert (= (and b!5814093 c!1030434) b!5814094))

(assert (= (and b!5814093 (not c!1030434)) b!5814092))

(assert (= (and b!5814094 res!2451752) b!5814091))

(assert (= (and b!5814092 c!1030433) b!5814090))

(assert (= (and b!5814092 (not c!1030433)) b!5814089))

(assert (= (and b!5814090 res!2451754) b!5814095))

(assert (= (and b!5814089 (not res!2451750)) b!5814096))

(assert (= (and b!5814096 res!2451751) b!5814088))

(assert (= (or b!5814095 b!5814088) bm!454108))

(assert (= (or b!5814090 b!5814096) bm!454106))

(assert (= (or b!5814091 bm!454108) bm!454107))

(declare-fun m!6752028 () Bool)

(assert (=> bm!454106 m!6752028))

(declare-fun m!6752030 () Bool)

(assert (=> b!5814094 m!6752030))

(declare-fun m!6752032 () Bool)

(assert (=> bm!454107 m!6752032))

(assert (=> start!595652 d!1830771))

(declare-fun b!5814097 () Bool)

(declare-fun c!1030439 () Bool)

(declare-fun e!3568586 () Bool)

(assert (=> b!5814097 (= c!1030439 e!3568586)))

(declare-fun res!2451755 () Bool)

(assert (=> b!5814097 (=> (not res!2451755) (not e!3568586))))

(assert (=> b!5814097 (= res!2451755 ((_ is Concat!24676) (reg!16160 r!7292)))))

(declare-fun e!3568585 () (InoxSet Context!10430))

(declare-fun e!3568589 () (InoxSet Context!10430))

(assert (=> b!5814097 (= e!3568585 e!3568589)))

(declare-fun c!1030438 () Bool)

(declare-fun bm!454109 () Bool)

(declare-fun c!1030437 () Bool)

(declare-fun call!454116 () (InoxSet Context!10430))

(declare-fun call!454119 () List!63793)

(assert (=> bm!454109 (= call!454116 (derivationStepZipperDown!1169 (ite c!1030437 (regTwo!32175 (reg!16160 r!7292)) (ite c!1030439 (regTwo!32174 (reg!16160 r!7292)) (ite c!1030438 (regOne!32174 (reg!16160 r!7292)) (reg!16160 (reg!16160 r!7292))))) (ite (or c!1030437 c!1030439) lt!2300598 (Context!10431 call!454119)) (h!70116 s!2326)))))

(declare-fun b!5814098 () Bool)

(declare-fun e!3568588 () (InoxSet Context!10430))

(assert (=> b!5814098 (= e!3568588 ((as const (Array Context!10430 Bool)) false))))

(declare-fun b!5814099 () Bool)

(declare-fun call!454118 () (InoxSet Context!10430))

(assert (=> b!5814099 (= e!3568588 call!454118)))

(declare-fun bm!454110 () Bool)

(declare-fun call!454115 () List!63793)

(assert (=> bm!454110 (= call!454115 ($colon$colon!1809 (exprs!5715 lt!2300598) (ite (or c!1030439 c!1030438) (regTwo!32174 (reg!16160 r!7292)) (reg!16160 r!7292))))))

(declare-fun b!5814100 () Bool)

(declare-fun call!454117 () (InoxSet Context!10430))

(declare-fun call!454114 () (InoxSet Context!10430))

(assert (=> b!5814100 (= e!3568589 ((_ map or) call!454117 call!454114))))

(declare-fun b!5814101 () Bool)

(declare-fun e!3568584 () (InoxSet Context!10430))

(assert (=> b!5814101 (= e!3568589 e!3568584)))

(assert (=> b!5814101 (= c!1030438 ((_ is Concat!24676) (reg!16160 r!7292)))))

(declare-fun b!5814103 () Bool)

(assert (=> b!5814103 (= e!3568584 call!454118)))

(declare-fun bm!454111 () Bool)

(assert (=> bm!454111 (= call!454119 call!454115)))

(declare-fun b!5814104 () Bool)

(declare-fun c!1030435 () Bool)

(assert (=> b!5814104 (= c!1030435 ((_ is Star!15831) (reg!16160 r!7292)))))

(assert (=> b!5814104 (= e!3568584 e!3568588)))

(declare-fun b!5814105 () Bool)

(assert (=> b!5814105 (= e!3568585 ((_ map or) call!454117 call!454116))))

(declare-fun bm!454112 () Bool)

(assert (=> bm!454112 (= call!454118 call!454114)))

(declare-fun bm!454113 () Bool)

(assert (=> bm!454113 (= call!454114 call!454116)))

(declare-fun b!5814106 () Bool)

(assert (=> b!5814106 (= e!3568586 (nullable!5855 (regOne!32174 (reg!16160 r!7292))))))

(declare-fun b!5814107 () Bool)

(declare-fun e!3568587 () (InoxSet Context!10430))

(assert (=> b!5814107 (= e!3568587 e!3568585)))

(assert (=> b!5814107 (= c!1030437 ((_ is Union!15831) (reg!16160 r!7292)))))

(declare-fun bm!454114 () Bool)

(assert (=> bm!454114 (= call!454117 (derivationStepZipperDown!1169 (ite c!1030437 (regOne!32175 (reg!16160 r!7292)) (regOne!32174 (reg!16160 r!7292))) (ite c!1030437 lt!2300598 (Context!10431 call!454115)) (h!70116 s!2326)))))

(declare-fun b!5814102 () Bool)

(assert (=> b!5814102 (= e!3568587 (store ((as const (Array Context!10430 Bool)) false) lt!2300598 true))))

(declare-fun d!1830773 () Bool)

(declare-fun c!1030436 () Bool)

(assert (=> d!1830773 (= c!1030436 (and ((_ is ElementMatch!15831) (reg!16160 r!7292)) (= (c!1030197 (reg!16160 r!7292)) (h!70116 s!2326))))))

(assert (=> d!1830773 (= (derivationStepZipperDown!1169 (reg!16160 r!7292) lt!2300598 (h!70116 s!2326)) e!3568587)))

(assert (= (and d!1830773 c!1030436) b!5814102))

(assert (= (and d!1830773 (not c!1030436)) b!5814107))

(assert (= (and b!5814107 c!1030437) b!5814105))

(assert (= (and b!5814107 (not c!1030437)) b!5814097))

(assert (= (and b!5814097 res!2451755) b!5814106))

(assert (= (and b!5814097 c!1030439) b!5814100))

(assert (= (and b!5814097 (not c!1030439)) b!5814101))

(assert (= (and b!5814101 c!1030438) b!5814103))

(assert (= (and b!5814101 (not c!1030438)) b!5814104))

(assert (= (and b!5814104 c!1030435) b!5814099))

(assert (= (and b!5814104 (not c!1030435)) b!5814098))

(assert (= (or b!5814103 b!5814099) bm!454111))

(assert (= (or b!5814103 b!5814099) bm!454112))

(assert (= (or b!5814100 bm!454111) bm!454110))

(assert (= (or b!5814100 bm!454112) bm!454113))

(assert (= (or b!5814105 bm!454113) bm!454109))

(assert (= (or b!5814105 b!5814100) bm!454114))

(declare-fun m!6752034 () Bool)

(assert (=> bm!454114 m!6752034))

(declare-fun m!6752036 () Bool)

(assert (=> bm!454110 m!6752036))

(declare-fun m!6752038 () Bool)

(assert (=> b!5814106 m!6752038))

(assert (=> b!5814102 m!6751348))

(declare-fun m!6752040 () Bool)

(assert (=> bm!454109 m!6752040))

(assert (=> b!5813223 d!1830773))

(declare-fun d!1830775 () Bool)

(assert (=> d!1830775 (= (flatMap!1438 lt!2300584 lambda!317698) (choose!44172 lt!2300584 lambda!317698))))

(declare-fun bs!1372556 () Bool)

(assert (= bs!1372556 d!1830775))

(declare-fun m!6752042 () Bool)

(assert (=> bs!1372556 m!6752042))

(assert (=> b!5813223 d!1830775))

(declare-fun bm!454115 () Bool)

(declare-fun call!454120 () (InoxSet Context!10430))

(assert (=> bm!454115 (= call!454120 (derivationStepZipperDown!1169 (h!70117 (exprs!5715 lt!2300586)) (Context!10431 (t!377148 (exprs!5715 lt!2300586))) (h!70116 s!2326)))))

(declare-fun b!5814108 () Bool)

(declare-fun e!3568592 () (InoxSet Context!10430))

(assert (=> b!5814108 (= e!3568592 call!454120)))

(declare-fun e!3568591 () (InoxSet Context!10430))

(declare-fun b!5814109 () Bool)

(assert (=> b!5814109 (= e!3568591 ((_ map or) call!454120 (derivationStepZipperUp!1095 (Context!10431 (t!377148 (exprs!5715 lt!2300586))) (h!70116 s!2326))))))

(declare-fun b!5814110 () Bool)

(assert (=> b!5814110 (= e!3568591 e!3568592)))

(declare-fun c!1030440 () Bool)

(assert (=> b!5814110 (= c!1030440 ((_ is Cons!63669) (exprs!5715 lt!2300586)))))

(declare-fun b!5814111 () Bool)

(assert (=> b!5814111 (= e!3568592 ((as const (Array Context!10430 Bool)) false))))

(declare-fun d!1830777 () Bool)

(declare-fun c!1030441 () Bool)

(declare-fun e!3568590 () Bool)

(assert (=> d!1830777 (= c!1030441 e!3568590)))

(declare-fun res!2451756 () Bool)

(assert (=> d!1830777 (=> (not res!2451756) (not e!3568590))))

(assert (=> d!1830777 (= res!2451756 ((_ is Cons!63669) (exprs!5715 lt!2300586)))))

(assert (=> d!1830777 (= (derivationStepZipperUp!1095 lt!2300586 (h!70116 s!2326)) e!3568591)))

(declare-fun b!5814112 () Bool)

(assert (=> b!5814112 (= e!3568590 (nullable!5855 (h!70117 (exprs!5715 lt!2300586))))))

(assert (= (and d!1830777 res!2451756) b!5814112))

(assert (= (and d!1830777 c!1030441) b!5814109))

(assert (= (and d!1830777 (not c!1030441)) b!5814110))

(assert (= (and b!5814110 c!1030440) b!5814108))

(assert (= (and b!5814110 (not c!1030440)) b!5814111))

(assert (= (or b!5814109 b!5814108) bm!454115))

(declare-fun m!6752044 () Bool)

(assert (=> bm!454115 m!6752044))

(declare-fun m!6752046 () Bool)

(assert (=> b!5814109 m!6752046))

(declare-fun m!6752048 () Bool)

(assert (=> b!5814112 m!6752048))

(assert (=> b!5813223 d!1830777))

(declare-fun d!1830779 () Bool)

(assert (=> d!1830779 (= (flatMap!1438 lt!2300584 lambda!317698) (dynLambda!24931 lambda!317698 lt!2300586))))

(declare-fun lt!2300758 () Unit!156922)

(assert (=> d!1830779 (= lt!2300758 (choose!44173 lt!2300584 lt!2300586 lambda!317698))))

(assert (=> d!1830779 (= lt!2300584 (store ((as const (Array Context!10430 Bool)) false) lt!2300586 true))))

(assert (=> d!1830779 (= (lemmaFlatMapOnSingletonSet!970 lt!2300584 lt!2300586 lambda!317698) lt!2300758)))

(declare-fun b_lambda!219185 () Bool)

(assert (=> (not b_lambda!219185) (not d!1830779)))

(declare-fun bs!1372557 () Bool)

(assert (= bs!1372557 d!1830779))

(assert (=> bs!1372557 m!6751262))

(declare-fun m!6752050 () Bool)

(assert (=> bs!1372557 m!6752050))

(declare-fun m!6752052 () Bool)

(assert (=> bs!1372557 m!6752052))

(assert (=> bs!1372557 m!6751256))

(assert (=> b!5813223 d!1830779))

(declare-fun d!1830781 () Bool)

(declare-fun lt!2300759 () Regex!15831)

(assert (=> d!1830781 (validRegex!7567 lt!2300759)))

(assert (=> d!1830781 (= lt!2300759 (generalisedUnion!1694 (unfocusZipperList!1259 (Cons!63670 lt!2300598 Nil!63670))))))

(assert (=> d!1830781 (= (unfocusZipper!1573 (Cons!63670 lt!2300598 Nil!63670)) lt!2300759)))

(declare-fun bs!1372558 () Bool)

(assert (= bs!1372558 d!1830781))

(declare-fun m!6752054 () Bool)

(assert (=> bs!1372558 m!6752054))

(declare-fun m!6752056 () Bool)

(assert (=> bs!1372558 m!6752056))

(assert (=> bs!1372558 m!6752056))

(declare-fun m!6752058 () Bool)

(assert (=> bs!1372558 m!6752058))

(assert (=> b!5813222 d!1830781))

(declare-fun d!1830783 () Bool)

(assert (=> d!1830783 (= (isEmpty!35588 (t!377149 zl!343)) ((_ is Nil!63670) (t!377149 zl!343)))))

(assert (=> b!5813242 d!1830783))

(declare-fun b!5814117 () Bool)

(declare-fun e!3568595 () Bool)

(declare-fun tp!1604141 () Bool)

(assert (=> b!5814117 (= e!3568595 (and tp_is_empty!40915 tp!1604141))))

(assert (=> b!5813226 (= tp!1604075 e!3568595)))

(assert (= (and b!5813226 ((_ is Cons!63668) (t!377147 s!2326))) b!5814117))

(declare-fun e!3568598 () Bool)

(assert (=> b!5813221 (= tp!1604072 e!3568598)))

(declare-fun b!5814131 () Bool)

(declare-fun tp!1604152 () Bool)

(declare-fun tp!1604155 () Bool)

(assert (=> b!5814131 (= e!3568598 (and tp!1604152 tp!1604155))))

(declare-fun b!5814128 () Bool)

(assert (=> b!5814128 (= e!3568598 tp_is_empty!40915)))

(declare-fun b!5814130 () Bool)

(declare-fun tp!1604153 () Bool)

(assert (=> b!5814130 (= e!3568598 tp!1604153)))

(declare-fun b!5814129 () Bool)

(declare-fun tp!1604156 () Bool)

(declare-fun tp!1604154 () Bool)

(assert (=> b!5814129 (= e!3568598 (and tp!1604156 tp!1604154))))

(assert (= (and b!5813221 ((_ is ElementMatch!15831) (regOne!32174 r!7292))) b!5814128))

(assert (= (and b!5813221 ((_ is Concat!24676) (regOne!32174 r!7292))) b!5814129))

(assert (= (and b!5813221 ((_ is Star!15831) (regOne!32174 r!7292))) b!5814130))

(assert (= (and b!5813221 ((_ is Union!15831) (regOne!32174 r!7292))) b!5814131))

(declare-fun e!3568599 () Bool)

(assert (=> b!5813221 (= tp!1604079 e!3568599)))

(declare-fun b!5814135 () Bool)

(declare-fun tp!1604157 () Bool)

(declare-fun tp!1604160 () Bool)

(assert (=> b!5814135 (= e!3568599 (and tp!1604157 tp!1604160))))

(declare-fun b!5814132 () Bool)

(assert (=> b!5814132 (= e!3568599 tp_is_empty!40915)))

(declare-fun b!5814134 () Bool)

(declare-fun tp!1604158 () Bool)

(assert (=> b!5814134 (= e!3568599 tp!1604158)))

(declare-fun b!5814133 () Bool)

(declare-fun tp!1604161 () Bool)

(declare-fun tp!1604159 () Bool)

(assert (=> b!5814133 (= e!3568599 (and tp!1604161 tp!1604159))))

(assert (= (and b!5813221 ((_ is ElementMatch!15831) (regTwo!32174 r!7292))) b!5814132))

(assert (= (and b!5813221 ((_ is Concat!24676) (regTwo!32174 r!7292))) b!5814133))

(assert (= (and b!5813221 ((_ is Star!15831) (regTwo!32174 r!7292))) b!5814134))

(assert (= (and b!5813221 ((_ is Union!15831) (regTwo!32174 r!7292))) b!5814135))

(declare-fun b!5814140 () Bool)

(declare-fun e!3568602 () Bool)

(declare-fun tp!1604166 () Bool)

(declare-fun tp!1604167 () Bool)

(assert (=> b!5814140 (= e!3568602 (and tp!1604166 tp!1604167))))

(assert (=> b!5813235 (= tp!1604073 e!3568602)))

(assert (= (and b!5813235 ((_ is Cons!63669) (exprs!5715 (h!70118 zl!343)))) b!5814140))

(declare-fun b!5814148 () Bool)

(declare-fun e!3568608 () Bool)

(declare-fun tp!1604172 () Bool)

(assert (=> b!5814148 (= e!3568608 tp!1604172)))

(declare-fun b!5814147 () Bool)

(declare-fun tp!1604173 () Bool)

(declare-fun e!3568607 () Bool)

(assert (=> b!5814147 (= e!3568607 (and (inv!82824 (h!70118 (t!377149 zl!343))) e!3568608 tp!1604173))))

(assert (=> b!5813245 (= tp!1604076 e!3568607)))

(assert (= b!5814147 b!5814148))

(assert (= (and b!5813245 ((_ is Cons!63670) (t!377149 zl!343))) b!5814147))

(declare-fun m!6752060 () Bool)

(assert (=> b!5814147 m!6752060))

(declare-fun e!3568609 () Bool)

(assert (=> b!5813244 (= tp!1604074 e!3568609)))

(declare-fun b!5814152 () Bool)

(declare-fun tp!1604174 () Bool)

(declare-fun tp!1604177 () Bool)

(assert (=> b!5814152 (= e!3568609 (and tp!1604174 tp!1604177))))

(declare-fun b!5814149 () Bool)

(assert (=> b!5814149 (= e!3568609 tp_is_empty!40915)))

(declare-fun b!5814151 () Bool)

(declare-fun tp!1604175 () Bool)

(assert (=> b!5814151 (= e!3568609 tp!1604175)))

(declare-fun b!5814150 () Bool)

(declare-fun tp!1604178 () Bool)

(declare-fun tp!1604176 () Bool)

(assert (=> b!5814150 (= e!3568609 (and tp!1604178 tp!1604176))))

(assert (= (and b!5813244 ((_ is ElementMatch!15831) (reg!16160 r!7292))) b!5814149))

(assert (= (and b!5813244 ((_ is Concat!24676) (reg!16160 r!7292))) b!5814150))

(assert (= (and b!5813244 ((_ is Star!15831) (reg!16160 r!7292))) b!5814151))

(assert (= (and b!5813244 ((_ is Union!15831) (reg!16160 r!7292))) b!5814152))

(declare-fun e!3568610 () Bool)

(assert (=> b!5813228 (= tp!1604078 e!3568610)))

(declare-fun b!5814156 () Bool)

(declare-fun tp!1604179 () Bool)

(declare-fun tp!1604182 () Bool)

(assert (=> b!5814156 (= e!3568610 (and tp!1604179 tp!1604182))))

(declare-fun b!5814153 () Bool)

(assert (=> b!5814153 (= e!3568610 tp_is_empty!40915)))

(declare-fun b!5814155 () Bool)

(declare-fun tp!1604180 () Bool)

(assert (=> b!5814155 (= e!3568610 tp!1604180)))

(declare-fun b!5814154 () Bool)

(declare-fun tp!1604183 () Bool)

(declare-fun tp!1604181 () Bool)

(assert (=> b!5814154 (= e!3568610 (and tp!1604183 tp!1604181))))

(assert (= (and b!5813228 ((_ is ElementMatch!15831) (regOne!32175 r!7292))) b!5814153))

(assert (= (and b!5813228 ((_ is Concat!24676) (regOne!32175 r!7292))) b!5814154))

(assert (= (and b!5813228 ((_ is Star!15831) (regOne!32175 r!7292))) b!5814155))

(assert (= (and b!5813228 ((_ is Union!15831) (regOne!32175 r!7292))) b!5814156))

(declare-fun e!3568611 () Bool)

(assert (=> b!5813228 (= tp!1604071 e!3568611)))

(declare-fun b!5814160 () Bool)

(declare-fun tp!1604184 () Bool)

(declare-fun tp!1604187 () Bool)

(assert (=> b!5814160 (= e!3568611 (and tp!1604184 tp!1604187))))

(declare-fun b!5814157 () Bool)

(assert (=> b!5814157 (= e!3568611 tp_is_empty!40915)))

(declare-fun b!5814159 () Bool)

(declare-fun tp!1604185 () Bool)

(assert (=> b!5814159 (= e!3568611 tp!1604185)))

(declare-fun b!5814158 () Bool)

(declare-fun tp!1604188 () Bool)

(declare-fun tp!1604186 () Bool)

(assert (=> b!5814158 (= e!3568611 (and tp!1604188 tp!1604186))))

(assert (= (and b!5813228 ((_ is ElementMatch!15831) (regTwo!32175 r!7292))) b!5814157))

(assert (= (and b!5813228 ((_ is Concat!24676) (regTwo!32175 r!7292))) b!5814158))

(assert (= (and b!5813228 ((_ is Star!15831) (regTwo!32175 r!7292))) b!5814159))

(assert (= (and b!5813228 ((_ is Union!15831) (regTwo!32175 r!7292))) b!5814160))

(declare-fun condSetEmpty!39166 () Bool)

(assert (=> setNonEmpty!39160 (= condSetEmpty!39166 (= setRest!39160 ((as const (Array Context!10430 Bool)) false)))))

(declare-fun setRes!39166 () Bool)

(assert (=> setNonEmpty!39160 (= tp!1604080 setRes!39166)))

(declare-fun setIsEmpty!39166 () Bool)

(assert (=> setIsEmpty!39166 setRes!39166))

(declare-fun setNonEmpty!39166 () Bool)

(declare-fun tp!1604193 () Bool)

(declare-fun setElem!39166 () Context!10430)

(declare-fun e!3568614 () Bool)

(assert (=> setNonEmpty!39166 (= setRes!39166 (and tp!1604193 (inv!82824 setElem!39166) e!3568614))))

(declare-fun setRest!39166 () (InoxSet Context!10430))

(assert (=> setNonEmpty!39166 (= setRest!39160 ((_ map or) (store ((as const (Array Context!10430 Bool)) false) setElem!39166 true) setRest!39166))))

(declare-fun b!5814165 () Bool)

(declare-fun tp!1604194 () Bool)

(assert (=> b!5814165 (= e!3568614 tp!1604194)))

(assert (= (and setNonEmpty!39160 condSetEmpty!39166) setIsEmpty!39166))

(assert (= (and setNonEmpty!39160 (not condSetEmpty!39166)) setNonEmpty!39166))

(assert (= setNonEmpty!39166 b!5814165))

(declare-fun m!6752062 () Bool)

(assert (=> setNonEmpty!39166 m!6752062))

(declare-fun b!5814166 () Bool)

(declare-fun e!3568615 () Bool)

(declare-fun tp!1604195 () Bool)

(declare-fun tp!1604196 () Bool)

(assert (=> b!5814166 (= e!3568615 (and tp!1604195 tp!1604196))))

(assert (=> b!5813231 (= tp!1604077 e!3568615)))

(assert (= (and b!5813231 ((_ is Cons!63669) (exprs!5715 setElem!39160))) b!5814166))

(declare-fun b_lambda!219187 () Bool)

(assert (= b_lambda!219181 (or b!5813230 b_lambda!219187)))

(declare-fun bs!1372559 () Bool)

(declare-fun d!1830785 () Bool)

(assert (= bs!1372559 (and d!1830785 b!5813230)))

(assert (=> bs!1372559 (= (dynLambda!24931 lambda!317698 lt!2300575) (derivationStepZipperUp!1095 lt!2300575 (h!70116 s!2326)))))

(assert (=> bs!1372559 m!6751346))

(assert (=> d!1830741 d!1830785))

(declare-fun b_lambda!219189 () Bool)

(assert (= b_lambda!219183 (or b!5813230 b_lambda!219189)))

(declare-fun bs!1372560 () Bool)

(declare-fun d!1830787 () Bool)

(assert (= bs!1372560 (and d!1830787 b!5813230)))

(assert (=> bs!1372560 (= (dynLambda!24931 lambda!317698 lt!2300598) (derivationStepZipperUp!1095 lt!2300598 (h!70116 s!2326)))))

(assert (=> bs!1372560 m!6751350))

(assert (=> d!1830747 d!1830787))

(declare-fun b_lambda!219191 () Bool)

(assert (= b_lambda!219185 (or b!5813230 b_lambda!219191)))

(declare-fun bs!1372561 () Bool)

(declare-fun d!1830789 () Bool)

(assert (= bs!1372561 (and d!1830789 b!5813230)))

(assert (=> bs!1372561 (= (dynLambda!24931 lambda!317698 lt!2300586) (derivationStepZipperUp!1095 lt!2300586 (h!70116 s!2326)))))

(assert (=> bs!1372561 m!6751254))

(assert (=> d!1830779 d!1830789))

(declare-fun b_lambda!219193 () Bool)

(assert (= b_lambda!219177 (or b!5813233 b_lambda!219193)))

(declare-fun bs!1372562 () Bool)

(declare-fun d!1830791 () Bool)

(assert (= bs!1372562 (and d!1830791 b!5813233)))

(declare-fun lt!2300760 () Unit!156922)

(assert (=> bs!1372562 (= lt!2300760 (lemmaConcatPreservesForall!332 (exprs!5715 lt!2300575) lt!2300602 lambda!317700))))

(assert (=> bs!1372562 (= (dynLambda!24930 lambda!317699 lt!2300575) (Context!10431 (++!14047 (exprs!5715 lt!2300575) lt!2300602)))))

(declare-fun m!6752064 () Bool)

(assert (=> bs!1372562 m!6752064))

(declare-fun m!6752066 () Bool)

(assert (=> bs!1372562 m!6752066))

(assert (=> d!1830729 d!1830791))

(declare-fun b_lambda!219195 () Bool)

(assert (= b_lambda!219179 (or b!5813230 b_lambda!219195)))

(declare-fun bs!1372563 () Bool)

(declare-fun d!1830793 () Bool)

(assert (= bs!1372563 (and d!1830793 b!5813230)))

(assert (=> bs!1372563 (= (dynLambda!24931 lambda!317698 (h!70118 zl!343)) (derivationStepZipperUp!1095 (h!70118 zl!343) (h!70116 s!2326)))))

(assert (=> bs!1372563 m!6751304))

(assert (=> d!1830735 d!1830793))

(check-sat (not b!5813826) (not d!1830775) (not b_lambda!219195) (not b!5814166) (not d!1830759) (not bm!454086) (not b!5814131) (not b!5813667) (not b!5813417) (not b!5814003) (not b!5814147) (not b!5814135) (not d!1830539) (not d!1830761) (not b!5814117) (not bs!1372560) (not d!1830723) (not bm!454095) (not bm!454042) (not b!5814051) (not b_lambda!219187) (not b!5813898) (not bm!454107) (not b!5813745) (not b_lambda!219189) (not b!5814129) (not bm!454114) (not b!5813665) (not d!1830605) (not b!5814152) (not d!1830721) (not b!5814043) (not d!1830541) (not d!1830599) (not b!5814004) (not bm!454078) (not d!1830703) (not b!5813543) (not bm!454097) (not b!5814025) (not b!5814067) (not b!5813911) (not bm!454115) (not b!5814165) (not d!1830751) (not b!5814151) (not b!5814160) (not bm!454094) (not d!1830545) (not b!5813893) (not b!5813912) (not bm!454098) (not b!5814140) (not d!1830747) (not b!5813418) (not d!1830553) (not b!5813542) (not bm!454099) (not b!5813419) (not d!1830743) (not d!1830571) (not b!5814133) (not setNonEmpty!39166) (not d!1830689) (not d!1830735) (not b!5813416) (not b!5814019) (not b!5813749) (not b!5814134) (not b!5813748) (not b!5814155) (not d!1830547) (not b!5813892) (not b!5813412) (not b!5814154) (not d!1830755) (not b!5814044) (not d!1830593) (not b!5814002) (not d!1830757) (not b!5813549) (not d!1830749) (not b!5814130) (not b!5814066) (not b!5814009) (not bm!454096) (not bm!454079) (not d!1830637) (not b!5813540) (not b!5814006) (not d!1830741) (not b!5814094) (not b!5814042) (not d!1830717) (not b!5814109) tp_is_empty!40915 (not d!1830781) (not b!5813750) (not b!5813546) (not d!1830727) (not d!1830665) (not b!5814028) (not d!1830779) (not b!5813547) (not b!5813998) (not b!5814049) (not bs!1372562) (not d!1830647) (not b!5814030) (not bs!1372561) (not b!5814033) (not d!1830731) (not b!5814059) (not d!1830763) (not b!5813841) (not b!5814158) (not bs!1372559) (not d!1830649) (not d!1830663) (not bm!454043) (not b_lambda!219193) (not bm!454110) (not b!5814106) (not b_lambda!219191) (not b!5814159) (not b!5813844) (not d!1830725) (not b!5814061) (not b!5814148) (not b!5813579) (not bs!1372563) (not b!5813741) (not b!5813896) (not b!5813899) (not b!5814035) (not d!1830701) (not b!5813769) (not b!5814112) (not d!1830543) (not bm!454109) (not b!5814063) (not d!1830693) (not b!5813544) (not b!5814068) (not b!5814040) (not d!1830767) (not d!1830719) (not bm!454106) (not d!1830739) (not d!1830729) (not b!5814039) (not bm!454065) (not b!5814005) (not d!1830737) (not b!5813894) (not bm!454083) (not b!5813415) (not b!5814020) (not b!5813743) (not b!5814156) (not b!5814150) (not b!5814041) (not b!5813768) (not b!5813895) (not d!1830581) (not b!5814038) (not d!1830769))
(check-sat)
