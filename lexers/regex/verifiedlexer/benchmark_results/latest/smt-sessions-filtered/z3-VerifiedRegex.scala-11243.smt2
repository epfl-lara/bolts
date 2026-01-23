; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!589776 () Bool)

(assert start!589776)

(declare-fun b!5730435 () Bool)

(assert (=> b!5730435 true))

(assert (=> b!5730435 true))

(declare-fun lambda!310064 () Int)

(declare-fun lambda!310063 () Int)

(assert (=> b!5730435 (not (= lambda!310064 lambda!310063))))

(assert (=> b!5730435 true))

(assert (=> b!5730435 true))

(declare-fun b!5730409 () Bool)

(assert (=> b!5730409 true))

(declare-fun b!5730407 () Bool)

(assert (=> b!5730407 true))

(declare-fun b!5730405 () Bool)

(declare-fun res!2419371 () Bool)

(declare-fun e!3523232 () Bool)

(assert (=> b!5730405 (=> res!2419371 e!3523232)))

(declare-datatypes ((C!31736 0))(
  ( (C!31737 (val!25570 Int)) )
))
(declare-datatypes ((Regex!15733 0))(
  ( (ElementMatch!15733 (c!1011115 C!31736)) (Concat!24578 (regOne!31978 Regex!15733) (regTwo!31978 Regex!15733)) (EmptyExpr!15733) (Star!15733 (reg!16062 Regex!15733)) (EmptyLang!15733) (Union!15733 (regOne!31979 Regex!15733) (regTwo!31979 Regex!15733)) )
))
(declare-fun r!7292 () Regex!15733)

(get-info :version)

(assert (=> b!5730405 (= res!2419371 (or ((_ is EmptyExpr!15733) r!7292) ((_ is EmptyLang!15733) r!7292) ((_ is ElementMatch!15733) r!7292) ((_ is Union!15733) r!7292) (not ((_ is Concat!24578) r!7292))))))

(declare-fun b!5730406 () Bool)

(declare-fun res!2419382 () Bool)

(assert (=> b!5730406 (=> res!2419382 e!3523232)))

(declare-datatypes ((List!63498 0))(
  ( (Nil!63374) (Cons!63374 (h!69822 Regex!15733) (t!376826 List!63498)) )
))
(declare-datatypes ((Context!10234 0))(
  ( (Context!10235 (exprs!5617 List!63498)) )
))
(declare-datatypes ((List!63499 0))(
  ( (Nil!63375) (Cons!63375 (h!69823 Context!10234) (t!376827 List!63499)) )
))
(declare-fun zl!343 () List!63499)

(declare-fun generalisedUnion!1596 (List!63498) Regex!15733)

(declare-fun unfocusZipperList!1161 (List!63499) List!63498)

(assert (=> b!5730406 (= res!2419382 (not (= r!7292 (generalisedUnion!1596 (unfocusZipperList!1161 zl!343)))))))

(declare-fun e!3523229 () Bool)

(declare-fun e!3523222 () Bool)

(assert (=> b!5730407 (= e!3523229 e!3523222)))

(declare-fun res!2419380 () Bool)

