; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!626690 () Bool)

(assert start!626690)

(declare-fun b!6313890 () Bool)

(assert (=> b!6313890 true))

(assert (=> b!6313890 true))

(declare-fun lambda!346780 () Int)

(declare-fun lambda!346779 () Int)

(assert (=> b!6313890 (not (= lambda!346780 lambda!346779))))

(assert (=> b!6313890 true))

(assert (=> b!6313890 true))

(declare-fun b!6313885 () Bool)

(assert (=> b!6313885 true))

(declare-fun b!6313867 () Bool)

(declare-datatypes ((Unit!158239 0))(
  ( (Unit!158240) )
))
(declare-fun e!3837314 () Unit!158239)

(declare-fun Unit!158241 () Unit!158239)

(assert (=> b!6313867 (= e!3837314 Unit!158241)))

(declare-datatypes ((C!32724 0))(
  ( (C!32725 (val!26064 Int)) )
))
(declare-datatypes ((List!64980 0))(
  ( (Nil!64856) (Cons!64856 (h!71304 C!32724) (t!378556 List!64980)) )
))
(declare-fun s!2326 () List!64980)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16227 0))(
  ( (ElementMatch!16227 (c!1146634 C!32724)) (Concat!25072 (regOne!32966 Regex!16227) (regTwo!32966 Regex!16227)) (EmptyExpr!16227) (Star!16227 (reg!16556 Regex!16227)) (EmptyLang!16227) (Union!16227 (regOne!32967 Regex!16227) (regTwo!32967 Regex!16227)) )
))
(declare-datatypes ((List!64981 0))(
  ( (Nil!64857) (Cons!64857 (h!71305 Regex!16227) (t!378557 List!64981)) )
))
(declare-datatypes ((Context!11222 0))(
  ( (Context!11223 (exprs!6111 List!64981)) )
))
(declare-fun lt!2359203 () (InoxSet Context!11222))

(declare-fun lt!2359214 () (InoxSet Context!11222))

(declare-fun lt!2359217 () Unit!158239)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1058 ((InoxSet Context!11222) (InoxSet Context!11222) List!64980) Unit!158239)

(assert (=> b!6313867 (= lt!2359217 (lemmaZipperConcatMatchesSameAsBothZippers!1058 lt!2359214 lt!2359203 (t!378556 s!2326)))))

(declare-fun res!2601448 () Bool)

(declare-fun matchZipper!2239 ((InoxSet Context!11222) List!64980) Bool)

(assert (=> b!6313867 (= res!2601448 (matchZipper!2239 lt!2359214 (t!378556 s!2326)))))

(declare-fun e!3837317 () Bool)

(assert (=> b!6313867 (=> res!2601448 e!3837317)))

(assert (=> b!6313867 (= (matchZipper!2239 ((_ map or) lt!2359214 lt!2359203) (t!378556 s!2326)) e!3837317)))

(declare-fun tp!1759497 () Bool)

(declare-fun setElem!42976 () Context!11222)

(declare-fun setNonEmpty!42976 () Bool)

(declare-fun e!3837319 () Bool)

(declare-fun setRes!42976 () Bool)

(declare-fun inv!83814 (Context!11222) Bool)

(assert (=> setNonEmpty!42976 (= setRes!42976 (and tp!1759497 (inv!83814 setElem!42976) e!3837319))))

(declare-fun z!1189 () (InoxSet Context!11222))

(declare-fun setRest!42976 () (InoxSet Context!11222))

(assert (=> setNonEmpty!42976 (= z!1189 ((_ map or) (store ((as const (Array Context!11222 Bool)) false) setElem!42976 true) setRest!42976))))

(declare-fun b!6313868 () Bool)

(declare-fun e!3837309 () Bool)

(declare-fun r!7292 () Regex!16227)

(declare-fun nullable!6220 (Regex!16227) Bool)

(assert (=> b!6313868 (= e!3837309 (nullable!6220 (regOne!32966 (regOne!32966 r!7292))))))

(declare-fun b!6313869 () Bool)

