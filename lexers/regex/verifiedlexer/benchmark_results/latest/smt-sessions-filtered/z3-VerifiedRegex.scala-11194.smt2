; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!584330 () Bool)

(assert start!584330)

(declare-fun b!5650082 () Bool)

(assert (=> b!5650082 true))

(assert (=> b!5650082 true))

(declare-fun lambda!303822 () Int)

(declare-fun lambda!303821 () Int)

(assert (=> b!5650082 (not (= lambda!303822 lambda!303821))))

(assert (=> b!5650082 true))

(assert (=> b!5650082 true))

(declare-fun b!5650075 () Bool)

(assert (=> b!5650075 true))

(declare-fun bs!1314417 () Bool)

(declare-fun b!5650053 () Bool)

(assert (= bs!1314417 (and b!5650053 b!5650082)))

(declare-datatypes ((C!31540 0))(
  ( (C!31541 (val!25472 Int)) )
))
(declare-datatypes ((Regex!15635 0))(
  ( (ElementMatch!15635 (c!993065 C!31540)) (Concat!24480 (regOne!31782 Regex!15635) (regTwo!31782 Regex!15635)) (EmptyExpr!15635) (Star!15635 (reg!15964 Regex!15635)) (EmptyLang!15635) (Union!15635 (regOne!31783 Regex!15635) (regTwo!31783 Regex!15635)) )
))
(declare-fun r!7292 () Regex!15635)

(declare-fun lambda!303824 () Int)

(declare-fun lt!2265133 () Regex!15635)

(assert (=> bs!1314417 (= (and (= (regOne!31782 (regOne!31782 r!7292)) (regOne!31782 r!7292)) (= lt!2265133 (regTwo!31782 r!7292))) (= lambda!303824 lambda!303821))))

(assert (=> bs!1314417 (not (= lambda!303824 lambda!303822))))

(assert (=> b!5650053 true))

(assert (=> b!5650053 true))

(assert (=> b!5650053 true))

(declare-fun lambda!303825 () Int)

(assert (=> bs!1314417 (not (= lambda!303825 lambda!303821))))

(assert (=> bs!1314417 (= (and (= (regOne!31782 (regOne!31782 r!7292)) (regOne!31782 r!7292)) (= lt!2265133 (regTwo!31782 r!7292))) (= lambda!303825 lambda!303822))))

(assert (=> b!5650053 (not (= lambda!303825 lambda!303824))))

(assert (=> b!5650053 true))

(assert (=> b!5650053 true))

(assert (=> b!5650053 true))

(declare-fun lt!2265118 () Regex!15635)

(declare-fun lambda!303826 () Int)

(assert (=> bs!1314417 (= (and (= (regTwo!31782 (regOne!31782 r!7292)) (regOne!31782 r!7292)) (= lt!2265118 (regTwo!31782 r!7292))) (= lambda!303826 lambda!303821))))

(assert (=> bs!1314417 (not (= lambda!303826 lambda!303822))))

(assert (=> b!5650053 (= (and (= (regTwo!31782 (regOne!31782 r!7292)) (regOne!31782 (regOne!31782 r!7292))) (= lt!2265118 lt!2265133)) (= lambda!303826 lambda!303824))))

(assert (=> b!5650053 (not (= lambda!303826 lambda!303825))))

(assert (=> b!5650053 true))

(assert (=> b!5650053 true))

(assert (=> b!5650053 true))

(declare-fun lambda!303827 () Int)

(assert (=> b!5650053 (not (= lambda!303827 lambda!303826))))

(assert (=> b!5650053 (= (and (= (regTwo!31782 (regOne!31782 r!7292)) (regOne!31782 (regOne!31782 r!7292))) (= lt!2265118 lt!2265133)) (= lambda!303827 lambda!303825))))

(assert (=> bs!1314417 (= (and (= (regTwo!31782 (regOne!31782 r!7292)) (regOne!31782 r!7292)) (= lt!2265118 (regTwo!31782 r!7292))) (= lambda!303827 lambda!303822))))

(assert (=> b!5650053 (not (= lambda!303827 lambda!303824))))

(assert (=> bs!1314417 (not (= lambda!303827 lambda!303821))))

(assert (=> b!5650053 true))

(assert (=> b!5650053 true))

(assert (=> b!5650053 true))

(declare-fun b!5650049 () Bool)

(declare-fun e!3480413 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63204 0))(
  ( (Nil!63080) (Cons!63080 (h!69528 Regex!15635) (t!376504 List!63204)) )
))
(declare-datatypes ((Context!10038 0))(
  ( (Context!10039 (exprs!5519 List!63204)) )
))
(declare-fun lt!2265139 () (InoxSet Context!10038))

(declare-datatypes ((List!63205 0))(
  ( (Nil!63081) (Cons!63081 (h!69529 C!31540) (t!376505 List!63205)) )
))
(declare-fun s!2326 () List!63205)

(declare-fun matchZipper!1773 ((InoxSet Context!10038) List!63205) Bool)

(assert (=> b!5650049 (= e!3480413 (matchZipper!1773 lt!2265139 (t!376505 s!2326)))))

(declare-fun b!5650050 () Bool)

(declare-fun e!3480411 () Bool)

(declare-fun e!3480412 () Bool)

(assert (=> b!5650050 (= e!3480411 (not e!3480412))))

(declare-fun res!2390024 () Bool)

(assert (=> b!5650050 (=> res!2390024 e!3480412)))

(declare-datatypes ((List!63206 0))(
  ( (Nil!63082) (Cons!63082 (h!69530 Context!10038) (t!376506 List!63206)) )
))
(declare-fun zl!343 () List!63206)

(get-info :version)

(assert (=> b!5650050 (= res!2390024 (not ((_ is Cons!63082) zl!343)))))

(declare-fun lt!2265101 () Bool)