(assert (=> b!5730407 (=> res!2419380 e!3523222)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2280892 () (InoxSet Context!10234))

(declare-fun lt!2280872 () Context!10234)

(declare-fun lt!2280874 () (InoxSet Context!10234))

(declare-fun appendTo!112 ((InoxSet Context!10234) Context!10234) (InoxSet Context!10234))

(assert (=> b!5730407 (= res!2419380 (not (= (appendTo!112 lt!2280892 lt!2280872) lt!2280874)))))

(declare-fun lt!2280897 () List!63498)

(declare-fun lt!2280896 () List!63498)

(declare-fun lambda!310066 () Int)

(declare-fun map!14520 ((InoxSet Context!10234) Int) (InoxSet Context!10234))

(declare-fun ++!13938 (List!63498 List!63498) List!63498)

(assert (=> b!5730407 (= (map!14520 lt!2280892 lambda!310066) (store ((as const (Array Context!10234 Bool)) false) (Context!10235 (++!13938 lt!2280896 lt!2280897)) true))))

(declare-datatypes ((Unit!156464 0))(
  ( (Unit!156465) )
))
(declare-fun lt!2280899 () Unit!156464)

(declare-fun lambda!310067 () Int)

(declare-fun lemmaConcatPreservesForall!302 (List!63498 List!63498 Int) Unit!156464)

(assert (=> b!5730407 (= lt!2280899 (lemmaConcatPreservesForall!302 lt!2280896 lt!2280897 lambda!310067))))

(declare-fun lt!2280887 () Unit!156464)

(declare-fun lt!2280862 () Context!10234)

(declare-fun lemmaMapOnSingletonSet!128 ((InoxSet Context!10234) Context!10234 Int) Unit!156464)

(assert (=> b!5730407 (= lt!2280887 (lemmaMapOnSingletonSet!128 lt!2280892 lt!2280862 lambda!310066))))

(declare-fun b!5730408 () Bool)

(declare-fun res!2419405 () Bool)

(declare-fun e!3523241 () Bool)

(assert (=> b!5730408 (=> res!2419405 e!3523241)))

(declare-fun isEmpty!35253 (List!63498) Bool)

(assert (=> b!5730408 (= res!2419405 (isEmpty!35253 (t!376826 (exprs!5617 (h!69823 zl!343)))))))

(declare-fun e!3523223 () Bool)

(assert (=> b!5730409 (= e!3523241 e!3523223)))

(declare-fun res!2419395 () Bool)

(assert (=> b!5730409 (=> res!2419395 e!3523223)))

(declare-datatypes ((List!63500 0))(
  ( (Nil!63376) (Cons!63376 (h!69824 C!31736) (t!376828 List!63500)) )
))
(declare-fun s!2326 () List!63500)

(assert (=> b!5730409 (= res!2419395 (or (and ((_ is ElementMatch!15733) (regOne!31978 r!7292)) (= (c!1011115 (regOne!31978 r!7292)) (h!69824 s!2326))) ((_ is Union!15733) (regOne!31978 r!7292))))))

(declare-fun lt!2280909 () Unit!156464)

(declare-fun e!3523228 () Unit!156464)

(assert (=> b!5730409 (= lt!2280909 e!3523228)))

(declare-fun c!1011114 () Bool)

(declare-fun lt!2280879 () Bool)

(assert (=> b!5730409 (= c!1011114 lt!2280879)))

(declare-fun nullable!5765 (Regex!15733) Bool)

(assert (=> b!5730409 (= lt!2280879 (nullable!5765 (h!69822 (exprs!5617 (h!69823 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10234))

(declare-fun lambda!310065 () Int)

(declare-fun flatMap!1346 ((InoxSet Context!10234) Int) (InoxSet Context!10234))

(declare-fun derivationStepZipperUp!1001 (Context!10234 C!31736) (InoxSet Context!10234))

(assert (=> b!5730409 (= (flatMap!1346 z!1189 lambda!310065) (derivationStepZipperUp!1001 (h!69823 zl!343) (h!69824 s!2326)))))

(declare-fun lt!2280901 () Unit!156464)

(declare-fun lemmaFlatMapOnSingletonSet!878 ((InoxSet Context!10234) Context!10234 Int) Unit!156464)

(assert (=> b!5730409 (= lt!2280901 (lemmaFlatMapOnSingletonSet!878 z!1189 (h!69823 zl!343) lambda!310065))))

(declare-fun lt!2280864 () (InoxSet Context!10234))

(declare-fun lt!2280905 () Context!10234)

(assert (=> b!5730409 (= lt!2280864 (derivationStepZipperUp!1001 lt!2280905 (h!69824 s!2326)))))

(declare-fun lt!2280873 () (InoxSet Context!10234))

(declare-fun derivationStepZipperDown!1075 (Regex!15733 Context!10234 C!31736) (InoxSet Context!10234))

(assert (=> b!5730409 (= lt!2280873 (derivationStepZipperDown!1075 (h!69822 (exprs!5617 (h!69823 zl!343))) lt!2280905 (h!69824 s!2326)))))

(assert (=> b!5730409 (= lt!2280905 (Context!10235 (t!376826 (exprs!5617 (h!69823 zl!343)))))))

(declare-fun lt!2280904 () (InoxSet Context!10234))

(assert (=> b!5730409 (= lt!2280904 (derivationStepZipperUp!1001 (Context!10235 (Cons!63374 (h!69822 (exprs!5617 (h!69823 zl!343))) (t!376826 (exprs!5617 (h!69823 zl!343))))) (h!69824 s!2326)))))

(declare-fun b!5730410 () Bool)

(declare-fun res!2419394 () Bool)

(declare-fun e!3523230 () Bool)

(assert (=> b!5730410 (=> res!2419394 e!3523230)))

(declare-fun lt!2280866 () Regex!15733)

(assert (=> b!5730410 (= res!2419394 (not (= lt!2280866 r!7292)))))

(declare-fun b!5730411 () Bool)

(declare-fun e!3523227 () Bool)

(declare-fun e!3523225 () Bool)

(assert (=> b!5730411 (= e!3523227 e!3523225)))

(declare-fun res!2419373 () Bool)

(assert (=> b!5730411 (=> res!2419373 e!3523225)))

(declare-fun lt!2280886 () (InoxSet Context!10234))

(declare-fun lt!2280888 () (InoxSet Context!10234))

(assert (=> b!5730411 (= res!2419373 (not (= lt!2280886 lt!2280888)))))

(declare-fun lt!2280868 () Context!10234)

(assert (=> b!5730411 (= (flatMap!1346 lt!2280874 lambda!310065) (derivationStepZipperUp!1001 lt!2280868 (h!69824 s!2326)))))

(declare-fun lt!2280893 () Unit!156464)

(assert (=> b!5730411 (= lt!2280893 (lemmaFlatMapOnSingletonSet!878 lt!2280874 lt!2280868 lambda!310065))))

(declare-fun lt!2280908 () (InoxSet Context!10234))

(assert (=> b!5730411 (= lt!2280908 (derivationStepZipperUp!1001 lt!2280868 (h!69824 s!2326)))))

(declare-fun derivationStepZipper!1816 ((InoxSet Context!10234) C!31736) (InoxSet Context!10234))

(assert (=> b!5730411 (= lt!2280886 (derivationStepZipper!1816 lt!2280874 (h!69824 s!2326)))))

(assert (=> b!5730411 (= lt!2280874 (store ((as const (Array Context!10234 Bool)) false) lt!2280868 true))))

(assert (=> b!5730411 (= lt!2280868 (Context!10235 (Cons!63374 (reg!16062 (regOne!31978 r!7292)) lt!2280897)))))

(declare-fun b!5730412 () Bool)

(declare-fun e!3523219 () Bool)

(declare-fun lt!2280871 () Bool)

(assert (=> b!5730412 (= e!3523219 lt!2280871)))

(declare-fun b!5730413 () Bool)

(declare-fun res!2419387 () Bool)

(assert (=> b!5730413 (=> res!2419387 e!3523232)))

(declare-fun isEmpty!35254 (List!63499) Bool)

(assert (=> b!5730413 (= res!2419387 (not (isEmpty!35254 (t!376827 zl!343))))))

(declare-fun b!5730414 () Bool)

(declare-fun Unit!156466 () Unit!156464)

(assert (=> b!5730414 (= e!3523228 Unit!156466)))

(declare-fun lt!2280910 () Unit!156464)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!758 ((InoxSet Context!10234) (InoxSet Context!10234) List!63500) Unit!156464)

(assert (=> b!5730414 (= lt!2280910 (lemmaZipperConcatMatchesSameAsBothZippers!758 lt!2280873 lt!2280864 (t!376828 s!2326)))))

(declare-fun res!2419388 () Bool)

(declare-fun matchZipper!1871 ((InoxSet Context!10234) List!63500) Bool)

(assert (=> b!5730414 (= res!2419388 (matchZipper!1871 lt!2280873 (t!376828 s!2326)))))

(declare-fun e!3523231 () Bool)

(assert (=> b!5730414 (=> res!2419388 e!3523231)))

(assert (=> b!5730414 (= (matchZipper!1871 ((_ map or) lt!2280873 lt!2280864) (t!376828 s!2326)) e!3523231)))

(declare-fun b!5730416 () Bool)

(declare-fun e!3523220 () Bool)

(assert (=> b!5730416 (= e!3523220 (nullable!5765 (regOne!31978 (regOne!31978 r!7292))))))

(declare-fun b!5730417 () Bool)

(declare-fun e!3523217 () Bool)

(declare-fun tp!1586164 () Bool)

(declare-fun tp!1586166 () Bool)

(assert (=> b!5730417 (= e!3523217 (and tp!1586164 tp!1586166))))

(declare-fun b!5730418 () Bool)

(declare-fun res!2419375 () Bool)

(assert (=> b!5730418 (=> res!2419375 e!3523232)))

(assert (=> b!5730418 (= res!2419375 (not ((_ is Cons!63374) (exprs!5617 (h!69823 zl!343)))))))

(declare-fun b!5730419 () Bool)

(declare-fun e!3523237 () Bool)

(declare-fun tp!1586160 () Bool)

(assert (=> b!5730419 (= e!3523237 tp!1586160)))

(declare-fun b!5730420 () Bool)

(declare-fun e!3523233 () Bool)

(assert (=> b!5730420 (= e!3523233 (not (matchZipper!1871 lt!2280864 (t!376828 s!2326))))))

(declare-fun b!5730421 () Bool)

(declare-fun e!3523236 () Bool)

(declare-fun e!3523218 () Bool)

(assert (=> b!5730421 (= e!3523236 e!3523218)))

(declare-fun res!2419389 () Bool)

(assert (=> b!5730421 (=> res!2419389 e!3523218)))

(declare-fun lt!2280906 () Regex!15733)

(declare-fun unfocusZipper!1475 (List!63499) Regex!15733)

(assert (=> b!5730421 (= res!2419389 (not (= (unfocusZipper!1475 (Cons!63375 lt!2280868 Nil!63375)) lt!2280906)))))

(declare-fun lt!2280877 () Regex!15733)

(assert (=> b!5730421 (= lt!2280906 (Concat!24578 (reg!16062 (regOne!31978 r!7292)) lt!2280877))))

(declare-fun b!5730422 () Bool)

(declare-fun res!2419376 () Bool)

(assert (=> b!5730422 (=> res!2419376 e!3523232)))

(declare-fun generalisedConcat!1348 (List!63498) Regex!15733)

(assert (=> b!5730422 (= res!2419376 (not (= r!7292 (generalisedConcat!1348 (exprs!5617 (h!69823 zl!343))))))))

(declare-fun b!5730423 () Bool)

(declare-fun res!2419397 () Bool)

(assert (=> b!5730423 (=> res!2419397 e!3523223)))

(assert (=> b!5730423 (= res!2419397 e!3523220)))

(declare-fun res!2419386 () Bool)

(assert (=> b!5730423 (=> (not res!2419386) (not e!3523220))))

(assert (=> b!5730423 (= res!2419386 ((_ is Concat!24578) (regOne!31978 r!7292)))))

(declare-fun b!5730424 () Bool)

(declare-fun e!3523238 () Bool)

(declare-fun tp!1586159 () Bool)

(assert (=> b!5730424 (= e!3523238 tp!1586159)))

(declare-fun b!5730425 () Bool)

(declare-fun tp!1586165 () Bool)

(assert (=> b!5730425 (= e!3523217 tp!1586165)))

(declare-fun b!5730426 () Bool)

(declare-fun Unit!156467 () Unit!156464)

(assert (=> b!5730426 (= e!3523228 Unit!156467)))

(declare-fun b!5730427 () Bool)

(declare-fun res!2419399 () Bool)

(declare-fun e!3523235 () Bool)

(assert (=> b!5730427 (=> res!2419399 e!3523235)))

(assert (=> b!5730427 (= res!2419399 (not lt!2280879))))

(declare-fun b!5730428 () Bool)

(declare-fun res!2419391 () Bool)

(declare-fun e!3523240 () Bool)

(assert (=> b!5730428 (=> (not res!2419391) (not e!3523240))))

(declare-fun toList!9517 ((InoxSet Context!10234)) List!63499)

(assert (=> b!5730428 (= res!2419391 (= (toList!9517 z!1189) zl!343))))

(declare-fun b!5730429 () Bool)

(declare-fun e!3523242 () Bool)

(assert (=> b!5730429 (= e!3523218 e!3523242)))

(declare-fun res!2419392 () Bool)

(assert (=> b!5730429 (=> res!2419392 e!3523242)))

(declare-fun lt!2280861 () List!63499)

(assert (=> b!5730429 (= res!2419392 (not (= (unfocusZipper!1475 lt!2280861) (reg!16062 (regOne!31978 r!7292)))))))

(assert (=> b!5730429 (= lt!2280861 (Cons!63375 lt!2280862 Nil!63375))))

(declare-fun lt!2280885 () (InoxSet Context!10234))

(assert (=> b!5730429 (= (flatMap!1346 lt!2280885 lambda!310065) (derivationStepZipperUp!1001 lt!2280872 (h!69824 s!2326)))))

(declare-fun lt!2280898 () Unit!156464)

(assert (=> b!5730429 (= lt!2280898 (lemmaFlatMapOnSingletonSet!878 lt!2280885 lt!2280872 lambda!310065))))

(assert (=> b!5730429 (= (flatMap!1346 lt!2280892 lambda!310065) (derivationStepZipperUp!1001 lt!2280862 (h!69824 s!2326)))))

(declare-fun lt!2280884 () Unit!156464)

(assert (=> b!5730429 (= lt!2280884 (lemmaFlatMapOnSingletonSet!878 lt!2280892 lt!2280862 lambda!310065))))

(declare-fun lt!2280870 () (InoxSet Context!10234))

(assert (=> b!5730429 (= lt!2280870 (derivationStepZipperUp!1001 lt!2280872 (h!69824 s!2326)))))

(declare-fun lt!2280900 () (InoxSet Context!10234))

(assert (=> b!5730429 (= lt!2280900 (derivationStepZipperUp!1001 lt!2280862 (h!69824 s!2326)))))

(assert (=> b!5730429 (= lt!2280885 (store ((as const (Array Context!10234 Bool)) false) lt!2280872 true))))

(assert (=> b!5730429 (= lt!2280892 (store ((as const (Array Context!10234 Bool)) false) lt!2280862 true))))

(assert (=> b!5730429 (= lt!2280862 (Context!10235 lt!2280896))))

(assert (=> b!5730429 (= lt!2280896 (Cons!63374 (reg!16062 (regOne!31978 r!7292)) Nil!63374))))

(declare-fun b!5730430 () Bool)

(declare-fun e!3523221 () Bool)

(assert (=> b!5730430 (= e!3523242 e!3523221)))

(declare-fun res!2419402 () Bool)

(assert (=> b!5730430 (=> res!2419402 e!3523221)))

(declare-fun lt!2280880 () List!63499)

(assert (=> b!5730430 (= res!2419402 (not (= (unfocusZipper!1475 lt!2280880) lt!2280877)))))

(assert (=> b!5730430 (= lt!2280880 (Cons!63375 lt!2280872 Nil!63375))))

(declare-fun b!5730431 () Bool)

(declare-fun res!2419393 () Bool)

(assert (=> b!5730431 (=> res!2419393 e!3523223)))

(assert (=> b!5730431 (= res!2419393 (or ((_ is Concat!24578) (regOne!31978 r!7292)) (not ((_ is Star!15733) (regOne!31978 r!7292)))))))

(declare-fun b!5730432 () Bool)

(declare-fun tp_is_empty!40719 () Bool)

(assert (=> b!5730432 (= e!3523217 tp_is_empty!40719)))

(declare-fun b!5730433 () Bool)

(declare-fun e!3523239 () Bool)

(assert (=> b!5730433 (= e!3523222 e!3523239)))

(declare-fun res!2419383 () Bool)

(assert (=> b!5730433 (=> res!2419383 e!3523239)))

(declare-fun lt!2280876 () List!63500)

(assert (=> b!5730433 (= res!2419383 (not (= s!2326 lt!2280876)))))

(declare-datatypes ((tuple2!65660 0))(
  ( (tuple2!65661 (_1!36133 List!63500) (_2!36133 List!63500)) )
))
(declare-fun lt!2280863 () tuple2!65660)

(declare-fun ++!13939 (List!63500 List!63500) List!63500)

(assert (=> b!5730433 (= lt!2280876 (++!13939 (_1!36133 lt!2280863) (_2!36133 lt!2280863)))))

(declare-datatypes ((Option!15742 0))(
  ( (None!15741) (Some!15741 (v!51796 tuple2!65660)) )
))
(declare-fun lt!2280881 () Option!15742)

(declare-fun get!21855 (Option!15742) tuple2!65660)

(assert (=> b!5730433 (= lt!2280863 (get!21855 lt!2280881))))

(declare-fun isDefined!12445 (Option!15742) Bool)

(assert (=> b!5730433 (isDefined!12445 lt!2280881)))

(declare-fun findConcatSeparationZippers!120 ((InoxSet Context!10234) (InoxSet Context!10234) List!63500 List!63500 List!63500) Option!15742)

(assert (=> b!5730433 (= lt!2280881 (findConcatSeparationZippers!120 lt!2280892 lt!2280885 Nil!63376 s!2326 s!2326))))

(declare-fun lt!2280882 () Unit!156464)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!120 ((InoxSet Context!10234) Context!10234 List!63500) Unit!156464)

(assert (=> b!5730433 (= lt!2280882 (lemmaConcatZipperMatchesStringThenFindConcatDefined!120 lt!2280892 lt!2280872 s!2326))))

(declare-fun b!5730434 () Bool)

(declare-fun res!2419374 () Bool)

(assert (=> b!5730434 (=> res!2419374 e!3523235)))

(assert (=> b!5730434 (= res!2419374 (not (matchZipper!1871 z!1189 s!2326)))))

(assert (=> b!5730435 (= e!3523232 e!3523241)))

(declare-fun res!2419378 () Bool)

(assert (=> b!5730435 (=> res!2419378 e!3523241)))

(declare-fun lt!2280890 () Bool)

(declare-fun lt!2280894 () Bool)

(assert (=> b!5730435 (= res!2419378 (or (not (= lt!2280890 lt!2280894)) ((_ is Nil!63376) s!2326)))))

(declare-fun Exists!2833 (Int) Bool)

(assert (=> b!5730435 (= (Exists!2833 lambda!310063) (Exists!2833 lambda!310064))))

(declare-fun lt!2280865 () Unit!156464)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1462 (Regex!15733 Regex!15733 List!63500) Unit!156464)

(assert (=> b!5730435 (= lt!2280865 (lemmaExistCutMatchRandMatchRSpecEquivalent!1462 (regOne!31978 r!7292) (regTwo!31978 r!7292) s!2326))))

(assert (=> b!5730435 (= lt!2280894 (Exists!2833 lambda!310063))))

(declare-fun findConcatSeparation!2156 (Regex!15733 Regex!15733 List!63500 List!63500 List!63500) Option!15742)

(assert (=> b!5730435 (= lt!2280894 (isDefined!12445 (findConcatSeparation!2156 (regOne!31978 r!7292) (regTwo!31978 r!7292) Nil!63376 s!2326 s!2326)))))

(declare-fun lt!2280867 () Unit!156464)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1920 (Regex!15733 Regex!15733 List!63500) Unit!156464)

(assert (=> b!5730435 (= lt!2280867 (lemmaFindConcatSeparationEquivalentToExists!1920 (regOne!31978 r!7292) (regTwo!31978 r!7292) s!2326))))

(declare-fun b!5730436 () Bool)

(declare-fun e!3523234 () Bool)

(assert (=> b!5730436 (= e!3523234 (not e!3523232))))

(declare-fun res!2419390 () Bool)

(assert (=> b!5730436 (=> res!2419390 e!3523232)))

(assert (=> b!5730436 (= res!2419390 (not ((_ is Cons!63375) zl!343)))))

(declare-fun matchRSpec!2836 (Regex!15733 List!63500) Bool)

(assert (=> b!5730436 (= lt!2280890 (matchRSpec!2836 r!7292 s!2326))))

(declare-fun matchR!7918 (Regex!15733 List!63500) Bool)

(assert (=> b!5730436 (= lt!2280890 (matchR!7918 r!7292 s!2326))))

(declare-fun lt!2280902 () Unit!156464)

(declare-fun mainMatchTheorem!2836 (Regex!15733 List!63500) Unit!156464)

(assert (=> b!5730436 (= lt!2280902 (mainMatchTheorem!2836 r!7292 s!2326))))

(declare-fun b!5730437 () Bool)

(assert (=> b!5730437 (= e!3523230 e!3523236)))

(declare-fun res!2419403 () Bool)

(assert (=> b!5730437 (=> res!2419403 e!3523236)))

(assert (=> b!5730437 (= res!2419403 (not (= r!7292 lt!2280877)))))

(declare-fun lt!2280875 () Regex!15733)

(assert (=> b!5730437 (= lt!2280877 (Concat!24578 lt!2280875 (regTwo!31978 r!7292)))))

(declare-fun setNonEmpty!38443 () Bool)

(declare-fun setRes!38443 () Bool)

(declare-fun tp!1586162 () Bool)

(declare-fun setElem!38443 () Context!10234)

(declare-fun inv!82579 (Context!10234) Bool)

(assert (=> setNonEmpty!38443 (= setRes!38443 (and tp!1586162 (inv!82579 setElem!38443) e!3523237))))

(declare-fun setRest!38443 () (InoxSet Context!10234))

(assert (=> setNonEmpty!38443 (= z!1189 ((_ map or) (store ((as const (Array Context!10234 Bool)) false) setElem!38443 true) setRest!38443))))

(declare-fun b!5730438 () Bool)

(declare-fun res!2419400 () Bool)

(assert (=> b!5730438 (=> res!2419400 e!3523229)))

(declare-fun lt!2280878 () Bool)

(declare-fun lt!2280895 () Bool)

(assert (=> b!5730438 (= res!2419400 (or (not lt!2280878) (not lt!2280895)))))

(declare-fun b!5730439 () Bool)

(declare-fun res!2419381 () Bool)

(assert (=> b!5730439 (=> res!2419381 e!3523239)))

(assert (=> b!5730439 (= res!2419381 (not (matchZipper!1871 lt!2280892 (_1!36133 lt!2280863))))))

(declare-fun b!5730440 () Bool)

(assert (=> b!5730440 (= e!3523235 e!3523229)))

(declare-fun res!2419396 () Bool)

(assert (=> b!5730440 (=> res!2419396 e!3523229)))

(assert (=> b!5730440 (= res!2419396 e!3523233)))

(declare-fun res!2419398 () Bool)

(assert (=> b!5730440 (=> (not res!2419398) (not e!3523233))))

(assert (=> b!5730440 (= res!2419398 (not lt!2280878))))

(assert (=> b!5730440 (= lt!2280878 (matchZipper!1871 lt!2280873 (t!376828 s!2326)))))

(declare-fun b!5730441 () Bool)

(assert (=> b!5730441 (= e!3523239 true)))

(assert (=> b!5730441 e!3523219))

(declare-fun res!2419377 () Bool)

(assert (=> b!5730441 (=> (not res!2419377) (not e!3523219))))

(assert (=> b!5730441 (= res!2419377 (matchR!7918 lt!2280906 lt!2280876))))

(declare-fun lt!2280903 () Unit!156464)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!270 (Regex!15733 Regex!15733 List!63500 List!63500) Unit!156464)

(assert (=> b!5730441 (= lt!2280903 (lemmaTwoRegexMatchThenConcatMatchesConcatString!270 (reg!16062 (regOne!31978 r!7292)) lt!2280877 (_1!36133 lt!2280863) (_2!36133 lt!2280863)))))

(assert (=> b!5730441 (matchR!7918 lt!2280877 (_2!36133 lt!2280863))))

(declare-fun lt!2280891 () Unit!156464)

(declare-fun theoremZipperRegexEquiv!653 ((InoxSet Context!10234) List!63499 Regex!15733 List!63500) Unit!156464)

(assert (=> b!5730441 (= lt!2280891 (theoremZipperRegexEquiv!653 lt!2280885 lt!2280880 lt!2280877 (_2!36133 lt!2280863)))))

(assert (=> b!5730441 (matchR!7918 (reg!16062 (regOne!31978 r!7292)) (_1!36133 lt!2280863))))

(declare-fun lt!2280907 () Unit!156464)

(assert (=> b!5730441 (= lt!2280907 (theoremZipperRegexEquiv!653 lt!2280892 lt!2280861 (reg!16062 (regOne!31978 r!7292)) (_1!36133 lt!2280863)))))

(assert (=> b!5730441 (matchZipper!1871 (store ((as const (Array Context!10234 Bool)) false) (Context!10235 (++!13938 lt!2280896 lt!2280897)) true) lt!2280876)))

(declare-fun lt!2280869 () Unit!156464)

(assert (=> b!5730441 (= lt!2280869 (lemmaConcatPreservesForall!302 lt!2280896 lt!2280897 lambda!310067))))

(declare-fun lt!2280889 () Unit!156464)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!132 (Context!10234 Context!10234 List!63500 List!63500) Unit!156464)

