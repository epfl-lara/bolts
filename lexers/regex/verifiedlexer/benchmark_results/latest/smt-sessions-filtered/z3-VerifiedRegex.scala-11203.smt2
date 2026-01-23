; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!585114 () Bool)

(assert start!585114)

(declare-fun b!5658440 () Bool)

(assert (=> b!5658440 true))

(assert (=> b!5658440 true))

(declare-fun lambda!304596 () Int)

(declare-fun lambda!304595 () Int)

(assert (=> b!5658440 (not (= lambda!304596 lambda!304595))))

(assert (=> b!5658440 true))

(assert (=> b!5658440 true))

(declare-fun b!5658433 () Bool)

(assert (=> b!5658433 true))

(declare-fun b!5658428 () Bool)

(declare-datatypes ((Unit!156144 0))(
  ( (Unit!156145) )
))
(declare-fun e!3484913 () Unit!156144)

(declare-fun Unit!156146 () Unit!156144)

(assert (=> b!5658428 (= e!3484913 Unit!156146)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31576 0))(
  ( (C!31577 (val!25490 Int)) )
))
(declare-datatypes ((Regex!15653 0))(
  ( (ElementMatch!15653 (c!994913 C!31576)) (Concat!24498 (regOne!31818 Regex!15653) (regTwo!31818 Regex!15653)) (EmptyExpr!15653) (Star!15653 (reg!15982 Regex!15653)) (EmptyLang!15653) (Union!15653 (regOne!31819 Regex!15653) (regTwo!31819 Regex!15653)) )
))
(declare-datatypes ((List!63258 0))(
  ( (Nil!63134) (Cons!63134 (h!69582 Regex!15653) (t!376562 List!63258)) )
))
(declare-datatypes ((Context!10074 0))(
  ( (Context!10075 (exprs!5537 List!63258)) )
))
(declare-fun lt!2267098 () (InoxSet Context!10074))

(declare-datatypes ((List!63259 0))(
  ( (Nil!63135) (Cons!63135 (h!69583 C!31576) (t!376563 List!63259)) )
))
(declare-fun s!2326 () List!63259)

(declare-fun lt!2267103 () Unit!156144)

(declare-fun lt!2267096 () (InoxSet Context!10074))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!678 ((InoxSet Context!10074) (InoxSet Context!10074) List!63259) Unit!156144)

(assert (=> b!5658428 (= lt!2267103 (lemmaZipperConcatMatchesSameAsBothZippers!678 lt!2267096 lt!2267098 (t!376563 s!2326)))))

(declare-fun res!2393437 () Bool)

(declare-fun matchZipper!1791 ((InoxSet Context!10074) List!63259) Bool)

(assert (=> b!5658428 (= res!2393437 (matchZipper!1791 lt!2267096 (t!376563 s!2326)))))

(declare-fun e!3484910 () Bool)

(assert (=> b!5658428 (=> res!2393437 e!3484910)))

(assert (=> b!5658428 (= (matchZipper!1791 ((_ map or) lt!2267096 lt!2267098) (t!376563 s!2326)) e!3484910)))

(declare-fun b!5658429 () Bool)

(declare-fun e!3484908 () Bool)

(declare-fun e!3484906 () Bool)

(assert (=> b!5658429 (= e!3484908 (not e!3484906))))

(declare-fun res!2393428 () Bool)

(assert (=> b!5658429 (=> res!2393428 e!3484906)))

(declare-datatypes ((List!63260 0))(
  ( (Nil!63136) (Cons!63136 (h!69584 Context!10074) (t!376564 List!63260)) )
))
(declare-fun zl!343 () List!63260)

(get-info :version)

(assert (=> b!5658429 (= res!2393428 (not ((_ is Cons!63136) zl!343)))))

(declare-fun lt!2267109 () Bool)

(declare-fun r!7292 () Regex!15653)

(declare-fun matchRSpec!2756 (Regex!15653 List!63259) Bool)

(assert (=> b!5658429 (= lt!2267109 (matchRSpec!2756 r!7292 s!2326))))

(declare-fun matchR!7838 (Regex!15653 List!63259) Bool)

(assert (=> b!5658429 (= lt!2267109 (matchR!7838 r!7292 s!2326))))

(declare-fun lt!2267094 () Unit!156144)

(declare-fun mainMatchTheorem!2756 (Regex!15653 List!63259) Unit!156144)

(assert (=> b!5658429 (= lt!2267094 (mainMatchTheorem!2756 r!7292 s!2326))))

(declare-fun b!5658430 () Bool)

(declare-fun res!2393440 () Bool)

(declare-fun e!3484912 () Bool)

(assert (=> b!5658430 (=> res!2393440 e!3484912)))

(declare-fun lt!2267108 () Context!10074)

(declare-fun contextDepthTotal!228 (Context!10074) Int)

(assert (=> b!5658430 (= res!2393440 (>= (contextDepthTotal!228 lt!2267108) (contextDepthTotal!228 (h!69584 zl!343))))))

(declare-fun b!5658431 () Bool)

(declare-fun res!2393434 () Bool)

(assert (=> b!5658431 (=> res!2393434 e!3484912)))

(declare-fun lt!2267111 () Bool)

(declare-fun lt!2267110 () (InoxSet Context!10074))

(assert (=> b!5658431 (= res!2393434 (not (= lt!2267111 (matchZipper!1791 lt!2267110 (t!376563 s!2326)))))))

(declare-fun b!5658432 () Bool)

(assert (=> b!5658432 (= e!3484910 (matchZipper!1791 lt!2267098 (t!376563 s!2326)))))

(declare-fun e!3484904 () Bool)

(declare-fun e!3484903 () Bool)

(assert (=> b!5658433 (= e!3484904 e!3484903)))

(declare-fun res!2393432 () Bool)

(assert (=> b!5658433 (=> res!2393432 e!3484903)))

(assert (=> b!5658433 (= res!2393432 (or (and ((_ is ElementMatch!15653) (regOne!31818 r!7292)) (= (c!994913 (regOne!31818 r!7292)) (h!69583 s!2326))) ((_ is Union!15653) (regOne!31818 r!7292))))))

(declare-fun lt!2267099 () Unit!156144)

(assert (=> b!5658433 (= lt!2267099 e!3484913)))

(declare-fun c!994912 () Bool)

(declare-fun nullable!5685 (Regex!15653) Bool)