(declare-fun e!3837307 () Bool)

(declare-fun e!3837318 () Bool)

(assert (=> b!6313869 (= e!3837307 e!3837318)))

(declare-fun res!2601440 () Bool)

(assert (=> b!6313869 (=> res!2601440 e!3837318)))

(declare-fun lt!2359206 () Bool)

(declare-fun lt!2359210 () (InoxSet Context!11222))

(assert (=> b!6313869 (= res!2601440 (not (= lt!2359206 (matchZipper!2239 lt!2359210 (t!378556 s!2326)))))))

(assert (=> b!6313869 (= lt!2359206 (matchZipper!2239 lt!2359214 (t!378556 s!2326)))))

(declare-fun b!6313870 () Bool)

(declare-fun res!2601428 () Bool)

(declare-fun e!3837308 () Bool)

(assert (=> b!6313870 (=> res!2601428 e!3837308)))

(declare-datatypes ((List!64982 0))(
  ( (Nil!64858) (Cons!64858 (h!71306 Context!11222) (t!378558 List!64982)) )
))
(declare-fun zl!343 () List!64982)

(get-info :version)

(assert (=> b!6313870 (= res!2601428 (not ((_ is Cons!64857) (exprs!6111 (h!71306 zl!343)))))))

(declare-fun b!6313871 () Bool)

(declare-fun res!2601437 () Bool)

(declare-fun e!3837311 () Bool)

(assert (=> b!6313871 (=> res!2601437 e!3837311)))

(assert (=> b!6313871 (= res!2601437 (not (= (exprs!6111 (h!71306 zl!343)) (Cons!64857 (Concat!25072 (regOne!32966 (regOne!32966 r!7292)) (regTwo!32966 (regOne!32966 r!7292))) (t!378557 (exprs!6111 (h!71306 zl!343)))))))))

(declare-fun b!6313872 () Bool)

(declare-fun res!2601439 () Bool)

(declare-fun e!3837320 () Bool)

(assert (=> b!6313872 (=> (not res!2601439) (not e!3837320))))

(declare-fun toList!10011 ((InoxSet Context!11222)) List!64982)

(assert (=> b!6313872 (= res!2601439 (= (toList!10011 z!1189) zl!343))))

(declare-fun b!6313873 () Bool)

(declare-fun e!3837306 () Bool)

(declare-fun tp!1759501 () Bool)

(assert (=> b!6313873 (= e!3837306 tp!1759501)))

(declare-fun b!6313874 () Bool)

(declare-fun e!3837312 () Bool)

(declare-fun tp!1759493 () Bool)

(assert (=> b!6313874 (= e!3837312 tp!1759493)))

(declare-fun b!6313875 () Bool)

(declare-fun e!3837310 () Bool)

(declare-fun tp_is_empty!41707 () Bool)

(declare-fun tp!1759498 () Bool)

(assert (=> b!6313875 (= e!3837310 (and tp_is_empty!41707 tp!1759498))))

(declare-fun b!6313876 () Bool)

(declare-fun res!2601447 () Bool)

(declare-fun e!3837313 () Bool)

(assert (=> b!6313876 (=> res!2601447 e!3837313)))

(assert (=> b!6313876 (= res!2601447 e!3837309)))

(declare-fun res!2601430 () Bool)

(assert (=> b!6313876 (=> (not res!2601430) (not e!3837309))))

(assert (=> b!6313876 (= res!2601430 ((_ is Concat!25072) (regOne!32966 r!7292)))))

(declare-fun b!6313877 () Bool)

(declare-fun res!2601435 () Bool)

(assert (=> b!6313877 (=> res!2601435 e!3837308)))

(declare-fun isEmpty!36925 (List!64982) Bool)

(assert (=> b!6313877 (= res!2601435 (not (isEmpty!36925 (t!378558 zl!343))))))

(declare-fun setIsEmpty!42976 () Bool)

(assert (=> setIsEmpty!42976 setRes!42976))

(declare-fun b!6313878 () Bool)

(assert (=> b!6313878 (= e!3837318 e!3837311)))