(assert (=> b!5730441 (= lt!2280889 (lemmaConcatenateContextMatchesConcatOfStrings!132 lt!2280862 lt!2280872 (_1!36133 lt!2280863) (_2!36133 lt!2280863)))))

(declare-fun b!5730442 () Bool)

(assert (=> b!5730442 (= e!3523240 e!3523234)))

(declare-fun res!2419384 () Bool)

(assert (=> b!5730442 (=> (not res!2419384) (not e!3523234))))

(assert (=> b!5730442 (= res!2419384 (= r!7292 lt!2280866))))

(assert (=> b!5730442 (= lt!2280866 (unfocusZipper!1475 zl!343))))

(declare-fun b!5730443 () Bool)

(declare-fun e!3523224 () Bool)

(declare-fun tp!1586158 () Bool)

(assert (=> b!5730443 (= e!3523224 (and tp_is_empty!40719 tp!1586158))))

(declare-fun b!5730444 () Bool)

(assert (=> b!5730444 (= e!3523225 e!3523230)))

(declare-fun res!2419372 () Bool)

(assert (=> b!5730444 (=> res!2419372 e!3523230)))

(assert (=> b!5730444 (= res!2419372 (not (= lt!2280895 (matchZipper!1871 lt!2280886 (t!376828 s!2326)))))))