(declare-fun matchRSpec!2738 (Regex!15635 List!63205) Bool)

(assert (=> b!5650050 (= lt!2265101 (matchRSpec!2738 r!7292 s!2326))))

(declare-fun matchR!7820 (Regex!15635 List!63205) Bool)

(assert (=> b!5650050 (= lt!2265101 (matchR!7820 r!7292 s!2326))))

(declare-datatypes ((Unit!156072 0))(
  ( (Unit!156073) )
))
(declare-fun lt!2265129 () Unit!156072)

(declare-fun mainMatchTheorem!2738 (Regex!15635 List!63205) Unit!156072)

(assert (=> b!5650050 (= lt!2265129 (mainMatchTheorem!2738 r!7292 s!2326))))

(declare-fun setNonEmpty!37742 () Bool)

(declare-fun tp!1565607 () Bool)

(declare-fun setRes!37742 () Bool)

(declare-fun e!3480405 () Bool)

(declare-fun setElem!37742 () Context!10038)

(declare-fun inv!82334 (Context!10038) Bool)

(assert (=> setNonEmpty!37742 (= setRes!37742 (and tp!1565607 (inv!82334 setElem!37742) e!3480405))))

(declare-fun z!1189 () (InoxSet Context!10038))

(declare-fun setRest!37742 () (InoxSet Context!10038))

(assert (=> setNonEmpty!37742 (= z!1189 ((_ map or) (store ((as const (Array Context!10038 Bool)) false) setElem!37742 true) setRest!37742))))

(declare-fun b!5650052 () Bool)

(declare-fun e!3480400 () Bool)

(declare-fun e!3480403 () Bool)

(assert (=> b!5650052 (= e!3480400 e!3480403)))

(declare-fun res!2390003 () Bool)

(assert (=> b!5650052 (=> res!2390003 e!3480403)))

(declare-fun lt!2265105 () (InoxSet Context!10038))

(declare-fun lt!2265119 () (InoxSet Context!10038))

(assert (=> b!5650052 (= res!2390003 (not (= lt!2265105 lt!2265119)))))

(declare-fun lt!2265131 () (InoxSet Context!10038))

(declare-fun lt!2265126 () (InoxSet Context!10038))

(assert (=> b!5650052 (= lt!2265119 ((_ map or) lt!2265131 lt!2265126))))

(declare-fun lt!2265125 () Context!10038)

(declare-fun derivationStepZipperUp!903 (Context!10038 C!31540) (InoxSet Context!10038))

(assert (=> b!5650052 (= lt!2265126 (derivationStepZipperUp!903 lt!2265125 (h!69529 s!2326)))))

(declare-fun lambda!303823 () Int)

(declare-fun lt!2265117 () (InoxSet Context!10038))

(declare-fun lt!2265116 () Context!10038)

(declare-fun flatMap!1248 ((InoxSet Context!10038) Int) (InoxSet Context!10038))

(assert (=> b!5650052 (= (flatMap!1248 lt!2265117 lambda!303823) (derivationStepZipperUp!903 lt!2265116 (h!69529 s!2326)))))

(declare-fun lt!2265130 () Unit!156072)

(declare-fun lemmaFlatMapOnSingletonSet!780 ((InoxSet Context!10038) Context!10038 Int) Unit!156072)

(assert (=> b!5650052 (= lt!2265130 (lemmaFlatMapOnSingletonSet!780 lt!2265117 lt!2265116 lambda!303823))))

(declare-fun lt!2265135 () (InoxSet Context!10038))

(assert (=> b!5650052 (= lt!2265135 (derivationStepZipperUp!903 lt!2265116 (h!69529 s!2326)))))

(declare-fun derivationStepZipper!1722 ((InoxSet Context!10038) C!31540) (InoxSet Context!10038))

(assert (=> b!5650052 (= lt!2265105 (derivationStepZipper!1722 lt!2265117 (h!69529 s!2326)))))

(declare-fun lt!2265127 () (InoxSet Context!10038))

(assert (=> b!5650052 (= lt!2265127 (store ((as const (Array Context!10038 Bool)) false) lt!2265125 true))))

(assert (=> b!5650052 (= lt!2265117 (store ((as const (Array Context!10038 Bool)) false) lt!2265116 true))))

(declare-fun lt!2265144 () List!63204)

(assert (=> b!5650052 (= lt!2265116 (Context!10039 lt!2265144))))

(declare-fun lt!2265141 () List!63204)

(assert (=> b!5650052 (= lt!2265144 (Cons!63080 (regOne!31782 (regOne!31782 r!7292)) lt!2265141))))

(declare-fun e!3480402 () Bool)

(declare-fun e!3480410 () Bool)

(assert (=> b!5650053 (= e!3480402 e!3480410)))

(declare-fun res!2390028 () Bool)

(assert (=> b!5650053 (=> res!2390028 e!3480410)))

(declare-fun lt!2265122 () Bool)

(declare-fun lt!2265146 () Bool)

(declare-fun lt!2265142 () Bool)

(declare-fun lt!2265115 () Bool)

(declare-fun lt!2265106 () Bool)

(assert (=> b!5650053 (= res!2390028 (or (not (= lt!2265146 (or lt!2265142 lt!2265115))) (not (= lt!2265146 (or lt!2265106 lt!2265122)))))))

(assert (=> b!5650053 (= lt!2265146 (matchZipper!1773 z!1189 s!2326))))

(declare-fun Exists!2735 (Int) Bool)

(assert (=> b!5650053 (= (Exists!2735 lambda!303826) (Exists!2735 lambda!303827))))

(declare-fun lt!2265110 () Unit!156072)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1364 (Regex!15635 Regex!15635 List!63205) Unit!156072)

