; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574410 () Bool)

(assert start!574410)

(declare-fun b!5498870 () Bool)

(assert (=> b!5498870 true))

(declare-fun b!5498856 () Bool)

(declare-fun e!3401548 () Bool)

(declare-fun tp!1513058 () Bool)

(declare-fun tp!1513062 () Bool)

(assert (=> b!5498856 (= e!3401548 (and tp!1513058 tp!1513062))))

(declare-fun b!5498857 () Bool)

(declare-fun res!2344165 () Bool)

(declare-fun e!3401555 () Bool)

(assert (=> b!5498857 (=> res!2344165 e!3401555)))

(declare-datatypes ((C!31212 0))(
  ( (C!31213 (val!25308 Int)) )
))
(declare-datatypes ((Regex!15471 0))(
  ( (ElementMatch!15471 (c!960293 C!31212)) (Concat!24316 (regOne!31454 Regex!15471) (regTwo!31454 Regex!15471)) (EmptyExpr!15471) (Star!15471 (reg!15800 Regex!15471)) (EmptyLang!15471) (Union!15471 (regOne!31455 Regex!15471) (regTwo!31455 Regex!15471)) )
))
(declare-fun r!7292 () Regex!15471)

(declare-datatypes ((List!62712 0))(
  ( (Nil!62588) (Cons!62588 (h!69036 Regex!15471) (t!375947 List!62712)) )
))
(declare-datatypes ((Context!9710 0))(
  ( (Context!9711 (exprs!5355 List!62712)) )
))
(declare-datatypes ((List!62713 0))(
  ( (Nil!62589) (Cons!62589 (h!69037 Context!9710) (t!375948 List!62713)) )
))
(declare-fun zl!343 () List!62713)

(declare-fun generalisedConcat!1086 (List!62712) Regex!15471)

(assert (=> b!5498857 (= res!2344165 (not (= r!7292 (generalisedConcat!1086 (exprs!5355 (h!69037 zl!343))))))))

(declare-fun b!5498858 () Bool)

(declare-fun res!2344162 () Bool)

(assert (=> b!5498858 (=> res!2344162 e!3401555)))

(declare-fun generalisedUnion!1334 (List!62712) Regex!15471)

(declare-fun unfocusZipperList!899 (List!62713) List!62712)

(assert (=> b!5498858 (= res!2344162 (not (= r!7292 (generalisedUnion!1334 (unfocusZipperList!899 zl!343)))))))

(declare-fun setIsEmpty!36431 () Bool)

(declare-fun setRes!36431 () Bool)

(assert (=> setIsEmpty!36431 setRes!36431))

(declare-fun res!2344164 () Bool)

(declare-fun e!3401557 () Bool)

(assert (=> start!574410 (=> (not res!2344164) (not e!3401557))))

(declare-fun validRegex!7207 (Regex!15471) Bool)

(assert (=> start!574410 (= res!2344164 (validRegex!7207 r!7292))))

(assert (=> start!574410 e!3401557))

(assert (=> start!574410 e!3401548))

(declare-fun condSetEmpty!36431 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9710))

(assert (=> start!574410 (= condSetEmpty!36431 (= z!1189 ((as const (Array Context!9710 Bool)) false)))))

(assert (=> start!574410 setRes!36431))

(declare-fun e!3401558 () Bool)

(assert (=> start!574410 e!3401558))

(declare-fun e!3401549 () Bool)

(assert (=> start!574410 e!3401549))

(declare-fun b!5498859 () Bool)

(assert (=> b!5498859 (= e!3401557 (not e!3401555))))

(declare-fun res!2344167 () Bool)

(assert (=> b!5498859 (=> res!2344167 e!3401555)))

(get-info :version)

(assert (=> b!5498859 (= res!2344167 (not ((_ is Cons!62589) zl!343)))))

(declare-fun lt!2243101 () Bool)

(declare-datatypes ((List!62714 0))(
  ( (Nil!62590) (Cons!62590 (h!69038 C!31212) (t!375949 List!62714)) )
))
(declare-fun s!2326 () List!62714)

(declare-fun matchRSpec!2574 (Regex!15471 List!62714) Bool)

(assert (=> b!5498859 (= lt!2243101 (matchRSpec!2574 r!7292 s!2326))))

(declare-fun matchR!7656 (Regex!15471 List!62714) Bool)

(assert (=> b!5498859 (= lt!2243101 (matchR!7656 r!7292 s!2326))))

(declare-datatypes ((Unit!155402 0))(
  ( (Unit!155403) )
))
(declare-fun lt!2243093 () Unit!155402)

(declare-fun mainMatchTheorem!2574 (Regex!15471 List!62714) Unit!155402)

(assert (=> b!5498859 (= lt!2243093 (mainMatchTheorem!2574 r!7292 s!2326))))

(declare-fun b!5498860 () Bool)

(declare-fun tp_is_empty!40195 () Bool)

(assert (=> b!5498860 (= e!3401548 tp_is_empty!40195)))

(declare-fun b!5498861 () Bool)

(declare-fun e!3401550 () Bool)

(declare-fun tp!1513056 () Bool)

(assert (=> b!5498861 (= e!3401550 tp!1513056)))

(declare-fun e!3401551 () Bool)

(declare-fun lt!2243091 () (InoxSet Context!9710))

(declare-fun b!5498862 () Bool)

(declare-fun matchZipper!1639 ((InoxSet Context!9710) List!62714) Bool)

(assert (=> b!5498862 (= e!3401551 (= (matchZipper!1639 lt!2243091 (t!375949 s!2326)) (matchZipper!1639 z!1189 s!2326)))))

(declare-fun b!5498863 () Bool)

(declare-fun res!2344169 () Bool)

(assert (=> b!5498863 (=> res!2344169 e!3401555)))

(declare-fun isEmpty!34383 (List!62713) Bool)

(assert (=> b!5498863 (= res!2344169 (not (isEmpty!34383 (t!375948 zl!343))))))

(declare-fun b!5498864 () Bool)

(declare-fun tp!1513061 () Bool)

(assert (=> b!5498864 (= e!3401549 (and tp_is_empty!40195 tp!1513061))))

(declare-fun b!5498865 () Bool)

(declare-fun res!2344171 () Bool)

(assert (=> b!5498865 (=> (not res!2344171) (not e!3401557))))

(declare-fun unfocusZipper!1213 (List!62713) Regex!15471)

(assert (=> b!5498865 (= res!2344171 (= r!7292 (unfocusZipper!1213 zl!343)))))

(declare-fun b!5498866 () Bool)

(declare-fun res!2344168 () Bool)

(assert (=> b!5498866 (=> res!2344168 e!3401555)))

(assert (=> b!5498866 (= res!2344168 (not ((_ is Cons!62588) (exprs!5355 (h!69037 zl!343)))))))

(declare-fun b!5498867 () Bool)

(declare-fun res!2344170 () Bool)

(assert (=> b!5498867 (=> (not res!2344170) (not e!3401557))))

(declare-fun toList!9255 ((InoxSet Context!9710)) List!62713)

(assert (=> b!5498867 (= res!2344170 (= (toList!9255 z!1189) zl!343))))

(declare-fun b!5498868 () Bool)

(declare-fun e!3401554 () Bool)

(declare-fun tp!1513063 () Bool)

(assert (=> b!5498868 (= e!3401554 tp!1513063)))

(declare-fun b!5498869 () Bool)

(declare-fun e!3401553 () Bool)

(declare-fun e!3401556 () Bool)

(assert (=> b!5498869 (= e!3401553 e!3401556)))

(declare-fun res!2344163 () Bool)

(assert (=> b!5498869 (=> res!2344163 e!3401556)))

(declare-fun lt!2243094 () (InoxSet Context!9710))

(assert (=> b!5498869 (= res!2344163 (not (= lt!2243094 lt!2243091)))))

(declare-fun lt!2243099 () Context!9710)

(declare-fun derivationStepZipperDown!817 (Regex!15471 Context!9710 C!31212) (InoxSet Context!9710))

(assert (=> b!5498869 (= lt!2243091 ((_ map or) (derivationStepZipperDown!817 (regOne!31455 r!7292) lt!2243099 (h!69038 s!2326)) (derivationStepZipperDown!817 (regTwo!31455 r!7292) lt!2243099 (h!69038 s!2326))))))

(assert (=> b!5498870 (= e!3401556 e!3401551)))

(declare-fun res!2344166 () Bool)

(assert (=> b!5498870 (=> res!2344166 e!3401551)))

(declare-fun derivationStepZipper!1582 ((InoxSet Context!9710) C!31212) (InoxSet Context!9710))

(assert (=> b!5498870 (= res!2344166 (not (= (derivationStepZipper!1582 z!1189 (h!69038 s!2326)) lt!2243091)))))

(declare-fun lambda!294385 () Int)

(declare-fun flatMap!1090 ((InoxSet Context!9710) Int) (InoxSet Context!9710))

(declare-fun derivationStepZipperUp!743 (Context!9710 C!31212) (InoxSet Context!9710))

(assert (=> b!5498870 (= (flatMap!1090 z!1189 lambda!294385) (derivationStepZipperUp!743 (h!69037 zl!343) (h!69038 s!2326)))))

(declare-fun lt!2243098 () Unit!155402)

(declare-fun lemmaFlatMapOnSingletonSet!622 ((InoxSet Context!9710) Context!9710 Int) Unit!155402)

(assert (=> b!5498870 (= lt!2243098 (lemmaFlatMapOnSingletonSet!622 z!1189 (h!69037 zl!343) lambda!294385))))

(declare-fun b!5498871 () Bool)

(declare-fun tp!1513055 () Bool)

(assert (=> b!5498871 (= e!3401548 tp!1513055)))

(declare-fun tp!1513060 () Bool)

(declare-fun setElem!36431 () Context!9710)

(declare-fun setNonEmpty!36431 () Bool)

(declare-fun inv!81924 (Context!9710) Bool)

(assert (=> setNonEmpty!36431 (= setRes!36431 (and tp!1513060 (inv!81924 setElem!36431) e!3401554))))

(declare-fun setRest!36431 () (InoxSet Context!9710))

(assert (=> setNonEmpty!36431 (= z!1189 ((_ map or) (store ((as const (Array Context!9710 Bool)) false) setElem!36431 true) setRest!36431))))

(declare-fun tp!1513057 () Bool)

(declare-fun b!5498872 () Bool)

(assert (=> b!5498872 (= e!3401558 (and (inv!81924 (h!69037 zl!343)) e!3401550 tp!1513057))))

(declare-fun b!5498873 () Bool)

(declare-fun res!2344173 () Bool)

(assert (=> b!5498873 (=> res!2344173 e!3401555)))

(assert (=> b!5498873 (= res!2344173 (or ((_ is EmptyExpr!15471) r!7292) ((_ is EmptyLang!15471) r!7292) ((_ is ElementMatch!15471) r!7292) (not ((_ is Union!15471) r!7292))))))

(declare-fun b!5498874 () Bool)

(declare-fun e!3401552 () Bool)

(assert (=> b!5498874 (= e!3401552 e!3401553)))

(declare-fun res!2344174 () Bool)

(assert (=> b!5498874 (=> res!2344174 e!3401553)))

(declare-fun lt!2243100 () (InoxSet Context!9710))

(assert (=> b!5498874 (= res!2344174 (not (= lt!2243100 lt!2243094)))))

(assert (=> b!5498874 (= lt!2243094 (derivationStepZipperDown!817 r!7292 lt!2243099 (h!69038 s!2326)))))

(assert (=> b!5498874 (= lt!2243099 (Context!9711 Nil!62588))))

(assert (=> b!5498874 (= lt!2243100 (derivationStepZipperUp!743 (Context!9711 (Cons!62588 r!7292 Nil!62588)) (h!69038 s!2326)))))

(declare-fun b!5498875 () Bool)

(assert (=> b!5498875 (= e!3401555 e!3401552)))

(declare-fun res!2344172 () Bool)

(assert (=> b!5498875 (=> res!2344172 e!3401552)))

(declare-fun lt!2243092 () Bool)

(declare-fun lt!2243095 () Bool)

(assert (=> b!5498875 (= res!2344172 (or (not (= lt!2243101 (or lt!2243092 lt!2243095))) ((_ is Nil!62590) s!2326)))))

(assert (=> b!5498875 (= lt!2243095 (matchRSpec!2574 (regTwo!31455 r!7292) s!2326))))

(assert (=> b!5498875 (= lt!2243095 (matchR!7656 (regTwo!31455 r!7292) s!2326))))

(declare-fun lt!2243096 () Unit!155402)

(assert (=> b!5498875 (= lt!2243096 (mainMatchTheorem!2574 (regTwo!31455 r!7292) s!2326))))

(assert (=> b!5498875 (= lt!2243092 (matchRSpec!2574 (regOne!31455 r!7292) s!2326))))

(assert (=> b!5498875 (= lt!2243092 (matchR!7656 (regOne!31455 r!7292) s!2326))))

(declare-fun lt!2243097 () Unit!155402)

(assert (=> b!5498875 (= lt!2243097 (mainMatchTheorem!2574 (regOne!31455 r!7292) s!2326))))

(declare-fun b!5498876 () Bool)

(declare-fun tp!1513059 () Bool)

(declare-fun tp!1513054 () Bool)

(assert (=> b!5498876 (= e!3401548 (and tp!1513059 tp!1513054))))

(assert (= (and start!574410 res!2344164) b!5498867))

(assert (= (and b!5498867 res!2344170) b!5498865))

(assert (= (and b!5498865 res!2344171) b!5498859))

(assert (= (and b!5498859 (not res!2344167)) b!5498863))

(assert (= (and b!5498863 (not res!2344169)) b!5498857))

(assert (= (and b!5498857 (not res!2344165)) b!5498866))

(assert (= (and b!5498866 (not res!2344168)) b!5498858))

(assert (= (and b!5498858 (not res!2344162)) b!5498873))

(assert (= (and b!5498873 (not res!2344173)) b!5498875))

(assert (= (and b!5498875 (not res!2344172)) b!5498874))

(assert (= (and b!5498874 (not res!2344174)) b!5498869))

(assert (= (and b!5498869 (not res!2344163)) b!5498870))

(assert (= (and b!5498870 (not res!2344166)) b!5498862))

(assert (= (and start!574410 ((_ is ElementMatch!15471) r!7292)) b!5498860))

(assert (= (and start!574410 ((_ is Concat!24316) r!7292)) b!5498856))

(assert (= (and start!574410 ((_ is Star!15471) r!7292)) b!5498871))

(assert (= (and start!574410 ((_ is Union!15471) r!7292)) b!5498876))

(assert (= (and start!574410 condSetEmpty!36431) setIsEmpty!36431))

(assert (= (and start!574410 (not condSetEmpty!36431)) setNonEmpty!36431))

(assert (= setNonEmpty!36431 b!5498868))

(assert (= b!5498872 b!5498861))

(assert (= (and start!574410 ((_ is Cons!62589) zl!343)) b!5498872))

(assert (= (and start!574410 ((_ is Cons!62590) s!2326)) b!5498864))

(declare-fun m!6507648 () Bool)

(assert (=> b!5498865 m!6507648))

(declare-fun m!6507650 () Bool)

(assert (=> b!5498857 m!6507650))

(declare-fun m!6507652 () Bool)

(assert (=> b!5498874 m!6507652))

(declare-fun m!6507654 () Bool)

(assert (=> b!5498874 m!6507654))

(declare-fun m!6507656 () Bool)

(assert (=> b!5498867 m!6507656))

(declare-fun m!6507658 () Bool)

(assert (=> b!5498862 m!6507658))

(declare-fun m!6507660 () Bool)

(assert (=> b!5498862 m!6507660))

(declare-fun m!6507662 () Bool)

(assert (=> b!5498858 m!6507662))

(assert (=> b!5498858 m!6507662))

(declare-fun m!6507664 () Bool)

(assert (=> b!5498858 m!6507664))

(declare-fun m!6507666 () Bool)

(assert (=> b!5498870 m!6507666))

(declare-fun m!6507668 () Bool)

(assert (=> b!5498870 m!6507668))

(declare-fun m!6507670 () Bool)

(assert (=> b!5498870 m!6507670))

(declare-fun m!6507672 () Bool)

(assert (=> b!5498870 m!6507672))

(declare-fun m!6507674 () Bool)

(assert (=> b!5498859 m!6507674))

(declare-fun m!6507676 () Bool)

(assert (=> b!5498859 m!6507676))

(declare-fun m!6507678 () Bool)

(assert (=> b!5498859 m!6507678))

(declare-fun m!6507680 () Bool)

(assert (=> setNonEmpty!36431 m!6507680))

(declare-fun m!6507682 () Bool)

(assert (=> start!574410 m!6507682))

(declare-fun m!6507684 () Bool)

(assert (=> b!5498872 m!6507684))

(declare-fun m!6507686 () Bool)

(assert (=> b!5498875 m!6507686))

(declare-fun m!6507688 () Bool)

(assert (=> b!5498875 m!6507688))

(declare-fun m!6507690 () Bool)

(assert (=> b!5498875 m!6507690))

(declare-fun m!6507692 () Bool)

(assert (=> b!5498875 m!6507692))

(declare-fun m!6507694 () Bool)

(assert (=> b!5498875 m!6507694))

(declare-fun m!6507696 () Bool)

(assert (=> b!5498875 m!6507696))

(declare-fun m!6507698 () Bool)

(assert (=> b!5498863 m!6507698))

(declare-fun m!6507700 () Bool)

(assert (=> b!5498869 m!6507700))

(declare-fun m!6507702 () Bool)

(assert (=> b!5498869 m!6507702))

(check-sat (not start!574410) tp_is_empty!40195 (not b!5498869) (not b!5498876) (not b!5498870) (not b!5498858) (not b!5498861) (not b!5498864) (not b!5498856) (not b!5498862) (not b!5498875) (not b!5498874) (not b!5498857) (not b!5498868) (not b!5498863) (not b!5498872) (not b!5498859) (not setNonEmpty!36431) (not b!5498865) (not b!5498867) (not b!5498871))
(check-sat)
(get-model)

(declare-fun bs!1268453 () Bool)

(declare-fun d!1743231 () Bool)

(assert (= bs!1268453 (and d!1743231 b!5498870)))

(declare-fun lambda!294393 () Int)

(assert (=> bs!1268453 (= lambda!294393 lambda!294385)))

(assert (=> d!1743231 true))

(assert (=> d!1743231 (= (derivationStepZipper!1582 z!1189 (h!69038 s!2326)) (flatMap!1090 z!1189 lambda!294393))))

(declare-fun bs!1268454 () Bool)

(assert (= bs!1268454 d!1743231))

(declare-fun m!6507724 () Bool)

(assert (=> bs!1268454 m!6507724))

(assert (=> b!5498870 d!1743231))

(declare-fun d!1743233 () Bool)

(declare-fun choose!41790 ((InoxSet Context!9710) Int) (InoxSet Context!9710))

(assert (=> d!1743233 (= (flatMap!1090 z!1189 lambda!294385) (choose!41790 z!1189 lambda!294385))))

(declare-fun bs!1268456 () Bool)

(assert (= bs!1268456 d!1743233))

(declare-fun m!6507730 () Bool)

(assert (=> bs!1268456 m!6507730))

(assert (=> b!5498870 d!1743233))

(declare-fun b!5498930 () Bool)

(declare-fun e!3401589 () (InoxSet Context!9710))

(declare-fun e!3401591 () (InoxSet Context!9710))

(assert (=> b!5498930 (= e!3401589 e!3401591)))

(declare-fun c!960315 () Bool)

(assert (=> b!5498930 (= c!960315 ((_ is Cons!62588) (exprs!5355 (h!69037 zl!343))))))

(declare-fun b!5498931 () Bool)

(declare-fun call!405770 () (InoxSet Context!9710))

(assert (=> b!5498931 (= e!3401591 call!405770)))

(declare-fun b!5498932 () Bool)

(assert (=> b!5498932 (= e!3401589 ((_ map or) call!405770 (derivationStepZipperUp!743 (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343)))) (h!69038 s!2326))))))

(declare-fun b!5498933 () Bool)

(assert (=> b!5498933 (= e!3401591 ((as const (Array Context!9710 Bool)) false))))

(declare-fun b!5498934 () Bool)

(declare-fun e!3401590 () Bool)

(declare-fun nullable!5513 (Regex!15471) Bool)

(assert (=> b!5498934 (= e!3401590 (nullable!5513 (h!69036 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun bm!405765 () Bool)

(assert (=> bm!405765 (= call!405770 (derivationStepZipperDown!817 (h!69036 (exprs!5355 (h!69037 zl!343))) (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343)))) (h!69038 s!2326)))))

(declare-fun d!1743237 () Bool)

(declare-fun c!960316 () Bool)

(assert (=> d!1743237 (= c!960316 e!3401590)))

(declare-fun res!2344186 () Bool)

(assert (=> d!1743237 (=> (not res!2344186) (not e!3401590))))

(assert (=> d!1743237 (= res!2344186 ((_ is Cons!62588) (exprs!5355 (h!69037 zl!343))))))

(assert (=> d!1743237 (= (derivationStepZipperUp!743 (h!69037 zl!343) (h!69038 s!2326)) e!3401589)))

(assert (= (and d!1743237 res!2344186) b!5498934))

(assert (= (and d!1743237 c!960316) b!5498932))

(assert (= (and d!1743237 (not c!960316)) b!5498930))

(assert (= (and b!5498930 c!960315) b!5498931))

(assert (= (and b!5498930 (not c!960315)) b!5498933))

(assert (= (or b!5498932 b!5498931) bm!405765))

(declare-fun m!6507738 () Bool)

(assert (=> b!5498932 m!6507738))

(declare-fun m!6507740 () Bool)

(assert (=> b!5498934 m!6507740))

(declare-fun m!6507742 () Bool)

(assert (=> bm!405765 m!6507742))

(assert (=> b!5498870 d!1743237))

(declare-fun d!1743241 () Bool)

(declare-fun dynLambda!24463 (Int Context!9710) (InoxSet Context!9710))

(assert (=> d!1743241 (= (flatMap!1090 z!1189 lambda!294385) (dynLambda!24463 lambda!294385 (h!69037 zl!343)))))

(declare-fun lt!2243113 () Unit!155402)

(declare-fun choose!41792 ((InoxSet Context!9710) Context!9710 Int) Unit!155402)

(assert (=> d!1743241 (= lt!2243113 (choose!41792 z!1189 (h!69037 zl!343) lambda!294385))))

(assert (=> d!1743241 (= z!1189 (store ((as const (Array Context!9710 Bool)) false) (h!69037 zl!343) true))))

(assert (=> d!1743241 (= (lemmaFlatMapOnSingletonSet!622 z!1189 (h!69037 zl!343) lambda!294385) lt!2243113)))

(declare-fun b_lambda!208571 () Bool)

(assert (=> (not b_lambda!208571) (not d!1743241)))

(declare-fun bs!1268457 () Bool)

(assert (= bs!1268457 d!1743241))

(assert (=> bs!1268457 m!6507668))

(declare-fun m!6507744 () Bool)

(assert (=> bs!1268457 m!6507744))

(declare-fun m!6507746 () Bool)

(assert (=> bs!1268457 m!6507746))

(declare-fun m!6507748 () Bool)

(assert (=> bs!1268457 m!6507748))

(assert (=> b!5498870 d!1743241))

(declare-fun d!1743243 () Bool)

(declare-fun lambda!294399 () Int)

(declare-fun forall!14662 (List!62712 Int) Bool)

(assert (=> d!1743243 (= (inv!81924 setElem!36431) (forall!14662 (exprs!5355 setElem!36431) lambda!294399))))

(declare-fun bs!1268458 () Bool)

(assert (= bs!1268458 d!1743243))

(declare-fun m!6507750 () Bool)

(assert (=> bs!1268458 m!6507750))

(assert (=> setNonEmpty!36431 d!1743243))

(declare-fun bs!1268460 () Bool)

(declare-fun d!1743245 () Bool)

(assert (= bs!1268460 (and d!1743245 d!1743243)))

(declare-fun lambda!294406 () Int)

(assert (=> bs!1268460 (= lambda!294406 lambda!294399)))

(declare-fun b!5499002 () Bool)

(declare-fun e!3401634 () Bool)

(declare-fun e!3401630 () Bool)

(assert (=> b!5499002 (= e!3401634 e!3401630)))

(declare-fun c!960338 () Bool)

(declare-fun isEmpty!34386 (List!62712) Bool)

(declare-fun tail!10873 (List!62712) List!62712)

(assert (=> b!5499002 (= c!960338 (isEmpty!34386 (tail!10873 (unfocusZipperList!899 zl!343))))))

(declare-fun b!5499003 () Bool)

(declare-fun lt!2243116 () Regex!15471)

(declare-fun isUnion!501 (Regex!15471) Bool)

(assert (=> b!5499003 (= e!3401630 (isUnion!501 lt!2243116))))

(declare-fun b!5499004 () Bool)

(declare-fun head!11778 (List!62712) Regex!15471)

(assert (=> b!5499004 (= e!3401630 (= lt!2243116 (head!11778 (unfocusZipperList!899 zl!343))))))

(declare-fun b!5499005 () Bool)

(declare-fun e!3401631 () Bool)

(assert (=> b!5499005 (= e!3401631 e!3401634)))

(declare-fun c!960339 () Bool)

(assert (=> b!5499005 (= c!960339 (isEmpty!34386 (unfocusZipperList!899 zl!343)))))

(declare-fun b!5499006 () Bool)

(declare-fun e!3401629 () Regex!15471)

(assert (=> b!5499006 (= e!3401629 (h!69036 (unfocusZipperList!899 zl!343)))))

(declare-fun b!5499007 () Bool)

(declare-fun e!3401632 () Regex!15471)

(assert (=> b!5499007 (= e!3401632 (Union!15471 (h!69036 (unfocusZipperList!899 zl!343)) (generalisedUnion!1334 (t!375947 (unfocusZipperList!899 zl!343)))))))

(declare-fun b!5499009 () Bool)

(declare-fun e!3401633 () Bool)

(assert (=> b!5499009 (= e!3401633 (isEmpty!34386 (t!375947 (unfocusZipperList!899 zl!343))))))

(declare-fun b!5499010 () Bool)

(declare-fun isEmptyLang!1071 (Regex!15471) Bool)

(assert (=> b!5499010 (= e!3401634 (isEmptyLang!1071 lt!2243116))))

(declare-fun b!5499011 () Bool)

(assert (=> b!5499011 (= e!3401629 e!3401632)))

(declare-fun c!960337 () Bool)

(assert (=> b!5499011 (= c!960337 ((_ is Cons!62588) (unfocusZipperList!899 zl!343)))))

(assert (=> d!1743245 e!3401631))

(declare-fun res!2344211 () Bool)

(assert (=> d!1743245 (=> (not res!2344211) (not e!3401631))))

(assert (=> d!1743245 (= res!2344211 (validRegex!7207 lt!2243116))))

(assert (=> d!1743245 (= lt!2243116 e!3401629)))

(declare-fun c!960340 () Bool)

(assert (=> d!1743245 (= c!960340 e!3401633)))

(declare-fun res!2344210 () Bool)

(assert (=> d!1743245 (=> (not res!2344210) (not e!3401633))))

(assert (=> d!1743245 (= res!2344210 ((_ is Cons!62588) (unfocusZipperList!899 zl!343)))))

(assert (=> d!1743245 (forall!14662 (unfocusZipperList!899 zl!343) lambda!294406)))

(assert (=> d!1743245 (= (generalisedUnion!1334 (unfocusZipperList!899 zl!343)) lt!2243116)))

(declare-fun b!5499008 () Bool)

(assert (=> b!5499008 (= e!3401632 EmptyLang!15471)))

(assert (= (and d!1743245 res!2344210) b!5499009))

(assert (= (and d!1743245 c!960340) b!5499006))

(assert (= (and d!1743245 (not c!960340)) b!5499011))

(assert (= (and b!5499011 c!960337) b!5499007))

(assert (= (and b!5499011 (not c!960337)) b!5499008))

(assert (= (and d!1743245 res!2344211) b!5499005))

(assert (= (and b!5499005 c!960339) b!5499010))

(assert (= (and b!5499005 (not c!960339)) b!5499002))

(assert (= (and b!5499002 c!960338) b!5499004))

(assert (= (and b!5499002 (not c!960338)) b!5499003))

(assert (=> b!5499002 m!6507662))

(declare-fun m!6507760 () Bool)

(assert (=> b!5499002 m!6507760))

(assert (=> b!5499002 m!6507760))

(declare-fun m!6507762 () Bool)

(assert (=> b!5499002 m!6507762))

(assert (=> b!5499004 m!6507662))

(declare-fun m!6507764 () Bool)

(assert (=> b!5499004 m!6507764))

(declare-fun m!6507766 () Bool)

(assert (=> b!5499003 m!6507766))

(assert (=> b!5499005 m!6507662))

(declare-fun m!6507768 () Bool)

(assert (=> b!5499005 m!6507768))

(declare-fun m!6507770 () Bool)

(assert (=> b!5499009 m!6507770))

(declare-fun m!6507772 () Bool)

(assert (=> b!5499007 m!6507772))

(declare-fun m!6507774 () Bool)

(assert (=> b!5499010 m!6507774))

(declare-fun m!6507776 () Bool)

(assert (=> d!1743245 m!6507776))

(assert (=> d!1743245 m!6507662))

(declare-fun m!6507778 () Bool)

(assert (=> d!1743245 m!6507778))

(assert (=> b!5498858 d!1743245))

(declare-fun bs!1268462 () Bool)

(declare-fun d!1743249 () Bool)

(assert (= bs!1268462 (and d!1743249 d!1743243)))

(declare-fun lambda!294409 () Int)

(assert (=> bs!1268462 (= lambda!294409 lambda!294399)))

(declare-fun bs!1268463 () Bool)

(assert (= bs!1268463 (and d!1743249 d!1743245)))

(assert (=> bs!1268463 (= lambda!294409 lambda!294406)))

(declare-fun lt!2243122 () List!62712)

(assert (=> d!1743249 (forall!14662 lt!2243122 lambda!294409)))

(declare-fun e!3401637 () List!62712)

(assert (=> d!1743249 (= lt!2243122 e!3401637)))

(declare-fun c!960343 () Bool)

(assert (=> d!1743249 (= c!960343 ((_ is Cons!62589) zl!343))))

(assert (=> d!1743249 (= (unfocusZipperList!899 zl!343) lt!2243122)))

(declare-fun b!5499016 () Bool)

(assert (=> b!5499016 (= e!3401637 (Cons!62588 (generalisedConcat!1086 (exprs!5355 (h!69037 zl!343))) (unfocusZipperList!899 (t!375948 zl!343))))))

(declare-fun b!5499017 () Bool)

(assert (=> b!5499017 (= e!3401637 Nil!62588)))

(assert (= (and d!1743249 c!960343) b!5499016))

(assert (= (and d!1743249 (not c!960343)) b!5499017))

(declare-fun m!6507784 () Bool)

(assert (=> d!1743249 m!6507784))

(assert (=> b!5499016 m!6507650))

(declare-fun m!6507786 () Bool)

(assert (=> b!5499016 m!6507786))

(assert (=> b!5498858 d!1743249))

(declare-fun b!5499138 () Bool)

(assert (=> b!5499138 true))

(assert (=> b!5499138 true))

(declare-fun bs!1268479 () Bool)

(declare-fun b!5499128 () Bool)

(assert (= bs!1268479 (and b!5499128 b!5499138)))

(declare-fun lambda!294419 () Int)

(declare-fun lambda!294418 () Int)

(assert (=> bs!1268479 (not (= lambda!294419 lambda!294418))))

(assert (=> b!5499128 true))

(assert (=> b!5499128 true))

(declare-fun e!3401704 () Bool)

(declare-fun call!405789 () Bool)

(assert (=> b!5499128 (= e!3401704 call!405789)))

(declare-fun b!5499130 () Bool)

(declare-fun e!3401702 () Bool)

(assert (=> b!5499130 (= e!3401702 e!3401704)))

(declare-fun c!960374 () Bool)

(assert (=> b!5499130 (= c!960374 ((_ is Star!15471) r!7292))))

(declare-fun d!1743253 () Bool)

(declare-fun c!960375 () Bool)

(assert (=> d!1743253 (= c!960375 ((_ is EmptyExpr!15471) r!7292))))

(declare-fun e!3401699 () Bool)

(assert (=> d!1743253 (= (matchRSpec!2574 r!7292 s!2326) e!3401699)))

(declare-fun b!5499129 () Bool)

(declare-fun c!960373 () Bool)

(assert (=> b!5499129 (= c!960373 ((_ is ElementMatch!15471) r!7292))))

(declare-fun e!3401703 () Bool)

(declare-fun e!3401701 () Bool)

(assert (=> b!5499129 (= e!3401703 e!3401701)))

(declare-fun b!5499131 () Bool)

(declare-fun e!3401698 () Bool)

(assert (=> b!5499131 (= e!3401698 (matchRSpec!2574 (regTwo!31455 r!7292) s!2326))))

(declare-fun b!5499132 () Bool)

(assert (=> b!5499132 (= e!3401701 (= s!2326 (Cons!62590 (c!960293 r!7292) Nil!62590)))))

(declare-fun b!5499133 () Bool)

(assert (=> b!5499133 (= e!3401702 e!3401698)))

(declare-fun res!2344267 () Bool)

(assert (=> b!5499133 (= res!2344267 (matchRSpec!2574 (regOne!31455 r!7292) s!2326))))

(assert (=> b!5499133 (=> res!2344267 e!3401698)))

(declare-fun b!5499134 () Bool)

(declare-fun call!405790 () Bool)

(assert (=> b!5499134 (= e!3401699 call!405790)))

(declare-fun b!5499135 () Bool)

(declare-fun res!2344266 () Bool)

(declare-fun e!3401700 () Bool)

(assert (=> b!5499135 (=> res!2344266 e!3401700)))

(assert (=> b!5499135 (= res!2344266 call!405790)))

(assert (=> b!5499135 (= e!3401704 e!3401700)))

(declare-fun bm!405784 () Bool)

(declare-fun Exists!2579 (Int) Bool)

(assert (=> bm!405784 (= call!405789 (Exists!2579 (ite c!960374 lambda!294418 lambda!294419)))))

(declare-fun b!5499136 () Bool)

(declare-fun c!960372 () Bool)

(assert (=> b!5499136 (= c!960372 ((_ is Union!15471) r!7292))))

(assert (=> b!5499136 (= e!3401701 e!3401702)))

(declare-fun b!5499137 () Bool)

(assert (=> b!5499137 (= e!3401699 e!3401703)))

(declare-fun res!2344268 () Bool)

(assert (=> b!5499137 (= res!2344268 (not ((_ is EmptyLang!15471) r!7292)))))

(assert (=> b!5499137 (=> (not res!2344268) (not e!3401703))))

(declare-fun bm!405785 () Bool)

(declare-fun isEmpty!34387 (List!62714) Bool)

(assert (=> bm!405785 (= call!405790 (isEmpty!34387 s!2326))))

(assert (=> b!5499138 (= e!3401700 call!405789)))

(assert (= (and d!1743253 c!960375) b!5499134))

(assert (= (and d!1743253 (not c!960375)) b!5499137))

(assert (= (and b!5499137 res!2344268) b!5499129))

(assert (= (and b!5499129 c!960373) b!5499132))

(assert (= (and b!5499129 (not c!960373)) b!5499136))

(assert (= (and b!5499136 c!960372) b!5499133))

(assert (= (and b!5499136 (not c!960372)) b!5499130))

(assert (= (and b!5499133 (not res!2344267)) b!5499131))

(assert (= (and b!5499130 c!960374) b!5499135))

(assert (= (and b!5499130 (not c!960374)) b!5499128))

(assert (= (and b!5499135 (not res!2344266)) b!5499138))

(assert (= (or b!5499138 b!5499128) bm!405784))

(assert (= (or b!5499134 b!5499135) bm!405785))

(assert (=> b!5499131 m!6507686))

(assert (=> b!5499133 m!6507692))

(declare-fun m!6507818 () Bool)

(assert (=> bm!405784 m!6507818))

(declare-fun m!6507820 () Bool)

(assert (=> bm!405785 m!6507820))

(assert (=> b!5498859 d!1743253))

(declare-fun b!5499207 () Bool)

(declare-fun e!3401739 () Bool)

(declare-fun head!11780 (List!62714) C!31212)

(assert (=> b!5499207 (= e!3401739 (= (head!11780 s!2326) (c!960293 r!7292)))))

(declare-fun d!1743265 () Bool)

(declare-fun e!3401740 () Bool)

(assert (=> d!1743265 e!3401740))

(declare-fun c!960396 () Bool)

(assert (=> d!1743265 (= c!960396 ((_ is EmptyExpr!15471) r!7292))))

(declare-fun lt!2243135 () Bool)

(declare-fun e!3401741 () Bool)

(assert (=> d!1743265 (= lt!2243135 e!3401741)))

(declare-fun c!960395 () Bool)

(assert (=> d!1743265 (= c!960395 (isEmpty!34387 s!2326))))

(assert (=> d!1743265 (validRegex!7207 r!7292)))

(assert (=> d!1743265 (= (matchR!7656 r!7292 s!2326) lt!2243135)))

(declare-fun b!5499208 () Bool)

(declare-fun call!405800 () Bool)

(assert (=> b!5499208 (= e!3401740 (= lt!2243135 call!405800))))

(declare-fun bm!405795 () Bool)

(assert (=> bm!405795 (= call!405800 (isEmpty!34387 s!2326))))

(declare-fun b!5499209 () Bool)

(declare-fun res!2344297 () Bool)

(declare-fun e!3401743 () Bool)

(assert (=> b!5499209 (=> res!2344297 e!3401743)))

(assert (=> b!5499209 (= res!2344297 (not ((_ is ElementMatch!15471) r!7292)))))

(declare-fun e!3401738 () Bool)

(assert (=> b!5499209 (= e!3401738 e!3401743)))

(declare-fun b!5499210 () Bool)

(declare-fun res!2344299 () Bool)

(assert (=> b!5499210 (=> (not res!2344299) (not e!3401739))))

(assert (=> b!5499210 (= res!2344299 (not call!405800))))

(declare-fun b!5499211 () Bool)

(declare-fun e!3401742 () Bool)

(declare-fun e!3401744 () Bool)

(assert (=> b!5499211 (= e!3401742 e!3401744)))

(declare-fun res!2344298 () Bool)

(assert (=> b!5499211 (=> res!2344298 e!3401744)))

(assert (=> b!5499211 (= res!2344298 call!405800)))

(declare-fun b!5499212 () Bool)

(declare-fun derivativeStep!4353 (Regex!15471 C!31212) Regex!15471)

(declare-fun tail!10875 (List!62714) List!62714)

(assert (=> b!5499212 (= e!3401741 (matchR!7656 (derivativeStep!4353 r!7292 (head!11780 s!2326)) (tail!10875 s!2326)))))

(declare-fun b!5499213 () Bool)

(declare-fun res!2344300 () Bool)

(assert (=> b!5499213 (=> (not res!2344300) (not e!3401739))))

(assert (=> b!5499213 (= res!2344300 (isEmpty!34387 (tail!10875 s!2326)))))

(declare-fun b!5499214 () Bool)

(declare-fun res!2344302 () Bool)

(assert (=> b!5499214 (=> res!2344302 e!3401743)))

(assert (=> b!5499214 (= res!2344302 e!3401739)))

(declare-fun res!2344296 () Bool)

(assert (=> b!5499214 (=> (not res!2344296) (not e!3401739))))

(assert (=> b!5499214 (= res!2344296 lt!2243135)))

(declare-fun b!5499215 () Bool)

(assert (=> b!5499215 (= e!3401743 e!3401742)))

(declare-fun res!2344295 () Bool)

(assert (=> b!5499215 (=> (not res!2344295) (not e!3401742))))

(assert (=> b!5499215 (= res!2344295 (not lt!2243135))))

(declare-fun b!5499216 () Bool)

(assert (=> b!5499216 (= e!3401738 (not lt!2243135))))

(declare-fun b!5499217 () Bool)

(assert (=> b!5499217 (= e!3401744 (not (= (head!11780 s!2326) (c!960293 r!7292))))))

(declare-fun b!5499218 () Bool)

(assert (=> b!5499218 (= e!3401740 e!3401738)))

(declare-fun c!960397 () Bool)

(assert (=> b!5499218 (= c!960397 ((_ is EmptyLang!15471) r!7292))))

(declare-fun b!5499219 () Bool)

(assert (=> b!5499219 (= e!3401741 (nullable!5513 r!7292))))

(declare-fun b!5499220 () Bool)

(declare-fun res!2344301 () Bool)

(assert (=> b!5499220 (=> res!2344301 e!3401744)))

(assert (=> b!5499220 (= res!2344301 (not (isEmpty!34387 (tail!10875 s!2326))))))

(assert (= (and d!1743265 c!960395) b!5499219))

(assert (= (and d!1743265 (not c!960395)) b!5499212))

(assert (= (and d!1743265 c!960396) b!5499208))

(assert (= (and d!1743265 (not c!960396)) b!5499218))

(assert (= (and b!5499218 c!960397) b!5499216))

(assert (= (and b!5499218 (not c!960397)) b!5499209))

(assert (= (and b!5499209 (not res!2344297)) b!5499214))

(assert (= (and b!5499214 res!2344296) b!5499210))

(assert (= (and b!5499210 res!2344299) b!5499213))

(assert (= (and b!5499213 res!2344300) b!5499207))

(assert (= (and b!5499214 (not res!2344302)) b!5499215))

(assert (= (and b!5499215 res!2344295) b!5499211))

(assert (= (and b!5499211 (not res!2344298)) b!5499220))

(assert (= (and b!5499220 (not res!2344301)) b!5499217))

(assert (= (or b!5499208 b!5499210 b!5499211) bm!405795))

(declare-fun m!6507834 () Bool)

(assert (=> b!5499213 m!6507834))

(assert (=> b!5499213 m!6507834))

(declare-fun m!6507836 () Bool)

(assert (=> b!5499213 m!6507836))

(assert (=> bm!405795 m!6507820))

(assert (=> b!5499220 m!6507834))

(assert (=> b!5499220 m!6507834))

(assert (=> b!5499220 m!6507836))

(declare-fun m!6507838 () Bool)

(assert (=> b!5499219 m!6507838))

(declare-fun m!6507840 () Bool)

(assert (=> b!5499212 m!6507840))

(assert (=> b!5499212 m!6507840))

(declare-fun m!6507842 () Bool)

(assert (=> b!5499212 m!6507842))

(assert (=> b!5499212 m!6507834))

(assert (=> b!5499212 m!6507842))

(assert (=> b!5499212 m!6507834))

(declare-fun m!6507844 () Bool)

(assert (=> b!5499212 m!6507844))

(assert (=> b!5499207 m!6507840))

(assert (=> b!5499217 m!6507840))

(assert (=> d!1743265 m!6507820))

(assert (=> d!1743265 m!6507682))

(assert (=> b!5498859 d!1743265))

(declare-fun d!1743277 () Bool)

(assert (=> d!1743277 (= (matchR!7656 r!7292 s!2326) (matchRSpec!2574 r!7292 s!2326))))

(declare-fun lt!2243138 () Unit!155402)

(declare-fun choose!41794 (Regex!15471 List!62714) Unit!155402)

(assert (=> d!1743277 (= lt!2243138 (choose!41794 r!7292 s!2326))))

(assert (=> d!1743277 (validRegex!7207 r!7292)))

(assert (=> d!1743277 (= (mainMatchTheorem!2574 r!7292 s!2326) lt!2243138)))

(declare-fun bs!1268485 () Bool)

(assert (= bs!1268485 d!1743277))

(assert (=> bs!1268485 m!6507676))

(assert (=> bs!1268485 m!6507674))

(declare-fun m!6507846 () Bool)

(assert (=> bs!1268485 m!6507846))

(assert (=> bs!1268485 m!6507682))

(assert (=> b!5498859 d!1743277))

(declare-fun b!5499282 () Bool)

(declare-fun e!3401781 () Bool)

(assert (=> b!5499282 (= e!3401781 (nullable!5513 (regOne!31454 (regOne!31455 r!7292))))))

(declare-fun b!5499283 () Bool)

(declare-fun c!960429 () Bool)

(assert (=> b!5499283 (= c!960429 ((_ is Star!15471) (regOne!31455 r!7292)))))

(declare-fun e!3401783 () (InoxSet Context!9710))

(declare-fun e!3401779 () (InoxSet Context!9710))

(assert (=> b!5499283 (= e!3401783 e!3401779)))

(declare-fun b!5499284 () Bool)

(declare-fun e!3401778 () (InoxSet Context!9710))

(declare-fun call!405835 () (InoxSet Context!9710))

(declare-fun call!405836 () (InoxSet Context!9710))

(assert (=> b!5499284 (= e!3401778 ((_ map or) call!405835 call!405836))))

(declare-fun bm!405829 () Bool)

(declare-fun call!405838 () List!62712)

(declare-fun c!960430 () Bool)

(assert (=> bm!405829 (= call!405835 (derivationStepZipperDown!817 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292))) (ite c!960430 lt!2243099 (Context!9711 call!405838)) (h!69038 s!2326)))))

(declare-fun b!5499285 () Bool)

(declare-fun e!3401780 () (InoxSet Context!9710))

(assert (=> b!5499285 (= e!3401780 (store ((as const (Array Context!9710 Bool)) false) lt!2243099 true))))

(declare-fun bm!405830 () Bool)

(declare-fun call!405834 () List!62712)

(assert (=> bm!405830 (= call!405834 call!405838)))

(declare-fun b!5499286 () Bool)

(assert (=> b!5499286 (= e!3401780 e!3401778)))

(assert (=> b!5499286 (= c!960430 ((_ is Union!15471) (regOne!31455 r!7292)))))

(declare-fun bm!405831 () Bool)

(declare-fun c!960428 () Bool)

(declare-fun c!960426 () Bool)

(assert (=> bm!405831 (= call!405836 (derivationStepZipperDown!817 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292))))) (ite (or c!960430 c!960428) lt!2243099 (Context!9711 call!405834)) (h!69038 s!2326)))))

(declare-fun b!5499287 () Bool)

(declare-fun call!405837 () (InoxSet Context!9710))

(assert (=> b!5499287 (= e!3401779 call!405837)))

(declare-fun b!5499288 () Bool)

(assert (=> b!5499288 (= c!960428 e!3401781)))

(declare-fun res!2344310 () Bool)

(assert (=> b!5499288 (=> (not res!2344310) (not e!3401781))))

(assert (=> b!5499288 (= res!2344310 ((_ is Concat!24316) (regOne!31455 r!7292)))))

(declare-fun e!3401782 () (InoxSet Context!9710))

(assert (=> b!5499288 (= e!3401778 e!3401782)))

(declare-fun bm!405832 () Bool)

(declare-fun $colon$colon!1567 (List!62712 Regex!15471) List!62712)

(assert (=> bm!405832 (= call!405838 ($colon$colon!1567 (exprs!5355 lt!2243099) (ite (or c!960428 c!960426) (regTwo!31454 (regOne!31455 r!7292)) (regOne!31455 r!7292))))))

(declare-fun b!5499289 () Bool)

(declare-fun call!405839 () (InoxSet Context!9710))

(assert (=> b!5499289 (= e!3401782 ((_ map or) call!405835 call!405839))))

(declare-fun b!5499290 () Bool)

(assert (=> b!5499290 (= e!3401782 e!3401783)))

(assert (=> b!5499290 (= c!960426 ((_ is Concat!24316) (regOne!31455 r!7292)))))

(declare-fun b!5499291 () Bool)

(assert (=> b!5499291 (= e!3401783 call!405837)))

(declare-fun bm!405834 () Bool)

(assert (=> bm!405834 (= call!405839 call!405836)))

(declare-fun b!5499292 () Bool)

(assert (=> b!5499292 (= e!3401779 ((as const (Array Context!9710 Bool)) false))))

(declare-fun d!1743279 () Bool)

(declare-fun c!960427 () Bool)

(assert (=> d!1743279 (= c!960427 (and ((_ is ElementMatch!15471) (regOne!31455 r!7292)) (= (c!960293 (regOne!31455 r!7292)) (h!69038 s!2326))))))

(assert (=> d!1743279 (= (derivationStepZipperDown!817 (regOne!31455 r!7292) lt!2243099 (h!69038 s!2326)) e!3401780)))

(declare-fun bm!405833 () Bool)

(assert (=> bm!405833 (= call!405837 call!405839)))

(assert (= (and d!1743279 c!960427) b!5499285))

(assert (= (and d!1743279 (not c!960427)) b!5499286))

(assert (= (and b!5499286 c!960430) b!5499284))

(assert (= (and b!5499286 (not c!960430)) b!5499288))

(assert (= (and b!5499288 res!2344310) b!5499282))

(assert (= (and b!5499288 c!960428) b!5499289))

(assert (= (and b!5499288 (not c!960428)) b!5499290))

(assert (= (and b!5499290 c!960426) b!5499291))

(assert (= (and b!5499290 (not c!960426)) b!5499283))

(assert (= (and b!5499283 c!960429) b!5499287))

(assert (= (and b!5499283 (not c!960429)) b!5499292))

(assert (= (or b!5499291 b!5499287) bm!405830))

(assert (= (or b!5499291 b!5499287) bm!405833))

(assert (= (or b!5499289 bm!405830) bm!405832))

(assert (= (or b!5499289 bm!405833) bm!405834))

(assert (= (or b!5499284 bm!405834) bm!405831))

(assert (= (or b!5499284 b!5499289) bm!405829))

(declare-fun m!6507876 () Bool)

(assert (=> bm!405831 m!6507876))

(declare-fun m!6507878 () Bool)

(assert (=> bm!405829 m!6507878))

(declare-fun m!6507880 () Bool)

(assert (=> b!5499282 m!6507880))

(declare-fun m!6507882 () Bool)

(assert (=> b!5499285 m!6507882))

(declare-fun m!6507884 () Bool)

(assert (=> bm!405832 m!6507884))

(assert (=> b!5498869 d!1743279))

(declare-fun b!5499293 () Bool)

(declare-fun e!3401787 () Bool)

(assert (=> b!5499293 (= e!3401787 (nullable!5513 (regOne!31454 (regTwo!31455 r!7292))))))

(declare-fun b!5499294 () Bool)

(declare-fun c!960434 () Bool)

(assert (=> b!5499294 (= c!960434 ((_ is Star!15471) (regTwo!31455 r!7292)))))

(declare-fun e!3401789 () (InoxSet Context!9710))

(declare-fun e!3401785 () (InoxSet Context!9710))

(assert (=> b!5499294 (= e!3401789 e!3401785)))

(declare-fun b!5499295 () Bool)

(declare-fun e!3401784 () (InoxSet Context!9710))

(declare-fun call!405841 () (InoxSet Context!9710))

(declare-fun call!405842 () (InoxSet Context!9710))

(assert (=> b!5499295 (= e!3401784 ((_ map or) call!405841 call!405842))))

(declare-fun c!960435 () Bool)

(declare-fun call!405844 () List!62712)

(declare-fun bm!405835 () Bool)

(assert (=> bm!405835 (= call!405841 (derivationStepZipperDown!817 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292))) (ite c!960435 lt!2243099 (Context!9711 call!405844)) (h!69038 s!2326)))))

(declare-fun b!5499296 () Bool)

(declare-fun e!3401786 () (InoxSet Context!9710))

(assert (=> b!5499296 (= e!3401786 (store ((as const (Array Context!9710 Bool)) false) lt!2243099 true))))

(declare-fun bm!405836 () Bool)

(declare-fun call!405840 () List!62712)

(assert (=> bm!405836 (= call!405840 call!405844)))

(declare-fun b!5499297 () Bool)

(assert (=> b!5499297 (= e!3401786 e!3401784)))

(assert (=> b!5499297 (= c!960435 ((_ is Union!15471) (regTwo!31455 r!7292)))))

(declare-fun bm!405837 () Bool)

(declare-fun c!960433 () Bool)

(declare-fun c!960431 () Bool)

(assert (=> bm!405837 (= call!405842 (derivationStepZipperDown!817 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292))))) (ite (or c!960435 c!960433) lt!2243099 (Context!9711 call!405840)) (h!69038 s!2326)))))

(declare-fun b!5499298 () Bool)

(declare-fun call!405843 () (InoxSet Context!9710))

(assert (=> b!5499298 (= e!3401785 call!405843)))

(declare-fun b!5499299 () Bool)

(assert (=> b!5499299 (= c!960433 e!3401787)))

(declare-fun res!2344311 () Bool)

(assert (=> b!5499299 (=> (not res!2344311) (not e!3401787))))

(assert (=> b!5499299 (= res!2344311 ((_ is Concat!24316) (regTwo!31455 r!7292)))))

(declare-fun e!3401788 () (InoxSet Context!9710))

(assert (=> b!5499299 (= e!3401784 e!3401788)))

(declare-fun bm!405838 () Bool)

(assert (=> bm!405838 (= call!405844 ($colon$colon!1567 (exprs!5355 lt!2243099) (ite (or c!960433 c!960431) (regTwo!31454 (regTwo!31455 r!7292)) (regTwo!31455 r!7292))))))

(declare-fun b!5499300 () Bool)

(declare-fun call!405845 () (InoxSet Context!9710))

(assert (=> b!5499300 (= e!3401788 ((_ map or) call!405841 call!405845))))

(declare-fun b!5499301 () Bool)

(assert (=> b!5499301 (= e!3401788 e!3401789)))

(assert (=> b!5499301 (= c!960431 ((_ is Concat!24316) (regTwo!31455 r!7292)))))

(declare-fun b!5499302 () Bool)

(assert (=> b!5499302 (= e!3401789 call!405843)))

(declare-fun bm!405840 () Bool)

(assert (=> bm!405840 (= call!405845 call!405842)))

(declare-fun b!5499303 () Bool)

(assert (=> b!5499303 (= e!3401785 ((as const (Array Context!9710 Bool)) false))))

(declare-fun d!1743291 () Bool)

(declare-fun c!960432 () Bool)

(assert (=> d!1743291 (= c!960432 (and ((_ is ElementMatch!15471) (regTwo!31455 r!7292)) (= (c!960293 (regTwo!31455 r!7292)) (h!69038 s!2326))))))

(assert (=> d!1743291 (= (derivationStepZipperDown!817 (regTwo!31455 r!7292) lt!2243099 (h!69038 s!2326)) e!3401786)))

(declare-fun bm!405839 () Bool)

(assert (=> bm!405839 (= call!405843 call!405845)))

(assert (= (and d!1743291 c!960432) b!5499296))

(assert (= (and d!1743291 (not c!960432)) b!5499297))

(assert (= (and b!5499297 c!960435) b!5499295))

(assert (= (and b!5499297 (not c!960435)) b!5499299))

(assert (= (and b!5499299 res!2344311) b!5499293))

(assert (= (and b!5499299 c!960433) b!5499300))

(assert (= (and b!5499299 (not c!960433)) b!5499301))

(assert (= (and b!5499301 c!960431) b!5499302))

(assert (= (and b!5499301 (not c!960431)) b!5499294))

(assert (= (and b!5499294 c!960434) b!5499298))

(assert (= (and b!5499294 (not c!960434)) b!5499303))

(assert (= (or b!5499302 b!5499298) bm!405836))

(assert (= (or b!5499302 b!5499298) bm!405839))

(assert (= (or b!5499300 bm!405836) bm!405838))

(assert (= (or b!5499300 bm!405839) bm!405840))

(assert (= (or b!5499295 bm!405840) bm!405837))

(assert (= (or b!5499295 b!5499300) bm!405835))

(declare-fun m!6507892 () Bool)

(assert (=> bm!405837 m!6507892))

(declare-fun m!6507894 () Bool)

(assert (=> bm!405835 m!6507894))

(declare-fun m!6507896 () Bool)

(assert (=> b!5499293 m!6507896))

(assert (=> b!5499296 m!6507882))

(declare-fun m!6507898 () Bool)

(assert (=> bm!405838 m!6507898))

(assert (=> b!5498869 d!1743291))

(declare-fun bs!1268494 () Bool)

(declare-fun b!5499314 () Bool)

(assert (= bs!1268494 (and b!5499314 b!5499138)))

(declare-fun lambda!294427 () Int)

(assert (=> bs!1268494 (= (and (= (reg!15800 (regTwo!31455 r!7292)) (reg!15800 r!7292)) (= (regTwo!31455 r!7292) r!7292)) (= lambda!294427 lambda!294418))))

(declare-fun bs!1268495 () Bool)

(assert (= bs!1268495 (and b!5499314 b!5499128)))

(assert (=> bs!1268495 (not (= lambda!294427 lambda!294419))))

(assert (=> b!5499314 true))

(assert (=> b!5499314 true))

(declare-fun bs!1268496 () Bool)

(declare-fun b!5499304 () Bool)

(assert (= bs!1268496 (and b!5499304 b!5499138)))

(declare-fun lambda!294428 () Int)

(assert (=> bs!1268496 (not (= lambda!294428 lambda!294418))))

(declare-fun bs!1268497 () Bool)

(assert (= bs!1268497 (and b!5499304 b!5499128)))

(assert (=> bs!1268497 (= (and (= (regOne!31454 (regTwo!31455 r!7292)) (regOne!31454 r!7292)) (= (regTwo!31454 (regTwo!31455 r!7292)) (regTwo!31454 r!7292))) (= lambda!294428 lambda!294419))))

(declare-fun bs!1268498 () Bool)

(assert (= bs!1268498 (and b!5499304 b!5499314)))

(assert (=> bs!1268498 (not (= lambda!294428 lambda!294427))))

(assert (=> b!5499304 true))

(assert (=> b!5499304 true))

(declare-fun e!3401796 () Bool)

(declare-fun call!405846 () Bool)

(assert (=> b!5499304 (= e!3401796 call!405846)))

(declare-fun b!5499306 () Bool)

(declare-fun e!3401794 () Bool)

(assert (=> b!5499306 (= e!3401794 e!3401796)))

(declare-fun c!960438 () Bool)

(assert (=> b!5499306 (= c!960438 ((_ is Star!15471) (regTwo!31455 r!7292)))))

(declare-fun d!1743295 () Bool)

(declare-fun c!960439 () Bool)

(assert (=> d!1743295 (= c!960439 ((_ is EmptyExpr!15471) (regTwo!31455 r!7292)))))

(declare-fun e!3401791 () Bool)

(assert (=> d!1743295 (= (matchRSpec!2574 (regTwo!31455 r!7292) s!2326) e!3401791)))

(declare-fun b!5499305 () Bool)

(declare-fun c!960437 () Bool)

(assert (=> b!5499305 (= c!960437 ((_ is ElementMatch!15471) (regTwo!31455 r!7292)))))

(declare-fun e!3401795 () Bool)

(declare-fun e!3401793 () Bool)

(assert (=> b!5499305 (= e!3401795 e!3401793)))

(declare-fun b!5499307 () Bool)

(declare-fun e!3401790 () Bool)

(assert (=> b!5499307 (= e!3401790 (matchRSpec!2574 (regTwo!31455 (regTwo!31455 r!7292)) s!2326))))

(declare-fun b!5499308 () Bool)

(assert (=> b!5499308 (= e!3401793 (= s!2326 (Cons!62590 (c!960293 (regTwo!31455 r!7292)) Nil!62590)))))

(declare-fun b!5499309 () Bool)

(assert (=> b!5499309 (= e!3401794 e!3401790)))

(declare-fun res!2344313 () Bool)

(assert (=> b!5499309 (= res!2344313 (matchRSpec!2574 (regOne!31455 (regTwo!31455 r!7292)) s!2326))))

(assert (=> b!5499309 (=> res!2344313 e!3401790)))

(declare-fun b!5499310 () Bool)

(declare-fun call!405847 () Bool)

(assert (=> b!5499310 (= e!3401791 call!405847)))

(declare-fun b!5499311 () Bool)

(declare-fun res!2344312 () Bool)

(declare-fun e!3401792 () Bool)

(assert (=> b!5499311 (=> res!2344312 e!3401792)))

(assert (=> b!5499311 (= res!2344312 call!405847)))

(assert (=> b!5499311 (= e!3401796 e!3401792)))

(declare-fun bm!405841 () Bool)

(assert (=> bm!405841 (= call!405846 (Exists!2579 (ite c!960438 lambda!294427 lambda!294428)))))

(declare-fun b!5499312 () Bool)

(declare-fun c!960436 () Bool)

(assert (=> b!5499312 (= c!960436 ((_ is Union!15471) (regTwo!31455 r!7292)))))

(assert (=> b!5499312 (= e!3401793 e!3401794)))

(declare-fun b!5499313 () Bool)

(assert (=> b!5499313 (= e!3401791 e!3401795)))

(declare-fun res!2344314 () Bool)

(assert (=> b!5499313 (= res!2344314 (not ((_ is EmptyLang!15471) (regTwo!31455 r!7292))))))

(assert (=> b!5499313 (=> (not res!2344314) (not e!3401795))))

(declare-fun bm!405842 () Bool)

(assert (=> bm!405842 (= call!405847 (isEmpty!34387 s!2326))))

(assert (=> b!5499314 (= e!3401792 call!405846)))

(assert (= (and d!1743295 c!960439) b!5499310))

(assert (= (and d!1743295 (not c!960439)) b!5499313))

(assert (= (and b!5499313 res!2344314) b!5499305))

(assert (= (and b!5499305 c!960437) b!5499308))

(assert (= (and b!5499305 (not c!960437)) b!5499312))

(assert (= (and b!5499312 c!960436) b!5499309))

(assert (= (and b!5499312 (not c!960436)) b!5499306))

(assert (= (and b!5499309 (not res!2344313)) b!5499307))

(assert (= (and b!5499306 c!960438) b!5499311))

(assert (= (and b!5499306 (not c!960438)) b!5499304))

(assert (= (and b!5499311 (not res!2344312)) b!5499314))

(assert (= (or b!5499314 b!5499304) bm!405841))

(assert (= (or b!5499310 b!5499311) bm!405842))

(declare-fun m!6507916 () Bool)

(assert (=> b!5499307 m!6507916))

(declare-fun m!6507918 () Bool)

(assert (=> b!5499309 m!6507918))

(declare-fun m!6507920 () Bool)

(assert (=> bm!405841 m!6507920))

(assert (=> bm!405842 m!6507820))

(assert (=> b!5498875 d!1743295))

(declare-fun d!1743303 () Bool)

(assert (=> d!1743303 (= (matchR!7656 (regOne!31455 r!7292) s!2326) (matchRSpec!2574 (regOne!31455 r!7292) s!2326))))

(declare-fun lt!2243142 () Unit!155402)

(assert (=> d!1743303 (= lt!2243142 (choose!41794 (regOne!31455 r!7292) s!2326))))

(assert (=> d!1743303 (validRegex!7207 (regOne!31455 r!7292))))

(assert (=> d!1743303 (= (mainMatchTheorem!2574 (regOne!31455 r!7292) s!2326) lt!2243142)))

(declare-fun bs!1268499 () Bool)

(assert (= bs!1268499 d!1743303))

(assert (=> bs!1268499 m!6507696))

(assert (=> bs!1268499 m!6507692))

(declare-fun m!6507922 () Bool)

(assert (=> bs!1268499 m!6507922))

(declare-fun m!6507924 () Bool)

(assert (=> bs!1268499 m!6507924))

(assert (=> b!5498875 d!1743303))

(declare-fun b!5499331 () Bool)

(declare-fun e!3401807 () Bool)

(assert (=> b!5499331 (= e!3401807 (= (head!11780 s!2326) (c!960293 (regTwo!31455 r!7292))))))

(declare-fun d!1743305 () Bool)

(declare-fun e!3401808 () Bool)

(assert (=> d!1743305 e!3401808))

(declare-fun c!960448 () Bool)

(assert (=> d!1743305 (= c!960448 ((_ is EmptyExpr!15471) (regTwo!31455 r!7292)))))

(declare-fun lt!2243143 () Bool)

(declare-fun e!3401809 () Bool)

(assert (=> d!1743305 (= lt!2243143 e!3401809)))

(declare-fun c!960447 () Bool)

(assert (=> d!1743305 (= c!960447 (isEmpty!34387 s!2326))))

(assert (=> d!1743305 (validRegex!7207 (regTwo!31455 r!7292))))

(assert (=> d!1743305 (= (matchR!7656 (regTwo!31455 r!7292) s!2326) lt!2243143)))

(declare-fun b!5499332 () Bool)

(declare-fun call!405855 () Bool)

(assert (=> b!5499332 (= e!3401808 (= lt!2243143 call!405855))))

(declare-fun bm!405850 () Bool)

(assert (=> bm!405850 (= call!405855 (isEmpty!34387 s!2326))))

(declare-fun b!5499333 () Bool)

(declare-fun res!2344319 () Bool)

(declare-fun e!3401811 () Bool)

(assert (=> b!5499333 (=> res!2344319 e!3401811)))

(assert (=> b!5499333 (= res!2344319 (not ((_ is ElementMatch!15471) (regTwo!31455 r!7292))))))

(declare-fun e!3401806 () Bool)

(assert (=> b!5499333 (= e!3401806 e!3401811)))

(declare-fun b!5499334 () Bool)

(declare-fun res!2344321 () Bool)

(assert (=> b!5499334 (=> (not res!2344321) (not e!3401807))))

(assert (=> b!5499334 (= res!2344321 (not call!405855))))

(declare-fun b!5499335 () Bool)

(declare-fun e!3401810 () Bool)

(declare-fun e!3401812 () Bool)

(assert (=> b!5499335 (= e!3401810 e!3401812)))

(declare-fun res!2344320 () Bool)

(assert (=> b!5499335 (=> res!2344320 e!3401812)))

(assert (=> b!5499335 (= res!2344320 call!405855)))

(declare-fun b!5499336 () Bool)

(assert (=> b!5499336 (= e!3401809 (matchR!7656 (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326)) (tail!10875 s!2326)))))

(declare-fun b!5499337 () Bool)

(declare-fun res!2344322 () Bool)

(assert (=> b!5499337 (=> (not res!2344322) (not e!3401807))))

(assert (=> b!5499337 (= res!2344322 (isEmpty!34387 (tail!10875 s!2326)))))

(declare-fun b!5499338 () Bool)

(declare-fun res!2344324 () Bool)

(assert (=> b!5499338 (=> res!2344324 e!3401811)))

(assert (=> b!5499338 (= res!2344324 e!3401807)))

(declare-fun res!2344318 () Bool)

(assert (=> b!5499338 (=> (not res!2344318) (not e!3401807))))

(assert (=> b!5499338 (= res!2344318 lt!2243143)))

(declare-fun b!5499339 () Bool)

(assert (=> b!5499339 (= e!3401811 e!3401810)))

(declare-fun res!2344317 () Bool)

(assert (=> b!5499339 (=> (not res!2344317) (not e!3401810))))

(assert (=> b!5499339 (= res!2344317 (not lt!2243143))))

(declare-fun b!5499340 () Bool)

(assert (=> b!5499340 (= e!3401806 (not lt!2243143))))

(declare-fun b!5499341 () Bool)

(assert (=> b!5499341 (= e!3401812 (not (= (head!11780 s!2326) (c!960293 (regTwo!31455 r!7292)))))))

(declare-fun b!5499342 () Bool)

(assert (=> b!5499342 (= e!3401808 e!3401806)))

(declare-fun c!960449 () Bool)

(assert (=> b!5499342 (= c!960449 ((_ is EmptyLang!15471) (regTwo!31455 r!7292)))))

(declare-fun b!5499343 () Bool)

(assert (=> b!5499343 (= e!3401809 (nullable!5513 (regTwo!31455 r!7292)))))

(declare-fun b!5499344 () Bool)

(declare-fun res!2344323 () Bool)

(assert (=> b!5499344 (=> res!2344323 e!3401812)))

(assert (=> b!5499344 (= res!2344323 (not (isEmpty!34387 (tail!10875 s!2326))))))

(assert (= (and d!1743305 c!960447) b!5499343))

(assert (= (and d!1743305 (not c!960447)) b!5499336))

(assert (= (and d!1743305 c!960448) b!5499332))

(assert (= (and d!1743305 (not c!960448)) b!5499342))

(assert (= (and b!5499342 c!960449) b!5499340))

(assert (= (and b!5499342 (not c!960449)) b!5499333))

(assert (= (and b!5499333 (not res!2344319)) b!5499338))

(assert (= (and b!5499338 res!2344318) b!5499334))

(assert (= (and b!5499334 res!2344321) b!5499337))

(assert (= (and b!5499337 res!2344322) b!5499331))

(assert (= (and b!5499338 (not res!2344324)) b!5499339))

(assert (= (and b!5499339 res!2344317) b!5499335))

(assert (= (and b!5499335 (not res!2344320)) b!5499344))

(assert (= (and b!5499344 (not res!2344323)) b!5499341))

(assert (= (or b!5499332 b!5499334 b!5499335) bm!405850))

(assert (=> b!5499337 m!6507834))

(assert (=> b!5499337 m!6507834))

(assert (=> b!5499337 m!6507836))

(assert (=> bm!405850 m!6507820))

(assert (=> b!5499344 m!6507834))

(assert (=> b!5499344 m!6507834))

(assert (=> b!5499344 m!6507836))

(declare-fun m!6507926 () Bool)

(assert (=> b!5499343 m!6507926))

(assert (=> b!5499336 m!6507840))

(assert (=> b!5499336 m!6507840))

(declare-fun m!6507928 () Bool)

(assert (=> b!5499336 m!6507928))

(assert (=> b!5499336 m!6507834))

(assert (=> b!5499336 m!6507928))

(assert (=> b!5499336 m!6507834))

(declare-fun m!6507930 () Bool)

(assert (=> b!5499336 m!6507930))

(assert (=> b!5499331 m!6507840))

(assert (=> b!5499341 m!6507840))

(assert (=> d!1743305 m!6507820))

(declare-fun m!6507932 () Bool)

(assert (=> d!1743305 m!6507932))

(assert (=> b!5498875 d!1743305))

(declare-fun d!1743307 () Bool)

(assert (=> d!1743307 (= (matchR!7656 (regTwo!31455 r!7292) s!2326) (matchRSpec!2574 (regTwo!31455 r!7292) s!2326))))

(declare-fun lt!2243144 () Unit!155402)

(assert (=> d!1743307 (= lt!2243144 (choose!41794 (regTwo!31455 r!7292) s!2326))))

(assert (=> d!1743307 (validRegex!7207 (regTwo!31455 r!7292))))

(assert (=> d!1743307 (= (mainMatchTheorem!2574 (regTwo!31455 r!7292) s!2326) lt!2243144)))

(declare-fun bs!1268500 () Bool)

(assert (= bs!1268500 d!1743307))

(assert (=> bs!1268500 m!6507690))

(assert (=> bs!1268500 m!6507686))

(declare-fun m!6507934 () Bool)

(assert (=> bs!1268500 m!6507934))

(assert (=> bs!1268500 m!6507932))

(assert (=> b!5498875 d!1743307))

(declare-fun bs!1268501 () Bool)

(declare-fun b!5499373 () Bool)

(assert (= bs!1268501 (and b!5499373 b!5499138)))

(declare-fun lambda!294429 () Int)

(assert (=> bs!1268501 (= (and (= (reg!15800 (regOne!31455 r!7292)) (reg!15800 r!7292)) (= (regOne!31455 r!7292) r!7292)) (= lambda!294429 lambda!294418))))

(declare-fun bs!1268502 () Bool)

(assert (= bs!1268502 (and b!5499373 b!5499128)))

(assert (=> bs!1268502 (not (= lambda!294429 lambda!294419))))

(declare-fun bs!1268503 () Bool)

(assert (= bs!1268503 (and b!5499373 b!5499314)))

(assert (=> bs!1268503 (= (and (= (reg!15800 (regOne!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292))) (= (regOne!31455 r!7292) (regTwo!31455 r!7292))) (= lambda!294429 lambda!294427))))

(declare-fun bs!1268504 () Bool)

(assert (= bs!1268504 (and b!5499373 b!5499304)))

(assert (=> bs!1268504 (not (= lambda!294429 lambda!294428))))

(assert (=> b!5499373 true))

(assert (=> b!5499373 true))

(declare-fun bs!1268505 () Bool)

(declare-fun b!5499363 () Bool)

(assert (= bs!1268505 (and b!5499363 b!5499304)))

(declare-fun lambda!294430 () Int)

(assert (=> bs!1268505 (= (and (= (regOne!31454 (regOne!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292))) (= (regTwo!31454 (regOne!31455 r!7292)) (regTwo!31454 (regTwo!31455 r!7292)))) (= lambda!294430 lambda!294428))))

(declare-fun bs!1268506 () Bool)

(assert (= bs!1268506 (and b!5499363 b!5499128)))

(assert (=> bs!1268506 (= (and (= (regOne!31454 (regOne!31455 r!7292)) (regOne!31454 r!7292)) (= (regTwo!31454 (regOne!31455 r!7292)) (regTwo!31454 r!7292))) (= lambda!294430 lambda!294419))))

(declare-fun bs!1268507 () Bool)

(assert (= bs!1268507 (and b!5499363 b!5499314)))

(assert (=> bs!1268507 (not (= lambda!294430 lambda!294427))))

(declare-fun bs!1268508 () Bool)

(assert (= bs!1268508 (and b!5499363 b!5499138)))

(assert (=> bs!1268508 (not (= lambda!294430 lambda!294418))))

(declare-fun bs!1268509 () Bool)

(assert (= bs!1268509 (and b!5499363 b!5499373)))

(assert (=> bs!1268509 (not (= lambda!294430 lambda!294429))))

(assert (=> b!5499363 true))

(assert (=> b!5499363 true))

(declare-fun e!3401833 () Bool)

(declare-fun call!405858 () Bool)

(assert (=> b!5499363 (= e!3401833 call!405858)))

(declare-fun b!5499365 () Bool)

(declare-fun e!3401831 () Bool)

(assert (=> b!5499365 (= e!3401831 e!3401833)))

(declare-fun c!960456 () Bool)

(assert (=> b!5499365 (= c!960456 ((_ is Star!15471) (regOne!31455 r!7292)))))

(declare-fun d!1743309 () Bool)

(declare-fun c!960457 () Bool)

(assert (=> d!1743309 (= c!960457 ((_ is EmptyExpr!15471) (regOne!31455 r!7292)))))

(declare-fun e!3401828 () Bool)

(assert (=> d!1743309 (= (matchRSpec!2574 (regOne!31455 r!7292) s!2326) e!3401828)))

(declare-fun b!5499364 () Bool)

(declare-fun c!960455 () Bool)

(assert (=> b!5499364 (= c!960455 ((_ is ElementMatch!15471) (regOne!31455 r!7292)))))

(declare-fun e!3401832 () Bool)

(declare-fun e!3401830 () Bool)

(assert (=> b!5499364 (= e!3401832 e!3401830)))

(declare-fun b!5499366 () Bool)

(declare-fun e!3401827 () Bool)

(assert (=> b!5499366 (= e!3401827 (matchRSpec!2574 (regTwo!31455 (regOne!31455 r!7292)) s!2326))))

(declare-fun b!5499367 () Bool)

(assert (=> b!5499367 (= e!3401830 (= s!2326 (Cons!62590 (c!960293 (regOne!31455 r!7292)) Nil!62590)))))

(declare-fun b!5499368 () Bool)

(assert (=> b!5499368 (= e!3401831 e!3401827)))

(declare-fun res!2344336 () Bool)

(assert (=> b!5499368 (= res!2344336 (matchRSpec!2574 (regOne!31455 (regOne!31455 r!7292)) s!2326))))

(assert (=> b!5499368 (=> res!2344336 e!3401827)))

(declare-fun b!5499369 () Bool)

(declare-fun call!405859 () Bool)

(assert (=> b!5499369 (= e!3401828 call!405859)))

(declare-fun b!5499370 () Bool)

(declare-fun res!2344335 () Bool)

(declare-fun e!3401829 () Bool)

(assert (=> b!5499370 (=> res!2344335 e!3401829)))

(assert (=> b!5499370 (= res!2344335 call!405859)))

(assert (=> b!5499370 (= e!3401833 e!3401829)))

(declare-fun bm!405853 () Bool)

(assert (=> bm!405853 (= call!405858 (Exists!2579 (ite c!960456 lambda!294429 lambda!294430)))))

(declare-fun b!5499371 () Bool)

(declare-fun c!960454 () Bool)

(assert (=> b!5499371 (= c!960454 ((_ is Union!15471) (regOne!31455 r!7292)))))

(assert (=> b!5499371 (= e!3401830 e!3401831)))

(declare-fun b!5499372 () Bool)

(assert (=> b!5499372 (= e!3401828 e!3401832)))

(declare-fun res!2344337 () Bool)

(assert (=> b!5499372 (= res!2344337 (not ((_ is EmptyLang!15471) (regOne!31455 r!7292))))))

(assert (=> b!5499372 (=> (not res!2344337) (not e!3401832))))

(declare-fun bm!405854 () Bool)

(assert (=> bm!405854 (= call!405859 (isEmpty!34387 s!2326))))

(assert (=> b!5499373 (= e!3401829 call!405858)))

(assert (= (and d!1743309 c!960457) b!5499369))

(assert (= (and d!1743309 (not c!960457)) b!5499372))

(assert (= (and b!5499372 res!2344337) b!5499364))

(assert (= (and b!5499364 c!960455) b!5499367))

(assert (= (and b!5499364 (not c!960455)) b!5499371))

(assert (= (and b!5499371 c!960454) b!5499368))

(assert (= (and b!5499371 (not c!960454)) b!5499365))

(assert (= (and b!5499368 (not res!2344336)) b!5499366))

(assert (= (and b!5499365 c!960456) b!5499370))

(assert (= (and b!5499365 (not c!960456)) b!5499363))

(assert (= (and b!5499370 (not res!2344335)) b!5499373))

(assert (= (or b!5499373 b!5499363) bm!405853))

(assert (= (or b!5499369 b!5499370) bm!405854))

(declare-fun m!6507936 () Bool)

(assert (=> b!5499366 m!6507936))

(declare-fun m!6507938 () Bool)

(assert (=> b!5499368 m!6507938))

(declare-fun m!6507940 () Bool)

(assert (=> bm!405853 m!6507940))

(assert (=> bm!405854 m!6507820))

(assert (=> b!5498875 d!1743309))

(declare-fun b!5499374 () Bool)

(declare-fun e!3401835 () Bool)

(assert (=> b!5499374 (= e!3401835 (= (head!11780 s!2326) (c!960293 (regOne!31455 r!7292))))))

(declare-fun d!1743311 () Bool)

(declare-fun e!3401836 () Bool)

(assert (=> d!1743311 e!3401836))

(declare-fun c!960459 () Bool)

(assert (=> d!1743311 (= c!960459 ((_ is EmptyExpr!15471) (regOne!31455 r!7292)))))

(declare-fun lt!2243145 () Bool)

(declare-fun e!3401837 () Bool)

(assert (=> d!1743311 (= lt!2243145 e!3401837)))

(declare-fun c!960458 () Bool)

(assert (=> d!1743311 (= c!960458 (isEmpty!34387 s!2326))))

(assert (=> d!1743311 (validRegex!7207 (regOne!31455 r!7292))))

(assert (=> d!1743311 (= (matchR!7656 (regOne!31455 r!7292) s!2326) lt!2243145)))

(declare-fun b!5499375 () Bool)

(declare-fun call!405864 () Bool)

(assert (=> b!5499375 (= e!3401836 (= lt!2243145 call!405864))))

(declare-fun bm!405859 () Bool)

(assert (=> bm!405859 (= call!405864 (isEmpty!34387 s!2326))))

(declare-fun b!5499376 () Bool)

(declare-fun res!2344340 () Bool)

(declare-fun e!3401839 () Bool)

(assert (=> b!5499376 (=> res!2344340 e!3401839)))

(assert (=> b!5499376 (= res!2344340 (not ((_ is ElementMatch!15471) (regOne!31455 r!7292))))))

(declare-fun e!3401834 () Bool)

(assert (=> b!5499376 (= e!3401834 e!3401839)))

(declare-fun b!5499377 () Bool)

(declare-fun res!2344342 () Bool)

(assert (=> b!5499377 (=> (not res!2344342) (not e!3401835))))

(assert (=> b!5499377 (= res!2344342 (not call!405864))))

(declare-fun b!5499378 () Bool)

(declare-fun e!3401838 () Bool)

(declare-fun e!3401840 () Bool)

(assert (=> b!5499378 (= e!3401838 e!3401840)))

(declare-fun res!2344341 () Bool)

(assert (=> b!5499378 (=> res!2344341 e!3401840)))

(assert (=> b!5499378 (= res!2344341 call!405864)))

(declare-fun b!5499379 () Bool)

(assert (=> b!5499379 (= e!3401837 (matchR!7656 (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326)) (tail!10875 s!2326)))))

(declare-fun b!5499380 () Bool)

(declare-fun res!2344343 () Bool)

(assert (=> b!5499380 (=> (not res!2344343) (not e!3401835))))

(assert (=> b!5499380 (= res!2344343 (isEmpty!34387 (tail!10875 s!2326)))))

(declare-fun b!5499381 () Bool)

(declare-fun res!2344345 () Bool)

(assert (=> b!5499381 (=> res!2344345 e!3401839)))

(assert (=> b!5499381 (= res!2344345 e!3401835)))

(declare-fun res!2344339 () Bool)

(assert (=> b!5499381 (=> (not res!2344339) (not e!3401835))))

(assert (=> b!5499381 (= res!2344339 lt!2243145)))

(declare-fun b!5499382 () Bool)

(assert (=> b!5499382 (= e!3401839 e!3401838)))

(declare-fun res!2344338 () Bool)

(assert (=> b!5499382 (=> (not res!2344338) (not e!3401838))))

(assert (=> b!5499382 (= res!2344338 (not lt!2243145))))

(declare-fun b!5499383 () Bool)

(assert (=> b!5499383 (= e!3401834 (not lt!2243145))))

(declare-fun b!5499384 () Bool)

(assert (=> b!5499384 (= e!3401840 (not (= (head!11780 s!2326) (c!960293 (regOne!31455 r!7292)))))))

(declare-fun b!5499385 () Bool)

(assert (=> b!5499385 (= e!3401836 e!3401834)))

(declare-fun c!960460 () Bool)

(assert (=> b!5499385 (= c!960460 ((_ is EmptyLang!15471) (regOne!31455 r!7292)))))

(declare-fun b!5499386 () Bool)

(assert (=> b!5499386 (= e!3401837 (nullable!5513 (regOne!31455 r!7292)))))

(declare-fun b!5499387 () Bool)

(declare-fun res!2344344 () Bool)

(assert (=> b!5499387 (=> res!2344344 e!3401840)))

(assert (=> b!5499387 (= res!2344344 (not (isEmpty!34387 (tail!10875 s!2326))))))

(assert (= (and d!1743311 c!960458) b!5499386))

(assert (= (and d!1743311 (not c!960458)) b!5499379))

(assert (= (and d!1743311 c!960459) b!5499375))

(assert (= (and d!1743311 (not c!960459)) b!5499385))

(assert (= (and b!5499385 c!960460) b!5499383))

(assert (= (and b!5499385 (not c!960460)) b!5499376))

(assert (= (and b!5499376 (not res!2344340)) b!5499381))

(assert (= (and b!5499381 res!2344339) b!5499377))

(assert (= (and b!5499377 res!2344342) b!5499380))

(assert (= (and b!5499380 res!2344343) b!5499374))

(assert (= (and b!5499381 (not res!2344345)) b!5499382))

(assert (= (and b!5499382 res!2344338) b!5499378))

(assert (= (and b!5499378 (not res!2344341)) b!5499387))

(assert (= (and b!5499387 (not res!2344344)) b!5499384))

(assert (= (or b!5499375 b!5499377 b!5499378) bm!405859))

(assert (=> b!5499380 m!6507834))

(assert (=> b!5499380 m!6507834))

(assert (=> b!5499380 m!6507836))

(assert (=> bm!405859 m!6507820))

(assert (=> b!5499387 m!6507834))

(assert (=> b!5499387 m!6507834))

(assert (=> b!5499387 m!6507836))

(declare-fun m!6507948 () Bool)

(assert (=> b!5499386 m!6507948))

(assert (=> b!5499379 m!6507840))

(assert (=> b!5499379 m!6507840))

(declare-fun m!6507950 () Bool)

(assert (=> b!5499379 m!6507950))

(assert (=> b!5499379 m!6507834))

(assert (=> b!5499379 m!6507950))

(assert (=> b!5499379 m!6507834))

(declare-fun m!6507952 () Bool)

(assert (=> b!5499379 m!6507952))

(assert (=> b!5499374 m!6507840))

(assert (=> b!5499384 m!6507840))

(assert (=> d!1743311 m!6507820))

(assert (=> d!1743311 m!6507924))

(assert (=> b!5498875 d!1743311))

(declare-fun d!1743315 () Bool)

(declare-fun lt!2243148 () Regex!15471)

(assert (=> d!1743315 (validRegex!7207 lt!2243148)))

(assert (=> d!1743315 (= lt!2243148 (generalisedUnion!1334 (unfocusZipperList!899 zl!343)))))

(assert (=> d!1743315 (= (unfocusZipper!1213 zl!343) lt!2243148)))

(declare-fun bs!1268510 () Bool)

(assert (= bs!1268510 d!1743315))

(declare-fun m!6507954 () Bool)

(assert (=> bs!1268510 m!6507954))

(assert (=> bs!1268510 m!6507662))

(assert (=> bs!1268510 m!6507662))

(assert (=> bs!1268510 m!6507664))

(assert (=> b!5498865 d!1743315))

(declare-fun d!1743317 () Bool)

(declare-fun e!3401850 () Bool)

(assert (=> d!1743317 e!3401850))

(declare-fun res!2344353 () Bool)

(assert (=> d!1743317 (=> (not res!2344353) (not e!3401850))))

(declare-fun lt!2243151 () List!62713)

(declare-fun noDuplicate!1480 (List!62713) Bool)

(assert (=> d!1743317 (= res!2344353 (noDuplicate!1480 lt!2243151))))

(declare-fun choose!41797 ((InoxSet Context!9710)) List!62713)

(assert (=> d!1743317 (= lt!2243151 (choose!41797 z!1189))))

(assert (=> d!1743317 (= (toList!9255 z!1189) lt!2243151)))

(declare-fun b!5499399 () Bool)

(declare-fun content!11241 (List!62713) (InoxSet Context!9710))

(assert (=> b!5499399 (= e!3401850 (= (content!11241 lt!2243151) z!1189))))

(assert (= (and d!1743317 res!2344353) b!5499399))

(declare-fun m!6507956 () Bool)

(assert (=> d!1743317 m!6507956))

(declare-fun m!6507958 () Bool)

(assert (=> d!1743317 m!6507958))

(declare-fun m!6507960 () Bool)

(assert (=> b!5499399 m!6507960))

(assert (=> b!5498867 d!1743317))

(declare-fun bs!1268515 () Bool)

(declare-fun d!1743319 () Bool)

(assert (= bs!1268515 (and d!1743319 d!1743243)))

(declare-fun lambda!294436 () Int)

(assert (=> bs!1268515 (= lambda!294436 lambda!294399)))

(declare-fun bs!1268516 () Bool)

(assert (= bs!1268516 (and d!1743319 d!1743245)))

(assert (=> bs!1268516 (= lambda!294436 lambda!294406)))

(declare-fun bs!1268517 () Bool)

(assert (= bs!1268517 (and d!1743319 d!1743249)))

(assert (=> bs!1268517 (= lambda!294436 lambda!294409)))

(declare-fun b!5499454 () Bool)

(declare-fun e!3401886 () Regex!15471)

(assert (=> b!5499454 (= e!3401886 (h!69036 (exprs!5355 (h!69037 zl!343))))))

(declare-fun b!5499455 () Bool)

(declare-fun e!3401885 () Bool)

(declare-fun e!3401883 () Bool)

(assert (=> b!5499455 (= e!3401885 e!3401883)))

(declare-fun c!960488 () Bool)

(assert (=> b!5499455 (= c!960488 (isEmpty!34386 (exprs!5355 (h!69037 zl!343))))))

(declare-fun b!5499456 () Bool)

(declare-fun e!3401884 () Bool)

(assert (=> b!5499456 (= e!3401884 (isEmpty!34386 (t!375947 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun b!5499457 () Bool)

(declare-fun e!3401887 () Bool)

(declare-fun lt!2243157 () Regex!15471)

(declare-fun isConcat!582 (Regex!15471) Bool)

(assert (=> b!5499457 (= e!3401887 (isConcat!582 lt!2243157))))

(declare-fun b!5499458 () Bool)

(declare-fun isEmptyExpr!1059 (Regex!15471) Bool)

(assert (=> b!5499458 (= e!3401883 (isEmptyExpr!1059 lt!2243157))))

(declare-fun b!5499459 () Bool)

(declare-fun e!3401888 () Regex!15471)

(assert (=> b!5499459 (= e!3401886 e!3401888)))

(declare-fun c!960486 () Bool)

(assert (=> b!5499459 (= c!960486 ((_ is Cons!62588) (exprs!5355 (h!69037 zl!343))))))

(assert (=> d!1743319 e!3401885))

(declare-fun res!2344365 () Bool)

(assert (=> d!1743319 (=> (not res!2344365) (not e!3401885))))

(assert (=> d!1743319 (= res!2344365 (validRegex!7207 lt!2243157))))

(assert (=> d!1743319 (= lt!2243157 e!3401886)))

(declare-fun c!960485 () Bool)

(assert (=> d!1743319 (= c!960485 e!3401884)))

(declare-fun res!2344364 () Bool)

(assert (=> d!1743319 (=> (not res!2344364) (not e!3401884))))

(assert (=> d!1743319 (= res!2344364 ((_ is Cons!62588) (exprs!5355 (h!69037 zl!343))))))

(assert (=> d!1743319 (forall!14662 (exprs!5355 (h!69037 zl!343)) lambda!294436)))

(assert (=> d!1743319 (= (generalisedConcat!1086 (exprs!5355 (h!69037 zl!343))) lt!2243157)))

(declare-fun b!5499460 () Bool)

(assert (=> b!5499460 (= e!3401888 EmptyExpr!15471)))

(declare-fun b!5499461 () Bool)

(assert (=> b!5499461 (= e!3401888 (Concat!24316 (h!69036 (exprs!5355 (h!69037 zl!343))) (generalisedConcat!1086 (t!375947 (exprs!5355 (h!69037 zl!343))))))))

(declare-fun b!5499462 () Bool)

(assert (=> b!5499462 (= e!3401887 (= lt!2243157 (head!11778 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun b!5499463 () Bool)

(assert (=> b!5499463 (= e!3401883 e!3401887)))

(declare-fun c!960487 () Bool)

(assert (=> b!5499463 (= c!960487 (isEmpty!34386 (tail!10873 (exprs!5355 (h!69037 zl!343)))))))

(assert (= (and d!1743319 res!2344364) b!5499456))

(assert (= (and d!1743319 c!960485) b!5499454))

(assert (= (and d!1743319 (not c!960485)) b!5499459))

(assert (= (and b!5499459 c!960486) b!5499461))

(assert (= (and b!5499459 (not c!960486)) b!5499460))

(assert (= (and d!1743319 res!2344365) b!5499455))

(assert (= (and b!5499455 c!960488) b!5499458))

(assert (= (and b!5499455 (not c!960488)) b!5499463))

(assert (= (and b!5499463 c!960487) b!5499462))

(assert (= (and b!5499463 (not c!960487)) b!5499457))

(declare-fun m!6507994 () Bool)

(assert (=> b!5499456 m!6507994))

(declare-fun m!6507998 () Bool)

(assert (=> b!5499457 m!6507998))

(declare-fun m!6508000 () Bool)

(assert (=> b!5499458 m!6508000))

(declare-fun m!6508004 () Bool)

(assert (=> b!5499463 m!6508004))

(assert (=> b!5499463 m!6508004))

(declare-fun m!6508006 () Bool)

(assert (=> b!5499463 m!6508006))

(declare-fun m!6508008 () Bool)

(assert (=> b!5499462 m!6508008))

(declare-fun m!6508012 () Bool)

(assert (=> d!1743319 m!6508012))

(declare-fun m!6508014 () Bool)

(assert (=> d!1743319 m!6508014))

(declare-fun m!6508016 () Bool)

(assert (=> b!5499455 m!6508016))

(declare-fun m!6508018 () Bool)

(assert (=> b!5499461 m!6508018))

(assert (=> b!5498857 d!1743319))

(declare-fun d!1743325 () Bool)

(assert (=> d!1743325 (= (isEmpty!34383 (t!375948 zl!343)) ((_ is Nil!62589) (t!375948 zl!343)))))

(assert (=> b!5498863 d!1743325))

(declare-fun bs!1268518 () Bool)

(declare-fun d!1743327 () Bool)

(assert (= bs!1268518 (and d!1743327 d!1743243)))

(declare-fun lambda!294437 () Int)

(assert (=> bs!1268518 (= lambda!294437 lambda!294399)))

(declare-fun bs!1268519 () Bool)

(assert (= bs!1268519 (and d!1743327 d!1743245)))

(assert (=> bs!1268519 (= lambda!294437 lambda!294406)))

(declare-fun bs!1268520 () Bool)

(assert (= bs!1268520 (and d!1743327 d!1743249)))

(assert (=> bs!1268520 (= lambda!294437 lambda!294409)))

(declare-fun bs!1268521 () Bool)

(assert (= bs!1268521 (and d!1743327 d!1743319)))

(assert (=> bs!1268521 (= lambda!294437 lambda!294436)))

(assert (=> d!1743327 (= (inv!81924 (h!69037 zl!343)) (forall!14662 (exprs!5355 (h!69037 zl!343)) lambda!294437))))

(declare-fun bs!1268522 () Bool)

(assert (= bs!1268522 d!1743327))

(declare-fun m!6508020 () Bool)

(assert (=> bs!1268522 m!6508020))

(assert (=> b!5498872 d!1743327))

(declare-fun bm!405869 () Bool)

(declare-fun call!405876 () Bool)

(declare-fun c!960496 () Bool)

(assert (=> bm!405869 (= call!405876 (validRegex!7207 (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292))))))

(declare-fun b!5499540 () Bool)

(declare-fun res!2344379 () Bool)

(declare-fun e!3401929 () Bool)

(assert (=> b!5499540 (=> (not res!2344379) (not e!3401929))))

(assert (=> b!5499540 (= res!2344379 call!405876)))

(declare-fun e!3401930 () Bool)

(assert (=> b!5499540 (= e!3401930 e!3401929)))

(declare-fun b!5499541 () Bool)

(declare-fun res!2344380 () Bool)

(declare-fun e!3401931 () Bool)

(assert (=> b!5499541 (=> res!2344380 e!3401931)))

(assert (=> b!5499541 (= res!2344380 (not ((_ is Concat!24316) r!7292)))))

(assert (=> b!5499541 (= e!3401930 e!3401931)))

(declare-fun b!5499542 () Bool)

(declare-fun call!405874 () Bool)

(assert (=> b!5499542 (= e!3401929 call!405874)))

(declare-fun bm!405870 () Bool)

(declare-fun call!405875 () Bool)

(assert (=> bm!405870 (= call!405874 call!405875)))

(declare-fun b!5499543 () Bool)

(declare-fun e!3401934 () Bool)

(assert (=> b!5499543 (= e!3401931 e!3401934)))

(declare-fun res!2344376 () Bool)

(assert (=> b!5499543 (=> (not res!2344376) (not e!3401934))))

(assert (=> b!5499543 (= res!2344376 call!405876)))

(declare-fun b!5499544 () Bool)

(declare-fun e!3401933 () Bool)

(declare-fun e!3401932 () Bool)

(assert (=> b!5499544 (= e!3401933 e!3401932)))

(declare-fun c!960495 () Bool)

(assert (=> b!5499544 (= c!960495 ((_ is Star!15471) r!7292))))

(declare-fun b!5499545 () Bool)

(assert (=> b!5499545 (= e!3401932 e!3401930)))

(assert (=> b!5499545 (= c!960496 ((_ is Union!15471) r!7292))))

(declare-fun b!5499546 () Bool)

(assert (=> b!5499546 (= e!3401934 call!405874)))

(declare-fun b!5499547 () Bool)

(declare-fun e!3401928 () Bool)

(assert (=> b!5499547 (= e!3401928 call!405875)))

(declare-fun b!5499548 () Bool)

(assert (=> b!5499548 (= e!3401932 e!3401928)))

(declare-fun res!2344378 () Bool)

(assert (=> b!5499548 (= res!2344378 (not (nullable!5513 (reg!15800 r!7292))))))

(assert (=> b!5499548 (=> (not res!2344378) (not e!3401928))))

(declare-fun bm!405871 () Bool)

(assert (=> bm!405871 (= call!405875 (validRegex!7207 (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292)))))))

(declare-fun d!1743329 () Bool)

(declare-fun res!2344377 () Bool)

(assert (=> d!1743329 (=> res!2344377 e!3401933)))

(assert (=> d!1743329 (= res!2344377 ((_ is ElementMatch!15471) r!7292))))

(assert (=> d!1743329 (= (validRegex!7207 r!7292) e!3401933)))

(assert (= (and d!1743329 (not res!2344377)) b!5499544))

(assert (= (and b!5499544 c!960495) b!5499548))

(assert (= (and b!5499544 (not c!960495)) b!5499545))

(assert (= (and b!5499548 res!2344378) b!5499547))

(assert (= (and b!5499545 c!960496) b!5499540))

(assert (= (and b!5499545 (not c!960496)) b!5499541))

(assert (= (and b!5499540 res!2344379) b!5499542))

(assert (= (and b!5499541 (not res!2344380)) b!5499543))

(assert (= (and b!5499543 res!2344376) b!5499546))

(assert (= (or b!5499542 b!5499546) bm!405870))

(assert (= (or b!5499540 b!5499543) bm!405869))

(assert (= (or b!5499547 bm!405870) bm!405871))

(declare-fun m!6508026 () Bool)

(assert (=> bm!405869 m!6508026))

(declare-fun m!6508028 () Bool)

(assert (=> b!5499548 m!6508028))

(declare-fun m!6508030 () Bool)

(assert (=> bm!405871 m!6508030))

(assert (=> start!574410 d!1743329))

(declare-fun d!1743333 () Bool)

(declare-fun c!960499 () Bool)

(assert (=> d!1743333 (= c!960499 (isEmpty!34387 (t!375949 s!2326)))))

(declare-fun e!3401937 () Bool)

(assert (=> d!1743333 (= (matchZipper!1639 lt!2243091 (t!375949 s!2326)) e!3401937)))

(declare-fun b!5499553 () Bool)

(declare-fun nullableZipper!1518 ((InoxSet Context!9710)) Bool)

(assert (=> b!5499553 (= e!3401937 (nullableZipper!1518 lt!2243091))))

(declare-fun b!5499554 () Bool)

(assert (=> b!5499554 (= e!3401937 (matchZipper!1639 (derivationStepZipper!1582 lt!2243091 (head!11780 (t!375949 s!2326))) (tail!10875 (t!375949 s!2326))))))

(assert (= (and d!1743333 c!960499) b!5499553))

(assert (= (and d!1743333 (not c!960499)) b!5499554))

(declare-fun m!6508032 () Bool)

(assert (=> d!1743333 m!6508032))

(declare-fun m!6508034 () Bool)

(assert (=> b!5499553 m!6508034))

(declare-fun m!6508036 () Bool)

(assert (=> b!5499554 m!6508036))

(assert (=> b!5499554 m!6508036))

(declare-fun m!6508038 () Bool)

(assert (=> b!5499554 m!6508038))

(declare-fun m!6508040 () Bool)

(assert (=> b!5499554 m!6508040))

(assert (=> b!5499554 m!6508038))

(assert (=> b!5499554 m!6508040))

(declare-fun m!6508042 () Bool)

(assert (=> b!5499554 m!6508042))

(assert (=> b!5498862 d!1743333))

(declare-fun d!1743335 () Bool)

(declare-fun c!960500 () Bool)

(assert (=> d!1743335 (= c!960500 (isEmpty!34387 s!2326))))

(declare-fun e!3401938 () Bool)

(assert (=> d!1743335 (= (matchZipper!1639 z!1189 s!2326) e!3401938)))

(declare-fun b!5499555 () Bool)

(assert (=> b!5499555 (= e!3401938 (nullableZipper!1518 z!1189))))

(declare-fun b!5499556 () Bool)

(assert (=> b!5499556 (= e!3401938 (matchZipper!1639 (derivationStepZipper!1582 z!1189 (head!11780 s!2326)) (tail!10875 s!2326)))))

(assert (= (and d!1743335 c!960500) b!5499555))

(assert (= (and d!1743335 (not c!960500)) b!5499556))

(assert (=> d!1743335 m!6507820))

(declare-fun m!6508044 () Bool)

(assert (=> b!5499555 m!6508044))

(assert (=> b!5499556 m!6507840))

(assert (=> b!5499556 m!6507840))

(declare-fun m!6508046 () Bool)

(assert (=> b!5499556 m!6508046))

(assert (=> b!5499556 m!6507834))

(assert (=> b!5499556 m!6508046))

(assert (=> b!5499556 m!6507834))

(declare-fun m!6508048 () Bool)

(assert (=> b!5499556 m!6508048))

(assert (=> b!5498862 d!1743335))

(declare-fun b!5499557 () Bool)

(declare-fun e!3401942 () Bool)

(assert (=> b!5499557 (= e!3401942 (nullable!5513 (regOne!31454 r!7292)))))

(declare-fun b!5499558 () Bool)

(declare-fun c!960504 () Bool)

(assert (=> b!5499558 (= c!960504 ((_ is Star!15471) r!7292))))

(declare-fun e!3401944 () (InoxSet Context!9710))

(declare-fun e!3401940 () (InoxSet Context!9710))

(assert (=> b!5499558 (= e!3401944 e!3401940)))

(declare-fun b!5499559 () Bool)

(declare-fun e!3401939 () (InoxSet Context!9710))

(declare-fun call!405878 () (InoxSet Context!9710))

(declare-fun call!405879 () (InoxSet Context!9710))

(assert (=> b!5499559 (= e!3401939 ((_ map or) call!405878 call!405879))))

(declare-fun call!405881 () List!62712)

(declare-fun c!960505 () Bool)

(declare-fun bm!405872 () Bool)

(assert (=> bm!405872 (= call!405878 (derivationStepZipperDown!817 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292)) (ite c!960505 lt!2243099 (Context!9711 call!405881)) (h!69038 s!2326)))))

(declare-fun b!5499560 () Bool)

(declare-fun e!3401941 () (InoxSet Context!9710))

(assert (=> b!5499560 (= e!3401941 (store ((as const (Array Context!9710 Bool)) false) lt!2243099 true))))

(declare-fun bm!405873 () Bool)

(declare-fun call!405877 () List!62712)

(assert (=> bm!405873 (= call!405877 call!405881)))

(declare-fun b!5499561 () Bool)

(assert (=> b!5499561 (= e!3401941 e!3401939)))

(assert (=> b!5499561 (= c!960505 ((_ is Union!15471) r!7292))))

(declare-fun bm!405874 () Bool)

(declare-fun c!960501 () Bool)

(declare-fun c!960503 () Bool)

(assert (=> bm!405874 (= call!405879 (derivationStepZipperDown!817 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292)))) (ite (or c!960505 c!960503) lt!2243099 (Context!9711 call!405877)) (h!69038 s!2326)))))

(declare-fun b!5499562 () Bool)

(declare-fun call!405880 () (InoxSet Context!9710))

(assert (=> b!5499562 (= e!3401940 call!405880)))

(declare-fun b!5499563 () Bool)

(assert (=> b!5499563 (= c!960503 e!3401942)))

(declare-fun res!2344381 () Bool)

(assert (=> b!5499563 (=> (not res!2344381) (not e!3401942))))

(assert (=> b!5499563 (= res!2344381 ((_ is Concat!24316) r!7292))))

(declare-fun e!3401943 () (InoxSet Context!9710))

(assert (=> b!5499563 (= e!3401939 e!3401943)))

(declare-fun bm!405875 () Bool)

(assert (=> bm!405875 (= call!405881 ($colon$colon!1567 (exprs!5355 lt!2243099) (ite (or c!960503 c!960501) (regTwo!31454 r!7292) r!7292)))))

(declare-fun b!5499564 () Bool)

(declare-fun call!405882 () (InoxSet Context!9710))

(assert (=> b!5499564 (= e!3401943 ((_ map or) call!405878 call!405882))))

(declare-fun b!5499565 () Bool)

(assert (=> b!5499565 (= e!3401943 e!3401944)))

(assert (=> b!5499565 (= c!960501 ((_ is Concat!24316) r!7292))))

(declare-fun b!5499566 () Bool)

(assert (=> b!5499566 (= e!3401944 call!405880)))

(declare-fun bm!405877 () Bool)

(assert (=> bm!405877 (= call!405882 call!405879)))

(declare-fun b!5499567 () Bool)

(assert (=> b!5499567 (= e!3401940 ((as const (Array Context!9710 Bool)) false))))

(declare-fun d!1743337 () Bool)

(declare-fun c!960502 () Bool)

(assert (=> d!1743337 (= c!960502 (and ((_ is ElementMatch!15471) r!7292) (= (c!960293 r!7292) (h!69038 s!2326))))))

(assert (=> d!1743337 (= (derivationStepZipperDown!817 r!7292 lt!2243099 (h!69038 s!2326)) e!3401941)))

(declare-fun bm!405876 () Bool)

(assert (=> bm!405876 (= call!405880 call!405882)))

(assert (= (and d!1743337 c!960502) b!5499560))

(assert (= (and d!1743337 (not c!960502)) b!5499561))

(assert (= (and b!5499561 c!960505) b!5499559))

(assert (= (and b!5499561 (not c!960505)) b!5499563))

(assert (= (and b!5499563 res!2344381) b!5499557))

(assert (= (and b!5499563 c!960503) b!5499564))

(assert (= (and b!5499563 (not c!960503)) b!5499565))

(assert (= (and b!5499565 c!960501) b!5499566))

(assert (= (and b!5499565 (not c!960501)) b!5499558))

(assert (= (and b!5499558 c!960504) b!5499562))

(assert (= (and b!5499558 (not c!960504)) b!5499567))

(assert (= (or b!5499566 b!5499562) bm!405873))

(assert (= (or b!5499566 b!5499562) bm!405876))

(assert (= (or b!5499564 bm!405873) bm!405875))

(assert (= (or b!5499564 bm!405876) bm!405877))

(assert (= (or b!5499559 bm!405877) bm!405874))

(assert (= (or b!5499559 b!5499564) bm!405872))

(declare-fun m!6508050 () Bool)

(assert (=> bm!405874 m!6508050))

(declare-fun m!6508052 () Bool)

(assert (=> bm!405872 m!6508052))

(declare-fun m!6508054 () Bool)

(assert (=> b!5499557 m!6508054))

(assert (=> b!5499560 m!6507882))

(declare-fun m!6508056 () Bool)

(assert (=> bm!405875 m!6508056))

(assert (=> b!5498874 d!1743337))

(declare-fun b!5499568 () Bool)

(declare-fun e!3401945 () (InoxSet Context!9710))

(declare-fun e!3401947 () (InoxSet Context!9710))

(assert (=> b!5499568 (= e!3401945 e!3401947)))

(declare-fun c!960506 () Bool)

(assert (=> b!5499568 (= c!960506 ((_ is Cons!62588) (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))))))

(declare-fun b!5499569 () Bool)

(declare-fun call!405883 () (InoxSet Context!9710))

(assert (=> b!5499569 (= e!3401947 call!405883)))

(declare-fun b!5499570 () Bool)

(assert (=> b!5499570 (= e!3401945 ((_ map or) call!405883 (derivationStepZipperUp!743 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (h!69038 s!2326))))))

(declare-fun b!5499571 () Bool)

(assert (=> b!5499571 (= e!3401947 ((as const (Array Context!9710 Bool)) false))))

(declare-fun b!5499572 () Bool)

(declare-fun e!3401946 () Bool)

(assert (=> b!5499572 (= e!3401946 (nullable!5513 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))))))

(declare-fun bm!405878 () Bool)

(assert (=> bm!405878 (= call!405883 (derivationStepZipperDown!817 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))) (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (h!69038 s!2326)))))

(declare-fun d!1743339 () Bool)

(declare-fun c!960507 () Bool)

(assert (=> d!1743339 (= c!960507 e!3401946)))

(declare-fun res!2344382 () Bool)

(assert (=> d!1743339 (=> (not res!2344382) (not e!3401946))))

(assert (=> d!1743339 (= res!2344382 ((_ is Cons!62588) (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))))))

(assert (=> d!1743339 (= (derivationStepZipperUp!743 (Context!9711 (Cons!62588 r!7292 Nil!62588)) (h!69038 s!2326)) e!3401945)))

(assert (= (and d!1743339 res!2344382) b!5499572))

(assert (= (and d!1743339 c!960507) b!5499570))

(assert (= (and d!1743339 (not c!960507)) b!5499568))

(assert (= (and b!5499568 c!960506) b!5499569))

(assert (= (and b!5499568 (not c!960506)) b!5499571))

(assert (= (or b!5499570 b!5499569) bm!405878))

(declare-fun m!6508058 () Bool)

(assert (=> b!5499570 m!6508058))

(declare-fun m!6508060 () Bool)

(assert (=> b!5499572 m!6508060))

(declare-fun m!6508062 () Bool)

(assert (=> bm!405878 m!6508062))

(assert (=> b!5498874 d!1743339))

(declare-fun e!3401950 () Bool)

(assert (=> b!5498871 (= tp!1513055 e!3401950)))

(declare-fun b!5499586 () Bool)

(declare-fun tp!1513134 () Bool)

(declare-fun tp!1513133 () Bool)

(assert (=> b!5499586 (= e!3401950 (and tp!1513134 tp!1513133))))

(declare-fun b!5499583 () Bool)

(assert (=> b!5499583 (= e!3401950 tp_is_empty!40195)))

(declare-fun b!5499584 () Bool)

(declare-fun tp!1513136 () Bool)

(declare-fun tp!1513132 () Bool)

(assert (=> b!5499584 (= e!3401950 (and tp!1513136 tp!1513132))))

(declare-fun b!5499585 () Bool)

(declare-fun tp!1513135 () Bool)

(assert (=> b!5499585 (= e!3401950 tp!1513135)))

(assert (= (and b!5498871 ((_ is ElementMatch!15471) (reg!15800 r!7292))) b!5499583))

(assert (= (and b!5498871 ((_ is Concat!24316) (reg!15800 r!7292))) b!5499584))

(assert (= (and b!5498871 ((_ is Star!15471) (reg!15800 r!7292))) b!5499585))

(assert (= (and b!5498871 ((_ is Union!15471) (reg!15800 r!7292))) b!5499586))

(declare-fun e!3401951 () Bool)

(assert (=> b!5498856 (= tp!1513058 e!3401951)))

(declare-fun b!5499590 () Bool)

(declare-fun tp!1513139 () Bool)

(declare-fun tp!1513138 () Bool)

(assert (=> b!5499590 (= e!3401951 (and tp!1513139 tp!1513138))))

(declare-fun b!5499587 () Bool)

(assert (=> b!5499587 (= e!3401951 tp_is_empty!40195)))

(declare-fun b!5499588 () Bool)

(declare-fun tp!1513141 () Bool)

(declare-fun tp!1513137 () Bool)

(assert (=> b!5499588 (= e!3401951 (and tp!1513141 tp!1513137))))

(declare-fun b!5499589 () Bool)

(declare-fun tp!1513140 () Bool)

(assert (=> b!5499589 (= e!3401951 tp!1513140)))

(assert (= (and b!5498856 ((_ is ElementMatch!15471) (regOne!31454 r!7292))) b!5499587))

(assert (= (and b!5498856 ((_ is Concat!24316) (regOne!31454 r!7292))) b!5499588))

(assert (= (and b!5498856 ((_ is Star!15471) (regOne!31454 r!7292))) b!5499589))

(assert (= (and b!5498856 ((_ is Union!15471) (regOne!31454 r!7292))) b!5499590))

(declare-fun e!3401952 () Bool)

(assert (=> b!5498856 (= tp!1513062 e!3401952)))

(declare-fun b!5499594 () Bool)

(declare-fun tp!1513144 () Bool)

(declare-fun tp!1513143 () Bool)

(assert (=> b!5499594 (= e!3401952 (and tp!1513144 tp!1513143))))

(declare-fun b!5499591 () Bool)

(assert (=> b!5499591 (= e!3401952 tp_is_empty!40195)))

(declare-fun b!5499592 () Bool)

(declare-fun tp!1513146 () Bool)

(declare-fun tp!1513142 () Bool)

(assert (=> b!5499592 (= e!3401952 (and tp!1513146 tp!1513142))))

(declare-fun b!5499593 () Bool)

(declare-fun tp!1513145 () Bool)

(assert (=> b!5499593 (= e!3401952 tp!1513145)))

(assert (= (and b!5498856 ((_ is ElementMatch!15471) (regTwo!31454 r!7292))) b!5499591))

(assert (= (and b!5498856 ((_ is Concat!24316) (regTwo!31454 r!7292))) b!5499592))

(assert (= (and b!5498856 ((_ is Star!15471) (regTwo!31454 r!7292))) b!5499593))

(assert (= (and b!5498856 ((_ is Union!15471) (regTwo!31454 r!7292))) b!5499594))

(declare-fun condSetEmpty!36437 () Bool)

(assert (=> setNonEmpty!36431 (= condSetEmpty!36437 (= setRest!36431 ((as const (Array Context!9710 Bool)) false)))))

(declare-fun setRes!36437 () Bool)

(assert (=> setNonEmpty!36431 (= tp!1513060 setRes!36437)))

(declare-fun setIsEmpty!36437 () Bool)

(assert (=> setIsEmpty!36437 setRes!36437))

(declare-fun e!3401955 () Bool)

(declare-fun setNonEmpty!36437 () Bool)

(declare-fun tp!1513152 () Bool)

(declare-fun setElem!36437 () Context!9710)

(assert (=> setNonEmpty!36437 (= setRes!36437 (and tp!1513152 (inv!81924 setElem!36437) e!3401955))))

(declare-fun setRest!36437 () (InoxSet Context!9710))

(assert (=> setNonEmpty!36437 (= setRest!36431 ((_ map or) (store ((as const (Array Context!9710 Bool)) false) setElem!36437 true) setRest!36437))))

(declare-fun b!5499599 () Bool)

(declare-fun tp!1513151 () Bool)

(assert (=> b!5499599 (= e!3401955 tp!1513151)))

(assert (= (and setNonEmpty!36431 condSetEmpty!36437) setIsEmpty!36437))

(assert (= (and setNonEmpty!36431 (not condSetEmpty!36437)) setNonEmpty!36437))

(assert (= setNonEmpty!36437 b!5499599))

(declare-fun m!6508064 () Bool)

(assert (=> setNonEmpty!36437 m!6508064))

(declare-fun b!5499604 () Bool)

(declare-fun e!3401958 () Bool)

(declare-fun tp!1513157 () Bool)

(declare-fun tp!1513158 () Bool)

(assert (=> b!5499604 (= e!3401958 (and tp!1513157 tp!1513158))))

(assert (=> b!5498861 (= tp!1513056 e!3401958)))

(assert (= (and b!5498861 ((_ is Cons!62588) (exprs!5355 (h!69037 zl!343)))) b!5499604))

(declare-fun e!3401959 () Bool)

(assert (=> b!5498876 (= tp!1513059 e!3401959)))

(declare-fun b!5499608 () Bool)

(declare-fun tp!1513161 () Bool)

(declare-fun tp!1513160 () Bool)

(assert (=> b!5499608 (= e!3401959 (and tp!1513161 tp!1513160))))

(declare-fun b!5499605 () Bool)

(assert (=> b!5499605 (= e!3401959 tp_is_empty!40195)))

(declare-fun b!5499606 () Bool)

(declare-fun tp!1513163 () Bool)

(declare-fun tp!1513159 () Bool)

(assert (=> b!5499606 (= e!3401959 (and tp!1513163 tp!1513159))))

(declare-fun b!5499607 () Bool)

(declare-fun tp!1513162 () Bool)

(assert (=> b!5499607 (= e!3401959 tp!1513162)))

(assert (= (and b!5498876 ((_ is ElementMatch!15471) (regOne!31455 r!7292))) b!5499605))

(assert (= (and b!5498876 ((_ is Concat!24316) (regOne!31455 r!7292))) b!5499606))

(assert (= (and b!5498876 ((_ is Star!15471) (regOne!31455 r!7292))) b!5499607))

(assert (= (and b!5498876 ((_ is Union!15471) (regOne!31455 r!7292))) b!5499608))

(declare-fun e!3401960 () Bool)

(assert (=> b!5498876 (= tp!1513054 e!3401960)))

(declare-fun b!5499612 () Bool)

(declare-fun tp!1513166 () Bool)

(declare-fun tp!1513165 () Bool)

(assert (=> b!5499612 (= e!3401960 (and tp!1513166 tp!1513165))))

(declare-fun b!5499609 () Bool)

(assert (=> b!5499609 (= e!3401960 tp_is_empty!40195)))

(declare-fun b!5499610 () Bool)

(declare-fun tp!1513168 () Bool)

(declare-fun tp!1513164 () Bool)

(assert (=> b!5499610 (= e!3401960 (and tp!1513168 tp!1513164))))

(declare-fun b!5499611 () Bool)

(declare-fun tp!1513167 () Bool)

(assert (=> b!5499611 (= e!3401960 tp!1513167)))

(assert (= (and b!5498876 ((_ is ElementMatch!15471) (regTwo!31455 r!7292))) b!5499609))

(assert (= (and b!5498876 ((_ is Concat!24316) (regTwo!31455 r!7292))) b!5499610))

(assert (= (and b!5498876 ((_ is Star!15471) (regTwo!31455 r!7292))) b!5499611))

(assert (= (and b!5498876 ((_ is Union!15471) (regTwo!31455 r!7292))) b!5499612))

(declare-fun b!5499613 () Bool)

(declare-fun e!3401961 () Bool)

(declare-fun tp!1513169 () Bool)

(declare-fun tp!1513170 () Bool)

(assert (=> b!5499613 (= e!3401961 (and tp!1513169 tp!1513170))))

(assert (=> b!5498868 (= tp!1513063 e!3401961)))

(assert (= (and b!5498868 ((_ is Cons!62588) (exprs!5355 setElem!36431))) b!5499613))

(declare-fun b!5499621 () Bool)

(declare-fun e!3401967 () Bool)

(declare-fun tp!1513175 () Bool)

(assert (=> b!5499621 (= e!3401967 tp!1513175)))

(declare-fun b!5499620 () Bool)

(declare-fun tp!1513176 () Bool)

(declare-fun e!3401966 () Bool)

(assert (=> b!5499620 (= e!3401966 (and (inv!81924 (h!69037 (t!375948 zl!343))) e!3401967 tp!1513176))))

(assert (=> b!5498872 (= tp!1513057 e!3401966)))

(assert (= b!5499620 b!5499621))

(assert (= (and b!5498872 ((_ is Cons!62589) (t!375948 zl!343))) b!5499620))

(declare-fun m!6508066 () Bool)

(assert (=> b!5499620 m!6508066))

(declare-fun b!5499626 () Bool)

(declare-fun e!3401970 () Bool)

(declare-fun tp!1513179 () Bool)

(assert (=> b!5499626 (= e!3401970 (and tp_is_empty!40195 tp!1513179))))

(assert (=> b!5498864 (= tp!1513061 e!3401970)))

(assert (= (and b!5498864 ((_ is Cons!62590) (t!375949 s!2326))) b!5499626))

(declare-fun b_lambda!208577 () Bool)

(assert (= b_lambda!208571 (or b!5498870 b_lambda!208577)))

(declare-fun bs!1268524 () Bool)

(declare-fun d!1743341 () Bool)

(assert (= bs!1268524 (and d!1743341 b!5498870)))

(assert (=> bs!1268524 (= (dynLambda!24463 lambda!294385 (h!69037 zl!343)) (derivationStepZipperUp!743 (h!69037 zl!343) (h!69038 s!2326)))))

(assert (=> bs!1268524 m!6507670))

(assert (=> d!1743241 d!1743341))

(check-sat (not d!1743277) (not d!1743315) (not b!5499457) (not d!1743307) (not bm!405872) (not bm!405841) (not b!5499007) (not bm!405835) (not b!5499572) (not b!5499379) tp_is_empty!40195 (not b!5499217) (not b!5499212) (not b!5499590) (not b!5499557) (not b!5499309) (not b!5499331) (not b!5499003) (not b!5499606) (not bm!405853) (not d!1743317) (not b!5499586) (not d!1743249) (not bm!405785) (not b!5499004) (not bm!405784) (not b!5499463) (not bs!1268524) (not d!1743265) (not bm!405832) (not b!5499462) (not b!5499207) (not b!5499608) (not bm!405875) (not b!5498932) (not b!5499133) (not b_lambda!208577) (not d!1743243) (not b!5499009) (not b!5499599) (not b!5499293) (not b!5499307) (not b!5499341) (not b!5499343) (not b!5499282) (not b!5499593) (not b!5499626) (not bm!405874) (not b!5499611) (not bm!405850) (not bm!405842) (not b!5499620) (not b!5499610) (not bm!405854) (not b!5498934) (not d!1743233) (not b!5499220) (not d!1743327) (not setNonEmpty!36437) (not b!5499386) (not b!5499384) (not b!5499585) (not d!1743319) (not b!5499594) (not b!5499592) (not b!5499344) (not bm!405838) (not b!5499016) (not b!5499604) (not d!1743335) (not b!5499374) (not bm!405869) (not d!1743311) (not b!5499621) (not b!5499387) (not b!5499455) (not bm!405878) (not b!5499458) (not b!5499553) (not b!5499555) (not b!5499456) (not b!5499588) (not b!5499380) (not b!5499548) (not b!5499368) (not d!1743241) (not b!5499613) (not b!5499005) (not b!5499010) (not b!5499399) (not b!5499337) (not d!1743231) (not b!5499554) (not bm!405859) (not b!5499336) (not b!5499461) (not b!5499219) (not b!5499213) (not b!5499612) (not b!5499584) (not b!5499556) (not d!1743333) (not bm!405871) (not bm!405765) (not d!1743245) (not d!1743305) (not b!5499570) (not bm!405831) (not d!1743303) (not b!5499002) (not bm!405795) (not bm!405837) (not bm!405829) (not b!5499607) (not b!5499366) (not b!5499131) (not b!5499589))
(check-sat)
(get-model)

(declare-fun d!1743343 () Bool)

(assert (=> d!1743343 (= (flatMap!1090 z!1189 lambda!294393) (choose!41790 z!1189 lambda!294393))))

(declare-fun bs!1268525 () Bool)

(assert (= bs!1268525 d!1743343))

(declare-fun m!6508068 () Bool)

(assert (=> bs!1268525 m!6508068))

(assert (=> d!1743231 d!1743343))

(declare-fun bm!405879 () Bool)

(declare-fun call!405886 () Bool)

(declare-fun c!960509 () Bool)

(assert (=> bm!405879 (= call!405886 (validRegex!7207 (ite c!960509 (regOne!31455 lt!2243157) (regOne!31454 lt!2243157))))))

(declare-fun b!5499627 () Bool)

(declare-fun res!2344386 () Bool)

(declare-fun e!3401972 () Bool)

(assert (=> b!5499627 (=> (not res!2344386) (not e!3401972))))

(assert (=> b!5499627 (= res!2344386 call!405886)))

(declare-fun e!3401973 () Bool)

(assert (=> b!5499627 (= e!3401973 e!3401972)))

(declare-fun b!5499628 () Bool)

(declare-fun res!2344387 () Bool)

(declare-fun e!3401974 () Bool)

(assert (=> b!5499628 (=> res!2344387 e!3401974)))

(assert (=> b!5499628 (= res!2344387 (not ((_ is Concat!24316) lt!2243157)))))

(assert (=> b!5499628 (= e!3401973 e!3401974)))

(declare-fun b!5499629 () Bool)

(declare-fun call!405884 () Bool)

(assert (=> b!5499629 (= e!3401972 call!405884)))

(declare-fun bm!405880 () Bool)

(declare-fun call!405885 () Bool)

(assert (=> bm!405880 (= call!405884 call!405885)))

(declare-fun b!5499630 () Bool)

(declare-fun e!3401977 () Bool)

(assert (=> b!5499630 (= e!3401974 e!3401977)))

(declare-fun res!2344383 () Bool)

(assert (=> b!5499630 (=> (not res!2344383) (not e!3401977))))

(assert (=> b!5499630 (= res!2344383 call!405886)))

(declare-fun b!5499631 () Bool)

(declare-fun e!3401976 () Bool)

(declare-fun e!3401975 () Bool)

(assert (=> b!5499631 (= e!3401976 e!3401975)))

(declare-fun c!960508 () Bool)

(assert (=> b!5499631 (= c!960508 ((_ is Star!15471) lt!2243157))))

(declare-fun b!5499632 () Bool)

(assert (=> b!5499632 (= e!3401975 e!3401973)))

(assert (=> b!5499632 (= c!960509 ((_ is Union!15471) lt!2243157))))

(declare-fun b!5499633 () Bool)

(assert (=> b!5499633 (= e!3401977 call!405884)))

(declare-fun b!5499634 () Bool)

(declare-fun e!3401971 () Bool)

(assert (=> b!5499634 (= e!3401971 call!405885)))

(declare-fun b!5499635 () Bool)

(assert (=> b!5499635 (= e!3401975 e!3401971)))

(declare-fun res!2344385 () Bool)

(assert (=> b!5499635 (= res!2344385 (not (nullable!5513 (reg!15800 lt!2243157))))))

(assert (=> b!5499635 (=> (not res!2344385) (not e!3401971))))

(declare-fun bm!405881 () Bool)

(assert (=> bm!405881 (= call!405885 (validRegex!7207 (ite c!960508 (reg!15800 lt!2243157) (ite c!960509 (regTwo!31455 lt!2243157) (regTwo!31454 lt!2243157)))))))

(declare-fun d!1743345 () Bool)

(declare-fun res!2344384 () Bool)

(assert (=> d!1743345 (=> res!2344384 e!3401976)))

(assert (=> d!1743345 (= res!2344384 ((_ is ElementMatch!15471) lt!2243157))))

(assert (=> d!1743345 (= (validRegex!7207 lt!2243157) e!3401976)))

(assert (= (and d!1743345 (not res!2344384)) b!5499631))

(assert (= (and b!5499631 c!960508) b!5499635))

(assert (= (and b!5499631 (not c!960508)) b!5499632))

(assert (= (and b!5499635 res!2344385) b!5499634))

(assert (= (and b!5499632 c!960509) b!5499627))

(assert (= (and b!5499632 (not c!960509)) b!5499628))

(assert (= (and b!5499627 res!2344386) b!5499629))

(assert (= (and b!5499628 (not res!2344387)) b!5499630))

(assert (= (and b!5499630 res!2344383) b!5499633))

(assert (= (or b!5499629 b!5499633) bm!405880))

(assert (= (or b!5499627 b!5499630) bm!405879))

(assert (= (or b!5499634 bm!405880) bm!405881))

(declare-fun m!6508070 () Bool)

(assert (=> bm!405879 m!6508070))

(declare-fun m!6508072 () Bool)

(assert (=> b!5499635 m!6508072))

(declare-fun m!6508074 () Bool)

(assert (=> bm!405881 m!6508074))

(assert (=> d!1743319 d!1743345))

(declare-fun d!1743347 () Bool)

(declare-fun res!2344392 () Bool)

(declare-fun e!3401982 () Bool)

(assert (=> d!1743347 (=> res!2344392 e!3401982)))

(assert (=> d!1743347 (= res!2344392 ((_ is Nil!62588) (exprs!5355 (h!69037 zl!343))))))

(assert (=> d!1743347 (= (forall!14662 (exprs!5355 (h!69037 zl!343)) lambda!294436) e!3401982)))

(declare-fun b!5499640 () Bool)

(declare-fun e!3401983 () Bool)

(assert (=> b!5499640 (= e!3401982 e!3401983)))

(declare-fun res!2344393 () Bool)

(assert (=> b!5499640 (=> (not res!2344393) (not e!3401983))))

(declare-fun dynLambda!24465 (Int Regex!15471) Bool)

(assert (=> b!5499640 (= res!2344393 (dynLambda!24465 lambda!294436 (h!69036 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun b!5499641 () Bool)

(assert (=> b!5499641 (= e!3401983 (forall!14662 (t!375947 (exprs!5355 (h!69037 zl!343))) lambda!294436))))

(assert (= (and d!1743347 (not res!2344392)) b!5499640))

(assert (= (and b!5499640 res!2344393) b!5499641))

(declare-fun b_lambda!208579 () Bool)

(assert (=> (not b_lambda!208579) (not b!5499640)))

(declare-fun m!6508076 () Bool)

(assert (=> b!5499640 m!6508076))

(declare-fun m!6508078 () Bool)

(assert (=> b!5499641 m!6508078))

(assert (=> d!1743319 d!1743347))

(declare-fun call!405889 () Bool)

(declare-fun c!960511 () Bool)

(declare-fun bm!405882 () Bool)

(assert (=> bm!405882 (= call!405889 (validRegex!7207 (ite c!960511 (regOne!31455 (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292)))) (regOne!31454 (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292)))))))))

(declare-fun b!5499642 () Bool)

(declare-fun res!2344397 () Bool)

(declare-fun e!3401985 () Bool)

(assert (=> b!5499642 (=> (not res!2344397) (not e!3401985))))

(assert (=> b!5499642 (= res!2344397 call!405889)))

(declare-fun e!3401986 () Bool)

(assert (=> b!5499642 (= e!3401986 e!3401985)))

(declare-fun b!5499643 () Bool)

(declare-fun res!2344398 () Bool)

(declare-fun e!3401987 () Bool)

(assert (=> b!5499643 (=> res!2344398 e!3401987)))

(assert (=> b!5499643 (= res!2344398 (not ((_ is Concat!24316) (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292))))))))

(assert (=> b!5499643 (= e!3401986 e!3401987)))

(declare-fun b!5499644 () Bool)

(declare-fun call!405887 () Bool)

(assert (=> b!5499644 (= e!3401985 call!405887)))

(declare-fun bm!405883 () Bool)

(declare-fun call!405888 () Bool)

(assert (=> bm!405883 (= call!405887 call!405888)))

(declare-fun b!5499645 () Bool)

(declare-fun e!3401990 () Bool)

(assert (=> b!5499645 (= e!3401987 e!3401990)))

(declare-fun res!2344394 () Bool)

(assert (=> b!5499645 (=> (not res!2344394) (not e!3401990))))

(assert (=> b!5499645 (= res!2344394 call!405889)))

(declare-fun b!5499646 () Bool)

(declare-fun e!3401989 () Bool)

(declare-fun e!3401988 () Bool)

(assert (=> b!5499646 (= e!3401989 e!3401988)))

(declare-fun c!960510 () Bool)

(assert (=> b!5499646 (= c!960510 ((_ is Star!15471) (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292)))))))

(declare-fun b!5499647 () Bool)

(assert (=> b!5499647 (= e!3401988 e!3401986)))

(assert (=> b!5499647 (= c!960511 ((_ is Union!15471) (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292)))))))

(declare-fun b!5499648 () Bool)

(assert (=> b!5499648 (= e!3401990 call!405887)))

(declare-fun b!5499649 () Bool)

(declare-fun e!3401984 () Bool)

(assert (=> b!5499649 (= e!3401984 call!405888)))

(declare-fun b!5499650 () Bool)

(assert (=> b!5499650 (= e!3401988 e!3401984)))

(declare-fun res!2344396 () Bool)

(assert (=> b!5499650 (= res!2344396 (not (nullable!5513 (reg!15800 (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292)))))))))

(assert (=> b!5499650 (=> (not res!2344396) (not e!3401984))))

(declare-fun bm!405884 () Bool)

(assert (=> bm!405884 (= call!405888 (validRegex!7207 (ite c!960510 (reg!15800 (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292)))) (ite c!960511 (regTwo!31455 (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292)))) (regTwo!31454 (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292))))))))))

(declare-fun d!1743349 () Bool)

(declare-fun res!2344395 () Bool)

(assert (=> d!1743349 (=> res!2344395 e!3401989)))

(assert (=> d!1743349 (= res!2344395 ((_ is ElementMatch!15471) (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292)))))))

(assert (=> d!1743349 (= (validRegex!7207 (ite c!960495 (reg!15800 r!7292) (ite c!960496 (regTwo!31455 r!7292) (regTwo!31454 r!7292)))) e!3401989)))

(assert (= (and d!1743349 (not res!2344395)) b!5499646))

(assert (= (and b!5499646 c!960510) b!5499650))

(assert (= (and b!5499646 (not c!960510)) b!5499647))

(assert (= (and b!5499650 res!2344396) b!5499649))

(assert (= (and b!5499647 c!960511) b!5499642))

(assert (= (and b!5499647 (not c!960511)) b!5499643))

(assert (= (and b!5499642 res!2344397) b!5499644))

(assert (= (and b!5499643 (not res!2344398)) b!5499645))

(assert (= (and b!5499645 res!2344394) b!5499648))

(assert (= (or b!5499644 b!5499648) bm!405883))

(assert (= (or b!5499642 b!5499645) bm!405882))

(assert (= (or b!5499649 bm!405883) bm!405884))

(declare-fun m!6508080 () Bool)

(assert (=> bm!405882 m!6508080))

(declare-fun m!6508082 () Bool)

(assert (=> b!5499650 m!6508082))

(declare-fun m!6508084 () Bool)

(assert (=> bm!405884 m!6508084))

(assert (=> bm!405871 d!1743349))

(declare-fun d!1743351 () Bool)

(declare-fun c!960512 () Bool)

(assert (=> d!1743351 (= c!960512 (isEmpty!34387 (tail!10875 s!2326)))))

(declare-fun e!3401991 () Bool)

(assert (=> d!1743351 (= (matchZipper!1639 (derivationStepZipper!1582 z!1189 (head!11780 s!2326)) (tail!10875 s!2326)) e!3401991)))

(declare-fun b!5499651 () Bool)

(assert (=> b!5499651 (= e!3401991 (nullableZipper!1518 (derivationStepZipper!1582 z!1189 (head!11780 s!2326))))))

(declare-fun b!5499652 () Bool)

(assert (=> b!5499652 (= e!3401991 (matchZipper!1639 (derivationStepZipper!1582 (derivationStepZipper!1582 z!1189 (head!11780 s!2326)) (head!11780 (tail!10875 s!2326))) (tail!10875 (tail!10875 s!2326))))))

(assert (= (and d!1743351 c!960512) b!5499651))

(assert (= (and d!1743351 (not c!960512)) b!5499652))

(assert (=> d!1743351 m!6507834))

(assert (=> d!1743351 m!6507836))

(assert (=> b!5499651 m!6508046))

(declare-fun m!6508086 () Bool)

(assert (=> b!5499651 m!6508086))

(assert (=> b!5499652 m!6507834))

(declare-fun m!6508088 () Bool)

(assert (=> b!5499652 m!6508088))

(assert (=> b!5499652 m!6508046))

(assert (=> b!5499652 m!6508088))

(declare-fun m!6508090 () Bool)

(assert (=> b!5499652 m!6508090))

(assert (=> b!5499652 m!6507834))

(declare-fun m!6508092 () Bool)

(assert (=> b!5499652 m!6508092))

(assert (=> b!5499652 m!6508090))

(assert (=> b!5499652 m!6508092))

(declare-fun m!6508094 () Bool)

(assert (=> b!5499652 m!6508094))

(assert (=> b!5499556 d!1743351))

(declare-fun bs!1268526 () Bool)

(declare-fun d!1743353 () Bool)

(assert (= bs!1268526 (and d!1743353 b!5498870)))

(declare-fun lambda!294438 () Int)

(assert (=> bs!1268526 (= (= (head!11780 s!2326) (h!69038 s!2326)) (= lambda!294438 lambda!294385))))

(declare-fun bs!1268527 () Bool)

(assert (= bs!1268527 (and d!1743353 d!1743231)))

(assert (=> bs!1268527 (= (= (head!11780 s!2326) (h!69038 s!2326)) (= lambda!294438 lambda!294393))))

(assert (=> d!1743353 true))

(assert (=> d!1743353 (= (derivationStepZipper!1582 z!1189 (head!11780 s!2326)) (flatMap!1090 z!1189 lambda!294438))))

(declare-fun bs!1268528 () Bool)

(assert (= bs!1268528 d!1743353))

(declare-fun m!6508096 () Bool)

(assert (=> bs!1268528 m!6508096))

(assert (=> b!5499556 d!1743353))

(declare-fun d!1743355 () Bool)

(assert (=> d!1743355 (= (head!11780 s!2326) (h!69038 s!2326))))

(assert (=> b!5499556 d!1743355))

(declare-fun d!1743357 () Bool)

(assert (=> d!1743357 (= (tail!10875 s!2326) (t!375949 s!2326))))

(assert (=> b!5499556 d!1743357))

(declare-fun b!5499653 () Bool)

(declare-fun e!3401992 () (InoxSet Context!9710))

(declare-fun e!3401994 () (InoxSet Context!9710))

(assert (=> b!5499653 (= e!3401992 e!3401994)))

(declare-fun c!960513 () Bool)

(assert (=> b!5499653 (= c!960513 ((_ is Cons!62588) (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))))))))

(declare-fun b!5499654 () Bool)

(declare-fun call!405890 () (InoxSet Context!9710))

(assert (=> b!5499654 (= e!3401994 call!405890)))

(declare-fun b!5499655 () Bool)

(assert (=> b!5499655 (= e!3401992 ((_ map or) call!405890 (derivationStepZipperUp!743 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))))))) (h!69038 s!2326))))))

(declare-fun b!5499656 () Bool)

(assert (=> b!5499656 (= e!3401994 ((as const (Array Context!9710 Bool)) false))))

(declare-fun b!5499657 () Bool)

(declare-fun e!3401993 () Bool)

(assert (=> b!5499657 (= e!3401993 (nullable!5513 (h!69036 (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))))))))))

(declare-fun bm!405885 () Bool)

(assert (=> bm!405885 (= call!405890 (derivationStepZipperDown!817 (h!69036 (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))))) (Context!9711 (t!375947 (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))))))) (h!69038 s!2326)))))

(declare-fun d!1743359 () Bool)

(declare-fun c!960514 () Bool)

(assert (=> d!1743359 (= c!960514 e!3401993)))

(declare-fun res!2344399 () Bool)

(assert (=> d!1743359 (=> (not res!2344399) (not e!3401993))))

(assert (=> d!1743359 (= res!2344399 ((_ is Cons!62588) (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))))))))

(assert (=> d!1743359 (= (derivationStepZipperUp!743 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (h!69038 s!2326)) e!3401992)))

(assert (= (and d!1743359 res!2344399) b!5499657))

(assert (= (and d!1743359 c!960514) b!5499655))

(assert (= (and d!1743359 (not c!960514)) b!5499653))

(assert (= (and b!5499653 c!960513) b!5499654))

(assert (= (and b!5499653 (not c!960513)) b!5499656))

(assert (= (or b!5499655 b!5499654) bm!405885))

(declare-fun m!6508098 () Bool)

(assert (=> b!5499655 m!6508098))

(declare-fun m!6508100 () Bool)

(assert (=> b!5499657 m!6508100))

(declare-fun m!6508102 () Bool)

(assert (=> bm!405885 m!6508102))

(assert (=> b!5499570 d!1743359))

(declare-fun bs!1268529 () Bool)

(declare-fun d!1743361 () Bool)

(assert (= bs!1268529 (and d!1743361 d!1743243)))

(declare-fun lambda!294439 () Int)

(assert (=> bs!1268529 (= lambda!294439 lambda!294399)))

(declare-fun bs!1268530 () Bool)

(assert (= bs!1268530 (and d!1743361 d!1743327)))

(assert (=> bs!1268530 (= lambda!294439 lambda!294437)))

(declare-fun bs!1268531 () Bool)

(assert (= bs!1268531 (and d!1743361 d!1743319)))

(assert (=> bs!1268531 (= lambda!294439 lambda!294436)))

(declare-fun bs!1268532 () Bool)

(assert (= bs!1268532 (and d!1743361 d!1743249)))

(assert (=> bs!1268532 (= lambda!294439 lambda!294409)))

(declare-fun bs!1268533 () Bool)

(assert (= bs!1268533 (and d!1743361 d!1743245)))

(assert (=> bs!1268533 (= lambda!294439 lambda!294406)))

(declare-fun b!5499658 () Bool)

(declare-fun e!3401998 () Regex!15471)

(assert (=> b!5499658 (= e!3401998 (h!69036 (t!375947 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun b!5499659 () Bool)

(declare-fun e!3401997 () Bool)

(declare-fun e!3401995 () Bool)

(assert (=> b!5499659 (= e!3401997 e!3401995)))

(declare-fun c!960518 () Bool)

(assert (=> b!5499659 (= c!960518 (isEmpty!34386 (t!375947 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun b!5499660 () Bool)

(declare-fun e!3401996 () Bool)

(assert (=> b!5499660 (= e!3401996 (isEmpty!34386 (t!375947 (t!375947 (exprs!5355 (h!69037 zl!343))))))))

(declare-fun b!5499661 () Bool)

(declare-fun e!3401999 () Bool)

(declare-fun lt!2243158 () Regex!15471)

(assert (=> b!5499661 (= e!3401999 (isConcat!582 lt!2243158))))

(declare-fun b!5499662 () Bool)

(assert (=> b!5499662 (= e!3401995 (isEmptyExpr!1059 lt!2243158))))

(declare-fun b!5499663 () Bool)

(declare-fun e!3402000 () Regex!15471)

(assert (=> b!5499663 (= e!3401998 e!3402000)))

(declare-fun c!960516 () Bool)

(assert (=> b!5499663 (= c!960516 ((_ is Cons!62588) (t!375947 (exprs!5355 (h!69037 zl!343)))))))

(assert (=> d!1743361 e!3401997))

(declare-fun res!2344401 () Bool)

(assert (=> d!1743361 (=> (not res!2344401) (not e!3401997))))

(assert (=> d!1743361 (= res!2344401 (validRegex!7207 lt!2243158))))

(assert (=> d!1743361 (= lt!2243158 e!3401998)))

(declare-fun c!960515 () Bool)

(assert (=> d!1743361 (= c!960515 e!3401996)))

(declare-fun res!2344400 () Bool)

(assert (=> d!1743361 (=> (not res!2344400) (not e!3401996))))

(assert (=> d!1743361 (= res!2344400 ((_ is Cons!62588) (t!375947 (exprs!5355 (h!69037 zl!343)))))))

(assert (=> d!1743361 (forall!14662 (t!375947 (exprs!5355 (h!69037 zl!343))) lambda!294439)))

(assert (=> d!1743361 (= (generalisedConcat!1086 (t!375947 (exprs!5355 (h!69037 zl!343)))) lt!2243158)))

(declare-fun b!5499664 () Bool)

(assert (=> b!5499664 (= e!3402000 EmptyExpr!15471)))

(declare-fun b!5499665 () Bool)

(assert (=> b!5499665 (= e!3402000 (Concat!24316 (h!69036 (t!375947 (exprs!5355 (h!69037 zl!343)))) (generalisedConcat!1086 (t!375947 (t!375947 (exprs!5355 (h!69037 zl!343)))))))))

(declare-fun b!5499666 () Bool)

(assert (=> b!5499666 (= e!3401999 (= lt!2243158 (head!11778 (t!375947 (exprs!5355 (h!69037 zl!343))))))))

(declare-fun b!5499667 () Bool)

(assert (=> b!5499667 (= e!3401995 e!3401999)))

(declare-fun c!960517 () Bool)

(assert (=> b!5499667 (= c!960517 (isEmpty!34386 (tail!10873 (t!375947 (exprs!5355 (h!69037 zl!343))))))))

(assert (= (and d!1743361 res!2344400) b!5499660))

(assert (= (and d!1743361 c!960515) b!5499658))

(assert (= (and d!1743361 (not c!960515)) b!5499663))

(assert (= (and b!5499663 c!960516) b!5499665))

(assert (= (and b!5499663 (not c!960516)) b!5499664))

(assert (= (and d!1743361 res!2344401) b!5499659))

(assert (= (and b!5499659 c!960518) b!5499662))

(assert (= (and b!5499659 (not c!960518)) b!5499667))

(assert (= (and b!5499667 c!960517) b!5499666))

(assert (= (and b!5499667 (not c!960517)) b!5499661))

(declare-fun m!6508104 () Bool)

(assert (=> b!5499660 m!6508104))

(declare-fun m!6508106 () Bool)

(assert (=> b!5499661 m!6508106))

(declare-fun m!6508108 () Bool)

(assert (=> b!5499662 m!6508108))

(declare-fun m!6508110 () Bool)

(assert (=> b!5499667 m!6508110))

(assert (=> b!5499667 m!6508110))

(declare-fun m!6508112 () Bool)

(assert (=> b!5499667 m!6508112))

(declare-fun m!6508114 () Bool)

(assert (=> b!5499666 m!6508114))

(declare-fun m!6508116 () Bool)

(assert (=> d!1743361 m!6508116))

(declare-fun m!6508118 () Bool)

(assert (=> d!1743361 m!6508118))

(assert (=> b!5499659 m!6507994))

(declare-fun m!6508120 () Bool)

(assert (=> b!5499665 m!6508120))

(assert (=> b!5499461 d!1743361))

(declare-fun d!1743363 () Bool)

(assert (=> d!1743363 (= (isEmpty!34387 s!2326) ((_ is Nil!62590) s!2326))))

(assert (=> d!1743335 d!1743363))

(declare-fun d!1743365 () Bool)

(assert (=> d!1743365 (= (isEmpty!34386 (t!375947 (unfocusZipperList!899 zl!343))) ((_ is Nil!62588) (t!375947 (unfocusZipperList!899 zl!343))))))

(assert (=> b!5499009 d!1743365))

(assert (=> b!5499131 d!1743295))

(declare-fun d!1743367 () Bool)

(declare-fun nullableFct!1648 (Regex!15471) Bool)

(assert (=> d!1743367 (= (nullable!5513 (regOne!31454 (regOne!31455 r!7292))) (nullableFct!1648 (regOne!31454 (regOne!31455 r!7292))))))

(declare-fun bs!1268534 () Bool)

(assert (= bs!1268534 d!1743367))

(declare-fun m!6508122 () Bool)

(assert (=> bs!1268534 m!6508122))

(assert (=> b!5499282 d!1743367))

(declare-fun d!1743369 () Bool)

(declare-fun res!2344406 () Bool)

(declare-fun e!3402005 () Bool)

(assert (=> d!1743369 (=> res!2344406 e!3402005)))

(assert (=> d!1743369 (= res!2344406 ((_ is Nil!62589) lt!2243151))))

(assert (=> d!1743369 (= (noDuplicate!1480 lt!2243151) e!3402005)))

(declare-fun b!5499672 () Bool)

(declare-fun e!3402006 () Bool)

(assert (=> b!5499672 (= e!3402005 e!3402006)))

(declare-fun res!2344407 () Bool)

(assert (=> b!5499672 (=> (not res!2344407) (not e!3402006))))

(declare-fun contains!19770 (List!62713 Context!9710) Bool)

(assert (=> b!5499672 (= res!2344407 (not (contains!19770 (t!375948 lt!2243151) (h!69037 lt!2243151))))))

(declare-fun b!5499673 () Bool)

(assert (=> b!5499673 (= e!3402006 (noDuplicate!1480 (t!375948 lt!2243151)))))

(assert (= (and d!1743369 (not res!2344406)) b!5499672))

(assert (= (and b!5499672 res!2344407) b!5499673))

(declare-fun m!6508124 () Bool)

(assert (=> b!5499672 m!6508124))

(declare-fun m!6508126 () Bool)

(assert (=> b!5499673 m!6508126))

(assert (=> d!1743317 d!1743369))

(declare-fun d!1743371 () Bool)

(declare-fun e!3402013 () Bool)

(assert (=> d!1743371 e!3402013))

(declare-fun res!2344412 () Bool)

(assert (=> d!1743371 (=> (not res!2344412) (not e!3402013))))

(declare-fun res!2344413 () List!62713)

(assert (=> d!1743371 (= res!2344412 (noDuplicate!1480 res!2344413))))

(declare-fun e!3402014 () Bool)

(assert (=> d!1743371 e!3402014))

(assert (=> d!1743371 (= (choose!41797 z!1189) res!2344413)))

(declare-fun b!5499681 () Bool)

(declare-fun e!3402015 () Bool)

(declare-fun tp!1513185 () Bool)

(assert (=> b!5499681 (= e!3402015 tp!1513185)))

(declare-fun tp!1513184 () Bool)

(declare-fun b!5499680 () Bool)

(assert (=> b!5499680 (= e!3402014 (and (inv!81924 (h!69037 res!2344413)) e!3402015 tp!1513184))))

(declare-fun b!5499682 () Bool)

(assert (=> b!5499682 (= e!3402013 (= (content!11241 res!2344413) z!1189))))

(assert (= b!5499680 b!5499681))

(assert (= (and d!1743371 ((_ is Cons!62589) res!2344413)) b!5499680))

(assert (= (and d!1743371 res!2344412) b!5499682))

(declare-fun m!6508128 () Bool)

(assert (=> d!1743371 m!6508128))

(declare-fun m!6508130 () Bool)

(assert (=> b!5499680 m!6508130))

(declare-fun m!6508132 () Bool)

(assert (=> b!5499682 m!6508132))

(assert (=> d!1743317 d!1743371))

(declare-fun d!1743373 () Bool)

(assert (=> d!1743373 (= (isEmpty!34387 (tail!10875 s!2326)) ((_ is Nil!62590) (tail!10875 s!2326)))))

(assert (=> b!5499380 d!1743373))

(assert (=> b!5499380 d!1743357))

(declare-fun d!1743375 () Bool)

(assert (=> d!1743375 (= (isEmpty!34386 (tail!10873 (exprs!5355 (h!69037 zl!343)))) ((_ is Nil!62588) (tail!10873 (exprs!5355 (h!69037 zl!343)))))))

(assert (=> b!5499463 d!1743375))

(declare-fun d!1743377 () Bool)

(assert (=> d!1743377 (= (tail!10873 (exprs!5355 (h!69037 zl!343))) (t!375947 (exprs!5355 (h!69037 zl!343))))))

(assert (=> b!5499463 d!1743377))

(assert (=> b!5499133 d!1743309))

(assert (=> b!5499016 d!1743319))

(declare-fun bs!1268535 () Bool)

(declare-fun d!1743379 () Bool)

(assert (= bs!1268535 (and d!1743379 d!1743243)))

(declare-fun lambda!294440 () Int)

(assert (=> bs!1268535 (= lambda!294440 lambda!294399)))

(declare-fun bs!1268536 () Bool)

(assert (= bs!1268536 (and d!1743379 d!1743327)))

(assert (=> bs!1268536 (= lambda!294440 lambda!294437)))

(declare-fun bs!1268537 () Bool)

(assert (= bs!1268537 (and d!1743379 d!1743319)))

(assert (=> bs!1268537 (= lambda!294440 lambda!294436)))

(declare-fun bs!1268538 () Bool)

(assert (= bs!1268538 (and d!1743379 d!1743361)))

(assert (=> bs!1268538 (= lambda!294440 lambda!294439)))

(declare-fun bs!1268539 () Bool)

(assert (= bs!1268539 (and d!1743379 d!1743249)))

(assert (=> bs!1268539 (= lambda!294440 lambda!294409)))

(declare-fun bs!1268540 () Bool)

(assert (= bs!1268540 (and d!1743379 d!1743245)))

(assert (=> bs!1268540 (= lambda!294440 lambda!294406)))

(declare-fun lt!2243159 () List!62712)

(assert (=> d!1743379 (forall!14662 lt!2243159 lambda!294440)))

(declare-fun e!3402016 () List!62712)

(assert (=> d!1743379 (= lt!2243159 e!3402016)))

(declare-fun c!960519 () Bool)

(assert (=> d!1743379 (= c!960519 ((_ is Cons!62589) (t!375948 zl!343)))))

(assert (=> d!1743379 (= (unfocusZipperList!899 (t!375948 zl!343)) lt!2243159)))

(declare-fun b!5499683 () Bool)

(assert (=> b!5499683 (= e!3402016 (Cons!62588 (generalisedConcat!1086 (exprs!5355 (h!69037 (t!375948 zl!343)))) (unfocusZipperList!899 (t!375948 (t!375948 zl!343)))))))

(declare-fun b!5499684 () Bool)

(assert (=> b!5499684 (= e!3402016 Nil!62588)))

(assert (= (and d!1743379 c!960519) b!5499683))

(assert (= (and d!1743379 (not c!960519)) b!5499684))

(declare-fun m!6508134 () Bool)

(assert (=> d!1743379 m!6508134))

(declare-fun m!6508136 () Bool)

(assert (=> b!5499683 m!6508136))

(declare-fun m!6508138 () Bool)

(assert (=> b!5499683 m!6508138))

(assert (=> b!5499016 d!1743379))

(declare-fun e!3402020 () Bool)

(declare-fun b!5499685 () Bool)

(assert (=> b!5499685 (= e!3402020 (nullable!5513 (regOne!31454 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292))))))))))

(declare-fun b!5499686 () Bool)

(declare-fun c!960523 () Bool)

(assert (=> b!5499686 (= c!960523 ((_ is Star!15471) (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))))))

(declare-fun e!3402022 () (InoxSet Context!9710))

(declare-fun e!3402018 () (InoxSet Context!9710))

(assert (=> b!5499686 (= e!3402022 e!3402018)))

(declare-fun b!5499687 () Bool)

(declare-fun e!3402017 () (InoxSet Context!9710))

(declare-fun call!405892 () (InoxSet Context!9710))

(declare-fun call!405893 () (InoxSet Context!9710))

(assert (=> b!5499687 (= e!3402017 ((_ map or) call!405892 call!405893))))

(declare-fun c!960524 () Bool)

(declare-fun bm!405886 () Bool)

(declare-fun call!405895 () List!62712)

(assert (=> bm!405886 (= call!405892 (derivationStepZipperDown!817 (ite c!960524 (regOne!31455 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))) (regOne!31454 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292))))))) (ite c!960524 (ite (or c!960435 c!960433) lt!2243099 (Context!9711 call!405840)) (Context!9711 call!405895)) (h!69038 s!2326)))))

(declare-fun b!5499688 () Bool)

(declare-fun e!3402019 () (InoxSet Context!9710))

(assert (=> b!5499688 (= e!3402019 (store ((as const (Array Context!9710 Bool)) false) (ite (or c!960435 c!960433) lt!2243099 (Context!9711 call!405840)) true))))

(declare-fun bm!405887 () Bool)

(declare-fun call!405891 () List!62712)

(assert (=> bm!405887 (= call!405891 call!405895)))

(declare-fun b!5499689 () Bool)

(assert (=> b!5499689 (= e!3402019 e!3402017)))

(assert (=> b!5499689 (= c!960524 ((_ is Union!15471) (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))))))

(declare-fun bm!405888 () Bool)

(declare-fun c!960520 () Bool)

(declare-fun c!960522 () Bool)

(assert (=> bm!405888 (= call!405893 (derivationStepZipperDown!817 (ite c!960524 (regTwo!31455 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))) (ite c!960522 (regTwo!31454 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))) (ite c!960520 (regOne!31454 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))) (reg!15800 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292))))))))) (ite (or c!960524 c!960522) (ite (or c!960435 c!960433) lt!2243099 (Context!9711 call!405840)) (Context!9711 call!405891)) (h!69038 s!2326)))))

(declare-fun b!5499690 () Bool)

(declare-fun call!405894 () (InoxSet Context!9710))

(assert (=> b!5499690 (= e!3402018 call!405894)))

(declare-fun b!5499691 () Bool)

(assert (=> b!5499691 (= c!960522 e!3402020)))

(declare-fun res!2344414 () Bool)

(assert (=> b!5499691 (=> (not res!2344414) (not e!3402020))))

(assert (=> b!5499691 (= res!2344414 ((_ is Concat!24316) (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))))))

(declare-fun e!3402021 () (InoxSet Context!9710))

(assert (=> b!5499691 (= e!3402017 e!3402021)))

(declare-fun bm!405889 () Bool)

(assert (=> bm!405889 (= call!405895 ($colon$colon!1567 (exprs!5355 (ite (or c!960435 c!960433) lt!2243099 (Context!9711 call!405840))) (ite (or c!960522 c!960520) (regTwo!31454 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))) (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292))))))))))

(declare-fun b!5499692 () Bool)

(declare-fun call!405896 () (InoxSet Context!9710))

(assert (=> b!5499692 (= e!3402021 ((_ map or) call!405892 call!405896))))

(declare-fun b!5499693 () Bool)

(assert (=> b!5499693 (= e!3402021 e!3402022)))

(assert (=> b!5499693 (= c!960520 ((_ is Concat!24316) (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))))))

(declare-fun b!5499694 () Bool)

(assert (=> b!5499694 (= e!3402022 call!405894)))

(declare-fun bm!405891 () Bool)

(assert (=> bm!405891 (= call!405896 call!405893)))

(declare-fun b!5499695 () Bool)

(assert (=> b!5499695 (= e!3402018 ((as const (Array Context!9710 Bool)) false))))

(declare-fun c!960521 () Bool)

(declare-fun d!1743381 () Bool)

(assert (=> d!1743381 (= c!960521 (and ((_ is ElementMatch!15471) (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))) (= (c!960293 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292)))))) (h!69038 s!2326))))))

(assert (=> d!1743381 (= (derivationStepZipperDown!817 (ite c!960435 (regTwo!31455 (regTwo!31455 r!7292)) (ite c!960433 (regTwo!31454 (regTwo!31455 r!7292)) (ite c!960431 (regOne!31454 (regTwo!31455 r!7292)) (reg!15800 (regTwo!31455 r!7292))))) (ite (or c!960435 c!960433) lt!2243099 (Context!9711 call!405840)) (h!69038 s!2326)) e!3402019)))

(declare-fun bm!405890 () Bool)

(assert (=> bm!405890 (= call!405894 call!405896)))

(assert (= (and d!1743381 c!960521) b!5499688))

(assert (= (and d!1743381 (not c!960521)) b!5499689))

(assert (= (and b!5499689 c!960524) b!5499687))

(assert (= (and b!5499689 (not c!960524)) b!5499691))

(assert (= (and b!5499691 res!2344414) b!5499685))

(assert (= (and b!5499691 c!960522) b!5499692))

(assert (= (and b!5499691 (not c!960522)) b!5499693))

(assert (= (and b!5499693 c!960520) b!5499694))

(assert (= (and b!5499693 (not c!960520)) b!5499686))

(assert (= (and b!5499686 c!960523) b!5499690))

(assert (= (and b!5499686 (not c!960523)) b!5499695))

(assert (= (or b!5499694 b!5499690) bm!405887))

(assert (= (or b!5499694 b!5499690) bm!405890))

(assert (= (or b!5499692 bm!405887) bm!405889))

(assert (= (or b!5499692 bm!405890) bm!405891))

(assert (= (or b!5499687 bm!405891) bm!405888))

(assert (= (or b!5499687 b!5499692) bm!405886))

(declare-fun m!6508140 () Bool)

(assert (=> bm!405888 m!6508140))

(declare-fun m!6508142 () Bool)

(assert (=> bm!405886 m!6508142))

(declare-fun m!6508144 () Bool)

(assert (=> b!5499685 m!6508144))

(declare-fun m!6508146 () Bool)

(assert (=> b!5499688 m!6508146))

(declare-fun m!6508148 () Bool)

(assert (=> bm!405889 m!6508148))

(assert (=> bm!405837 d!1743381))

(declare-fun bm!405892 () Bool)

(declare-fun call!405899 () Bool)

(declare-fun c!960526 () Bool)

(assert (=> bm!405892 (= call!405899 (validRegex!7207 (ite c!960526 (regOne!31455 lt!2243116) (regOne!31454 lt!2243116))))))

(declare-fun b!5499696 () Bool)

(declare-fun res!2344418 () Bool)

(declare-fun e!3402024 () Bool)

(assert (=> b!5499696 (=> (not res!2344418) (not e!3402024))))

(assert (=> b!5499696 (= res!2344418 call!405899)))

(declare-fun e!3402025 () Bool)

(assert (=> b!5499696 (= e!3402025 e!3402024)))

(declare-fun b!5499697 () Bool)

(declare-fun res!2344419 () Bool)

(declare-fun e!3402026 () Bool)

(assert (=> b!5499697 (=> res!2344419 e!3402026)))

(assert (=> b!5499697 (= res!2344419 (not ((_ is Concat!24316) lt!2243116)))))

(assert (=> b!5499697 (= e!3402025 e!3402026)))

(declare-fun b!5499698 () Bool)

(declare-fun call!405897 () Bool)

(assert (=> b!5499698 (= e!3402024 call!405897)))

(declare-fun bm!405893 () Bool)

(declare-fun call!405898 () Bool)

(assert (=> bm!405893 (= call!405897 call!405898)))

(declare-fun b!5499699 () Bool)

(declare-fun e!3402029 () Bool)

(assert (=> b!5499699 (= e!3402026 e!3402029)))

(declare-fun res!2344415 () Bool)

(assert (=> b!5499699 (=> (not res!2344415) (not e!3402029))))

(assert (=> b!5499699 (= res!2344415 call!405899)))

(declare-fun b!5499700 () Bool)

(declare-fun e!3402028 () Bool)

(declare-fun e!3402027 () Bool)

(assert (=> b!5499700 (= e!3402028 e!3402027)))

(declare-fun c!960525 () Bool)

(assert (=> b!5499700 (= c!960525 ((_ is Star!15471) lt!2243116))))

(declare-fun b!5499701 () Bool)

(assert (=> b!5499701 (= e!3402027 e!3402025)))

(assert (=> b!5499701 (= c!960526 ((_ is Union!15471) lt!2243116))))

(declare-fun b!5499702 () Bool)

(assert (=> b!5499702 (= e!3402029 call!405897)))

(declare-fun b!5499703 () Bool)

(declare-fun e!3402023 () Bool)

(assert (=> b!5499703 (= e!3402023 call!405898)))

(declare-fun b!5499704 () Bool)

(assert (=> b!5499704 (= e!3402027 e!3402023)))

(declare-fun res!2344417 () Bool)

(assert (=> b!5499704 (= res!2344417 (not (nullable!5513 (reg!15800 lt!2243116))))))

(assert (=> b!5499704 (=> (not res!2344417) (not e!3402023))))

(declare-fun bm!405894 () Bool)

(assert (=> bm!405894 (= call!405898 (validRegex!7207 (ite c!960525 (reg!15800 lt!2243116) (ite c!960526 (regTwo!31455 lt!2243116) (regTwo!31454 lt!2243116)))))))

(declare-fun d!1743383 () Bool)

(declare-fun res!2344416 () Bool)

(assert (=> d!1743383 (=> res!2344416 e!3402028)))

(assert (=> d!1743383 (= res!2344416 ((_ is ElementMatch!15471) lt!2243116))))

(assert (=> d!1743383 (= (validRegex!7207 lt!2243116) e!3402028)))

(assert (= (and d!1743383 (not res!2344416)) b!5499700))

(assert (= (and b!5499700 c!960525) b!5499704))

(assert (= (and b!5499700 (not c!960525)) b!5499701))

(assert (= (and b!5499704 res!2344417) b!5499703))

(assert (= (and b!5499701 c!960526) b!5499696))

(assert (= (and b!5499701 (not c!960526)) b!5499697))

(assert (= (and b!5499696 res!2344418) b!5499698))

(assert (= (and b!5499697 (not res!2344419)) b!5499699))

(assert (= (and b!5499699 res!2344415) b!5499702))

(assert (= (or b!5499698 b!5499702) bm!405893))

(assert (= (or b!5499696 b!5499699) bm!405892))

(assert (= (or b!5499703 bm!405893) bm!405894))

(declare-fun m!6508150 () Bool)

(assert (=> bm!405892 m!6508150))

(declare-fun m!6508152 () Bool)

(assert (=> b!5499704 m!6508152))

(declare-fun m!6508154 () Bool)

(assert (=> bm!405894 m!6508154))

(assert (=> d!1743245 d!1743383))

(declare-fun d!1743385 () Bool)

(declare-fun res!2344420 () Bool)

(declare-fun e!3402030 () Bool)

(assert (=> d!1743385 (=> res!2344420 e!3402030)))

(assert (=> d!1743385 (= res!2344420 ((_ is Nil!62588) (unfocusZipperList!899 zl!343)))))

(assert (=> d!1743385 (= (forall!14662 (unfocusZipperList!899 zl!343) lambda!294406) e!3402030)))

(declare-fun b!5499705 () Bool)

(declare-fun e!3402031 () Bool)

(assert (=> b!5499705 (= e!3402030 e!3402031)))

(declare-fun res!2344421 () Bool)

(assert (=> b!5499705 (=> (not res!2344421) (not e!3402031))))

(assert (=> b!5499705 (= res!2344421 (dynLambda!24465 lambda!294406 (h!69036 (unfocusZipperList!899 zl!343))))))

(declare-fun b!5499706 () Bool)

(assert (=> b!5499706 (= e!3402031 (forall!14662 (t!375947 (unfocusZipperList!899 zl!343)) lambda!294406))))

(assert (= (and d!1743385 (not res!2344420)) b!5499705))

(assert (= (and b!5499705 res!2344421) b!5499706))

(declare-fun b_lambda!208581 () Bool)

(assert (=> (not b_lambda!208581) (not b!5499705)))

(declare-fun m!6508156 () Bool)

(assert (=> b!5499705 m!6508156))

(declare-fun m!6508158 () Bool)

(assert (=> b!5499706 m!6508158))

(assert (=> d!1743245 d!1743385))

(declare-fun b!5499707 () Bool)

(declare-fun e!3402032 () (InoxSet Context!9710))

(declare-fun e!3402034 () (InoxSet Context!9710))

(assert (=> b!5499707 (= e!3402032 e!3402034)))

(declare-fun c!960527 () Bool)

(assert (=> b!5499707 (= c!960527 ((_ is Cons!62588) (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343)))))))))

(declare-fun b!5499708 () Bool)

(declare-fun call!405900 () (InoxSet Context!9710))

(assert (=> b!5499708 (= e!3402034 call!405900)))

(declare-fun b!5499709 () Bool)

(assert (=> b!5499709 (= e!3402032 ((_ map or) call!405900 (derivationStepZipperUp!743 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343))))))) (h!69038 s!2326))))))

(declare-fun b!5499710 () Bool)

(assert (=> b!5499710 (= e!3402034 ((as const (Array Context!9710 Bool)) false))))

(declare-fun b!5499711 () Bool)

(declare-fun e!3402033 () Bool)

(assert (=> b!5499711 (= e!3402033 (nullable!5513 (h!69036 (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343))))))))))

(declare-fun bm!405895 () Bool)

(assert (=> bm!405895 (= call!405900 (derivationStepZipperDown!817 (h!69036 (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343)))))) (Context!9711 (t!375947 (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343))))))) (h!69038 s!2326)))))

(declare-fun d!1743387 () Bool)

(declare-fun c!960528 () Bool)

(assert (=> d!1743387 (= c!960528 e!3402033)))

(declare-fun res!2344422 () Bool)

(assert (=> d!1743387 (=> (not res!2344422) (not e!3402033))))

(assert (=> d!1743387 (= res!2344422 ((_ is Cons!62588) (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343)))))))))

(assert (=> d!1743387 (= (derivationStepZipperUp!743 (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343)))) (h!69038 s!2326)) e!3402032)))

(assert (= (and d!1743387 res!2344422) b!5499711))

(assert (= (and d!1743387 c!960528) b!5499709))

(assert (= (and d!1743387 (not c!960528)) b!5499707))

(assert (= (and b!5499707 c!960527) b!5499708))

(assert (= (and b!5499707 (not c!960527)) b!5499710))

(assert (= (or b!5499709 b!5499708) bm!405895))

(declare-fun m!6508160 () Bool)

(assert (=> b!5499709 m!6508160))

(declare-fun m!6508162 () Bool)

(assert (=> b!5499711 m!6508162))

(declare-fun m!6508164 () Bool)

(assert (=> bm!405895 m!6508164))

(assert (=> b!5498932 d!1743387))

(assert (=> b!5499344 d!1743373))

(assert (=> b!5499344 d!1743357))

(declare-fun d!1743389 () Bool)

(declare-fun choose!41798 (Int) Bool)

(assert (=> d!1743389 (= (Exists!2579 (ite c!960438 lambda!294427 lambda!294428)) (choose!41798 (ite c!960438 lambda!294427 lambda!294428)))))

(declare-fun bs!1268541 () Bool)

(assert (= bs!1268541 d!1743389))

(declare-fun m!6508166 () Bool)

(assert (=> bs!1268541 m!6508166))

(assert (=> bm!405841 d!1743389))

(declare-fun bs!1268542 () Bool)

(declare-fun d!1743391 () Bool)

(assert (= bs!1268542 (and d!1743391 d!1743243)))

(declare-fun lambda!294441 () Int)

(assert (=> bs!1268542 (= lambda!294441 lambda!294399)))

(declare-fun bs!1268543 () Bool)

(assert (= bs!1268543 (and d!1743391 d!1743379)))

(assert (=> bs!1268543 (= lambda!294441 lambda!294440)))

(declare-fun bs!1268544 () Bool)

(assert (= bs!1268544 (and d!1743391 d!1743327)))

(assert (=> bs!1268544 (= lambda!294441 lambda!294437)))

(declare-fun bs!1268545 () Bool)

(assert (= bs!1268545 (and d!1743391 d!1743319)))

(assert (=> bs!1268545 (= lambda!294441 lambda!294436)))

(declare-fun bs!1268546 () Bool)

(assert (= bs!1268546 (and d!1743391 d!1743361)))

(assert (=> bs!1268546 (= lambda!294441 lambda!294439)))

(declare-fun bs!1268547 () Bool)

(assert (= bs!1268547 (and d!1743391 d!1743249)))

(assert (=> bs!1268547 (= lambda!294441 lambda!294409)))

(declare-fun bs!1268548 () Bool)

(assert (= bs!1268548 (and d!1743391 d!1743245)))

(assert (=> bs!1268548 (= lambda!294441 lambda!294406)))

(assert (=> d!1743391 (= (inv!81924 setElem!36437) (forall!14662 (exprs!5355 setElem!36437) lambda!294441))))

(declare-fun bs!1268549 () Bool)

(assert (= bs!1268549 d!1743391))

(declare-fun m!6508168 () Bool)

(assert (=> bs!1268549 m!6508168))

(assert (=> setNonEmpty!36437 d!1743391))

(declare-fun bs!1268550 () Bool)

(declare-fun d!1743393 () Bool)

(assert (= bs!1268550 (and d!1743393 d!1743243)))

(declare-fun lambda!294442 () Int)

(assert (=> bs!1268550 (= lambda!294442 lambda!294399)))

(declare-fun bs!1268551 () Bool)

(assert (= bs!1268551 (and d!1743393 d!1743379)))

(assert (=> bs!1268551 (= lambda!294442 lambda!294440)))

(declare-fun bs!1268552 () Bool)

(assert (= bs!1268552 (and d!1743393 d!1743327)))

(assert (=> bs!1268552 (= lambda!294442 lambda!294437)))

(declare-fun bs!1268553 () Bool)

(assert (= bs!1268553 (and d!1743393 d!1743319)))

(assert (=> bs!1268553 (= lambda!294442 lambda!294436)))

(declare-fun bs!1268554 () Bool)

(assert (= bs!1268554 (and d!1743393 d!1743361)))

(assert (=> bs!1268554 (= lambda!294442 lambda!294439)))

(declare-fun bs!1268555 () Bool)

(assert (= bs!1268555 (and d!1743393 d!1743249)))

(assert (=> bs!1268555 (= lambda!294442 lambda!294409)))

(declare-fun bs!1268556 () Bool)

(assert (= bs!1268556 (and d!1743393 d!1743391)))

(assert (=> bs!1268556 (= lambda!294442 lambda!294441)))

(declare-fun bs!1268557 () Bool)

(assert (= bs!1268557 (and d!1743393 d!1743245)))

(assert (=> bs!1268557 (= lambda!294442 lambda!294406)))

(declare-fun b!5499712 () Bool)

(declare-fun e!3402040 () Bool)

(declare-fun e!3402036 () Bool)

(assert (=> b!5499712 (= e!3402040 e!3402036)))

(declare-fun c!960530 () Bool)

(assert (=> b!5499712 (= c!960530 (isEmpty!34386 (tail!10873 (t!375947 (unfocusZipperList!899 zl!343)))))))

(declare-fun b!5499713 () Bool)

(declare-fun lt!2243160 () Regex!15471)

(assert (=> b!5499713 (= e!3402036 (isUnion!501 lt!2243160))))

(declare-fun b!5499714 () Bool)

(assert (=> b!5499714 (= e!3402036 (= lt!2243160 (head!11778 (t!375947 (unfocusZipperList!899 zl!343)))))))

(declare-fun b!5499715 () Bool)

(declare-fun e!3402037 () Bool)

(assert (=> b!5499715 (= e!3402037 e!3402040)))

(declare-fun c!960531 () Bool)

(assert (=> b!5499715 (= c!960531 (isEmpty!34386 (t!375947 (unfocusZipperList!899 zl!343))))))

(declare-fun b!5499716 () Bool)

(declare-fun e!3402035 () Regex!15471)

(assert (=> b!5499716 (= e!3402035 (h!69036 (t!375947 (unfocusZipperList!899 zl!343))))))

(declare-fun b!5499717 () Bool)

(declare-fun e!3402038 () Regex!15471)

(assert (=> b!5499717 (= e!3402038 (Union!15471 (h!69036 (t!375947 (unfocusZipperList!899 zl!343))) (generalisedUnion!1334 (t!375947 (t!375947 (unfocusZipperList!899 zl!343))))))))

(declare-fun b!5499719 () Bool)

(declare-fun e!3402039 () Bool)

(assert (=> b!5499719 (= e!3402039 (isEmpty!34386 (t!375947 (t!375947 (unfocusZipperList!899 zl!343)))))))

(declare-fun b!5499720 () Bool)

(assert (=> b!5499720 (= e!3402040 (isEmptyLang!1071 lt!2243160))))

(declare-fun b!5499721 () Bool)

(assert (=> b!5499721 (= e!3402035 e!3402038)))

(declare-fun c!960529 () Bool)

(assert (=> b!5499721 (= c!960529 ((_ is Cons!62588) (t!375947 (unfocusZipperList!899 zl!343))))))

(assert (=> d!1743393 e!3402037))

(declare-fun res!2344424 () Bool)

(assert (=> d!1743393 (=> (not res!2344424) (not e!3402037))))

(assert (=> d!1743393 (= res!2344424 (validRegex!7207 lt!2243160))))

(assert (=> d!1743393 (= lt!2243160 e!3402035)))

(declare-fun c!960532 () Bool)

(assert (=> d!1743393 (= c!960532 e!3402039)))

(declare-fun res!2344423 () Bool)

(assert (=> d!1743393 (=> (not res!2344423) (not e!3402039))))

(assert (=> d!1743393 (= res!2344423 ((_ is Cons!62588) (t!375947 (unfocusZipperList!899 zl!343))))))

(assert (=> d!1743393 (forall!14662 (t!375947 (unfocusZipperList!899 zl!343)) lambda!294442)))

(assert (=> d!1743393 (= (generalisedUnion!1334 (t!375947 (unfocusZipperList!899 zl!343))) lt!2243160)))

(declare-fun b!5499718 () Bool)

(assert (=> b!5499718 (= e!3402038 EmptyLang!15471)))

(assert (= (and d!1743393 res!2344423) b!5499719))

(assert (= (and d!1743393 c!960532) b!5499716))

(assert (= (and d!1743393 (not c!960532)) b!5499721))

(assert (= (and b!5499721 c!960529) b!5499717))

(assert (= (and b!5499721 (not c!960529)) b!5499718))

(assert (= (and d!1743393 res!2344424) b!5499715))

(assert (= (and b!5499715 c!960531) b!5499720))

(assert (= (and b!5499715 (not c!960531)) b!5499712))

(assert (= (and b!5499712 c!960530) b!5499714))

(assert (= (and b!5499712 (not c!960530)) b!5499713))

(declare-fun m!6508170 () Bool)

(assert (=> b!5499712 m!6508170))

(assert (=> b!5499712 m!6508170))

(declare-fun m!6508172 () Bool)

(assert (=> b!5499712 m!6508172))

(declare-fun m!6508174 () Bool)

(assert (=> b!5499714 m!6508174))

(declare-fun m!6508176 () Bool)

(assert (=> b!5499713 m!6508176))

(assert (=> b!5499715 m!6507770))

(declare-fun m!6508178 () Bool)

(assert (=> b!5499719 m!6508178))

(declare-fun m!6508180 () Bool)

(assert (=> b!5499717 m!6508180))

(declare-fun m!6508182 () Bool)

(assert (=> b!5499720 m!6508182))

(declare-fun m!6508184 () Bool)

(assert (=> d!1743393 m!6508184))

(declare-fun m!6508186 () Bool)

(assert (=> d!1743393 m!6508186))

(assert (=> b!5499007 d!1743393))

(declare-fun b!5499722 () Bool)

(declare-fun e!3402044 () Bool)

(assert (=> b!5499722 (= e!3402044 (nullable!5513 (regOne!31454 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292)))))))))

(declare-fun b!5499723 () Bool)

(declare-fun c!960536 () Bool)

(assert (=> b!5499723 (= c!960536 ((_ is Star!15471) (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))))))

(declare-fun e!3402046 () (InoxSet Context!9710))

(declare-fun e!3402042 () (InoxSet Context!9710))

(assert (=> b!5499723 (= e!3402046 e!3402042)))

(declare-fun b!5499724 () Bool)

(declare-fun e!3402041 () (InoxSet Context!9710))

(declare-fun call!405902 () (InoxSet Context!9710))

(declare-fun call!405903 () (InoxSet Context!9710))

(assert (=> b!5499724 (= e!3402041 ((_ map or) call!405902 call!405903))))

(declare-fun call!405905 () List!62712)

(declare-fun bm!405896 () Bool)

(declare-fun c!960537 () Bool)

(assert (=> bm!405896 (= call!405902 (derivationStepZipperDown!817 (ite c!960537 (regOne!31455 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))) (regOne!31454 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292)))))) (ite c!960537 (ite (or c!960505 c!960503) lt!2243099 (Context!9711 call!405877)) (Context!9711 call!405905)) (h!69038 s!2326)))))

(declare-fun e!3402043 () (InoxSet Context!9710))

(declare-fun b!5499725 () Bool)

(assert (=> b!5499725 (= e!3402043 (store ((as const (Array Context!9710 Bool)) false) (ite (or c!960505 c!960503) lt!2243099 (Context!9711 call!405877)) true))))

(declare-fun bm!405897 () Bool)

(declare-fun call!405901 () List!62712)

(assert (=> bm!405897 (= call!405901 call!405905)))

(declare-fun b!5499726 () Bool)

(assert (=> b!5499726 (= e!3402043 e!3402041)))

(assert (=> b!5499726 (= c!960537 ((_ is Union!15471) (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))))))

(declare-fun bm!405898 () Bool)

(declare-fun c!960535 () Bool)

(declare-fun c!960533 () Bool)

(assert (=> bm!405898 (= call!405903 (derivationStepZipperDown!817 (ite c!960537 (regTwo!31455 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))) (ite c!960535 (regTwo!31454 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))) (ite c!960533 (regOne!31454 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))) (reg!15800 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292)))))))) (ite (or c!960537 c!960535) (ite (or c!960505 c!960503) lt!2243099 (Context!9711 call!405877)) (Context!9711 call!405901)) (h!69038 s!2326)))))

(declare-fun b!5499727 () Bool)

(declare-fun call!405904 () (InoxSet Context!9710))

(assert (=> b!5499727 (= e!3402042 call!405904)))

(declare-fun b!5499728 () Bool)

(assert (=> b!5499728 (= c!960535 e!3402044)))

(declare-fun res!2344425 () Bool)

(assert (=> b!5499728 (=> (not res!2344425) (not e!3402044))))

(assert (=> b!5499728 (= res!2344425 ((_ is Concat!24316) (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))))))

(declare-fun e!3402045 () (InoxSet Context!9710))

(assert (=> b!5499728 (= e!3402041 e!3402045)))

(declare-fun bm!405899 () Bool)

(assert (=> bm!405899 (= call!405905 ($colon$colon!1567 (exprs!5355 (ite (or c!960505 c!960503) lt!2243099 (Context!9711 call!405877))) (ite (or c!960535 c!960533) (regTwo!31454 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))) (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292)))))))))

(declare-fun b!5499729 () Bool)

(declare-fun call!405906 () (InoxSet Context!9710))

(assert (=> b!5499729 (= e!3402045 ((_ map or) call!405902 call!405906))))

(declare-fun b!5499730 () Bool)

(assert (=> b!5499730 (= e!3402045 e!3402046)))

(assert (=> b!5499730 (= c!960533 ((_ is Concat!24316) (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))))))

(declare-fun b!5499731 () Bool)

(assert (=> b!5499731 (= e!3402046 call!405904)))

(declare-fun bm!405901 () Bool)

(assert (=> bm!405901 (= call!405906 call!405903)))

(declare-fun b!5499732 () Bool)

(assert (=> b!5499732 (= e!3402042 ((as const (Array Context!9710 Bool)) false))))

(declare-fun c!960534 () Bool)

(declare-fun d!1743395 () Bool)

(assert (=> d!1743395 (= c!960534 (and ((_ is ElementMatch!15471) (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))) (= (c!960293 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292))))) (h!69038 s!2326))))))

(assert (=> d!1743395 (= (derivationStepZipperDown!817 (ite c!960505 (regTwo!31455 r!7292) (ite c!960503 (regTwo!31454 r!7292) (ite c!960501 (regOne!31454 r!7292) (reg!15800 r!7292)))) (ite (or c!960505 c!960503) lt!2243099 (Context!9711 call!405877)) (h!69038 s!2326)) e!3402043)))

(declare-fun bm!405900 () Bool)

(assert (=> bm!405900 (= call!405904 call!405906)))

(assert (= (and d!1743395 c!960534) b!5499725))

(assert (= (and d!1743395 (not c!960534)) b!5499726))

(assert (= (and b!5499726 c!960537) b!5499724))

(assert (= (and b!5499726 (not c!960537)) b!5499728))

(assert (= (and b!5499728 res!2344425) b!5499722))

(assert (= (and b!5499728 c!960535) b!5499729))

(assert (= (and b!5499728 (not c!960535)) b!5499730))

(assert (= (and b!5499730 c!960533) b!5499731))

(assert (= (and b!5499730 (not c!960533)) b!5499723))

(assert (= (and b!5499723 c!960536) b!5499727))

(assert (= (and b!5499723 (not c!960536)) b!5499732))

(assert (= (or b!5499731 b!5499727) bm!405897))

(assert (= (or b!5499731 b!5499727) bm!405900))

(assert (= (or b!5499729 bm!405897) bm!405899))

(assert (= (or b!5499729 bm!405900) bm!405901))

(assert (= (or b!5499724 bm!405901) bm!405898))

(assert (= (or b!5499724 b!5499729) bm!405896))

(declare-fun m!6508188 () Bool)

(assert (=> bm!405898 m!6508188))

(declare-fun m!6508190 () Bool)

(assert (=> bm!405896 m!6508190))

(declare-fun m!6508192 () Bool)

(assert (=> b!5499722 m!6508192))

(declare-fun m!6508194 () Bool)

(assert (=> b!5499725 m!6508194))

(declare-fun m!6508196 () Bool)

(assert (=> bm!405899 m!6508196))

(assert (=> bm!405874 d!1743395))

(declare-fun d!1743397 () Bool)

(assert (=> d!1743397 (= (isUnion!501 lt!2243116) ((_ is Union!15471) lt!2243116))))

(assert (=> b!5499003 d!1743397))

(assert (=> b!5499220 d!1743373))

(assert (=> b!5499220 d!1743357))

(declare-fun d!1743399 () Bool)

(assert (=> d!1743399 (= (isConcat!582 lt!2243157) ((_ is Concat!24316) lt!2243157))))

(assert (=> b!5499457 d!1743399))

(declare-fun d!1743401 () Bool)

(assert (=> d!1743401 (= (isEmpty!34386 (unfocusZipperList!899 zl!343)) ((_ is Nil!62588) (unfocusZipperList!899 zl!343)))))

(assert (=> b!5499005 d!1743401))

(assert (=> b!5499217 d!1743355))

(declare-fun d!1743403 () Bool)

(assert (=> d!1743403 (= (nullable!5513 (regOne!31455 r!7292)) (nullableFct!1648 (regOne!31455 r!7292)))))

(declare-fun bs!1268558 () Bool)

(assert (= bs!1268558 d!1743403))

(declare-fun m!6508198 () Bool)

(assert (=> bs!1268558 m!6508198))

(assert (=> b!5499386 d!1743403))

(declare-fun d!1743405 () Bool)

(assert (=> d!1743405 (= (isEmpty!34386 (tail!10873 (unfocusZipperList!899 zl!343))) ((_ is Nil!62588) (tail!10873 (unfocusZipperList!899 zl!343))))))

(assert (=> b!5499002 d!1743405))

(declare-fun d!1743407 () Bool)

(assert (=> d!1743407 (= (tail!10873 (unfocusZipperList!899 zl!343)) (t!375947 (unfocusZipperList!899 zl!343)))))

(assert (=> b!5499002 d!1743407))

(declare-fun bs!1268559 () Bool)

(declare-fun b!5499743 () Bool)

(assert (= bs!1268559 (and b!5499743 b!5499363)))

(declare-fun lambda!294443 () Int)

(assert (=> bs!1268559 (not (= lambda!294443 lambda!294430))))

(declare-fun bs!1268560 () Bool)

(assert (= bs!1268560 (and b!5499743 b!5499304)))

(assert (=> bs!1268560 (not (= lambda!294443 lambda!294428))))

(declare-fun bs!1268561 () Bool)

(assert (= bs!1268561 (and b!5499743 b!5499128)))

(assert (=> bs!1268561 (not (= lambda!294443 lambda!294419))))

(declare-fun bs!1268562 () Bool)

(assert (= bs!1268562 (and b!5499743 b!5499314)))

(assert (=> bs!1268562 (= (and (= (reg!15800 (regTwo!31455 (regTwo!31455 r!7292))) (reg!15800 (regTwo!31455 r!7292))) (= (regTwo!31455 (regTwo!31455 r!7292)) (regTwo!31455 r!7292))) (= lambda!294443 lambda!294427))))

(declare-fun bs!1268563 () Bool)

(assert (= bs!1268563 (and b!5499743 b!5499138)))

(assert (=> bs!1268563 (= (and (= (reg!15800 (regTwo!31455 (regTwo!31455 r!7292))) (reg!15800 r!7292)) (= (regTwo!31455 (regTwo!31455 r!7292)) r!7292)) (= lambda!294443 lambda!294418))))

(declare-fun bs!1268564 () Bool)

(assert (= bs!1268564 (and b!5499743 b!5499373)))

(assert (=> bs!1268564 (= (and (= (reg!15800 (regTwo!31455 (regTwo!31455 r!7292))) (reg!15800 (regOne!31455 r!7292))) (= (regTwo!31455 (regTwo!31455 r!7292)) (regOne!31455 r!7292))) (= lambda!294443 lambda!294429))))

(assert (=> b!5499743 true))

(assert (=> b!5499743 true))

(declare-fun bs!1268565 () Bool)

(declare-fun b!5499733 () Bool)

(assert (= bs!1268565 (and b!5499733 b!5499743)))

(declare-fun lambda!294444 () Int)

(assert (=> bs!1268565 (not (= lambda!294444 lambda!294443))))

(declare-fun bs!1268566 () Bool)

(assert (= bs!1268566 (and b!5499733 b!5499363)))

(assert (=> bs!1268566 (= (and (= (regOne!31454 (regTwo!31455 (regTwo!31455 r!7292))) (regOne!31454 (regOne!31455 r!7292))) (= (regTwo!31454 (regTwo!31455 (regTwo!31455 r!7292))) (regTwo!31454 (regOne!31455 r!7292)))) (= lambda!294444 lambda!294430))))

(declare-fun bs!1268567 () Bool)

(assert (= bs!1268567 (and b!5499733 b!5499304)))

(assert (=> bs!1268567 (= (and (= (regOne!31454 (regTwo!31455 (regTwo!31455 r!7292))) (regOne!31454 (regTwo!31455 r!7292))) (= (regTwo!31454 (regTwo!31455 (regTwo!31455 r!7292))) (regTwo!31454 (regTwo!31455 r!7292)))) (= lambda!294444 lambda!294428))))

(declare-fun bs!1268568 () Bool)

(assert (= bs!1268568 (and b!5499733 b!5499128)))

(assert (=> bs!1268568 (= (and (= (regOne!31454 (regTwo!31455 (regTwo!31455 r!7292))) (regOne!31454 r!7292)) (= (regTwo!31454 (regTwo!31455 (regTwo!31455 r!7292))) (regTwo!31454 r!7292))) (= lambda!294444 lambda!294419))))

(declare-fun bs!1268569 () Bool)

(assert (= bs!1268569 (and b!5499733 b!5499314)))

(assert (=> bs!1268569 (not (= lambda!294444 lambda!294427))))

(declare-fun bs!1268570 () Bool)

(assert (= bs!1268570 (and b!5499733 b!5499138)))

(assert (=> bs!1268570 (not (= lambda!294444 lambda!294418))))

(declare-fun bs!1268571 () Bool)

(assert (= bs!1268571 (and b!5499733 b!5499373)))

(assert (=> bs!1268571 (not (= lambda!294444 lambda!294429))))

(assert (=> b!5499733 true))

(assert (=> b!5499733 true))

(declare-fun e!3402053 () Bool)

(declare-fun call!405907 () Bool)

(assert (=> b!5499733 (= e!3402053 call!405907)))

(declare-fun b!5499735 () Bool)

(declare-fun e!3402051 () Bool)

(assert (=> b!5499735 (= e!3402051 e!3402053)))

(declare-fun c!960540 () Bool)

(assert (=> b!5499735 (= c!960540 ((_ is Star!15471) (regTwo!31455 (regTwo!31455 r!7292))))))

(declare-fun d!1743409 () Bool)

(declare-fun c!960541 () Bool)

(assert (=> d!1743409 (= c!960541 ((_ is EmptyExpr!15471) (regTwo!31455 (regTwo!31455 r!7292))))))

(declare-fun e!3402048 () Bool)

(assert (=> d!1743409 (= (matchRSpec!2574 (regTwo!31455 (regTwo!31455 r!7292)) s!2326) e!3402048)))

(declare-fun b!5499734 () Bool)

(declare-fun c!960539 () Bool)

(assert (=> b!5499734 (= c!960539 ((_ is ElementMatch!15471) (regTwo!31455 (regTwo!31455 r!7292))))))

(declare-fun e!3402052 () Bool)

(declare-fun e!3402050 () Bool)

(assert (=> b!5499734 (= e!3402052 e!3402050)))

(declare-fun b!5499736 () Bool)

(declare-fun e!3402047 () Bool)

(assert (=> b!5499736 (= e!3402047 (matchRSpec!2574 (regTwo!31455 (regTwo!31455 (regTwo!31455 r!7292))) s!2326))))

(declare-fun b!5499737 () Bool)

(assert (=> b!5499737 (= e!3402050 (= s!2326 (Cons!62590 (c!960293 (regTwo!31455 (regTwo!31455 r!7292))) Nil!62590)))))

(declare-fun b!5499738 () Bool)

(assert (=> b!5499738 (= e!3402051 e!3402047)))

(declare-fun res!2344427 () Bool)

(assert (=> b!5499738 (= res!2344427 (matchRSpec!2574 (regOne!31455 (regTwo!31455 (regTwo!31455 r!7292))) s!2326))))

(assert (=> b!5499738 (=> res!2344427 e!3402047)))

(declare-fun b!5499739 () Bool)

(declare-fun call!405908 () Bool)

(assert (=> b!5499739 (= e!3402048 call!405908)))

(declare-fun b!5499740 () Bool)

(declare-fun res!2344426 () Bool)

(declare-fun e!3402049 () Bool)

(assert (=> b!5499740 (=> res!2344426 e!3402049)))

(assert (=> b!5499740 (= res!2344426 call!405908)))

(assert (=> b!5499740 (= e!3402053 e!3402049)))

(declare-fun bm!405902 () Bool)

(assert (=> bm!405902 (= call!405907 (Exists!2579 (ite c!960540 lambda!294443 lambda!294444)))))

(declare-fun b!5499741 () Bool)

(declare-fun c!960538 () Bool)

(assert (=> b!5499741 (= c!960538 ((_ is Union!15471) (regTwo!31455 (regTwo!31455 r!7292))))))

(assert (=> b!5499741 (= e!3402050 e!3402051)))

(declare-fun b!5499742 () Bool)

(assert (=> b!5499742 (= e!3402048 e!3402052)))

(declare-fun res!2344428 () Bool)

(assert (=> b!5499742 (= res!2344428 (not ((_ is EmptyLang!15471) (regTwo!31455 (regTwo!31455 r!7292)))))))

(assert (=> b!5499742 (=> (not res!2344428) (not e!3402052))))

(declare-fun bm!405903 () Bool)

(assert (=> bm!405903 (= call!405908 (isEmpty!34387 s!2326))))

(assert (=> b!5499743 (= e!3402049 call!405907)))

(assert (= (and d!1743409 c!960541) b!5499739))

(assert (= (and d!1743409 (not c!960541)) b!5499742))

(assert (= (and b!5499742 res!2344428) b!5499734))

(assert (= (and b!5499734 c!960539) b!5499737))

(assert (= (and b!5499734 (not c!960539)) b!5499741))

(assert (= (and b!5499741 c!960538) b!5499738))

(assert (= (and b!5499741 (not c!960538)) b!5499735))

(assert (= (and b!5499738 (not res!2344427)) b!5499736))

(assert (= (and b!5499735 c!960540) b!5499740))

(assert (= (and b!5499735 (not c!960540)) b!5499733))

(assert (= (and b!5499740 (not res!2344426)) b!5499743))

(assert (= (or b!5499743 b!5499733) bm!405902))

(assert (= (or b!5499739 b!5499740) bm!405903))

(declare-fun m!6508200 () Bool)

(assert (=> b!5499736 m!6508200))

(declare-fun m!6508202 () Bool)

(assert (=> b!5499738 m!6508202))

(declare-fun m!6508204 () Bool)

(assert (=> bm!405902 m!6508204))

(assert (=> bm!405903 m!6507820))

(assert (=> b!5499307 d!1743409))

(declare-fun d!1743411 () Bool)

(assert (=> d!1743411 (= (nullable!5513 r!7292) (nullableFct!1648 r!7292))))

(declare-fun bs!1268572 () Bool)

(assert (= bs!1268572 d!1743411))

(declare-fun m!6508206 () Bool)

(assert (=> bs!1268572 m!6508206))

(assert (=> b!5499219 d!1743411))

(assert (=> d!1743265 d!1743363))

(assert (=> d!1743265 d!1743329))

(declare-fun d!1743413 () Bool)

(assert (=> d!1743413 (= (isEmpty!34387 (t!375949 s!2326)) ((_ is Nil!62590) (t!375949 s!2326)))))

(assert (=> d!1743333 d!1743413))

(declare-fun d!1743415 () Bool)

(assert (=> d!1743415 (= ($colon$colon!1567 (exprs!5355 lt!2243099) (ite (or c!960428 c!960426) (regTwo!31454 (regOne!31455 r!7292)) (regOne!31455 r!7292))) (Cons!62588 (ite (or c!960428 c!960426) (regTwo!31454 (regOne!31455 r!7292)) (regOne!31455 r!7292)) (exprs!5355 lt!2243099)))))

(assert (=> bm!405832 d!1743415))

(declare-fun bm!405904 () Bool)

(declare-fun call!405911 () Bool)

(declare-fun c!960543 () Bool)

(assert (=> bm!405904 (= call!405911 (validRegex!7207 (ite c!960543 (regOne!31455 lt!2243148) (regOne!31454 lt!2243148))))))

(declare-fun b!5499744 () Bool)

(declare-fun res!2344432 () Bool)

(declare-fun e!3402055 () Bool)

(assert (=> b!5499744 (=> (not res!2344432) (not e!3402055))))

(assert (=> b!5499744 (= res!2344432 call!405911)))

(declare-fun e!3402056 () Bool)

(assert (=> b!5499744 (= e!3402056 e!3402055)))

(declare-fun b!5499745 () Bool)

(declare-fun res!2344433 () Bool)

(declare-fun e!3402057 () Bool)

(assert (=> b!5499745 (=> res!2344433 e!3402057)))

(assert (=> b!5499745 (= res!2344433 (not ((_ is Concat!24316) lt!2243148)))))

(assert (=> b!5499745 (= e!3402056 e!3402057)))

(declare-fun b!5499746 () Bool)

(declare-fun call!405909 () Bool)

(assert (=> b!5499746 (= e!3402055 call!405909)))

(declare-fun bm!405905 () Bool)

(declare-fun call!405910 () Bool)

(assert (=> bm!405905 (= call!405909 call!405910)))

(declare-fun b!5499747 () Bool)

(declare-fun e!3402060 () Bool)

(assert (=> b!5499747 (= e!3402057 e!3402060)))

(declare-fun res!2344429 () Bool)

(assert (=> b!5499747 (=> (not res!2344429) (not e!3402060))))

(assert (=> b!5499747 (= res!2344429 call!405911)))

(declare-fun b!5499748 () Bool)

(declare-fun e!3402059 () Bool)

(declare-fun e!3402058 () Bool)

(assert (=> b!5499748 (= e!3402059 e!3402058)))

(declare-fun c!960542 () Bool)

(assert (=> b!5499748 (= c!960542 ((_ is Star!15471) lt!2243148))))

(declare-fun b!5499749 () Bool)

(assert (=> b!5499749 (= e!3402058 e!3402056)))

(assert (=> b!5499749 (= c!960543 ((_ is Union!15471) lt!2243148))))

(declare-fun b!5499750 () Bool)

(assert (=> b!5499750 (= e!3402060 call!405909)))

(declare-fun b!5499751 () Bool)

(declare-fun e!3402054 () Bool)

(assert (=> b!5499751 (= e!3402054 call!405910)))

(declare-fun b!5499752 () Bool)

(assert (=> b!5499752 (= e!3402058 e!3402054)))

(declare-fun res!2344431 () Bool)

(assert (=> b!5499752 (= res!2344431 (not (nullable!5513 (reg!15800 lt!2243148))))))

(assert (=> b!5499752 (=> (not res!2344431) (not e!3402054))))

(declare-fun bm!405906 () Bool)

(assert (=> bm!405906 (= call!405910 (validRegex!7207 (ite c!960542 (reg!15800 lt!2243148) (ite c!960543 (regTwo!31455 lt!2243148) (regTwo!31454 lt!2243148)))))))

(declare-fun d!1743417 () Bool)

(declare-fun res!2344430 () Bool)

(assert (=> d!1743417 (=> res!2344430 e!3402059)))

(assert (=> d!1743417 (= res!2344430 ((_ is ElementMatch!15471) lt!2243148))))

(assert (=> d!1743417 (= (validRegex!7207 lt!2243148) e!3402059)))

(assert (= (and d!1743417 (not res!2344430)) b!5499748))

(assert (= (and b!5499748 c!960542) b!5499752))

(assert (= (and b!5499748 (not c!960542)) b!5499749))

(assert (= (and b!5499752 res!2344431) b!5499751))

(assert (= (and b!5499749 c!960543) b!5499744))

(assert (= (and b!5499749 (not c!960543)) b!5499745))

(assert (= (and b!5499744 res!2344432) b!5499746))

(assert (= (and b!5499745 (not res!2344433)) b!5499747))

(assert (= (and b!5499747 res!2344429) b!5499750))

(assert (= (or b!5499746 b!5499750) bm!405905))

(assert (= (or b!5499744 b!5499747) bm!405904))

(assert (= (or b!5499751 bm!405905) bm!405906))

(declare-fun m!6508208 () Bool)

(assert (=> bm!405904 m!6508208))

(declare-fun m!6508210 () Bool)

(assert (=> b!5499752 m!6508210))

(declare-fun m!6508212 () Bool)

(assert (=> bm!405906 m!6508212))

(assert (=> d!1743315 d!1743417))

(assert (=> d!1743315 d!1743245))

(assert (=> d!1743315 d!1743249))

(declare-fun d!1743419 () Bool)

(assert (=> d!1743419 (= (nullable!5513 (regOne!31454 (regTwo!31455 r!7292))) (nullableFct!1648 (regOne!31454 (regTwo!31455 r!7292))))))

(declare-fun bs!1268573 () Bool)

(assert (= bs!1268573 d!1743419))

(declare-fun m!6508214 () Bool)

(assert (=> bs!1268573 m!6508214))

(assert (=> b!5499293 d!1743419))

(assert (=> b!5499337 d!1743373))

(assert (=> b!5499337 d!1743357))

(declare-fun bm!405907 () Bool)

(declare-fun c!960545 () Bool)

(declare-fun call!405914 () Bool)

(assert (=> bm!405907 (= call!405914 (validRegex!7207 (ite c!960545 (regOne!31455 (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292))) (regOne!31454 (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292))))))))

(declare-fun b!5499753 () Bool)

(declare-fun res!2344437 () Bool)

(declare-fun e!3402062 () Bool)

(assert (=> b!5499753 (=> (not res!2344437) (not e!3402062))))

(assert (=> b!5499753 (= res!2344437 call!405914)))

(declare-fun e!3402063 () Bool)

(assert (=> b!5499753 (= e!3402063 e!3402062)))

(declare-fun b!5499754 () Bool)

(declare-fun res!2344438 () Bool)

(declare-fun e!3402064 () Bool)

(assert (=> b!5499754 (=> res!2344438 e!3402064)))

(assert (=> b!5499754 (= res!2344438 (not ((_ is Concat!24316) (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292)))))))

(assert (=> b!5499754 (= e!3402063 e!3402064)))

(declare-fun b!5499755 () Bool)

(declare-fun call!405912 () Bool)

(assert (=> b!5499755 (= e!3402062 call!405912)))

(declare-fun bm!405908 () Bool)

(declare-fun call!405913 () Bool)

(assert (=> bm!405908 (= call!405912 call!405913)))

(declare-fun b!5499756 () Bool)

(declare-fun e!3402067 () Bool)

(assert (=> b!5499756 (= e!3402064 e!3402067)))

(declare-fun res!2344434 () Bool)

(assert (=> b!5499756 (=> (not res!2344434) (not e!3402067))))

(assert (=> b!5499756 (= res!2344434 call!405914)))

(declare-fun b!5499757 () Bool)

(declare-fun e!3402066 () Bool)

(declare-fun e!3402065 () Bool)

(assert (=> b!5499757 (= e!3402066 e!3402065)))

(declare-fun c!960544 () Bool)

(assert (=> b!5499757 (= c!960544 ((_ is Star!15471) (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292))))))

(declare-fun b!5499758 () Bool)

(assert (=> b!5499758 (= e!3402065 e!3402063)))

(assert (=> b!5499758 (= c!960545 ((_ is Union!15471) (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292))))))

(declare-fun b!5499759 () Bool)

(assert (=> b!5499759 (= e!3402067 call!405912)))

(declare-fun b!5499760 () Bool)

(declare-fun e!3402061 () Bool)

(assert (=> b!5499760 (= e!3402061 call!405913)))

(declare-fun b!5499761 () Bool)

(assert (=> b!5499761 (= e!3402065 e!3402061)))

(declare-fun res!2344436 () Bool)

(assert (=> b!5499761 (= res!2344436 (not (nullable!5513 (reg!15800 (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292))))))))

(assert (=> b!5499761 (=> (not res!2344436) (not e!3402061))))

(declare-fun bm!405909 () Bool)

(assert (=> bm!405909 (= call!405913 (validRegex!7207 (ite c!960544 (reg!15800 (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292))) (ite c!960545 (regTwo!31455 (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292))) (regTwo!31454 (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292)))))))))

(declare-fun d!1743421 () Bool)

(declare-fun res!2344435 () Bool)

(assert (=> d!1743421 (=> res!2344435 e!3402066)))

(assert (=> d!1743421 (= res!2344435 ((_ is ElementMatch!15471) (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292))))))

(assert (=> d!1743421 (= (validRegex!7207 (ite c!960496 (regOne!31455 r!7292) (regOne!31454 r!7292))) e!3402066)))

(assert (= (and d!1743421 (not res!2344435)) b!5499757))

(assert (= (and b!5499757 c!960544) b!5499761))

(assert (= (and b!5499757 (not c!960544)) b!5499758))

(assert (= (and b!5499761 res!2344436) b!5499760))

(assert (= (and b!5499758 c!960545) b!5499753))

(assert (= (and b!5499758 (not c!960545)) b!5499754))

(assert (= (and b!5499753 res!2344437) b!5499755))

(assert (= (and b!5499754 (not res!2344438)) b!5499756))

(assert (= (and b!5499756 res!2344434) b!5499759))

(assert (= (or b!5499755 b!5499759) bm!405908))

(assert (= (or b!5499753 b!5499756) bm!405907))

(assert (= (or b!5499760 bm!405908) bm!405909))

(declare-fun m!6508216 () Bool)

(assert (=> bm!405907 m!6508216))

(declare-fun m!6508218 () Bool)

(assert (=> b!5499761 m!6508218))

(declare-fun m!6508220 () Bool)

(assert (=> bm!405909 m!6508220))

(assert (=> bm!405869 d!1743421))

(assert (=> bm!405785 d!1743363))

(assert (=> b!5499213 d!1743373))

(assert (=> b!5499213 d!1743357))

(declare-fun d!1743423 () Bool)

(assert (=> d!1743423 (= (nullable!5513 (regOne!31454 r!7292)) (nullableFct!1648 (regOne!31454 r!7292)))))

(declare-fun bs!1268574 () Bool)

(assert (= bs!1268574 d!1743423))

(declare-fun m!6508222 () Bool)

(assert (=> bs!1268574 m!6508222))

(assert (=> b!5499557 d!1743423))

(assert (=> b!5499384 d!1743355))

(declare-fun d!1743425 () Bool)

(declare-fun lambda!294447 () Int)

(declare-fun exists!2128 ((InoxSet Context!9710) Int) Bool)

(assert (=> d!1743425 (= (nullableZipper!1518 lt!2243091) (exists!2128 lt!2243091 lambda!294447))))

(declare-fun bs!1268575 () Bool)

(assert (= bs!1268575 d!1743425))

(declare-fun m!6508224 () Bool)

(assert (=> bs!1268575 m!6508224))

(assert (=> b!5499553 d!1743425))

(declare-fun d!1743427 () Bool)

(assert (=> d!1743427 true))

(declare-fun setRes!36440 () Bool)

(assert (=> d!1743427 setRes!36440))

(declare-fun condSetEmpty!36440 () Bool)

(declare-fun res!2344441 () (InoxSet Context!9710))

(assert (=> d!1743427 (= condSetEmpty!36440 (= res!2344441 ((as const (Array Context!9710 Bool)) false)))))

(assert (=> d!1743427 (= (choose!41790 z!1189 lambda!294385) res!2344441)))

(declare-fun setIsEmpty!36440 () Bool)

(assert (=> setIsEmpty!36440 setRes!36440))

(declare-fun e!3402070 () Bool)

(declare-fun setElem!36440 () Context!9710)

(declare-fun setNonEmpty!36440 () Bool)

(declare-fun tp!1513190 () Bool)

(assert (=> setNonEmpty!36440 (= setRes!36440 (and tp!1513190 (inv!81924 setElem!36440) e!3402070))))

(declare-fun setRest!36440 () (InoxSet Context!9710))

(assert (=> setNonEmpty!36440 (= res!2344441 ((_ map or) (store ((as const (Array Context!9710 Bool)) false) setElem!36440 true) setRest!36440))))

(declare-fun b!5499764 () Bool)

(declare-fun tp!1513191 () Bool)

(assert (=> b!5499764 (= e!3402070 tp!1513191)))

(assert (= (and d!1743427 condSetEmpty!36440) setIsEmpty!36440))

(assert (= (and d!1743427 (not condSetEmpty!36440)) setNonEmpty!36440))

(assert (= setNonEmpty!36440 b!5499764))

(declare-fun m!6508226 () Bool)

(assert (=> setNonEmpty!36440 m!6508226))

(assert (=> d!1743233 d!1743427))

(declare-fun d!1743429 () Bool)

(assert (=> d!1743429 (= (Exists!2579 (ite c!960456 lambda!294429 lambda!294430)) (choose!41798 (ite c!960456 lambda!294429 lambda!294430)))))

(declare-fun bs!1268576 () Bool)

(assert (= bs!1268576 d!1743429))

(declare-fun m!6508228 () Bool)

(assert (=> bs!1268576 m!6508228))

(assert (=> bm!405853 d!1743429))

(assert (=> b!5499207 d!1743355))

(declare-fun bs!1268577 () Bool)

(declare-fun d!1743431 () Bool)

(assert (= bs!1268577 (and d!1743431 d!1743425)))

(declare-fun lambda!294448 () Int)

(assert (=> bs!1268577 (= lambda!294448 lambda!294447)))

(assert (=> d!1743431 (= (nullableZipper!1518 z!1189) (exists!2128 z!1189 lambda!294448))))

(declare-fun bs!1268578 () Bool)

(assert (= bs!1268578 d!1743431))

(declare-fun m!6508230 () Bool)

(assert (=> bs!1268578 m!6508230))

(assert (=> b!5499555 d!1743431))

(declare-fun b!5499765 () Bool)

(declare-fun e!3402074 () Bool)

(assert (=> b!5499765 (= e!3402074 (nullable!5513 (regOne!31454 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292))))))))

(declare-fun b!5499766 () Bool)

(declare-fun c!960551 () Bool)

(assert (=> b!5499766 (= c!960551 ((_ is Star!15471) (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))))))

(declare-fun e!3402076 () (InoxSet Context!9710))

(declare-fun e!3402072 () (InoxSet Context!9710))

(assert (=> b!5499766 (= e!3402076 e!3402072)))

(declare-fun b!5499767 () Bool)

(declare-fun e!3402071 () (InoxSet Context!9710))

(declare-fun call!405916 () (InoxSet Context!9710))

(declare-fun call!405917 () (InoxSet Context!9710))

(assert (=> b!5499767 (= e!3402071 ((_ map or) call!405916 call!405917))))

(declare-fun call!405919 () List!62712)

(declare-fun bm!405910 () Bool)

(declare-fun c!960552 () Bool)

(assert (=> bm!405910 (= call!405916 (derivationStepZipperDown!817 (ite c!960552 (regOne!31455 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))) (regOne!31454 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292))))) (ite c!960552 (ite c!960430 lt!2243099 (Context!9711 call!405838)) (Context!9711 call!405919)) (h!69038 s!2326)))))

(declare-fun b!5499768 () Bool)

(declare-fun e!3402073 () (InoxSet Context!9710))

(assert (=> b!5499768 (= e!3402073 (store ((as const (Array Context!9710 Bool)) false) (ite c!960430 lt!2243099 (Context!9711 call!405838)) true))))

(declare-fun bm!405911 () Bool)

(declare-fun call!405915 () List!62712)

(assert (=> bm!405911 (= call!405915 call!405919)))

(declare-fun b!5499769 () Bool)

(assert (=> b!5499769 (= e!3402073 e!3402071)))

(assert (=> b!5499769 (= c!960552 ((_ is Union!15471) (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))))))

(declare-fun bm!405912 () Bool)

(declare-fun c!960550 () Bool)

(declare-fun c!960548 () Bool)

(assert (=> bm!405912 (= call!405917 (derivationStepZipperDown!817 (ite c!960552 (regTwo!31455 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))) (ite c!960550 (regTwo!31454 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))) (ite c!960548 (regOne!31454 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))) (reg!15800 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292))))))) (ite (or c!960552 c!960550) (ite c!960430 lt!2243099 (Context!9711 call!405838)) (Context!9711 call!405915)) (h!69038 s!2326)))))

(declare-fun b!5499770 () Bool)

(declare-fun call!405918 () (InoxSet Context!9710))

(assert (=> b!5499770 (= e!3402072 call!405918)))

(declare-fun b!5499771 () Bool)

(assert (=> b!5499771 (= c!960550 e!3402074)))

(declare-fun res!2344442 () Bool)

(assert (=> b!5499771 (=> (not res!2344442) (not e!3402074))))

(assert (=> b!5499771 (= res!2344442 ((_ is Concat!24316) (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))))))

(declare-fun e!3402075 () (InoxSet Context!9710))

(assert (=> b!5499771 (= e!3402071 e!3402075)))

(declare-fun bm!405913 () Bool)

(assert (=> bm!405913 (= call!405919 ($colon$colon!1567 (exprs!5355 (ite c!960430 lt!2243099 (Context!9711 call!405838))) (ite (or c!960550 c!960548) (regTwo!31454 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))) (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292))))))))

(declare-fun b!5499772 () Bool)

(declare-fun call!405920 () (InoxSet Context!9710))

(assert (=> b!5499772 (= e!3402075 ((_ map or) call!405916 call!405920))))

(declare-fun b!5499773 () Bool)

(assert (=> b!5499773 (= e!3402075 e!3402076)))

(assert (=> b!5499773 (= c!960548 ((_ is Concat!24316) (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))))))

(declare-fun b!5499774 () Bool)

(assert (=> b!5499774 (= e!3402076 call!405918)))

(declare-fun bm!405915 () Bool)

(assert (=> bm!405915 (= call!405920 call!405917)))

(declare-fun b!5499775 () Bool)

(assert (=> b!5499775 (= e!3402072 ((as const (Array Context!9710 Bool)) false))))

(declare-fun c!960549 () Bool)

(declare-fun d!1743433 () Bool)

(assert (=> d!1743433 (= c!960549 (and ((_ is ElementMatch!15471) (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))) (= (c!960293 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))) (h!69038 s!2326))))))

(assert (=> d!1743433 (= (derivationStepZipperDown!817 (ite c!960430 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292))) (ite c!960430 lt!2243099 (Context!9711 call!405838)) (h!69038 s!2326)) e!3402073)))

(declare-fun bm!405914 () Bool)

(assert (=> bm!405914 (= call!405918 call!405920)))

(assert (= (and d!1743433 c!960549) b!5499768))

(assert (= (and d!1743433 (not c!960549)) b!5499769))

(assert (= (and b!5499769 c!960552) b!5499767))

(assert (= (and b!5499769 (not c!960552)) b!5499771))

(assert (= (and b!5499771 res!2344442) b!5499765))

(assert (= (and b!5499771 c!960550) b!5499772))

(assert (= (and b!5499771 (not c!960550)) b!5499773))

(assert (= (and b!5499773 c!960548) b!5499774))

(assert (= (and b!5499773 (not c!960548)) b!5499766))

(assert (= (and b!5499766 c!960551) b!5499770))

(assert (= (and b!5499766 (not c!960551)) b!5499775))

(assert (= (or b!5499774 b!5499770) bm!405911))

(assert (= (or b!5499774 b!5499770) bm!405914))

(assert (= (or b!5499772 bm!405911) bm!405913))

(assert (= (or b!5499772 bm!405914) bm!405915))

(assert (= (or b!5499767 bm!405915) bm!405912))

(assert (= (or b!5499767 b!5499772) bm!405910))

(declare-fun m!6508232 () Bool)

(assert (=> bm!405912 m!6508232))

(declare-fun m!6508234 () Bool)

(assert (=> bm!405910 m!6508234))

(declare-fun m!6508236 () Bool)

(assert (=> b!5499765 m!6508236))

(declare-fun m!6508238 () Bool)

(assert (=> b!5499768 m!6508238))

(declare-fun m!6508240 () Bool)

(assert (=> bm!405913 m!6508240))

(assert (=> bm!405829 d!1743433))

(declare-fun bs!1268579 () Bool)

(declare-fun d!1743435 () Bool)

(assert (= bs!1268579 (and d!1743435 d!1743243)))

(declare-fun lambda!294449 () Int)

(assert (=> bs!1268579 (= lambda!294449 lambda!294399)))

(declare-fun bs!1268580 () Bool)

(assert (= bs!1268580 (and d!1743435 d!1743379)))

(assert (=> bs!1268580 (= lambda!294449 lambda!294440)))

(declare-fun bs!1268581 () Bool)

(assert (= bs!1268581 (and d!1743435 d!1743327)))

(assert (=> bs!1268581 (= lambda!294449 lambda!294437)))

(declare-fun bs!1268582 () Bool)

(assert (= bs!1268582 (and d!1743435 d!1743319)))

(assert (=> bs!1268582 (= lambda!294449 lambda!294436)))

(declare-fun bs!1268583 () Bool)

(assert (= bs!1268583 (and d!1743435 d!1743361)))

(assert (=> bs!1268583 (= lambda!294449 lambda!294439)))

(declare-fun bs!1268584 () Bool)

(assert (= bs!1268584 (and d!1743435 d!1743249)))

(assert (=> bs!1268584 (= lambda!294449 lambda!294409)))

(declare-fun bs!1268585 () Bool)

(assert (= bs!1268585 (and d!1743435 d!1743391)))

(assert (=> bs!1268585 (= lambda!294449 lambda!294441)))

(declare-fun bs!1268586 () Bool)

(assert (= bs!1268586 (and d!1743435 d!1743245)))

(assert (=> bs!1268586 (= lambda!294449 lambda!294406)))

(declare-fun bs!1268587 () Bool)

(assert (= bs!1268587 (and d!1743435 d!1743393)))

(assert (=> bs!1268587 (= lambda!294449 lambda!294442)))

(assert (=> d!1743435 (= (inv!81924 (h!69037 (t!375948 zl!343))) (forall!14662 (exprs!5355 (h!69037 (t!375948 zl!343))) lambda!294449))))

(declare-fun bs!1268588 () Bool)

(assert (= bs!1268588 d!1743435))

(declare-fun m!6508242 () Bool)

(assert (=> bs!1268588 m!6508242))

(assert (=> b!5499620 d!1743435))

(declare-fun d!1743437 () Bool)

(declare-fun res!2344443 () Bool)

(declare-fun e!3402077 () Bool)

(assert (=> d!1743437 (=> res!2344443 e!3402077)))

(assert (=> d!1743437 (= res!2344443 ((_ is Nil!62588) (exprs!5355 setElem!36431)))))

(assert (=> d!1743437 (= (forall!14662 (exprs!5355 setElem!36431) lambda!294399) e!3402077)))

(declare-fun b!5499776 () Bool)

(declare-fun e!3402078 () Bool)

(assert (=> b!5499776 (= e!3402077 e!3402078)))

(declare-fun res!2344444 () Bool)

(assert (=> b!5499776 (=> (not res!2344444) (not e!3402078))))

(assert (=> b!5499776 (= res!2344444 (dynLambda!24465 lambda!294399 (h!69036 (exprs!5355 setElem!36431))))))

(declare-fun b!5499777 () Bool)

(assert (=> b!5499777 (= e!3402078 (forall!14662 (t!375947 (exprs!5355 setElem!36431)) lambda!294399))))

(assert (= (and d!1743437 (not res!2344443)) b!5499776))

(assert (= (and b!5499776 res!2344444) b!5499777))

(declare-fun b_lambda!208583 () Bool)

(assert (=> (not b_lambda!208583) (not b!5499776)))

(declare-fun m!6508244 () Bool)

(assert (=> b!5499776 m!6508244))

(declare-fun m!6508246 () Bool)

(assert (=> b!5499777 m!6508246))

(assert (=> d!1743243 d!1743437))

(declare-fun bs!1268589 () Bool)

(declare-fun b!5499788 () Bool)

(assert (= bs!1268589 (and b!5499788 b!5499743)))

(declare-fun lambda!294450 () Int)

(assert (=> bs!1268589 (= (and (= (reg!15800 (regOne!31455 (regOne!31455 r!7292))) (reg!15800 (regTwo!31455 (regTwo!31455 r!7292)))) (= (regOne!31455 (regOne!31455 r!7292)) (regTwo!31455 (regTwo!31455 r!7292)))) (= lambda!294450 lambda!294443))))

(declare-fun bs!1268590 () Bool)

(assert (= bs!1268590 (and b!5499788 b!5499363)))

(assert (=> bs!1268590 (not (= lambda!294450 lambda!294430))))

(declare-fun bs!1268591 () Bool)

(assert (= bs!1268591 (and b!5499788 b!5499304)))

(assert (=> bs!1268591 (not (= lambda!294450 lambda!294428))))

(declare-fun bs!1268592 () Bool)

(assert (= bs!1268592 (and b!5499788 b!5499128)))

(assert (=> bs!1268592 (not (= lambda!294450 lambda!294419))))

(declare-fun bs!1268593 () Bool)

(assert (= bs!1268593 (and b!5499788 b!5499138)))

(assert (=> bs!1268593 (= (and (= (reg!15800 (regOne!31455 (regOne!31455 r!7292))) (reg!15800 r!7292)) (= (regOne!31455 (regOne!31455 r!7292)) r!7292)) (= lambda!294450 lambda!294418))))

(declare-fun bs!1268594 () Bool)

(assert (= bs!1268594 (and b!5499788 b!5499373)))

(assert (=> bs!1268594 (= (and (= (reg!15800 (regOne!31455 (regOne!31455 r!7292))) (reg!15800 (regOne!31455 r!7292))) (= (regOne!31455 (regOne!31455 r!7292)) (regOne!31455 r!7292))) (= lambda!294450 lambda!294429))))

(declare-fun bs!1268595 () Bool)

(assert (= bs!1268595 (and b!5499788 b!5499733)))

(assert (=> bs!1268595 (not (= lambda!294450 lambda!294444))))

(declare-fun bs!1268596 () Bool)

(assert (= bs!1268596 (and b!5499788 b!5499314)))

(assert (=> bs!1268596 (= (and (= (reg!15800 (regOne!31455 (regOne!31455 r!7292))) (reg!15800 (regTwo!31455 r!7292))) (= (regOne!31455 (regOne!31455 r!7292)) (regTwo!31455 r!7292))) (= lambda!294450 lambda!294427))))

(assert (=> b!5499788 true))

(assert (=> b!5499788 true))

(declare-fun bs!1268597 () Bool)

(declare-fun b!5499778 () Bool)

(assert (= bs!1268597 (and b!5499778 b!5499743)))

(declare-fun lambda!294451 () Int)

(assert (=> bs!1268597 (not (= lambda!294451 lambda!294443))))

(declare-fun bs!1268598 () Bool)

(assert (= bs!1268598 (and b!5499778 b!5499788)))

(assert (=> bs!1268598 (not (= lambda!294451 lambda!294450))))

(declare-fun bs!1268599 () Bool)

(assert (= bs!1268599 (and b!5499778 b!5499363)))

(assert (=> bs!1268599 (= (and (= (regOne!31454 (regOne!31455 (regOne!31455 r!7292))) (regOne!31454 (regOne!31455 r!7292))) (= (regTwo!31454 (regOne!31455 (regOne!31455 r!7292))) (regTwo!31454 (regOne!31455 r!7292)))) (= lambda!294451 lambda!294430))))

(declare-fun bs!1268600 () Bool)

(assert (= bs!1268600 (and b!5499778 b!5499304)))

(assert (=> bs!1268600 (= (and (= (regOne!31454 (regOne!31455 (regOne!31455 r!7292))) (regOne!31454 (regTwo!31455 r!7292))) (= (regTwo!31454 (regOne!31455 (regOne!31455 r!7292))) (regTwo!31454 (regTwo!31455 r!7292)))) (= lambda!294451 lambda!294428))))

(declare-fun bs!1268601 () Bool)

(assert (= bs!1268601 (and b!5499778 b!5499128)))

(assert (=> bs!1268601 (= (and (= (regOne!31454 (regOne!31455 (regOne!31455 r!7292))) (regOne!31454 r!7292)) (= (regTwo!31454 (regOne!31455 (regOne!31455 r!7292))) (regTwo!31454 r!7292))) (= lambda!294451 lambda!294419))))

(declare-fun bs!1268602 () Bool)

(assert (= bs!1268602 (and b!5499778 b!5499138)))

(assert (=> bs!1268602 (not (= lambda!294451 lambda!294418))))

(declare-fun bs!1268603 () Bool)

(assert (= bs!1268603 (and b!5499778 b!5499373)))

(assert (=> bs!1268603 (not (= lambda!294451 lambda!294429))))

(declare-fun bs!1268604 () Bool)

(assert (= bs!1268604 (and b!5499778 b!5499733)))

(assert (=> bs!1268604 (= (and (= (regOne!31454 (regOne!31455 (regOne!31455 r!7292))) (regOne!31454 (regTwo!31455 (regTwo!31455 r!7292)))) (= (regTwo!31454 (regOne!31455 (regOne!31455 r!7292))) (regTwo!31454 (regTwo!31455 (regTwo!31455 r!7292))))) (= lambda!294451 lambda!294444))))

(declare-fun bs!1268605 () Bool)

(assert (= bs!1268605 (and b!5499778 b!5499314)))

(assert (=> bs!1268605 (not (= lambda!294451 lambda!294427))))

(assert (=> b!5499778 true))

(assert (=> b!5499778 true))

(declare-fun e!3402085 () Bool)

(declare-fun call!405921 () Bool)

(assert (=> b!5499778 (= e!3402085 call!405921)))

(declare-fun b!5499780 () Bool)

(declare-fun e!3402083 () Bool)

(assert (=> b!5499780 (= e!3402083 e!3402085)))

(declare-fun c!960555 () Bool)

(assert (=> b!5499780 (= c!960555 ((_ is Star!15471) (regOne!31455 (regOne!31455 r!7292))))))

(declare-fun d!1743439 () Bool)

(declare-fun c!960556 () Bool)

(assert (=> d!1743439 (= c!960556 ((_ is EmptyExpr!15471) (regOne!31455 (regOne!31455 r!7292))))))

(declare-fun e!3402080 () Bool)

(assert (=> d!1743439 (= (matchRSpec!2574 (regOne!31455 (regOne!31455 r!7292)) s!2326) e!3402080)))

(declare-fun b!5499779 () Bool)

(declare-fun c!960554 () Bool)

(assert (=> b!5499779 (= c!960554 ((_ is ElementMatch!15471) (regOne!31455 (regOne!31455 r!7292))))))

(declare-fun e!3402084 () Bool)

(declare-fun e!3402082 () Bool)

(assert (=> b!5499779 (= e!3402084 e!3402082)))

(declare-fun b!5499781 () Bool)

(declare-fun e!3402079 () Bool)

(assert (=> b!5499781 (= e!3402079 (matchRSpec!2574 (regTwo!31455 (regOne!31455 (regOne!31455 r!7292))) s!2326))))

(declare-fun b!5499782 () Bool)

(assert (=> b!5499782 (= e!3402082 (= s!2326 (Cons!62590 (c!960293 (regOne!31455 (regOne!31455 r!7292))) Nil!62590)))))

(declare-fun b!5499783 () Bool)

(assert (=> b!5499783 (= e!3402083 e!3402079)))

(declare-fun res!2344446 () Bool)

(assert (=> b!5499783 (= res!2344446 (matchRSpec!2574 (regOne!31455 (regOne!31455 (regOne!31455 r!7292))) s!2326))))

(assert (=> b!5499783 (=> res!2344446 e!3402079)))

(declare-fun b!5499784 () Bool)

(declare-fun call!405922 () Bool)

(assert (=> b!5499784 (= e!3402080 call!405922)))

(declare-fun b!5499785 () Bool)

(declare-fun res!2344445 () Bool)

(declare-fun e!3402081 () Bool)

(assert (=> b!5499785 (=> res!2344445 e!3402081)))

(assert (=> b!5499785 (= res!2344445 call!405922)))

(assert (=> b!5499785 (= e!3402085 e!3402081)))

(declare-fun bm!405916 () Bool)

(assert (=> bm!405916 (= call!405921 (Exists!2579 (ite c!960555 lambda!294450 lambda!294451)))))

(declare-fun b!5499786 () Bool)

(declare-fun c!960553 () Bool)

(assert (=> b!5499786 (= c!960553 ((_ is Union!15471) (regOne!31455 (regOne!31455 r!7292))))))

(assert (=> b!5499786 (= e!3402082 e!3402083)))

(declare-fun b!5499787 () Bool)

(assert (=> b!5499787 (= e!3402080 e!3402084)))

(declare-fun res!2344447 () Bool)

(assert (=> b!5499787 (= res!2344447 (not ((_ is EmptyLang!15471) (regOne!31455 (regOne!31455 r!7292)))))))

(assert (=> b!5499787 (=> (not res!2344447) (not e!3402084))))

(declare-fun bm!405917 () Bool)

(assert (=> bm!405917 (= call!405922 (isEmpty!34387 s!2326))))

(assert (=> b!5499788 (= e!3402081 call!405921)))

(assert (= (and d!1743439 c!960556) b!5499784))

(assert (= (and d!1743439 (not c!960556)) b!5499787))

(assert (= (and b!5499787 res!2344447) b!5499779))

(assert (= (and b!5499779 c!960554) b!5499782))

(assert (= (and b!5499779 (not c!960554)) b!5499786))

(assert (= (and b!5499786 c!960553) b!5499783))

(assert (= (and b!5499786 (not c!960553)) b!5499780))

(assert (= (and b!5499783 (not res!2344446)) b!5499781))

(assert (= (and b!5499780 c!960555) b!5499785))

(assert (= (and b!5499780 (not c!960555)) b!5499778))

(assert (= (and b!5499785 (not res!2344445)) b!5499788))

(assert (= (or b!5499788 b!5499778) bm!405916))

(assert (= (or b!5499784 b!5499785) bm!405917))

(declare-fun m!6508248 () Bool)

(assert (=> b!5499781 m!6508248))

(declare-fun m!6508250 () Bool)

(assert (=> b!5499783 m!6508250))

(declare-fun m!6508252 () Bool)

(assert (=> bm!405916 m!6508252))

(assert (=> bm!405917 m!6507820))

(assert (=> b!5499368 d!1743439))

(declare-fun d!1743441 () Bool)

(assert (=> d!1743441 (= (Exists!2579 (ite c!960374 lambda!294418 lambda!294419)) (choose!41798 (ite c!960374 lambda!294418 lambda!294419)))))

(declare-fun bs!1268606 () Bool)

(assert (= bs!1268606 d!1743441))

(declare-fun m!6508254 () Bool)

(assert (=> bs!1268606 m!6508254))

(assert (=> bm!405784 d!1743441))

(assert (=> bm!405795 d!1743363))

(assert (=> bs!1268524 d!1743237))

(declare-fun b!5499789 () Bool)

(declare-fun e!3402089 () Bool)

(assert (=> b!5499789 (= e!3402089 (nullable!5513 (regOne!31454 (h!69036 (exprs!5355 (h!69037 zl!343))))))))

(declare-fun b!5499790 () Bool)

(declare-fun c!960560 () Bool)

(assert (=> b!5499790 (= c!960560 ((_ is Star!15471) (h!69036 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun e!3402091 () (InoxSet Context!9710))

(declare-fun e!3402087 () (InoxSet Context!9710))

(assert (=> b!5499790 (= e!3402091 e!3402087)))

(declare-fun b!5499791 () Bool)

(declare-fun e!3402086 () (InoxSet Context!9710))

(declare-fun call!405924 () (InoxSet Context!9710))

(declare-fun call!405925 () (InoxSet Context!9710))

(assert (=> b!5499791 (= e!3402086 ((_ map or) call!405924 call!405925))))

(declare-fun c!960561 () Bool)

(declare-fun bm!405918 () Bool)

(declare-fun call!405927 () List!62712)

(assert (=> bm!405918 (= call!405924 (derivationStepZipperDown!817 (ite c!960561 (regOne!31455 (h!69036 (exprs!5355 (h!69037 zl!343)))) (regOne!31454 (h!69036 (exprs!5355 (h!69037 zl!343))))) (ite c!960561 (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343)))) (Context!9711 call!405927)) (h!69038 s!2326)))))

(declare-fun b!5499792 () Bool)

(declare-fun e!3402088 () (InoxSet Context!9710))

(assert (=> b!5499792 (= e!3402088 (store ((as const (Array Context!9710 Bool)) false) (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343)))) true))))

(declare-fun bm!405919 () Bool)

(declare-fun call!405923 () List!62712)

(assert (=> bm!405919 (= call!405923 call!405927)))

(declare-fun b!5499793 () Bool)

(assert (=> b!5499793 (= e!3402088 e!3402086)))

(assert (=> b!5499793 (= c!960561 ((_ is Union!15471) (h!69036 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun c!960557 () Bool)

(declare-fun bm!405920 () Bool)

(declare-fun c!960559 () Bool)

(assert (=> bm!405920 (= call!405925 (derivationStepZipperDown!817 (ite c!960561 (regTwo!31455 (h!69036 (exprs!5355 (h!69037 zl!343)))) (ite c!960559 (regTwo!31454 (h!69036 (exprs!5355 (h!69037 zl!343)))) (ite c!960557 (regOne!31454 (h!69036 (exprs!5355 (h!69037 zl!343)))) (reg!15800 (h!69036 (exprs!5355 (h!69037 zl!343))))))) (ite (or c!960561 c!960559) (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343)))) (Context!9711 call!405923)) (h!69038 s!2326)))))

(declare-fun b!5499794 () Bool)

(declare-fun call!405926 () (InoxSet Context!9710))

(assert (=> b!5499794 (= e!3402087 call!405926)))

(declare-fun b!5499795 () Bool)

(assert (=> b!5499795 (= c!960559 e!3402089)))

(declare-fun res!2344448 () Bool)

(assert (=> b!5499795 (=> (not res!2344448) (not e!3402089))))

(assert (=> b!5499795 (= res!2344448 ((_ is Concat!24316) (h!69036 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun e!3402090 () (InoxSet Context!9710))

(assert (=> b!5499795 (= e!3402086 e!3402090)))

(declare-fun bm!405921 () Bool)

(assert (=> bm!405921 (= call!405927 ($colon$colon!1567 (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343))))) (ite (or c!960559 c!960557) (regTwo!31454 (h!69036 (exprs!5355 (h!69037 zl!343)))) (h!69036 (exprs!5355 (h!69037 zl!343))))))))

(declare-fun b!5499796 () Bool)

(declare-fun call!405928 () (InoxSet Context!9710))

(assert (=> b!5499796 (= e!3402090 ((_ map or) call!405924 call!405928))))

(declare-fun b!5499797 () Bool)

(assert (=> b!5499797 (= e!3402090 e!3402091)))

(assert (=> b!5499797 (= c!960557 ((_ is Concat!24316) (h!69036 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun b!5499798 () Bool)

(assert (=> b!5499798 (= e!3402091 call!405926)))

(declare-fun bm!405923 () Bool)

(assert (=> bm!405923 (= call!405928 call!405925)))

(declare-fun b!5499799 () Bool)

(assert (=> b!5499799 (= e!3402087 ((as const (Array Context!9710 Bool)) false))))

(declare-fun d!1743443 () Bool)

(declare-fun c!960558 () Bool)

(assert (=> d!1743443 (= c!960558 (and ((_ is ElementMatch!15471) (h!69036 (exprs!5355 (h!69037 zl!343)))) (= (c!960293 (h!69036 (exprs!5355 (h!69037 zl!343)))) (h!69038 s!2326))))))

(assert (=> d!1743443 (= (derivationStepZipperDown!817 (h!69036 (exprs!5355 (h!69037 zl!343))) (Context!9711 (t!375947 (exprs!5355 (h!69037 zl!343)))) (h!69038 s!2326)) e!3402088)))

(declare-fun bm!405922 () Bool)

(assert (=> bm!405922 (= call!405926 call!405928)))

(assert (= (and d!1743443 c!960558) b!5499792))

(assert (= (and d!1743443 (not c!960558)) b!5499793))

(assert (= (and b!5499793 c!960561) b!5499791))

(assert (= (and b!5499793 (not c!960561)) b!5499795))

(assert (= (and b!5499795 res!2344448) b!5499789))

(assert (= (and b!5499795 c!960559) b!5499796))

(assert (= (and b!5499795 (not c!960559)) b!5499797))

(assert (= (and b!5499797 c!960557) b!5499798))

(assert (= (and b!5499797 (not c!960557)) b!5499790))

(assert (= (and b!5499790 c!960560) b!5499794))

(assert (= (and b!5499790 (not c!960560)) b!5499799))

(assert (= (or b!5499798 b!5499794) bm!405919))

(assert (= (or b!5499798 b!5499794) bm!405922))

(assert (= (or b!5499796 bm!405919) bm!405921))

(assert (= (or b!5499796 bm!405922) bm!405923))

(assert (= (or b!5499791 bm!405923) bm!405920))

(assert (= (or b!5499791 b!5499796) bm!405918))

(declare-fun m!6508256 () Bool)

(assert (=> bm!405920 m!6508256))

(declare-fun m!6508258 () Bool)

(assert (=> bm!405918 m!6508258))

(declare-fun m!6508260 () Bool)

(assert (=> b!5499789 m!6508260))

(declare-fun m!6508262 () Bool)

(assert (=> b!5499792 m!6508262))

(declare-fun m!6508264 () Bool)

(assert (=> bm!405921 m!6508264))

(assert (=> bm!405765 d!1743443))

(declare-fun d!1743445 () Bool)

(assert (=> d!1743445 (= ($colon$colon!1567 (exprs!5355 lt!2243099) (ite (or c!960433 c!960431) (regTwo!31454 (regTwo!31455 r!7292)) (regTwo!31455 r!7292))) (Cons!62588 (ite (or c!960433 c!960431) (regTwo!31454 (regTwo!31455 r!7292)) (regTwo!31455 r!7292)) (exprs!5355 lt!2243099)))))

(assert (=> bm!405838 d!1743445))

(declare-fun d!1743447 () Bool)

(assert (=> d!1743447 (= (head!11778 (exprs!5355 (h!69037 zl!343))) (h!69036 (exprs!5355 (h!69037 zl!343))))))

(assert (=> b!5499462 d!1743447))

(declare-fun d!1743449 () Bool)

(assert (=> d!1743449 (= (isEmptyLang!1071 lt!2243116) ((_ is EmptyLang!15471) lt!2243116))))

(assert (=> b!5499010 d!1743449))

(assert (=> bm!405842 d!1743363))

(declare-fun d!1743451 () Bool)

(assert (=> d!1743451 (= (nullable!5513 (h!69036 (exprs!5355 (h!69037 zl!343)))) (nullableFct!1648 (h!69036 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun bs!1268607 () Bool)

(assert (= bs!1268607 d!1743451))

(declare-fun m!6508266 () Bool)

(assert (=> bs!1268607 m!6508266))

(assert (=> b!5498934 d!1743451))

(declare-fun b!5499800 () Bool)

(declare-fun e!3402093 () Bool)

(assert (=> b!5499800 (= e!3402093 (= (head!11780 (tail!10875 s!2326)) (c!960293 (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326)))))))

(declare-fun d!1743453 () Bool)

(declare-fun e!3402094 () Bool)

(assert (=> d!1743453 e!3402094))

(declare-fun c!960563 () Bool)

(assert (=> d!1743453 (= c!960563 ((_ is EmptyExpr!15471) (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326))))))

(declare-fun lt!2243161 () Bool)

(declare-fun e!3402095 () Bool)

(assert (=> d!1743453 (= lt!2243161 e!3402095)))

(declare-fun c!960562 () Bool)

(assert (=> d!1743453 (= c!960562 (isEmpty!34387 (tail!10875 s!2326)))))

(assert (=> d!1743453 (validRegex!7207 (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326)))))

(assert (=> d!1743453 (= (matchR!7656 (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326)) (tail!10875 s!2326)) lt!2243161)))

(declare-fun b!5499801 () Bool)

(declare-fun call!405929 () Bool)

(assert (=> b!5499801 (= e!3402094 (= lt!2243161 call!405929))))

(declare-fun bm!405924 () Bool)

(assert (=> bm!405924 (= call!405929 (isEmpty!34387 (tail!10875 s!2326)))))

(declare-fun b!5499802 () Bool)

(declare-fun res!2344451 () Bool)

(declare-fun e!3402097 () Bool)

(assert (=> b!5499802 (=> res!2344451 e!3402097)))

(assert (=> b!5499802 (= res!2344451 (not ((_ is ElementMatch!15471) (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326)))))))

(declare-fun e!3402092 () Bool)

(assert (=> b!5499802 (= e!3402092 e!3402097)))

(declare-fun b!5499803 () Bool)

(declare-fun res!2344453 () Bool)

(assert (=> b!5499803 (=> (not res!2344453) (not e!3402093))))

(assert (=> b!5499803 (= res!2344453 (not call!405929))))

(declare-fun b!5499804 () Bool)

(declare-fun e!3402096 () Bool)

(declare-fun e!3402098 () Bool)

(assert (=> b!5499804 (= e!3402096 e!3402098)))

(declare-fun res!2344452 () Bool)

(assert (=> b!5499804 (=> res!2344452 e!3402098)))

(assert (=> b!5499804 (= res!2344452 call!405929)))

(declare-fun b!5499805 () Bool)

(assert (=> b!5499805 (= e!3402095 (matchR!7656 (derivativeStep!4353 (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326)) (head!11780 (tail!10875 s!2326))) (tail!10875 (tail!10875 s!2326))))))

(declare-fun b!5499806 () Bool)

(declare-fun res!2344454 () Bool)

(assert (=> b!5499806 (=> (not res!2344454) (not e!3402093))))

(assert (=> b!5499806 (= res!2344454 (isEmpty!34387 (tail!10875 (tail!10875 s!2326))))))

(declare-fun b!5499807 () Bool)

(declare-fun res!2344456 () Bool)

(assert (=> b!5499807 (=> res!2344456 e!3402097)))

(assert (=> b!5499807 (= res!2344456 e!3402093)))

(declare-fun res!2344450 () Bool)

(assert (=> b!5499807 (=> (not res!2344450) (not e!3402093))))

(assert (=> b!5499807 (= res!2344450 lt!2243161)))

(declare-fun b!5499808 () Bool)

(assert (=> b!5499808 (= e!3402097 e!3402096)))

(declare-fun res!2344449 () Bool)

(assert (=> b!5499808 (=> (not res!2344449) (not e!3402096))))

(assert (=> b!5499808 (= res!2344449 (not lt!2243161))))

(declare-fun b!5499809 () Bool)

(assert (=> b!5499809 (= e!3402092 (not lt!2243161))))

(declare-fun b!5499810 () Bool)

(assert (=> b!5499810 (= e!3402098 (not (= (head!11780 (tail!10875 s!2326)) (c!960293 (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326))))))))

(declare-fun b!5499811 () Bool)

(assert (=> b!5499811 (= e!3402094 e!3402092)))

(declare-fun c!960564 () Bool)

(assert (=> b!5499811 (= c!960564 ((_ is EmptyLang!15471) (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326))))))

(declare-fun b!5499812 () Bool)

(assert (=> b!5499812 (= e!3402095 (nullable!5513 (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326))))))

(declare-fun b!5499813 () Bool)

(declare-fun res!2344455 () Bool)

(assert (=> b!5499813 (=> res!2344455 e!3402098)))

(assert (=> b!5499813 (= res!2344455 (not (isEmpty!34387 (tail!10875 (tail!10875 s!2326)))))))

(assert (= (and d!1743453 c!960562) b!5499812))

(assert (= (and d!1743453 (not c!960562)) b!5499805))

(assert (= (and d!1743453 c!960563) b!5499801))

(assert (= (and d!1743453 (not c!960563)) b!5499811))

(assert (= (and b!5499811 c!960564) b!5499809))

(assert (= (and b!5499811 (not c!960564)) b!5499802))

(assert (= (and b!5499802 (not res!2344451)) b!5499807))

(assert (= (and b!5499807 res!2344450) b!5499803))

(assert (= (and b!5499803 res!2344453) b!5499806))

(assert (= (and b!5499806 res!2344454) b!5499800))

(assert (= (and b!5499807 (not res!2344456)) b!5499808))

(assert (= (and b!5499808 res!2344449) b!5499804))

(assert (= (and b!5499804 (not res!2344452)) b!5499813))

(assert (= (and b!5499813 (not res!2344455)) b!5499810))

(assert (= (or b!5499801 b!5499803 b!5499804) bm!405924))

(assert (=> b!5499806 m!6507834))

(assert (=> b!5499806 m!6508092))

(assert (=> b!5499806 m!6508092))

(declare-fun m!6508268 () Bool)

(assert (=> b!5499806 m!6508268))

(assert (=> bm!405924 m!6507834))

(assert (=> bm!405924 m!6507836))

(assert (=> b!5499813 m!6507834))

(assert (=> b!5499813 m!6508092))

(assert (=> b!5499813 m!6508092))

(assert (=> b!5499813 m!6508268))

(assert (=> b!5499812 m!6507950))

(declare-fun m!6508270 () Bool)

(assert (=> b!5499812 m!6508270))

(assert (=> b!5499805 m!6507834))

(assert (=> b!5499805 m!6508088))

(assert (=> b!5499805 m!6507950))

(assert (=> b!5499805 m!6508088))

(declare-fun m!6508272 () Bool)

(assert (=> b!5499805 m!6508272))

(assert (=> b!5499805 m!6507834))

(assert (=> b!5499805 m!6508092))

(assert (=> b!5499805 m!6508272))

(assert (=> b!5499805 m!6508092))

(declare-fun m!6508274 () Bool)

(assert (=> b!5499805 m!6508274))

(assert (=> b!5499800 m!6507834))

(assert (=> b!5499800 m!6508088))

(assert (=> b!5499810 m!6507834))

(assert (=> b!5499810 m!6508088))

(assert (=> d!1743453 m!6507834))

(assert (=> d!1743453 m!6507836))

(assert (=> d!1743453 m!6507950))

(declare-fun m!6508276 () Bool)

(assert (=> d!1743453 m!6508276))

(assert (=> b!5499379 d!1743453))

(declare-fun bm!405933 () Bool)

(declare-fun call!405939 () Regex!15471)

(declare-fun c!960578 () Bool)

(declare-fun c!960575 () Bool)

(declare-fun c!960576 () Bool)

(assert (=> bm!405933 (= call!405939 (derivativeStep!4353 (ite c!960576 (regOne!31455 (regOne!31455 r!7292)) (ite c!960578 (reg!15800 (regOne!31455 r!7292)) (ite c!960575 (regTwo!31454 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292))))) (head!11780 s!2326)))))

(declare-fun bm!405934 () Bool)

(declare-fun call!405938 () Regex!15471)

(declare-fun call!405940 () Regex!15471)

(assert (=> bm!405934 (= call!405938 call!405940)))

(declare-fun b!5499834 () Bool)

(declare-fun e!3402109 () Regex!15471)

(declare-fun e!3402111 () Regex!15471)

(assert (=> b!5499834 (= e!3402109 e!3402111)))

(declare-fun c!960579 () Bool)

(assert (=> b!5499834 (= c!960579 ((_ is ElementMatch!15471) (regOne!31455 r!7292)))))

(declare-fun b!5499835 () Bool)

(declare-fun e!3402110 () Regex!15471)

(assert (=> b!5499835 (= e!3402110 (Union!15471 (Concat!24316 call!405938 (regTwo!31454 (regOne!31455 r!7292))) EmptyLang!15471))))

(declare-fun b!5499836 () Bool)

(declare-fun e!3402112 () Regex!15471)

(declare-fun call!405941 () Regex!15471)

(assert (=> b!5499836 (= e!3402112 (Union!15471 call!405939 call!405941))))

(declare-fun b!5499837 () Bool)

(assert (=> b!5499837 (= e!3402110 (Union!15471 (Concat!24316 call!405941 (regTwo!31454 (regOne!31455 r!7292))) call!405938))))

(declare-fun b!5499838 () Bool)

(assert (=> b!5499838 (= e!3402109 EmptyLang!15471)))

(declare-fun b!5499839 () Bool)

(declare-fun e!3402113 () Regex!15471)

(assert (=> b!5499839 (= e!3402112 e!3402113)))

(assert (=> b!5499839 (= c!960578 ((_ is Star!15471) (regOne!31455 r!7292)))))

(declare-fun d!1743455 () Bool)

(declare-fun lt!2243164 () Regex!15471)

(assert (=> d!1743455 (validRegex!7207 lt!2243164)))

(assert (=> d!1743455 (= lt!2243164 e!3402109)))

(declare-fun c!960577 () Bool)

(assert (=> d!1743455 (= c!960577 (or ((_ is EmptyExpr!15471) (regOne!31455 r!7292)) ((_ is EmptyLang!15471) (regOne!31455 r!7292))))))

(assert (=> d!1743455 (validRegex!7207 (regOne!31455 r!7292))))

(assert (=> d!1743455 (= (derivativeStep!4353 (regOne!31455 r!7292) (head!11780 s!2326)) lt!2243164)))

(declare-fun bm!405935 () Bool)

(assert (=> bm!405935 (= call!405941 (derivativeStep!4353 (ite c!960576 (regTwo!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292))) (head!11780 s!2326)))))

(declare-fun bm!405936 () Bool)

(assert (=> bm!405936 (= call!405940 call!405939)))

(declare-fun b!5499840 () Bool)

(assert (=> b!5499840 (= c!960576 ((_ is Union!15471) (regOne!31455 r!7292)))))

(assert (=> b!5499840 (= e!3402111 e!3402112)))

(declare-fun b!5499841 () Bool)

(assert (=> b!5499841 (= c!960575 (nullable!5513 (regOne!31454 (regOne!31455 r!7292))))))

(assert (=> b!5499841 (= e!3402113 e!3402110)))

(declare-fun b!5499842 () Bool)

(assert (=> b!5499842 (= e!3402111 (ite (= (head!11780 s!2326) (c!960293 (regOne!31455 r!7292))) EmptyExpr!15471 EmptyLang!15471))))

(declare-fun b!5499843 () Bool)

(assert (=> b!5499843 (= e!3402113 (Concat!24316 call!405940 (regOne!31455 r!7292)))))

(assert (= (and d!1743455 c!960577) b!5499838))

(assert (= (and d!1743455 (not c!960577)) b!5499834))

(assert (= (and b!5499834 c!960579) b!5499842))

(assert (= (and b!5499834 (not c!960579)) b!5499840))

(assert (= (and b!5499840 c!960576) b!5499836))

(assert (= (and b!5499840 (not c!960576)) b!5499839))

(assert (= (and b!5499839 c!960578) b!5499843))

(assert (= (and b!5499839 (not c!960578)) b!5499841))

(assert (= (and b!5499841 c!960575) b!5499837))

(assert (= (and b!5499841 (not c!960575)) b!5499835))

(assert (= (or b!5499837 b!5499835) bm!405934))

(assert (= (or b!5499843 bm!405934) bm!405936))

(assert (= (or b!5499836 b!5499837) bm!405935))

(assert (= (or b!5499836 bm!405936) bm!405933))

(assert (=> bm!405933 m!6507840))

(declare-fun m!6508278 () Bool)

(assert (=> bm!405933 m!6508278))

(declare-fun m!6508280 () Bool)

(assert (=> d!1743455 m!6508280))

(assert (=> d!1743455 m!6507924))

(assert (=> bm!405935 m!6507840))

(declare-fun m!6508282 () Bool)

(assert (=> bm!405935 m!6508282))

(assert (=> b!5499841 m!6507880))

(assert (=> b!5499379 d!1743455))

(assert (=> b!5499379 d!1743355))

(assert (=> b!5499379 d!1743357))

(declare-fun d!1743457 () Bool)

(declare-fun res!2344457 () Bool)

(declare-fun e!3402114 () Bool)

(assert (=> d!1743457 (=> res!2344457 e!3402114)))

(assert (=> d!1743457 (= res!2344457 ((_ is Nil!62588) (exprs!5355 (h!69037 zl!343))))))

(assert (=> d!1743457 (= (forall!14662 (exprs!5355 (h!69037 zl!343)) lambda!294437) e!3402114)))

(declare-fun b!5499844 () Bool)

(declare-fun e!3402115 () Bool)

(assert (=> b!5499844 (= e!3402114 e!3402115)))

(declare-fun res!2344458 () Bool)

(assert (=> b!5499844 (=> (not res!2344458) (not e!3402115))))

(assert (=> b!5499844 (= res!2344458 (dynLambda!24465 lambda!294437 (h!69036 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun b!5499845 () Bool)

(assert (=> b!5499845 (= e!3402115 (forall!14662 (t!375947 (exprs!5355 (h!69037 zl!343))) lambda!294437))))

(assert (= (and d!1743457 (not res!2344457)) b!5499844))

(assert (= (and b!5499844 res!2344458) b!5499845))

(declare-fun b_lambda!208585 () Bool)

(assert (=> (not b_lambda!208585) (not b!5499844)))

(declare-fun m!6508284 () Bool)

(assert (=> b!5499844 m!6508284))

(declare-fun m!6508286 () Bool)

(assert (=> b!5499845 m!6508286))

(assert (=> d!1743327 d!1743457))

(declare-fun d!1743459 () Bool)

(assert (=> d!1743459 (= (nullable!5513 (reg!15800 r!7292)) (nullableFct!1648 (reg!15800 r!7292)))))

(declare-fun bs!1268608 () Bool)

(assert (= bs!1268608 d!1743459))

(declare-fun m!6508288 () Bool)

(assert (=> bs!1268608 m!6508288))

(assert (=> b!5499548 d!1743459))

(declare-fun bs!1268609 () Bool)

(declare-fun b!5499856 () Bool)

(assert (= bs!1268609 (and b!5499856 b!5499743)))

(declare-fun lambda!294452 () Int)

(assert (=> bs!1268609 (= (and (= (reg!15800 (regTwo!31455 (regOne!31455 r!7292))) (reg!15800 (regTwo!31455 (regTwo!31455 r!7292)))) (= (regTwo!31455 (regOne!31455 r!7292)) (regTwo!31455 (regTwo!31455 r!7292)))) (= lambda!294452 lambda!294443))))

(declare-fun bs!1268610 () Bool)

(assert (= bs!1268610 (and b!5499856 b!5499788)))

(assert (=> bs!1268610 (= (and (= (reg!15800 (regTwo!31455 (regOne!31455 r!7292))) (reg!15800 (regOne!31455 (regOne!31455 r!7292)))) (= (regTwo!31455 (regOne!31455 r!7292)) (regOne!31455 (regOne!31455 r!7292)))) (= lambda!294452 lambda!294450))))

(declare-fun bs!1268611 () Bool)

(assert (= bs!1268611 (and b!5499856 b!5499778)))

(assert (=> bs!1268611 (not (= lambda!294452 lambda!294451))))

(declare-fun bs!1268612 () Bool)

(assert (= bs!1268612 (and b!5499856 b!5499363)))

(assert (=> bs!1268612 (not (= lambda!294452 lambda!294430))))

(declare-fun bs!1268613 () Bool)

(assert (= bs!1268613 (and b!5499856 b!5499304)))

(assert (=> bs!1268613 (not (= lambda!294452 lambda!294428))))

(declare-fun bs!1268614 () Bool)

(assert (= bs!1268614 (and b!5499856 b!5499128)))

(assert (=> bs!1268614 (not (= lambda!294452 lambda!294419))))

(declare-fun bs!1268615 () Bool)

(assert (= bs!1268615 (and b!5499856 b!5499138)))

(assert (=> bs!1268615 (= (and (= (reg!15800 (regTwo!31455 (regOne!31455 r!7292))) (reg!15800 r!7292)) (= (regTwo!31455 (regOne!31455 r!7292)) r!7292)) (= lambda!294452 lambda!294418))))

(declare-fun bs!1268616 () Bool)

(assert (= bs!1268616 (and b!5499856 b!5499373)))

(assert (=> bs!1268616 (= (and (= (reg!15800 (regTwo!31455 (regOne!31455 r!7292))) (reg!15800 (regOne!31455 r!7292))) (= (regTwo!31455 (regOne!31455 r!7292)) (regOne!31455 r!7292))) (= lambda!294452 lambda!294429))))

(declare-fun bs!1268617 () Bool)

(assert (= bs!1268617 (and b!5499856 b!5499733)))

(assert (=> bs!1268617 (not (= lambda!294452 lambda!294444))))

(declare-fun bs!1268618 () Bool)

(assert (= bs!1268618 (and b!5499856 b!5499314)))

(assert (=> bs!1268618 (= (and (= (reg!15800 (regTwo!31455 (regOne!31455 r!7292))) (reg!15800 (regTwo!31455 r!7292))) (= (regTwo!31455 (regOne!31455 r!7292)) (regTwo!31455 r!7292))) (= lambda!294452 lambda!294427))))

(assert (=> b!5499856 true))

(assert (=> b!5499856 true))

(declare-fun bs!1268619 () Bool)

(declare-fun b!5499846 () Bool)

(assert (= bs!1268619 (and b!5499846 b!5499856)))

(declare-fun lambda!294453 () Int)

(assert (=> bs!1268619 (not (= lambda!294453 lambda!294452))))

(declare-fun bs!1268620 () Bool)

(assert (= bs!1268620 (and b!5499846 b!5499743)))

(assert (=> bs!1268620 (not (= lambda!294453 lambda!294443))))

(declare-fun bs!1268621 () Bool)

(assert (= bs!1268621 (and b!5499846 b!5499788)))

(assert (=> bs!1268621 (not (= lambda!294453 lambda!294450))))

(declare-fun bs!1268622 () Bool)

(assert (= bs!1268622 (and b!5499846 b!5499778)))

(assert (=> bs!1268622 (= (and (= (regOne!31454 (regTwo!31455 (regOne!31455 r!7292))) (regOne!31454 (regOne!31455 (regOne!31455 r!7292)))) (= (regTwo!31454 (regTwo!31455 (regOne!31455 r!7292))) (regTwo!31454 (regOne!31455 (regOne!31455 r!7292))))) (= lambda!294453 lambda!294451))))

(declare-fun bs!1268623 () Bool)

(assert (= bs!1268623 (and b!5499846 b!5499363)))

(assert (=> bs!1268623 (= (and (= (regOne!31454 (regTwo!31455 (regOne!31455 r!7292))) (regOne!31454 (regOne!31455 r!7292))) (= (regTwo!31454 (regTwo!31455 (regOne!31455 r!7292))) (regTwo!31454 (regOne!31455 r!7292)))) (= lambda!294453 lambda!294430))))

(declare-fun bs!1268624 () Bool)

(assert (= bs!1268624 (and b!5499846 b!5499304)))

(assert (=> bs!1268624 (= (and (= (regOne!31454 (regTwo!31455 (regOne!31455 r!7292))) (regOne!31454 (regTwo!31455 r!7292))) (= (regTwo!31454 (regTwo!31455 (regOne!31455 r!7292))) (regTwo!31454 (regTwo!31455 r!7292)))) (= lambda!294453 lambda!294428))))

(declare-fun bs!1268625 () Bool)

(assert (= bs!1268625 (and b!5499846 b!5499128)))

(assert (=> bs!1268625 (= (and (= (regOne!31454 (regTwo!31455 (regOne!31455 r!7292))) (regOne!31454 r!7292)) (= (regTwo!31454 (regTwo!31455 (regOne!31455 r!7292))) (regTwo!31454 r!7292))) (= lambda!294453 lambda!294419))))

(declare-fun bs!1268626 () Bool)

(assert (= bs!1268626 (and b!5499846 b!5499138)))

(assert (=> bs!1268626 (not (= lambda!294453 lambda!294418))))

(declare-fun bs!1268627 () Bool)

(assert (= bs!1268627 (and b!5499846 b!5499373)))

(assert (=> bs!1268627 (not (= lambda!294453 lambda!294429))))

(declare-fun bs!1268628 () Bool)

(assert (= bs!1268628 (and b!5499846 b!5499733)))

(assert (=> bs!1268628 (= (and (= (regOne!31454 (regTwo!31455 (regOne!31455 r!7292))) (regOne!31454 (regTwo!31455 (regTwo!31455 r!7292)))) (= (regTwo!31454 (regTwo!31455 (regOne!31455 r!7292))) (regTwo!31454 (regTwo!31455 (regTwo!31455 r!7292))))) (= lambda!294453 lambda!294444))))

(declare-fun bs!1268629 () Bool)

(assert (= bs!1268629 (and b!5499846 b!5499314)))

(assert (=> bs!1268629 (not (= lambda!294453 lambda!294427))))

(assert (=> b!5499846 true))

(assert (=> b!5499846 true))

(declare-fun e!3402122 () Bool)

(declare-fun call!405942 () Bool)

(assert (=> b!5499846 (= e!3402122 call!405942)))

(declare-fun b!5499848 () Bool)

(declare-fun e!3402120 () Bool)

(assert (=> b!5499848 (= e!3402120 e!3402122)))

(declare-fun c!960582 () Bool)

(assert (=> b!5499848 (= c!960582 ((_ is Star!15471) (regTwo!31455 (regOne!31455 r!7292))))))

(declare-fun d!1743461 () Bool)

(declare-fun c!960583 () Bool)

(assert (=> d!1743461 (= c!960583 ((_ is EmptyExpr!15471) (regTwo!31455 (regOne!31455 r!7292))))))

(declare-fun e!3402117 () Bool)

(assert (=> d!1743461 (= (matchRSpec!2574 (regTwo!31455 (regOne!31455 r!7292)) s!2326) e!3402117)))

(declare-fun b!5499847 () Bool)

(declare-fun c!960581 () Bool)

(assert (=> b!5499847 (= c!960581 ((_ is ElementMatch!15471) (regTwo!31455 (regOne!31455 r!7292))))))

(declare-fun e!3402121 () Bool)

(declare-fun e!3402119 () Bool)

(assert (=> b!5499847 (= e!3402121 e!3402119)))

(declare-fun b!5499849 () Bool)

(declare-fun e!3402116 () Bool)

(assert (=> b!5499849 (= e!3402116 (matchRSpec!2574 (regTwo!31455 (regTwo!31455 (regOne!31455 r!7292))) s!2326))))

(declare-fun b!5499850 () Bool)

(assert (=> b!5499850 (= e!3402119 (= s!2326 (Cons!62590 (c!960293 (regTwo!31455 (regOne!31455 r!7292))) Nil!62590)))))

(declare-fun b!5499851 () Bool)

(assert (=> b!5499851 (= e!3402120 e!3402116)))

(declare-fun res!2344460 () Bool)

(assert (=> b!5499851 (= res!2344460 (matchRSpec!2574 (regOne!31455 (regTwo!31455 (regOne!31455 r!7292))) s!2326))))

(assert (=> b!5499851 (=> res!2344460 e!3402116)))

(declare-fun b!5499852 () Bool)

(declare-fun call!405943 () Bool)

(assert (=> b!5499852 (= e!3402117 call!405943)))

(declare-fun b!5499853 () Bool)

(declare-fun res!2344459 () Bool)

(declare-fun e!3402118 () Bool)

(assert (=> b!5499853 (=> res!2344459 e!3402118)))

(assert (=> b!5499853 (= res!2344459 call!405943)))

(assert (=> b!5499853 (= e!3402122 e!3402118)))

(declare-fun bm!405937 () Bool)

(assert (=> bm!405937 (= call!405942 (Exists!2579 (ite c!960582 lambda!294452 lambda!294453)))))

(declare-fun b!5499854 () Bool)

(declare-fun c!960580 () Bool)

(assert (=> b!5499854 (= c!960580 ((_ is Union!15471) (regTwo!31455 (regOne!31455 r!7292))))))

(assert (=> b!5499854 (= e!3402119 e!3402120)))

(declare-fun b!5499855 () Bool)

(assert (=> b!5499855 (= e!3402117 e!3402121)))

(declare-fun res!2344461 () Bool)

(assert (=> b!5499855 (= res!2344461 (not ((_ is EmptyLang!15471) (regTwo!31455 (regOne!31455 r!7292)))))))

(assert (=> b!5499855 (=> (not res!2344461) (not e!3402121))))

(declare-fun bm!405938 () Bool)

(assert (=> bm!405938 (= call!405943 (isEmpty!34387 s!2326))))

(assert (=> b!5499856 (= e!3402118 call!405942)))

(assert (= (and d!1743461 c!960583) b!5499852))

(assert (= (and d!1743461 (not c!960583)) b!5499855))

(assert (= (and b!5499855 res!2344461) b!5499847))

(assert (= (and b!5499847 c!960581) b!5499850))

(assert (= (and b!5499847 (not c!960581)) b!5499854))

(assert (= (and b!5499854 c!960580) b!5499851))

(assert (= (and b!5499854 (not c!960580)) b!5499848))

(assert (= (and b!5499851 (not res!2344460)) b!5499849))

(assert (= (and b!5499848 c!960582) b!5499853))

(assert (= (and b!5499848 (not c!960582)) b!5499846))

(assert (= (and b!5499853 (not res!2344459)) b!5499856))

(assert (= (or b!5499856 b!5499846) bm!405937))

(assert (= (or b!5499852 b!5499853) bm!405938))

(declare-fun m!6508290 () Bool)

(assert (=> b!5499849 m!6508290))

(declare-fun m!6508292 () Bool)

(assert (=> b!5499851 m!6508292))

(declare-fun m!6508294 () Bool)

(assert (=> bm!405937 m!6508294))

(assert (=> bm!405938 m!6507820))

(assert (=> b!5499366 d!1743461))

(declare-fun d!1743463 () Bool)

(declare-fun c!960586 () Bool)

(assert (=> d!1743463 (= c!960586 ((_ is Nil!62589) lt!2243151))))

(declare-fun e!3402125 () (InoxSet Context!9710))

(assert (=> d!1743463 (= (content!11241 lt!2243151) e!3402125)))

(declare-fun b!5499861 () Bool)

(assert (=> b!5499861 (= e!3402125 ((as const (Array Context!9710 Bool)) false))))

(declare-fun b!5499862 () Bool)

(assert (=> b!5499862 (= e!3402125 ((_ map or) (store ((as const (Array Context!9710 Bool)) false) (h!69037 lt!2243151) true) (content!11241 (t!375948 lt!2243151))))))

(assert (= (and d!1743463 c!960586) b!5499861))

(assert (= (and d!1743463 (not c!960586)) b!5499862))

(declare-fun m!6508296 () Bool)

(assert (=> b!5499862 m!6508296))

(declare-fun m!6508298 () Bool)

(assert (=> b!5499862 m!6508298))

(assert (=> b!5499399 d!1743463))

(declare-fun d!1743465 () Bool)

(assert (=> d!1743465 (= (nullable!5513 (regTwo!31455 r!7292)) (nullableFct!1648 (regTwo!31455 r!7292)))))

(declare-fun bs!1268630 () Bool)

(assert (= bs!1268630 d!1743465))

(declare-fun m!6508300 () Bool)

(assert (=> bs!1268630 m!6508300))

(assert (=> b!5499343 d!1743465))

(assert (=> bm!405859 d!1743363))

(assert (=> d!1743303 d!1743311))

(assert (=> d!1743303 d!1743309))

(declare-fun d!1743467 () Bool)

(assert (=> d!1743467 (= (matchR!7656 (regOne!31455 r!7292) s!2326) (matchRSpec!2574 (regOne!31455 r!7292) s!2326))))

(assert (=> d!1743467 true))

(declare-fun _$88!3727 () Unit!155402)

(assert (=> d!1743467 (= (choose!41794 (regOne!31455 r!7292) s!2326) _$88!3727)))

(declare-fun bs!1268631 () Bool)

(assert (= bs!1268631 d!1743467))

(assert (=> bs!1268631 m!6507696))

(assert (=> bs!1268631 m!6507692))

(assert (=> d!1743303 d!1743467))

(declare-fun bm!405939 () Bool)

(declare-fun call!405946 () Bool)

(declare-fun c!960588 () Bool)

(assert (=> bm!405939 (= call!405946 (validRegex!7207 (ite c!960588 (regOne!31455 (regOne!31455 r!7292)) (regOne!31454 (regOne!31455 r!7292)))))))

(declare-fun b!5499863 () Bool)

(declare-fun res!2344465 () Bool)

(declare-fun e!3402127 () Bool)

(assert (=> b!5499863 (=> (not res!2344465) (not e!3402127))))

(assert (=> b!5499863 (= res!2344465 call!405946)))

(declare-fun e!3402128 () Bool)

(assert (=> b!5499863 (= e!3402128 e!3402127)))

(declare-fun b!5499864 () Bool)

(declare-fun res!2344466 () Bool)

(declare-fun e!3402129 () Bool)

(assert (=> b!5499864 (=> res!2344466 e!3402129)))

(assert (=> b!5499864 (= res!2344466 (not ((_ is Concat!24316) (regOne!31455 r!7292))))))

(assert (=> b!5499864 (= e!3402128 e!3402129)))

(declare-fun b!5499865 () Bool)

(declare-fun call!405944 () Bool)

(assert (=> b!5499865 (= e!3402127 call!405944)))

(declare-fun bm!405940 () Bool)

(declare-fun call!405945 () Bool)

(assert (=> bm!405940 (= call!405944 call!405945)))

(declare-fun b!5499866 () Bool)

(declare-fun e!3402132 () Bool)

(assert (=> b!5499866 (= e!3402129 e!3402132)))

(declare-fun res!2344462 () Bool)

(assert (=> b!5499866 (=> (not res!2344462) (not e!3402132))))

(assert (=> b!5499866 (= res!2344462 call!405946)))

(declare-fun b!5499867 () Bool)

(declare-fun e!3402131 () Bool)

(declare-fun e!3402130 () Bool)

(assert (=> b!5499867 (= e!3402131 e!3402130)))

(declare-fun c!960587 () Bool)

(assert (=> b!5499867 (= c!960587 ((_ is Star!15471) (regOne!31455 r!7292)))))

(declare-fun b!5499868 () Bool)

(assert (=> b!5499868 (= e!3402130 e!3402128)))

(assert (=> b!5499868 (= c!960588 ((_ is Union!15471) (regOne!31455 r!7292)))))

(declare-fun b!5499869 () Bool)

(assert (=> b!5499869 (= e!3402132 call!405944)))

(declare-fun b!5499870 () Bool)

(declare-fun e!3402126 () Bool)

(assert (=> b!5499870 (= e!3402126 call!405945)))

(declare-fun b!5499871 () Bool)

(assert (=> b!5499871 (= e!3402130 e!3402126)))

(declare-fun res!2344464 () Bool)

(assert (=> b!5499871 (= res!2344464 (not (nullable!5513 (reg!15800 (regOne!31455 r!7292)))))))

(assert (=> b!5499871 (=> (not res!2344464) (not e!3402126))))

(declare-fun bm!405941 () Bool)

(assert (=> bm!405941 (= call!405945 (validRegex!7207 (ite c!960587 (reg!15800 (regOne!31455 r!7292)) (ite c!960588 (regTwo!31455 (regOne!31455 r!7292)) (regTwo!31454 (regOne!31455 r!7292))))))))

(declare-fun d!1743469 () Bool)

(declare-fun res!2344463 () Bool)

(assert (=> d!1743469 (=> res!2344463 e!3402131)))

(assert (=> d!1743469 (= res!2344463 ((_ is ElementMatch!15471) (regOne!31455 r!7292)))))

(assert (=> d!1743469 (= (validRegex!7207 (regOne!31455 r!7292)) e!3402131)))

(assert (= (and d!1743469 (not res!2344463)) b!5499867))

(assert (= (and b!5499867 c!960587) b!5499871))

(assert (= (and b!5499867 (not c!960587)) b!5499868))

(assert (= (and b!5499871 res!2344464) b!5499870))

(assert (= (and b!5499868 c!960588) b!5499863))

(assert (= (and b!5499868 (not c!960588)) b!5499864))

(assert (= (and b!5499863 res!2344465) b!5499865))

(assert (= (and b!5499864 (not res!2344466)) b!5499866))

(assert (= (and b!5499866 res!2344462) b!5499869))

(assert (= (or b!5499865 b!5499869) bm!405940))

(assert (= (or b!5499863 b!5499866) bm!405939))

(assert (= (or b!5499870 bm!405940) bm!405941))

(declare-fun m!6508302 () Bool)

(assert (=> bm!405939 m!6508302))

(declare-fun m!6508304 () Bool)

(assert (=> b!5499871 m!6508304))

(declare-fun m!6508306 () Bool)

(assert (=> bm!405941 m!6508306))

(assert (=> d!1743303 d!1743469))

(assert (=> d!1743277 d!1743265))

(assert (=> d!1743277 d!1743253))

(declare-fun d!1743471 () Bool)

(assert (=> d!1743471 (= (matchR!7656 r!7292 s!2326) (matchRSpec!2574 r!7292 s!2326))))

(assert (=> d!1743471 true))

(declare-fun _$88!3728 () Unit!155402)

(assert (=> d!1743471 (= (choose!41794 r!7292 s!2326) _$88!3728)))

(declare-fun bs!1268632 () Bool)

(assert (= bs!1268632 d!1743471))

(assert (=> bs!1268632 m!6507676))

(assert (=> bs!1268632 m!6507674))

(assert (=> d!1743277 d!1743471))

(assert (=> d!1743277 d!1743329))

(declare-fun d!1743473 () Bool)

(assert (=> d!1743473 (= ($colon$colon!1567 (exprs!5355 lt!2243099) (ite (or c!960503 c!960501) (regTwo!31454 r!7292) r!7292)) (Cons!62588 (ite (or c!960503 c!960501) (regTwo!31454 r!7292) r!7292) (exprs!5355 lt!2243099)))))

(assert (=> bm!405875 d!1743473))

(assert (=> b!5499387 d!1743373))

(assert (=> b!5499387 d!1743357))

(declare-fun d!1743475 () Bool)

(assert (=> d!1743475 (= (isEmpty!34386 (t!375947 (exprs!5355 (h!69037 zl!343)))) ((_ is Nil!62588) (t!375947 (exprs!5355 (h!69037 zl!343)))))))

(assert (=> b!5499456 d!1743475))

(assert (=> d!1743311 d!1743363))

(assert (=> d!1743311 d!1743469))

(assert (=> b!5499341 d!1743355))

(declare-fun bs!1268633 () Bool)

(declare-fun b!5499882 () Bool)

(assert (= bs!1268633 (and b!5499882 b!5499856)))

(declare-fun lambda!294454 () Int)

(assert (=> bs!1268633 (= (and (= (reg!15800 (regOne!31455 (regTwo!31455 r!7292))) (reg!15800 (regTwo!31455 (regOne!31455 r!7292)))) (= (regOne!31455 (regTwo!31455 r!7292)) (regTwo!31455 (regOne!31455 r!7292)))) (= lambda!294454 lambda!294452))))

(declare-fun bs!1268634 () Bool)

(assert (= bs!1268634 (and b!5499882 b!5499743)))

(assert (=> bs!1268634 (= (and (= (reg!15800 (regOne!31455 (regTwo!31455 r!7292))) (reg!15800 (regTwo!31455 (regTwo!31455 r!7292)))) (= (regOne!31455 (regTwo!31455 r!7292)) (regTwo!31455 (regTwo!31455 r!7292)))) (= lambda!294454 lambda!294443))))

(declare-fun bs!1268635 () Bool)

(assert (= bs!1268635 (and b!5499882 b!5499788)))

(assert (=> bs!1268635 (= (and (= (reg!15800 (regOne!31455 (regTwo!31455 r!7292))) (reg!15800 (regOne!31455 (regOne!31455 r!7292)))) (= (regOne!31455 (regTwo!31455 r!7292)) (regOne!31455 (regOne!31455 r!7292)))) (= lambda!294454 lambda!294450))))

(declare-fun bs!1268636 () Bool)

(assert (= bs!1268636 (and b!5499882 b!5499778)))

(assert (=> bs!1268636 (not (= lambda!294454 lambda!294451))))

(declare-fun bs!1268637 () Bool)

(assert (= bs!1268637 (and b!5499882 b!5499363)))

(assert (=> bs!1268637 (not (= lambda!294454 lambda!294430))))

(declare-fun bs!1268638 () Bool)

(assert (= bs!1268638 (and b!5499882 b!5499304)))

(assert (=> bs!1268638 (not (= lambda!294454 lambda!294428))))

(declare-fun bs!1268639 () Bool)

(assert (= bs!1268639 (and b!5499882 b!5499128)))

(assert (=> bs!1268639 (not (= lambda!294454 lambda!294419))))

(declare-fun bs!1268640 () Bool)

(assert (= bs!1268640 (and b!5499882 b!5499138)))

(assert (=> bs!1268640 (= (and (= (reg!15800 (regOne!31455 (regTwo!31455 r!7292))) (reg!15800 r!7292)) (= (regOne!31455 (regTwo!31455 r!7292)) r!7292)) (= lambda!294454 lambda!294418))))

(declare-fun bs!1268641 () Bool)

(assert (= bs!1268641 (and b!5499882 b!5499373)))

(assert (=> bs!1268641 (= (and (= (reg!15800 (regOne!31455 (regTwo!31455 r!7292))) (reg!15800 (regOne!31455 r!7292))) (= (regOne!31455 (regTwo!31455 r!7292)) (regOne!31455 r!7292))) (= lambda!294454 lambda!294429))))

(declare-fun bs!1268642 () Bool)

(assert (= bs!1268642 (and b!5499882 b!5499846)))

(assert (=> bs!1268642 (not (= lambda!294454 lambda!294453))))

(declare-fun bs!1268643 () Bool)

(assert (= bs!1268643 (and b!5499882 b!5499733)))

(assert (=> bs!1268643 (not (= lambda!294454 lambda!294444))))

(declare-fun bs!1268644 () Bool)

(assert (= bs!1268644 (and b!5499882 b!5499314)))

(assert (=> bs!1268644 (= (and (= (reg!15800 (regOne!31455 (regTwo!31455 r!7292))) (reg!15800 (regTwo!31455 r!7292))) (= (regOne!31455 (regTwo!31455 r!7292)) (regTwo!31455 r!7292))) (= lambda!294454 lambda!294427))))

(assert (=> b!5499882 true))

(assert (=> b!5499882 true))

(declare-fun bs!1268645 () Bool)

(declare-fun b!5499872 () Bool)

(assert (= bs!1268645 (and b!5499872 b!5499856)))

(declare-fun lambda!294455 () Int)

(assert (=> bs!1268645 (not (= lambda!294455 lambda!294452))))

(declare-fun bs!1268646 () Bool)

(assert (= bs!1268646 (and b!5499872 b!5499743)))

(assert (=> bs!1268646 (not (= lambda!294455 lambda!294443))))

(declare-fun bs!1268647 () Bool)

(assert (= bs!1268647 (and b!5499872 b!5499788)))

(assert (=> bs!1268647 (not (= lambda!294455 lambda!294450))))

(declare-fun bs!1268648 () Bool)

(assert (= bs!1268648 (and b!5499872 b!5499778)))

(assert (=> bs!1268648 (= (and (= (regOne!31454 (regOne!31455 (regTwo!31455 r!7292))) (regOne!31454 (regOne!31455 (regOne!31455 r!7292)))) (= (regTwo!31454 (regOne!31455 (regTwo!31455 r!7292))) (regTwo!31454 (regOne!31455 (regOne!31455 r!7292))))) (= lambda!294455 lambda!294451))))

(declare-fun bs!1268649 () Bool)

(assert (= bs!1268649 (and b!5499872 b!5499363)))

(assert (=> bs!1268649 (= (and (= (regOne!31454 (regOne!31455 (regTwo!31455 r!7292))) (regOne!31454 (regOne!31455 r!7292))) (= (regTwo!31454 (regOne!31455 (regTwo!31455 r!7292))) (regTwo!31454 (regOne!31455 r!7292)))) (= lambda!294455 lambda!294430))))

(declare-fun bs!1268650 () Bool)

(assert (= bs!1268650 (and b!5499872 b!5499304)))

(assert (=> bs!1268650 (= (and (= (regOne!31454 (regOne!31455 (regTwo!31455 r!7292))) (regOne!31454 (regTwo!31455 r!7292))) (= (regTwo!31454 (regOne!31455 (regTwo!31455 r!7292))) (regTwo!31454 (regTwo!31455 r!7292)))) (= lambda!294455 lambda!294428))))

(declare-fun bs!1268651 () Bool)

(assert (= bs!1268651 (and b!5499872 b!5499128)))

(assert (=> bs!1268651 (= (and (= (regOne!31454 (regOne!31455 (regTwo!31455 r!7292))) (regOne!31454 r!7292)) (= (regTwo!31454 (regOne!31455 (regTwo!31455 r!7292))) (regTwo!31454 r!7292))) (= lambda!294455 lambda!294419))))

(declare-fun bs!1268652 () Bool)

(assert (= bs!1268652 (and b!5499872 b!5499138)))

(assert (=> bs!1268652 (not (= lambda!294455 lambda!294418))))

(declare-fun bs!1268653 () Bool)

(assert (= bs!1268653 (and b!5499872 b!5499373)))

(assert (=> bs!1268653 (not (= lambda!294455 lambda!294429))))

(declare-fun bs!1268654 () Bool)

(assert (= bs!1268654 (and b!5499872 b!5499733)))

(assert (=> bs!1268654 (= (and (= (regOne!31454 (regOne!31455 (regTwo!31455 r!7292))) (regOne!31454 (regTwo!31455 (regTwo!31455 r!7292)))) (= (regTwo!31454 (regOne!31455 (regTwo!31455 r!7292))) (regTwo!31454 (regTwo!31455 (regTwo!31455 r!7292))))) (= lambda!294455 lambda!294444))))

(declare-fun bs!1268655 () Bool)

(assert (= bs!1268655 (and b!5499872 b!5499314)))

(assert (=> bs!1268655 (not (= lambda!294455 lambda!294427))))

(declare-fun bs!1268656 () Bool)

(assert (= bs!1268656 (and b!5499872 b!5499882)))

(assert (=> bs!1268656 (not (= lambda!294455 lambda!294454))))

(declare-fun bs!1268657 () Bool)

(assert (= bs!1268657 (and b!5499872 b!5499846)))

(assert (=> bs!1268657 (= (and (= (regOne!31454 (regOne!31455 (regTwo!31455 r!7292))) (regOne!31454 (regTwo!31455 (regOne!31455 r!7292)))) (= (regTwo!31454 (regOne!31455 (regTwo!31455 r!7292))) (regTwo!31454 (regTwo!31455 (regOne!31455 r!7292))))) (= lambda!294455 lambda!294453))))

(assert (=> b!5499872 true))

(assert (=> b!5499872 true))

(declare-fun e!3402139 () Bool)

(declare-fun call!405947 () Bool)

(assert (=> b!5499872 (= e!3402139 call!405947)))

(declare-fun b!5499874 () Bool)

(declare-fun e!3402137 () Bool)

(assert (=> b!5499874 (= e!3402137 e!3402139)))

(declare-fun c!960591 () Bool)

(assert (=> b!5499874 (= c!960591 ((_ is Star!15471) (regOne!31455 (regTwo!31455 r!7292))))))

(declare-fun d!1743477 () Bool)

(declare-fun c!960592 () Bool)

(assert (=> d!1743477 (= c!960592 ((_ is EmptyExpr!15471) (regOne!31455 (regTwo!31455 r!7292))))))

(declare-fun e!3402134 () Bool)

(assert (=> d!1743477 (= (matchRSpec!2574 (regOne!31455 (regTwo!31455 r!7292)) s!2326) e!3402134)))

(declare-fun b!5499873 () Bool)

(declare-fun c!960590 () Bool)

(assert (=> b!5499873 (= c!960590 ((_ is ElementMatch!15471) (regOne!31455 (regTwo!31455 r!7292))))))

(declare-fun e!3402138 () Bool)

(declare-fun e!3402136 () Bool)

(assert (=> b!5499873 (= e!3402138 e!3402136)))

(declare-fun b!5499875 () Bool)

(declare-fun e!3402133 () Bool)

(assert (=> b!5499875 (= e!3402133 (matchRSpec!2574 (regTwo!31455 (regOne!31455 (regTwo!31455 r!7292))) s!2326))))

(declare-fun b!5499876 () Bool)

(assert (=> b!5499876 (= e!3402136 (= s!2326 (Cons!62590 (c!960293 (regOne!31455 (regTwo!31455 r!7292))) Nil!62590)))))

(declare-fun b!5499877 () Bool)

(assert (=> b!5499877 (= e!3402137 e!3402133)))

(declare-fun res!2344468 () Bool)

(assert (=> b!5499877 (= res!2344468 (matchRSpec!2574 (regOne!31455 (regOne!31455 (regTwo!31455 r!7292))) s!2326))))

(assert (=> b!5499877 (=> res!2344468 e!3402133)))

(declare-fun b!5499878 () Bool)

(declare-fun call!405948 () Bool)

(assert (=> b!5499878 (= e!3402134 call!405948)))

(declare-fun b!5499879 () Bool)

(declare-fun res!2344467 () Bool)

(declare-fun e!3402135 () Bool)

(assert (=> b!5499879 (=> res!2344467 e!3402135)))

(assert (=> b!5499879 (= res!2344467 call!405948)))

(assert (=> b!5499879 (= e!3402139 e!3402135)))

(declare-fun bm!405942 () Bool)

(assert (=> bm!405942 (= call!405947 (Exists!2579 (ite c!960591 lambda!294454 lambda!294455)))))

(declare-fun b!5499880 () Bool)

(declare-fun c!960589 () Bool)

(assert (=> b!5499880 (= c!960589 ((_ is Union!15471) (regOne!31455 (regTwo!31455 r!7292))))))

(assert (=> b!5499880 (= e!3402136 e!3402137)))

(declare-fun b!5499881 () Bool)

(assert (=> b!5499881 (= e!3402134 e!3402138)))

(declare-fun res!2344469 () Bool)

(assert (=> b!5499881 (= res!2344469 (not ((_ is EmptyLang!15471) (regOne!31455 (regTwo!31455 r!7292)))))))

(assert (=> b!5499881 (=> (not res!2344469) (not e!3402138))))

(declare-fun bm!405943 () Bool)

(assert (=> bm!405943 (= call!405948 (isEmpty!34387 s!2326))))

(assert (=> b!5499882 (= e!3402135 call!405947)))

(assert (= (and d!1743477 c!960592) b!5499878))

(assert (= (and d!1743477 (not c!960592)) b!5499881))

(assert (= (and b!5499881 res!2344469) b!5499873))

(assert (= (and b!5499873 c!960590) b!5499876))

(assert (= (and b!5499873 (not c!960590)) b!5499880))

(assert (= (and b!5499880 c!960589) b!5499877))

(assert (= (and b!5499880 (not c!960589)) b!5499874))

(assert (= (and b!5499877 (not res!2344468)) b!5499875))

(assert (= (and b!5499874 c!960591) b!5499879))

(assert (= (and b!5499874 (not c!960591)) b!5499872))

(assert (= (and b!5499879 (not res!2344467)) b!5499882))

(assert (= (or b!5499882 b!5499872) bm!405942))

(assert (= (or b!5499878 b!5499879) bm!405943))

(declare-fun m!6508308 () Bool)

(assert (=> b!5499875 m!6508308))

(declare-fun m!6508310 () Bool)

(assert (=> b!5499877 m!6508310))

(declare-fun m!6508312 () Bool)

(assert (=> bm!405942 m!6508312))

(assert (=> bm!405943 m!6507820))

(assert (=> b!5499309 d!1743477))

(assert (=> b!5499374 d!1743355))

(declare-fun d!1743479 () Bool)

(assert (=> d!1743479 (= (head!11778 (unfocusZipperList!899 zl!343)) (h!69036 (unfocusZipperList!899 zl!343)))))

(assert (=> b!5499004 d!1743479))

(declare-fun d!1743481 () Bool)

(assert (=> d!1743481 (= (isEmptyExpr!1059 lt!2243157) ((_ is EmptyExpr!15471) lt!2243157))))

(assert (=> b!5499458 d!1743481))

(assert (=> d!1743307 d!1743305))

(assert (=> d!1743307 d!1743295))

(declare-fun d!1743483 () Bool)

(assert (=> d!1743483 (= (matchR!7656 (regTwo!31455 r!7292) s!2326) (matchRSpec!2574 (regTwo!31455 r!7292) s!2326))))

(assert (=> d!1743483 true))

(declare-fun _$88!3729 () Unit!155402)

(assert (=> d!1743483 (= (choose!41794 (regTwo!31455 r!7292) s!2326) _$88!3729)))

(declare-fun bs!1268658 () Bool)

(assert (= bs!1268658 d!1743483))

(assert (=> bs!1268658 m!6507690))

(assert (=> bs!1268658 m!6507686))

(assert (=> d!1743307 d!1743483))

(declare-fun bm!405944 () Bool)

(declare-fun call!405951 () Bool)

(declare-fun c!960594 () Bool)

(assert (=> bm!405944 (= call!405951 (validRegex!7207 (ite c!960594 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))))))

(declare-fun b!5499883 () Bool)

(declare-fun res!2344473 () Bool)

(declare-fun e!3402141 () Bool)

(assert (=> b!5499883 (=> (not res!2344473) (not e!3402141))))

(assert (=> b!5499883 (= res!2344473 call!405951)))

(declare-fun e!3402142 () Bool)

(assert (=> b!5499883 (= e!3402142 e!3402141)))

(declare-fun b!5499884 () Bool)

(declare-fun res!2344474 () Bool)

(declare-fun e!3402143 () Bool)

(assert (=> b!5499884 (=> res!2344474 e!3402143)))

(assert (=> b!5499884 (= res!2344474 (not ((_ is Concat!24316) (regTwo!31455 r!7292))))))

(assert (=> b!5499884 (= e!3402142 e!3402143)))

(declare-fun b!5499885 () Bool)

(declare-fun call!405949 () Bool)

(assert (=> b!5499885 (= e!3402141 call!405949)))

(declare-fun bm!405945 () Bool)

(declare-fun call!405950 () Bool)

(assert (=> bm!405945 (= call!405949 call!405950)))

(declare-fun b!5499886 () Bool)

(declare-fun e!3402146 () Bool)

(assert (=> b!5499886 (= e!3402143 e!3402146)))

(declare-fun res!2344470 () Bool)

(assert (=> b!5499886 (=> (not res!2344470) (not e!3402146))))

(assert (=> b!5499886 (= res!2344470 call!405951)))

(declare-fun b!5499887 () Bool)

(declare-fun e!3402145 () Bool)

(declare-fun e!3402144 () Bool)

(assert (=> b!5499887 (= e!3402145 e!3402144)))

(declare-fun c!960593 () Bool)

(assert (=> b!5499887 (= c!960593 ((_ is Star!15471) (regTwo!31455 r!7292)))))

(declare-fun b!5499888 () Bool)

(assert (=> b!5499888 (= e!3402144 e!3402142)))

(assert (=> b!5499888 (= c!960594 ((_ is Union!15471) (regTwo!31455 r!7292)))))

(declare-fun b!5499889 () Bool)

(assert (=> b!5499889 (= e!3402146 call!405949)))

(declare-fun b!5499890 () Bool)

(declare-fun e!3402140 () Bool)

(assert (=> b!5499890 (= e!3402140 call!405950)))

(declare-fun b!5499891 () Bool)

(assert (=> b!5499891 (= e!3402144 e!3402140)))

(declare-fun res!2344472 () Bool)

(assert (=> b!5499891 (= res!2344472 (not (nullable!5513 (reg!15800 (regTwo!31455 r!7292)))))))

(assert (=> b!5499891 (=> (not res!2344472) (not e!3402140))))

(declare-fun bm!405946 () Bool)

(assert (=> bm!405946 (= call!405950 (validRegex!7207 (ite c!960593 (reg!15800 (regTwo!31455 r!7292)) (ite c!960594 (regTwo!31455 (regTwo!31455 r!7292)) (regTwo!31454 (regTwo!31455 r!7292))))))))

(declare-fun d!1743485 () Bool)

(declare-fun res!2344471 () Bool)

(assert (=> d!1743485 (=> res!2344471 e!3402145)))

(assert (=> d!1743485 (= res!2344471 ((_ is ElementMatch!15471) (regTwo!31455 r!7292)))))

(assert (=> d!1743485 (= (validRegex!7207 (regTwo!31455 r!7292)) e!3402145)))

(assert (= (and d!1743485 (not res!2344471)) b!5499887))

(assert (= (and b!5499887 c!960593) b!5499891))

(assert (= (and b!5499887 (not c!960593)) b!5499888))

(assert (= (and b!5499891 res!2344472) b!5499890))

(assert (= (and b!5499888 c!960594) b!5499883))

(assert (= (and b!5499888 (not c!960594)) b!5499884))

(assert (= (and b!5499883 res!2344473) b!5499885))

(assert (= (and b!5499884 (not res!2344474)) b!5499886))

(assert (= (and b!5499886 res!2344470) b!5499889))

(assert (= (or b!5499885 b!5499889) bm!405945))

(assert (= (or b!5499883 b!5499886) bm!405944))

(assert (= (or b!5499890 bm!405945) bm!405946))

(declare-fun m!6508314 () Bool)

(assert (=> bm!405944 m!6508314))

(declare-fun m!6508316 () Bool)

(assert (=> b!5499891 m!6508316))

(declare-fun m!6508318 () Bool)

(assert (=> bm!405946 m!6508318))

(assert (=> d!1743307 d!1743485))

(declare-fun b!5499892 () Bool)

(declare-fun e!3402150 () Bool)

(assert (=> b!5499892 (= e!3402150 (nullable!5513 (regOne!31454 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292))))))))

(declare-fun b!5499893 () Bool)

(declare-fun c!960598 () Bool)

(assert (=> b!5499893 (= c!960598 ((_ is Star!15471) (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))))))

(declare-fun e!3402152 () (InoxSet Context!9710))

(declare-fun e!3402148 () (InoxSet Context!9710))

(assert (=> b!5499893 (= e!3402152 e!3402148)))

(declare-fun b!5499894 () Bool)

(declare-fun e!3402147 () (InoxSet Context!9710))

(declare-fun call!405953 () (InoxSet Context!9710))

(declare-fun call!405954 () (InoxSet Context!9710))

(assert (=> b!5499894 (= e!3402147 ((_ map or) call!405953 call!405954))))

(declare-fun bm!405947 () Bool)

(declare-fun c!960599 () Bool)

(declare-fun call!405956 () List!62712)

(assert (=> bm!405947 (= call!405953 (derivationStepZipperDown!817 (ite c!960599 (regOne!31455 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))) (regOne!31454 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292))))) (ite c!960599 (ite c!960435 lt!2243099 (Context!9711 call!405844)) (Context!9711 call!405956)) (h!69038 s!2326)))))

(declare-fun e!3402149 () (InoxSet Context!9710))

(declare-fun b!5499895 () Bool)

(assert (=> b!5499895 (= e!3402149 (store ((as const (Array Context!9710 Bool)) false) (ite c!960435 lt!2243099 (Context!9711 call!405844)) true))))

(declare-fun bm!405948 () Bool)

(declare-fun call!405952 () List!62712)

(assert (=> bm!405948 (= call!405952 call!405956)))

(declare-fun b!5499896 () Bool)

(assert (=> b!5499896 (= e!3402149 e!3402147)))

(assert (=> b!5499896 (= c!960599 ((_ is Union!15471) (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))))))

(declare-fun c!960597 () Bool)

(declare-fun bm!405949 () Bool)

(declare-fun c!960595 () Bool)

(assert (=> bm!405949 (= call!405954 (derivationStepZipperDown!817 (ite c!960599 (regTwo!31455 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))) (ite c!960597 (regTwo!31454 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))) (ite c!960595 (regOne!31454 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))) (reg!15800 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292))))))) (ite (or c!960599 c!960597) (ite c!960435 lt!2243099 (Context!9711 call!405844)) (Context!9711 call!405952)) (h!69038 s!2326)))))

(declare-fun b!5499897 () Bool)

(declare-fun call!405955 () (InoxSet Context!9710))

(assert (=> b!5499897 (= e!3402148 call!405955)))

(declare-fun b!5499898 () Bool)

(assert (=> b!5499898 (= c!960597 e!3402150)))

(declare-fun res!2344475 () Bool)

(assert (=> b!5499898 (=> (not res!2344475) (not e!3402150))))

(assert (=> b!5499898 (= res!2344475 ((_ is Concat!24316) (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))))))

(declare-fun e!3402151 () (InoxSet Context!9710))

(assert (=> b!5499898 (= e!3402147 e!3402151)))

(declare-fun bm!405950 () Bool)

(assert (=> bm!405950 (= call!405956 ($colon$colon!1567 (exprs!5355 (ite c!960435 lt!2243099 (Context!9711 call!405844))) (ite (or c!960597 c!960595) (regTwo!31454 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))) (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292))))))))

(declare-fun b!5499899 () Bool)

(declare-fun call!405957 () (InoxSet Context!9710))

(assert (=> b!5499899 (= e!3402151 ((_ map or) call!405953 call!405957))))

(declare-fun b!5499900 () Bool)

(assert (=> b!5499900 (= e!3402151 e!3402152)))

(assert (=> b!5499900 (= c!960595 ((_ is Concat!24316) (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))))))

(declare-fun b!5499901 () Bool)

(assert (=> b!5499901 (= e!3402152 call!405955)))

(declare-fun bm!405952 () Bool)

(assert (=> bm!405952 (= call!405957 call!405954)))

(declare-fun b!5499902 () Bool)

(assert (=> b!5499902 (= e!3402148 ((as const (Array Context!9710 Bool)) false))))

(declare-fun c!960596 () Bool)

(declare-fun d!1743487 () Bool)

(assert (=> d!1743487 (= c!960596 (and ((_ is ElementMatch!15471) (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))) (= (c!960293 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292)))) (h!69038 s!2326))))))

(assert (=> d!1743487 (= (derivationStepZipperDown!817 (ite c!960435 (regOne!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292))) (ite c!960435 lt!2243099 (Context!9711 call!405844)) (h!69038 s!2326)) e!3402149)))

(declare-fun bm!405951 () Bool)

(assert (=> bm!405951 (= call!405955 call!405957)))

(assert (= (and d!1743487 c!960596) b!5499895))

(assert (= (and d!1743487 (not c!960596)) b!5499896))

(assert (= (and b!5499896 c!960599) b!5499894))

(assert (= (and b!5499896 (not c!960599)) b!5499898))

(assert (= (and b!5499898 res!2344475) b!5499892))

(assert (= (and b!5499898 c!960597) b!5499899))

(assert (= (and b!5499898 (not c!960597)) b!5499900))

(assert (= (and b!5499900 c!960595) b!5499901))

(assert (= (and b!5499900 (not c!960595)) b!5499893))

(assert (= (and b!5499893 c!960598) b!5499897))

(assert (= (and b!5499893 (not c!960598)) b!5499902))

(assert (= (or b!5499901 b!5499897) bm!405948))

(assert (= (or b!5499901 b!5499897) bm!405951))

(assert (= (or b!5499899 bm!405948) bm!405950))

(assert (= (or b!5499899 bm!405951) bm!405952))

(assert (= (or b!5499894 bm!405952) bm!405949))

(assert (= (or b!5499894 b!5499899) bm!405947))

(declare-fun m!6508320 () Bool)

(assert (=> bm!405949 m!6508320))

(declare-fun m!6508322 () Bool)

(assert (=> bm!405947 m!6508322))

(declare-fun m!6508324 () Bool)

(assert (=> b!5499892 m!6508324))

(declare-fun m!6508326 () Bool)

(assert (=> b!5499895 m!6508326))

(declare-fun m!6508328 () Bool)

(assert (=> bm!405950 m!6508328))

(assert (=> bm!405835 d!1743487))

(declare-fun d!1743489 () Bool)

(assert (=> d!1743489 (= (isEmpty!34386 (exprs!5355 (h!69037 zl!343))) ((_ is Nil!62588) (exprs!5355 (h!69037 zl!343))))))

(assert (=> b!5499455 d!1743489))

(declare-fun b!5499903 () Bool)

(declare-fun e!3402154 () Bool)

(assert (=> b!5499903 (= e!3402154 (= (head!11780 (tail!10875 s!2326)) (c!960293 (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326)))))))

(declare-fun d!1743491 () Bool)

(declare-fun e!3402155 () Bool)

(assert (=> d!1743491 e!3402155))

(declare-fun c!960601 () Bool)

(assert (=> d!1743491 (= c!960601 ((_ is EmptyExpr!15471) (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326))))))

(declare-fun lt!2243165 () Bool)

(declare-fun e!3402156 () Bool)

(assert (=> d!1743491 (= lt!2243165 e!3402156)))

(declare-fun c!960600 () Bool)

(assert (=> d!1743491 (= c!960600 (isEmpty!34387 (tail!10875 s!2326)))))

(assert (=> d!1743491 (validRegex!7207 (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326)))))

(assert (=> d!1743491 (= (matchR!7656 (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326)) (tail!10875 s!2326)) lt!2243165)))

(declare-fun b!5499904 () Bool)

(declare-fun call!405958 () Bool)

(assert (=> b!5499904 (= e!3402155 (= lt!2243165 call!405958))))

(declare-fun bm!405953 () Bool)

(assert (=> bm!405953 (= call!405958 (isEmpty!34387 (tail!10875 s!2326)))))

(declare-fun b!5499905 () Bool)

(declare-fun res!2344478 () Bool)

(declare-fun e!3402158 () Bool)

(assert (=> b!5499905 (=> res!2344478 e!3402158)))

(assert (=> b!5499905 (= res!2344478 (not ((_ is ElementMatch!15471) (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326)))))))

(declare-fun e!3402153 () Bool)

(assert (=> b!5499905 (= e!3402153 e!3402158)))

(declare-fun b!5499906 () Bool)

(declare-fun res!2344480 () Bool)

(assert (=> b!5499906 (=> (not res!2344480) (not e!3402154))))

(assert (=> b!5499906 (= res!2344480 (not call!405958))))

(declare-fun b!5499907 () Bool)

(declare-fun e!3402157 () Bool)

(declare-fun e!3402159 () Bool)

(assert (=> b!5499907 (= e!3402157 e!3402159)))

(declare-fun res!2344479 () Bool)

(assert (=> b!5499907 (=> res!2344479 e!3402159)))

(assert (=> b!5499907 (= res!2344479 call!405958)))

(declare-fun b!5499908 () Bool)

(assert (=> b!5499908 (= e!3402156 (matchR!7656 (derivativeStep!4353 (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326)) (head!11780 (tail!10875 s!2326))) (tail!10875 (tail!10875 s!2326))))))

(declare-fun b!5499909 () Bool)

(declare-fun res!2344481 () Bool)

(assert (=> b!5499909 (=> (not res!2344481) (not e!3402154))))

(assert (=> b!5499909 (= res!2344481 (isEmpty!34387 (tail!10875 (tail!10875 s!2326))))))

(declare-fun b!5499910 () Bool)

(declare-fun res!2344483 () Bool)

(assert (=> b!5499910 (=> res!2344483 e!3402158)))

(assert (=> b!5499910 (= res!2344483 e!3402154)))

(declare-fun res!2344477 () Bool)

(assert (=> b!5499910 (=> (not res!2344477) (not e!3402154))))

(assert (=> b!5499910 (= res!2344477 lt!2243165)))

(declare-fun b!5499911 () Bool)

(assert (=> b!5499911 (= e!3402158 e!3402157)))

(declare-fun res!2344476 () Bool)

(assert (=> b!5499911 (=> (not res!2344476) (not e!3402157))))

(assert (=> b!5499911 (= res!2344476 (not lt!2243165))))

(declare-fun b!5499912 () Bool)

(assert (=> b!5499912 (= e!3402153 (not lt!2243165))))

(declare-fun b!5499913 () Bool)

(assert (=> b!5499913 (= e!3402159 (not (= (head!11780 (tail!10875 s!2326)) (c!960293 (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326))))))))

(declare-fun b!5499914 () Bool)

(assert (=> b!5499914 (= e!3402155 e!3402153)))

(declare-fun c!960602 () Bool)

(assert (=> b!5499914 (= c!960602 ((_ is EmptyLang!15471) (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326))))))

(declare-fun b!5499915 () Bool)

(assert (=> b!5499915 (= e!3402156 (nullable!5513 (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326))))))

(declare-fun b!5499916 () Bool)

(declare-fun res!2344482 () Bool)

(assert (=> b!5499916 (=> res!2344482 e!3402159)))

(assert (=> b!5499916 (= res!2344482 (not (isEmpty!34387 (tail!10875 (tail!10875 s!2326)))))))

(assert (= (and d!1743491 c!960600) b!5499915))

(assert (= (and d!1743491 (not c!960600)) b!5499908))

(assert (= (and d!1743491 c!960601) b!5499904))

(assert (= (and d!1743491 (not c!960601)) b!5499914))

(assert (= (and b!5499914 c!960602) b!5499912))

(assert (= (and b!5499914 (not c!960602)) b!5499905))

(assert (= (and b!5499905 (not res!2344478)) b!5499910))

(assert (= (and b!5499910 res!2344477) b!5499906))

(assert (= (and b!5499906 res!2344480) b!5499909))

(assert (= (and b!5499909 res!2344481) b!5499903))

(assert (= (and b!5499910 (not res!2344483)) b!5499911))

(assert (= (and b!5499911 res!2344476) b!5499907))

(assert (= (and b!5499907 (not res!2344479)) b!5499916))

(assert (= (and b!5499916 (not res!2344482)) b!5499913))

(assert (= (or b!5499904 b!5499906 b!5499907) bm!405953))

(assert (=> b!5499909 m!6507834))

(assert (=> b!5499909 m!6508092))

(assert (=> b!5499909 m!6508092))

(assert (=> b!5499909 m!6508268))

(assert (=> bm!405953 m!6507834))

(assert (=> bm!405953 m!6507836))

(assert (=> b!5499916 m!6507834))

(assert (=> b!5499916 m!6508092))

(assert (=> b!5499916 m!6508092))

(assert (=> b!5499916 m!6508268))

(assert (=> b!5499915 m!6507928))

(declare-fun m!6508330 () Bool)

(assert (=> b!5499915 m!6508330))

(assert (=> b!5499908 m!6507834))

(assert (=> b!5499908 m!6508088))

(assert (=> b!5499908 m!6507928))

(assert (=> b!5499908 m!6508088))

(declare-fun m!6508332 () Bool)

(assert (=> b!5499908 m!6508332))

(assert (=> b!5499908 m!6507834))

(assert (=> b!5499908 m!6508092))

(assert (=> b!5499908 m!6508332))

(assert (=> b!5499908 m!6508092))

(declare-fun m!6508334 () Bool)

(assert (=> b!5499908 m!6508334))

(assert (=> b!5499903 m!6507834))

(assert (=> b!5499903 m!6508088))

(assert (=> b!5499913 m!6507834))

(assert (=> b!5499913 m!6508088))

(assert (=> d!1743491 m!6507834))

(assert (=> d!1743491 m!6507836))

(assert (=> d!1743491 m!6507928))

(declare-fun m!6508336 () Bool)

(assert (=> d!1743491 m!6508336))

(assert (=> b!5499336 d!1743491))

(declare-fun bm!405954 () Bool)

(declare-fun c!960603 () Bool)

(declare-fun c!960606 () Bool)

(declare-fun c!960604 () Bool)

(declare-fun call!405960 () Regex!15471)

(assert (=> bm!405954 (= call!405960 (derivativeStep!4353 (ite c!960604 (regOne!31455 (regTwo!31455 r!7292)) (ite c!960606 (reg!15800 (regTwo!31455 r!7292)) (ite c!960603 (regTwo!31454 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292))))) (head!11780 s!2326)))))

(declare-fun bm!405955 () Bool)

(declare-fun call!405959 () Regex!15471)

(declare-fun call!405961 () Regex!15471)

(assert (=> bm!405955 (= call!405959 call!405961)))

(declare-fun b!5499917 () Bool)

(declare-fun e!3402160 () Regex!15471)

(declare-fun e!3402162 () Regex!15471)

(assert (=> b!5499917 (= e!3402160 e!3402162)))

(declare-fun c!960607 () Bool)

(assert (=> b!5499917 (= c!960607 ((_ is ElementMatch!15471) (regTwo!31455 r!7292)))))

(declare-fun b!5499918 () Bool)

(declare-fun e!3402161 () Regex!15471)

(assert (=> b!5499918 (= e!3402161 (Union!15471 (Concat!24316 call!405959 (regTwo!31454 (regTwo!31455 r!7292))) EmptyLang!15471))))

(declare-fun b!5499919 () Bool)

(declare-fun e!3402163 () Regex!15471)

(declare-fun call!405962 () Regex!15471)

(assert (=> b!5499919 (= e!3402163 (Union!15471 call!405960 call!405962))))

(declare-fun b!5499920 () Bool)

(assert (=> b!5499920 (= e!3402161 (Union!15471 (Concat!24316 call!405962 (regTwo!31454 (regTwo!31455 r!7292))) call!405959))))

(declare-fun b!5499921 () Bool)

(assert (=> b!5499921 (= e!3402160 EmptyLang!15471)))

(declare-fun b!5499922 () Bool)

(declare-fun e!3402164 () Regex!15471)

(assert (=> b!5499922 (= e!3402163 e!3402164)))

(assert (=> b!5499922 (= c!960606 ((_ is Star!15471) (regTwo!31455 r!7292)))))

(declare-fun d!1743493 () Bool)

(declare-fun lt!2243166 () Regex!15471)

(assert (=> d!1743493 (validRegex!7207 lt!2243166)))

(assert (=> d!1743493 (= lt!2243166 e!3402160)))

(declare-fun c!960605 () Bool)

(assert (=> d!1743493 (= c!960605 (or ((_ is EmptyExpr!15471) (regTwo!31455 r!7292)) ((_ is EmptyLang!15471) (regTwo!31455 r!7292))))))

(assert (=> d!1743493 (validRegex!7207 (regTwo!31455 r!7292))))

(assert (=> d!1743493 (= (derivativeStep!4353 (regTwo!31455 r!7292) (head!11780 s!2326)) lt!2243166)))

(declare-fun bm!405956 () Bool)

(assert (=> bm!405956 (= call!405962 (derivativeStep!4353 (ite c!960604 (regTwo!31455 (regTwo!31455 r!7292)) (regOne!31454 (regTwo!31455 r!7292))) (head!11780 s!2326)))))

(declare-fun bm!405957 () Bool)

(assert (=> bm!405957 (= call!405961 call!405960)))

(declare-fun b!5499923 () Bool)

(assert (=> b!5499923 (= c!960604 ((_ is Union!15471) (regTwo!31455 r!7292)))))

(assert (=> b!5499923 (= e!3402162 e!3402163)))

(declare-fun b!5499924 () Bool)

(assert (=> b!5499924 (= c!960603 (nullable!5513 (regOne!31454 (regTwo!31455 r!7292))))))

(assert (=> b!5499924 (= e!3402164 e!3402161)))

(declare-fun b!5499925 () Bool)

(assert (=> b!5499925 (= e!3402162 (ite (= (head!11780 s!2326) (c!960293 (regTwo!31455 r!7292))) EmptyExpr!15471 EmptyLang!15471))))

(declare-fun b!5499926 () Bool)

(assert (=> b!5499926 (= e!3402164 (Concat!24316 call!405961 (regTwo!31455 r!7292)))))

(assert (= (and d!1743493 c!960605) b!5499921))

(assert (= (and d!1743493 (not c!960605)) b!5499917))

(assert (= (and b!5499917 c!960607) b!5499925))

(assert (= (and b!5499917 (not c!960607)) b!5499923))

(assert (= (and b!5499923 c!960604) b!5499919))

(assert (= (and b!5499923 (not c!960604)) b!5499922))

(assert (= (and b!5499922 c!960606) b!5499926))

(assert (= (and b!5499922 (not c!960606)) b!5499924))

(assert (= (and b!5499924 c!960603) b!5499920))

(assert (= (and b!5499924 (not c!960603)) b!5499918))

(assert (= (or b!5499920 b!5499918) bm!405955))

(assert (= (or b!5499926 bm!405955) bm!405957))

(assert (= (or b!5499919 b!5499920) bm!405956))

(assert (= (or b!5499919 bm!405957) bm!405954))

(assert (=> bm!405954 m!6507840))

(declare-fun m!6508338 () Bool)

(assert (=> bm!405954 m!6508338))

(declare-fun m!6508340 () Bool)

(assert (=> d!1743493 m!6508340))

(assert (=> d!1743493 m!6507932))

(assert (=> bm!405956 m!6507840))

(declare-fun m!6508342 () Bool)

(assert (=> bm!405956 m!6508342))

(assert (=> b!5499924 m!6507896))

(assert (=> b!5499336 d!1743493))

(assert (=> b!5499336 d!1743355))

(assert (=> b!5499336 d!1743357))

(declare-fun b!5499927 () Bool)

(declare-fun e!3402168 () Bool)

(assert (=> b!5499927 (= e!3402168 (nullable!5513 (regOne!31454 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292)))))))

(declare-fun b!5499928 () Bool)

(declare-fun c!960611 () Bool)

(assert (=> b!5499928 (= c!960611 ((_ is Star!15471) (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))))))

(declare-fun e!3402170 () (InoxSet Context!9710))

(declare-fun e!3402166 () (InoxSet Context!9710))

(assert (=> b!5499928 (= e!3402170 e!3402166)))

(declare-fun b!5499929 () Bool)

(declare-fun e!3402165 () (InoxSet Context!9710))

(declare-fun call!405964 () (InoxSet Context!9710))

(declare-fun call!405965 () (InoxSet Context!9710))

(assert (=> b!5499929 (= e!3402165 ((_ map or) call!405964 call!405965))))

(declare-fun c!960612 () Bool)

(declare-fun bm!405958 () Bool)

(declare-fun call!405967 () List!62712)

(assert (=> bm!405958 (= call!405964 (derivationStepZipperDown!817 (ite c!960612 (regOne!31455 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))) (regOne!31454 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292)))) (ite c!960612 (ite c!960505 lt!2243099 (Context!9711 call!405881)) (Context!9711 call!405967)) (h!69038 s!2326)))))

(declare-fun b!5499930 () Bool)

(declare-fun e!3402167 () (InoxSet Context!9710))

(assert (=> b!5499930 (= e!3402167 (store ((as const (Array Context!9710 Bool)) false) (ite c!960505 lt!2243099 (Context!9711 call!405881)) true))))

(declare-fun bm!405959 () Bool)

(declare-fun call!405963 () List!62712)

(assert (=> bm!405959 (= call!405963 call!405967)))

(declare-fun b!5499931 () Bool)

(assert (=> b!5499931 (= e!3402167 e!3402165)))

(assert (=> b!5499931 (= c!960612 ((_ is Union!15471) (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))))))

(declare-fun c!960610 () Bool)

(declare-fun c!960608 () Bool)

(declare-fun bm!405960 () Bool)

(assert (=> bm!405960 (= call!405965 (derivationStepZipperDown!817 (ite c!960612 (regTwo!31455 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))) (ite c!960610 (regTwo!31454 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))) (ite c!960608 (regOne!31454 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))) (reg!15800 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292)))))) (ite (or c!960612 c!960610) (ite c!960505 lt!2243099 (Context!9711 call!405881)) (Context!9711 call!405963)) (h!69038 s!2326)))))

(declare-fun b!5499932 () Bool)

(declare-fun call!405966 () (InoxSet Context!9710))

(assert (=> b!5499932 (= e!3402166 call!405966)))

(declare-fun b!5499933 () Bool)

(assert (=> b!5499933 (= c!960610 e!3402168)))

(declare-fun res!2344484 () Bool)

(assert (=> b!5499933 (=> (not res!2344484) (not e!3402168))))

(assert (=> b!5499933 (= res!2344484 ((_ is Concat!24316) (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))))))

(declare-fun e!3402169 () (InoxSet Context!9710))

(assert (=> b!5499933 (= e!3402165 e!3402169)))

(declare-fun bm!405961 () Bool)

(assert (=> bm!405961 (= call!405967 ($colon$colon!1567 (exprs!5355 (ite c!960505 lt!2243099 (Context!9711 call!405881))) (ite (or c!960610 c!960608) (regTwo!31454 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))) (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292)))))))

(declare-fun b!5499934 () Bool)

(declare-fun call!405968 () (InoxSet Context!9710))

(assert (=> b!5499934 (= e!3402169 ((_ map or) call!405964 call!405968))))

(declare-fun b!5499935 () Bool)

(assert (=> b!5499935 (= e!3402169 e!3402170)))

(assert (=> b!5499935 (= c!960608 ((_ is Concat!24316) (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))))))

(declare-fun b!5499936 () Bool)

(assert (=> b!5499936 (= e!3402170 call!405966)))

(declare-fun bm!405963 () Bool)

(assert (=> bm!405963 (= call!405968 call!405965)))

(declare-fun b!5499937 () Bool)

(assert (=> b!5499937 (= e!3402166 ((as const (Array Context!9710 Bool)) false))))

(declare-fun d!1743495 () Bool)

(declare-fun c!960609 () Bool)

(assert (=> d!1743495 (= c!960609 (and ((_ is ElementMatch!15471) (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))) (= (c!960293 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292))) (h!69038 s!2326))))))

(assert (=> d!1743495 (= (derivationStepZipperDown!817 (ite c!960505 (regOne!31455 r!7292) (regOne!31454 r!7292)) (ite c!960505 lt!2243099 (Context!9711 call!405881)) (h!69038 s!2326)) e!3402167)))

(declare-fun bm!405962 () Bool)

(assert (=> bm!405962 (= call!405966 call!405968)))

(assert (= (and d!1743495 c!960609) b!5499930))

(assert (= (and d!1743495 (not c!960609)) b!5499931))

(assert (= (and b!5499931 c!960612) b!5499929))

(assert (= (and b!5499931 (not c!960612)) b!5499933))

(assert (= (and b!5499933 res!2344484) b!5499927))

(assert (= (and b!5499933 c!960610) b!5499934))

(assert (= (and b!5499933 (not c!960610)) b!5499935))

(assert (= (and b!5499935 c!960608) b!5499936))

(assert (= (and b!5499935 (not c!960608)) b!5499928))

(assert (= (and b!5499928 c!960611) b!5499932))

(assert (= (and b!5499928 (not c!960611)) b!5499937))

(assert (= (or b!5499936 b!5499932) bm!405959))

(assert (= (or b!5499936 b!5499932) bm!405962))

(assert (= (or b!5499934 bm!405959) bm!405961))

(assert (= (or b!5499934 bm!405962) bm!405963))

(assert (= (or b!5499929 bm!405963) bm!405960))

(assert (= (or b!5499929 b!5499934) bm!405958))

(declare-fun m!6508344 () Bool)

(assert (=> bm!405960 m!6508344))

(declare-fun m!6508346 () Bool)

(assert (=> bm!405958 m!6508346))

(declare-fun m!6508348 () Bool)

(assert (=> b!5499927 m!6508348))

(declare-fun m!6508350 () Bool)

(assert (=> b!5499930 m!6508350))

(declare-fun m!6508352 () Bool)

(assert (=> bm!405961 m!6508352))

(assert (=> bm!405872 d!1743495))

(declare-fun d!1743499 () Bool)

(assert (=> d!1743499 (= (nullable!5513 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (nullableFct!1648 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))))))

(declare-fun bs!1268659 () Bool)

(assert (= bs!1268659 d!1743499))

(declare-fun m!6508354 () Bool)

(assert (=> bs!1268659 m!6508354))

(assert (=> b!5499572 d!1743499))

(assert (=> bm!405850 d!1743363))

(declare-fun b!5499938 () Bool)

(declare-fun e!3402172 () Bool)

(assert (=> b!5499938 (= e!3402172 (= (head!11780 (tail!10875 s!2326)) (c!960293 (derivativeStep!4353 r!7292 (head!11780 s!2326)))))))

(declare-fun d!1743501 () Bool)

(declare-fun e!3402173 () Bool)

(assert (=> d!1743501 e!3402173))

(declare-fun c!960614 () Bool)

(assert (=> d!1743501 (= c!960614 ((_ is EmptyExpr!15471) (derivativeStep!4353 r!7292 (head!11780 s!2326))))))

(declare-fun lt!2243167 () Bool)

(declare-fun e!3402174 () Bool)

(assert (=> d!1743501 (= lt!2243167 e!3402174)))

(declare-fun c!960613 () Bool)

(assert (=> d!1743501 (= c!960613 (isEmpty!34387 (tail!10875 s!2326)))))

(assert (=> d!1743501 (validRegex!7207 (derivativeStep!4353 r!7292 (head!11780 s!2326)))))

(assert (=> d!1743501 (= (matchR!7656 (derivativeStep!4353 r!7292 (head!11780 s!2326)) (tail!10875 s!2326)) lt!2243167)))

(declare-fun b!5499939 () Bool)

(declare-fun call!405969 () Bool)

(assert (=> b!5499939 (= e!3402173 (= lt!2243167 call!405969))))

(declare-fun bm!405964 () Bool)

(assert (=> bm!405964 (= call!405969 (isEmpty!34387 (tail!10875 s!2326)))))

(declare-fun b!5499940 () Bool)

(declare-fun res!2344487 () Bool)

(declare-fun e!3402176 () Bool)

(assert (=> b!5499940 (=> res!2344487 e!3402176)))

(assert (=> b!5499940 (= res!2344487 (not ((_ is ElementMatch!15471) (derivativeStep!4353 r!7292 (head!11780 s!2326)))))))

(declare-fun e!3402171 () Bool)

(assert (=> b!5499940 (= e!3402171 e!3402176)))

(declare-fun b!5499941 () Bool)

(declare-fun res!2344489 () Bool)

(assert (=> b!5499941 (=> (not res!2344489) (not e!3402172))))

(assert (=> b!5499941 (= res!2344489 (not call!405969))))

(declare-fun b!5499942 () Bool)

(declare-fun e!3402175 () Bool)

(declare-fun e!3402177 () Bool)

(assert (=> b!5499942 (= e!3402175 e!3402177)))

(declare-fun res!2344488 () Bool)

(assert (=> b!5499942 (=> res!2344488 e!3402177)))

(assert (=> b!5499942 (= res!2344488 call!405969)))

(declare-fun b!5499943 () Bool)

(assert (=> b!5499943 (= e!3402174 (matchR!7656 (derivativeStep!4353 (derivativeStep!4353 r!7292 (head!11780 s!2326)) (head!11780 (tail!10875 s!2326))) (tail!10875 (tail!10875 s!2326))))))

(declare-fun b!5499944 () Bool)

(declare-fun res!2344490 () Bool)

(assert (=> b!5499944 (=> (not res!2344490) (not e!3402172))))

(assert (=> b!5499944 (= res!2344490 (isEmpty!34387 (tail!10875 (tail!10875 s!2326))))))

(declare-fun b!5499945 () Bool)

(declare-fun res!2344492 () Bool)

(assert (=> b!5499945 (=> res!2344492 e!3402176)))

(assert (=> b!5499945 (= res!2344492 e!3402172)))

(declare-fun res!2344486 () Bool)

(assert (=> b!5499945 (=> (not res!2344486) (not e!3402172))))

(assert (=> b!5499945 (= res!2344486 lt!2243167)))

(declare-fun b!5499946 () Bool)

(assert (=> b!5499946 (= e!3402176 e!3402175)))

(declare-fun res!2344485 () Bool)

(assert (=> b!5499946 (=> (not res!2344485) (not e!3402175))))

(assert (=> b!5499946 (= res!2344485 (not lt!2243167))))

(declare-fun b!5499947 () Bool)

(assert (=> b!5499947 (= e!3402171 (not lt!2243167))))

(declare-fun b!5499948 () Bool)

(assert (=> b!5499948 (= e!3402177 (not (= (head!11780 (tail!10875 s!2326)) (c!960293 (derivativeStep!4353 r!7292 (head!11780 s!2326))))))))

(declare-fun b!5499949 () Bool)

(assert (=> b!5499949 (= e!3402173 e!3402171)))

(declare-fun c!960615 () Bool)

(assert (=> b!5499949 (= c!960615 ((_ is EmptyLang!15471) (derivativeStep!4353 r!7292 (head!11780 s!2326))))))

(declare-fun b!5499950 () Bool)

(assert (=> b!5499950 (= e!3402174 (nullable!5513 (derivativeStep!4353 r!7292 (head!11780 s!2326))))))

(declare-fun b!5499951 () Bool)

(declare-fun res!2344491 () Bool)

(assert (=> b!5499951 (=> res!2344491 e!3402177)))

(assert (=> b!5499951 (= res!2344491 (not (isEmpty!34387 (tail!10875 (tail!10875 s!2326)))))))

(assert (= (and d!1743501 c!960613) b!5499950))

(assert (= (and d!1743501 (not c!960613)) b!5499943))

(assert (= (and d!1743501 c!960614) b!5499939))

(assert (= (and d!1743501 (not c!960614)) b!5499949))

(assert (= (and b!5499949 c!960615) b!5499947))

(assert (= (and b!5499949 (not c!960615)) b!5499940))

(assert (= (and b!5499940 (not res!2344487)) b!5499945))

(assert (= (and b!5499945 res!2344486) b!5499941))

(assert (= (and b!5499941 res!2344489) b!5499944))

(assert (= (and b!5499944 res!2344490) b!5499938))

(assert (= (and b!5499945 (not res!2344492)) b!5499946))

(assert (= (and b!5499946 res!2344485) b!5499942))

(assert (= (and b!5499942 (not res!2344488)) b!5499951))

(assert (= (and b!5499951 (not res!2344491)) b!5499948))

(assert (= (or b!5499939 b!5499941 b!5499942) bm!405964))

(assert (=> b!5499944 m!6507834))

(assert (=> b!5499944 m!6508092))

(assert (=> b!5499944 m!6508092))

(assert (=> b!5499944 m!6508268))

(assert (=> bm!405964 m!6507834))

(assert (=> bm!405964 m!6507836))

(assert (=> b!5499951 m!6507834))

(assert (=> b!5499951 m!6508092))

(assert (=> b!5499951 m!6508092))

(assert (=> b!5499951 m!6508268))

(assert (=> b!5499950 m!6507842))

(declare-fun m!6508356 () Bool)

(assert (=> b!5499950 m!6508356))

(assert (=> b!5499943 m!6507834))

(assert (=> b!5499943 m!6508088))

(assert (=> b!5499943 m!6507842))

(assert (=> b!5499943 m!6508088))

(declare-fun m!6508358 () Bool)

(assert (=> b!5499943 m!6508358))

(assert (=> b!5499943 m!6507834))

(assert (=> b!5499943 m!6508092))

(assert (=> b!5499943 m!6508358))

(assert (=> b!5499943 m!6508092))

(declare-fun m!6508360 () Bool)

(assert (=> b!5499943 m!6508360))

(assert (=> b!5499938 m!6507834))

(assert (=> b!5499938 m!6508088))

(assert (=> b!5499948 m!6507834))

(assert (=> b!5499948 m!6508088))

(assert (=> d!1743501 m!6507834))

(assert (=> d!1743501 m!6507836))

(assert (=> d!1743501 m!6507842))

(declare-fun m!6508362 () Bool)

(assert (=> d!1743501 m!6508362))

(assert (=> b!5499212 d!1743501))

(declare-fun c!960619 () Bool)

(declare-fun call!405971 () Regex!15471)

(declare-fun c!960617 () Bool)

(declare-fun c!960616 () Bool)

(declare-fun bm!405965 () Bool)

(assert (=> bm!405965 (= call!405971 (derivativeStep!4353 (ite c!960617 (regOne!31455 r!7292) (ite c!960619 (reg!15800 r!7292) (ite c!960616 (regTwo!31454 r!7292) (regOne!31454 r!7292)))) (head!11780 s!2326)))))

(declare-fun bm!405966 () Bool)

(declare-fun call!405970 () Regex!15471)

(declare-fun call!405972 () Regex!15471)

(assert (=> bm!405966 (= call!405970 call!405972)))

(declare-fun b!5499952 () Bool)

(declare-fun e!3402178 () Regex!15471)

(declare-fun e!3402180 () Regex!15471)

(assert (=> b!5499952 (= e!3402178 e!3402180)))

(declare-fun c!960620 () Bool)

(assert (=> b!5499952 (= c!960620 ((_ is ElementMatch!15471) r!7292))))

(declare-fun b!5499953 () Bool)

(declare-fun e!3402179 () Regex!15471)

(assert (=> b!5499953 (= e!3402179 (Union!15471 (Concat!24316 call!405970 (regTwo!31454 r!7292)) EmptyLang!15471))))

(declare-fun b!5499954 () Bool)

(declare-fun e!3402181 () Regex!15471)

(declare-fun call!405973 () Regex!15471)

(assert (=> b!5499954 (= e!3402181 (Union!15471 call!405971 call!405973))))

(declare-fun b!5499955 () Bool)

(assert (=> b!5499955 (= e!3402179 (Union!15471 (Concat!24316 call!405973 (regTwo!31454 r!7292)) call!405970))))

(declare-fun b!5499956 () Bool)

(assert (=> b!5499956 (= e!3402178 EmptyLang!15471)))

(declare-fun b!5499957 () Bool)

(declare-fun e!3402182 () Regex!15471)

(assert (=> b!5499957 (= e!3402181 e!3402182)))

(assert (=> b!5499957 (= c!960619 ((_ is Star!15471) r!7292))))

(declare-fun d!1743507 () Bool)

(declare-fun lt!2243168 () Regex!15471)

(assert (=> d!1743507 (validRegex!7207 lt!2243168)))

(assert (=> d!1743507 (= lt!2243168 e!3402178)))

(declare-fun c!960618 () Bool)

(assert (=> d!1743507 (= c!960618 (or ((_ is EmptyExpr!15471) r!7292) ((_ is EmptyLang!15471) r!7292)))))

(assert (=> d!1743507 (validRegex!7207 r!7292)))

(assert (=> d!1743507 (= (derivativeStep!4353 r!7292 (head!11780 s!2326)) lt!2243168)))

(declare-fun bm!405967 () Bool)

(assert (=> bm!405967 (= call!405973 (derivativeStep!4353 (ite c!960617 (regTwo!31455 r!7292) (regOne!31454 r!7292)) (head!11780 s!2326)))))

(declare-fun bm!405968 () Bool)

(assert (=> bm!405968 (= call!405972 call!405971)))

(declare-fun b!5499958 () Bool)

(assert (=> b!5499958 (= c!960617 ((_ is Union!15471) r!7292))))

(assert (=> b!5499958 (= e!3402180 e!3402181)))

(declare-fun b!5499959 () Bool)

(assert (=> b!5499959 (= c!960616 (nullable!5513 (regOne!31454 r!7292)))))

(assert (=> b!5499959 (= e!3402182 e!3402179)))

(declare-fun b!5499960 () Bool)

(assert (=> b!5499960 (= e!3402180 (ite (= (head!11780 s!2326) (c!960293 r!7292)) EmptyExpr!15471 EmptyLang!15471))))

(declare-fun b!5499961 () Bool)

(assert (=> b!5499961 (= e!3402182 (Concat!24316 call!405972 r!7292))))

(assert (= (and d!1743507 c!960618) b!5499956))

(assert (= (and d!1743507 (not c!960618)) b!5499952))

(assert (= (and b!5499952 c!960620) b!5499960))

(assert (= (and b!5499952 (not c!960620)) b!5499958))

(assert (= (and b!5499958 c!960617) b!5499954))

(assert (= (and b!5499958 (not c!960617)) b!5499957))

(assert (= (and b!5499957 c!960619) b!5499961))

(assert (= (and b!5499957 (not c!960619)) b!5499959))

(assert (= (and b!5499959 c!960616) b!5499955))

(assert (= (and b!5499959 (not c!960616)) b!5499953))

(assert (= (or b!5499955 b!5499953) bm!405966))

(assert (= (or b!5499961 bm!405966) bm!405968))

(assert (= (or b!5499954 b!5499955) bm!405967))

(assert (= (or b!5499954 bm!405968) bm!405965))

(assert (=> bm!405965 m!6507840))

(declare-fun m!6508364 () Bool)

(assert (=> bm!405965 m!6508364))

(declare-fun m!6508366 () Bool)

(assert (=> d!1743507 m!6508366))

(assert (=> d!1743507 m!6507682))

(assert (=> bm!405967 m!6507840))

(declare-fun m!6508368 () Bool)

(assert (=> bm!405967 m!6508368))

(assert (=> b!5499959 m!6508054))

(assert (=> b!5499212 d!1743507))

(assert (=> b!5499212 d!1743355))

(assert (=> b!5499212 d!1743357))

(assert (=> d!1743241 d!1743233))

(declare-fun d!1743509 () Bool)

(assert (=> d!1743509 (= (flatMap!1090 z!1189 lambda!294385) (dynLambda!24463 lambda!294385 (h!69037 zl!343)))))

(assert (=> d!1743509 true))

(declare-fun _$13!2004 () Unit!155402)

(assert (=> d!1743509 (= (choose!41792 z!1189 (h!69037 zl!343) lambda!294385) _$13!2004)))

(declare-fun b_lambda!208587 () Bool)

(assert (=> (not b_lambda!208587) (not d!1743509)))

(declare-fun bs!1268660 () Bool)

(assert (= bs!1268660 d!1743509))

(assert (=> bs!1268660 m!6507668))

(assert (=> bs!1268660 m!6507744))

(assert (=> d!1743241 d!1743509))

(assert (=> bm!405854 d!1743363))

(assert (=> d!1743305 d!1743363))

(assert (=> d!1743305 d!1743485))

(declare-fun b!5499962 () Bool)

(declare-fun e!3402186 () Bool)

(assert (=> b!5499962 (= e!3402186 (nullable!5513 (regOne!31454 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))))))))

(declare-fun b!5499963 () Bool)

(declare-fun c!960624 () Bool)

(assert (=> b!5499963 (= c!960624 ((_ is Star!15471) (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))))))

(declare-fun e!3402188 () (InoxSet Context!9710))

(declare-fun e!3402184 () (InoxSet Context!9710))

(assert (=> b!5499963 (= e!3402188 e!3402184)))

(declare-fun b!5499964 () Bool)

(declare-fun e!3402183 () (InoxSet Context!9710))

(declare-fun call!405975 () (InoxSet Context!9710))

(declare-fun call!405976 () (InoxSet Context!9710))

(assert (=> b!5499964 (= e!3402183 ((_ map or) call!405975 call!405976))))

(declare-fun bm!405969 () Bool)

(declare-fun c!960625 () Bool)

(declare-fun call!405978 () List!62712)

(assert (=> bm!405969 (= call!405975 (derivationStepZipperDown!817 (ite c!960625 (regOne!31455 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (regOne!31454 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))))) (ite c!960625 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (Context!9711 call!405978)) (h!69038 s!2326)))))

(declare-fun b!5499965 () Bool)

(declare-fun e!3402185 () (InoxSet Context!9710))

(assert (=> b!5499965 (= e!3402185 (store ((as const (Array Context!9710 Bool)) false) (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) true))))

(declare-fun bm!405970 () Bool)

(declare-fun call!405974 () List!62712)

(assert (=> bm!405970 (= call!405974 call!405978)))

(declare-fun b!5499966 () Bool)

(assert (=> b!5499966 (= e!3402185 e!3402183)))

(assert (=> b!5499966 (= c!960625 ((_ is Union!15471) (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))))))

(declare-fun c!960621 () Bool)

(declare-fun bm!405971 () Bool)

(declare-fun c!960623 () Bool)

(assert (=> bm!405971 (= call!405976 (derivationStepZipperDown!817 (ite c!960625 (regTwo!31455 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (ite c!960623 (regTwo!31454 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (ite c!960621 (regOne!31454 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (reg!15800 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))))))) (ite (or c!960625 c!960623) (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (Context!9711 call!405974)) (h!69038 s!2326)))))

(declare-fun b!5499967 () Bool)

(declare-fun call!405977 () (InoxSet Context!9710))

(assert (=> b!5499967 (= e!3402184 call!405977)))

(declare-fun b!5499968 () Bool)

(assert (=> b!5499968 (= c!960623 e!3402186)))

(declare-fun res!2344493 () Bool)

(assert (=> b!5499968 (=> (not res!2344493) (not e!3402186))))

(assert (=> b!5499968 (= res!2344493 ((_ is Concat!24316) (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))))))

(declare-fun e!3402187 () (InoxSet Context!9710))

(assert (=> b!5499968 (= e!3402183 e!3402187)))

(declare-fun bm!405972 () Bool)

(assert (=> bm!405972 (= call!405978 ($colon$colon!1567 (exprs!5355 (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))))) (ite (or c!960623 c!960621) (regTwo!31454 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))))))))

(declare-fun b!5499969 () Bool)

(declare-fun call!405979 () (InoxSet Context!9710))

(assert (=> b!5499969 (= e!3402187 ((_ map or) call!405975 call!405979))))

(declare-fun b!5499970 () Bool)

(assert (=> b!5499970 (= e!3402187 e!3402188)))

(assert (=> b!5499970 (= c!960621 ((_ is Concat!24316) (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))))))

(declare-fun b!5499971 () Bool)

(assert (=> b!5499971 (= e!3402188 call!405977)))

(declare-fun bm!405974 () Bool)

(assert (=> bm!405974 (= call!405979 call!405976)))

(declare-fun b!5499972 () Bool)

(assert (=> b!5499972 (= e!3402184 ((as const (Array Context!9710 Bool)) false))))

(declare-fun d!1743511 () Bool)

(declare-fun c!960622 () Bool)

(assert (=> d!1743511 (= c!960622 (and ((_ is ElementMatch!15471) (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (= (c!960293 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (h!69038 s!2326))))))

(assert (=> d!1743511 (= (derivationStepZipperDown!817 (h!69036 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588)))) (Context!9711 (t!375947 (exprs!5355 (Context!9711 (Cons!62588 r!7292 Nil!62588))))) (h!69038 s!2326)) e!3402185)))

(declare-fun bm!405973 () Bool)

(assert (=> bm!405973 (= call!405977 call!405979)))

(assert (= (and d!1743511 c!960622) b!5499965))

(assert (= (and d!1743511 (not c!960622)) b!5499966))

(assert (= (and b!5499966 c!960625) b!5499964))

(assert (= (and b!5499966 (not c!960625)) b!5499968))

(assert (= (and b!5499968 res!2344493) b!5499962))

(assert (= (and b!5499968 c!960623) b!5499969))

(assert (= (and b!5499968 (not c!960623)) b!5499970))

(assert (= (and b!5499970 c!960621) b!5499971))

(assert (= (and b!5499970 (not c!960621)) b!5499963))

(assert (= (and b!5499963 c!960624) b!5499967))

(assert (= (and b!5499963 (not c!960624)) b!5499972))

(assert (= (or b!5499971 b!5499967) bm!405970))

(assert (= (or b!5499971 b!5499967) bm!405973))

(assert (= (or b!5499969 bm!405970) bm!405972))

(assert (= (or b!5499969 bm!405973) bm!405974))

(assert (= (or b!5499964 bm!405974) bm!405971))

(assert (= (or b!5499964 b!5499969) bm!405969))

(declare-fun m!6508370 () Bool)

(assert (=> bm!405971 m!6508370))

(declare-fun m!6508372 () Bool)

(assert (=> bm!405969 m!6508372))

(declare-fun m!6508374 () Bool)

(assert (=> b!5499962 m!6508374))

(declare-fun m!6508376 () Bool)

(assert (=> b!5499965 m!6508376))

(declare-fun m!6508378 () Bool)

(assert (=> bm!405972 m!6508378))

(assert (=> bm!405878 d!1743511))

(declare-fun d!1743517 () Bool)

(declare-fun res!2344494 () Bool)

(declare-fun e!3402189 () Bool)

(assert (=> d!1743517 (=> res!2344494 e!3402189)))

(assert (=> d!1743517 (= res!2344494 ((_ is Nil!62588) lt!2243122))))

(assert (=> d!1743517 (= (forall!14662 lt!2243122 lambda!294409) e!3402189)))

(declare-fun b!5499973 () Bool)

(declare-fun e!3402190 () Bool)

(assert (=> b!5499973 (= e!3402189 e!3402190)))

(declare-fun res!2344495 () Bool)

(assert (=> b!5499973 (=> (not res!2344495) (not e!3402190))))

(assert (=> b!5499973 (= res!2344495 (dynLambda!24465 lambda!294409 (h!69036 lt!2243122)))))

(declare-fun b!5499974 () Bool)

(assert (=> b!5499974 (= e!3402190 (forall!14662 (t!375947 lt!2243122) lambda!294409))))

(assert (= (and d!1743517 (not res!2344494)) b!5499973))

(assert (= (and b!5499973 res!2344495) b!5499974))

(declare-fun b_lambda!208591 () Bool)

(assert (=> (not b_lambda!208591) (not b!5499973)))

(declare-fun m!6508380 () Bool)

(assert (=> b!5499973 m!6508380))

(declare-fun m!6508384 () Bool)

(assert (=> b!5499974 m!6508384))

(assert (=> d!1743249 d!1743517))

(assert (=> b!5499331 d!1743355))

(declare-fun e!3402194 () Bool)

(declare-fun b!5499975 () Bool)

(assert (=> b!5499975 (= e!3402194 (nullable!5513 (regOne!31454 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292))))))))))

(declare-fun b!5499976 () Bool)

(declare-fun c!960629 () Bool)

(assert (=> b!5499976 (= c!960629 ((_ is Star!15471) (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))))))

(declare-fun e!3402196 () (InoxSet Context!9710))

(declare-fun e!3402192 () (InoxSet Context!9710))

(assert (=> b!5499976 (= e!3402196 e!3402192)))

(declare-fun b!5499977 () Bool)

(declare-fun e!3402191 () (InoxSet Context!9710))

(declare-fun call!405981 () (InoxSet Context!9710))

(declare-fun call!405982 () (InoxSet Context!9710))

(assert (=> b!5499977 (= e!3402191 ((_ map or) call!405981 call!405982))))

(declare-fun call!405984 () List!62712)

(declare-fun c!960630 () Bool)

(declare-fun bm!405975 () Bool)

(assert (=> bm!405975 (= call!405981 (derivationStepZipperDown!817 (ite c!960630 (regOne!31455 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))) (regOne!31454 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292))))))) (ite c!960630 (ite (or c!960430 c!960428) lt!2243099 (Context!9711 call!405834)) (Context!9711 call!405984)) (h!69038 s!2326)))))

(declare-fun b!5499978 () Bool)

(declare-fun e!3402193 () (InoxSet Context!9710))

(assert (=> b!5499978 (= e!3402193 (store ((as const (Array Context!9710 Bool)) false) (ite (or c!960430 c!960428) lt!2243099 (Context!9711 call!405834)) true))))

(declare-fun bm!405976 () Bool)

(declare-fun call!405980 () List!62712)

(assert (=> bm!405976 (= call!405980 call!405984)))

(declare-fun b!5499979 () Bool)

(assert (=> b!5499979 (= e!3402193 e!3402191)))

(assert (=> b!5499979 (= c!960630 ((_ is Union!15471) (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))))))

(declare-fun c!960628 () Bool)

(declare-fun bm!405977 () Bool)

(declare-fun c!960626 () Bool)

(assert (=> bm!405977 (= call!405982 (derivationStepZipperDown!817 (ite c!960630 (regTwo!31455 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))) (ite c!960628 (regTwo!31454 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))) (ite c!960626 (regOne!31454 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))) (reg!15800 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292))))))))) (ite (or c!960630 c!960628) (ite (or c!960430 c!960428) lt!2243099 (Context!9711 call!405834)) (Context!9711 call!405980)) (h!69038 s!2326)))))

(declare-fun b!5499980 () Bool)

(declare-fun call!405983 () (InoxSet Context!9710))

(assert (=> b!5499980 (= e!3402192 call!405983)))

(declare-fun b!5499981 () Bool)

(assert (=> b!5499981 (= c!960628 e!3402194)))

(declare-fun res!2344496 () Bool)

(assert (=> b!5499981 (=> (not res!2344496) (not e!3402194))))

(assert (=> b!5499981 (= res!2344496 ((_ is Concat!24316) (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))))))

(declare-fun e!3402195 () (InoxSet Context!9710))

(assert (=> b!5499981 (= e!3402191 e!3402195)))

(declare-fun bm!405978 () Bool)

(assert (=> bm!405978 (= call!405984 ($colon$colon!1567 (exprs!5355 (ite (or c!960430 c!960428) lt!2243099 (Context!9711 call!405834))) (ite (or c!960628 c!960626) (regTwo!31454 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))) (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292))))))))))

(declare-fun b!5499982 () Bool)

(declare-fun call!405985 () (InoxSet Context!9710))

(assert (=> b!5499982 (= e!3402195 ((_ map or) call!405981 call!405985))))

(declare-fun b!5499983 () Bool)

(assert (=> b!5499983 (= e!3402195 e!3402196)))

(assert (=> b!5499983 (= c!960626 ((_ is Concat!24316) (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))))))

(declare-fun b!5499984 () Bool)

(assert (=> b!5499984 (= e!3402196 call!405983)))

(declare-fun bm!405980 () Bool)

(assert (=> bm!405980 (= call!405985 call!405982)))

(declare-fun b!5499985 () Bool)

(assert (=> b!5499985 (= e!3402192 ((as const (Array Context!9710 Bool)) false))))

(declare-fun c!960627 () Bool)

(declare-fun d!1743519 () Bool)

(assert (=> d!1743519 (= c!960627 (and ((_ is ElementMatch!15471) (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))) (= (c!960293 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292)))))) (h!69038 s!2326))))))

(assert (=> d!1743519 (= (derivationStepZipperDown!817 (ite c!960430 (regTwo!31455 (regOne!31455 r!7292)) (ite c!960428 (regTwo!31454 (regOne!31455 r!7292)) (ite c!960426 (regOne!31454 (regOne!31455 r!7292)) (reg!15800 (regOne!31455 r!7292))))) (ite (or c!960430 c!960428) lt!2243099 (Context!9711 call!405834)) (h!69038 s!2326)) e!3402193)))

(declare-fun bm!405979 () Bool)

(assert (=> bm!405979 (= call!405983 call!405985)))

(assert (= (and d!1743519 c!960627) b!5499978))

(assert (= (and d!1743519 (not c!960627)) b!5499979))

(assert (= (and b!5499979 c!960630) b!5499977))

(assert (= (and b!5499979 (not c!960630)) b!5499981))

(assert (= (and b!5499981 res!2344496) b!5499975))

(assert (= (and b!5499981 c!960628) b!5499982))

(assert (= (and b!5499981 (not c!960628)) b!5499983))

(assert (= (and b!5499983 c!960626) b!5499984))

(assert (= (and b!5499983 (not c!960626)) b!5499976))

(assert (= (and b!5499976 c!960629) b!5499980))

(assert (= (and b!5499976 (not c!960629)) b!5499985))

(assert (= (or b!5499984 b!5499980) bm!405976))

(assert (= (or b!5499984 b!5499980) bm!405979))

(assert (= (or b!5499982 bm!405976) bm!405978))

(assert (= (or b!5499982 bm!405979) bm!405980))

(assert (= (or b!5499977 bm!405980) bm!405977))

(assert (= (or b!5499977 b!5499982) bm!405975))

(declare-fun m!6508386 () Bool)

(assert (=> bm!405977 m!6508386))

(declare-fun m!6508388 () Bool)

(assert (=> bm!405975 m!6508388))

(declare-fun m!6508390 () Bool)

(assert (=> b!5499975 m!6508390))

(declare-fun m!6508392 () Bool)

(assert (=> b!5499978 m!6508392))

(declare-fun m!6508394 () Bool)

(assert (=> bm!405978 m!6508394))

(assert (=> bm!405831 d!1743519))

(declare-fun d!1743523 () Bool)

(declare-fun c!960631 () Bool)

(assert (=> d!1743523 (= c!960631 (isEmpty!34387 (tail!10875 (t!375949 s!2326))))))

(declare-fun e!3402197 () Bool)

(assert (=> d!1743523 (= (matchZipper!1639 (derivationStepZipper!1582 lt!2243091 (head!11780 (t!375949 s!2326))) (tail!10875 (t!375949 s!2326))) e!3402197)))

(declare-fun b!5499986 () Bool)

(assert (=> b!5499986 (= e!3402197 (nullableZipper!1518 (derivationStepZipper!1582 lt!2243091 (head!11780 (t!375949 s!2326)))))))

(declare-fun b!5499987 () Bool)

(assert (=> b!5499987 (= e!3402197 (matchZipper!1639 (derivationStepZipper!1582 (derivationStepZipper!1582 lt!2243091 (head!11780 (t!375949 s!2326))) (head!11780 (tail!10875 (t!375949 s!2326)))) (tail!10875 (tail!10875 (t!375949 s!2326)))))))

(assert (= (and d!1743523 c!960631) b!5499986))

(assert (= (and d!1743523 (not c!960631)) b!5499987))

(assert (=> d!1743523 m!6508040))

(declare-fun m!6508396 () Bool)

(assert (=> d!1743523 m!6508396))

(assert (=> b!5499986 m!6508038))

(declare-fun m!6508398 () Bool)

(assert (=> b!5499986 m!6508398))

(assert (=> b!5499987 m!6508040))

(declare-fun m!6508400 () Bool)

(assert (=> b!5499987 m!6508400))

(assert (=> b!5499987 m!6508038))

(assert (=> b!5499987 m!6508400))

(declare-fun m!6508402 () Bool)

(assert (=> b!5499987 m!6508402))

(assert (=> b!5499987 m!6508040))

(declare-fun m!6508404 () Bool)

(assert (=> b!5499987 m!6508404))

(assert (=> b!5499987 m!6508402))

(assert (=> b!5499987 m!6508404))

(declare-fun m!6508406 () Bool)

(assert (=> b!5499987 m!6508406))

(assert (=> b!5499554 d!1743523))

(declare-fun bs!1268663 () Bool)

(declare-fun d!1743525 () Bool)

(assert (= bs!1268663 (and d!1743525 b!5498870)))

(declare-fun lambda!294456 () Int)

(assert (=> bs!1268663 (= (= (head!11780 (t!375949 s!2326)) (h!69038 s!2326)) (= lambda!294456 lambda!294385))))

(declare-fun bs!1268664 () Bool)

(assert (= bs!1268664 (and d!1743525 d!1743231)))

(assert (=> bs!1268664 (= (= (head!11780 (t!375949 s!2326)) (h!69038 s!2326)) (= lambda!294456 lambda!294393))))

(declare-fun bs!1268665 () Bool)

(assert (= bs!1268665 (and d!1743525 d!1743353)))

(assert (=> bs!1268665 (= (= (head!11780 (t!375949 s!2326)) (head!11780 s!2326)) (= lambda!294456 lambda!294438))))

(assert (=> d!1743525 true))

(assert (=> d!1743525 (= (derivationStepZipper!1582 lt!2243091 (head!11780 (t!375949 s!2326))) (flatMap!1090 lt!2243091 lambda!294456))))

(declare-fun bs!1268666 () Bool)

(assert (= bs!1268666 d!1743525))

(declare-fun m!6508408 () Bool)

(assert (=> bs!1268666 m!6508408))

(assert (=> b!5499554 d!1743525))

(declare-fun d!1743527 () Bool)

(assert (=> d!1743527 (= (head!11780 (t!375949 s!2326)) (h!69038 (t!375949 s!2326)))))

(assert (=> b!5499554 d!1743527))

(declare-fun d!1743529 () Bool)

(assert (=> d!1743529 (= (tail!10875 (t!375949 s!2326)) (t!375949 (t!375949 s!2326)))))

(assert (=> b!5499554 d!1743529))

(declare-fun b!5499989 () Bool)

(declare-fun e!3402199 () Bool)

(declare-fun tp!1513192 () Bool)

(assert (=> b!5499989 (= e!3402199 tp!1513192)))

(declare-fun e!3402198 () Bool)

(declare-fun b!5499988 () Bool)

(declare-fun tp!1513193 () Bool)

(assert (=> b!5499988 (= e!3402198 (and (inv!81924 (h!69037 (t!375948 (t!375948 zl!343)))) e!3402199 tp!1513193))))

(assert (=> b!5499620 (= tp!1513176 e!3402198)))

(assert (= b!5499988 b!5499989))

(assert (= (and b!5499620 ((_ is Cons!62589) (t!375948 (t!375948 zl!343)))) b!5499988))

(declare-fun m!6508410 () Bool)

(assert (=> b!5499988 m!6508410))

(declare-fun b!5499990 () Bool)

(declare-fun e!3402200 () Bool)

(declare-fun tp!1513194 () Bool)

(declare-fun tp!1513195 () Bool)

(assert (=> b!5499990 (= e!3402200 (and tp!1513194 tp!1513195))))

(assert (=> b!5499621 (= tp!1513175 e!3402200)))

(assert (= (and b!5499621 ((_ is Cons!62588) (exprs!5355 (h!69037 (t!375948 zl!343))))) b!5499990))

(declare-fun e!3402201 () Bool)

(assert (=> b!5499592 (= tp!1513146 e!3402201)))

(declare-fun b!5499994 () Bool)

(declare-fun tp!1513198 () Bool)

(declare-fun tp!1513197 () Bool)

(assert (=> b!5499994 (= e!3402201 (and tp!1513198 tp!1513197))))

(declare-fun b!5499991 () Bool)

(assert (=> b!5499991 (= e!3402201 tp_is_empty!40195)))

(declare-fun b!5499992 () Bool)

(declare-fun tp!1513200 () Bool)

(declare-fun tp!1513196 () Bool)

(assert (=> b!5499992 (= e!3402201 (and tp!1513200 tp!1513196))))

(declare-fun b!5499993 () Bool)

(declare-fun tp!1513199 () Bool)

(assert (=> b!5499993 (= e!3402201 tp!1513199)))

(assert (= (and b!5499592 ((_ is ElementMatch!15471) (regOne!31454 (regTwo!31454 r!7292)))) b!5499991))

(assert (= (and b!5499592 ((_ is Concat!24316) (regOne!31454 (regTwo!31454 r!7292)))) b!5499992))

(assert (= (and b!5499592 ((_ is Star!15471) (regOne!31454 (regTwo!31454 r!7292)))) b!5499993))

(assert (= (and b!5499592 ((_ is Union!15471) (regOne!31454 (regTwo!31454 r!7292)))) b!5499994))

(declare-fun e!3402202 () Bool)

(assert (=> b!5499592 (= tp!1513142 e!3402202)))

(declare-fun b!5499998 () Bool)

(declare-fun tp!1513203 () Bool)

(declare-fun tp!1513202 () Bool)

(assert (=> b!5499998 (= e!3402202 (and tp!1513203 tp!1513202))))

(declare-fun b!5499995 () Bool)

(assert (=> b!5499995 (= e!3402202 tp_is_empty!40195)))

(declare-fun b!5499996 () Bool)

(declare-fun tp!1513205 () Bool)

(declare-fun tp!1513201 () Bool)

(assert (=> b!5499996 (= e!3402202 (and tp!1513205 tp!1513201))))

(declare-fun b!5499997 () Bool)

(declare-fun tp!1513204 () Bool)

(assert (=> b!5499997 (= e!3402202 tp!1513204)))

(assert (= (and b!5499592 ((_ is ElementMatch!15471) (regTwo!31454 (regTwo!31454 r!7292)))) b!5499995))

(assert (= (and b!5499592 ((_ is Concat!24316) (regTwo!31454 (regTwo!31454 r!7292)))) b!5499996))

(assert (= (and b!5499592 ((_ is Star!15471) (regTwo!31454 (regTwo!31454 r!7292)))) b!5499997))

(assert (= (and b!5499592 ((_ is Union!15471) (regTwo!31454 (regTwo!31454 r!7292)))) b!5499998))

(declare-fun b!5499999 () Bool)

(declare-fun e!3402203 () Bool)

(declare-fun tp!1513206 () Bool)

(assert (=> b!5499999 (= e!3402203 (and tp_is_empty!40195 tp!1513206))))

(assert (=> b!5499626 (= tp!1513179 e!3402203)))

(assert (= (and b!5499626 ((_ is Cons!62590) (t!375949 (t!375949 s!2326)))) b!5499999))

(declare-fun b!5500000 () Bool)

(declare-fun e!3402204 () Bool)

(declare-fun tp!1513207 () Bool)

(declare-fun tp!1513208 () Bool)

(assert (=> b!5500000 (= e!3402204 (and tp!1513207 tp!1513208))))

(assert (=> b!5499599 (= tp!1513151 e!3402204)))

(assert (= (and b!5499599 ((_ is Cons!62588) (exprs!5355 setElem!36437))) b!5500000))

(declare-fun e!3402205 () Bool)

(assert (=> b!5499613 (= tp!1513169 e!3402205)))

(declare-fun b!5500004 () Bool)

(declare-fun tp!1513211 () Bool)

(declare-fun tp!1513210 () Bool)

(assert (=> b!5500004 (= e!3402205 (and tp!1513211 tp!1513210))))

(declare-fun b!5500001 () Bool)

(assert (=> b!5500001 (= e!3402205 tp_is_empty!40195)))

(declare-fun b!5500002 () Bool)

(declare-fun tp!1513213 () Bool)

(declare-fun tp!1513209 () Bool)

(assert (=> b!5500002 (= e!3402205 (and tp!1513213 tp!1513209))))

(declare-fun b!5500003 () Bool)

(declare-fun tp!1513212 () Bool)

(assert (=> b!5500003 (= e!3402205 tp!1513212)))

(assert (= (and b!5499613 ((_ is ElementMatch!15471) (h!69036 (exprs!5355 setElem!36431)))) b!5500001))

(assert (= (and b!5499613 ((_ is Concat!24316) (h!69036 (exprs!5355 setElem!36431)))) b!5500002))

(assert (= (and b!5499613 ((_ is Star!15471) (h!69036 (exprs!5355 setElem!36431)))) b!5500003))

(assert (= (and b!5499613 ((_ is Union!15471) (h!69036 (exprs!5355 setElem!36431)))) b!5500004))

(declare-fun b!5500005 () Bool)

(declare-fun e!3402206 () Bool)

(declare-fun tp!1513214 () Bool)

(declare-fun tp!1513215 () Bool)

(assert (=> b!5500005 (= e!3402206 (and tp!1513214 tp!1513215))))

(assert (=> b!5499613 (= tp!1513170 e!3402206)))

(assert (= (and b!5499613 ((_ is Cons!62588) (t!375947 (exprs!5355 setElem!36431)))) b!5500005))

(declare-fun e!3402209 () Bool)

(assert (=> b!5499612 (= tp!1513166 e!3402209)))

(declare-fun b!5500009 () Bool)

(declare-fun tp!1513218 () Bool)

(declare-fun tp!1513217 () Bool)

(assert (=> b!5500009 (= e!3402209 (and tp!1513218 tp!1513217))))

(declare-fun b!5500006 () Bool)

(assert (=> b!5500006 (= e!3402209 tp_is_empty!40195)))

(declare-fun b!5500007 () Bool)

(declare-fun tp!1513220 () Bool)

(declare-fun tp!1513216 () Bool)

(assert (=> b!5500007 (= e!3402209 (and tp!1513220 tp!1513216))))

(declare-fun b!5500008 () Bool)

(declare-fun tp!1513219 () Bool)

(assert (=> b!5500008 (= e!3402209 tp!1513219)))

(assert (= (and b!5499612 ((_ is ElementMatch!15471) (regOne!31455 (regTwo!31455 r!7292)))) b!5500006))

(assert (= (and b!5499612 ((_ is Concat!24316) (regOne!31455 (regTwo!31455 r!7292)))) b!5500007))

(assert (= (and b!5499612 ((_ is Star!15471) (regOne!31455 (regTwo!31455 r!7292)))) b!5500008))

(assert (= (and b!5499612 ((_ is Union!15471) (regOne!31455 (regTwo!31455 r!7292)))) b!5500009))

(declare-fun e!3402215 () Bool)

(assert (=> b!5499612 (= tp!1513165 e!3402215)))

(declare-fun b!5500022 () Bool)

(declare-fun tp!1513223 () Bool)

(declare-fun tp!1513222 () Bool)

(assert (=> b!5500022 (= e!3402215 (and tp!1513223 tp!1513222))))

(declare-fun b!5500019 () Bool)

(assert (=> b!5500019 (= e!3402215 tp_is_empty!40195)))

(declare-fun b!5500020 () Bool)

(declare-fun tp!1513225 () Bool)

(declare-fun tp!1513221 () Bool)

(assert (=> b!5500020 (= e!3402215 (and tp!1513225 tp!1513221))))

(declare-fun b!5500021 () Bool)

(declare-fun tp!1513224 () Bool)

(assert (=> b!5500021 (= e!3402215 tp!1513224)))

(assert (= (and b!5499612 ((_ is ElementMatch!15471) (regTwo!31455 (regTwo!31455 r!7292)))) b!5500019))

(assert (= (and b!5499612 ((_ is Concat!24316) (regTwo!31455 (regTwo!31455 r!7292)))) b!5500020))

(assert (= (and b!5499612 ((_ is Star!15471) (regTwo!31455 (regTwo!31455 r!7292)))) b!5500021))

(assert (= (and b!5499612 ((_ is Union!15471) (regTwo!31455 (regTwo!31455 r!7292)))) b!5500022))

(declare-fun e!3402216 () Bool)

(assert (=> b!5499604 (= tp!1513157 e!3402216)))

(declare-fun b!5500026 () Bool)

(declare-fun tp!1513228 () Bool)

(declare-fun tp!1513227 () Bool)

(assert (=> b!5500026 (= e!3402216 (and tp!1513228 tp!1513227))))

(declare-fun b!5500023 () Bool)

(assert (=> b!5500023 (= e!3402216 tp_is_empty!40195)))

(declare-fun b!5500024 () Bool)

(declare-fun tp!1513230 () Bool)

(declare-fun tp!1513226 () Bool)

(assert (=> b!5500024 (= e!3402216 (and tp!1513230 tp!1513226))))

(declare-fun b!5500025 () Bool)

(declare-fun tp!1513229 () Bool)

(assert (=> b!5500025 (= e!3402216 tp!1513229)))

(assert (= (and b!5499604 ((_ is ElementMatch!15471) (h!69036 (exprs!5355 (h!69037 zl!343))))) b!5500023))

(assert (= (and b!5499604 ((_ is Concat!24316) (h!69036 (exprs!5355 (h!69037 zl!343))))) b!5500024))

(assert (= (and b!5499604 ((_ is Star!15471) (h!69036 (exprs!5355 (h!69037 zl!343))))) b!5500025))

(assert (= (and b!5499604 ((_ is Union!15471) (h!69036 (exprs!5355 (h!69037 zl!343))))) b!5500026))

(declare-fun b!5500027 () Bool)

(declare-fun e!3402217 () Bool)

(declare-fun tp!1513231 () Bool)

(declare-fun tp!1513232 () Bool)

(assert (=> b!5500027 (= e!3402217 (and tp!1513231 tp!1513232))))

(assert (=> b!5499604 (= tp!1513158 e!3402217)))

(assert (= (and b!5499604 ((_ is Cons!62588) (t!375947 (exprs!5355 (h!69037 zl!343))))) b!5500027))

(declare-fun condSetEmpty!36441 () Bool)

(assert (=> setNonEmpty!36437 (= condSetEmpty!36441 (= setRest!36437 ((as const (Array Context!9710 Bool)) false)))))

(declare-fun setRes!36441 () Bool)

(assert (=> setNonEmpty!36437 (= tp!1513152 setRes!36441)))

(declare-fun setIsEmpty!36441 () Bool)

(assert (=> setIsEmpty!36441 setRes!36441))

(declare-fun setElem!36441 () Context!9710)

(declare-fun setNonEmpty!36441 () Bool)

(declare-fun tp!1513234 () Bool)

(declare-fun e!3402218 () Bool)

(assert (=> setNonEmpty!36441 (= setRes!36441 (and tp!1513234 (inv!81924 setElem!36441) e!3402218))))

(declare-fun setRest!36441 () (InoxSet Context!9710))

(assert (=> setNonEmpty!36441 (= setRest!36437 ((_ map or) (store ((as const (Array Context!9710 Bool)) false) setElem!36441 true) setRest!36441))))

(declare-fun b!5500028 () Bool)

(declare-fun tp!1513233 () Bool)

(assert (=> b!5500028 (= e!3402218 tp!1513233)))

(assert (= (and setNonEmpty!36437 condSetEmpty!36441) setIsEmpty!36441))

(assert (= (and setNonEmpty!36437 (not condSetEmpty!36441)) setNonEmpty!36441))

(assert (= setNonEmpty!36441 b!5500028))

(declare-fun m!6508412 () Bool)

(assert (=> setNonEmpty!36441 m!6508412))

(declare-fun e!3402219 () Bool)

(assert (=> b!5499588 (= tp!1513141 e!3402219)))

(declare-fun b!5500032 () Bool)

(declare-fun tp!1513237 () Bool)

(declare-fun tp!1513236 () Bool)

(assert (=> b!5500032 (= e!3402219 (and tp!1513237 tp!1513236))))

(declare-fun b!5500029 () Bool)

(assert (=> b!5500029 (= e!3402219 tp_is_empty!40195)))

(declare-fun b!5500030 () Bool)

(declare-fun tp!1513239 () Bool)

(declare-fun tp!1513235 () Bool)

(assert (=> b!5500030 (= e!3402219 (and tp!1513239 tp!1513235))))

(declare-fun b!5500031 () Bool)

(declare-fun tp!1513238 () Bool)

(assert (=> b!5500031 (= e!3402219 tp!1513238)))

(assert (= (and b!5499588 ((_ is ElementMatch!15471) (regOne!31454 (regOne!31454 r!7292)))) b!5500029))

(assert (= (and b!5499588 ((_ is Concat!24316) (regOne!31454 (regOne!31454 r!7292)))) b!5500030))

(assert (= (and b!5499588 ((_ is Star!15471) (regOne!31454 (regOne!31454 r!7292)))) b!5500031))

(assert (= (and b!5499588 ((_ is Union!15471) (regOne!31454 (regOne!31454 r!7292)))) b!5500032))

(declare-fun e!3402220 () Bool)

(assert (=> b!5499588 (= tp!1513137 e!3402220)))

(declare-fun b!5500036 () Bool)

(declare-fun tp!1513242 () Bool)

(declare-fun tp!1513241 () Bool)

(assert (=> b!5500036 (= e!3402220 (and tp!1513242 tp!1513241))))

(declare-fun b!5500033 () Bool)

(assert (=> b!5500033 (= e!3402220 tp_is_empty!40195)))

(declare-fun b!5500034 () Bool)

(declare-fun tp!1513244 () Bool)

(declare-fun tp!1513240 () Bool)

(assert (=> b!5500034 (= e!3402220 (and tp!1513244 tp!1513240))))

(declare-fun b!5500035 () Bool)

(declare-fun tp!1513243 () Bool)

(assert (=> b!5500035 (= e!3402220 tp!1513243)))

(assert (= (and b!5499588 ((_ is ElementMatch!15471) (regTwo!31454 (regOne!31454 r!7292)))) b!5500033))

(assert (= (and b!5499588 ((_ is Concat!24316) (regTwo!31454 (regOne!31454 r!7292)))) b!5500034))

(assert (= (and b!5499588 ((_ is Star!15471) (regTwo!31454 (regOne!31454 r!7292)))) b!5500035))

(assert (= (and b!5499588 ((_ is Union!15471) (regTwo!31454 (regOne!31454 r!7292)))) b!5500036))

(declare-fun e!3402221 () Bool)

(assert (=> b!5499610 (= tp!1513168 e!3402221)))

(declare-fun b!5500040 () Bool)

(declare-fun tp!1513247 () Bool)

(declare-fun tp!1513246 () Bool)

(assert (=> b!5500040 (= e!3402221 (and tp!1513247 tp!1513246))))

(declare-fun b!5500037 () Bool)

(assert (=> b!5500037 (= e!3402221 tp_is_empty!40195)))

(declare-fun b!5500038 () Bool)

(declare-fun tp!1513249 () Bool)

(declare-fun tp!1513245 () Bool)

(assert (=> b!5500038 (= e!3402221 (and tp!1513249 tp!1513245))))

(declare-fun b!5500039 () Bool)

(declare-fun tp!1513248 () Bool)

(assert (=> b!5500039 (= e!3402221 tp!1513248)))

(assert (= (and b!5499610 ((_ is ElementMatch!15471) (regOne!31454 (regTwo!31455 r!7292)))) b!5500037))

(assert (= (and b!5499610 ((_ is Concat!24316) (regOne!31454 (regTwo!31455 r!7292)))) b!5500038))

(assert (= (and b!5499610 ((_ is Star!15471) (regOne!31454 (regTwo!31455 r!7292)))) b!5500039))

(assert (= (and b!5499610 ((_ is Union!15471) (regOne!31454 (regTwo!31455 r!7292)))) b!5500040))

(declare-fun e!3402222 () Bool)

(assert (=> b!5499610 (= tp!1513164 e!3402222)))

(declare-fun b!5500044 () Bool)

(declare-fun tp!1513252 () Bool)

(declare-fun tp!1513251 () Bool)

(assert (=> b!5500044 (= e!3402222 (and tp!1513252 tp!1513251))))

(declare-fun b!5500041 () Bool)

(assert (=> b!5500041 (= e!3402222 tp_is_empty!40195)))

(declare-fun b!5500042 () Bool)

(declare-fun tp!1513254 () Bool)

(declare-fun tp!1513250 () Bool)

(assert (=> b!5500042 (= e!3402222 (and tp!1513254 tp!1513250))))

(declare-fun b!5500043 () Bool)

(declare-fun tp!1513253 () Bool)

(assert (=> b!5500043 (= e!3402222 tp!1513253)))

(assert (= (and b!5499610 ((_ is ElementMatch!15471) (regTwo!31454 (regTwo!31455 r!7292)))) b!5500041))

(assert (= (and b!5499610 ((_ is Concat!24316) (regTwo!31454 (regTwo!31455 r!7292)))) b!5500042))

(assert (= (and b!5499610 ((_ is Star!15471) (regTwo!31454 (regTwo!31455 r!7292)))) b!5500043))

(assert (= (and b!5499610 ((_ is Union!15471) (regTwo!31454 (regTwo!31455 r!7292)))) b!5500044))

(declare-fun e!3402223 () Bool)

(assert (=> b!5499589 (= tp!1513140 e!3402223)))

(declare-fun b!5500048 () Bool)

(declare-fun tp!1513257 () Bool)

(declare-fun tp!1513256 () Bool)

(assert (=> b!5500048 (= e!3402223 (and tp!1513257 tp!1513256))))

(declare-fun b!5500045 () Bool)

(assert (=> b!5500045 (= e!3402223 tp_is_empty!40195)))

(declare-fun b!5500046 () Bool)

(declare-fun tp!1513259 () Bool)

(declare-fun tp!1513255 () Bool)

(assert (=> b!5500046 (= e!3402223 (and tp!1513259 tp!1513255))))

(declare-fun b!5500047 () Bool)

(declare-fun tp!1513258 () Bool)

(assert (=> b!5500047 (= e!3402223 tp!1513258)))

(assert (= (and b!5499589 ((_ is ElementMatch!15471) (reg!15800 (regOne!31454 r!7292)))) b!5500045))

(assert (= (and b!5499589 ((_ is Concat!24316) (reg!15800 (regOne!31454 r!7292)))) b!5500046))

(assert (= (and b!5499589 ((_ is Star!15471) (reg!15800 (regOne!31454 r!7292)))) b!5500047))

(assert (= (and b!5499589 ((_ is Union!15471) (reg!15800 (regOne!31454 r!7292)))) b!5500048))

(declare-fun e!3402225 () Bool)

(assert (=> b!5499611 (= tp!1513167 e!3402225)))

(declare-fun b!5500052 () Bool)

(declare-fun tp!1513262 () Bool)

(declare-fun tp!1513261 () Bool)

(assert (=> b!5500052 (= e!3402225 (and tp!1513262 tp!1513261))))

(declare-fun b!5500049 () Bool)

(assert (=> b!5500049 (= e!3402225 tp_is_empty!40195)))

(declare-fun b!5500050 () Bool)

(declare-fun tp!1513264 () Bool)

(declare-fun tp!1513260 () Bool)

(assert (=> b!5500050 (= e!3402225 (and tp!1513264 tp!1513260))))

(declare-fun b!5500051 () Bool)

(declare-fun tp!1513263 () Bool)

(assert (=> b!5500051 (= e!3402225 tp!1513263)))

(assert (= (and b!5499611 ((_ is ElementMatch!15471) (reg!15800 (regTwo!31455 r!7292)))) b!5500049))

(assert (= (and b!5499611 ((_ is Concat!24316) (reg!15800 (regTwo!31455 r!7292)))) b!5500050))

(assert (= (and b!5499611 ((_ is Star!15471) (reg!15800 (regTwo!31455 r!7292)))) b!5500051))

(assert (= (and b!5499611 ((_ is Union!15471) (reg!15800 (regTwo!31455 r!7292)))) b!5500052))

(declare-fun e!3402231 () Bool)

(assert (=> b!5499590 (= tp!1513139 e!3402231)))

(declare-fun b!5500067 () Bool)

(declare-fun tp!1513267 () Bool)

(declare-fun tp!1513266 () Bool)

(assert (=> b!5500067 (= e!3402231 (and tp!1513267 tp!1513266))))

(declare-fun b!5500064 () Bool)

(assert (=> b!5500064 (= e!3402231 tp_is_empty!40195)))

(declare-fun b!5500065 () Bool)

(declare-fun tp!1513269 () Bool)

(declare-fun tp!1513265 () Bool)

(assert (=> b!5500065 (= e!3402231 (and tp!1513269 tp!1513265))))

(declare-fun b!5500066 () Bool)

(declare-fun tp!1513268 () Bool)

(assert (=> b!5500066 (= e!3402231 tp!1513268)))

(assert (= (and b!5499590 ((_ is ElementMatch!15471) (regOne!31455 (regOne!31454 r!7292)))) b!5500064))

(assert (= (and b!5499590 ((_ is Concat!24316) (regOne!31455 (regOne!31454 r!7292)))) b!5500065))

(assert (= (and b!5499590 ((_ is Star!15471) (regOne!31455 (regOne!31454 r!7292)))) b!5500066))

(assert (= (and b!5499590 ((_ is Union!15471) (regOne!31455 (regOne!31454 r!7292)))) b!5500067))

(declare-fun e!3402232 () Bool)

(assert (=> b!5499590 (= tp!1513138 e!3402232)))

(declare-fun b!5500071 () Bool)

(declare-fun tp!1513272 () Bool)

(declare-fun tp!1513271 () Bool)

(assert (=> b!5500071 (= e!3402232 (and tp!1513272 tp!1513271))))

(declare-fun b!5500068 () Bool)

(assert (=> b!5500068 (= e!3402232 tp_is_empty!40195)))

(declare-fun b!5500069 () Bool)

(declare-fun tp!1513274 () Bool)

(declare-fun tp!1513270 () Bool)

(assert (=> b!5500069 (= e!3402232 (and tp!1513274 tp!1513270))))

(declare-fun b!5500070 () Bool)

(declare-fun tp!1513273 () Bool)

(assert (=> b!5500070 (= e!3402232 tp!1513273)))

(assert (= (and b!5499590 ((_ is ElementMatch!15471) (regTwo!31455 (regOne!31454 r!7292)))) b!5500068))

(assert (= (and b!5499590 ((_ is Concat!24316) (regTwo!31455 (regOne!31454 r!7292)))) b!5500069))

(assert (= (and b!5499590 ((_ is Star!15471) (regTwo!31455 (regOne!31454 r!7292)))) b!5500070))

(assert (= (and b!5499590 ((_ is Union!15471) (regTwo!31455 (regOne!31454 r!7292)))) b!5500071))

(declare-fun e!3402233 () Bool)

(assert (=> b!5499607 (= tp!1513162 e!3402233)))

(declare-fun b!5500075 () Bool)

(declare-fun tp!1513277 () Bool)

(declare-fun tp!1513276 () Bool)

(assert (=> b!5500075 (= e!3402233 (and tp!1513277 tp!1513276))))

(declare-fun b!5500072 () Bool)

(assert (=> b!5500072 (= e!3402233 tp_is_empty!40195)))

(declare-fun b!5500073 () Bool)

(declare-fun tp!1513279 () Bool)

(declare-fun tp!1513275 () Bool)

(assert (=> b!5500073 (= e!3402233 (and tp!1513279 tp!1513275))))

(declare-fun b!5500074 () Bool)

(declare-fun tp!1513278 () Bool)

(assert (=> b!5500074 (= e!3402233 tp!1513278)))

(assert (= (and b!5499607 ((_ is ElementMatch!15471) (reg!15800 (regOne!31455 r!7292)))) b!5500072))

(assert (= (and b!5499607 ((_ is Concat!24316) (reg!15800 (regOne!31455 r!7292)))) b!5500073))

(assert (= (and b!5499607 ((_ is Star!15471) (reg!15800 (regOne!31455 r!7292)))) b!5500074))

(assert (= (and b!5499607 ((_ is Union!15471) (reg!15800 (regOne!31455 r!7292)))) b!5500075))

(declare-fun e!3402234 () Bool)

(assert (=> b!5499586 (= tp!1513134 e!3402234)))

(declare-fun b!5500079 () Bool)

(declare-fun tp!1513282 () Bool)

(declare-fun tp!1513281 () Bool)

(assert (=> b!5500079 (= e!3402234 (and tp!1513282 tp!1513281))))

(declare-fun b!5500076 () Bool)

(assert (=> b!5500076 (= e!3402234 tp_is_empty!40195)))

(declare-fun b!5500077 () Bool)

(declare-fun tp!1513284 () Bool)

(declare-fun tp!1513280 () Bool)

(assert (=> b!5500077 (= e!3402234 (and tp!1513284 tp!1513280))))

(declare-fun b!5500078 () Bool)

(declare-fun tp!1513283 () Bool)

(assert (=> b!5500078 (= e!3402234 tp!1513283)))

(assert (= (and b!5499586 ((_ is ElementMatch!15471) (regOne!31455 (reg!15800 r!7292)))) b!5500076))

(assert (= (and b!5499586 ((_ is Concat!24316) (regOne!31455 (reg!15800 r!7292)))) b!5500077))

(assert (= (and b!5499586 ((_ is Star!15471) (regOne!31455 (reg!15800 r!7292)))) b!5500078))

(assert (= (and b!5499586 ((_ is Union!15471) (regOne!31455 (reg!15800 r!7292)))) b!5500079))

(declare-fun e!3402235 () Bool)

(assert (=> b!5499586 (= tp!1513133 e!3402235)))

(declare-fun b!5500083 () Bool)

(declare-fun tp!1513287 () Bool)

(declare-fun tp!1513286 () Bool)

(assert (=> b!5500083 (= e!3402235 (and tp!1513287 tp!1513286))))

(declare-fun b!5500080 () Bool)

(assert (=> b!5500080 (= e!3402235 tp_is_empty!40195)))

(declare-fun b!5500081 () Bool)

(declare-fun tp!1513289 () Bool)

(declare-fun tp!1513285 () Bool)

(assert (=> b!5500081 (= e!3402235 (and tp!1513289 tp!1513285))))

(declare-fun b!5500082 () Bool)

(declare-fun tp!1513288 () Bool)

(assert (=> b!5500082 (= e!3402235 tp!1513288)))

(assert (= (and b!5499586 ((_ is ElementMatch!15471) (regTwo!31455 (reg!15800 r!7292)))) b!5500080))

(assert (= (and b!5499586 ((_ is Concat!24316) (regTwo!31455 (reg!15800 r!7292)))) b!5500081))

(assert (= (and b!5499586 ((_ is Star!15471) (regTwo!31455 (reg!15800 r!7292)))) b!5500082))

(assert (= (and b!5499586 ((_ is Union!15471) (regTwo!31455 (reg!15800 r!7292)))) b!5500083))

(declare-fun e!3402236 () Bool)

(assert (=> b!5499608 (= tp!1513161 e!3402236)))

(declare-fun b!5500087 () Bool)

(declare-fun tp!1513292 () Bool)

(declare-fun tp!1513291 () Bool)

(assert (=> b!5500087 (= e!3402236 (and tp!1513292 tp!1513291))))

(declare-fun b!5500084 () Bool)

(assert (=> b!5500084 (= e!3402236 tp_is_empty!40195)))

(declare-fun b!5500085 () Bool)

(declare-fun tp!1513294 () Bool)

(declare-fun tp!1513290 () Bool)

(assert (=> b!5500085 (= e!3402236 (and tp!1513294 tp!1513290))))

(declare-fun b!5500086 () Bool)

(declare-fun tp!1513293 () Bool)

(assert (=> b!5500086 (= e!3402236 tp!1513293)))

(assert (= (and b!5499608 ((_ is ElementMatch!15471) (regOne!31455 (regOne!31455 r!7292)))) b!5500084))

(assert (= (and b!5499608 ((_ is Concat!24316) (regOne!31455 (regOne!31455 r!7292)))) b!5500085))

(assert (= (and b!5499608 ((_ is Star!15471) (regOne!31455 (regOne!31455 r!7292)))) b!5500086))

(assert (= (and b!5499608 ((_ is Union!15471) (regOne!31455 (regOne!31455 r!7292)))) b!5500087))

(declare-fun e!3402237 () Bool)

(assert (=> b!5499608 (= tp!1513160 e!3402237)))

(declare-fun b!5500091 () Bool)

(declare-fun tp!1513297 () Bool)

(declare-fun tp!1513296 () Bool)

(assert (=> b!5500091 (= e!3402237 (and tp!1513297 tp!1513296))))

(declare-fun b!5500088 () Bool)

(assert (=> b!5500088 (= e!3402237 tp_is_empty!40195)))

(declare-fun b!5500089 () Bool)

(declare-fun tp!1513299 () Bool)

(declare-fun tp!1513295 () Bool)

(assert (=> b!5500089 (= e!3402237 (and tp!1513299 tp!1513295))))

(declare-fun b!5500090 () Bool)

(declare-fun tp!1513298 () Bool)

(assert (=> b!5500090 (= e!3402237 tp!1513298)))

(assert (= (and b!5499608 ((_ is ElementMatch!15471) (regTwo!31455 (regOne!31455 r!7292)))) b!5500088))

(assert (= (and b!5499608 ((_ is Concat!24316) (regTwo!31455 (regOne!31455 r!7292)))) b!5500089))

(assert (= (and b!5499608 ((_ is Star!15471) (regTwo!31455 (regOne!31455 r!7292)))) b!5500090))

(assert (= (and b!5499608 ((_ is Union!15471) (regTwo!31455 (regOne!31455 r!7292)))) b!5500091))

(declare-fun e!3402238 () Bool)

(assert (=> b!5499593 (= tp!1513145 e!3402238)))

(declare-fun b!5500095 () Bool)

(declare-fun tp!1513302 () Bool)

(declare-fun tp!1513301 () Bool)

(assert (=> b!5500095 (= e!3402238 (and tp!1513302 tp!1513301))))

(declare-fun b!5500092 () Bool)

(assert (=> b!5500092 (= e!3402238 tp_is_empty!40195)))

(declare-fun b!5500093 () Bool)

(declare-fun tp!1513304 () Bool)

(declare-fun tp!1513300 () Bool)

(assert (=> b!5500093 (= e!3402238 (and tp!1513304 tp!1513300))))

(declare-fun b!5500094 () Bool)

(declare-fun tp!1513303 () Bool)

(assert (=> b!5500094 (= e!3402238 tp!1513303)))

(assert (= (and b!5499593 ((_ is ElementMatch!15471) (reg!15800 (regTwo!31454 r!7292)))) b!5500092))

(assert (= (and b!5499593 ((_ is Concat!24316) (reg!15800 (regTwo!31454 r!7292)))) b!5500093))

(assert (= (and b!5499593 ((_ is Star!15471) (reg!15800 (regTwo!31454 r!7292)))) b!5500094))

(assert (= (and b!5499593 ((_ is Union!15471) (reg!15800 (regTwo!31454 r!7292)))) b!5500095))

(declare-fun e!3402239 () Bool)

(assert (=> b!5499584 (= tp!1513136 e!3402239)))

(declare-fun b!5500099 () Bool)

(declare-fun tp!1513307 () Bool)

(declare-fun tp!1513306 () Bool)

(assert (=> b!5500099 (= e!3402239 (and tp!1513307 tp!1513306))))

(declare-fun b!5500096 () Bool)

(assert (=> b!5500096 (= e!3402239 tp_is_empty!40195)))

(declare-fun b!5500097 () Bool)

(declare-fun tp!1513309 () Bool)

(declare-fun tp!1513305 () Bool)

(assert (=> b!5500097 (= e!3402239 (and tp!1513309 tp!1513305))))

(declare-fun b!5500098 () Bool)

(declare-fun tp!1513308 () Bool)

(assert (=> b!5500098 (= e!3402239 tp!1513308)))

(assert (= (and b!5499584 ((_ is ElementMatch!15471) (regOne!31454 (reg!15800 r!7292)))) b!5500096))

(assert (= (and b!5499584 ((_ is Concat!24316) (regOne!31454 (reg!15800 r!7292)))) b!5500097))

(assert (= (and b!5499584 ((_ is Star!15471) (regOne!31454 (reg!15800 r!7292)))) b!5500098))

(assert (= (and b!5499584 ((_ is Union!15471) (regOne!31454 (reg!15800 r!7292)))) b!5500099))

(declare-fun e!3402240 () Bool)

(assert (=> b!5499584 (= tp!1513132 e!3402240)))

(declare-fun b!5500103 () Bool)

(declare-fun tp!1513312 () Bool)

(declare-fun tp!1513311 () Bool)

(assert (=> b!5500103 (= e!3402240 (and tp!1513312 tp!1513311))))

(declare-fun b!5500100 () Bool)

(assert (=> b!5500100 (= e!3402240 tp_is_empty!40195)))

(declare-fun b!5500101 () Bool)

(declare-fun tp!1513314 () Bool)

(declare-fun tp!1513310 () Bool)

(assert (=> b!5500101 (= e!3402240 (and tp!1513314 tp!1513310))))

(declare-fun b!5500102 () Bool)

(declare-fun tp!1513313 () Bool)

(assert (=> b!5500102 (= e!3402240 tp!1513313)))

(assert (= (and b!5499584 ((_ is ElementMatch!15471) (regTwo!31454 (reg!15800 r!7292)))) b!5500100))

(assert (= (and b!5499584 ((_ is Concat!24316) (regTwo!31454 (reg!15800 r!7292)))) b!5500101))

(assert (= (and b!5499584 ((_ is Star!15471) (regTwo!31454 (reg!15800 r!7292)))) b!5500102))

(assert (= (and b!5499584 ((_ is Union!15471) (regTwo!31454 (reg!15800 r!7292)))) b!5500103))

(declare-fun e!3402241 () Bool)

(assert (=> b!5499606 (= tp!1513163 e!3402241)))

(declare-fun b!5500107 () Bool)

(declare-fun tp!1513317 () Bool)

(declare-fun tp!1513316 () Bool)

(assert (=> b!5500107 (= e!3402241 (and tp!1513317 tp!1513316))))

(declare-fun b!5500104 () Bool)

(assert (=> b!5500104 (= e!3402241 tp_is_empty!40195)))

(declare-fun b!5500105 () Bool)

(declare-fun tp!1513319 () Bool)

(declare-fun tp!1513315 () Bool)

(assert (=> b!5500105 (= e!3402241 (and tp!1513319 tp!1513315))))

(declare-fun b!5500106 () Bool)

(declare-fun tp!1513318 () Bool)

(assert (=> b!5500106 (= e!3402241 tp!1513318)))

(assert (= (and b!5499606 ((_ is ElementMatch!15471) (regOne!31454 (regOne!31455 r!7292)))) b!5500104))

(assert (= (and b!5499606 ((_ is Concat!24316) (regOne!31454 (regOne!31455 r!7292)))) b!5500105))

(assert (= (and b!5499606 ((_ is Star!15471) (regOne!31454 (regOne!31455 r!7292)))) b!5500106))

(assert (= (and b!5499606 ((_ is Union!15471) (regOne!31454 (regOne!31455 r!7292)))) b!5500107))

(declare-fun e!3402242 () Bool)

(assert (=> b!5499606 (= tp!1513159 e!3402242)))

(declare-fun b!5500111 () Bool)

(declare-fun tp!1513322 () Bool)

(declare-fun tp!1513321 () Bool)

(assert (=> b!5500111 (= e!3402242 (and tp!1513322 tp!1513321))))

(declare-fun b!5500108 () Bool)

(assert (=> b!5500108 (= e!3402242 tp_is_empty!40195)))

(declare-fun b!5500109 () Bool)

(declare-fun tp!1513324 () Bool)

(declare-fun tp!1513320 () Bool)

(assert (=> b!5500109 (= e!3402242 (and tp!1513324 tp!1513320))))

(declare-fun b!5500110 () Bool)

(declare-fun tp!1513323 () Bool)

(assert (=> b!5500110 (= e!3402242 tp!1513323)))

(assert (= (and b!5499606 ((_ is ElementMatch!15471) (regTwo!31454 (regOne!31455 r!7292)))) b!5500108))

(assert (= (and b!5499606 ((_ is Concat!24316) (regTwo!31454 (regOne!31455 r!7292)))) b!5500109))

(assert (= (and b!5499606 ((_ is Star!15471) (regTwo!31454 (regOne!31455 r!7292)))) b!5500110))

(assert (= (and b!5499606 ((_ is Union!15471) (regTwo!31454 (regOne!31455 r!7292)))) b!5500111))

(declare-fun e!3402243 () Bool)

(assert (=> b!5499594 (= tp!1513144 e!3402243)))

(declare-fun b!5500115 () Bool)

(declare-fun tp!1513327 () Bool)

(declare-fun tp!1513326 () Bool)

(assert (=> b!5500115 (= e!3402243 (and tp!1513327 tp!1513326))))

(declare-fun b!5500112 () Bool)

(assert (=> b!5500112 (= e!3402243 tp_is_empty!40195)))

(declare-fun b!5500113 () Bool)

(declare-fun tp!1513329 () Bool)

(declare-fun tp!1513325 () Bool)

(assert (=> b!5500113 (= e!3402243 (and tp!1513329 tp!1513325))))

(declare-fun b!5500114 () Bool)

(declare-fun tp!1513328 () Bool)

(assert (=> b!5500114 (= e!3402243 tp!1513328)))

(assert (= (and b!5499594 ((_ is ElementMatch!15471) (regOne!31455 (regTwo!31454 r!7292)))) b!5500112))

(assert (= (and b!5499594 ((_ is Concat!24316) (regOne!31455 (regTwo!31454 r!7292)))) b!5500113))

(assert (= (and b!5499594 ((_ is Star!15471) (regOne!31455 (regTwo!31454 r!7292)))) b!5500114))

(assert (= (and b!5499594 ((_ is Union!15471) (regOne!31455 (regTwo!31454 r!7292)))) b!5500115))

(declare-fun e!3402244 () Bool)

(assert (=> b!5499594 (= tp!1513143 e!3402244)))

(declare-fun b!5500119 () Bool)

(declare-fun tp!1513332 () Bool)

(declare-fun tp!1513331 () Bool)

(assert (=> b!5500119 (= e!3402244 (and tp!1513332 tp!1513331))))

(declare-fun b!5500116 () Bool)

(assert (=> b!5500116 (= e!3402244 tp_is_empty!40195)))

(declare-fun b!5500117 () Bool)

(declare-fun tp!1513334 () Bool)

(declare-fun tp!1513330 () Bool)

(assert (=> b!5500117 (= e!3402244 (and tp!1513334 tp!1513330))))

(declare-fun b!5500118 () Bool)

(declare-fun tp!1513333 () Bool)

(assert (=> b!5500118 (= e!3402244 tp!1513333)))

(assert (= (and b!5499594 ((_ is ElementMatch!15471) (regTwo!31455 (regTwo!31454 r!7292)))) b!5500116))

(assert (= (and b!5499594 ((_ is Concat!24316) (regTwo!31455 (regTwo!31454 r!7292)))) b!5500117))

(assert (= (and b!5499594 ((_ is Star!15471) (regTwo!31455 (regTwo!31454 r!7292)))) b!5500118))

(assert (= (and b!5499594 ((_ is Union!15471) (regTwo!31455 (regTwo!31454 r!7292)))) b!5500119))

(declare-fun e!3402245 () Bool)

(assert (=> b!5499585 (= tp!1513135 e!3402245)))

(declare-fun b!5500123 () Bool)

(declare-fun tp!1513337 () Bool)

(declare-fun tp!1513336 () Bool)

(assert (=> b!5500123 (= e!3402245 (and tp!1513337 tp!1513336))))

(declare-fun b!5500120 () Bool)

(assert (=> b!5500120 (= e!3402245 tp_is_empty!40195)))

(declare-fun b!5500121 () Bool)

(declare-fun tp!1513339 () Bool)

(declare-fun tp!1513335 () Bool)

(assert (=> b!5500121 (= e!3402245 (and tp!1513339 tp!1513335))))

(declare-fun b!5500122 () Bool)

(declare-fun tp!1513338 () Bool)

(assert (=> b!5500122 (= e!3402245 tp!1513338)))

(assert (= (and b!5499585 ((_ is ElementMatch!15471) (reg!15800 (reg!15800 r!7292)))) b!5500120))

(assert (= (and b!5499585 ((_ is Concat!24316) (reg!15800 (reg!15800 r!7292)))) b!5500121))

(assert (= (and b!5499585 ((_ is Star!15471) (reg!15800 (reg!15800 r!7292)))) b!5500122))

(assert (= (and b!5499585 ((_ is Union!15471) (reg!15800 (reg!15800 r!7292)))) b!5500123))

(declare-fun b_lambda!208593 () Bool)

(assert (= b_lambda!208579 (or d!1743319 b_lambda!208593)))

(declare-fun bs!1268668 () Bool)

(declare-fun d!1743539 () Bool)

(assert (= bs!1268668 (and d!1743539 d!1743319)))

(assert (=> bs!1268668 (= (dynLambda!24465 lambda!294436 (h!69036 (exprs!5355 (h!69037 zl!343)))) (validRegex!7207 (h!69036 (exprs!5355 (h!69037 zl!343)))))))

(declare-fun m!6508430 () Bool)

(assert (=> bs!1268668 m!6508430))

(assert (=> b!5499640 d!1743539))

(declare-fun b_lambda!208595 () Bool)

(assert (= b_lambda!208583 (or d!1743243 b_lambda!208595)))

(declare-fun bs!1268669 () Bool)

(declare-fun d!1743541 () Bool)

(assert (= bs!1268669 (and d!1743541 d!1743243)))

(assert (=> bs!1268669 (= (dynLambda!24465 lambda!294399 (h!69036 (exprs!5355 setElem!36431))) (validRegex!7207 (h!69036 (exprs!5355 setElem!36431))))))

(declare-fun m!6508432 () Bool)

(assert (=> bs!1268669 m!6508432))

(assert (=> b!5499776 d!1743541))

(declare-fun b_lambda!208597 () Bool)

(assert (= b_lambda!208585 (or d!1743327 b_lambda!208597)))

(declare-fun bs!1268670 () Bool)

(declare-fun d!1743543 () Bool)

(assert (= bs!1268670 (and d!1743543 d!1743327)))

(assert (=> bs!1268670 (= (dynLambda!24465 lambda!294437 (h!69036 (exprs!5355 (h!69037 zl!343)))) (validRegex!7207 (h!69036 (exprs!5355 (h!69037 zl!343)))))))

(assert (=> bs!1268670 m!6508430))

(assert (=> b!5499844 d!1743543))

(declare-fun b_lambda!208599 () Bool)

(assert (= b_lambda!208581 (or d!1743245 b_lambda!208599)))

(declare-fun bs!1268671 () Bool)

(declare-fun d!1743545 () Bool)

(assert (= bs!1268671 (and d!1743545 d!1743245)))

(assert (=> bs!1268671 (= (dynLambda!24465 lambda!294406 (h!69036 (unfocusZipperList!899 zl!343))) (validRegex!7207 (h!69036 (unfocusZipperList!899 zl!343))))))

(declare-fun m!6508434 () Bool)

(assert (=> bs!1268671 m!6508434))

(assert (=> b!5499705 d!1743545))

(declare-fun b_lambda!208601 () Bool)

(assert (= b_lambda!208591 (or d!1743249 b_lambda!208601)))

(declare-fun bs!1268672 () Bool)

(declare-fun d!1743547 () Bool)

(assert (= bs!1268672 (and d!1743547 d!1743249)))

(assert (=> bs!1268672 (= (dynLambda!24465 lambda!294409 (h!69036 lt!2243122)) (validRegex!7207 (h!69036 lt!2243122)))))

(declare-fun m!6508436 () Bool)

(assert (=> bs!1268672 m!6508436))

(assert (=> b!5499973 d!1743547))

(declare-fun b_lambda!208603 () Bool)

(assert (= b_lambda!208587 (or b!5498870 b_lambda!208603)))

(assert (=> d!1743509 d!1743341))

(check-sat (not b!5499635) (not b_lambda!208599) (not b!5499713) (not b!5499813) (not bm!405888) (not b!5500002) (not b!5499987) (not bm!405913) (not b!5499943) (not b!5499738) (not b!5499993) (not b!5500027) (not b!5500110) tp_is_empty!40195 (not bm!405950) (not bm!405954) (not bm!405917) (not bm!405953) (not b_lambda!208603) (not b!5500094) (not b!5500086) (not b!5499752) (not b!5499927) (not d!1743389) (not b!5500026) (not b!5499992) (not b!5500117) (not b!5500081) (not bm!405903) (not b!5499666) (not d!1743455) (not bm!405935) (not b!5499986) (not b!5500067) (not b!5500021) (not b!5499711) (not d!1743431) (not b!5500074) (not b_lambda!208597) (not b!5500114) (not b!5500103) (not b!5499777) (not b!5499989) (not b_lambda!208595) (not bm!405975) (not b!5499871) (not setNonEmpty!36440) (not b!5499685) (not d!1743379) (not b!5500047) (not d!1743353) (not bm!405889) (not b!5499915) (not bm!405941) (not b!5499951) (not bm!405882) (not bm!405909) (not b!5499841) (not b!5499722) (not b!5499903) (not bm!405944) (not d!1743371) (not b!5500119) (not d!1743419) (not b!5499761) (not b!5499998) (not b!5500003) (not d!1743343) (not b!5499704) (not b_lambda!208577) (not b!5500044) (not b!5499709) (not d!1743351) (not bs!1268670) (not bm!405977) (not b!5500030) (not b!5500032) (not bs!1268668) (not d!1743493) (not bm!405916) (not b!5499913) (not b!5500025) (not b!5499950) (not b!5500115) (not b!5500085) (not b!5500078) (not d!1743459) (not bm!405964) (not bm!405894) (not b!5499715) (not b!5499877) (not b!5500024) (not d!1743367) (not b!5500106) (not b!5499916) (not bm!405924) (not b!5499999) (not b!5499651) (not b!5499665) (not b!5500038) (not bm!405881) (not b!5500043) (not b!5499789) (not b!5499845) (not b!5500121) (not bm!405884) (not b!5500040) (not d!1743523) (not d!1743509) (not bm!405910) (not b!5499962) (not b!5499717) (not bm!405947) (not b!5499875) (not b!5499862) (not bm!405920) (not d!1743467) (not b!5499812) (not bm!405885) (not b!5499662) (not b!5499806) (not b!5500048) (not b!5499720) (not b!5500102) (not setNonEmpty!36441) (not b!5500070) (not b!5500097) (not b!5500095) (not b!5500065) (not b!5499706) (not d!1743451) (not bm!405978) (not b!5500090) (not b!5499652) (not bm!405967) (not b!5500009) (not b!5500005) (not b!5500077) (not bm!405972) (not b!5500107) (not b!5500098) (not b!5500099) (not bm!405899) (not d!1743507) (not b!5500123) (not d!1743501) (not b!5499974) (not b!5500089) (not d!1743471) (not d!1743499) (not d!1743453) (not d!1743425) (not b!5499683) (not b!5500042) (not b!5500007) (not b!5499657) (not bs!1268672) (not b!5499680) (not bm!405960) (not b!5499924) (not bm!405942) (not b!5499891) (not b!5500031) (not d!1743403) (not b!5500034) (not b!5499641) (not b!5500050) (not bs!1268671) (not d!1743491) (not b!5500093) (not bm!405946) (not b!5499988) (not d!1743361) (not bm!405938) (not d!1743525) (not b!5499682) (not bm!405892) (not b!5500075) (not b_lambda!208593) (not b!5499851) (not d!1743411) (not d!1743483) (not bm!405965) (not b_lambda!208601) (not b!5499736) (not b!5500111) (not b!5499783) (not b!5500000) (not d!1743441) (not d!1743391) (not bm!405939) (not b!5499805) (not b!5499660) (not bm!405907) (not b!5500071) (not b!5499948) (not bm!405971) (not d!1743429) (not b!5500091) (not b!5499681) (not b!5500101) (not bm!405904) (not b!5499765) (not b!5500036) (not bm!405886) (not b!5500028) (not bm!405902) (not b!5499975) (not b!5499994) (not b!5499800) (not bm!405918) (not bm!405906) (not b!5500118) (not b!5499661) (not bm!405969) (not b!5499996) (not b!5499714) (not b!5499650) (not b!5499892) (not bm!405921) (not b!5500035) (not b!5500008) (not b!5499990) (not b!5499909) (not b!5499673) (not bm!405912) (not d!1743393) (not b!5499667) (not b!5500020) (not bm!405961) (not b!5500083) (not b!5500051) (not bs!1268669) (not bm!405879) (not b!5499764) (not b!5499944) (not b!5500046) (not bm!405895) (not d!1743423) (not b!5499719) (not b!5499659) (not b!5500022) (not bm!405898) (not b!5499781) (not b!5499655) (not b!5500082) (not b!5499712) (not b!5500052) (not b!5500066) (not b!5499997) (not b!5500122) (not b!5499959) (not b!5500039) (not b!5499849) (not b!5500079) (not b!5500069) (not b!5499908) (not bm!405958) (not b!5499810) (not b!5499938) (not b!5500004) (not bm!405896) (not bm!405943) (not bm!405949) (not d!1743435) (not bm!405956) (not bm!405933) (not b!5500105) (not b!5500113) (not b!5500087) (not b!5500109) (not b!5500073) (not bm!405937) (not b!5499672) (not d!1743465))
(check-sat)