(assert (=> b!5730444 (= lt!2280895 (matchZipper!1871 lt!2280874 s!2326))))

(declare-fun b!5730445 () Bool)

(assert (=> b!5730445 (= e!3523223 e!3523227)))

(declare-fun res!2419401 () Bool)

(assert (=> b!5730445 (=> res!2419401 e!3523227)))

(assert (=> b!5730445 (= res!2419401 (not (= lt!2280873 lt!2280888)))))

(assert (=> b!5730445 (= lt!2280888 (derivationStepZipperDown!1075 (reg!16062 (regOne!31978 r!7292)) lt!2280872 (h!69824 s!2326)))))

(assert (=> b!5730445 (= lt!2280872 (Context!10235 lt!2280897))))

(assert (=> b!5730445 (= lt!2280897 (Cons!63374 lt!2280875 (t!376826 (exprs!5617 (h!69823 zl!343)))))))

(assert (=> b!5730445 (= lt!2280875 (Star!15733 (reg!16062 (regOne!31978 r!7292))))))

(declare-fun b!5730446 () Bool)

(declare-fun tp!1586161 () Bool)

(declare-fun tp!1586157 () Bool)

(assert (=> b!5730446 (= e!3523217 (and tp!1586161 tp!1586157))))

(declare-fun b!5730447 () Bool)

