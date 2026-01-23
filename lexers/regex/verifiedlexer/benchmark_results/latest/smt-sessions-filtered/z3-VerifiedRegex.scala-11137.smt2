; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!577418 () Bool)

(assert start!577418)

(declare-fun b!5533552 () Bool)

(assert (=> b!5533552 true))

(assert (=> b!5533552 true))

(declare-fun lambda!297088 () Int)

(declare-fun lambda!297087 () Int)

(assert (=> b!5533552 (not (= lambda!297088 lambda!297087))))

(assert (=> b!5533552 true))

(assert (=> b!5533552 true))

(declare-fun b!5533554 () Bool)

(assert (=> b!5533554 true))

(declare-fun e!3420447 () Bool)

(declare-fun b!5533537 () Bool)

(declare-datatypes ((C!31312 0))(
  ( (C!31313 (val!25358 Int)) )
))
(declare-datatypes ((Regex!15521 0))(
  ( (ElementMatch!15521 (c!968535 C!31312)) (Concat!24366 (regOne!31554 Regex!15521) (regTwo!31554 Regex!15521)) (EmptyExpr!15521) (Star!15521 (reg!15850 Regex!15521)) (EmptyLang!15521) (Union!15521 (regOne!31555 Regex!15521) (regTwo!31555 Regex!15521)) )
))
(declare-datatypes ((List!62862 0))(
  ( (Nil!62738) (Cons!62738 (h!69186 Regex!15521) (t!376123 List!62862)) )
))
(declare-datatypes ((Context!9810 0))(
  ( (Context!9811 (exprs!5405 List!62862)) )
))
(declare-datatypes ((List!62863 0))(
  ( (Nil!62739) (Cons!62739 (h!69187 Context!9810) (t!376124 List!62863)) )
))
(declare-fun zl!343 () List!62863)

(declare-fun tp!1522121 () Bool)

(declare-fun e!3420454 () Bool)

(declare-fun inv!82049 (Context!9810) Bool)

(assert (=> b!5533537 (= e!3420447 (and (inv!82049 (h!69187 zl!343)) e!3420454 tp!1522121))))

(declare-fun b!5533538 () Bool)

(declare-fun res!2355872 () Bool)

(declare-fun e!3420448 () Bool)

(assert (=> b!5533538 (=> res!2355872 e!3420448)))

(declare-fun isEmpty!34529 (List!62862) Bool)

(assert (=> b!5533538 (= res!2355872 (not (isEmpty!34529 (t!376123 (exprs!5405 (h!69187 zl!343))))))))

(declare-fun b!5533539 () Bool)

(declare-fun e!3420450 () Bool)

(declare-fun tp_is_empty!40295 () Bool)

(assert (=> b!5533539 (= e!3420450 tp_is_empty!40295)))

(declare-fun b!5533540 () Bool)

(declare-fun res!2355874 () Bool)

(declare-fun e!3420445 () Bool)

(assert (=> b!5533540 (=> (not res!2355874) (not e!3420445))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9810))

(declare-fun toList!9305 ((InoxSet Context!9810)) List!62863)

(assert (=> b!5533540 (= res!2355874 (= (toList!9305 z!1189) zl!343))))

(declare-fun b!5533541 () Bool)

(declare-fun tp!1522123 () Bool)

(declare-fun tp!1522118 () Bool)

(assert (=> b!5533541 (= e!3420450 (and tp!1522123 tp!1522118))))

(declare-fun b!5533543 () Bool)

(declare-fun e!3420446 () Bool)

(assert (=> b!5533543 (= e!3420445 e!3420446)))

(declare-fun res!2355870 () Bool)

(assert (=> b!5533543 (=> (not res!2355870) (not e!3420446))))

(declare-fun r!7292 () Regex!15521)

(declare-fun lt!2248901 () Regex!15521)

(assert (=> b!5533543 (= res!2355870 (= r!7292 lt!2248901))))

(declare-fun unfocusZipper!1263 (List!62863) Regex!15521)