(assert (=> b!5650053 (= lt!2265110 (lemmaExistCutMatchRandMatchRSpecEquivalent!1364 (regTwo!31782 (regOne!31782 r!7292)) lt!2265118 s!2326))))

(declare-datatypes ((tuple2!65464 0))(
  ( (tuple2!65465 (_1!36035 List!63205) (_2!36035 List!63205)) )
))
(declare-datatypes ((Option!15644 0))(
  ( (None!15643) (Some!15643 (v!51690 tuple2!65464)) )
))
(declare-fun isDefined!12347 (Option!15644) Bool)

(declare-fun findConcatSeparation!2058 (Regex!15635 Regex!15635 List!63205 List!63205 List!63205) Option!15644)

(assert (=> b!5650053 (= (isDefined!12347 (findConcatSeparation!2058 (regTwo!31782 (regOne!31782 r!7292)) lt!2265118 Nil!63081 s!2326 s!2326)) (Exists!2735 lambda!303826))))

(declare-fun lt!2265112 () Unit!156072)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1822 (Regex!15635 Regex!15635 List!63205) Unit!156072)

(assert (=> b!5650053 (= lt!2265112 (lemmaFindConcatSeparationEquivalentToExists!1822 (regTwo!31782 (regOne!31782 r!7292)) lt!2265118 s!2326))))

(declare-fun generalisedConcat!1250 (List!63204) Regex!15635)

(assert (=> b!5650053 (= lt!2265118 (generalisedConcat!1250 (t!376504 (exprs!5519 (h!69530 zl!343)))))))

(assert (=> b!5650053 (= lt!2265122 (matchRSpec!2738 lt!2265133 s!2326))))

(declare-fun lt!2265107 () Unit!156072)

(assert (=> b!5650053 (= lt!2265107 (mainMatchTheorem!2738 lt!2265133 s!2326))))

(assert (=> b!5650053 (= (Exists!2735 lambda!303824) (Exists!2735 lambda!303825))))

(declare-fun lt!2265137 () Unit!156072)

(assert (=> b!5650053 (= lt!2265137 (lemmaExistCutMatchRandMatchRSpecEquivalent!1364 (regOne!31782 (regOne!31782 r!7292)) lt!2265133 s!2326))))

(assert (=> b!5650053 (= (isDefined!12347 (findConcatSeparation!2058 (regOne!31782 (regOne!31782 r!7292)) lt!2265133 Nil!63081 s!2326 s!2326)) (Exists!2735 lambda!303824))))

(declare-fun lt!2265114 () Unit!156072)

(assert (=> b!5650053 (= lt!2265114 (lemmaFindConcatSeparationEquivalentToExists!1822 (regOne!31782 (regOne!31782 r!7292)) lt!2265133 s!2326))))

(declare-fun lt!2265120 () Regex!15635)

(assert (=> b!5650053 (= lt!2265106 (matchRSpec!2738 lt!2265120 s!2326))))

(declare-fun lt!2265140 () Unit!156072)

(assert (=> b!5650053 (= lt!2265140 (mainMatchTheorem!2738 lt!2265120 s!2326))))

(assert (=> b!5650053 (= lt!2265122 lt!2265115)))

(assert (=> b!5650053 (= lt!2265115 (matchZipper!1773 lt!2265127 s!2326))))

(assert (=> b!5650053 (= lt!2265122 (matchR!7820 lt!2265133 s!2326))))

(declare-fun lt!2265138 () Unit!156072)

(declare-fun theoremZipperRegexEquiv!631 ((InoxSet Context!10038) List!63206 Regex!15635 List!63205) Unit!156072)

(assert (=> b!5650053 (= lt!2265138 (theoremZipperRegexEquiv!631 lt!2265127 (Cons!63082 lt!2265125 Nil!63082) lt!2265133 s!2326))))

(assert (=> b!5650053 (= lt!2265133 (generalisedConcat!1250 lt!2265141))))

(assert (=> b!5650053 (= lt!2265106 lt!2265142)))

(assert (=> b!5650053 (= lt!2265142 (matchZipper!1773 lt!2265117 s!2326))))

(assert (=> b!5650053 (= lt!2265106 (matchR!7820 lt!2265120 s!2326))))

(declare-fun lt!2265103 () List!63206)

(declare-fun lt!2265102 () Unit!156072)

(assert (=> b!5650053 (= lt!2265102 (theoremZipperRegexEquiv!631 lt!2265117 lt!2265103 lt!2265120 s!2326))))

(assert (=> b!5650053 (= lt!2265120 (generalisedConcat!1250 lt!2265144))))

(declare-fun b!5650054 () Bool)

(declare-fun res!2390005 () Bool)

(assert (=> b!5650054 (=> res!2390005 e!3480402)))

(declare-fun zipperDepth!212 (List!63206) Int)

(assert (=> b!5650054 (= res!2390005 (> (zipperDepth!212 lt!2265103) (zipperDepth!212 zl!343)))))

(declare-fun b!5650055 () Bool)

(declare-fun e!3480407 () Bool)

(assert (=> b!5650055 (= e!3480407 e!3480402)))

(declare-fun res!2390002 () Bool)

(assert (=> b!5650055 (=> res!2390002 e!3480402)))

(declare-fun zipperDepthTotal!244 (List!63206) Int)

(assert (=> b!5650055 (= res!2390002 (>= (zipperDepthTotal!244 lt!2265103) (zipperDepthTotal!244 zl!343)))))

(assert (=> b!5650055 (= lt!2265103 (Cons!63082 lt!2265116 Nil!63082))))

(declare-fun b!5650056 () Bool)

(declare-fun res!2390013 () Bool)

(assert (=> b!5650056 (=> res!2390013 e!3480412)))

(assert (=> b!5650056 (= res!2390013 (not ((_ is Cons!63080) (exprs!5519 (h!69530 zl!343)))))))

(declare-fun b!5650057 () Bool)