(declare-fun e!3523226 () Bool)

(declare-fun tp!1586163 () Bool)

(assert (=> b!5730447 (= e!3523226 (and (inv!82579 (h!69823 zl!343)) e!3523238 tp!1586163))))

(declare-fun b!5730448 () Bool)

(assert (=> b!5730448 (= e!3523221 e!3523235)))

(declare-fun res!2419379 () Bool)

(assert (=> b!5730448 (=> res!2419379 e!3523235)))

(assert (=> b!5730448 (= res!2419379 lt!2280890)))

(assert (=> b!5730448 (= lt!2280871 (matchRSpec!2836 lt!2280906 s!2326))))

(assert (=> b!5730448 (= lt!2280871 (matchR!7918 lt!2280906 s!2326))))

(declare-fun lt!2280883 () Unit!156464)

(assert (=> b!5730448 (= lt!2280883 (mainMatchTheorem!2836 lt!2280906 s!2326))))

(declare-fun res!2419385 () Bool)

(assert (=> start!589776 (=> (not res!2419385) (not e!3523240))))

(declare-fun validRegex!7469 (Regex!15733) Bool)

(assert (=> start!589776 (= res!2419385 (validRegex!7469 r!7292))))

(assert (=> start!589776 e!3523240))

(assert (=> start!589776 e!3523217))