(declare-fun res!2601442 () Bool)

(assert (=> b!6313878 (=> res!2601442 e!3837311)))

(declare-fun lt!2359201 () (InoxSet Context!11222))

(assert (=> b!6313878 (= res!2601442 (not (= lt!2359201 lt!2359210)))))

(declare-fun lambda!346781 () Int)

(declare-fun lt!2359205 () Context!11222)

(declare-fun lt!2359215 () (InoxSet Context!11222))

(declare-fun flatMap!1732 ((InoxSet Context!11222) Int) (InoxSet Context!11222))

(declare-fun derivationStepZipperUp!1401 (Context!11222 C!32724) (InoxSet Context!11222))

(assert (=> b!6313878 (= (flatMap!1732 lt!2359215 lambda!346781) (derivationStepZipperUp!1401 lt!2359205 (h!71304 s!2326)))))

(declare-fun lt!2359209 () Unit!158239)

(declare-fun lemmaFlatMapOnSingletonSet!1258 ((InoxSet Context!11222) Context!11222 Int) Unit!158239)

(assert (=> b!6313878 (= lt!2359209 (lemmaFlatMapOnSingletonSet!1258 lt!2359215 lt!2359205 lambda!346781))))

(declare-fun lt!2359199 () (InoxSet Context!11222))

(assert (=> b!6313878 (= lt!2359199 (derivationStepZipperUp!1401 lt!2359205 (h!71304 s!2326)))))

(declare-fun derivationStepZipper!2193 ((InoxSet Context!11222) C!32724) (InoxSet Context!11222))

(assert (=> b!6313878 (= lt!2359201 (derivationStepZipper!2193 lt!2359215 (h!71304 s!2326)))))

(assert (=> b!6313878 (= lt!2359215 (store ((as const (Array Context!11222 Bool)) false) lt!2359205 true))))

(declare-fun lt!2359216 () List!64981)

(assert (=> b!6313878 (= lt!2359205 (Context!11223 (Cons!64857 (regOne!32966 (regOne!32966 r!7292)) lt!2359216)))))

(declare-fun b!6313879 () Bool)

(declare-fun res!2601433 () Bool)

(assert (=> b!6313879 (=> res!2601433 e!3837308)))

(declare-fun generalisedConcat!1824 (List!64981) Regex!16227)

(assert (=> b!6313879 (= res!2601433 (not (= r!7292 (generalisedConcat!1824 (exprs!6111 (h!71306 zl!343))))))))

(declare-fun b!6313880 () Bool)

(declare-fun Unit!158242 () Unit!158239)

(assert (=> b!6313880 (= e!3837314 Unit!158242)))

(declare-fun b!6313881 () Bool)

(declare-fun res!2601441 () Bool)

(assert (=> b!6313881 (=> res!2601441 e!3837308)))

(declare-fun generalisedUnion!2071 (List!64981) Regex!16227)

(declare-fun unfocusZipperList!1648 (List!64982) List!64981)

(assert (=> b!6313881 (= res!2601441 (not (= r!7292 (generalisedUnion!2071 (unfocusZipperList!1648 zl!343)))))))

(declare-fun b!6313882 () Bool)

(declare-fun tp!1759494 () Bool)

(assert (=> b!6313882 (= e!3837319 tp!1759494)))

(declare-fun b!6313883 () Bool)

(declare-fun res!2601429 () Bool)

(assert (=> b!6313883 (=> res!2601429 e!3837311)))

(assert (=> b!6313883 (= res!2601429 (not (= lt!2359206 (matchZipper!2239 lt!2359201 (t!378556 s!2326)))))))

(declare-fun b!6313884 () Bool)

(assert (=> b!6313884 (= e!3837312 tp_is_empty!41707)))

(declare-fun e!3837315 () Bool)

(assert (=> b!6313885 (= e!3837315 e!3837313)))

(declare-fun res!2601444 () Bool)

(assert (=> b!6313885 (=> res!2601444 e!3837313)))