(assert (=> b!5533543 (= lt!2248901 (unfocusZipper!1263 zl!343))))

(declare-fun setNonEmpty!36833 () Bool)

(declare-fun tp!1522116 () Bool)

(declare-fun e!3420455 () Bool)

(declare-fun setElem!36833 () Context!9810)

(declare-fun setRes!36833 () Bool)

(assert (=> setNonEmpty!36833 (= setRes!36833 (and tp!1522116 (inv!82049 setElem!36833) e!3420455))))

(declare-fun setRest!36833 () (InoxSet Context!9810))

(assert (=> setNonEmpty!36833 (= z!1189 ((_ map or) (store ((as const (Array Context!9810 Bool)) false) setElem!36833 true) setRest!36833))))

(declare-fun b!5533544 () Bool)

(declare-fun res!2355867 () Bool)

(declare-fun e!3420453 () Bool)

(assert (=> b!5533544 (=> res!2355867 e!3420453)))

(declare-fun generalisedConcat!1136 (List!62862) Regex!15521)

(assert (=> b!5533544 (= res!2355867 (not (= r!7292 (generalisedConcat!1136 (exprs!5405 (h!69187 zl!343))))))))

(declare-fun b!5533545 () Bool)

(declare-fun res!2355879 () Bool)

(assert (=> b!5533545 (=> res!2355879 e!3420453)))

(get-info :version)

(assert (=> b!5533545 (= res!2355879 (not ((_ is Cons!62738) (exprs!5405 (h!69187 zl!343)))))))

(declare-fun b!5533546 () Bool)

(declare-fun e!3420449 () Bool)

(declare-fun tp!1522119 () Bool)

(assert (=> b!5533546 (= e!3420449 (and tp_is_empty!40295 tp!1522119))))

(declare-fun b!5533547 () Bool)

(declare-fun tp!1522115 () Bool)

(assert (=> b!5533547 (= e!3420454 tp!1522115)))

(declare-fun e!3420452 () Bool)

(declare-fun lt!2248895 () (InoxSet Context!9810))

(declare-fun b!5533548 () Bool)

(declare-fun lt!2248906 () (InoxSet Context!9810))

(assert (=> b!5533548 (= e!3420452 (or (not (= lt!2248895 lt!2248906)) (= lt!2248901 r!7292)))))

(declare-fun b!5533549 () Bool)

(declare-fun res!2355869 () Bool)

(assert (=> b!5533549 (=> res!2355869 e!3420453)))

(declare-fun generalisedUnion!1384 (List!62862) Regex!15521)

(declare-fun unfocusZipperList!949 (List!62863) List!62862)

(assert (=> b!5533549 (= res!2355869 (not (= r!7292 (generalisedUnion!1384 (unfocusZipperList!949 zl!343)))))))

(declare-fun res!2355878 () Bool)

(assert (=> start!577418 (=> (not res!2355878) (not e!3420445))))

(declare-fun validRegex!7257 (Regex!15521) Bool)

(assert (=> start!577418 (= res!2355878 (validRegex!7257 r!7292))))

(assert (=> start!577418 e!3420445))

(assert (=> start!577418 e!3420450))

(declare-fun condSetEmpty!36833 () Bool)

(assert (=> start!577418 (= condSetEmpty!36833 (= z!1189 ((as const (Array Context!9810 Bool)) false)))))

(assert (=> start!577418 setRes!36833))

(assert (=> start!577418 e!3420447))

(assert (=> start!577418 e!3420449))

(declare-fun b!5533542 () Bool)

(declare-fun res!2355873 () Bool)

(assert (=> b!5533542 (=> res!2355873 e!3420453)))

(declare-fun isEmpty!34530 (List!62863) Bool)

(assert (=> b!5533542 (= res!2355873 (not (isEmpty!34530 (t!376124 zl!343))))))

(declare-fun b!5533550 () Bool)

(assert (=> b!5533550 (= e!3420446 (not e!3420453))))