(declare-fun condSetEmpty!38443 () Bool)

(assert (=> start!589776 (= condSetEmpty!38443 (= z!1189 ((as const (Array Context!10234 Bool)) false)))))

(assert (=> start!589776 setRes!38443))

(assert (=> start!589776 e!3523226))

(assert (=> start!589776 e!3523224))

(declare-fun b!5730415 () Bool)

(declare-fun res!2419404 () Bool)

(assert (=> b!5730415 (=> res!2419404 e!3523239)))

(assert (=> b!5730415 (= res!2419404 (not (matchZipper!1871 lt!2280885 (_2!36133 lt!2280863))))))

(declare-fun setIsEmpty!38443 () Bool)

(assert (=> setIsEmpty!38443 setRes!38443))

(declare-fun b!5730449 () Bool)

(assert (=> b!5730449 (= e!3523231 (matchZipper!1871 lt!2280864 (t!376828 s!2326)))))

(assert (= (and start!589776 res!2419385) b!5730428))

(assert (= (and b!5730428 res!2419391) b!5730442))

(assert (= (and b!5730442 res!2419384) b!5730436))

(assert (= (and b!5730436 (not res!2419390)) b!5730413))

(assert (= (and b!5730413 (not res!2419387)) b!5730422))

(assert (= (and b!5730422 (not res!2419376)) b!5730418))