(assert (=> b!5658433 (= c!994912 (nullable!5685 (h!69582 (exprs!5537 (h!69584 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10074))

(declare-fun lambda!304597 () Int)

(declare-fun flatMap!1266 ((InoxSet Context!10074) Int) (InoxSet Context!10074))

(declare-fun derivationStepZipperUp!921 (Context!10074 C!31576) (InoxSet Context!10074))

(assert (=> b!5658433 (= (flatMap!1266 z!1189 lambda!304597) (derivationStepZipperUp!921 (h!69584 zl!343) (h!69583 s!2326)))))

(declare-fun lt!2267101 () Unit!156144)

(declare-fun lemmaFlatMapOnSingletonSet!798 ((InoxSet Context!10074) Context!10074 Int) Unit!156144)

(assert (=> b!5658433 (= lt!2267101 (lemmaFlatMapOnSingletonSet!798 z!1189 (h!69584 zl!343) lambda!304597))))

(declare-fun lt!2267106 () Context!10074)

(assert (=> b!5658433 (= lt!2267098 (derivationStepZipperUp!921 lt!2267106 (h!69583 s!2326)))))

(declare-fun derivationStepZipperDown!995 (Regex!15653 Context!10074 C!31576) (InoxSet Context!10074))

(assert (=> b!5658433 (= lt!2267096 (derivationStepZipperDown!995 (h!69582 (exprs!5537 (h!69584 zl!343))) lt!2267106 (h!69583 s!2326)))))

(assert (=> b!5658433 (= lt!2267106 (Context!10075 (t!376562 (exprs!5537 (h!69584 zl!343)))))))

(declare-fun lt!2267104 () (InoxSet Context!10074))

(assert (=> b!5658433 (= lt!2267104 (derivationStepZipperUp!921 (Context!10075 (Cons!63134 (h!69582 (exprs!5537 (h!69584 zl!343))) (t!376562 (exprs!5537 (h!69584 zl!343))))) (h!69583 s!2326)))))

(declare-fun b!5658434 () Bool)

(declare-fun e!3484909 () Bool)

(declare-fun e!3484907 () Bool)

(assert (=> b!5658434 (= e!3484909 e!3484907)))

(declare-fun res!2393426 () Bool)

(assert (=> b!5658434 (=> res!2393426 e!3484907)))

(declare-fun lt!2267107 () (InoxSet Context!10074))

(assert (=> b!5658434 (= res!2393426 (not (= lt!2267111 (matchZipper!1791 lt!2267107 (t!376563 s!2326)))))))

(assert (=> b!5658434 (= lt!2267111 (matchZipper!1791 lt!2267096 (t!376563 s!2326)))))

(declare-fun b!5658436 () Bool)

(declare-fun e!3484911 () Bool)

(assert (=> b!5658436 (= e!3484911 (nullable!5685 (regOne!31818 (regOne!31818 r!7292))))))

(declare-fun b!5658437 () Bool)

(declare-fun res!2393431 () Bool)

(assert (=> b!5658437 (=> res!2393431 e!3484906)))

(declare-fun isEmpty!34981 (List!63260) Bool)

(assert (=> b!5658437 (= res!2393431 (not (isEmpty!34981 (t!376564 zl!343))))))

(declare-fun b!5658438 () Bool)

(declare-fun res!2393436 () Bool)

(assert (=> b!5658438 (=> res!2393436 e!3484906)))

(assert (=> b!5658438 (= res!2393436 (or ((_ is EmptyExpr!15653) r!7292) ((_ is EmptyLang!15653) r!7292) ((_ is ElementMatch!15653) r!7292) ((_ is Union!15653) r!7292) (not ((_ is Concat!24498) r!7292))))))

(declare-fun b!5658439 () Bool)

(declare-fun e!3484905 () Bool)

(declare-fun tp!1567369 () Bool)

(assert (=> b!5658439 (= e!3484905 tp!1567369)))

(assert (=> b!5658440 (= e!3484906 e!3484904)))

(declare-fun res!2393433 () Bool)

(assert (=> b!5658440 (=> res!2393433 e!3484904)))

(declare-fun lt!2267093 () Bool)

(assert (=> b!5658440 (= res!2393433 (or (not (= lt!2267109 lt!2267093)) ((_ is Nil!63135) s!2326)))))

(declare-fun Exists!2753 (Int) Bool)

(assert (=> b!5658440 (= (Exists!2753 lambda!304595) (Exists!2753 lambda!304596))))

(declare-fun lt!2267100 () Unit!156144)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1382 (Regex!15653 Regex!15653 List!63259) Unit!156144)

(assert (=> b!5658440 (= lt!2267100 (lemmaExistCutMatchRandMatchRSpecEquivalent!1382 (regOne!31818 r!7292) (regTwo!31818 r!7292) s!2326))))

(assert (=> b!5658440 (= lt!2267093 (Exists!2753 lambda!304595))))

(declare-datatypes ((tuple2!65500 0))(
  ( (tuple2!65501 (_1!36053 List!63259) (_2!36053 List!63259)) )
))
(declare-datatypes ((Option!15662 0))(
  ( (None!15661) (Some!15661 (v!51708 tuple2!65500)) )
))
(declare-fun isDefined!12365 (Option!15662) Bool)

(declare-fun findConcatSeparation!2076 (Regex!15653 Regex!15653 List!63259 List!63259 List!63259) Option!15662)

(assert (=> b!5658440 (= lt!2267093 (isDefined!12365 (findConcatSeparation!2076 (regOne!31818 r!7292) (regTwo!31818 r!7292) Nil!63135 s!2326 s!2326)))))

(declare-fun lt!2267112 () Unit!156144)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1840 (Regex!15653 Regex!15653 List!63259) Unit!156144)

(assert (=> b!5658440 (= lt!2267112 (lemmaFindConcatSeparationEquivalentToExists!1840 (regOne!31818 r!7292) (regTwo!31818 r!7292) s!2326))))

(declare-fun b!5658441 () Bool)

(declare-fun e!3484916 () Bool)

(declare-fun tp!1567377 () Bool)

(declare-fun tp!1567375 () Bool)

(assert (=> b!5658441 (= e!3484916 (and tp!1567377 tp!1567375))))

(declare-fun b!5658442 () Bool)

(assert (=> b!5658442 (= e!3484903 e!3484909)))

(declare-fun res!2393441 () Bool)

(assert (=> b!5658442 (=> res!2393441 e!3484909)))

(assert (=> b!5658442 (= res!2393441 (not (= lt!2267096 lt!2267107)))))

(declare-fun lt!2267102 () List!63258)

(assert (=> b!5658442 (= lt!2267107 (derivationStepZipperDown!995 (regOne!31818 (regOne!31818 r!7292)) (Context!10075 lt!2267102) (h!69583 s!2326)))))

(assert (=> b!5658442 (= lt!2267102 (Cons!63134 (regTwo!31818 (regOne!31818 r!7292)) (t!376562 (exprs!5537 (h!69584 zl!343)))))))

(declare-fun b!5658443 () Bool)

(assert (=> b!5658443 (= e!3484907 e!3484912)))

(declare-fun res!2393446 () Bool)

(assert (=> b!5658443 (=> res!2393446 e!3484912)))

(assert (=> b!5658443 (= res!2393446 (not (= lt!2267110 lt!2267107)))))

(declare-fun lt!2267105 () (InoxSet Context!10074))

(assert (=> b!5658443 (= (flatMap!1266 lt!2267105 lambda!304597) (derivationStepZipperUp!921 lt!2267108 (h!69583 s!2326)))))

(declare-fun lt!2267095 () Unit!156144)

(assert (=> b!5658443 (= lt!2267095 (lemmaFlatMapOnSingletonSet!798 lt!2267105 lt!2267108 lambda!304597))))

(declare-fun lt!2267097 () (InoxSet Context!10074))

(assert (=> b!5658443 (= lt!2267097 (derivationStepZipperUp!921 lt!2267108 (h!69583 s!2326)))))

(declare-fun derivationStepZipper!1738 ((InoxSet Context!10074) C!31576) (InoxSet Context!10074))

(assert (=> b!5658443 (= lt!2267110 (derivationStepZipper!1738 lt!2267105 (h!69583 s!2326)))))

(assert (=> b!5658443 (= lt!2267105 (store ((as const (Array Context!10074 Bool)) false) lt!2267108 true))))

(assert (=> b!5658443 (= lt!2267108 (Context!10075 (Cons!63134 (regOne!31818 (regOne!31818 r!7292)) lt!2267102)))))

(declare-fun b!5658444 () Bool)

(declare-fun res!2393425 () Bool)

(assert (=> b!5658444 (=> res!2393425 e!3484904)))

(declare-fun isEmpty!34982 (List!63258) Bool)

(assert (=> b!5658444 (= res!2393425 (isEmpty!34982 (t!376562 (exprs!5537 (h!69584 zl!343)))))))

(declare-fun b!5658445 () Bool)

(declare-fun zipperDepthTotal!250 (List!63260) Int)

(assert (=> b!5658445 (= e!3484912 (< (zipperDepthTotal!250 (Cons!63136 lt!2267108 Nil!63136)) (zipperDepthTotal!250 zl!343)))))

(declare-fun b!5658446 () Bool)

(declare-fun res!2393430 () Bool)

(assert (=> b!5658446 (=> res!2393430 e!3484906)))

(declare-fun generalisedConcat!1268 (List!63258) Regex!15653)

(assert (=> b!5658446 (= res!2393430 (not (= r!7292 (generalisedConcat!1268 (exprs!5537 (h!69584 zl!343))))))))

(declare-fun e!3484902 () Bool)

(declare-fun tp!1567370 () Bool)

(declare-fun e!3484914 () Bool)

(declare-fun b!5658447 () Bool)

(declare-fun inv!82379 (Context!10074) Bool)

(assert (=> b!5658447 (= e!3484902 (and (inv!82379 (h!69584 zl!343)) e!3484914 tp!1567370))))

(declare-fun b!5658448 () Bool)

(declare-fun tp!1567368 () Bool)

(declare-fun tp!1567376 () Bool)

(assert (=> b!5658448 (= e!3484916 (and tp!1567368 tp!1567376))))

(declare-fun b!5658449 () Bool)

(declare-fun res!2393427 () Bool)

(assert (=> b!5658449 (=> res!2393427 e!3484903)))

(assert (=> b!5658449 (= res!2393427 e!3484911)))

(declare-fun res!2393435 () Bool)

(assert (=> b!5658449 (=> (not res!2393435) (not e!3484911))))

(assert (=> b!5658449 (= res!2393435 ((_ is Concat!24498) (regOne!31818 r!7292)))))

(declare-fun tp!1567371 () Bool)

(declare-fun setElem!37844 () Context!10074)

(declare-fun setRes!37844 () Bool)

(declare-fun setNonEmpty!37844 () Bool)

(assert (=> setNonEmpty!37844 (= setRes!37844 (and tp!1567371 (inv!82379 setElem!37844) e!3484905))))

(declare-fun setRest!37844 () (InoxSet Context!10074))

(assert (=> setNonEmpty!37844 (= z!1189 ((_ map or) (store ((as const (Array Context!10074 Bool)) false) setElem!37844 true) setRest!37844))))

(declare-fun setIsEmpty!37844 () Bool)

(assert (=> setIsEmpty!37844 setRes!37844))

(declare-fun b!5658450 () Bool)

(declare-fun res!2393442 () Bool)

(assert (=> b!5658450 (=> res!2393442 e!3484912)))

(assert (=> b!5658450 (= res!2393442 (not (= (exprs!5537 (h!69584 zl!343)) (Cons!63134 (Concat!24498 (regOne!31818 (regOne!31818 r!7292)) (regTwo!31818 (regOne!31818 r!7292))) (t!376562 (exprs!5537 (h!69584 zl!343)))))))))

(declare-fun b!5658451 () Bool)

(declare-fun res!2393439 () Bool)

(assert (=> b!5658451 (=> (not res!2393439) (not e!3484908))))

(declare-fun unfocusZipper!1395 (List!63260) Regex!15653)

(assert (=> b!5658451 (= res!2393439 (= r!7292 (unfocusZipper!1395 zl!343)))))

(declare-fun b!5658452 () Bool)

(declare-fun tp!1567372 () Bool)

(assert (=> b!5658452 (= e!3484916 tp!1567372)))

(declare-fun res!2393445 () Bool)

(assert (=> start!585114 (=> (not res!2393445) (not e!3484908))))

(declare-fun validRegex!7389 (Regex!15653) Bool)

(assert (=> start!585114 (= res!2393445 (validRegex!7389 r!7292))))

(assert (=> start!585114 e!3484908))

(assert (=> start!585114 e!3484916))

(declare-fun condSetEmpty!37844 () Bool)

(assert (=> start!585114 (= condSetEmpty!37844 (= z!1189 ((as const (Array Context!10074 Bool)) false)))))

(assert (=> start!585114 setRes!37844))

(assert (=> start!585114 e!3484902))

(declare-fun e!3484915 () Bool)

(assert (=> start!585114 e!3484915))

(declare-fun b!5658435 () Bool)

(declare-fun tp!1567373 () Bool)

(assert (=> b!5658435 (= e!3484914 tp!1567373)))

(declare-fun b!5658453 () Bool)

(declare-fun tp_is_empty!40559 () Bool)

(assert (=> b!5658453 (= e!3484916 tp_is_empty!40559)))

(declare-fun b!5658454 () Bool)

(declare-fun res!2393443 () Bool)

(assert (=> b!5658454 (=> (not res!2393443) (not e!3484908))))

(declare-fun toList!9437 ((InoxSet Context!10074)) List!63260)

(assert (=> b!5658454 (= res!2393443 (= (toList!9437 z!1189) zl!343))))

(declare-fun b!5658455 () Bool)

(declare-fun res!2393429 () Bool)

(assert (=> b!5658455 (=> res!2393429 e!3484903)))

(assert (=> b!5658455 (= res!2393429 (not ((_ is Concat!24498) (regOne!31818 r!7292))))))

(declare-fun b!5658456 () Bool)

(declare-fun Unit!156147 () Unit!156144)

(assert (=> b!5658456 (= e!3484913 Unit!156147)))

(declare-fun b!5658457 () Bool)

(declare-fun res!2393444 () Bool)

(assert (=> b!5658457 (=> res!2393444 e!3484906)))

(assert (=> b!5658457 (= res!2393444 (not ((_ is Cons!63134) (exprs!5537 (h!69584 zl!343)))))))

(declare-fun b!5658458 () Bool)

(declare-fun res!2393438 () Bool)

(assert (=> b!5658458 (=> res!2393438 e!3484906)))

(declare-fun generalisedUnion!1516 (List!63258) Regex!15653)

(declare-fun unfocusZipperList!1081 (List!63260) List!63258)

(assert (=> b!5658458 (= res!2393438 (not (= r!7292 (generalisedUnion!1516 (unfocusZipperList!1081 zl!343)))))))

(declare-fun b!5658459 () Bool)

(declare-fun tp!1567374 () Bool)

(assert (=> b!5658459 (= e!3484915 (and tp_is_empty!40559 tp!1567374))))

(assert (= (and start!585114 res!2393445) b!5658454))

(assert (= (and b!5658454 res!2393443) b!5658451))

(assert (= (and b!5658451 res!2393439) b!5658429))

(assert (= (and b!5658429 (not res!2393428)) b!5658437))

(assert (= (and b!5658437 (not res!2393431)) b!5658446))

(assert (= (and b!5658446 (not res!2393430)) b!5658457))

(assert (= (and b!5658457 (not res!2393444)) b!5658458))

(assert (= (and b!5658458 (not res!2393438)) b!5658438))

(assert (= (and b!5658438 (not res!2393436)) b!5658440))

(assert (= (and b!5658440 (not res!2393433)) b!5658444))

(assert (= (and b!5658444 (not res!2393425)) b!5658433))

(assert (= (and b!5658433 c!994912) b!5658428))

(assert (= (and b!5658433 (not c!994912)) b!5658456))

(assert (= (and b!5658428 (not res!2393437)) b!5658432))

(assert (= (and b!5658433 (not res!2393432)) b!5658449))

(assert (= (and b!5658449 res!2393435) b!5658436))

(assert (= (and b!5658449 (not res!2393427)) b!5658455))

(assert (= (and b!5658455 (not res!2393429)) b!5658442))

(assert (= (and b!5658442 (not res!2393441)) b!5658434))

(assert (= (and b!5658434 (not res!2393426)) b!5658443))

(assert (= (and b!5658443 (not res!2393446)) b!5658431))

(assert (= (and b!5658431 (not res!2393434)) b!5658450))

(assert (= (and b!5658450 (not res!2393442)) b!5658430))

(assert (= (and b!5658430 (not res!2393440)) b!5658445))

(assert (= (and start!585114 ((_ is ElementMatch!15653) r!7292)) b!5658453))

(assert (= (and start!585114 ((_ is Concat!24498) r!7292)) b!5658448))

(assert (= (and start!585114 ((_ is Star!15653) r!7292)) b!5658452))

(assert (= (and start!585114 ((_ is Union!15653) r!7292)) b!5658441))

(assert (= (and start!585114 condSetEmpty!37844) setIsEmpty!37844))

(assert (= (and start!585114 (not condSetEmpty!37844)) setNonEmpty!37844))

(assert (= setNonEmpty!37844 b!5658439))

(assert (= b!5658447 b!5658435))

(assert (= (and start!585114 ((_ is Cons!63136) zl!343)) b!5658447))

(assert (= (and start!585114 ((_ is Cons!63135) s!2326)) b!5658459))

(declare-fun m!6623850 () Bool)

(assert (=> b!5658440 m!6623850))

(declare-fun m!6623852 () Bool)

(assert (=> b!5658440 m!6623852))

(declare-fun m!6623854 () Bool)

(assert (=> b!5658440 m!6623854))

(declare-fun m!6623856 () Bool)

(assert (=> b!5658440 m!6623856))

(declare-fun m!6623858 () Bool)

(assert (=> b!5658440 m!6623858))

(assert (=> b!5658440 m!6623854))

(assert (=> b!5658440 m!6623850))

(declare-fun m!6623860 () Bool)

(assert (=> b!5658440 m!6623860))

(declare-fun m!6623862 () Bool)

(assert (=> b!5658451 m!6623862))

(declare-fun m!6623864 () Bool)

(assert (=> b!5658436 m!6623864))

(declare-fun m!6623866 () Bool)

(assert (=> b!5658430 m!6623866))

(declare-fun m!6623868 () Bool)

(assert (=> b!5658430 m!6623868))

(declare-fun m!6623870 () Bool)

(assert (=> b!5658442 m!6623870))

(declare-fun m!6623872 () Bool)

(assert (=> b!5658443 m!6623872))

(declare-fun m!6623874 () Bool)

(assert (=> b!5658443 m!6623874))

(declare-fun m!6623876 () Bool)

(assert (=> b!5658443 m!6623876))

(declare-fun m!6623878 () Bool)

(assert (=> b!5658443 m!6623878))

(declare-fun m!6623880 () Bool)

(assert (=> b!5658443 m!6623880))

(declare-fun m!6623882 () Bool)

(assert (=> b!5658447 m!6623882))

(declare-fun m!6623884 () Bool)

(assert (=> setNonEmpty!37844 m!6623884))

(declare-fun m!6623886 () Bool)

(assert (=> b!5658445 m!6623886))

(declare-fun m!6623888 () Bool)

(assert (=> b!5658445 m!6623888))

(declare-fun m!6623890 () Bool)

(assert (=> b!5658454 m!6623890))

(declare-fun m!6623892 () Bool)

(assert (=> b!5658428 m!6623892))

(declare-fun m!6623894 () Bool)

(assert (=> b!5658428 m!6623894))

(declare-fun m!6623896 () Bool)

(assert (=> b!5658428 m!6623896))

(declare-fun m!6623898 () Bool)

(assert (=> b!5658429 m!6623898))

(declare-fun m!6623900 () Bool)

(assert (=> b!5658429 m!6623900))

(declare-fun m!6623902 () Bool)

(assert (=> b!5658429 m!6623902))

(declare-fun m!6623904 () Bool)

(assert (=> start!585114 m!6623904))

(declare-fun m!6623906 () Bool)

(assert (=> b!5658434 m!6623906))

(assert (=> b!5658434 m!6623894))

(declare-fun m!6623908 () Bool)

(assert (=> b!5658432 m!6623908))

(declare-fun m!6623910 () Bool)

(assert (=> b!5658433 m!6623910))

(declare-fun m!6623912 () Bool)

(assert (=> b!5658433 m!6623912))

(declare-fun m!6623914 () Bool)

(assert (=> b!5658433 m!6623914))

(declare-fun m!6623916 () Bool)

(assert (=> b!5658433 m!6623916))

(declare-fun m!6623918 () Bool)

(assert (=> b!5658433 m!6623918))

(declare-fun m!6623920 () Bool)

(assert (=> b!5658433 m!6623920))

(declare-fun m!6623922 () Bool)

(assert (=> b!5658433 m!6623922))

(declare-fun m!6623924 () Bool)

(assert (=> b!5658444 m!6623924))

(declare-fun m!6623926 () Bool)

(assert (=> b!5658446 m!6623926))

(declare-fun m!6623928 () Bool)

(assert (=> b!5658458 m!6623928))

(assert (=> b!5658458 m!6623928))

(declare-fun m!6623930 () Bool)

(assert (=> b!5658458 m!6623930))

(declare-fun m!6623932 () Bool)

(assert (=> b!5658437 m!6623932))

(declare-fun m!6623934 () Bool)

(assert (=> b!5658431 m!6623934))

(check-sat (not b!5658439) (not b!5658458) (not b!5658436) (not b!5658440) (not b!5658451) (not b!5658448) (not b!5658443) (not b!5658428) (not b!5658459) (not b!5658446) (not b!5658434) (not start!585114) (not b!5658437) (not b!5658435) (not b!5658441) (not b!5658432) (not setNonEmpty!37844) (not b!5658445) (not b!5658454) (not b!5658447) (not b!5658430) (not b!5658442) (not b!5658431) (not b!5658452) tp_is_empty!40559 (not b!5658429) (not b!5658433) (not b!5658444))
(check-sat)
(get-model)

(declare-fun d!1786712 () Bool)

(declare-fun c!994939 () Bool)

(declare-fun isEmpty!34984 (List!63259) Bool)

(assert (=> d!1786712 (= c!994939 (isEmpty!34984 (t!376563 s!2326)))))

(declare-fun e!3484962 () Bool)

(assert (=> d!1786712 (= (matchZipper!1791 lt!2267107 (t!376563 s!2326)) e!3484962)))

(declare-fun b!5658536 () Bool)

(declare-fun nullableZipper!1625 ((InoxSet Context!10074)) Bool)

(assert (=> b!5658536 (= e!3484962 (nullableZipper!1625 lt!2267107))))

(declare-fun b!5658537 () Bool)

(declare-fun head!12029 (List!63259) C!31576)

(declare-fun tail!11124 (List!63259) List!63259)

(assert (=> b!5658537 (= e!3484962 (matchZipper!1791 (derivationStepZipper!1738 lt!2267107 (head!12029 (t!376563 s!2326))) (tail!11124 (t!376563 s!2326))))))

(assert (= (and d!1786712 c!994939) b!5658536))

(assert (= (and d!1786712 (not c!994939)) b!5658537))

(declare-fun m!6623970 () Bool)

(assert (=> d!1786712 m!6623970))

(declare-fun m!6623972 () Bool)

(assert (=> b!5658536 m!6623972))

(declare-fun m!6623974 () Bool)

(assert (=> b!5658537 m!6623974))

(assert (=> b!5658537 m!6623974))

(declare-fun m!6623976 () Bool)

(assert (=> b!5658537 m!6623976))

(declare-fun m!6623978 () Bool)

(assert (=> b!5658537 m!6623978))

(assert (=> b!5658537 m!6623976))

(assert (=> b!5658537 m!6623978))

(declare-fun m!6623980 () Bool)

(assert (=> b!5658537 m!6623980))

(assert (=> b!5658434 d!1786712))

(declare-fun d!1786720 () Bool)

(declare-fun c!994940 () Bool)

(assert (=> d!1786720 (= c!994940 (isEmpty!34984 (t!376563 s!2326)))))

(declare-fun e!3484963 () Bool)

(assert (=> d!1786720 (= (matchZipper!1791 lt!2267096 (t!376563 s!2326)) e!3484963)))

(declare-fun b!5658538 () Bool)

(assert (=> b!5658538 (= e!3484963 (nullableZipper!1625 lt!2267096))))

(declare-fun b!5658539 () Bool)

(assert (=> b!5658539 (= e!3484963 (matchZipper!1791 (derivationStepZipper!1738 lt!2267096 (head!12029 (t!376563 s!2326))) (tail!11124 (t!376563 s!2326))))))

(assert (= (and d!1786720 c!994940) b!5658538))

(assert (= (and d!1786720 (not c!994940)) b!5658539))

(assert (=> d!1786720 m!6623970))

(declare-fun m!6623982 () Bool)

(assert (=> b!5658538 m!6623982))

(assert (=> b!5658539 m!6623974))

(assert (=> b!5658539 m!6623974))

(declare-fun m!6623984 () Bool)

(assert (=> b!5658539 m!6623984))

(assert (=> b!5658539 m!6623978))

(assert (=> b!5658539 m!6623984))

(assert (=> b!5658539 m!6623978))

(declare-fun m!6623986 () Bool)

(assert (=> b!5658539 m!6623986))

(assert (=> b!5658434 d!1786720))

(declare-fun d!1786722 () Bool)

(declare-fun lt!2267125 () Int)

(assert (=> d!1786722 (>= lt!2267125 0)))

(declare-fun e!3484972 () Int)

(assert (=> d!1786722 (= lt!2267125 e!3484972)))

(declare-fun c!994948 () Bool)

(assert (=> d!1786722 (= c!994948 ((_ is Cons!63136) (Cons!63136 lt!2267108 Nil!63136)))))

(assert (=> d!1786722 (= (zipperDepthTotal!250 (Cons!63136 lt!2267108 Nil!63136)) lt!2267125)))

(declare-fun b!5658555 () Bool)

(assert (=> b!5658555 (= e!3484972 (+ (contextDepthTotal!228 (h!69584 (Cons!63136 lt!2267108 Nil!63136))) (zipperDepthTotal!250 (t!376564 (Cons!63136 lt!2267108 Nil!63136)))))))

(declare-fun b!5658556 () Bool)

(assert (=> b!5658556 (= e!3484972 0)))

(assert (= (and d!1786722 c!994948) b!5658555))

(assert (= (and d!1786722 (not c!994948)) b!5658556))

(declare-fun m!6623998 () Bool)

(assert (=> b!5658555 m!6623998))

(declare-fun m!6624000 () Bool)

(assert (=> b!5658555 m!6624000))

(assert (=> b!5658445 d!1786722))

(declare-fun d!1786726 () Bool)

(declare-fun lt!2267126 () Int)

(assert (=> d!1786726 (>= lt!2267126 0)))

(declare-fun e!3484973 () Int)

(assert (=> d!1786726 (= lt!2267126 e!3484973)))

(declare-fun c!994949 () Bool)

(assert (=> d!1786726 (= c!994949 ((_ is Cons!63136) zl!343))))

(assert (=> d!1786726 (= (zipperDepthTotal!250 zl!343) lt!2267126)))

(declare-fun b!5658557 () Bool)

(assert (=> b!5658557 (= e!3484973 (+ (contextDepthTotal!228 (h!69584 zl!343)) (zipperDepthTotal!250 (t!376564 zl!343))))))

(declare-fun b!5658558 () Bool)

(assert (=> b!5658558 (= e!3484973 0)))

(assert (= (and d!1786726 c!994949) b!5658557))

(assert (= (and d!1786726 (not c!994949)) b!5658558))

(assert (=> b!5658557 m!6623868))

(declare-fun m!6624002 () Bool)

(assert (=> b!5658557 m!6624002))

(assert (=> b!5658445 d!1786726))

(declare-fun d!1786728 () Bool)

(declare-fun e!3484982 () Bool)

(assert (=> d!1786728 e!3484982))

(declare-fun res!2393472 () Bool)

(assert (=> d!1786728 (=> (not res!2393472) (not e!3484982))))

(declare-fun lt!2267129 () List!63260)

(declare-fun noDuplicate!1605 (List!63260) Bool)

(assert (=> d!1786728 (= res!2393472 (noDuplicate!1605 lt!2267129))))

(declare-fun choose!42852 ((InoxSet Context!10074)) List!63260)

(assert (=> d!1786728 (= lt!2267129 (choose!42852 z!1189))))

(assert (=> d!1786728 (= (toList!9437 z!1189) lt!2267129)))

(declare-fun b!5658571 () Bool)

(declare-fun content!11428 (List!63260) (InoxSet Context!10074))

(assert (=> b!5658571 (= e!3484982 (= (content!11428 lt!2267129) z!1189))))

(assert (= (and d!1786728 res!2393472) b!5658571))

(declare-fun m!6624008 () Bool)

(assert (=> d!1786728 m!6624008))

(declare-fun m!6624010 () Bool)

(assert (=> d!1786728 m!6624010))

(declare-fun m!6624012 () Bool)

(assert (=> b!5658571 m!6624012))

(assert (=> b!5658454 d!1786728))

(declare-fun d!1786734 () Bool)

(declare-fun choose!42853 ((InoxSet Context!10074) Int) (InoxSet Context!10074))

(assert (=> d!1786734 (= (flatMap!1266 z!1189 lambda!304597) (choose!42853 z!1189 lambda!304597))))

(declare-fun bs!1315600 () Bool)

(assert (= bs!1315600 d!1786734))

(declare-fun m!6624020 () Bool)

(assert (=> bs!1315600 m!6624020))

(assert (=> b!5658433 d!1786734))

(declare-fun b!5658597 () Bool)

(declare-fun e!3484998 () (InoxSet Context!10074))

(declare-fun call!428336 () (InoxSet Context!10074))

(assert (=> b!5658597 (= e!3484998 ((_ map or) call!428336 (derivationStepZipperUp!921 (Context!10075 (t!376562 (exprs!5537 lt!2267106))) (h!69583 s!2326))))))

(declare-fun b!5658598 () Bool)

(declare-fun e!3484996 () (InoxSet Context!10074))

(assert (=> b!5658598 (= e!3484998 e!3484996)))

(declare-fun c!994967 () Bool)

(assert (=> b!5658598 (= c!994967 ((_ is Cons!63134) (exprs!5537 lt!2267106)))))

(declare-fun b!5658599 () Bool)

(assert (=> b!5658599 (= e!3484996 call!428336)))

(declare-fun b!5658600 () Bool)

(assert (=> b!5658600 (= e!3484996 ((as const (Array Context!10074 Bool)) false))))

(declare-fun bm!428331 () Bool)

(assert (=> bm!428331 (= call!428336 (derivationStepZipperDown!995 (h!69582 (exprs!5537 lt!2267106)) (Context!10075 (t!376562 (exprs!5537 lt!2267106))) (h!69583 s!2326)))))

(declare-fun d!1786738 () Bool)

(declare-fun c!994968 () Bool)

(declare-fun e!3484997 () Bool)

(assert (=> d!1786738 (= c!994968 e!3484997)))

(declare-fun res!2393476 () Bool)

(assert (=> d!1786738 (=> (not res!2393476) (not e!3484997))))

(assert (=> d!1786738 (= res!2393476 ((_ is Cons!63134) (exprs!5537 lt!2267106)))))

(assert (=> d!1786738 (= (derivationStepZipperUp!921 lt!2267106 (h!69583 s!2326)) e!3484998)))

(declare-fun b!5658601 () Bool)

(assert (=> b!5658601 (= e!3484997 (nullable!5685 (h!69582 (exprs!5537 lt!2267106))))))

(assert (= (and d!1786738 res!2393476) b!5658601))

(assert (= (and d!1786738 c!994968) b!5658597))

(assert (= (and d!1786738 (not c!994968)) b!5658598))

(assert (= (and b!5658598 c!994967) b!5658599))

(assert (= (and b!5658598 (not c!994967)) b!5658600))

(assert (= (or b!5658597 b!5658599) bm!428331))

(declare-fun m!6624036 () Bool)

(assert (=> b!5658597 m!6624036))

(declare-fun m!6624038 () Bool)

(assert (=> bm!428331 m!6624038))

(declare-fun m!6624040 () Bool)

(assert (=> b!5658601 m!6624040))

(assert (=> b!5658433 d!1786738))

(declare-fun b!5658681 () Bool)

(declare-fun e!3485044 () (InoxSet Context!10074))

(declare-fun call!428349 () (InoxSet Context!10074))

(assert (=> b!5658681 (= e!3485044 call!428349)))

(declare-fun b!5658682 () Bool)

(declare-fun e!3485045 () (InoxSet Context!10074))

(assert (=> b!5658682 (= e!3485045 ((as const (Array Context!10074 Bool)) false))))

(declare-fun b!5658684 () Bool)

(declare-fun c!994999 () Bool)

(declare-fun e!3485049 () Bool)

(assert (=> b!5658684 (= c!994999 e!3485049)))

(declare-fun res!2393500 () Bool)

(assert (=> b!5658684 (=> (not res!2393500) (not e!3485049))))

(assert (=> b!5658684 (= res!2393500 ((_ is Concat!24498) (h!69582 (exprs!5537 (h!69584 zl!343)))))))

(declare-fun e!3485046 () (InoxSet Context!10074))

(declare-fun e!3485047 () (InoxSet Context!10074))

(assert (=> b!5658684 (= e!3485046 e!3485047)))

(declare-fun bm!428344 () Bool)

(declare-fun call!428351 () (InoxSet Context!10074))

(declare-fun call!428350 () (InoxSet Context!10074))

(assert (=> bm!428344 (= call!428351 call!428350)))

(declare-fun bm!428345 () Bool)

(declare-fun call!428352 () List!63258)

(declare-fun call!428354 () List!63258)

(assert (=> bm!428345 (= call!428352 call!428354)))

(declare-fun call!428353 () (InoxSet Context!10074))

(declare-fun c!995000 () Bool)

(declare-fun bm!428346 () Bool)

(assert (=> bm!428346 (= call!428353 (derivationStepZipperDown!995 (ite c!995000 (regTwo!31819 (h!69582 (exprs!5537 (h!69584 zl!343)))) (regOne!31818 (h!69582 (exprs!5537 (h!69584 zl!343))))) (ite c!995000 lt!2267106 (Context!10075 call!428354)) (h!69583 s!2326)))))

(declare-fun c!995001 () Bool)

(declare-fun bm!428347 () Bool)

(assert (=> bm!428347 (= call!428350 (derivationStepZipperDown!995 (ite c!995000 (regOne!31819 (h!69582 (exprs!5537 (h!69584 zl!343)))) (ite c!994999 (regTwo!31818 (h!69582 (exprs!5537 (h!69584 zl!343)))) (ite c!995001 (regOne!31818 (h!69582 (exprs!5537 (h!69584 zl!343)))) (reg!15982 (h!69582 (exprs!5537 (h!69584 zl!343))))))) (ite (or c!995000 c!994999) lt!2267106 (Context!10075 call!428352)) (h!69583 s!2326)))))

(declare-fun b!5658685 () Bool)

(declare-fun e!3485048 () (InoxSet Context!10074))

(assert (=> b!5658685 (= e!3485048 (store ((as const (Array Context!10074 Bool)) false) lt!2267106 true))))

(declare-fun b!5658686 () Bool)

(assert (=> b!5658686 (= e!3485046 ((_ map or) call!428350 call!428353))))

(declare-fun bm!428348 () Bool)

(assert (=> bm!428348 (= call!428349 call!428351)))

(declare-fun d!1786748 () Bool)

(declare-fun c!994998 () Bool)

(assert (=> d!1786748 (= c!994998 (and ((_ is ElementMatch!15653) (h!69582 (exprs!5537 (h!69584 zl!343)))) (= (c!994913 (h!69582 (exprs!5537 (h!69584 zl!343)))) (h!69583 s!2326))))))

(assert (=> d!1786748 (= (derivationStepZipperDown!995 (h!69582 (exprs!5537 (h!69584 zl!343))) lt!2267106 (h!69583 s!2326)) e!3485048)))

(declare-fun b!5658683 () Bool)

(assert (=> b!5658683 (= e!3485049 (nullable!5685 (regOne!31818 (h!69582 (exprs!5537 (h!69584 zl!343))))))))

(declare-fun b!5658687 () Bool)

(assert (=> b!5658687 (= e!3485048 e!3485046)))

(assert (=> b!5658687 (= c!995000 ((_ is Union!15653) (h!69582 (exprs!5537 (h!69584 zl!343)))))))

(declare-fun bm!428349 () Bool)

(declare-fun $colon$colon!1692 (List!63258 Regex!15653) List!63258)

(assert (=> bm!428349 (= call!428354 ($colon$colon!1692 (exprs!5537 lt!2267106) (ite (or c!994999 c!995001) (regTwo!31818 (h!69582 (exprs!5537 (h!69584 zl!343)))) (h!69582 (exprs!5537 (h!69584 zl!343))))))))

(declare-fun b!5658688 () Bool)

(assert (=> b!5658688 (= e!3485047 ((_ map or) call!428353 call!428351))))

(declare-fun b!5658689 () Bool)

(declare-fun c!994997 () Bool)

(assert (=> b!5658689 (= c!994997 ((_ is Star!15653) (h!69582 (exprs!5537 (h!69584 zl!343)))))))

(assert (=> b!5658689 (= e!3485044 e!3485045)))

(declare-fun b!5658690 () Bool)

(assert (=> b!5658690 (= e!3485045 call!428349)))

(declare-fun b!5658691 () Bool)

(assert (=> b!5658691 (= e!3485047 e!3485044)))

(assert (=> b!5658691 (= c!995001 ((_ is Concat!24498) (h!69582 (exprs!5537 (h!69584 zl!343)))))))

(assert (= (and d!1786748 c!994998) b!5658685))

(assert (= (and d!1786748 (not c!994998)) b!5658687))

(assert (= (and b!5658687 c!995000) b!5658686))

(assert (= (and b!5658687 (not c!995000)) b!5658684))

(assert (= (and b!5658684 res!2393500) b!5658683))

(assert (= (and b!5658684 c!994999) b!5658688))

(assert (= (and b!5658684 (not c!994999)) b!5658691))

(assert (= (and b!5658691 c!995001) b!5658681))

(assert (= (and b!5658691 (not c!995001)) b!5658689))

(assert (= (and b!5658689 c!994997) b!5658690))

(assert (= (and b!5658689 (not c!994997)) b!5658682))

(assert (= (or b!5658681 b!5658690) bm!428345))

(assert (= (or b!5658681 b!5658690) bm!428348))

(assert (= (or b!5658688 bm!428345) bm!428349))

(assert (= (or b!5658688 bm!428348) bm!428344))

(assert (= (or b!5658686 b!5658688) bm!428346))

(assert (= (or b!5658686 bm!428344) bm!428347))

(declare-fun m!6624084 () Bool)

(assert (=> b!5658683 m!6624084))

(declare-fun m!6624086 () Bool)

(assert (=> b!5658685 m!6624086))

(declare-fun m!6624088 () Bool)

(assert (=> bm!428347 m!6624088))

(declare-fun m!6624090 () Bool)

(assert (=> bm!428346 m!6624090))

(declare-fun m!6624092 () Bool)

(assert (=> bm!428349 m!6624092))

(assert (=> b!5658433 d!1786748))

(declare-fun d!1786754 () Bool)

(declare-fun nullableFct!1771 (Regex!15653) Bool)

(assert (=> d!1786754 (= (nullable!5685 (h!69582 (exprs!5537 (h!69584 zl!343)))) (nullableFct!1771 (h!69582 (exprs!5537 (h!69584 zl!343)))))))

(declare-fun bs!1315606 () Bool)

(assert (= bs!1315606 d!1786754))

(declare-fun m!6624096 () Bool)

(assert (=> bs!1315606 m!6624096))

(assert (=> b!5658433 d!1786754))

(declare-fun call!428355 () (InoxSet Context!10074))

(declare-fun e!3485052 () (InoxSet Context!10074))

(declare-fun b!5658692 () Bool)

(assert (=> b!5658692 (= e!3485052 ((_ map or) call!428355 (derivationStepZipperUp!921 (Context!10075 (t!376562 (exprs!5537 (Context!10075 (Cons!63134 (h!69582 (exprs!5537 (h!69584 zl!343))) (t!376562 (exprs!5537 (h!69584 zl!343)))))))) (h!69583 s!2326))))))

(declare-fun b!5658693 () Bool)

(declare-fun e!3485050 () (InoxSet Context!10074))

(assert (=> b!5658693 (= e!3485052 e!3485050)))

(declare-fun c!995002 () Bool)

(assert (=> b!5658693 (= c!995002 ((_ is Cons!63134) (exprs!5537 (Context!10075 (Cons!63134 (h!69582 (exprs!5537 (h!69584 zl!343))) (t!376562 (exprs!5537 (h!69584 zl!343))))))))))

(declare-fun b!5658694 () Bool)

(assert (=> b!5658694 (= e!3485050 call!428355)))

(declare-fun b!5658695 () Bool)

(assert (=> b!5658695 (= e!3485050 ((as const (Array Context!10074 Bool)) false))))

(declare-fun bm!428350 () Bool)

(assert (=> bm!428350 (= call!428355 (derivationStepZipperDown!995 (h!69582 (exprs!5537 (Context!10075 (Cons!63134 (h!69582 (exprs!5537 (h!69584 zl!343))) (t!376562 (exprs!5537 (h!69584 zl!343))))))) (Context!10075 (t!376562 (exprs!5537 (Context!10075 (Cons!63134 (h!69582 (exprs!5537 (h!69584 zl!343))) (t!376562 (exprs!5537 (h!69584 zl!343)))))))) (h!69583 s!2326)))))

(declare-fun d!1786758 () Bool)

(declare-fun c!995003 () Bool)

(declare-fun e!3485051 () Bool)

(assert (=> d!1786758 (= c!995003 e!3485051)))

(declare-fun res!2393501 () Bool)

(assert (=> d!1786758 (=> (not res!2393501) (not e!3485051))))

(assert (=> d!1786758 (= res!2393501 ((_ is Cons!63134) (exprs!5537 (Context!10075 (Cons!63134 (h!69582 (exprs!5537 (h!69584 zl!343))) (t!376562 (exprs!5537 (h!69584 zl!343))))))))))

(assert (=> d!1786758 (= (derivationStepZipperUp!921 (Context!10075 (Cons!63134 (h!69582 (exprs!5537 (h!69584 zl!343))) (t!376562 (exprs!5537 (h!69584 zl!343))))) (h!69583 s!2326)) e!3485052)))

(declare-fun b!5658696 () Bool)

(assert (=> b!5658696 (= e!3485051 (nullable!5685 (h!69582 (exprs!5537 (Context!10075 (Cons!63134 (h!69582 (exprs!5537 (h!69584 zl!343))) (t!376562 (exprs!5537 (h!69584 zl!343)))))))))))

(assert (= (and d!1786758 res!2393501) b!5658696))

(assert (= (and d!1786758 c!995003) b!5658692))

(assert (= (and d!1786758 (not c!995003)) b!5658693))

(assert (= (and b!5658693 c!995002) b!5658694))

(assert (= (and b!5658693 (not c!995002)) b!5658695))

(assert (= (or b!5658692 b!5658694) bm!428350))

(declare-fun m!6624098 () Bool)

(assert (=> b!5658692 m!6624098))

(declare-fun m!6624100 () Bool)

(assert (=> bm!428350 m!6624100))

(declare-fun m!6624102 () Bool)

(assert (=> b!5658696 m!6624102))

(assert (=> b!5658433 d!1786758))

(declare-fun call!428356 () (InoxSet Context!10074))

(declare-fun e!3485055 () (InoxSet Context!10074))

(declare-fun b!5658697 () Bool)

(assert (=> b!5658697 (= e!3485055 ((_ map or) call!428356 (derivationStepZipperUp!921 (Context!10075 (t!376562 (exprs!5537 (h!69584 zl!343)))) (h!69583 s!2326))))))

(declare-fun b!5658698 () Bool)

(declare-fun e!3485053 () (InoxSet Context!10074))

(assert (=> b!5658698 (= e!3485055 e!3485053)))

(declare-fun c!995004 () Bool)

(assert (=> b!5658698 (= c!995004 ((_ is Cons!63134) (exprs!5537 (h!69584 zl!343))))))

(declare-fun b!5658699 () Bool)

(assert (=> b!5658699 (= e!3485053 call!428356)))

(declare-fun b!5658700 () Bool)

(assert (=> b!5658700 (= e!3485053 ((as const (Array Context!10074 Bool)) false))))

(declare-fun bm!428351 () Bool)

(assert (=> bm!428351 (= call!428356 (derivationStepZipperDown!995 (h!69582 (exprs!5537 (h!69584 zl!343))) (Context!10075 (t!376562 (exprs!5537 (h!69584 zl!343)))) (h!69583 s!2326)))))

(declare-fun d!1786760 () Bool)

(declare-fun c!995005 () Bool)

(declare-fun e!3485054 () Bool)

(assert (=> d!1786760 (= c!995005 e!3485054)))

(declare-fun res!2393502 () Bool)

(assert (=> d!1786760 (=> (not res!2393502) (not e!3485054))))

(assert (=> d!1786760 (= res!2393502 ((_ is Cons!63134) (exprs!5537 (h!69584 zl!343))))))

(assert (=> d!1786760 (= (derivationStepZipperUp!921 (h!69584 zl!343) (h!69583 s!2326)) e!3485055)))

(declare-fun b!5658701 () Bool)

(assert (=> b!5658701 (= e!3485054 (nullable!5685 (h!69582 (exprs!5537 (h!69584 zl!343)))))))

(assert (= (and d!1786760 res!2393502) b!5658701))

(assert (= (and d!1786760 c!995005) b!5658697))

(assert (= (and d!1786760 (not c!995005)) b!5658698))

(assert (= (and b!5658698 c!995004) b!5658699))

(assert (= (and b!5658698 (not c!995004)) b!5658700))

(assert (= (or b!5658697 b!5658699) bm!428351))

(declare-fun m!6624104 () Bool)

(assert (=> b!5658697 m!6624104))

(declare-fun m!6624106 () Bool)

(assert (=> bm!428351 m!6624106))

(assert (=> b!5658701 m!6623920))

(assert (=> b!5658433 d!1786760))

(declare-fun d!1786762 () Bool)

(declare-fun dynLambda!24698 (Int Context!10074) (InoxSet Context!10074))

(assert (=> d!1786762 (= (flatMap!1266 z!1189 lambda!304597) (dynLambda!24698 lambda!304597 (h!69584 zl!343)))))

(declare-fun lt!2267151 () Unit!156144)

(declare-fun choose!42856 ((InoxSet Context!10074) Context!10074 Int) Unit!156144)

(assert (=> d!1786762 (= lt!2267151 (choose!42856 z!1189 (h!69584 zl!343) lambda!304597))))

(assert (=> d!1786762 (= z!1189 (store ((as const (Array Context!10074 Bool)) false) (h!69584 zl!343) true))))

(assert (=> d!1786762 (= (lemmaFlatMapOnSingletonSet!798 z!1189 (h!69584 zl!343) lambda!304597) lt!2267151)))

(declare-fun b_lambda!213957 () Bool)

(assert (=> (not b_lambda!213957) (not d!1786762)))

(declare-fun bs!1315607 () Bool)

(assert (= bs!1315607 d!1786762))

(assert (=> bs!1315607 m!6623918))

(declare-fun m!6624108 () Bool)

(assert (=> bs!1315607 m!6624108))

(declare-fun m!6624110 () Bool)

(assert (=> bs!1315607 m!6624110))

(declare-fun m!6624112 () Bool)

(assert (=> bs!1315607 m!6624112))

(assert (=> b!5658433 d!1786762))

(declare-fun d!1786764 () Bool)

(assert (=> d!1786764 (= (isEmpty!34982 (t!376562 (exprs!5537 (h!69584 zl!343)))) ((_ is Nil!63134) (t!376562 (exprs!5537 (h!69584 zl!343)))))))

(assert (=> b!5658444 d!1786764))

(declare-fun c!995010 () Bool)

(declare-fun bm!428358 () Bool)

(declare-fun call!428363 () Bool)

(declare-fun c!995011 () Bool)

(assert (=> bm!428358 (= call!428363 (validRegex!7389 (ite c!995011 (reg!15982 r!7292) (ite c!995010 (regTwo!31819 r!7292) (regTwo!31818 r!7292)))))))

(declare-fun bm!428359 () Bool)

(declare-fun call!428365 () Bool)

(assert (=> bm!428359 (= call!428365 (validRegex!7389 (ite c!995010 (regOne!31819 r!7292) (regOne!31818 r!7292))))))

(declare-fun d!1786766 () Bool)

(declare-fun res!2393519 () Bool)

(declare-fun e!3485076 () Bool)

(assert (=> d!1786766 (=> res!2393519 e!3485076)))

(assert (=> d!1786766 (= res!2393519 ((_ is ElementMatch!15653) r!7292))))

(assert (=> d!1786766 (= (validRegex!7389 r!7292) e!3485076)))

(declare-fun b!5658724 () Bool)

(declare-fun e!3485074 () Bool)

(declare-fun e!3485075 () Bool)

(assert (=> b!5658724 (= e!3485074 e!3485075)))

(assert (=> b!5658724 (= c!995010 ((_ is Union!15653) r!7292))))

(declare-fun b!5658725 () Bool)

(assert (=> b!5658725 (= e!3485076 e!3485074)))

(assert (=> b!5658725 (= c!995011 ((_ is Star!15653) r!7292))))

(declare-fun b!5658726 () Bool)

(declare-fun e!3485072 () Bool)

(declare-fun e!3485077 () Bool)

(assert (=> b!5658726 (= e!3485072 e!3485077)))

(declare-fun res!2393520 () Bool)

(assert (=> b!5658726 (=> (not res!2393520) (not e!3485077))))

(assert (=> b!5658726 (= res!2393520 call!428365)))

(declare-fun b!5658727 () Bool)

(declare-fun e!3485073 () Bool)

(assert (=> b!5658727 (= e!3485073 call!428363)))

(declare-fun b!5658728 () Bool)

(declare-fun e!3485078 () Bool)

(declare-fun call!428364 () Bool)

(assert (=> b!5658728 (= e!3485078 call!428364)))

(declare-fun b!5658729 () Bool)

(declare-fun res!2393521 () Bool)

(assert (=> b!5658729 (=> (not res!2393521) (not e!3485078))))

(assert (=> b!5658729 (= res!2393521 call!428365)))

(assert (=> b!5658729 (= e!3485075 e!3485078)))

(declare-fun b!5658730 () Bool)

(assert (=> b!5658730 (= e!3485077 call!428364)))

(declare-fun bm!428360 () Bool)

(assert (=> bm!428360 (= call!428364 call!428363)))

(declare-fun b!5658731 () Bool)

(assert (=> b!5658731 (= e!3485074 e!3485073)))

(declare-fun res!2393518 () Bool)

(assert (=> b!5658731 (= res!2393518 (not (nullable!5685 (reg!15982 r!7292))))))

(assert (=> b!5658731 (=> (not res!2393518) (not e!3485073))))

(declare-fun b!5658732 () Bool)

(declare-fun res!2393517 () Bool)

(assert (=> b!5658732 (=> res!2393517 e!3485072)))

(assert (=> b!5658732 (= res!2393517 (not ((_ is Concat!24498) r!7292)))))

(assert (=> b!5658732 (= e!3485075 e!3485072)))

(assert (= (and d!1786766 (not res!2393519)) b!5658725))

(assert (= (and b!5658725 c!995011) b!5658731))

(assert (= (and b!5658725 (not c!995011)) b!5658724))

(assert (= (and b!5658731 res!2393518) b!5658727))

(assert (= (and b!5658724 c!995010) b!5658729))

(assert (= (and b!5658724 (not c!995010)) b!5658732))

(assert (= (and b!5658729 res!2393521) b!5658728))

(assert (= (and b!5658732 (not res!2393517)) b!5658726))

(assert (= (and b!5658726 res!2393520) b!5658730))

(assert (= (or b!5658728 b!5658730) bm!428360))

(assert (= (or b!5658729 b!5658726) bm!428359))

(assert (= (or b!5658727 bm!428360) bm!428358))

(declare-fun m!6624118 () Bool)

(assert (=> bm!428358 m!6624118))

(declare-fun m!6624120 () Bool)

(assert (=> bm!428359 m!6624120))

(declare-fun m!6624122 () Bool)

(assert (=> b!5658731 m!6624122))

(assert (=> start!585114 d!1786766))

(declare-fun b!5658733 () Bool)

(declare-fun e!3485079 () (InoxSet Context!10074))

(declare-fun call!428366 () (InoxSet Context!10074))

(assert (=> b!5658733 (= e!3485079 call!428366)))

(declare-fun b!5658734 () Bool)

(declare-fun e!3485080 () (InoxSet Context!10074))

(assert (=> b!5658734 (= e!3485080 ((as const (Array Context!10074 Bool)) false))))

(declare-fun b!5658736 () Bool)

(declare-fun c!995014 () Bool)

(declare-fun e!3485084 () Bool)

(assert (=> b!5658736 (= c!995014 e!3485084)))

(declare-fun res!2393522 () Bool)

(assert (=> b!5658736 (=> (not res!2393522) (not e!3485084))))

(assert (=> b!5658736 (= res!2393522 ((_ is Concat!24498) (regOne!31818 (regOne!31818 r!7292))))))

(declare-fun e!3485081 () (InoxSet Context!10074))

(declare-fun e!3485082 () (InoxSet Context!10074))

(assert (=> b!5658736 (= e!3485081 e!3485082)))

(declare-fun bm!428361 () Bool)

(declare-fun call!428368 () (InoxSet Context!10074))

(declare-fun call!428367 () (InoxSet Context!10074))

(assert (=> bm!428361 (= call!428368 call!428367)))

(declare-fun bm!428362 () Bool)

(declare-fun call!428369 () List!63258)

(declare-fun call!428371 () List!63258)

(assert (=> bm!428362 (= call!428369 call!428371)))

(declare-fun call!428370 () (InoxSet Context!10074))

(declare-fun bm!428363 () Bool)

(declare-fun c!995015 () Bool)

(assert (=> bm!428363 (= call!428370 (derivationStepZipperDown!995 (ite c!995015 (regTwo!31819 (regOne!31818 (regOne!31818 r!7292))) (regOne!31818 (regOne!31818 (regOne!31818 r!7292)))) (ite c!995015 (Context!10075 lt!2267102) (Context!10075 call!428371)) (h!69583 s!2326)))))

(declare-fun bm!428364 () Bool)

(declare-fun c!995016 () Bool)

(assert (=> bm!428364 (= call!428367 (derivationStepZipperDown!995 (ite c!995015 (regOne!31819 (regOne!31818 (regOne!31818 r!7292))) (ite c!995014 (regTwo!31818 (regOne!31818 (regOne!31818 r!7292))) (ite c!995016 (regOne!31818 (regOne!31818 (regOne!31818 r!7292))) (reg!15982 (regOne!31818 (regOne!31818 r!7292)))))) (ite (or c!995015 c!995014) (Context!10075 lt!2267102) (Context!10075 call!428369)) (h!69583 s!2326)))))

(declare-fun b!5658737 () Bool)

(declare-fun e!3485083 () (InoxSet Context!10074))

(assert (=> b!5658737 (= e!3485083 (store ((as const (Array Context!10074 Bool)) false) (Context!10075 lt!2267102) true))))

(declare-fun b!5658738 () Bool)

(assert (=> b!5658738 (= e!3485081 ((_ map or) call!428367 call!428370))))

(declare-fun bm!428365 () Bool)

(assert (=> bm!428365 (= call!428366 call!428368)))

(declare-fun d!1786770 () Bool)

(declare-fun c!995013 () Bool)

(assert (=> d!1786770 (= c!995013 (and ((_ is ElementMatch!15653) (regOne!31818 (regOne!31818 r!7292))) (= (c!994913 (regOne!31818 (regOne!31818 r!7292))) (h!69583 s!2326))))))

(assert (=> d!1786770 (= (derivationStepZipperDown!995 (regOne!31818 (regOne!31818 r!7292)) (Context!10075 lt!2267102) (h!69583 s!2326)) e!3485083)))

(declare-fun b!5658735 () Bool)

(assert (=> b!5658735 (= e!3485084 (nullable!5685 (regOne!31818 (regOne!31818 (regOne!31818 r!7292)))))))

(declare-fun b!5658739 () Bool)

(assert (=> b!5658739 (= e!3485083 e!3485081)))

(assert (=> b!5658739 (= c!995015 ((_ is Union!15653) (regOne!31818 (regOne!31818 r!7292))))))

(declare-fun bm!428366 () Bool)

(assert (=> bm!428366 (= call!428371 ($colon$colon!1692 (exprs!5537 (Context!10075 lt!2267102)) (ite (or c!995014 c!995016) (regTwo!31818 (regOne!31818 (regOne!31818 r!7292))) (regOne!31818 (regOne!31818 r!7292)))))))

(declare-fun b!5658740 () Bool)

(assert (=> b!5658740 (= e!3485082 ((_ map or) call!428370 call!428368))))

(declare-fun b!5658741 () Bool)

(declare-fun c!995012 () Bool)

(assert (=> b!5658741 (= c!995012 ((_ is Star!15653) (regOne!31818 (regOne!31818 r!7292))))))

(assert (=> b!5658741 (= e!3485079 e!3485080)))

(declare-fun b!5658742 () Bool)

(assert (=> b!5658742 (= e!3485080 call!428366)))

(declare-fun b!5658743 () Bool)

(assert (=> b!5658743 (= e!3485082 e!3485079)))

(assert (=> b!5658743 (= c!995016 ((_ is Concat!24498) (regOne!31818 (regOne!31818 r!7292))))))

(assert (= (and d!1786770 c!995013) b!5658737))

(assert (= (and d!1786770 (not c!995013)) b!5658739))

(assert (= (and b!5658739 c!995015) b!5658738))

(assert (= (and b!5658739 (not c!995015)) b!5658736))

(assert (= (and b!5658736 res!2393522) b!5658735))

(assert (= (and b!5658736 c!995014) b!5658740))

(assert (= (and b!5658736 (not c!995014)) b!5658743))

(assert (= (and b!5658743 c!995016) b!5658733))

(assert (= (and b!5658743 (not c!995016)) b!5658741))

(assert (= (and b!5658741 c!995012) b!5658742))

(assert (= (and b!5658741 (not c!995012)) b!5658734))

(assert (= (or b!5658733 b!5658742) bm!428362))

(assert (= (or b!5658733 b!5658742) bm!428365))

(assert (= (or b!5658740 bm!428362) bm!428366))

(assert (= (or b!5658740 bm!428365) bm!428361))

(assert (= (or b!5658738 b!5658740) bm!428363))

(assert (= (or b!5658738 bm!428361) bm!428364))

(declare-fun m!6624124 () Bool)

(assert (=> b!5658735 m!6624124))

(declare-fun m!6624126 () Bool)

(assert (=> b!5658737 m!6624126))

(declare-fun m!6624128 () Bool)

(assert (=> bm!428364 m!6624128))

(declare-fun m!6624130 () Bool)

(assert (=> bm!428363 m!6624130))

(declare-fun m!6624132 () Bool)

(assert (=> bm!428366 m!6624132))

(assert (=> b!5658442 d!1786770))

(declare-fun d!1786772 () Bool)

(declare-fun lt!2267159 () Regex!15653)

(assert (=> d!1786772 (validRegex!7389 lt!2267159)))

(assert (=> d!1786772 (= lt!2267159 (generalisedUnion!1516 (unfocusZipperList!1081 zl!343)))))

(assert (=> d!1786772 (= (unfocusZipper!1395 zl!343) lt!2267159)))

(declare-fun bs!1315610 () Bool)

(assert (= bs!1315610 d!1786772))

(declare-fun m!6624134 () Bool)

(assert (=> bs!1315610 m!6624134))

(assert (=> bs!1315610 m!6623928))

(assert (=> bs!1315610 m!6623928))

(assert (=> bs!1315610 m!6623930))

(assert (=> b!5658451 d!1786772))

(declare-fun d!1786774 () Bool)

(declare-fun c!995017 () Bool)

(assert (=> d!1786774 (= c!995017 (isEmpty!34984 (t!376563 s!2326)))))

(declare-fun e!3485085 () Bool)

(assert (=> d!1786774 (= (matchZipper!1791 lt!2267098 (t!376563 s!2326)) e!3485085)))

(declare-fun b!5658744 () Bool)

(assert (=> b!5658744 (= e!3485085 (nullableZipper!1625 lt!2267098))))

(declare-fun b!5658745 () Bool)

(assert (=> b!5658745 (= e!3485085 (matchZipper!1791 (derivationStepZipper!1738 lt!2267098 (head!12029 (t!376563 s!2326))) (tail!11124 (t!376563 s!2326))))))

(assert (= (and d!1786774 c!995017) b!5658744))

(assert (= (and d!1786774 (not c!995017)) b!5658745))

(assert (=> d!1786774 m!6623970))

(declare-fun m!6624136 () Bool)

(assert (=> b!5658744 m!6624136))

(assert (=> b!5658745 m!6623974))

(assert (=> b!5658745 m!6623974))

(declare-fun m!6624138 () Bool)

(assert (=> b!5658745 m!6624138))

(assert (=> b!5658745 m!6623978))

(assert (=> b!5658745 m!6624138))

(assert (=> b!5658745 m!6623978))

(declare-fun m!6624140 () Bool)

(assert (=> b!5658745 m!6624140))

(assert (=> b!5658432 d!1786774))

(declare-fun d!1786776 () Bool)

(assert (=> d!1786776 (= (flatMap!1266 lt!2267105 lambda!304597) (choose!42853 lt!2267105 lambda!304597))))

(declare-fun bs!1315611 () Bool)

(assert (= bs!1315611 d!1786776))

(declare-fun m!6624142 () Bool)

(assert (=> bs!1315611 m!6624142))

(assert (=> b!5658443 d!1786776))

(declare-fun e!3485090 () (InoxSet Context!10074))

(declare-fun b!5658750 () Bool)

(declare-fun call!428372 () (InoxSet Context!10074))

(assert (=> b!5658750 (= e!3485090 ((_ map or) call!428372 (derivationStepZipperUp!921 (Context!10075 (t!376562 (exprs!5537 lt!2267108))) (h!69583 s!2326))))))

(declare-fun b!5658751 () Bool)

(declare-fun e!3485088 () (InoxSet Context!10074))

(assert (=> b!5658751 (= e!3485090 e!3485088)))

(declare-fun c!995018 () Bool)

(assert (=> b!5658751 (= c!995018 ((_ is Cons!63134) (exprs!5537 lt!2267108)))))

(declare-fun b!5658752 () Bool)

(assert (=> b!5658752 (= e!3485088 call!428372)))

(declare-fun b!5658753 () Bool)

(assert (=> b!5658753 (= e!3485088 ((as const (Array Context!10074 Bool)) false))))

(declare-fun bm!428367 () Bool)

(assert (=> bm!428367 (= call!428372 (derivationStepZipperDown!995 (h!69582 (exprs!5537 lt!2267108)) (Context!10075 (t!376562 (exprs!5537 lt!2267108))) (h!69583 s!2326)))))

(declare-fun d!1786778 () Bool)

(declare-fun c!995019 () Bool)

(declare-fun e!3485089 () Bool)

(assert (=> d!1786778 (= c!995019 e!3485089)))

(declare-fun res!2393527 () Bool)

(assert (=> d!1786778 (=> (not res!2393527) (not e!3485089))))

(assert (=> d!1786778 (= res!2393527 ((_ is Cons!63134) (exprs!5537 lt!2267108)))))

(assert (=> d!1786778 (= (derivationStepZipperUp!921 lt!2267108 (h!69583 s!2326)) e!3485090)))

(declare-fun b!5658754 () Bool)

(assert (=> b!5658754 (= e!3485089 (nullable!5685 (h!69582 (exprs!5537 lt!2267108))))))

(assert (= (and d!1786778 res!2393527) b!5658754))

(assert (= (and d!1786778 c!995019) b!5658750))

(assert (= (and d!1786778 (not c!995019)) b!5658751))

(assert (= (and b!5658751 c!995018) b!5658752))

(assert (= (and b!5658751 (not c!995018)) b!5658753))

(assert (= (or b!5658750 b!5658752) bm!428367))

(declare-fun m!6624144 () Bool)

(assert (=> b!5658750 m!6624144))

(declare-fun m!6624146 () Bool)

(assert (=> bm!428367 m!6624146))

(declare-fun m!6624148 () Bool)

(assert (=> b!5658754 m!6624148))

(assert (=> b!5658443 d!1786778))

(declare-fun d!1786780 () Bool)

(assert (=> d!1786780 (= (flatMap!1266 lt!2267105 lambda!304597) (dynLambda!24698 lambda!304597 lt!2267108))))

(declare-fun lt!2267160 () Unit!156144)

(assert (=> d!1786780 (= lt!2267160 (choose!42856 lt!2267105 lt!2267108 lambda!304597))))

(assert (=> d!1786780 (= lt!2267105 (store ((as const (Array Context!10074 Bool)) false) lt!2267108 true))))

(assert (=> d!1786780 (= (lemmaFlatMapOnSingletonSet!798 lt!2267105 lt!2267108 lambda!304597) lt!2267160)))

(declare-fun b_lambda!213959 () Bool)

(assert (=> (not b_lambda!213959) (not d!1786780)))

(declare-fun bs!1315612 () Bool)

(assert (= bs!1315612 d!1786780))

(assert (=> bs!1315612 m!6623880))

(declare-fun m!6624150 () Bool)

(assert (=> bs!1315612 m!6624150))

(declare-fun m!6624152 () Bool)

(assert (=> bs!1315612 m!6624152))

(assert (=> bs!1315612 m!6623876))

(assert (=> b!5658443 d!1786780))

(declare-fun bs!1315613 () Bool)

(declare-fun d!1786782 () Bool)

(assert (= bs!1315613 (and d!1786782 b!5658433)))

(declare-fun lambda!304616 () Int)

(assert (=> bs!1315613 (= lambda!304616 lambda!304597)))

(assert (=> d!1786782 true))

(assert (=> d!1786782 (= (derivationStepZipper!1738 lt!2267105 (h!69583 s!2326)) (flatMap!1266 lt!2267105 lambda!304616))))

(declare-fun bs!1315614 () Bool)

(assert (= bs!1315614 d!1786782))

(declare-fun m!6624154 () Bool)

(assert (=> bs!1315614 m!6624154))

(assert (=> b!5658443 d!1786782))

(declare-fun d!1786784 () Bool)

(declare-fun lt!2267164 () Int)

(assert (=> d!1786784 (>= lt!2267164 0)))

(declare-fun e!3485095 () Int)

(assert (=> d!1786784 (= lt!2267164 e!3485095)))

(declare-fun c!995025 () Bool)

(assert (=> d!1786784 (= c!995025 ((_ is Cons!63134) (exprs!5537 lt!2267108)))))

(assert (=> d!1786784 (= (contextDepthTotal!228 lt!2267108) lt!2267164)))

(declare-fun b!5658765 () Bool)

(declare-fun regexDepthTotal!101 (Regex!15653) Int)

(assert (=> b!5658765 (= e!3485095 (+ (regexDepthTotal!101 (h!69582 (exprs!5537 lt!2267108))) (contextDepthTotal!228 (Context!10075 (t!376562 (exprs!5537 lt!2267108))))))))

(declare-fun b!5658766 () Bool)

(assert (=> b!5658766 (= e!3485095 1)))

(assert (= (and d!1786784 c!995025) b!5658765))

(assert (= (and d!1786784 (not c!995025)) b!5658766))

(declare-fun m!6624156 () Bool)

(assert (=> b!5658765 m!6624156))

(declare-fun m!6624158 () Bool)

(assert (=> b!5658765 m!6624158))

(assert (=> b!5658430 d!1786784))

(declare-fun d!1786786 () Bool)

(declare-fun lt!2267165 () Int)

(assert (=> d!1786786 (>= lt!2267165 0)))

(declare-fun e!3485096 () Int)

(assert (=> d!1786786 (= lt!2267165 e!3485096)))

(declare-fun c!995026 () Bool)

(assert (=> d!1786786 (= c!995026 ((_ is Cons!63134) (exprs!5537 (h!69584 zl!343))))))

(assert (=> d!1786786 (= (contextDepthTotal!228 (h!69584 zl!343)) lt!2267165)))

(declare-fun b!5658767 () Bool)

(assert (=> b!5658767 (= e!3485096 (+ (regexDepthTotal!101 (h!69582 (exprs!5537 (h!69584 zl!343)))) (contextDepthTotal!228 (Context!10075 (t!376562 (exprs!5537 (h!69584 zl!343)))))))))

(declare-fun b!5658768 () Bool)

(assert (=> b!5658768 (= e!3485096 1)))

(assert (= (and d!1786786 c!995026) b!5658767))

(assert (= (and d!1786786 (not c!995026)) b!5658768))

(declare-fun m!6624160 () Bool)

(assert (=> b!5658767 m!6624160))

(declare-fun m!6624162 () Bool)

(assert (=> b!5658767 m!6624162))

(assert (=> b!5658430 d!1786786))

(declare-fun d!1786788 () Bool)

(declare-fun c!995027 () Bool)

(assert (=> d!1786788 (= c!995027 (isEmpty!34984 (t!376563 s!2326)))))

(declare-fun e!3485097 () Bool)

(assert (=> d!1786788 (= (matchZipper!1791 lt!2267110 (t!376563 s!2326)) e!3485097)))

(declare-fun b!5658769 () Bool)

(assert (=> b!5658769 (= e!3485097 (nullableZipper!1625 lt!2267110))))

(declare-fun b!5658770 () Bool)

(assert (=> b!5658770 (= e!3485097 (matchZipper!1791 (derivationStepZipper!1738 lt!2267110 (head!12029 (t!376563 s!2326))) (tail!11124 (t!376563 s!2326))))))

(assert (= (and d!1786788 c!995027) b!5658769))

(assert (= (and d!1786788 (not c!995027)) b!5658770))

(assert (=> d!1786788 m!6623970))

(declare-fun m!6624164 () Bool)

(assert (=> b!5658769 m!6624164))

(assert (=> b!5658770 m!6623974))

(assert (=> b!5658770 m!6623974))

(declare-fun m!6624166 () Bool)

(assert (=> b!5658770 m!6624166))

(assert (=> b!5658770 m!6623978))

(assert (=> b!5658770 m!6624166))

(assert (=> b!5658770 m!6623978))

(declare-fun m!6624168 () Bool)

(assert (=> b!5658770 m!6624168))

(assert (=> b!5658431 d!1786788))

(declare-fun d!1786790 () Bool)

(declare-fun lambda!304621 () Int)

(declare-fun forall!14802 (List!63258 Int) Bool)

(assert (=> d!1786790 (= (inv!82379 setElem!37844) (forall!14802 (exprs!5537 setElem!37844) lambda!304621))))

(declare-fun bs!1315617 () Bool)

(assert (= bs!1315617 d!1786790))

(declare-fun m!6624170 () Bool)

(assert (=> bs!1315617 m!6624170))

(assert (=> setNonEmpty!37844 d!1786790))

(declare-fun bs!1315627 () Bool)

(declare-fun b!5658856 () Bool)

(assert (= bs!1315627 (and b!5658856 b!5658440)))

(declare-fun lambda!304629 () Int)

(assert (=> bs!1315627 (not (= lambda!304629 lambda!304595))))

(assert (=> bs!1315627 (not (= lambda!304629 lambda!304596))))

(assert (=> b!5658856 true))

(assert (=> b!5658856 true))

(declare-fun bs!1315628 () Bool)

(declare-fun b!5658853 () Bool)

(assert (= bs!1315628 (and b!5658853 b!5658440)))

(declare-fun lambda!304630 () Int)

(assert (=> bs!1315628 (not (= lambda!304630 lambda!304595))))

(assert (=> bs!1315628 (= lambda!304630 lambda!304596)))

(declare-fun bs!1315629 () Bool)

(assert (= bs!1315629 (and b!5658853 b!5658856)))

(assert (=> bs!1315629 (not (= lambda!304630 lambda!304629))))

(assert (=> b!5658853 true))

(assert (=> b!5658853 true))

(declare-fun bm!428381 () Bool)

(declare-fun c!995059 () Bool)

(declare-fun call!428387 () Bool)

(assert (=> bm!428381 (= call!428387 (Exists!2753 (ite c!995059 lambda!304629 lambda!304630)))))

(declare-fun b!5658851 () Bool)

(declare-fun e!3485148 () Bool)

(declare-fun e!3485146 () Bool)

(assert (=> b!5658851 (= e!3485148 e!3485146)))

(assert (=> b!5658851 (= c!995059 ((_ is Star!15653) r!7292))))

(declare-fun b!5658852 () Bool)

(declare-fun c!995056 () Bool)

(assert (=> b!5658852 (= c!995056 ((_ is ElementMatch!15653) r!7292))))

(declare-fun e!3485145 () Bool)

(declare-fun e!3485150 () Bool)

(assert (=> b!5658852 (= e!3485145 e!3485150)))

(assert (=> b!5658853 (= e!3485146 call!428387)))

(declare-fun b!5658854 () Bool)

(declare-fun c!995058 () Bool)

(assert (=> b!5658854 (= c!995058 ((_ is Union!15653) r!7292))))

(assert (=> b!5658854 (= e!3485150 e!3485148)))

(declare-fun b!5658855 () Bool)

(declare-fun e!3485147 () Bool)

(assert (=> b!5658855 (= e!3485147 (matchRSpec!2756 (regTwo!31819 r!7292) s!2326))))

(declare-fun e!3485149 () Bool)

(assert (=> b!5658856 (= e!3485149 call!428387)))

(declare-fun d!1786792 () Bool)

(declare-fun c!995057 () Bool)

(assert (=> d!1786792 (= c!995057 ((_ is EmptyExpr!15653) r!7292))))

(declare-fun e!3485144 () Bool)

(assert (=> d!1786792 (= (matchRSpec!2756 r!7292 s!2326) e!3485144)))

(declare-fun b!5658857 () Bool)

(declare-fun res!2393558 () Bool)

(assert (=> b!5658857 (=> res!2393558 e!3485149)))

(declare-fun call!428386 () Bool)

(assert (=> b!5658857 (= res!2393558 call!428386)))

(assert (=> b!5658857 (= e!3485146 e!3485149)))

(declare-fun b!5658858 () Bool)

(assert (=> b!5658858 (= e!3485148 e!3485147)))

(declare-fun res!2393556 () Bool)

(assert (=> b!5658858 (= res!2393556 (matchRSpec!2756 (regOne!31819 r!7292) s!2326))))

(assert (=> b!5658858 (=> res!2393556 e!3485147)))

(declare-fun b!5658859 () Bool)

(assert (=> b!5658859 (= e!3485144 call!428386)))

(declare-fun bm!428382 () Bool)

(assert (=> bm!428382 (= call!428386 (isEmpty!34984 s!2326))))

(declare-fun b!5658860 () Bool)

(assert (=> b!5658860 (= e!3485144 e!3485145)))

(declare-fun res!2393557 () Bool)

(assert (=> b!5658860 (= res!2393557 (not ((_ is EmptyLang!15653) r!7292)))))

(assert (=> b!5658860 (=> (not res!2393557) (not e!3485145))))

(declare-fun b!5658861 () Bool)

(assert (=> b!5658861 (= e!3485150 (= s!2326 (Cons!63135 (c!994913 r!7292) Nil!63135)))))

(assert (= (and d!1786792 c!995057) b!5658859))

(assert (= (and d!1786792 (not c!995057)) b!5658860))

(assert (= (and b!5658860 res!2393557) b!5658852))

(assert (= (and b!5658852 c!995056) b!5658861))

(assert (= (and b!5658852 (not c!995056)) b!5658854))

(assert (= (and b!5658854 c!995058) b!5658858))

(assert (= (and b!5658854 (not c!995058)) b!5658851))

(assert (= (and b!5658858 (not res!2393556)) b!5658855))

(assert (= (and b!5658851 c!995059) b!5658857))

(assert (= (and b!5658851 (not c!995059)) b!5658853))

(assert (= (and b!5658857 (not res!2393558)) b!5658856))

(assert (= (or b!5658856 b!5658853) bm!428381))

(assert (= (or b!5658859 b!5658857) bm!428382))

(declare-fun m!6624226 () Bool)

(assert (=> bm!428381 m!6624226))

(declare-fun m!6624228 () Bool)

(assert (=> b!5658855 m!6624228))

(declare-fun m!6624230 () Bool)

(assert (=> b!5658858 m!6624230))

(declare-fun m!6624232 () Bool)

(assert (=> bm!428382 m!6624232))

(assert (=> b!5658429 d!1786792))

(declare-fun b!5658906 () Bool)

(declare-fun e!3485174 () Bool)

(declare-fun e!3485177 () Bool)

(assert (=> b!5658906 (= e!3485174 e!3485177)))

(declare-fun res!2393584 () Bool)

(assert (=> b!5658906 (=> res!2393584 e!3485177)))

(declare-fun call!428390 () Bool)

(assert (=> b!5658906 (= res!2393584 call!428390)))

(declare-fun b!5658907 () Bool)

(declare-fun res!2393577 () Bool)

(declare-fun e!3485180 () Bool)

(assert (=> b!5658907 (=> (not res!2393577) (not e!3485180))))

(assert (=> b!5658907 (= res!2393577 (not call!428390))))

(declare-fun b!5658908 () Bool)

(declare-fun e!3485176 () Bool)

(declare-fun lt!2267175 () Bool)

(assert (=> b!5658908 (= e!3485176 (= lt!2267175 call!428390))))

(declare-fun b!5658909 () Bool)

(declare-fun e!3485178 () Bool)

(assert (=> b!5658909 (= e!3485176 e!3485178)))

(declare-fun c!995074 () Bool)

(assert (=> b!5658909 (= c!995074 ((_ is EmptyLang!15653) r!7292))))

(declare-fun b!5658910 () Bool)

(declare-fun res!2393579 () Bool)

(declare-fun e!3485175 () Bool)

(assert (=> b!5658910 (=> res!2393579 e!3485175)))

(assert (=> b!5658910 (= res!2393579 e!3485180)))

(declare-fun res!2393581 () Bool)

(assert (=> b!5658910 (=> (not res!2393581) (not e!3485180))))

(assert (=> b!5658910 (= res!2393581 lt!2267175)))

(declare-fun b!5658911 () Bool)

(declare-fun res!2393583 () Bool)

(assert (=> b!5658911 (=> (not res!2393583) (not e!3485180))))

(assert (=> b!5658911 (= res!2393583 (isEmpty!34984 (tail!11124 s!2326)))))

(declare-fun b!5658912 () Bool)

(assert (=> b!5658912 (= e!3485178 (not lt!2267175))))

(declare-fun b!5658913 () Bool)

(declare-fun e!3485179 () Bool)

(assert (=> b!5658913 (= e!3485179 (nullable!5685 r!7292))))

(declare-fun b!5658914 () Bool)

(assert (=> b!5658914 (= e!3485175 e!3485174)))

(declare-fun res!2393582 () Bool)

(assert (=> b!5658914 (=> (not res!2393582) (not e!3485174))))

(assert (=> b!5658914 (= res!2393582 (not lt!2267175))))

(declare-fun b!5658915 () Bool)

(declare-fun derivativeStep!4477 (Regex!15653 C!31576) Regex!15653)

(assert (=> b!5658915 (= e!3485179 (matchR!7838 (derivativeStep!4477 r!7292 (head!12029 s!2326)) (tail!11124 s!2326)))))

(declare-fun d!1786818 () Bool)

(assert (=> d!1786818 e!3485176))

(declare-fun c!995075 () Bool)

(assert (=> d!1786818 (= c!995075 ((_ is EmptyExpr!15653) r!7292))))

(assert (=> d!1786818 (= lt!2267175 e!3485179)))

(declare-fun c!995073 () Bool)

(assert (=> d!1786818 (= c!995073 (isEmpty!34984 s!2326))))

(assert (=> d!1786818 (validRegex!7389 r!7292)))

(assert (=> d!1786818 (= (matchR!7838 r!7292 s!2326) lt!2267175)))

(declare-fun b!5658916 () Bool)

(declare-fun res!2393580 () Bool)

(assert (=> b!5658916 (=> res!2393580 e!3485177)))

(assert (=> b!5658916 (= res!2393580 (not (isEmpty!34984 (tail!11124 s!2326))))))

(declare-fun b!5658917 () Bool)

(assert (=> b!5658917 (= e!3485177 (not (= (head!12029 s!2326) (c!994913 r!7292))))))

(declare-fun b!5658918 () Bool)

(declare-fun res!2393578 () Bool)

(assert (=> b!5658918 (=> res!2393578 e!3485175)))

(assert (=> b!5658918 (= res!2393578 (not ((_ is ElementMatch!15653) r!7292)))))

(assert (=> b!5658918 (= e!3485178 e!3485175)))

(declare-fun bm!428385 () Bool)

(assert (=> bm!428385 (= call!428390 (isEmpty!34984 s!2326))))

(declare-fun b!5658919 () Bool)

(assert (=> b!5658919 (= e!3485180 (= (head!12029 s!2326) (c!994913 r!7292)))))

(assert (= (and d!1786818 c!995073) b!5658913))

(assert (= (and d!1786818 (not c!995073)) b!5658915))

(assert (= (and d!1786818 c!995075) b!5658908))

(assert (= (and d!1786818 (not c!995075)) b!5658909))

(assert (= (and b!5658909 c!995074) b!5658912))

(assert (= (and b!5658909 (not c!995074)) b!5658918))

(assert (= (and b!5658918 (not res!2393578)) b!5658910))

(assert (= (and b!5658910 res!2393581) b!5658907))

(assert (= (and b!5658907 res!2393577) b!5658911))

(assert (= (and b!5658911 res!2393583) b!5658919))

(assert (= (and b!5658910 (not res!2393579)) b!5658914))

(assert (= (and b!5658914 res!2393582) b!5658906))

(assert (= (and b!5658906 (not res!2393584)) b!5658916))

(assert (= (and b!5658916 (not res!2393580)) b!5658917))

(assert (= (or b!5658908 b!5658906 b!5658907) bm!428385))

(declare-fun m!6624258 () Bool)

(assert (=> b!5658916 m!6624258))

(assert (=> b!5658916 m!6624258))

(declare-fun m!6624260 () Bool)

(assert (=> b!5658916 m!6624260))

(declare-fun m!6624262 () Bool)

(assert (=> b!5658919 m!6624262))

(assert (=> b!5658917 m!6624262))

(assert (=> bm!428385 m!6624232))

(assert (=> b!5658915 m!6624262))

(assert (=> b!5658915 m!6624262))

(declare-fun m!6624264 () Bool)

(assert (=> b!5658915 m!6624264))

(assert (=> b!5658915 m!6624258))

(assert (=> b!5658915 m!6624264))

(assert (=> b!5658915 m!6624258))

(declare-fun m!6624266 () Bool)

(assert (=> b!5658915 m!6624266))

(assert (=> b!5658911 m!6624258))

(assert (=> b!5658911 m!6624258))

(assert (=> b!5658911 m!6624260))

(declare-fun m!6624268 () Bool)

(assert (=> b!5658913 m!6624268))

(assert (=> d!1786818 m!6624232))

(assert (=> d!1786818 m!6623904))

(assert (=> b!5658429 d!1786818))

(declare-fun d!1786824 () Bool)

(assert (=> d!1786824 (= (matchR!7838 r!7292 s!2326) (matchRSpec!2756 r!7292 s!2326))))

(declare-fun lt!2267178 () Unit!156144)

(declare-fun choose!42860 (Regex!15653 List!63259) Unit!156144)

(assert (=> d!1786824 (= lt!2267178 (choose!42860 r!7292 s!2326))))

(assert (=> d!1786824 (validRegex!7389 r!7292)))

(assert (=> d!1786824 (= (mainMatchTheorem!2756 r!7292 s!2326) lt!2267178)))

(declare-fun bs!1315637 () Bool)

(assert (= bs!1315637 d!1786824))

(assert (=> bs!1315637 m!6623900))

(assert (=> bs!1315637 m!6623898))

(declare-fun m!6624270 () Bool)

(assert (=> bs!1315637 m!6624270))

(assert (=> bs!1315637 m!6623904))

(assert (=> b!5658429 d!1786824))

(declare-fun b!5658970 () Bool)

(declare-fun e!3485209 () Bool)

(declare-fun lt!2267187 () Option!15662)

(declare-fun ++!13859 (List!63259 List!63259) List!63259)

(declare-fun get!21753 (Option!15662) tuple2!65500)

(assert (=> b!5658970 (= e!3485209 (= (++!13859 (_1!36053 (get!21753 lt!2267187)) (_2!36053 (get!21753 lt!2267187))) s!2326))))

(declare-fun b!5658971 () Bool)

(declare-fun lt!2267186 () Unit!156144)

(declare-fun lt!2267185 () Unit!156144)

(assert (=> b!5658971 (= lt!2267186 lt!2267185)))

(assert (=> b!5658971 (= (++!13859 (++!13859 Nil!63135 (Cons!63135 (h!69583 s!2326) Nil!63135)) (t!376563 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2028 (List!63259 C!31576 List!63259 List!63259) Unit!156144)

(assert (=> b!5658971 (= lt!2267185 (lemmaMoveElementToOtherListKeepsConcatEq!2028 Nil!63135 (h!69583 s!2326) (t!376563 s!2326) s!2326))))

(declare-fun e!3485211 () Option!15662)

(assert (=> b!5658971 (= e!3485211 (findConcatSeparation!2076 (regOne!31818 r!7292) (regTwo!31818 r!7292) (++!13859 Nil!63135 (Cons!63135 (h!69583 s!2326) Nil!63135)) (t!376563 s!2326) s!2326))))

(declare-fun b!5658972 () Bool)

(declare-fun e!3485212 () Option!15662)

(assert (=> b!5658972 (= e!3485212 e!3485211)))

(declare-fun c!995088 () Bool)

(assert (=> b!5658972 (= c!995088 ((_ is Nil!63135) s!2326))))

(declare-fun b!5658973 () Bool)

(assert (=> b!5658973 (= e!3485211 None!15661)))

(declare-fun b!5658974 () Bool)

(declare-fun e!3485210 () Bool)

(assert (=> b!5658974 (= e!3485210 (matchR!7838 (regTwo!31818 r!7292) s!2326))))

(declare-fun b!5658975 () Bool)

(declare-fun e!3485213 () Bool)

(assert (=> b!5658975 (= e!3485213 (not (isDefined!12365 lt!2267187)))))

(declare-fun b!5658976 () Bool)

(declare-fun res!2393615 () Bool)

(assert (=> b!5658976 (=> (not res!2393615) (not e!3485209))))

(assert (=> b!5658976 (= res!2393615 (matchR!7838 (regOne!31818 r!7292) (_1!36053 (get!21753 lt!2267187))))))

(declare-fun b!5658977 () Bool)

(declare-fun res!2393612 () Bool)

(assert (=> b!5658977 (=> (not res!2393612) (not e!3485209))))

(assert (=> b!5658977 (= res!2393612 (matchR!7838 (regTwo!31818 r!7292) (_2!36053 (get!21753 lt!2267187))))))

(declare-fun b!5658978 () Bool)

(assert (=> b!5658978 (= e!3485212 (Some!15661 (tuple2!65501 Nil!63135 s!2326)))))

(declare-fun d!1786826 () Bool)

(assert (=> d!1786826 e!3485213))

(declare-fun res!2393611 () Bool)

(assert (=> d!1786826 (=> res!2393611 e!3485213)))

(assert (=> d!1786826 (= res!2393611 e!3485209)))

(declare-fun res!2393613 () Bool)

(assert (=> d!1786826 (=> (not res!2393613) (not e!3485209))))

(assert (=> d!1786826 (= res!2393613 (isDefined!12365 lt!2267187))))

(assert (=> d!1786826 (= lt!2267187 e!3485212)))

(declare-fun c!995089 () Bool)

(assert (=> d!1786826 (= c!995089 e!3485210)))

(declare-fun res!2393614 () Bool)

(assert (=> d!1786826 (=> (not res!2393614) (not e!3485210))))

(assert (=> d!1786826 (= res!2393614 (matchR!7838 (regOne!31818 r!7292) Nil!63135))))

(assert (=> d!1786826 (validRegex!7389 (regOne!31818 r!7292))))

(assert (=> d!1786826 (= (findConcatSeparation!2076 (regOne!31818 r!7292) (regTwo!31818 r!7292) Nil!63135 s!2326 s!2326) lt!2267187)))

(assert (= (and d!1786826 res!2393614) b!5658974))

(assert (= (and d!1786826 c!995089) b!5658978))

(assert (= (and d!1786826 (not c!995089)) b!5658972))

(assert (= (and b!5658972 c!995088) b!5658973))

(assert (= (and b!5658972 (not c!995088)) b!5658971))

(assert (= (and d!1786826 res!2393613) b!5658976))

(assert (= (and b!5658976 res!2393615) b!5658977))

(assert (= (and b!5658977 res!2393612) b!5658970))

(assert (= (and d!1786826 (not res!2393611)) b!5658975))

(declare-fun m!6624272 () Bool)

(assert (=> b!5658977 m!6624272))

(declare-fun m!6624274 () Bool)

(assert (=> b!5658977 m!6624274))

(declare-fun m!6624276 () Bool)

(assert (=> b!5658975 m!6624276))

(declare-fun m!6624278 () Bool)

(assert (=> b!5658971 m!6624278))

(assert (=> b!5658971 m!6624278))

(declare-fun m!6624280 () Bool)

(assert (=> b!5658971 m!6624280))

(declare-fun m!6624282 () Bool)

(assert (=> b!5658971 m!6624282))

(assert (=> b!5658971 m!6624278))

(declare-fun m!6624284 () Bool)

(assert (=> b!5658971 m!6624284))

(declare-fun m!6624286 () Bool)

(assert (=> b!5658974 m!6624286))

(assert (=> b!5658976 m!6624272))

(declare-fun m!6624288 () Bool)

(assert (=> b!5658976 m!6624288))

(assert (=> d!1786826 m!6624276))

(declare-fun m!6624290 () Bool)

(assert (=> d!1786826 m!6624290))

(declare-fun m!6624292 () Bool)

(assert (=> d!1786826 m!6624292))

(assert (=> b!5658970 m!6624272))

(declare-fun m!6624294 () Bool)

(assert (=> b!5658970 m!6624294))

(assert (=> b!5658440 d!1786826))

(declare-fun d!1786828 () Bool)

(declare-fun choose!42861 (Int) Bool)

(assert (=> d!1786828 (= (Exists!2753 lambda!304596) (choose!42861 lambda!304596))))

(declare-fun bs!1315638 () Bool)

(assert (= bs!1315638 d!1786828))

(declare-fun m!6624296 () Bool)

(assert (=> bs!1315638 m!6624296))

(assert (=> b!5658440 d!1786828))

(declare-fun d!1786830 () Bool)

(assert (=> d!1786830 (= (Exists!2753 lambda!304595) (choose!42861 lambda!304595))))

(declare-fun bs!1315639 () Bool)

(assert (= bs!1315639 d!1786830))

(declare-fun m!6624298 () Bool)

(assert (=> bs!1315639 m!6624298))

(assert (=> b!5658440 d!1786830))

(declare-fun bs!1315647 () Bool)

(declare-fun d!1786832 () Bool)

(assert (= bs!1315647 (and d!1786832 b!5658440)))

(declare-fun lambda!304643 () Int)

(assert (=> bs!1315647 (= lambda!304643 lambda!304595)))

(assert (=> bs!1315647 (not (= lambda!304643 lambda!304596))))

(declare-fun bs!1315648 () Bool)

(assert (= bs!1315648 (and d!1786832 b!5658856)))

(assert (=> bs!1315648 (not (= lambda!304643 lambda!304629))))

(declare-fun bs!1315649 () Bool)

(assert (= bs!1315649 (and d!1786832 b!5658853)))

(assert (=> bs!1315649 (not (= lambda!304643 lambda!304630))))

(assert (=> d!1786832 true))

(assert (=> d!1786832 true))

(assert (=> d!1786832 true))

(assert (=> d!1786832 (= (isDefined!12365 (findConcatSeparation!2076 (regOne!31818 r!7292) (regTwo!31818 r!7292) Nil!63135 s!2326 s!2326)) (Exists!2753 lambda!304643))))

(declare-fun lt!2267190 () Unit!156144)

(declare-fun choose!42862 (Regex!15653 Regex!15653 List!63259) Unit!156144)

(assert (=> d!1786832 (= lt!2267190 (choose!42862 (regOne!31818 r!7292) (regTwo!31818 r!7292) s!2326))))

(assert (=> d!1786832 (validRegex!7389 (regOne!31818 r!7292))))

(assert (=> d!1786832 (= (lemmaFindConcatSeparationEquivalentToExists!1840 (regOne!31818 r!7292) (regTwo!31818 r!7292) s!2326) lt!2267190)))

(declare-fun bs!1315650 () Bool)

(assert (= bs!1315650 d!1786832))

(assert (=> bs!1315650 m!6623850))

(assert (=> bs!1315650 m!6624292))

(declare-fun m!6624308 () Bool)

(assert (=> bs!1315650 m!6624308))

(declare-fun m!6624310 () Bool)

(assert (=> bs!1315650 m!6624310))

(assert (=> bs!1315650 m!6623850))

(assert (=> bs!1315650 m!6623852))

(assert (=> b!5658440 d!1786832))

(declare-fun bs!1315651 () Bool)

(declare-fun d!1786836 () Bool)

(assert (= bs!1315651 (and d!1786836 d!1786832)))

(declare-fun lambda!304648 () Int)

(assert (=> bs!1315651 (= lambda!304648 lambda!304643)))

(declare-fun bs!1315652 () Bool)

(assert (= bs!1315652 (and d!1786836 b!5658440)))

(assert (=> bs!1315652 (not (= lambda!304648 lambda!304596))))

(declare-fun bs!1315653 () Bool)

(assert (= bs!1315653 (and d!1786836 b!5658856)))

(assert (=> bs!1315653 (not (= lambda!304648 lambda!304629))))

(declare-fun bs!1315654 () Bool)

(assert (= bs!1315654 (and d!1786836 b!5658853)))

(assert (=> bs!1315654 (not (= lambda!304648 lambda!304630))))

(assert (=> bs!1315652 (= lambda!304648 lambda!304595)))

(assert (=> d!1786836 true))

(assert (=> d!1786836 true))

(assert (=> d!1786836 true))

(declare-fun lambda!304649 () Int)

(assert (=> bs!1315651 (not (= lambda!304649 lambda!304643))))

(assert (=> bs!1315652 (= lambda!304649 lambda!304596)))

(assert (=> bs!1315653 (not (= lambda!304649 lambda!304629))))

(declare-fun bs!1315655 () Bool)

(assert (= bs!1315655 d!1786836))

(assert (=> bs!1315655 (not (= lambda!304649 lambda!304648))))

(assert (=> bs!1315654 (= lambda!304649 lambda!304630)))

(assert (=> bs!1315652 (not (= lambda!304649 lambda!304595))))

(assert (=> d!1786836 true))

(assert (=> d!1786836 true))

(assert (=> d!1786836 true))

(assert (=> d!1786836 (= (Exists!2753 lambda!304648) (Exists!2753 lambda!304649))))

(declare-fun lt!2267196 () Unit!156144)

(declare-fun choose!42863 (Regex!15653 Regex!15653 List!63259) Unit!156144)

(assert (=> d!1786836 (= lt!2267196 (choose!42863 (regOne!31818 r!7292) (regTwo!31818 r!7292) s!2326))))

(assert (=> d!1786836 (validRegex!7389 (regOne!31818 r!7292))))

(assert (=> d!1786836 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1382 (regOne!31818 r!7292) (regTwo!31818 r!7292) s!2326) lt!2267196)))

(declare-fun m!6624324 () Bool)

(assert (=> bs!1315655 m!6624324))

(declare-fun m!6624326 () Bool)

(assert (=> bs!1315655 m!6624326))

(declare-fun m!6624328 () Bool)

(assert (=> bs!1315655 m!6624328))

(assert (=> bs!1315655 m!6624292))

(assert (=> b!5658440 d!1786836))

(declare-fun d!1786840 () Bool)

(declare-fun isEmpty!34986 (Option!15662) Bool)

(assert (=> d!1786840 (= (isDefined!12365 (findConcatSeparation!2076 (regOne!31818 r!7292) (regTwo!31818 r!7292) Nil!63135 s!2326 s!2326)) (not (isEmpty!34986 (findConcatSeparation!2076 (regOne!31818 r!7292) (regTwo!31818 r!7292) Nil!63135 s!2326 s!2326))))))

(declare-fun bs!1315656 () Bool)

(assert (= bs!1315656 d!1786840))

(assert (=> bs!1315656 m!6623850))

(declare-fun m!6624330 () Bool)

(assert (=> bs!1315656 m!6624330))

(assert (=> b!5658440 d!1786840))

(declare-fun bs!1315658 () Bool)

(declare-fun d!1786842 () Bool)

(assert (= bs!1315658 (and d!1786842 d!1786790)))

(declare-fun lambda!304652 () Int)

(assert (=> bs!1315658 (= lambda!304652 lambda!304621)))

(declare-fun b!5659071 () Bool)

(declare-fun e!3485270 () Bool)

(declare-fun lt!2267205 () Regex!15653)

(declare-fun head!12031 (List!63258) Regex!15653)

(assert (=> b!5659071 (= e!3485270 (= lt!2267205 (head!12031 (unfocusZipperList!1081 zl!343))))))

(declare-fun b!5659072 () Bool)

(declare-fun e!3485269 () Bool)

(declare-fun e!3485268 () Bool)

(assert (=> b!5659072 (= e!3485269 e!3485268)))

(declare-fun c!995113 () Bool)

(assert (=> b!5659072 (= c!995113 (isEmpty!34982 (unfocusZipperList!1081 zl!343)))))

(assert (=> d!1786842 e!3485269))

(declare-fun res!2393662 () Bool)

(assert (=> d!1786842 (=> (not res!2393662) (not e!3485269))))

(assert (=> d!1786842 (= res!2393662 (validRegex!7389 lt!2267205))))

(declare-fun e!3485266 () Regex!15653)

(assert (=> d!1786842 (= lt!2267205 e!3485266)))

(declare-fun c!995116 () Bool)

(declare-fun e!3485265 () Bool)

(assert (=> d!1786842 (= c!995116 e!3485265)))

(declare-fun res!2393663 () Bool)

(assert (=> d!1786842 (=> (not res!2393663) (not e!3485265))))

(assert (=> d!1786842 (= res!2393663 ((_ is Cons!63134) (unfocusZipperList!1081 zl!343)))))

(assert (=> d!1786842 (forall!14802 (unfocusZipperList!1081 zl!343) lambda!304652)))

(assert (=> d!1786842 (= (generalisedUnion!1516 (unfocusZipperList!1081 zl!343)) lt!2267205)))

(declare-fun b!5659073 () Bool)

(declare-fun e!3485267 () Regex!15653)

(assert (=> b!5659073 (= e!3485267 EmptyLang!15653)))

(declare-fun b!5659074 () Bool)

(assert (=> b!5659074 (= e!3485265 (isEmpty!34982 (t!376562 (unfocusZipperList!1081 zl!343))))))

(declare-fun b!5659075 () Bool)

(assert (=> b!5659075 (= e!3485268 e!3485270)))

(declare-fun c!995114 () Bool)

(declare-fun tail!11126 (List!63258) List!63258)

(assert (=> b!5659075 (= c!995114 (isEmpty!34982 (tail!11126 (unfocusZipperList!1081 zl!343))))))

(declare-fun b!5659076 () Bool)

(declare-fun isEmptyLang!1194 (Regex!15653) Bool)

(assert (=> b!5659076 (= e!3485268 (isEmptyLang!1194 lt!2267205))))

(declare-fun b!5659077 () Bool)

(assert (=> b!5659077 (= e!3485266 (h!69582 (unfocusZipperList!1081 zl!343)))))

(declare-fun b!5659078 () Bool)

(assert (=> b!5659078 (= e!3485267 (Union!15653 (h!69582 (unfocusZipperList!1081 zl!343)) (generalisedUnion!1516 (t!376562 (unfocusZipperList!1081 zl!343)))))))

(declare-fun b!5659079 () Bool)

(assert (=> b!5659079 (= e!3485266 e!3485267)))

(declare-fun c!995115 () Bool)

(assert (=> b!5659079 (= c!995115 ((_ is Cons!63134) (unfocusZipperList!1081 zl!343)))))

(declare-fun b!5659080 () Bool)

(declare-fun isUnion!624 (Regex!15653) Bool)

(assert (=> b!5659080 (= e!3485270 (isUnion!624 lt!2267205))))

(assert (= (and d!1786842 res!2393663) b!5659074))

(assert (= (and d!1786842 c!995116) b!5659077))

(assert (= (and d!1786842 (not c!995116)) b!5659079))

(assert (= (and b!5659079 c!995115) b!5659078))

(assert (= (and b!5659079 (not c!995115)) b!5659073))

(assert (= (and d!1786842 res!2393662) b!5659072))

(assert (= (and b!5659072 c!995113) b!5659076))

(assert (= (and b!5659072 (not c!995113)) b!5659075))

(assert (= (and b!5659075 c!995114) b!5659071))

(assert (= (and b!5659075 (not c!995114)) b!5659080))

(assert (=> b!5659075 m!6623928))

(declare-fun m!6624348 () Bool)

(assert (=> b!5659075 m!6624348))

(assert (=> b!5659075 m!6624348))

(declare-fun m!6624350 () Bool)

(assert (=> b!5659075 m!6624350))

(declare-fun m!6624352 () Bool)

(assert (=> d!1786842 m!6624352))

(assert (=> d!1786842 m!6623928))

(declare-fun m!6624354 () Bool)

(assert (=> d!1786842 m!6624354))

(declare-fun m!6624356 () Bool)

(assert (=> b!5659080 m!6624356))

(assert (=> b!5659072 m!6623928))

(declare-fun m!6624358 () Bool)

(assert (=> b!5659072 m!6624358))

(declare-fun m!6624360 () Bool)

(assert (=> b!5659074 m!6624360))

(declare-fun m!6624362 () Bool)

(assert (=> b!5659076 m!6624362))

(declare-fun m!6624364 () Bool)

(assert (=> b!5659078 m!6624364))

(assert (=> b!5659071 m!6623928))

(declare-fun m!6624366 () Bool)

(assert (=> b!5659071 m!6624366))

(assert (=> b!5658458 d!1786842))

(declare-fun bs!1315659 () Bool)

(declare-fun d!1786854 () Bool)

(assert (= bs!1315659 (and d!1786854 d!1786790)))

(declare-fun lambda!304655 () Int)

(assert (=> bs!1315659 (= lambda!304655 lambda!304621)))

(declare-fun bs!1315660 () Bool)

(assert (= bs!1315660 (and d!1786854 d!1786842)))

(assert (=> bs!1315660 (= lambda!304655 lambda!304652)))

(declare-fun lt!2267208 () List!63258)

(assert (=> d!1786854 (forall!14802 lt!2267208 lambda!304655)))

(declare-fun e!3485279 () List!63258)

(assert (=> d!1786854 (= lt!2267208 e!3485279)))

(declare-fun c!995120 () Bool)

(assert (=> d!1786854 (= c!995120 ((_ is Cons!63136) zl!343))))

(assert (=> d!1786854 (= (unfocusZipperList!1081 zl!343) lt!2267208)))

(declare-fun b!5659109 () Bool)

(assert (=> b!5659109 (= e!3485279 (Cons!63134 (generalisedConcat!1268 (exprs!5537 (h!69584 zl!343))) (unfocusZipperList!1081 (t!376564 zl!343))))))

(declare-fun b!5659110 () Bool)

(assert (=> b!5659110 (= e!3485279 Nil!63134)))

(assert (= (and d!1786854 c!995120) b!5659109))

(assert (= (and d!1786854 (not c!995120)) b!5659110))

(declare-fun m!6624374 () Bool)

(assert (=> d!1786854 m!6624374))

(assert (=> b!5659109 m!6623926))

(declare-fun m!6624376 () Bool)

(assert (=> b!5659109 m!6624376))

(assert (=> b!5658458 d!1786854))

(declare-fun e!3485296 () Bool)

(declare-fun d!1786856 () Bool)

(assert (=> d!1786856 (= (matchZipper!1791 ((_ map or) lt!2267096 lt!2267098) (t!376563 s!2326)) e!3485296)))

(declare-fun res!2393666 () Bool)

(assert (=> d!1786856 (=> res!2393666 e!3485296)))

(assert (=> d!1786856 (= res!2393666 (matchZipper!1791 lt!2267096 (t!376563 s!2326)))))

(declare-fun lt!2267211 () Unit!156144)

(declare-fun choose!42866 ((InoxSet Context!10074) (InoxSet Context!10074) List!63259) Unit!156144)

(assert (=> d!1786856 (= lt!2267211 (choose!42866 lt!2267096 lt!2267098 (t!376563 s!2326)))))

(assert (=> d!1786856 (= (lemmaZipperConcatMatchesSameAsBothZippers!678 lt!2267096 lt!2267098 (t!376563 s!2326)) lt!2267211)))

(declare-fun b!5659139 () Bool)

(assert (=> b!5659139 (= e!3485296 (matchZipper!1791 lt!2267098 (t!376563 s!2326)))))

(assert (= (and d!1786856 (not res!2393666)) b!5659139))

(assert (=> d!1786856 m!6623896))

(assert (=> d!1786856 m!6623894))

(declare-fun m!6624380 () Bool)

(assert (=> d!1786856 m!6624380))

(assert (=> b!5659139 m!6623908))

(assert (=> b!5658428 d!1786856))

(assert (=> b!5658428 d!1786720))

(declare-fun d!1786858 () Bool)

(declare-fun c!995121 () Bool)

(assert (=> d!1786858 (= c!995121 (isEmpty!34984 (t!376563 s!2326)))))

(declare-fun e!3485298 () Bool)

(assert (=> d!1786858 (= (matchZipper!1791 ((_ map or) lt!2267096 lt!2267098) (t!376563 s!2326)) e!3485298)))

(declare-fun b!5659143 () Bool)

(assert (=> b!5659143 (= e!3485298 (nullableZipper!1625 ((_ map or) lt!2267096 lt!2267098)))))

(declare-fun b!5659144 () Bool)

(assert (=> b!5659144 (= e!3485298 (matchZipper!1791 (derivationStepZipper!1738 ((_ map or) lt!2267096 lt!2267098) (head!12029 (t!376563 s!2326))) (tail!11124 (t!376563 s!2326))))))

(assert (= (and d!1786858 c!995121) b!5659143))

(assert (= (and d!1786858 (not c!995121)) b!5659144))

(assert (=> d!1786858 m!6623970))

(declare-fun m!6624382 () Bool)

(assert (=> b!5659143 m!6624382))

(assert (=> b!5659144 m!6623974))

(assert (=> b!5659144 m!6623974))

(declare-fun m!6624384 () Bool)

(assert (=> b!5659144 m!6624384))

(assert (=> b!5659144 m!6623978))

(assert (=> b!5659144 m!6624384))

(assert (=> b!5659144 m!6623978))

(declare-fun m!6624386 () Bool)

(assert (=> b!5659144 m!6624386))

(assert (=> b!5658428 d!1786858))

(declare-fun d!1786860 () Bool)

(assert (=> d!1786860 (= (isEmpty!34981 (t!376564 zl!343)) ((_ is Nil!63136) (t!376564 zl!343)))))

(assert (=> b!5658437 d!1786860))

(declare-fun bs!1315663 () Bool)

(declare-fun d!1786862 () Bool)

(assert (= bs!1315663 (and d!1786862 d!1786790)))

(declare-fun lambda!304658 () Int)

(assert (=> bs!1315663 (= lambda!304658 lambda!304621)))

(declare-fun bs!1315664 () Bool)

(assert (= bs!1315664 (and d!1786862 d!1786842)))

(assert (=> bs!1315664 (= lambda!304658 lambda!304652)))

(declare-fun bs!1315665 () Bool)

(assert (= bs!1315665 (and d!1786862 d!1786854)))

(assert (=> bs!1315665 (= lambda!304658 lambda!304655)))

(declare-fun e!3485317 () Bool)

(assert (=> d!1786862 e!3485317))

(declare-fun res!2393671 () Bool)

(assert (=> d!1786862 (=> (not res!2393671) (not e!3485317))))

(declare-fun lt!2267214 () Regex!15653)

(assert (=> d!1786862 (= res!2393671 (validRegex!7389 lt!2267214))))

(declare-fun e!3485315 () Regex!15653)

(assert (=> d!1786862 (= lt!2267214 e!3485315)))

(declare-fun c!995130 () Bool)

(declare-fun e!3485318 () Bool)

(assert (=> d!1786862 (= c!995130 e!3485318)))

(declare-fun res!2393672 () Bool)

(assert (=> d!1786862 (=> (not res!2393672) (not e!3485318))))

(assert (=> d!1786862 (= res!2393672 ((_ is Cons!63134) (exprs!5537 (h!69584 zl!343))))))

(assert (=> d!1786862 (forall!14802 (exprs!5537 (h!69584 zl!343)) lambda!304658)))

(assert (=> d!1786862 (= (generalisedConcat!1268 (exprs!5537 (h!69584 zl!343))) lt!2267214)))

(declare-fun b!5659168 () Bool)

(declare-fun e!3485316 () Bool)

(declare-fun e!3485319 () Bool)

(assert (=> b!5659168 (= e!3485316 e!3485319)))

(declare-fun c!995132 () Bool)

(assert (=> b!5659168 (= c!995132 (isEmpty!34982 (tail!11126 (exprs!5537 (h!69584 zl!343)))))))

(declare-fun b!5659169 () Bool)

(assert (=> b!5659169 (= e!3485317 e!3485316)))

(declare-fun c!995133 () Bool)

(assert (=> b!5659169 (= c!995133 (isEmpty!34982 (exprs!5537 (h!69584 zl!343))))))

(declare-fun b!5659170 () Bool)

(assert (=> b!5659170 (= e!3485315 (h!69582 (exprs!5537 (h!69584 zl!343))))))

(declare-fun b!5659171 () Bool)

(declare-fun e!3485314 () Regex!15653)

(assert (=> b!5659171 (= e!3485314 EmptyExpr!15653)))

(declare-fun b!5659172 () Bool)

(assert (=> b!5659172 (= e!3485315 e!3485314)))

(declare-fun c!995131 () Bool)

(assert (=> b!5659172 (= c!995131 ((_ is Cons!63134) (exprs!5537 (h!69584 zl!343))))))

(declare-fun b!5659173 () Bool)

(assert (=> b!5659173 (= e!3485319 (= lt!2267214 (head!12031 (exprs!5537 (h!69584 zl!343)))))))

(declare-fun b!5659174 () Bool)

(assert (=> b!5659174 (= e!3485318 (isEmpty!34982 (t!376562 (exprs!5537 (h!69584 zl!343)))))))

(declare-fun b!5659175 () Bool)

(declare-fun isEmptyExpr!1183 (Regex!15653) Bool)

(assert (=> b!5659175 (= e!3485316 (isEmptyExpr!1183 lt!2267214))))

(declare-fun b!5659176 () Bool)

(assert (=> b!5659176 (= e!3485314 (Concat!24498 (h!69582 (exprs!5537 (h!69584 zl!343))) (generalisedConcat!1268 (t!376562 (exprs!5537 (h!69584 zl!343))))))))

(declare-fun b!5659177 () Bool)

(declare-fun isConcat!706 (Regex!15653) Bool)

(assert (=> b!5659177 (= e!3485319 (isConcat!706 lt!2267214))))

(assert (= (and d!1786862 res!2393672) b!5659174))

(assert (= (and d!1786862 c!995130) b!5659170))

(assert (= (and d!1786862 (not c!995130)) b!5659172))

(assert (= (and b!5659172 c!995131) b!5659176))

(assert (= (and b!5659172 (not c!995131)) b!5659171))

(assert (= (and d!1786862 res!2393671) b!5659169))

(assert (= (and b!5659169 c!995133) b!5659175))

(assert (= (and b!5659169 (not c!995133)) b!5659168))

(assert (= (and b!5659168 c!995132) b!5659173))

(assert (= (and b!5659168 (not c!995132)) b!5659177))

(declare-fun m!6624390 () Bool)

(assert (=> b!5659169 m!6624390))

(declare-fun m!6624392 () Bool)

(assert (=> b!5659168 m!6624392))

(assert (=> b!5659168 m!6624392))

(declare-fun m!6624394 () Bool)

(assert (=> b!5659168 m!6624394))

(declare-fun m!6624396 () Bool)

(assert (=> d!1786862 m!6624396))

(declare-fun m!6624398 () Bool)

(assert (=> d!1786862 m!6624398))

(declare-fun m!6624400 () Bool)

(assert (=> b!5659173 m!6624400))

(declare-fun m!6624402 () Bool)

(assert (=> b!5659175 m!6624402))

(declare-fun m!6624404 () Bool)

(assert (=> b!5659177 m!6624404))

(declare-fun m!6624406 () Bool)

(assert (=> b!5659176 m!6624406))

(assert (=> b!5659174 m!6623924))

(assert (=> b!5658446 d!1786862))

(declare-fun d!1786868 () Bool)

(assert (=> d!1786868 (= (nullable!5685 (regOne!31818 (regOne!31818 r!7292))) (nullableFct!1771 (regOne!31818 (regOne!31818 r!7292))))))

(declare-fun bs!1315666 () Bool)

(assert (= bs!1315666 d!1786868))

(declare-fun m!6624408 () Bool)

(assert (=> bs!1315666 m!6624408))

(assert (=> b!5658436 d!1786868))

(declare-fun bs!1315667 () Bool)

(declare-fun d!1786870 () Bool)

(assert (= bs!1315667 (and d!1786870 d!1786790)))

(declare-fun lambda!304659 () Int)

(assert (=> bs!1315667 (= lambda!304659 lambda!304621)))

(declare-fun bs!1315668 () Bool)

(assert (= bs!1315668 (and d!1786870 d!1786842)))

(assert (=> bs!1315668 (= lambda!304659 lambda!304652)))

(declare-fun bs!1315669 () Bool)

(assert (= bs!1315669 (and d!1786870 d!1786854)))

(assert (=> bs!1315669 (= lambda!304659 lambda!304655)))

(declare-fun bs!1315670 () Bool)

(assert (= bs!1315670 (and d!1786870 d!1786862)))

(assert (=> bs!1315670 (= lambda!304659 lambda!304658)))

(assert (=> d!1786870 (= (inv!82379 (h!69584 zl!343)) (forall!14802 (exprs!5537 (h!69584 zl!343)) lambda!304659))))

(declare-fun bs!1315671 () Bool)

(assert (= bs!1315671 d!1786870))

(declare-fun m!6624410 () Bool)

(assert (=> bs!1315671 m!6624410))

(assert (=> b!5658447 d!1786870))

(declare-fun condSetEmpty!37850 () Bool)

(assert (=> setNonEmpty!37844 (= condSetEmpty!37850 (= setRest!37844 ((as const (Array Context!10074 Bool)) false)))))

(declare-fun setRes!37850 () Bool)

(assert (=> setNonEmpty!37844 (= tp!1567371 setRes!37850)))

(declare-fun setIsEmpty!37850 () Bool)

(assert (=> setIsEmpty!37850 setRes!37850))

(declare-fun tp!1567441 () Bool)

(declare-fun e!3485322 () Bool)

(declare-fun setNonEmpty!37850 () Bool)

(declare-fun setElem!37850 () Context!10074)

(assert (=> setNonEmpty!37850 (= setRes!37850 (and tp!1567441 (inv!82379 setElem!37850) e!3485322))))

(declare-fun setRest!37850 () (InoxSet Context!10074))

(assert (=> setNonEmpty!37850 (= setRest!37844 ((_ map or) (store ((as const (Array Context!10074 Bool)) false) setElem!37850 true) setRest!37850))))

(declare-fun b!5659182 () Bool)

(declare-fun tp!1567440 () Bool)

(assert (=> b!5659182 (= e!3485322 tp!1567440)))

(assert (= (and setNonEmpty!37844 condSetEmpty!37850) setIsEmpty!37850))

(assert (= (and setNonEmpty!37844 (not condSetEmpty!37850)) setNonEmpty!37850))

(assert (= setNonEmpty!37850 b!5659182))

(declare-fun m!6624412 () Bool)

(assert (=> setNonEmpty!37850 m!6624412))

(declare-fun b!5659187 () Bool)

(declare-fun e!3485325 () Bool)

(declare-fun tp!1567444 () Bool)

(assert (=> b!5659187 (= e!3485325 (and tp_is_empty!40559 tp!1567444))))

(assert (=> b!5658459 (= tp!1567374 e!3485325)))

(assert (= (and b!5658459 ((_ is Cons!63135) (t!376563 s!2326))) b!5659187))

(declare-fun b!5659192 () Bool)

(declare-fun e!3485328 () Bool)

(declare-fun tp!1567449 () Bool)

(declare-fun tp!1567450 () Bool)

(assert (=> b!5659192 (= e!3485328 (and tp!1567449 tp!1567450))))

(assert (=> b!5658435 (= tp!1567373 e!3485328)))

(assert (= (and b!5658435 ((_ is Cons!63134) (exprs!5537 (h!69584 zl!343)))) b!5659192))

(declare-fun b!5659205 () Bool)

(declare-fun e!3485331 () Bool)

(declare-fun tp!1567465 () Bool)

(assert (=> b!5659205 (= e!3485331 tp!1567465)))

(declare-fun b!5659204 () Bool)

(declare-fun tp!1567463 () Bool)

(declare-fun tp!1567462 () Bool)

(assert (=> b!5659204 (= e!3485331 (and tp!1567463 tp!1567462))))

(declare-fun b!5659206 () Bool)

(declare-fun tp!1567461 () Bool)

(declare-fun tp!1567464 () Bool)

(assert (=> b!5659206 (= e!3485331 (and tp!1567461 tp!1567464))))

(declare-fun b!5659203 () Bool)

(assert (=> b!5659203 (= e!3485331 tp_is_empty!40559)))

(assert (=> b!5658452 (= tp!1567372 e!3485331)))

(assert (= (and b!5658452 ((_ is ElementMatch!15653) (reg!15982 r!7292))) b!5659203))

(assert (= (and b!5658452 ((_ is Concat!24498) (reg!15982 r!7292))) b!5659204))

(assert (= (and b!5658452 ((_ is Star!15653) (reg!15982 r!7292))) b!5659205))

(assert (= (and b!5658452 ((_ is Union!15653) (reg!15982 r!7292))) b!5659206))

(declare-fun b!5659207 () Bool)

(declare-fun e!3485332 () Bool)

(declare-fun tp!1567466 () Bool)

(declare-fun tp!1567467 () Bool)

(assert (=> b!5659207 (= e!3485332 (and tp!1567466 tp!1567467))))

(assert (=> b!5658439 (= tp!1567369 e!3485332)))

(assert (= (and b!5658439 ((_ is Cons!63134) (exprs!5537 setElem!37844))) b!5659207))

(declare-fun b!5659210 () Bool)

(declare-fun e!3485333 () Bool)

(declare-fun tp!1567472 () Bool)

(assert (=> b!5659210 (= e!3485333 tp!1567472)))

(declare-fun b!5659209 () Bool)

(declare-fun tp!1567470 () Bool)

(declare-fun tp!1567469 () Bool)

(assert (=> b!5659209 (= e!3485333 (and tp!1567470 tp!1567469))))

(declare-fun b!5659211 () Bool)

(declare-fun tp!1567468 () Bool)

(declare-fun tp!1567471 () Bool)

(assert (=> b!5659211 (= e!3485333 (and tp!1567468 tp!1567471))))

(declare-fun b!5659208 () Bool)

(assert (=> b!5659208 (= e!3485333 tp_is_empty!40559)))

(assert (=> b!5658448 (= tp!1567368 e!3485333)))

(assert (= (and b!5658448 ((_ is ElementMatch!15653) (regOne!31818 r!7292))) b!5659208))

(assert (= (and b!5658448 ((_ is Concat!24498) (regOne!31818 r!7292))) b!5659209))

(assert (= (and b!5658448 ((_ is Star!15653) (regOne!31818 r!7292))) b!5659210))

(assert (= (and b!5658448 ((_ is Union!15653) (regOne!31818 r!7292))) b!5659211))

(declare-fun b!5659214 () Bool)

(declare-fun e!3485334 () Bool)

(declare-fun tp!1567477 () Bool)

(assert (=> b!5659214 (= e!3485334 tp!1567477)))

(declare-fun b!5659213 () Bool)

(declare-fun tp!1567475 () Bool)

(declare-fun tp!1567474 () Bool)

(assert (=> b!5659213 (= e!3485334 (and tp!1567475 tp!1567474))))

(declare-fun b!5659215 () Bool)

(declare-fun tp!1567473 () Bool)

(declare-fun tp!1567476 () Bool)

(assert (=> b!5659215 (= e!3485334 (and tp!1567473 tp!1567476))))

(declare-fun b!5659212 () Bool)

(assert (=> b!5659212 (= e!3485334 tp_is_empty!40559)))

(assert (=> b!5658448 (= tp!1567376 e!3485334)))

(assert (= (and b!5658448 ((_ is ElementMatch!15653) (regTwo!31818 r!7292))) b!5659212))

(assert (= (and b!5658448 ((_ is Concat!24498) (regTwo!31818 r!7292))) b!5659213))

(assert (= (and b!5658448 ((_ is Star!15653) (regTwo!31818 r!7292))) b!5659214))

(assert (= (and b!5658448 ((_ is Union!15653) (regTwo!31818 r!7292))) b!5659215))

(declare-fun b!5659218 () Bool)

(declare-fun e!3485335 () Bool)

(declare-fun tp!1567482 () Bool)

(assert (=> b!5659218 (= e!3485335 tp!1567482)))

(declare-fun b!5659217 () Bool)

(declare-fun tp!1567480 () Bool)

(declare-fun tp!1567479 () Bool)

(assert (=> b!5659217 (= e!3485335 (and tp!1567480 tp!1567479))))

(declare-fun b!5659219 () Bool)

(declare-fun tp!1567478 () Bool)

(declare-fun tp!1567481 () Bool)

(assert (=> b!5659219 (= e!3485335 (and tp!1567478 tp!1567481))))

(declare-fun b!5659216 () Bool)

(assert (=> b!5659216 (= e!3485335 tp_is_empty!40559)))

(assert (=> b!5658441 (= tp!1567377 e!3485335)))

(assert (= (and b!5658441 ((_ is ElementMatch!15653) (regOne!31819 r!7292))) b!5659216))

(assert (= (and b!5658441 ((_ is Concat!24498) (regOne!31819 r!7292))) b!5659217))

(assert (= (and b!5658441 ((_ is Star!15653) (regOne!31819 r!7292))) b!5659218))

(assert (= (and b!5658441 ((_ is Union!15653) (regOne!31819 r!7292))) b!5659219))

(declare-fun b!5659222 () Bool)

(declare-fun e!3485336 () Bool)

(declare-fun tp!1567487 () Bool)

(assert (=> b!5659222 (= e!3485336 tp!1567487)))

(declare-fun b!5659221 () Bool)

(declare-fun tp!1567485 () Bool)

(declare-fun tp!1567484 () Bool)

(assert (=> b!5659221 (= e!3485336 (and tp!1567485 tp!1567484))))

(declare-fun b!5659223 () Bool)

(declare-fun tp!1567483 () Bool)

(declare-fun tp!1567486 () Bool)

(assert (=> b!5659223 (= e!3485336 (and tp!1567483 tp!1567486))))

(declare-fun b!5659220 () Bool)

(assert (=> b!5659220 (= e!3485336 tp_is_empty!40559)))

(assert (=> b!5658441 (= tp!1567375 e!3485336)))

(assert (= (and b!5658441 ((_ is ElementMatch!15653) (regTwo!31819 r!7292))) b!5659220))

(assert (= (and b!5658441 ((_ is Concat!24498) (regTwo!31819 r!7292))) b!5659221))

(assert (= (and b!5658441 ((_ is Star!15653) (regTwo!31819 r!7292))) b!5659222))

(assert (= (and b!5658441 ((_ is Union!15653) (regTwo!31819 r!7292))) b!5659223))

(declare-fun b!5659231 () Bool)

(declare-fun e!3485342 () Bool)

(declare-fun tp!1567492 () Bool)

(assert (=> b!5659231 (= e!3485342 tp!1567492)))

(declare-fun tp!1567493 () Bool)

(declare-fun e!3485341 () Bool)

(declare-fun b!5659230 () Bool)

(assert (=> b!5659230 (= e!3485341 (and (inv!82379 (h!69584 (t!376564 zl!343))) e!3485342 tp!1567493))))

(assert (=> b!5658447 (= tp!1567370 e!3485341)))

(assert (= b!5659230 b!5659231))

(assert (= (and b!5658447 ((_ is Cons!63136) (t!376564 zl!343))) b!5659230))

(declare-fun m!6624414 () Bool)

(assert (=> b!5659230 m!6624414))

(declare-fun b_lambda!213967 () Bool)

(assert (= b_lambda!213957 (or b!5658433 b_lambda!213967)))

(declare-fun bs!1315672 () Bool)

(declare-fun d!1786872 () Bool)

(assert (= bs!1315672 (and d!1786872 b!5658433)))

(assert (=> bs!1315672 (= (dynLambda!24698 lambda!304597 (h!69584 zl!343)) (derivationStepZipperUp!921 (h!69584 zl!343) (h!69583 s!2326)))))

(assert (=> bs!1315672 m!6623914))

(assert (=> d!1786762 d!1786872))

(declare-fun b_lambda!213969 () Bool)

(assert (= b_lambda!213959 (or b!5658433 b_lambda!213969)))

(declare-fun bs!1315673 () Bool)

(declare-fun d!1786874 () Bool)

(assert (= bs!1315673 (and d!1786874 b!5658433)))

(assert (=> bs!1315673 (= (dynLambda!24698 lambda!304597 lt!2267108) (derivationStepZipperUp!921 lt!2267108 (h!69583 s!2326)))))

(assert (=> bs!1315673 m!6623874))

(assert (=> d!1786780 d!1786874))

(check-sat (not b!5659205) (not b!5658767) (not b_lambda!213969) (not d!1786762) (not d!1786826) (not bm!428364) (not b!5659214) (not b!5659222) (not b!5658536) (not b!5659217) (not d!1786772) (not b!5659219) (not b!5659080) (not d!1786788) (not b!5658855) (not b!5658537) (not b!5659182) (not b!5658858) (not d!1786780) (not b!5659109) (not bm!428351) (not bm!428349) (not bm!428381) (not b!5658974) (not d!1786854) (not bm!428363) (not b!5659209) (not b!5658971) (not d!1786868) (not b!5659074) (not bm!428350) (not b!5658683) (not b!5659192) (not d!1786824) (not d!1786840) (not bm!428366) (not b!5658744) (not b!5659223) (not b!5659210) (not setNonEmpty!37850) (not b_lambda!213967) (not b!5658915) (not b!5658750) (not b!5658970) (not b!5658557) (not bm!428347) (not b!5658601) (not b!5659168) (not b!5658538) (not bs!1315673) (not bm!428331) (not b!5658555) (not b!5659071) (not bm!428358) (not b!5659176) (not b!5658701) (not b!5658697) (not bm!428359) (not b!5659215) (not b!5658769) (not b!5659204) (not bm!428367) (not b!5659175) (not b!5659230) (not d!1786828) (not b!5658770) (not d!1786832) (not b!5659206) (not b!5658735) (not d!1786856) (not b!5659173) (not b!5659143) (not b!5659221) (not b!5658917) (not d!1786754) (not b!5658571) (not d!1786862) (not b!5658765) (not b!5659211) (not d!1786858) (not b!5659207) (not b!5659078) (not b!5658911) (not b!5658745) (not b!5659075) (not d!1786782) (not d!1786728) (not b!5659139) (not b!5659218) (not b!5658754) (not b!5658692) (not b!5658731) (not b!5658597) (not b!5658916) (not b!5658919) (not d!1786720) (not b!5659072) (not b!5659076) (not b!5658539) (not d!1786830) (not b!5658977) (not b!5659187) (not d!1786712) (not d!1786734) (not d!1786836) (not b!5658975) (not b!5659231) (not b!5658913) (not bm!428382) (not b!5658976) (not d!1786776) tp_is_empty!40559 (not bm!428385) (not b!5659174) (not b!5658696) (not bm!428346) (not b!5659213) (not d!1786774) (not d!1786790) (not b!5659177) (not b!5659169) (not d!1786818) (not d!1786842) (not d!1786870) (not b!5659144) (not bs!1315672))
(check-sat)