(declare-fun res!2355876 () Bool)

(assert (=> b!5533550 (=> res!2355876 e!3420453)))

(assert (=> b!5533550 (= res!2355876 (not ((_ is Cons!62739) zl!343)))))

(declare-fun lt!2248896 () Bool)

(declare-datatypes ((List!62864 0))(
  ( (Nil!62740) (Cons!62740 (h!69188 C!31312) (t!376125 List!62864)) )
))
(declare-fun s!2326 () List!62864)

(declare-fun matchRSpec!2624 (Regex!15521 List!62864) Bool)

(assert (=> b!5533550 (= lt!2248896 (matchRSpec!2624 r!7292 s!2326))))

(declare-fun matchR!7706 (Regex!15521 List!62864) Bool)

(assert (=> b!5533550 (= lt!2248896 (matchR!7706 r!7292 s!2326))))

(declare-datatypes ((Unit!155502 0))(
  ( (Unit!155503) )
))
(declare-fun lt!2248894 () Unit!155502)

(declare-fun mainMatchTheorem!2624 (Regex!15521 List!62864) Unit!155502)

(assert (=> b!5533550 (= lt!2248894 (mainMatchTheorem!2624 r!7292 s!2326))))

(declare-fun b!5533551 () Bool)

(declare-fun e!3420451 () Bool)

(assert (=> b!5533551 (= e!3420448 e!3420451)))

(declare-fun res!2355868 () Bool)

(assert (=> b!5533551 (=> res!2355868 e!3420451)))

(declare-fun lt!2248905 () (InoxSet Context!9810))

(declare-fun lt!2248897 () (InoxSet Context!9810))

(assert (=> b!5533551 (= res!2355868 (not (= lt!2248905 lt!2248897)))))

(declare-fun lt!2248907 () Context!9810)

(declare-fun derivationStepZipperDown!863 (Regex!15521 Context!9810 C!31312) (InoxSet Context!9810))

(assert (=> b!5533551 (= lt!2248897 (derivationStepZipperDown!863 r!7292 lt!2248907 (h!69188 s!2326)))))

(assert (=> b!5533551 (= lt!2248907 (Context!9811 Nil!62738))))

(declare-fun derivationStepZipperUp!789 (Context!9810 C!31312) (InoxSet Context!9810))

(assert (=> b!5533551 (= lt!2248905 (derivationStepZipperUp!789 (Context!9811 (Cons!62738 r!7292 Nil!62738)) (h!69188 s!2326)))))

(declare-fun derivationStepZipper!1626 ((InoxSet Context!9810) C!31312) (InoxSet Context!9810))

(assert (=> b!5533551 (= lt!2248895 (derivationStepZipper!1626 z!1189 (h!69188 s!2326)))))

(assert (=> b!5533552 (= e!3420453 e!3420448)))

(declare-fun res!2355880 () Bool)

(assert (=> b!5533552 (=> res!2355880 e!3420448)))

(declare-fun lt!2248911 () Bool)

(assert (=> b!5533552 (= res!2355880 (or (not (= lt!2248896 lt!2248911)) ((_ is Nil!62740) s!2326)))))

(declare-fun Exists!2621 (Int) Bool)

(assert (=> b!5533552 (= (Exists!2621 lambda!297087) (Exists!2621 lambda!297088))))

(declare-fun lt!2248902 () Unit!155502)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1250 (Regex!15521 Regex!15521 List!62864) Unit!155502)

(assert (=> b!5533552 (= lt!2248902 (lemmaExistCutMatchRandMatchRSpecEquivalent!1250 (regOne!31554 r!7292) (regTwo!31554 r!7292) s!2326))))

(assert (=> b!5533552 (= lt!2248911 (Exists!2621 lambda!297087))))

(declare-datatypes ((tuple2!65236 0))(
  ( (tuple2!65237 (_1!35921 List!62864) (_2!35921 List!62864)) )
))
(declare-datatypes ((Option!15530 0))(
  ( (None!15529) (Some!15529 (v!51566 tuple2!65236)) )
))
(declare-fun isDefined!12233 (Option!15530) Bool)