(declare-fun e!3480401 () Bool)

(declare-fun tp!1565610 () Bool)

(declare-fun tp!1565612 () Bool)

(assert (=> b!5650057 (= e!3480401 (and tp!1565610 tp!1565612))))

(declare-fun b!5650058 () Bool)

(declare-fun e!3480409 () Bool)

(declare-fun e!3480404 () Bool)

(assert (=> b!5650058 (= e!3480409 e!3480404)))

(declare-fun res!2390015 () Bool)

(assert (=> b!5650058 (=> res!2390015 e!3480404)))

(declare-fun lt!2265128 () (InoxSet Context!10038))

(declare-fun lt!2265121 () (InoxSet Context!10038))

(assert (=> b!5650058 (= res!2390015 (not (= lt!2265128 lt!2265121)))))

(declare-fun lt!2265134 () (InoxSet Context!10038))

(assert (=> b!5650058 (= lt!2265121 ((_ map or) lt!2265131 lt!2265134))))

(declare-fun lt!2265108 () Context!10038)

(declare-fun derivationStepZipperDown!977 (Regex!15635 Context!10038 C!31540) (InoxSet Context!10038))

(assert (=> b!5650058 (= lt!2265134 (derivationStepZipperDown!977 (regTwo!31782 (regOne!31782 r!7292)) lt!2265108 (h!69529 s!2326)))))

(assert (=> b!5650058 (= lt!2265131 (derivationStepZipperDown!977 (regOne!31782 (regOne!31782 r!7292)) lt!2265125 (h!69529 s!2326)))))

(assert (=> b!5650058 (= lt!2265125 (Context!10039 lt!2265141))))

(assert (=> b!5650058 (= lt!2265141 (Cons!63080 (regTwo!31782 (regOne!31782 r!7292)) (t!376504 (exprs!5519 (h!69530 zl!343)))))))

(declare-fun b!5650059 () Bool)

(declare-fun e!3480395 () Bool)

(assert (=> b!5650059 (= e!3480395 (matchZipper!1773 lt!2265134 (t!376505 s!2326)))))

(declare-fun b!5650060 () Bool)

(declare-fun res!2390014 () Bool)

(assert (=> b!5650060 (=> (not res!2390014) (not e!3480411))))

(declare-fun toList!9419 ((InoxSet Context!10038)) List!63206)

(assert (=> b!5650060 (= res!2390014 (= (toList!9419 z!1189) zl!343))))

(declare-fun b!5650061 () Bool)

(declare-fun e!3480408 () Bool)

(declare-fun tp!1565606 () Bool)

(assert (=> b!5650061 (= e!3480408 tp!1565606)))

(declare-fun b!5650062 () Bool)

(declare-fun e!3480399 () Bool)

(assert (=> b!5650062 (= e!3480399 (not (matchZipper!1773 lt!2265134 (t!376505 s!2326))))))

(declare-fun b!5650063 () Bool)

(declare-fun res!2390010 () Bool)

(declare-fun e!3480406 () Bool)

(assert (=> b!5650063 (=> res!2390010 e!3480406)))

(declare-fun isEmpty!34925 (List!63204) Bool)

(assert (=> b!5650063 (= res!2390010 (isEmpty!34925 (t!376504 (exprs!5519 (h!69530 zl!343)))))))

(declare-fun b!5650064 () Bool)

(declare-fun res!2390008 () Bool)

(assert (=> b!5650064 (=> (not res!2390008) (not e!3480411))))

(declare-fun unfocusZipper!1377 (List!63206) Regex!15635)

(assert (=> b!5650064 (= res!2390008 (= r!7292 (unfocusZipper!1377 zl!343)))))

(declare-fun b!5650065 () Bool)

(declare-fun e!3480397 () Unit!156072)

(declare-fun Unit!156074 () Unit!156072)

(assert (=> b!5650065 (= e!3480397 Unit!156074)))

(declare-fun lt!2265145 () Unit!156072)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!660 ((InoxSet Context!10038) (InoxSet Context!10038) List!63205) Unit!156072)

(assert (=> b!5650065 (= lt!2265145 (lemmaZipperConcatMatchesSameAsBothZippers!660 lt!2265128 lt!2265139 (t!376505 s!2326)))))

(declare-fun res!2390004 () Bool)

(assert (=> b!5650065 (= res!2390004 (matchZipper!1773 lt!2265128 (t!376505 s!2326)))))

(assert (=> b!5650065 (=> res!2390004 e!3480413)))

(assert (=> b!5650065 (= (matchZipper!1773 ((_ map or) lt!2265128 lt!2265139) (t!376505 s!2326)) e!3480413)))

(declare-fun b!5650066 () Bool)

(assert (=> b!5650066 (= e!3480404 e!3480400)))

(declare-fun res!2390007 () Bool)

(assert (=> b!5650066 (=> res!2390007 e!3480400)))

(assert (=> b!5650066 (= res!2390007 e!3480399)))

(declare-fun res!2390025 () Bool)

(assert (=> b!5650066 (=> (not res!2390025) (not e!3480399))))

(declare-fun lt!2265123 () Bool)

(declare-fun lt!2265148 () Bool)

(assert (=> b!5650066 (= res!2390025 (not (= lt!2265123 lt!2265148)))))

(assert (=> b!5650066 (= lt!2265123 (matchZipper!1773 lt!2265128 (t!376505 s!2326)))))

(assert (=> b!5650066 (= (matchZipper!1773 lt!2265121 (t!376505 s!2326)) e!3480395)))

(declare-fun res!2390020 () Bool)

(assert (=> b!5650066 (=> res!2390020 e!3480395)))

(assert (=> b!5650066 (= res!2390020 lt!2265148)))

(assert (=> b!5650066 (= lt!2265148 (matchZipper!1773 lt!2265131 (t!376505 s!2326)))))