(assert (=> b!6313885 (= res!2601444 (or (and ((_ is ElementMatch!16227) (regOne!32966 r!7292)) (= (c!1146634 (regOne!32966 r!7292)) (h!71304 s!2326))) ((_ is Union!16227) (regOne!32966 r!7292))))))

(declare-fun lt!2359211 () Unit!158239)

(assert (=> b!6313885 (= lt!2359211 e!3837314)))

(declare-fun c!1146633 () Bool)

(assert (=> b!6313885 (= c!1146633 (nullable!6220 (h!71305 (exprs!6111 (h!71306 zl!343)))))))

(assert (=> b!6313885 (= (flatMap!1732 z!1189 lambda!346781) (derivationStepZipperUp!1401 (h!71306 zl!343) (h!71304 s!2326)))))

(declare-fun lt!2359213 () Unit!158239)

(assert (=> b!6313885 (= lt!2359213 (lemmaFlatMapOnSingletonSet!1258 z!1189 (h!71306 zl!343) lambda!346781))))

(declare-fun lt!2359207 () Context!11222)

(assert (=> b!6313885 (= lt!2359203 (derivationStepZipperUp!1401 lt!2359207 (h!71304 s!2326)))))

(declare-fun derivationStepZipperDown!1475 (Regex!16227 Context!11222 C!32724) (InoxSet Context!11222))

(assert (=> b!6313885 (= lt!2359214 (derivationStepZipperDown!1475 (h!71305 (exprs!6111 (h!71306 zl!343))) lt!2359207 (h!71304 s!2326)))))

(assert (=> b!6313885 (= lt!2359207 (Context!11223 (t!378557 (exprs!6111 (h!71306 zl!343)))))))

(declare-fun lt!2359204 () (InoxSet Context!11222))

(assert (=> b!6313885 (= lt!2359204 (derivationStepZipperUp!1401 (Context!11223 (Cons!64857 (h!71305 (exprs!6111 (h!71306 zl!343))) (t!378557 (exprs!6111 (h!71306 zl!343))))) (h!71304 s!2326)))))

(declare-fun b!6313886 () Bool)

(assert (=> b!6313886 (= e!3837311 (inv!83814 (h!71306 zl!343)))))

(declare-fun b!6313887 () Bool)

(declare-fun tp!1759495 () Bool)

(declare-fun tp!1759496 () Bool)

(assert (=> b!6313887 (= e!3837312 (and tp!1759495 tp!1759496))))

(declare-fun b!6313888 () Bool)

(assert (=> b!6313888 (= e!3837313 e!3837307)))

(declare-fun res!2601438 () Bool)

(assert (=> b!6313888 (=> res!2601438 e!3837307)))

(assert (=> b!6313888 (= res!2601438 (not (= lt!2359214 lt!2359210)))))

(assert (=> b!6313888 (= lt!2359210 (derivationStepZipperDown!1475 (regOne!32966 (regOne!32966 r!7292)) (Context!11223 lt!2359216) (h!71304 s!2326)))))

(assert (=> b!6313888 (= lt!2359216 (Cons!64857 (regTwo!32966 (regOne!32966 r!7292)) (t!378557 (exprs!6111 (h!71306 zl!343)))))))

(declare-fun b!6313889 () Bool)

(declare-fun res!2601443 () Bool)

(assert (=> b!6313889 (=> res!2601443 e!3837313)))

(assert (=> b!6313889 (= res!2601443 (not ((_ is Concat!25072) (regOne!32966 r!7292))))))

(assert (=> b!6313890 (= e!3837308 e!3837315)))

(declare-fun res!2601436 () Bool)

(assert (=> b!6313890 (=> res!2601436 e!3837315)))

(declare-fun lt!2359208 () Bool)

(declare-fun lt!2359202 () Bool)

(assert (=> b!6313890 (= res!2601436 (or (not (= lt!2359202 lt!2359208)) ((_ is Nil!64856) s!2326)))))

(declare-fun Exists!3297 (Int) Bool)

(assert (=> b!6313890 (= (Exists!3297 lambda!346779) (Exists!3297 lambda!346780))))