(assert (= (and b!5730418 (not res!2419375)) b!5730406))

(assert (= (and b!5730406 (not res!2419382)) b!5730405))

(assert (= (and b!5730405 (not res!2419371)) b!5730435))

(assert (= (and b!5730435 (not res!2419378)) b!5730408))

(assert (= (and b!5730408 (not res!2419405)) b!5730409))

(assert (= (and b!5730409 c!1011114) b!5730414))

(assert (= (and b!5730409 (not c!1011114)) b!5730426))

(assert (= (and b!5730414 (not res!2419388)) b!5730449))

(assert (= (and b!5730409 (not res!2419395)) b!5730423))

(assert (= (and b!5730423 res!2419386) b!5730416))

(assert (= (and b!5730423 (not res!2419397)) b!5730431))

(assert (= (and b!5730431 (not res!2419393)) b!5730445))

(assert (= (and b!5730445 (not res!2419401)) b!5730411))

(assert (= (and b!5730411 (not res!2419373)) b!5730444))

(assert (= (and b!5730444 (not res!2419372)) b!5730410))

(assert (= (and b!5730410 (not res!2419394)) b!5730437))

(assert (= (and b!5730437 (not res!2419403)) b!5730421))

(assert (= (and b!5730421 (not res!2419389)) b!5730429))

(assert (= (and b!5730429 (not res!2419392)) b!5730430))

(assert (= (and b!5730430 (not res!2419402)) b!5730448))

(assert (= (and b!5730448 (not res!2419379)) b!5730434))

(assert (= (and b!5730434 (not res!2419374)) b!5730427))

(assert (= (and b!5730427 (not res!2419399)) b!5730440))

(assert (= (and b!5730440 res!2419398) b!5730420))

(assert (= (and b!5730440 (not res!2419396)) b!5730438))

(assert (= (and b!5730438 (not res!2419400)) b!5730407))

(assert (= (and b!5730407 (not res!2419380)) b!5730433))

(assert (= (and b!5730433 (not res!2419383)) b!5730439))

(assert (= (and b!5730439 (not res!2419381)) b!5730415))

(assert (= (and b!5730415 (not res!2419404)) b!5730441))

(assert (= (and b!5730441 res!2419377) b!5730412))

(assert (= (and start!589776 ((_ is ElementMatch!15733) r!7292)) b!5730432))

(assert (= (and start!589776 ((_ is Concat!24578) r!7292)) b!5730446))

(assert (= (and start!589776 ((_ is Star!15733) r!7292)) b!5730425))

(assert (= (and start!589776 ((_ is Union!15733) r!7292)) b!5730417))

(assert (= (and start!589776 condSetEmpty!38443) setIsEmpty!38443))

(assert (= (and start!589776 (not condSetEmpty!38443)) setNonEmpty!38443))

(assert (= setNonEmpty!38443 b!5730419))

(assert (= b!5730447 b!5730424))

(assert (= (and start!589776 ((_ is Cons!63375) zl!343)) b!5730447))

(assert (= (and start!589776 ((_ is Cons!63376) s!2326)) b!5730443))

(declare-fun m!6682340 () Bool)

(assert (=> b!5730409 m!6682340))

(declare-fun m!6682342 () Bool)

(assert (=> b!5730409 m!6682342))

(declare-fun m!6682344 () Bool)

(assert (=> b!5730409 m!6682344))

(declare-fun m!6682346 () Bool)

(assert (=> b!5730409 m!6682346))

(declare-fun m!6682348 () Bool)

(assert (=> b!5730409 m!6682348))

(declare-fun m!6682350 () Bool)

(assert (=> b!5730409 m!6682350))

(declare-fun m!6682352 () Bool)

(assert (=> b!5730409 m!6682352))

(declare-fun m!6682354 () Bool)

(assert (=> b!5730414 m!6682354))

(declare-fun m!6682356 () Bool)

(assert (=> b!5730414 m!6682356))

(declare-fun m!6682358 () Bool)

(assert (=> b!5730414 m!6682358))

(declare-fun m!6682360 () Bool)

(assert (=> b!5730422 m!6682360))

(declare-fun m!6682362 () Bool)

(assert (=> b!5730435 m!6682362))

(declare-fun m!6682364 () Bool)

(assert (=> b!5730435 m!6682364))

(declare-fun m!6682366 () Bool)

(assert (=> b!5730435 m!6682366))

(declare-fun m!6682368 () Bool)

(assert (=> b!5730435 m!6682368))

(assert (=> b!5730435 m!6682362))

(declare-fun m!6682370 () Bool)

(assert (=> b!5730435 m!6682370))

(assert (=> b!5730435 m!6682366))

(declare-fun m!6682372 () Bool)

(assert (=> b!5730435 m!6682372))

(declare-fun m!6682374 () Bool)

(assert (=> start!589776 m!6682374))

(declare-fun m!6682376 () Bool)

(assert (=> b!5730448 m!6682376))

(declare-fun m!6682378 () Bool)

(assert (=> b!5730448 m!6682378))

(declare-fun m!6682380 () Bool)

(assert (=> b!5730448 m!6682380))

(declare-fun m!6682382 () Bool)

(assert (=> b!5730416 m!6682382))

(declare-fun m!6682384 () Bool)

(assert (=> b!5730420 m!6682384))

(declare-fun m!6682386 () Bool)

(assert (=> b!5730429 m!6682386))

(declare-fun m!6682388 () Bool)