(declare-fun lt!2265104 () Unit!156072)

(assert (=> b!5650066 (= lt!2265104 (lemmaZipperConcatMatchesSameAsBothZippers!660 lt!2265131 lt!2265134 (t!376505 s!2326)))))

(declare-fun b!5650051 () Bool)

(declare-fun res!2390006 () Bool)

(assert (=> b!5650051 (=> res!2390006 e!3480412)))

(declare-fun isEmpty!34926 (List!63206) Bool)

(assert (=> b!5650051 (= res!2390006 (not (isEmpty!34926 (t!376506 zl!343))))))

(declare-fun res!2390018 () Bool)

(assert (=> start!584330 (=> (not res!2390018) (not e!3480411))))

(declare-fun validRegex!7371 (Regex!15635) Bool)

(assert (=> start!584330 (= res!2390018 (validRegex!7371 r!7292))))

(assert (=> start!584330 e!3480411))

(assert (=> start!584330 e!3480401))

(declare-fun condSetEmpty!37742 () Bool)

(assert (=> start!584330 (= condSetEmpty!37742 (= z!1189 ((as const (Array Context!10038 Bool)) false)))))

(assert (=> start!584330 setRes!37742))

(declare-fun e!3480398 () Bool)

(assert (=> start!584330 e!3480398))

(declare-fun e!3480394 () Bool)

(assert (=> start!584330 e!3480394))

(declare-fun b!5650067 () Bool)

(declare-fun Unit!156075 () Unit!156072)

(assert (=> b!5650067 (= e!3480397 Unit!156075)))

(declare-fun b!5650068 () Bool)

(declare-fun e!3480396 () Bool)

(assert (=> b!5650068 (= e!3480396 (not (matchZipper!1773 (derivationStepZipper!1722 lt!2265127 (h!69529 s!2326)) (t!376505 s!2326))))))

(declare-fun b!5650069 () Bool)

(declare-fun tp_is_empty!40523 () Bool)

(assert (=> b!5650069 (= e!3480401 tp_is_empty!40523)))

(declare-fun b!5650070 () Bool)

(declare-fun res!2390017 () Bool)

(assert (=> b!5650070 (=> res!2390017 e!3480412)))

(assert (=> b!5650070 (= res!2390017 (or ((_ is EmptyExpr!15635) r!7292) ((_ is EmptyLang!15635) r!7292) ((_ is ElementMatch!15635) r!7292) ((_ is Union!15635) r!7292) (not ((_ is Concat!24480) r!7292))))))

(declare-fun b!5650071 () Bool)

(declare-fun res!2390022 () Bool)

(assert (=> b!5650071 (=> res!2390022 e!3480409)))

(declare-fun nullable!5667 (Regex!15635) Bool)

(assert (=> b!5650071 (= res!2390022 (not (nullable!5667 (regOne!31782 (regOne!31782 r!7292)))))))

(declare-fun setIsEmpty!37742 () Bool)

(assert (=> setIsEmpty!37742 setRes!37742))

(declare-fun b!5650072 () Bool)

(declare-fun tp!1565613 () Bool)

(declare-fun tp!1565609 () Bool)

(assert (=> b!5650072 (= e!3480401 (and tp!1565613 tp!1565609))))

(declare-fun tp!1565608 () Bool)

(declare-fun b!5650073 () Bool)

(assert (=> b!5650073 (= e!3480398 (and (inv!82334 (h!69530 zl!343)) e!3480408 tp!1565608))))

(declare-fun b!5650074 () Bool)

(declare-fun res!2390027 () Bool)

(assert (=> b!5650074 (=> res!2390027 e!3480412)))

(assert (=> b!5650074 (= res!2390027 (not (= r!7292 (generalisedConcat!1250 (exprs!5519 (h!69530 zl!343))))))))

(assert (=> b!5650075 (= e!3480406 e!3480409)))

(declare-fun res!2390021 () Bool)

(assert (=> b!5650075 (=> res!2390021 e!3480409)))

(assert (=> b!5650075 (= res!2390021 (or (and ((_ is ElementMatch!15635) (regOne!31782 r!7292)) (= (c!993065 (regOne!31782 r!7292)) (h!69529 s!2326))) ((_ is Union!15635) (regOne!31782 r!7292)) (not ((_ is Concat!24480) (regOne!31782 r!7292)))))))

(declare-fun lt!2265147 () Unit!156072)

(assert (=> b!5650075 (= lt!2265147 e!3480397)))

(declare-fun c!993064 () Bool)

(assert (=> b!5650075 (= c!993064 (nullable!5667 (h!69528 (exprs!5519 (h!69530 zl!343)))))))

(assert (=> b!5650075 (= (flatMap!1248 z!1189 lambda!303823) (derivationStepZipperUp!903 (h!69530 zl!343) (h!69529 s!2326)))))

(declare-fun lt!2265132 () Unit!156072)

(assert (=> b!5650075 (= lt!2265132 (lemmaFlatMapOnSingletonSet!780 z!1189 (h!69530 zl!343) lambda!303823))))

(assert (=> b!5650075 (= lt!2265139 (derivationStepZipperUp!903 lt!2265108 (h!69529 s!2326)))))

(assert (=> b!5650075 (= lt!2265128 (derivationStepZipperDown!977 (h!69528 (exprs!5519 (h!69530 zl!343))) lt!2265108 (h!69529 s!2326)))))

(assert (=> b!5650075 (= lt!2265108 (Context!10039 (t!376504 (exprs!5519 (h!69530 zl!343)))))))

(declare-fun lt!2265109 () (InoxSet Context!10038))

(assert (=> b!5650075 (= lt!2265109 (derivationStepZipperUp!903 (Context!10039 (Cons!63080 (h!69528 (exprs!5519 (h!69530 zl!343))) (t!376504 (exprs!5519 (h!69530 zl!343))))) (h!69529 s!2326)))))