(declare-fun lt!2359200 () Unit!158239)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1834 (Regex!16227 Regex!16227 List!64980) Unit!158239)

(assert (=> b!6313890 (= lt!2359200 (lemmaExistCutMatchRandMatchRSpecEquivalent!1834 (regOne!32966 r!7292) (regTwo!32966 r!7292) s!2326))))

(assert (=> b!6313890 (= lt!2359208 (Exists!3297 lambda!346779))))

(declare-datatypes ((tuple2!66412 0))(
  ( (tuple2!66413 (_1!36509 List!64980) (_2!36509 List!64980)) )
))
(declare-datatypes ((Option!16118 0))(
  ( (None!16117) (Some!16117 (v!52278 tuple2!66412)) )
))
(declare-fun isDefined!12821 (Option!16118) Bool)

(declare-fun findConcatSeparation!2532 (Regex!16227 Regex!16227 List!64980 List!64980 List!64980) Option!16118)

(assert (=> b!6313890 (= lt!2359208 (isDefined!12821 (findConcatSeparation!2532 (regOne!32966 r!7292) (regTwo!32966 r!7292) Nil!64856 s!2326 s!2326)))))

(declare-fun lt!2359212 () Unit!158239)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2296 (Regex!16227 Regex!16227 List!64980) Unit!158239)

(assert (=> b!6313890 (= lt!2359212 (lemmaFindConcatSeparationEquivalentToExists!2296 (regOne!32966 r!7292) (regTwo!32966 r!7292) s!2326))))

(declare-fun b!6313891 () Bool)

(declare-fun tp!1759502 () Bool)

(declare-fun tp!1759500 () Bool)

(assert (=> b!6313891 (= e!3837312 (and tp!1759502 tp!1759500))))

(declare-fun e!3837316 () Bool)

(declare-fun b!6313892 () Bool)

(declare-fun tp!1759499 () Bool)

(assert (=> b!6313892 (= e!3837316 (and (inv!83814 (h!71306 zl!343)) e!3837306 tp!1759499))))

(declare-fun b!6313893 () Bool)

(declare-fun res!2601434 () Bool)

(assert (=> b!6313893 (=> res!2601434 e!3837308)))

(assert (=> b!6313893 (= res!2601434 (or ((_ is EmptyExpr!16227) r!7292) ((_ is EmptyLang!16227) r!7292) ((_ is ElementMatch!16227) r!7292) ((_ is Union!16227) r!7292) (not ((_ is Concat!25072) r!7292))))))

(declare-fun b!6313894 () Bool)

(assert (=> b!6313894 (= e!3837317 (matchZipper!2239 lt!2359203 (t!378556 s!2326)))))

(declare-fun b!6313895 () Bool)

(assert (=> b!6313895 (= e!3837320 (not e!3837308))))

(declare-fun res!2601446 () Bool)

(assert (=> b!6313895 (=> res!2601446 e!3837308)))

(assert (=> b!6313895 (= res!2601446 (not ((_ is Cons!64858) zl!343)))))

(declare-fun matchRSpec!3328 (Regex!16227 List!64980) Bool)

(assert (=> b!6313895 (= lt!2359202 (matchRSpec!3328 r!7292 s!2326))))

(declare-fun matchR!8410 (Regex!16227 List!64980) Bool)

(assert (=> b!6313895 (= lt!2359202 (matchR!8410 r!7292 s!2326))))

(declare-fun lt!2359218 () Unit!158239)

(declare-fun mainMatchTheorem!3328 (Regex!16227 List!64980) Unit!158239)

(assert (=> b!6313895 (= lt!2359218 (mainMatchTheorem!3328 r!7292 s!2326))))

(declare-fun res!2601445 () Bool)

(assert (=> start!626690 (=> (not res!2601445) (not e!3837320))))

(declare-fun validRegex!7963 (Regex!16227) Bool)

(assert (=> start!626690 (= res!2601445 (validRegex!7963 r!7292))))

(assert (=> start!626690 e!3837320))

(assert (=> start!626690 e!3837312))