(assert (=> b!5730429 m!6682388))

(declare-fun m!6682390 () Bool)

(assert (=> b!5730429 m!6682390))

(declare-fun m!6682392 () Bool)

(assert (=> b!5730429 m!6682392))

(declare-fun m!6682394 () Bool)

(assert (=> b!5730429 m!6682394))

(declare-fun m!6682396 () Bool)

(assert (=> b!5730429 m!6682396))

(declare-fun m!6682398 () Bool)

(assert (=> b!5730429 m!6682398))

(declare-fun m!6682400 () Bool)

(assert (=> b!5730429 m!6682400))

(declare-fun m!6682402 () Bool)

(assert (=> b!5730429 m!6682402))

(declare-fun m!6682404 () Bool)

(assert (=> b!5730407 m!6682404))

(declare-fun m!6682406 () Bool)

(assert (=> b!5730407 m!6682406))

(declare-fun m!6682408 () Bool)

(assert (=> b!5730407 m!6682408))

(declare-fun m!6682410 () Bool)

(assert (=> b!5730407 m!6682410))

(declare-fun m!6682412 () Bool)

(assert (=> b!5730407 m!6682412))

(declare-fun m!6682414 () Bool)

(assert (=> b!5730407 m!6682414))

(declare-fun m!6682416 () Bool)

(assert (=> b!5730411 m!6682416))

(declare-fun m!6682418 () Bool)

(assert (=> b!5730411 m!6682418))

(declare-fun m!6682420 () Bool)

(assert (=> b!5730411 m!6682420))

(declare-fun m!6682422 () Bool)

(assert (=> b!5730411 m!6682422))

(declare-fun m!6682424 () Bool)

(assert (=> b!5730411 m!6682424))

(declare-fun m!6682426 () Bool)

(assert (=> b!5730415 m!6682426))

(declare-fun m!6682428 () Bool)

(assert (=> b!5730444 m!6682428))

(declare-fun m!6682430 () Bool)

(assert (=> b!5730444 m!6682430))

(assert (=> b!5730440 m!6682356))

(declare-fun m!6682432 () Bool)

(assert (=> b!5730406 m!6682432))

(assert (=> b!5730406 m!6682432))

(declare-fun m!6682434 () Bool)

(assert (=> b!5730406 m!6682434))

(declare-fun m!6682436 () Bool)

(assert (=> b!5730421 m!6682436))

(declare-fun m!6682438 () Bool)

(assert (=> b!5730428 m!6682438))

(assert (=> b!5730449 m!6682384))

(declare-fun m!6682440 () Bool)

(assert (=> b!5730430 m!6682440))

(declare-fun m!6682442 () Bool)

(assert (=> b!5730445 m!6682442))

(declare-fun m!6682444 () Bool)

(assert (=> setNonEmpty!38443 m!6682444))

(declare-fun m!6682446 () Bool)

(assert (=> b!5730439 m!6682446))

(declare-fun m!6682448 () Bool)

(assert (=> b!5730442 m!6682448))

(declare-fun m!6682450 () Bool)

(assert (=> b!5730433 m!6682450))

(declare-fun m!6682452 () Bool)

(assert (=> b!5730433 m!6682452))

(declare-fun m!6682454 () Bool)

(assert (=> b!5730433 m!6682454))

(declare-fun m!6682456 () Bool)

(assert (=> b!5730433 m!6682456))

(declare-fun m!6682458 () Bool)

(assert (=> b!5730433 m!6682458))

(assert (=> b!5730441 m!6682404))

(assert (=> b!5730441 m!6682408))

(declare-fun m!6682460 () Bool)

(assert (=> b!5730441 m!6682460))

(declare-fun m!6682462 () Bool)

(assert (=> b!5730441 m!6682462))

(declare-fun m!6682464 () Bool)

(assert (=> b!5730441 m!6682464))

(assert (=> b!5730441 m!6682410))

(declare-fun m!6682466 () Bool)

(assert (=> b!5730441 m!6682466))

(declare-fun m!6682468 () Bool)

(assert (=> b!5730441 m!6682468))

(declare-fun m!6682470 () Bool)

(assert (=> b!5730441 m!6682470))

(declare-fun m!6682472 () Bool)

(assert (=> b!5730441 m!6682472))

(assert (=> b!5730441 m!6682410))

(declare-fun m!6682474 () Bool)

(assert (=> b!5730441 m!6682474))

(declare-fun m!6682476 () Bool)

(assert (=> b!5730436 m!6682476))

(declare-fun m!6682478 () Bool)

(assert (=> b!5730436 m!6682478))

(declare-fun m!6682480 () Bool)

(assert (=> b!5730436 m!6682480))

(declare-fun m!6682482 () Bool)

(assert (=> b!5730447 m!6682482))

(declare-fun m!6682484 () Bool)

(assert (=> b!5730408 m!6682484))

(declare-fun m!6682486 () Bool)

(assert (=> b!5730413 m!6682486))

(declare-fun m!6682488 () Bool)

(assert (=> b!5730434 m!6682488))

(check-sat (not b!5730434) (not b!5730439) (not b!5730422) (not b!5730429) (not b!5730425) (not b!5730419) (not b!5730433) (not b!5730445) (not b!5730416) (not b!5730444) (not b!5730448) (not b!5730430) (not b!5730406) (not b!5730436) (not b!5730411) (not b!5730408) (not b!5730420) (not b!5730443) (not b!5730415) (not b!5730441) (not b!5730424) (not b!5730442) tp_is_empty!40719 (not b!5730446) (not b!5730428) (not b!5730413) (not start!589776) (not b!5730449) (not b!5730414) (not b!5730440) (not b!5730417) (not b!5730409) (not setNonEmpty!38443) (not b!5730407) (not b!5730447) (not b!5730421) (not b!5730435))
(check-sat)