(declare-fun b!5650076 () Bool)

(declare-fun res!2390009 () Bool)

(assert (=> b!5650076 (=> res!2390009 e!3480407)))

(declare-fun contextDepthTotal!220 (Context!10038) Int)

(assert (=> b!5650076 (= res!2390009 (>= (contextDepthTotal!220 lt!2265116) (contextDepthTotal!220 (h!69530 zl!343))))))

(declare-fun b!5650077 () Bool)

(declare-fun tp!1565604 () Bool)

(assert (=> b!5650077 (= e!3480401 tp!1565604)))

(declare-fun b!5650078 () Bool)

(assert (=> b!5650078 (= e!3480410 (= lt!2265101 (matchR!7820 (Concat!24480 (regOne!31782 r!7292) (regTwo!31782 r!7292)) s!2326)))))

(declare-fun b!5650079 () Bool)

(declare-fun res!2390016 () Bool)

(assert (=> b!5650079 (=> res!2390016 e!3480412)))

(declare-fun generalisedUnion!1498 (List!63204) Regex!15635)

(declare-fun unfocusZipperList!1063 (List!63206) List!63204)

(assert (=> b!5650079 (= res!2390016 (not (= r!7292 (generalisedUnion!1498 (unfocusZipperList!1063 zl!343)))))))

(declare-fun b!5650080 () Bool)

(assert (=> b!5650080 (= e!3480403 e!3480407)))

(declare-fun res!2390012 () Bool)

(assert (=> b!5650080 (=> res!2390012 e!3480407)))

(assert (=> b!5650080 (= res!2390012 e!3480396)))

(declare-fun res!2390023 () Bool)

(assert (=> b!5650080 (=> (not res!2390023) (not e!3480396))))

(assert (=> b!5650080 (= res!2390023 (not (= lt!2265123 (matchZipper!1773 lt!2265105 (t!376505 s!2326)))))))

(declare-fun e!3480414 () Bool)

(assert (=> b!5650080 (= (matchZipper!1773 lt!2265119 (t!376505 s!2326)) e!3480414)))

(declare-fun res!2390026 () Bool)

(assert (=> b!5650080 (=> res!2390026 e!3480414)))

(assert (=> b!5650080 (= res!2390026 lt!2265148)))

(declare-fun lt!2265124 () Unit!156072)

(assert (=> b!5650080 (= lt!2265124 (lemmaZipperConcatMatchesSameAsBothZippers!660 lt!2265131 lt!2265126 (t!376505 s!2326)))))

(assert (=> b!5650080 (= (flatMap!1248 lt!2265127 lambda!303823) (derivationStepZipperUp!903 lt!2265125 (h!69529 s!2326)))))

(declare-fun lt!2265136 () Unit!156072)

(assert (=> b!5650080 (= lt!2265136 (lemmaFlatMapOnSingletonSet!780 lt!2265127 lt!2265125 lambda!303823))))

(declare-fun b!5650081 () Bool)

(declare-fun tp!1565605 () Bool)

(assert (=> b!5650081 (= e!3480394 (and tp_is_empty!40523 tp!1565605))))

(assert (=> b!5650082 (= e!3480412 e!3480406)))

(declare-fun res!2390019 () Bool)

(assert (=> b!5650082 (=> res!2390019 e!3480406)))

(declare-fun lt!2265111 () Bool)

(assert (=> b!5650082 (= res!2390019 (or (not (= lt!2265101 lt!2265111)) ((_ is Nil!63081) s!2326)))))

(assert (=> b!5650082 (= (Exists!2735 lambda!303821) (Exists!2735 lambda!303822))))

(declare-fun lt!2265143 () Unit!156072)

(assert (=> b!5650082 (= lt!2265143 (lemmaExistCutMatchRandMatchRSpecEquivalent!1364 (regOne!31782 r!7292) (regTwo!31782 r!7292) s!2326))))

(assert (=> b!5650082 (= lt!2265111 (Exists!2735 lambda!303821))))

(assert (=> b!5650082 (= lt!2265111 (isDefined!12347 (findConcatSeparation!2058 (regOne!31782 r!7292) (regTwo!31782 r!7292) Nil!63081 s!2326 s!2326)))))

(declare-fun lt!2265113 () Unit!156072)

(assert (=> b!5650082 (= lt!2265113 (lemmaFindConcatSeparationEquivalentToExists!1822 (regOne!31782 r!7292) (regTwo!31782 r!7292) s!2326))))

(declare-fun b!5650083 () Bool)

(assert (=> b!5650083 (= e!3480414 (matchZipper!1773 lt!2265126 (t!376505 s!2326)))))

(declare-fun b!5650084 () Bool)

(declare-fun tp!1565611 () Bool)

(assert (=> b!5650084 (= e!3480405 tp!1565611)))

(declare-fun b!5650085 () Bool)

(declare-fun res!2390011 () Bool)

(assert (=> b!5650085 (=> res!2390011 e!3480407)))

(assert (=> b!5650085 (= res!2390011 (not (= (exprs!5519 (h!69530 zl!343)) (Cons!63080 (Concat!24480 (regOne!31782 (regOne!31782 r!7292)) (regTwo!31782 (regOne!31782 r!7292))) (t!376504 (exprs!5519 (h!69530 zl!343)))))))))

(assert (= (and start!584330 res!2390018) b!5650060))

(assert (= (and b!5650060 res!2390014) b!5650064))

(assert (= (and b!5650064 res!2390008) b!5650050))

(assert (= (and b!5650050 (not res!2390024)) b!5650051))

(assert (= (and b!5650051 (not res!2390006)) b!5650074))

(assert (= (and b!5650074 (not res!2390027)) b!5650056))