(declare-fun findConcatSeparation!1944 (Regex!15521 Regex!15521 List!62864 List!62864 List!62864) Option!15530)

(assert (=> b!5533552 (= lt!2248911 (isDefined!12233 (findConcatSeparation!1944 (regOne!31554 r!7292) (regTwo!31554 r!7292) Nil!62740 s!2326 s!2326)))))

(declare-fun lt!2248900 () Unit!155502)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1708 (Regex!15521 Regex!15521 List!62864) Unit!155502)

(assert (=> b!5533552 (= lt!2248900 (lemmaFindConcatSeparationEquivalentToExists!1708 (regOne!31554 r!7292) (regTwo!31554 r!7292) s!2326))))

(declare-fun b!5533553 () Bool)

(declare-fun e!3420456 () Bool)

(assert (=> b!5533553 (= e!3420456 e!3420452)))

(declare-fun res!2355877 () Bool)

(assert (=> b!5533553 (=> res!2355877 e!3420452)))

(declare-fun nullable!5555 (Regex!15521) Bool)

(assert (=> b!5533553 (= res!2355877 (nullable!5555 (regOne!31554 r!7292)))))

(declare-fun lt!2248912 () (InoxSet Context!9810))

(assert (=> b!5533553 (= lt!2248912 (derivationStepZipperDown!863 (regTwo!31554 r!7292) lt!2248907 (h!69188 s!2326)))))

(declare-fun lt!2248899 () Context!9810)

(assert (=> b!5533553 (= lt!2248906 (derivationStepZipperDown!863 (regOne!31554 r!7292) lt!2248899 (h!69188 s!2326)))))

(declare-fun lt!2248913 () (InoxSet Context!9810))

(declare-fun lambda!297089 () Int)

(declare-fun flatMap!1134 ((InoxSet Context!9810) Int) (InoxSet Context!9810))

(assert (=> b!5533553 (= (flatMap!1134 lt!2248913 lambda!297089) (derivationStepZipperUp!789 lt!2248899 (h!69188 s!2326)))))

(declare-fun lt!2248893 () Unit!155502)

(declare-fun lemmaFlatMapOnSingletonSet!666 ((InoxSet Context!9810) Context!9810 Int) Unit!155502)

(assert (=> b!5533553 (= lt!2248893 (lemmaFlatMapOnSingletonSet!666 lt!2248913 lt!2248899 lambda!297089))))

(declare-fun lt!2248909 () Context!9810)

(declare-fun lt!2248898 () (InoxSet Context!9810))

(assert (=> b!5533553 (= (flatMap!1134 lt!2248898 lambda!297089) (derivationStepZipperUp!789 lt!2248909 (h!69188 s!2326)))))

(declare-fun lt!2248904 () Unit!155502)

(assert (=> b!5533553 (= lt!2248904 (lemmaFlatMapOnSingletonSet!666 lt!2248898 lt!2248909 lambda!297089))))

(declare-fun lt!2248892 () (InoxSet Context!9810))

(assert (=> b!5533553 (= lt!2248892 (derivationStepZipperUp!789 lt!2248899 (h!69188 s!2326)))))

(declare-fun lt!2248910 () (InoxSet Context!9810))

(assert (=> b!5533553 (= lt!2248910 (derivationStepZipperUp!789 lt!2248909 (h!69188 s!2326)))))

(assert (=> b!5533553 (= lt!2248913 (store ((as const (Array Context!9810 Bool)) false) lt!2248899 true))))

(declare-fun lt!2248903 () List!62862)

(assert (=> b!5533553 (= lt!2248899 (Context!9811 lt!2248903))))

(assert (=> b!5533553 (= lt!2248898 (store ((as const (Array Context!9810 Bool)) false) lt!2248909 true))))