(declare-fun condSetEmpty!42976 () Bool)

(assert (=> start!626690 (= condSetEmpty!42976 (= z!1189 ((as const (Array Context!11222 Bool)) false)))))

(assert (=> start!626690 setRes!42976))

(assert (=> start!626690 e!3837316))

(assert (=> start!626690 e!3837310))

(declare-fun b!6313896 () Bool)

(declare-fun res!2601431 () Bool)

(assert (=> b!6313896 (=> (not res!2601431) (not e!3837320))))

(declare-fun unfocusZipper!1969 (List!64982) Regex!16227)

(assert (=> b!6313896 (= res!2601431 (= r!7292 (unfocusZipper!1969 zl!343)))))

(declare-fun b!6313897 () Bool)

(declare-fun res!2601432 () Bool)

(assert (=> b!6313897 (=> res!2601432 e!3837315)))

(declare-fun isEmpty!36926 (List!64981) Bool)

(assert (=> b!6313897 (= res!2601432 (isEmpty!36926 (t!378557 (exprs!6111 (h!71306 zl!343)))))))

(assert (= (and start!626690 res!2601445) b!6313872))

(assert (= (and b!6313872 res!2601439) b!6313896))

(assert (= (and b!6313896 res!2601431) b!6313895))

(assert (= (and b!6313895 (not res!2601446)) b!6313877))

(assert (= (and b!6313877 (not res!2601435)) b!6313879))

(assert (= (and b!6313879 (not res!2601433)) b!6313870))

(assert (= (and b!6313870 (not res!2601428)) b!6313881))

(assert (= (and b!6313881 (not res!2601441)) b!6313893))

(assert (= (and b!6313893 (not res!2601434)) b!6313890))

(assert (= (and b!6313890 (not res!2601436)) b!6313897))

(assert (= (and b!6313897 (not res!2601432)) b!6313885))

(assert (= (and b!6313885 c!1146633) b!6313867))

(assert (= (and b!6313885 (not c!1146633)) b!6313880))

(assert (= (and b!6313867 (not res!2601448)) b!6313894))

(assert (= (and b!6313885 (not res!2601444)) b!6313876))

(assert (= (and b!6313876 res!2601430) b!6313868))

(assert (= (and b!6313876 (not res!2601447)) b!6313889))

(assert (= (and b!6313889 (not res!2601443)) b!6313888))

(assert (= (and b!6313888 (not res!2601438)) b!6313869))

(assert (= (and b!6313869 (not res!2601440)) b!6313878))

(assert (= (and b!6313878 (not res!2601442)) b!6313883))

(assert (= (and b!6313883 (not res!2601429)) b!6313871))

(assert (= (and b!6313871 (not res!2601437)) b!6313886))

(assert (= (and start!626690 ((_ is ElementMatch!16227) r!7292)) b!6313884))

(assert (= (and start!626690 ((_ is Concat!25072) r!7292)) b!6313887))

(assert (= (and start!626690 ((_ is Star!16227) r!7292)) b!6313874))

(assert (= (and start!626690 ((_ is Union!16227) r!7292)) b!6313891))

(assert (= (and start!626690 condSetEmpty!42976) setIsEmpty!42976))

(assert (= (and start!626690 (not condSetEmpty!42976)) setNonEmpty!42976))

(assert (= setNonEmpty!42976 b!6313882))

(assert (= b!6313892 b!6313873))

(assert (= (and start!626690 ((_ is Cons!64858) zl!343)) b!6313892))

(assert (= (and start!626690 ((_ is Cons!64856) s!2326)) b!6313875))

(declare-fun m!7128562 () Bool)

(assert (=> b!6313892 m!7128562))

(declare-fun m!7128564 () Bool)

(assert (=> b!6313881 m!7128564))

(assert (=> b!6313881 m!7128564))

(declare-fun m!7128566 () Bool)

(assert (=> b!6313881 m!7128566))

(assert (=> b!6313886 m!7128562))

(declare-fun m!7128568 () Bool)