(assert (= (and b!5650056 (not res!2390013)) b!5650079))

(assert (= (and b!5650079 (not res!2390016)) b!5650070))

(assert (= (and b!5650070 (not res!2390017)) b!5650082))

(assert (= (and b!5650082 (not res!2390019)) b!5650063))

(assert (= (and b!5650063 (not res!2390010)) b!5650075))

(assert (= (and b!5650075 c!993064) b!5650065))

(assert (= (and b!5650075 (not c!993064)) b!5650067))

(assert (= (and b!5650065 (not res!2390004)) b!5650049))

(assert (= (and b!5650075 (not res!2390021)) b!5650071))

(assert (= (and b!5650071 (not res!2390022)) b!5650058))

(assert (= (and b!5650058 (not res!2390015)) b!5650066))

(assert (= (and b!5650066 (not res!2390020)) b!5650059))

(assert (= (and b!5650066 res!2390025) b!5650062))

(assert (= (and b!5650066 (not res!2390007)) b!5650052))

(assert (= (and b!5650052 (not res!2390003)) b!5650080))

(assert (= (and b!5650080 (not res!2390026)) b!5650083))

(assert (= (and b!5650080 res!2390023) b!5650068))

(assert (= (and b!5650080 (not res!2390012)) b!5650085))

(assert (= (and b!5650085 (not res!2390011)) b!5650076))

(assert (= (and b!5650076 (not res!2390009)) b!5650055))

(assert (= (and b!5650055 (not res!2390002)) b!5650054))

(assert (= (and b!5650054 (not res!2390005)) b!5650053))

(assert (= (and b!5650053 (not res!2390028)) b!5650078))

(assert (= (and start!584330 ((_ is ElementMatch!15635) r!7292)) b!5650069))

(assert (= (and start!584330 ((_ is Concat!24480) r!7292)) b!5650057))

(assert (= (and start!584330 ((_ is Star!15635) r!7292)) b!5650077))

(assert (= (and start!584330 ((_ is Union!15635) r!7292)) b!5650072))

(assert (= (and start!584330 condSetEmpty!37742) setIsEmpty!37742))

(assert (= (and start!584330 (not condSetEmpty!37742)) setNonEmpty!37742))

(assert (= setNonEmpty!37742 b!5650084))

(assert (= b!5650073 b!5650061))

(assert (= (and start!584330 ((_ is Cons!63082) zl!343)) b!5650073))

(assert (= (and start!584330 ((_ is Cons!63081) s!2326)) b!5650081))

(declare-fun m!6617358 () Bool)

(assert (=> b!5650079 m!6617358))

(assert (=> b!5650079 m!6617358))

(declare-fun m!6617360 () Bool)

(assert (=> b!5650079 m!6617360))

(declare-fun m!6617362 () Bool)

(assert (=> setNonEmpty!37742 m!6617362))

(declare-fun m!6617364 () Bool)

(assert (=> b!5650058 m!6617364))

(declare-fun m!6617366 () Bool)

(assert (=> b!5650058 m!6617366))

(declare-fun m!6617368 () Bool)

(assert (=> start!584330 m!6617368))

(declare-fun m!6617370 () Bool)

(assert (=> b!5650080 m!6617370))

(declare-fun m!6617372 () Bool)

(assert (=> b!5650080 m!6617372))

(declare-fun m!6617374 () Bool)

(assert (=> b!5650080 m!6617374))

(declare-fun m!6617376 () Bool)

(assert (=> b!5650080 m!6617376))

(declare-fun m!6617378 () Bool)

(assert (=> b!5650080 m!6617378))

(declare-fun m!6617380 () Bool)

(assert (=> b!5650080 m!6617380))

(declare-fun m!6617382 () Bool)

(assert (=> b!5650052 m!6617382))

(declare-fun m!6617384 () Bool)

(assert (=> b!5650052 m!6617384))

(assert (=> b!5650052 m!6617374))

(declare-fun m!6617386 () Bool)

(assert (=> b!5650052 m!6617386))

(declare-fun m!6617388 () Bool)

(assert (=> b!5650052 m!6617388))

(declare-fun m!6617390 () Bool)

(assert (=> b!5650052 m!6617390))

(declare-fun m!6617392 () Bool)

(assert (=> b!5650052 m!6617392))

(declare-fun m!6617394 () Bool)

(assert (=> b!5650074 m!6617394))

(declare-fun m!6617396 () Bool)

(assert (=> b!5650066 m!6617396))

(declare-fun m!6617398 () Bool)

(assert (=> b!5650066 m!6617398))

(declare-fun m!6617400 () Bool)

(assert (=> b!5650066 m!6617400))

(declare-fun m!6617402 () Bool)

(assert (=> b!5650066 m!6617402))

(declare-fun m!6617404 () Bool)

(assert (=> b!5650050 m!6617404))

(declare-fun m!6617406 () Bool)

(assert (=> b!5650050 m!6617406))

(declare-fun m!6617408 () Bool)

(assert (=> b!5650050 m!6617408))

(declare-fun m!6617410 () Bool)

(assert (=> b!5650078 m!6617410))

(declare-fun m!6617412 () Bool)

(assert (=> b!5650063 m!6617412))

(declare-fun m!6617414 () Bool)

(assert (=> b!5650082 m!6617414))

(declare-fun m!6617416 () Bool)

(assert (=> b!5650082 m!6617416))

(declare-fun m!6617418 () Bool)

(assert (=> b!5650082 m!6617418))

(assert (=> b!5650082 m!6617414))

(declare-fun m!6617420 () Bool)

(assert (=> b!5650082 m!6617420))

(declare-fun m!6617422 () Bool)

(assert (=> b!5650082 m!6617422))

(assert (=> b!5650082 m!6617416))

(declare-fun m!6617424 () Bool)

(assert (=> b!5650082 m!6617424))