(assert (=> b!5533553 (= lt!2248909 (Context!9811 (Cons!62738 (regOne!31554 r!7292) lt!2248903)))))

(assert (=> b!5533553 (= lt!2248903 (Cons!62738 (regTwo!31554 r!7292) Nil!62738))))

(declare-fun setIsEmpty!36833 () Bool)

(assert (=> setIsEmpty!36833 setRes!36833))

(assert (=> b!5533554 (= e!3420451 e!3420456)))

(declare-fun res!2355875 () Bool)

(assert (=> b!5533554 (=> res!2355875 e!3420456)))

(assert (=> b!5533554 (= res!2355875 (not (= lt!2248895 lt!2248897)))))

(assert (=> b!5533554 (= (flatMap!1134 z!1189 lambda!297089) (derivationStepZipperUp!789 (h!69187 zl!343) (h!69188 s!2326)))))

(declare-fun lt!2248908 () Unit!155502)

(assert (=> b!5533554 (= lt!2248908 (lemmaFlatMapOnSingletonSet!666 z!1189 (h!69187 zl!343) lambda!297089))))

(declare-fun b!5533555 () Bool)

(declare-fun tp!1522122 () Bool)

(assert (=> b!5533555 (= e!3420450 tp!1522122)))

(declare-fun b!5533556 () Bool)

(declare-fun tp!1522117 () Bool)

(declare-fun tp!1522114 () Bool)

(assert (=> b!5533556 (= e!3420450 (and tp!1522117 tp!1522114))))

(declare-fun b!5533557 () Bool)

(declare-fun tp!1522120 () Bool)

(assert (=> b!5533557 (= e!3420455 tp!1522120)))

(declare-fun b!5533558 () Bool)

(declare-fun res!2355871 () Bool)

(assert (=> b!5533558 (=> res!2355871 e!3420453)))

(assert (=> b!5533558 (= res!2355871 (or ((_ is EmptyExpr!15521) r!7292) ((_ is EmptyLang!15521) r!7292) ((_ is ElementMatch!15521) r!7292) ((_ is Union!15521) r!7292) (not ((_ is Concat!24366) r!7292))))))

(assert (= (and start!577418 res!2355878) b!5533540))

(assert (= (and b!5533540 res!2355874) b!5533543))

(assert (= (and b!5533543 res!2355870) b!5533550))

(assert (= (and b!5533550 (not res!2355876)) b!5533542))

(assert (= (and b!5533542 (not res!2355873)) b!5533544))

(assert (= (and b!5533544 (not res!2355867)) b!5533545))

(assert (= (and b!5533545 (not res!2355879)) b!5533549))

(assert (= (and b!5533549 (not res!2355869)) b!5533558))

(assert (= (and b!5533558 (not res!2355871)) b!5533552))

(assert (= (and b!5533552 (not res!2355880)) b!5533538))

(assert (= (and b!5533538 (not res!2355872)) b!5533551))

(assert (= (and b!5533551 (not res!2355868)) b!5533554))

(assert (= (and b!5533554 (not res!2355875)) b!5533553))

(assert (= (and b!5533553 (not res!2355877)) b!5533548))

(assert (= (and start!577418 ((_ is ElementMatch!15521) r!7292)) b!5533539))

(assert (= (and start!577418 ((_ is Concat!24366) r!7292)) b!5533541))

(assert (= (and start!577418 ((_ is Star!15521) r!7292)) b!5533555))

(assert (= (and start!577418 ((_ is Union!15521) r!7292)) b!5533556))

(assert (= (and start!577418 condSetEmpty!36833) setIsEmpty!36833))

(assert (= (and start!577418 (not condSetEmpty!36833)) setNonEmpty!36833))

(assert (= setNonEmpty!36833 b!5533557))

(assert (= b!5533537 b!5533547))

(assert (= (and start!577418 ((_ is Cons!62739) zl!343)) b!5533537))

(assert (= (and start!577418 ((_ is Cons!62740) s!2326)) b!5533546))

(declare-fun m!6534960 () Bool)