(assert (=> b!6313867 m!7128568))

(declare-fun m!7128570 () Bool)

(assert (=> b!6313867 m!7128570))

(declare-fun m!7128572 () Bool)

(assert (=> b!6313867 m!7128572))

(declare-fun m!7128574 () Bool)

(assert (=> b!6313868 m!7128574))

(declare-fun m!7128576 () Bool)

(assert (=> start!626690 m!7128576))

(declare-fun m!7128578 () Bool)

(assert (=> b!6313896 m!7128578))

(declare-fun m!7128580 () Bool)

(assert (=> setNonEmpty!42976 m!7128580))

(declare-fun m!7128582 () Bool)

(assert (=> b!6313872 m!7128582))

(declare-fun m!7128584 () Bool)

(assert (=> b!6313888 m!7128584))

(declare-fun m!7128586 () Bool)

(assert (=> b!6313894 m!7128586))

(declare-fun m!7128588 () Bool)

(assert (=> b!6313869 m!7128588))

(assert (=> b!6313869 m!7128570))

(declare-fun m!7128590 () Bool)

(assert (=> b!6313885 m!7128590))

(declare-fun m!7128592 () Bool)

(assert (=> b!6313885 m!7128592))

(declare-fun m!7128594 () Bool)

(assert (=> b!6313885 m!7128594))

(declare-fun m!7128596 () Bool)

(assert (=> b!6313885 m!7128596))

(declare-fun m!7128598 () Bool)

(assert (=> b!6313885 m!7128598))

(declare-fun m!7128600 () Bool)

(assert (=> b!6313885 m!7128600))

(declare-fun m!7128602 () Bool)

(assert (=> b!6313885 m!7128602))

(declare-fun m!7128604 () Bool)

(assert (=> b!6313878 m!7128604))

(declare-fun m!7128606 () Bool)

(assert (=> b!6313878 m!7128606))

(declare-fun m!7128608 () Bool)

(assert (=> b!6313878 m!7128608))

(declare-fun m!7128610 () Bool)

(assert (=> b!6313878 m!7128610))

(declare-fun m!7128612 () Bool)

(assert (=> b!6313878 m!7128612))

(declare-fun m!7128614 () Bool)

(assert (=> b!6313890 m!7128614))

(declare-fun m!7128616 () Bool)

(assert (=> b!6313890 m!7128616))

(declare-fun m!7128618 () Bool)

(assert (=> b!6313890 m!7128618))

(declare-fun m!7128620 () Bool)

(assert (=> b!6313890 m!7128620))

(declare-fun m!7128622 () Bool)

(assert (=> b!6313890 m!7128622))

(assert (=> b!6313890 m!7128618))

(assert (=> b!6313890 m!7128614))

(declare-fun m!7128624 () Bool)

(assert (=> b!6313890 m!7128624))

(declare-fun m!7128626 () Bool)

(assert (=> b!6313895 m!7128626))

(declare-fun m!7128628 () Bool)

(assert (=> b!6313895 m!7128628))

(declare-fun m!7128630 () Bool)

(assert (=> b!6313895 m!7128630))

(declare-fun m!7128632 () Bool)

(assert (=> b!6313879 m!7128632))

(declare-fun m!7128634 () Bool)

(assert (=> b!6313883 m!7128634))

(declare-fun m!7128636 () Bool)

(assert (=> b!6313877 m!7128636))

(declare-fun m!7128638 () Bool)

(assert (=> b!6313897 m!7128638))

(check-sat (not b!6313895) (not b!6313897) (not b!6313883) (not start!626690) tp_is_empty!41707 (not b!6313886) (not b!6313888) (not b!6313879) (not b!6313882) (not b!6313878) (not b!6313873) (not b!6313875) (not b!6313874) (not b!6313891) (not b!6313894) (not b!6313868) (not b!6313867) (not b!6313896) (not b!6313872) (not b!6313892) (not b!6313890) (not b!6313885) (not b!6313881) (not b!6313877) (not setNonEmpty!42976) (not b!6313887) (not b!6313869))
(check-sat)