(declare-fun m!6617426 () Bool)

(assert (=> b!5650059 m!6617426))

(declare-fun m!6617428 () Bool)

(assert (=> b!5650075 m!6617428))

(declare-fun m!6617430 () Bool)

(assert (=> b!5650075 m!6617430))

(declare-fun m!6617432 () Bool)

(assert (=> b!5650075 m!6617432))

(declare-fun m!6617434 () Bool)

(assert (=> b!5650075 m!6617434))

(declare-fun m!6617436 () Bool)

(assert (=> b!5650075 m!6617436))

(declare-fun m!6617438 () Bool)

(assert (=> b!5650075 m!6617438))

(declare-fun m!6617440 () Bool)

(assert (=> b!5650075 m!6617440))

(declare-fun m!6617442 () Bool)

(assert (=> b!5650053 m!6617442))

(declare-fun m!6617444 () Bool)

(assert (=> b!5650053 m!6617444))

(declare-fun m!6617446 () Bool)

(assert (=> b!5650053 m!6617446))

(declare-fun m!6617448 () Bool)

(assert (=> b!5650053 m!6617448))

(declare-fun m!6617450 () Bool)

(assert (=> b!5650053 m!6617450))

(declare-fun m!6617452 () Bool)

(assert (=> b!5650053 m!6617452))

(declare-fun m!6617454 () Bool)

(assert (=> b!5650053 m!6617454))

(declare-fun m!6617456 () Bool)

(assert (=> b!5650053 m!6617456))

(declare-fun m!6617458 () Bool)

(assert (=> b!5650053 m!6617458))

(declare-fun m!6617460 () Bool)

(assert (=> b!5650053 m!6617460))

(declare-fun m!6617462 () Bool)

(assert (=> b!5650053 m!6617462))

(declare-fun m!6617464 () Bool)

(assert (=> b!5650053 m!6617464))

(declare-fun m!6617466 () Bool)

(assert (=> b!5650053 m!6617466))

(declare-fun m!6617468 () Bool)

(assert (=> b!5650053 m!6617468))

(declare-fun m!6617470 () Bool)

(assert (=> b!5650053 m!6617470))

(assert (=> b!5650053 m!6617442))

(declare-fun m!6617472 () Bool)

(assert (=> b!5650053 m!6617472))

(declare-fun m!6617474 () Bool)

(assert (=> b!5650053 m!6617474))

(declare-fun m!6617476 () Bool)

(assert (=> b!5650053 m!6617476))

(assert (=> b!5650053 m!6617446))

(declare-fun m!6617478 () Bool)

(assert (=> b!5650053 m!6617478))

(declare-fun m!6617480 () Bool)

(assert (=> b!5650053 m!6617480))

(declare-fun m!6617482 () Bool)

(assert (=> b!5650053 m!6617482))

(assert (=> b!5650053 m!6617460))

(declare-fun m!6617484 () Bool)

(assert (=> b!5650053 m!6617484))

(declare-fun m!6617486 () Bool)

(assert (=> b!5650053 m!6617486))

(declare-fun m!6617488 () Bool)

(assert (=> b!5650053 m!6617488))

(declare-fun m!6617490 () Bool)

(assert (=> b!5650053 m!6617490))

(assert (=> b!5650053 m!6617484))

(declare-fun m!6617492 () Bool)

(assert (=> b!5650053 m!6617492))

(declare-fun m!6617494 () Bool)

(assert (=> b!5650065 m!6617494))

(assert (=> b!5650065 m!6617396))

(declare-fun m!6617496 () Bool)

(assert (=> b!5650065 m!6617496))

(declare-fun m!6617498 () Bool)

(assert (=> b!5650064 m!6617498))

(declare-fun m!6617500 () Bool)

(assert (=> b!5650054 m!6617500))

(declare-fun m!6617502 () Bool)

(assert (=> b!5650054 m!6617502))

(declare-fun m!6617504 () Bool)

(assert (=> b!5650055 m!6617504))

(declare-fun m!6617506 () Bool)

(assert (=> b!5650055 m!6617506))

(declare-fun m!6617508 () Bool)

(assert (=> b!5650049 m!6617508))

(declare-fun m!6617510 () Bool)

(assert (=> b!5650051 m!6617510))

(declare-fun m!6617512 () Bool)

(assert (=> b!5650068 m!6617512))

(assert (=> b!5650068 m!6617512))

(declare-fun m!6617514 () Bool)

(assert (=> b!5650068 m!6617514))

(assert (=> b!5650062 m!6617426))

(declare-fun m!6617516 () Bool)

(assert (=> b!5650071 m!6617516))

(declare-fun m!6617518 () Bool)

(assert (=> b!5650076 m!6617518))

(declare-fun m!6617520 () Bool)

(assert (=> b!5650076 m!6617520))

(declare-fun m!6617522 () Bool)

(assert (=> b!5650073 m!6617522))

(declare-fun m!6617524 () Bool)

(assert (=> b!5650060 m!6617524))

(declare-fun m!6617526 () Bool)

(assert (=> b!5650083 m!6617526))

(check-sat (not b!5650054) (not b!5650074) (not b!5650068) (not b!5650084) (not b!5650083) (not b!5650078) (not start!584330) (not b!5650076) (not b!5650059) (not b!5650079) (not b!5650080) (not b!5650072) (not b!5650073) (not b!5650052) (not b!5650050) (not b!5650063) (not b!5650081) (not b!5650049) (not b!5650065) (not b!5650075) (not b!5650057) (not b!5650058) (not b!5650060) (not b!5650077) (not b!5650066) (not setNonEmpty!37742) tp_is_empty!40523 (not b!5650053) (not b!5650061) (not b!5650082) (not b!5650071) (not b!5650064) (not b!5650051) (not b!5650055) (not b!5650062))
(check-sat)