(assert (=> b!5533554 m!6534960))

(declare-fun m!6534962 () Bool)

(assert (=> b!5533554 m!6534962))

(declare-fun m!6534964 () Bool)

(assert (=> b!5533554 m!6534964))

(declare-fun m!6534966 () Bool)

(assert (=> b!5533543 m!6534966))

(declare-fun m!6534968 () Bool)

(assert (=> b!5533540 m!6534968))

(declare-fun m!6534970 () Bool)

(assert (=> b!5533544 m!6534970))

(declare-fun m!6534972 () Bool)

(assert (=> b!5533553 m!6534972))

(declare-fun m!6534974 () Bool)

(assert (=> b!5533553 m!6534974))

(declare-fun m!6534976 () Bool)

(assert (=> b!5533553 m!6534976))

(declare-fun m!6534978 () Bool)

(assert (=> b!5533553 m!6534978))

(declare-fun m!6534980 () Bool)

(assert (=> b!5533553 m!6534980))

(declare-fun m!6534982 () Bool)

(assert (=> b!5533553 m!6534982))

(declare-fun m!6534984 () Bool)

(assert (=> b!5533553 m!6534984))

(declare-fun m!6534986 () Bool)

(assert (=> b!5533553 m!6534986))

(declare-fun m!6534988 () Bool)

(assert (=> b!5533553 m!6534988))

(declare-fun m!6534990 () Bool)

(assert (=> b!5533553 m!6534990))

(declare-fun m!6534992 () Bool)

(assert (=> b!5533553 m!6534992))

(declare-fun m!6534994 () Bool)

(assert (=> b!5533542 m!6534994))

(declare-fun m!6534996 () Bool)

(assert (=> start!577418 m!6534996))

(declare-fun m!6534998 () Bool)

(assert (=> setNonEmpty!36833 m!6534998))

(declare-fun m!6535000 () Bool)

(assert (=> b!5533550 m!6535000))

(declare-fun m!6535002 () Bool)

(assert (=> b!5533550 m!6535002))

(declare-fun m!6535004 () Bool)

(assert (=> b!5533550 m!6535004))

(declare-fun m!6535006 () Bool)

(assert (=> b!5533549 m!6535006))

(assert (=> b!5533549 m!6535006))

(declare-fun m!6535008 () Bool)

(assert (=> b!5533549 m!6535008))

(declare-fun m!6535010 () Bool)

(assert (=> b!5533537 m!6535010))

(declare-fun m!6535012 () Bool)

(assert (=> b!5533551 m!6535012))

(declare-fun m!6535014 () Bool)

(assert (=> b!5533551 m!6535014))

(declare-fun m!6535016 () Bool)

(assert (=> b!5533551 m!6535016))

(declare-fun m!6535018 () Bool)

(assert (=> b!5533538 m!6535018))

(declare-fun m!6535020 () Bool)

(assert (=> b!5533552 m!6535020))

(declare-fun m!6535022 () Bool)

(assert (=> b!5533552 m!6535022))

(declare-fun m!6535024 () Bool)

(assert (=> b!5533552 m!6535024))

(assert (=> b!5533552 m!6535020))

(declare-fun m!6535026 () Bool)

(assert (=> b!5533552 m!6535026))

(declare-fun m!6535028 () Bool)

(assert (=> b!5533552 m!6535028))

(assert (=> b!5533552 m!6535028))

(declare-fun m!6535030 () Bool)

(assert (=> b!5533552 m!6535030))

(check-sat (not b!5533556) (not b!5533550) (not b!5533542) (not b!5533538) (not b!5533552) (not setNonEmpty!36833) (not b!5533541) (not b!5533537) (not b!5533540) (not b!5533553) (not b!5533554) (not b!5533547) tp_is_empty!40295 (not b!5533557) (not b!5533551) (not b!5533544) (not b!5533543) (not b!5533546) (not start!577418) (not b!5533555) (not b!5533549))
(check-sat)
