; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574202 () Bool)

(assert start!574202)

(declare-fun b!5496210 () Bool)

(declare-fun e!3400107 () Bool)

(declare-fun e!3400108 () Bool)

(assert (=> b!5496210 (= e!3400107 e!3400108)))

(declare-fun res!2343374 () Bool)

(assert (=> b!5496210 (=> res!2343374 e!3400108)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31204 0))(
  ( (C!31205 (val!25304 Int)) )
))
(declare-datatypes ((Regex!15467 0))(
  ( (ElementMatch!15467 (c!959633 C!31204)) (Concat!24312 (regOne!31446 Regex!15467) (regTwo!31446 Regex!15467)) (EmptyExpr!15467) (Star!15467 (reg!15796 Regex!15467)) (EmptyLang!15467) (Union!15467 (regOne!31447 Regex!15467) (regTwo!31447 Regex!15467)) )
))
(declare-datatypes ((List!62700 0))(
  ( (Nil!62576) (Cons!62576 (h!69024 Regex!15467) (t!375933 List!62700)) )
))
(declare-datatypes ((Context!9702 0))(
  ( (Context!9703 (exprs!5351 List!62700)) )
))
(declare-fun lt!2242834 () (InoxSet Context!9702))

(declare-fun lt!2242839 () (InoxSet Context!9702))

(assert (=> b!5496210 (= res!2343374 (not (= lt!2242834 lt!2242839)))))

(declare-fun r!7292 () Regex!15467)

(declare-datatypes ((List!62701 0))(
  ( (Nil!62577) (Cons!62577 (h!69025 C!31204) (t!375934 List!62701)) )
))
(declare-fun s!2326 () List!62701)

(declare-fun lt!2242840 () Context!9702)

(declare-fun derivationStepZipperDown!813 (Regex!15467 Context!9702 C!31204) (InoxSet Context!9702))

(assert (=> b!5496210 (= lt!2242839 (derivationStepZipperDown!813 r!7292 lt!2242840 (h!69025 s!2326)))))

(assert (=> b!5496210 (= lt!2242840 (Context!9703 Nil!62576))))

(declare-fun derivationStepZipperUp!739 (Context!9702 C!31204) (InoxSet Context!9702))

(assert (=> b!5496210 (= lt!2242834 (derivationStepZipperUp!739 (Context!9703 (Cons!62576 r!7292 Nil!62576)) (h!69025 s!2326)))))

(declare-fun b!5496211 () Bool)

(declare-fun e!3400109 () Bool)

(assert (=> b!5496211 (= e!3400109 e!3400107)))

(declare-fun res!2343380 () Bool)

(assert (=> b!5496211 (=> res!2343380 e!3400107)))

(declare-fun lt!2242838 () Bool)

(declare-fun lt!2242836 () Bool)

(declare-fun lt!2242833 () Bool)

(get-info :version)

(assert (=> b!5496211 (= res!2343380 (or (not (= lt!2242833 (or lt!2242836 lt!2242838))) ((_ is Nil!62577) s!2326)))))

(declare-fun matchRSpec!2570 (Regex!15467 List!62701) Bool)

(assert (=> b!5496211 (= lt!2242838 (matchRSpec!2570 (regTwo!31447 r!7292) s!2326))))

(declare-fun matchR!7652 (Regex!15467 List!62701) Bool)

(assert (=> b!5496211 (= lt!2242838 (matchR!7652 (regTwo!31447 r!7292) s!2326))))

(declare-datatypes ((Unit!155394 0))(
  ( (Unit!155395) )
))
(declare-fun lt!2242841 () Unit!155394)

(declare-fun mainMatchTheorem!2570 (Regex!15467 List!62701) Unit!155394)

(assert (=> b!5496211 (= lt!2242841 (mainMatchTheorem!2570 (regTwo!31447 r!7292) s!2326))))

(assert (=> b!5496211 (= lt!2242836 (matchRSpec!2570 (regOne!31447 r!7292) s!2326))))

(assert (=> b!5496211 (= lt!2242836 (matchR!7652 (regOne!31447 r!7292) s!2326))))

(declare-fun lt!2242835 () Unit!155394)

(assert (=> b!5496211 (= lt!2242835 (mainMatchTheorem!2570 (regOne!31447 r!7292) s!2326))))

(declare-fun b!5496212 () Bool)

(declare-fun e!3400103 () Bool)

(declare-fun tp!1512386 () Bool)

(declare-fun tp!1512383 () Bool)

(assert (=> b!5496212 (= e!3400103 (and tp!1512386 tp!1512383))))

(declare-fun b!5496213 () Bool)

(declare-fun res!2343376 () Bool)

(assert (=> b!5496213 (=> res!2343376 e!3400109)))

(assert (=> b!5496213 (= res!2343376 (or ((_ is EmptyExpr!15467) r!7292) ((_ is EmptyLang!15467) r!7292) ((_ is ElementMatch!15467) r!7292) (not ((_ is Union!15467) r!7292))))))

(declare-fun setIsEmpty!36399 () Bool)

(declare-fun setRes!36399 () Bool)

(assert (=> setIsEmpty!36399 setRes!36399))

(declare-fun b!5496214 () Bool)

(declare-fun tp_is_empty!40187 () Bool)

(assert (=> b!5496214 (= e!3400103 tp_is_empty!40187)))

(declare-fun b!5496215 () Bool)

(declare-fun res!2343375 () Bool)

(declare-fun e!3400104 () Bool)

(assert (=> b!5496215 (=> (not res!2343375) (not e!3400104))))

(declare-fun z!1189 () (InoxSet Context!9702))

(declare-datatypes ((List!62702 0))(
  ( (Nil!62578) (Cons!62578 (h!69026 Context!9702) (t!375935 List!62702)) )
))
(declare-fun zl!343 () List!62702)

(declare-fun toList!9251 ((InoxSet Context!9702)) List!62702)

(assert (=> b!5496215 (= res!2343375 (= (toList!9251 z!1189) zl!343))))

(declare-fun b!5496216 () Bool)

(declare-fun res!2343378 () Bool)

(assert (=> b!5496216 (=> (not res!2343378) (not e!3400104))))

(declare-fun unfocusZipper!1209 (List!62702) Regex!15467)

(assert (=> b!5496216 (= res!2343378 (= r!7292 (unfocusZipper!1209 zl!343)))))

(declare-fun b!5496218 () Bool)

(declare-fun res!2343373 () Bool)

(assert (=> b!5496218 (=> res!2343373 e!3400109)))

(declare-fun generalisedUnion!1330 (List!62700) Regex!15467)

(declare-fun unfocusZipperList!895 (List!62702) List!62700)

(assert (=> b!5496218 (= res!2343373 (not (= r!7292 (generalisedUnion!1330 (unfocusZipperList!895 zl!343)))))))

(declare-fun b!5496219 () Bool)

(assert (=> b!5496219 (= e!3400104 (not e!3400109))))

(declare-fun res!2343382 () Bool)

(assert (=> b!5496219 (=> res!2343382 e!3400109)))

(assert (=> b!5496219 (= res!2343382 (not ((_ is Cons!62578) zl!343)))))

(assert (=> b!5496219 (= lt!2242833 (matchRSpec!2570 r!7292 s!2326))))

(assert (=> b!5496219 (= lt!2242833 (matchR!7652 r!7292 s!2326))))

(declare-fun lt!2242837 () Unit!155394)

(assert (=> b!5496219 (= lt!2242837 (mainMatchTheorem!2570 r!7292 s!2326))))

(declare-fun b!5496220 () Bool)

(declare-fun tp!1512387 () Bool)

(assert (=> b!5496220 (= e!3400103 tp!1512387)))

(declare-fun b!5496221 () Bool)

(declare-fun e!3400105 () Bool)

(declare-fun tp!1512391 () Bool)

(assert (=> b!5496221 (= e!3400105 tp!1512391)))

(declare-fun e!3400110 () Bool)

(declare-fun b!5496222 () Bool)

(declare-fun tp!1512385 () Bool)

(declare-fun inv!81914 (Context!9702) Bool)

(assert (=> b!5496222 (= e!3400110 (and (inv!81914 (h!69026 zl!343)) e!3400105 tp!1512385))))

(declare-fun b!5496223 () Bool)

(assert (=> b!5496223 (= e!3400108 (= lt!2242839 ((_ map or) (derivationStepZipperDown!813 (regOne!31447 r!7292) lt!2242840 (h!69025 s!2326)) (derivationStepZipperDown!813 (regTwo!31447 r!7292) lt!2242840 (h!69025 s!2326)))))))

(declare-fun b!5496224 () Bool)

(declare-fun e!3400102 () Bool)

(declare-fun tp!1512388 () Bool)

(assert (=> b!5496224 (= e!3400102 tp!1512388)))

(declare-fun b!5496225 () Bool)

(declare-fun res!2343377 () Bool)

(assert (=> b!5496225 (=> res!2343377 e!3400109)))

(declare-fun generalisedConcat!1082 (List!62700) Regex!15467)

(assert (=> b!5496225 (= res!2343377 (not (= r!7292 (generalisedConcat!1082 (exprs!5351 (h!69026 zl!343))))))))

(declare-fun setElem!36399 () Context!9702)

(declare-fun setNonEmpty!36399 () Bool)

(declare-fun tp!1512382 () Bool)

(assert (=> setNonEmpty!36399 (= setRes!36399 (and tp!1512382 (inv!81914 setElem!36399) e!3400102))))

(declare-fun setRest!36399 () (InoxSet Context!9702))

(assert (=> setNonEmpty!36399 (= z!1189 ((_ map or) (store ((as const (Array Context!9702 Bool)) false) setElem!36399 true) setRest!36399))))

(declare-fun b!5496226 () Bool)

(declare-fun res!2343381 () Bool)

(assert (=> b!5496226 (=> res!2343381 e!3400109)))

(declare-fun isEmpty!34371 (List!62702) Bool)

(assert (=> b!5496226 (= res!2343381 (not (isEmpty!34371 (t!375935 zl!343))))))

(declare-fun b!5496227 () Bool)

(declare-fun e!3400106 () Bool)

(declare-fun tp!1512389 () Bool)

(assert (=> b!5496227 (= e!3400106 (and tp_is_empty!40187 tp!1512389))))

(declare-fun b!5496228 () Bool)

(declare-fun tp!1512390 () Bool)

(declare-fun tp!1512384 () Bool)

(assert (=> b!5496228 (= e!3400103 (and tp!1512390 tp!1512384))))

(declare-fun res!2343372 () Bool)

(assert (=> start!574202 (=> (not res!2343372) (not e!3400104))))

(declare-fun validRegex!7203 (Regex!15467) Bool)

(assert (=> start!574202 (= res!2343372 (validRegex!7203 r!7292))))

(assert (=> start!574202 e!3400104))

(assert (=> start!574202 e!3400103))

(declare-fun condSetEmpty!36399 () Bool)

(assert (=> start!574202 (= condSetEmpty!36399 (= z!1189 ((as const (Array Context!9702 Bool)) false)))))

(assert (=> start!574202 setRes!36399))

(assert (=> start!574202 e!3400110))

(assert (=> start!574202 e!3400106))

(declare-fun b!5496217 () Bool)

(declare-fun res!2343379 () Bool)

(assert (=> b!5496217 (=> res!2343379 e!3400109)))

(assert (=> b!5496217 (= res!2343379 (not ((_ is Cons!62576) (exprs!5351 (h!69026 zl!343)))))))

(assert (= (and start!574202 res!2343372) b!5496215))

(assert (= (and b!5496215 res!2343375) b!5496216))

(assert (= (and b!5496216 res!2343378) b!5496219))

(assert (= (and b!5496219 (not res!2343382)) b!5496226))

(assert (= (and b!5496226 (not res!2343381)) b!5496225))

(assert (= (and b!5496225 (not res!2343377)) b!5496217))

(assert (= (and b!5496217 (not res!2343379)) b!5496218))

(assert (= (and b!5496218 (not res!2343373)) b!5496213))

(assert (= (and b!5496213 (not res!2343376)) b!5496211))

(assert (= (and b!5496211 (not res!2343380)) b!5496210))

(assert (= (and b!5496210 (not res!2343374)) b!5496223))

(assert (= (and start!574202 ((_ is ElementMatch!15467) r!7292)) b!5496214))

(assert (= (and start!574202 ((_ is Concat!24312) r!7292)) b!5496212))

(assert (= (and start!574202 ((_ is Star!15467) r!7292)) b!5496220))

(assert (= (and start!574202 ((_ is Union!15467) r!7292)) b!5496228))

(assert (= (and start!574202 condSetEmpty!36399) setIsEmpty!36399))

(assert (= (and start!574202 (not condSetEmpty!36399)) setNonEmpty!36399))

(assert (= setNonEmpty!36399 b!5496224))

(assert (= b!5496222 b!5496221))

(assert (= (and start!574202 ((_ is Cons!62578) zl!343)) b!5496222))

(assert (= (and start!574202 ((_ is Cons!62577) s!2326)) b!5496227))

(declare-fun m!6506168 () Bool)

(assert (=> b!5496216 m!6506168))

(declare-fun m!6506170 () Bool)

(assert (=> b!5496211 m!6506170))

(declare-fun m!6506172 () Bool)

(assert (=> b!5496211 m!6506172))

(declare-fun m!6506174 () Bool)

(assert (=> b!5496211 m!6506174))

(declare-fun m!6506176 () Bool)

(assert (=> b!5496211 m!6506176))

(declare-fun m!6506178 () Bool)

(assert (=> b!5496211 m!6506178))

(declare-fun m!6506180 () Bool)

(assert (=> b!5496211 m!6506180))

(declare-fun m!6506182 () Bool)

(assert (=> b!5496226 m!6506182))

(declare-fun m!6506184 () Bool)

(assert (=> b!5496222 m!6506184))

(declare-fun m!6506186 () Bool)

(assert (=> b!5496210 m!6506186))

(declare-fun m!6506188 () Bool)

(assert (=> b!5496210 m!6506188))

(declare-fun m!6506190 () Bool)

(assert (=> b!5496225 m!6506190))

(declare-fun m!6506192 () Bool)

(assert (=> b!5496218 m!6506192))

(assert (=> b!5496218 m!6506192))

(declare-fun m!6506194 () Bool)

(assert (=> b!5496218 m!6506194))

(declare-fun m!6506196 () Bool)

(assert (=> b!5496223 m!6506196))

(declare-fun m!6506198 () Bool)

(assert (=> b!5496223 m!6506198))

(declare-fun m!6506200 () Bool)

(assert (=> b!5496215 m!6506200))

(declare-fun m!6506202 () Bool)

(assert (=> start!574202 m!6506202))

(declare-fun m!6506204 () Bool)

(assert (=> b!5496219 m!6506204))

(declare-fun m!6506206 () Bool)

(assert (=> b!5496219 m!6506206))

(declare-fun m!6506208 () Bool)

(assert (=> b!5496219 m!6506208))

(declare-fun m!6506210 () Bool)

(assert (=> setNonEmpty!36399 m!6506210))

(check-sat (not b!5496212) (not b!5496228) (not b!5496216) tp_is_empty!40187 (not b!5496221) (not b!5496211) (not b!5496224) (not b!5496220) (not b!5496226) (not b!5496218) (not start!574202) (not b!5496227) (not b!5496222) (not b!5496225) (not b!5496215) (not b!5496223) (not b!5496219) (not setNonEmpty!36399) (not b!5496210))
(check-sat)
(get-model)

(declare-fun b!5496519 () Bool)

(assert (=> b!5496519 true))

(assert (=> b!5496519 true))

(declare-fun bs!1268072 () Bool)

(declare-fun b!5496516 () Bool)

(assert (= bs!1268072 (and b!5496516 b!5496519)))

(declare-fun lambda!294275 () Int)

(declare-fun lambda!294274 () Int)

(assert (=> bs!1268072 (not (= lambda!294275 lambda!294274))))

(assert (=> b!5496516 true))

(assert (=> b!5496516 true))

(declare-fun b!5496509 () Bool)

(declare-fun res!2343481 () Bool)

(declare-fun e!3400268 () Bool)

(assert (=> b!5496509 (=> res!2343481 e!3400268)))

(declare-fun call!405387 () Bool)

(assert (=> b!5496509 (= res!2343481 call!405387)))

(declare-fun e!3400269 () Bool)

(assert (=> b!5496509 (= e!3400269 e!3400268)))

(declare-fun b!5496510 () Bool)

(declare-fun c!959726 () Bool)

(assert (=> b!5496510 (= c!959726 ((_ is ElementMatch!15467) r!7292))))

(declare-fun e!3400272 () Bool)

(declare-fun e!3400270 () Bool)

(assert (=> b!5496510 (= e!3400272 e!3400270)))

(declare-fun b!5496511 () Bool)

(declare-fun e!3400267 () Bool)

(assert (=> b!5496511 (= e!3400267 (matchRSpec!2570 (regTwo!31447 r!7292) s!2326))))

(declare-fun b!5496512 () Bool)

(declare-fun c!959724 () Bool)

(assert (=> b!5496512 (= c!959724 ((_ is Union!15467) r!7292))))

(declare-fun e!3400266 () Bool)

(assert (=> b!5496512 (= e!3400270 e!3400266)))

(declare-fun b!5496513 () Bool)

(assert (=> b!5496513 (= e!3400270 (= s!2326 (Cons!62577 (c!959633 r!7292) Nil!62577)))))

(declare-fun d!1742695 () Bool)

(declare-fun c!959723 () Bool)

(assert (=> d!1742695 (= c!959723 ((_ is EmptyExpr!15467) r!7292))))

(declare-fun e!3400271 () Bool)

(assert (=> d!1742695 (= (matchRSpec!2570 r!7292 s!2326) e!3400271)))

(declare-fun call!405386 () Bool)

(declare-fun c!959725 () Bool)

(declare-fun bm!405381 () Bool)

(declare-fun Exists!2575 (Int) Bool)

(assert (=> bm!405381 (= call!405386 (Exists!2575 (ite c!959725 lambda!294274 lambda!294275)))))

(declare-fun b!5496514 () Bool)

(assert (=> b!5496514 (= e!3400266 e!3400269)))

(assert (=> b!5496514 (= c!959725 ((_ is Star!15467) r!7292))))

(declare-fun b!5496515 () Bool)

(assert (=> b!5496515 (= e!3400266 e!3400267)))

(declare-fun res!2343482 () Bool)

(assert (=> b!5496515 (= res!2343482 (matchRSpec!2570 (regOne!31447 r!7292) s!2326))))

(assert (=> b!5496515 (=> res!2343482 e!3400267)))

(assert (=> b!5496516 (= e!3400269 call!405386)))

(declare-fun b!5496517 () Bool)

(assert (=> b!5496517 (= e!3400271 e!3400272)))

(declare-fun res!2343483 () Bool)

(assert (=> b!5496517 (= res!2343483 (not ((_ is EmptyLang!15467) r!7292)))))

(assert (=> b!5496517 (=> (not res!2343483) (not e!3400272))))

(declare-fun bm!405382 () Bool)

(declare-fun isEmpty!34374 (List!62701) Bool)

(assert (=> bm!405382 (= call!405387 (isEmpty!34374 s!2326))))

(declare-fun b!5496518 () Bool)

(assert (=> b!5496518 (= e!3400271 call!405387)))

(assert (=> b!5496519 (= e!3400268 call!405386)))

(assert (= (and d!1742695 c!959723) b!5496518))

(assert (= (and d!1742695 (not c!959723)) b!5496517))

(assert (= (and b!5496517 res!2343483) b!5496510))

(assert (= (and b!5496510 c!959726) b!5496513))

(assert (= (and b!5496510 (not c!959726)) b!5496512))

(assert (= (and b!5496512 c!959724) b!5496515))

(assert (= (and b!5496512 (not c!959724)) b!5496514))

(assert (= (and b!5496515 (not res!2343482)) b!5496511))

(assert (= (and b!5496514 c!959725) b!5496509))

(assert (= (and b!5496514 (not c!959725)) b!5496516))

(assert (= (and b!5496509 (not res!2343481)) b!5496519))

(assert (= (or b!5496519 b!5496516) bm!405381))

(assert (= (or b!5496518 b!5496509) bm!405382))

(assert (=> b!5496511 m!6506170))

(declare-fun m!6506330 () Bool)

(assert (=> bm!405381 m!6506330))

(assert (=> b!5496515 m!6506176))

(declare-fun m!6506332 () Bool)

(assert (=> bm!405382 m!6506332))

(assert (=> b!5496219 d!1742695))

(declare-fun bm!405391 () Bool)

(declare-fun call!405396 () Bool)

(assert (=> bm!405391 (= call!405396 (isEmpty!34374 s!2326))))

(declare-fun b!5496600 () Bool)

(declare-fun e!3400320 () Bool)

(declare-fun head!11771 (List!62701) C!31204)

(assert (=> b!5496600 (= e!3400320 (= (head!11771 s!2326) (c!959633 r!7292)))))

(declare-fun b!5496602 () Bool)

(declare-fun e!3400324 () Bool)

(declare-fun e!3400321 () Bool)

(assert (=> b!5496602 (= e!3400324 e!3400321)))

(declare-fun c!959751 () Bool)

(assert (=> b!5496602 (= c!959751 ((_ is EmptyLang!15467) r!7292))))

(declare-fun b!5496603 () Bool)

(declare-fun lt!2242869 () Bool)

(assert (=> b!5496603 (= e!3400324 (= lt!2242869 call!405396))))

(declare-fun b!5496604 () Bool)

(declare-fun e!3400323 () Bool)

(declare-fun derivativeStep!4349 (Regex!15467 C!31204) Regex!15467)

(declare-fun tail!10866 (List!62701) List!62701)

(assert (=> b!5496604 (= e!3400323 (matchR!7652 (derivativeStep!4349 r!7292 (head!11771 s!2326)) (tail!10866 s!2326)))))

(declare-fun b!5496605 () Bool)

(assert (=> b!5496605 (= e!3400321 (not lt!2242869))))

(declare-fun b!5496606 () Bool)

(declare-fun e!3400322 () Bool)

(declare-fun e!3400319 () Bool)

(assert (=> b!5496606 (= e!3400322 e!3400319)))

(declare-fun res!2343523 () Bool)

(assert (=> b!5496606 (=> res!2343523 e!3400319)))

(assert (=> b!5496606 (= res!2343523 call!405396)))

(declare-fun b!5496607 () Bool)

(declare-fun res!2343519 () Bool)

(assert (=> b!5496607 (=> (not res!2343519) (not e!3400320))))

(assert (=> b!5496607 (= res!2343519 (not call!405396))))

(declare-fun b!5496608 () Bool)

(declare-fun e!3400325 () Bool)

(assert (=> b!5496608 (= e!3400325 e!3400322)))

(declare-fun res!2343517 () Bool)

(assert (=> b!5496608 (=> (not res!2343517) (not e!3400322))))

(assert (=> b!5496608 (= res!2343517 (not lt!2242869))))

(declare-fun b!5496609 () Bool)

(declare-fun res!2343521 () Bool)

(assert (=> b!5496609 (=> res!2343521 e!3400319)))

(assert (=> b!5496609 (= res!2343521 (not (isEmpty!34374 (tail!10866 s!2326))))))

(declare-fun b!5496610 () Bool)

(declare-fun res!2343520 () Bool)

(assert (=> b!5496610 (=> (not res!2343520) (not e!3400320))))

(assert (=> b!5496610 (= res!2343520 (isEmpty!34374 (tail!10866 s!2326)))))

(declare-fun b!5496611 () Bool)

(declare-fun res!2343516 () Bool)

(assert (=> b!5496611 (=> res!2343516 e!3400325)))

(assert (=> b!5496611 (= res!2343516 (not ((_ is ElementMatch!15467) r!7292)))))

(assert (=> b!5496611 (= e!3400321 e!3400325)))

(declare-fun d!1742735 () Bool)

(assert (=> d!1742735 e!3400324))

(declare-fun c!959750 () Bool)

(assert (=> d!1742735 (= c!959750 ((_ is EmptyExpr!15467) r!7292))))

(assert (=> d!1742735 (= lt!2242869 e!3400323)))

(declare-fun c!959749 () Bool)

(assert (=> d!1742735 (= c!959749 (isEmpty!34374 s!2326))))

(assert (=> d!1742735 (validRegex!7203 r!7292)))

(assert (=> d!1742735 (= (matchR!7652 r!7292 s!2326) lt!2242869)))

(declare-fun b!5496601 () Bool)

(declare-fun nullable!5510 (Regex!15467) Bool)

(assert (=> b!5496601 (= e!3400323 (nullable!5510 r!7292))))

(declare-fun b!5496612 () Bool)

(declare-fun res!2343522 () Bool)

(assert (=> b!5496612 (=> res!2343522 e!3400325)))

(assert (=> b!5496612 (= res!2343522 e!3400320)))

(declare-fun res!2343518 () Bool)

(assert (=> b!5496612 (=> (not res!2343518) (not e!3400320))))

(assert (=> b!5496612 (= res!2343518 lt!2242869)))

(declare-fun b!5496613 () Bool)

(assert (=> b!5496613 (= e!3400319 (not (= (head!11771 s!2326) (c!959633 r!7292))))))

(assert (= (and d!1742735 c!959749) b!5496601))

(assert (= (and d!1742735 (not c!959749)) b!5496604))

(assert (= (and d!1742735 c!959750) b!5496603))

(assert (= (and d!1742735 (not c!959750)) b!5496602))

(assert (= (and b!5496602 c!959751) b!5496605))

(assert (= (and b!5496602 (not c!959751)) b!5496611))

(assert (= (and b!5496611 (not res!2343516)) b!5496612))

(assert (= (and b!5496612 res!2343518) b!5496607))

(assert (= (and b!5496607 res!2343519) b!5496610))

(assert (= (and b!5496610 res!2343520) b!5496600))

(assert (= (and b!5496612 (not res!2343522)) b!5496608))

(assert (= (and b!5496608 res!2343517) b!5496606))

(assert (= (and b!5496606 (not res!2343523)) b!5496609))

(assert (= (and b!5496609 (not res!2343521)) b!5496613))

(assert (= (or b!5496603 b!5496606 b!5496607) bm!405391))

(assert (=> d!1742735 m!6506332))

(assert (=> d!1742735 m!6506202))

(declare-fun m!6506356 () Bool)

(assert (=> b!5496604 m!6506356))

(assert (=> b!5496604 m!6506356))

(declare-fun m!6506360 () Bool)

(assert (=> b!5496604 m!6506360))

(declare-fun m!6506362 () Bool)

(assert (=> b!5496604 m!6506362))

(assert (=> b!5496604 m!6506360))

(assert (=> b!5496604 m!6506362))

(declare-fun m!6506366 () Bool)

(assert (=> b!5496604 m!6506366))

(assert (=> b!5496609 m!6506362))

(assert (=> b!5496609 m!6506362))

(declare-fun m!6506368 () Bool)

(assert (=> b!5496609 m!6506368))

(assert (=> b!5496613 m!6506356))

(declare-fun m!6506370 () Bool)

(assert (=> b!5496601 m!6506370))

(assert (=> bm!405391 m!6506332))

(assert (=> b!5496610 m!6506362))

(assert (=> b!5496610 m!6506362))

(assert (=> b!5496610 m!6506368))

(assert (=> b!5496600 m!6506356))

(assert (=> b!5496219 d!1742735))

(declare-fun d!1742741 () Bool)

(assert (=> d!1742741 (= (matchR!7652 r!7292 s!2326) (matchRSpec!2570 r!7292 s!2326))))

(declare-fun lt!2242872 () Unit!155394)

(declare-fun choose!41778 (Regex!15467 List!62701) Unit!155394)

(assert (=> d!1742741 (= lt!2242872 (choose!41778 r!7292 s!2326))))

(assert (=> d!1742741 (validRegex!7203 r!7292)))

(assert (=> d!1742741 (= (mainMatchTheorem!2570 r!7292 s!2326) lt!2242872)))

(declare-fun bs!1268077 () Bool)

(assert (= bs!1268077 d!1742741))

(assert (=> bs!1268077 m!6506206))

(assert (=> bs!1268077 m!6506204))

(declare-fun m!6506374 () Bool)

(assert (=> bs!1268077 m!6506374))

(assert (=> bs!1268077 m!6506202))

(assert (=> b!5496219 d!1742741))

(declare-fun bm!405407 () Bool)

(declare-fun call!405412 () (InoxSet Context!9702))

(declare-fun call!405417 () (InoxSet Context!9702))

(assert (=> bm!405407 (= call!405412 call!405417)))

(declare-fun bm!405408 () Bool)

(declare-fun c!959764 () Bool)

(declare-fun c!959766 () Bool)

(declare-fun call!405416 () List!62700)

(declare-fun $colon$colon!1564 (List!62700 Regex!15467) List!62700)

(assert (=> bm!405408 (= call!405416 ($colon$colon!1564 (exprs!5351 lt!2242840) (ite (or c!959766 c!959764) (regTwo!31446 r!7292) r!7292)))))

(declare-fun b!5496699 () Bool)

(declare-fun e!3400371 () Bool)

(assert (=> b!5496699 (= e!3400371 (nullable!5510 (regOne!31446 r!7292)))))

(declare-fun b!5496700 () Bool)

(declare-fun e!3400373 () (InoxSet Context!9702))

(assert (=> b!5496700 (= e!3400373 ((as const (Array Context!9702 Bool)) false))))

(declare-fun bm!405409 () Bool)

(declare-fun call!405415 () List!62700)

(assert (=> bm!405409 (= call!405415 call!405416)))

(declare-fun b!5496701 () Bool)

(declare-fun call!405414 () (InoxSet Context!9702))

(assert (=> b!5496701 (= e!3400373 call!405414)))

(declare-fun b!5496702 () Bool)

(declare-fun e!3400368 () (InoxSet Context!9702))

(declare-fun e!3400370 () (InoxSet Context!9702))

(assert (=> b!5496702 (= e!3400368 e!3400370)))

(declare-fun c!959765 () Bool)

(assert (=> b!5496702 (= c!959765 ((_ is Union!15467) r!7292))))

(declare-fun b!5496703 () Bool)

(assert (=> b!5496703 (= c!959766 e!3400371)))

(declare-fun res!2343531 () Bool)

(assert (=> b!5496703 (=> (not res!2343531) (not e!3400371))))

(assert (=> b!5496703 (= res!2343531 ((_ is Concat!24312) r!7292))))

(declare-fun e!3400372 () (InoxSet Context!9702))

(assert (=> b!5496703 (= e!3400370 e!3400372)))

(declare-fun d!1742743 () Bool)

(declare-fun c!959767 () Bool)

(assert (=> d!1742743 (= c!959767 (and ((_ is ElementMatch!15467) r!7292) (= (c!959633 r!7292) (h!69025 s!2326))))))

(assert (=> d!1742743 (= (derivationStepZipperDown!813 r!7292 lt!2242840 (h!69025 s!2326)) e!3400368)))

(declare-fun b!5496704 () Bool)

(assert (=> b!5496704 (= e!3400368 (store ((as const (Array Context!9702 Bool)) false) lt!2242840 true))))

(declare-fun b!5496705 () Bool)

(declare-fun c!959768 () Bool)

(assert (=> b!5496705 (= c!959768 ((_ is Star!15467) r!7292))))

(declare-fun e!3400369 () (InoxSet Context!9702))

(assert (=> b!5496705 (= e!3400369 e!3400373)))

(declare-fun bm!405410 () Bool)

(declare-fun call!405413 () (InoxSet Context!9702))

(assert (=> bm!405410 (= call!405413 (derivationStepZipperDown!813 (ite c!959765 (regTwo!31447 r!7292) (regOne!31446 r!7292)) (ite c!959765 lt!2242840 (Context!9703 call!405416)) (h!69025 s!2326)))))

(declare-fun bm!405411 () Bool)

(assert (=> bm!405411 (= call!405417 (derivationStepZipperDown!813 (ite c!959765 (regOne!31447 r!7292) (ite c!959766 (regTwo!31446 r!7292) (ite c!959764 (regOne!31446 r!7292) (reg!15796 r!7292)))) (ite (or c!959765 c!959766) lt!2242840 (Context!9703 call!405415)) (h!69025 s!2326)))))

(declare-fun b!5496706 () Bool)

(assert (=> b!5496706 (= e!3400372 e!3400369)))

(assert (=> b!5496706 (= c!959764 ((_ is Concat!24312) r!7292))))

(declare-fun b!5496707 () Bool)

(assert (=> b!5496707 (= e!3400369 call!405414)))

(declare-fun b!5496708 () Bool)

(assert (=> b!5496708 (= e!3400370 ((_ map or) call!405417 call!405413))))

(declare-fun bm!405412 () Bool)

(assert (=> bm!405412 (= call!405414 call!405412)))

(declare-fun b!5496709 () Bool)

(assert (=> b!5496709 (= e!3400372 ((_ map or) call!405413 call!405412))))

(assert (= (and d!1742743 c!959767) b!5496704))

(assert (= (and d!1742743 (not c!959767)) b!5496702))

(assert (= (and b!5496702 c!959765) b!5496708))

(assert (= (and b!5496702 (not c!959765)) b!5496703))

(assert (= (and b!5496703 res!2343531) b!5496699))

(assert (= (and b!5496703 c!959766) b!5496709))

(assert (= (and b!5496703 (not c!959766)) b!5496706))

(assert (= (and b!5496706 c!959764) b!5496707))

(assert (= (and b!5496706 (not c!959764)) b!5496705))

(assert (= (and b!5496705 c!959768) b!5496701))

(assert (= (and b!5496705 (not c!959768)) b!5496700))

(assert (= (or b!5496707 b!5496701) bm!405409))

(assert (= (or b!5496707 b!5496701) bm!405412))

(assert (= (or b!5496709 bm!405409) bm!405408))

(assert (= (or b!5496709 bm!405412) bm!405407))

(assert (= (or b!5496708 b!5496709) bm!405410))

(assert (= (or b!5496708 bm!405407) bm!405411))

(declare-fun m!6506378 () Bool)

(assert (=> bm!405410 m!6506378))

(declare-fun m!6506380 () Bool)

(assert (=> b!5496704 m!6506380))

(declare-fun m!6506382 () Bool)

(assert (=> b!5496699 m!6506382))

(declare-fun m!6506384 () Bool)

(assert (=> bm!405411 m!6506384))

(declare-fun m!6506386 () Bool)

(assert (=> bm!405408 m!6506386))

(assert (=> b!5496210 d!1742743))

(declare-fun e!3400382 () (InoxSet Context!9702))

(declare-fun b!5496720 () Bool)

(declare-fun call!405420 () (InoxSet Context!9702))

(assert (=> b!5496720 (= e!3400382 ((_ map or) call!405420 (derivationStepZipperUp!739 (Context!9703 (t!375933 (exprs!5351 (Context!9703 (Cons!62576 r!7292 Nil!62576))))) (h!69025 s!2326))))))

(declare-fun d!1742745 () Bool)

(declare-fun c!959773 () Bool)

(declare-fun e!3400380 () Bool)

(assert (=> d!1742745 (= c!959773 e!3400380)))

(declare-fun res!2343534 () Bool)

(assert (=> d!1742745 (=> (not res!2343534) (not e!3400380))))

(assert (=> d!1742745 (= res!2343534 ((_ is Cons!62576) (exprs!5351 (Context!9703 (Cons!62576 r!7292 Nil!62576)))))))

(assert (=> d!1742745 (= (derivationStepZipperUp!739 (Context!9703 (Cons!62576 r!7292 Nil!62576)) (h!69025 s!2326)) e!3400382)))

(declare-fun bm!405415 () Bool)

(assert (=> bm!405415 (= call!405420 (derivationStepZipperDown!813 (h!69024 (exprs!5351 (Context!9703 (Cons!62576 r!7292 Nil!62576)))) (Context!9703 (t!375933 (exprs!5351 (Context!9703 (Cons!62576 r!7292 Nil!62576))))) (h!69025 s!2326)))))

(declare-fun b!5496721 () Bool)

(assert (=> b!5496721 (= e!3400380 (nullable!5510 (h!69024 (exprs!5351 (Context!9703 (Cons!62576 r!7292 Nil!62576))))))))

(declare-fun b!5496722 () Bool)

(declare-fun e!3400381 () (InoxSet Context!9702))

(assert (=> b!5496722 (= e!3400382 e!3400381)))

(declare-fun c!959774 () Bool)

(assert (=> b!5496722 (= c!959774 ((_ is Cons!62576) (exprs!5351 (Context!9703 (Cons!62576 r!7292 Nil!62576)))))))

(declare-fun b!5496723 () Bool)

(assert (=> b!5496723 (= e!3400381 ((as const (Array Context!9702 Bool)) false))))

(declare-fun b!5496724 () Bool)

(assert (=> b!5496724 (= e!3400381 call!405420)))

(assert (= (and d!1742745 res!2343534) b!5496721))

(assert (= (and d!1742745 c!959773) b!5496720))

(assert (= (and d!1742745 (not c!959773)) b!5496722))

(assert (= (and b!5496722 c!959774) b!5496724))

(assert (= (and b!5496722 (not c!959774)) b!5496723))

(assert (= (or b!5496720 b!5496724) bm!405415))

(declare-fun m!6506388 () Bool)

(assert (=> b!5496720 m!6506388))

(declare-fun m!6506390 () Bool)

(assert (=> bm!405415 m!6506390))

(declare-fun m!6506392 () Bool)

(assert (=> b!5496721 m!6506392))

(assert (=> b!5496210 d!1742745))

(declare-fun b!5496745 () Bool)

(declare-fun e!3400395 () Bool)

(declare-fun isEmpty!34375 (List!62700) Bool)

(assert (=> b!5496745 (= e!3400395 (isEmpty!34375 (t!375933 (unfocusZipperList!895 zl!343))))))

(declare-fun b!5496747 () Bool)

(declare-fun e!3400400 () Bool)

(declare-fun lt!2242875 () Regex!15467)

(declare-fun isUnion!497 (Regex!15467) Bool)

(assert (=> b!5496747 (= e!3400400 (isUnion!497 lt!2242875))))

(declare-fun b!5496748 () Bool)

(declare-fun head!11772 (List!62700) Regex!15467)

(assert (=> b!5496748 (= e!3400400 (= lt!2242875 (head!11772 (unfocusZipperList!895 zl!343))))))

(declare-fun b!5496749 () Bool)

(declare-fun e!3400397 () Bool)

(declare-fun e!3400398 () Bool)

(assert (=> b!5496749 (= e!3400397 e!3400398)))

(declare-fun c!959786 () Bool)

(assert (=> b!5496749 (= c!959786 (isEmpty!34375 (unfocusZipperList!895 zl!343)))))

(declare-fun b!5496750 () Bool)

(declare-fun e!3400396 () Regex!15467)

(declare-fun e!3400399 () Regex!15467)

(assert (=> b!5496750 (= e!3400396 e!3400399)))

(declare-fun c!959783 () Bool)

(assert (=> b!5496750 (= c!959783 ((_ is Cons!62576) (unfocusZipperList!895 zl!343)))))

(declare-fun d!1742747 () Bool)

(assert (=> d!1742747 e!3400397))

(declare-fun res!2343540 () Bool)

(assert (=> d!1742747 (=> (not res!2343540) (not e!3400397))))

(assert (=> d!1742747 (= res!2343540 (validRegex!7203 lt!2242875))))

(assert (=> d!1742747 (= lt!2242875 e!3400396)))

(declare-fun c!959784 () Bool)

(assert (=> d!1742747 (= c!959784 e!3400395)))

(declare-fun res!2343539 () Bool)

(assert (=> d!1742747 (=> (not res!2343539) (not e!3400395))))

(assert (=> d!1742747 (= res!2343539 ((_ is Cons!62576) (unfocusZipperList!895 zl!343)))))

(declare-fun lambda!294281 () Int)

(declare-fun forall!14658 (List!62700 Int) Bool)

(assert (=> d!1742747 (forall!14658 (unfocusZipperList!895 zl!343) lambda!294281)))

(assert (=> d!1742747 (= (generalisedUnion!1330 (unfocusZipperList!895 zl!343)) lt!2242875)))

(declare-fun b!5496746 () Bool)

(declare-fun isEmptyLang!1067 (Regex!15467) Bool)

(assert (=> b!5496746 (= e!3400398 (isEmptyLang!1067 lt!2242875))))

(declare-fun b!5496751 () Bool)

(assert (=> b!5496751 (= e!3400399 EmptyLang!15467)))

(declare-fun b!5496752 () Bool)

(assert (=> b!5496752 (= e!3400396 (h!69024 (unfocusZipperList!895 zl!343)))))

(declare-fun b!5496753 () Bool)

(assert (=> b!5496753 (= e!3400398 e!3400400)))

(declare-fun c!959785 () Bool)

(declare-fun tail!10867 (List!62700) List!62700)

(assert (=> b!5496753 (= c!959785 (isEmpty!34375 (tail!10867 (unfocusZipperList!895 zl!343))))))

(declare-fun b!5496754 () Bool)

(assert (=> b!5496754 (= e!3400399 (Union!15467 (h!69024 (unfocusZipperList!895 zl!343)) (generalisedUnion!1330 (t!375933 (unfocusZipperList!895 zl!343)))))))

(assert (= (and d!1742747 res!2343539) b!5496745))

(assert (= (and d!1742747 c!959784) b!5496752))

(assert (= (and d!1742747 (not c!959784)) b!5496750))

(assert (= (and b!5496750 c!959783) b!5496754))

(assert (= (and b!5496750 (not c!959783)) b!5496751))

(assert (= (and d!1742747 res!2343540) b!5496749))

(assert (= (and b!5496749 c!959786) b!5496746))

(assert (= (and b!5496749 (not c!959786)) b!5496753))

(assert (= (and b!5496753 c!959785) b!5496748))

(assert (= (and b!5496753 (not c!959785)) b!5496747))

(declare-fun m!6506394 () Bool)

(assert (=> d!1742747 m!6506394))

(assert (=> d!1742747 m!6506192))

(declare-fun m!6506396 () Bool)

(assert (=> d!1742747 m!6506396))

(assert (=> b!5496749 m!6506192))

(declare-fun m!6506398 () Bool)

(assert (=> b!5496749 m!6506398))

(assert (=> b!5496748 m!6506192))

(declare-fun m!6506400 () Bool)

(assert (=> b!5496748 m!6506400))

(assert (=> b!5496753 m!6506192))

(declare-fun m!6506402 () Bool)

(assert (=> b!5496753 m!6506402))

(assert (=> b!5496753 m!6506402))

(declare-fun m!6506404 () Bool)

(assert (=> b!5496753 m!6506404))

(declare-fun m!6506406 () Bool)

(assert (=> b!5496754 m!6506406))

(declare-fun m!6506408 () Bool)

(assert (=> b!5496747 m!6506408))

(declare-fun m!6506410 () Bool)

(assert (=> b!5496746 m!6506410))

(declare-fun m!6506412 () Bool)

(assert (=> b!5496745 m!6506412))

(assert (=> b!5496218 d!1742747))

(declare-fun bs!1268078 () Bool)

(declare-fun d!1742749 () Bool)

(assert (= bs!1268078 (and d!1742749 d!1742747)))

(declare-fun lambda!294284 () Int)

(assert (=> bs!1268078 (= lambda!294284 lambda!294281)))

(declare-fun lt!2242878 () List!62700)

(assert (=> d!1742749 (forall!14658 lt!2242878 lambda!294284)))

(declare-fun e!3400403 () List!62700)

(assert (=> d!1742749 (= lt!2242878 e!3400403)))

(declare-fun c!959789 () Bool)

(assert (=> d!1742749 (= c!959789 ((_ is Cons!62578) zl!343))))

(assert (=> d!1742749 (= (unfocusZipperList!895 zl!343) lt!2242878)))

(declare-fun b!5496759 () Bool)

(assert (=> b!5496759 (= e!3400403 (Cons!62576 (generalisedConcat!1082 (exprs!5351 (h!69026 zl!343))) (unfocusZipperList!895 (t!375935 zl!343))))))

(declare-fun b!5496760 () Bool)

(assert (=> b!5496760 (= e!3400403 Nil!62576)))

(assert (= (and d!1742749 c!959789) b!5496759))

(assert (= (and d!1742749 (not c!959789)) b!5496760))

(declare-fun m!6506414 () Bool)

(assert (=> d!1742749 m!6506414))

(assert (=> b!5496759 m!6506190))

(declare-fun m!6506416 () Bool)

(assert (=> b!5496759 m!6506416))

(assert (=> b!5496218 d!1742749))

(declare-fun bs!1268079 () Bool)

(declare-fun d!1742751 () Bool)

(assert (= bs!1268079 (and d!1742751 d!1742747)))

(declare-fun lambda!294287 () Int)

(assert (=> bs!1268079 (= lambda!294287 lambda!294281)))

(declare-fun bs!1268080 () Bool)

(assert (= bs!1268080 (and d!1742751 d!1742749)))

(assert (=> bs!1268080 (= lambda!294287 lambda!294284)))

(assert (=> d!1742751 (= (inv!81914 (h!69026 zl!343)) (forall!14658 (exprs!5351 (h!69026 zl!343)) lambda!294287))))

(declare-fun bs!1268081 () Bool)

(assert (= bs!1268081 d!1742751))

(declare-fun m!6506418 () Bool)

(assert (=> bs!1268081 m!6506418))

(assert (=> b!5496222 d!1742751))

(declare-fun bs!1268082 () Bool)

(declare-fun b!5496771 () Bool)

(assert (= bs!1268082 (and b!5496771 b!5496519)))

(declare-fun lambda!294288 () Int)

(assert (=> bs!1268082 (= (and (= (reg!15796 (regTwo!31447 r!7292)) (reg!15796 r!7292)) (= (regTwo!31447 r!7292) r!7292)) (= lambda!294288 lambda!294274))))

(declare-fun bs!1268083 () Bool)

(assert (= bs!1268083 (and b!5496771 b!5496516)))

(assert (=> bs!1268083 (not (= lambda!294288 lambda!294275))))

(assert (=> b!5496771 true))

(assert (=> b!5496771 true))

(declare-fun bs!1268084 () Bool)

(declare-fun b!5496768 () Bool)

(assert (= bs!1268084 (and b!5496768 b!5496519)))

(declare-fun lambda!294289 () Int)

(assert (=> bs!1268084 (not (= lambda!294289 lambda!294274))))

(declare-fun bs!1268085 () Bool)

(assert (= bs!1268085 (and b!5496768 b!5496516)))

(assert (=> bs!1268085 (= (and (= (regOne!31446 (regTwo!31447 r!7292)) (regOne!31446 r!7292)) (= (regTwo!31446 (regTwo!31447 r!7292)) (regTwo!31446 r!7292))) (= lambda!294289 lambda!294275))))

(declare-fun bs!1268086 () Bool)

(assert (= bs!1268086 (and b!5496768 b!5496771)))

(assert (=> bs!1268086 (not (= lambda!294289 lambda!294288))))

(assert (=> b!5496768 true))

(assert (=> b!5496768 true))

(declare-fun b!5496761 () Bool)

(declare-fun res!2343541 () Bool)

(declare-fun e!3400406 () Bool)

(assert (=> b!5496761 (=> res!2343541 e!3400406)))

(declare-fun call!405422 () Bool)

(assert (=> b!5496761 (= res!2343541 call!405422)))

(declare-fun e!3400407 () Bool)

(assert (=> b!5496761 (= e!3400407 e!3400406)))

(declare-fun b!5496762 () Bool)

(declare-fun c!959793 () Bool)

(assert (=> b!5496762 (= c!959793 ((_ is ElementMatch!15467) (regTwo!31447 r!7292)))))

(declare-fun e!3400410 () Bool)

(declare-fun e!3400408 () Bool)

(assert (=> b!5496762 (= e!3400410 e!3400408)))

(declare-fun b!5496763 () Bool)

(declare-fun e!3400405 () Bool)

(assert (=> b!5496763 (= e!3400405 (matchRSpec!2570 (regTwo!31447 (regTwo!31447 r!7292)) s!2326))))

(declare-fun b!5496764 () Bool)

(declare-fun c!959791 () Bool)

(assert (=> b!5496764 (= c!959791 ((_ is Union!15467) (regTwo!31447 r!7292)))))

(declare-fun e!3400404 () Bool)

(assert (=> b!5496764 (= e!3400408 e!3400404)))

(declare-fun b!5496765 () Bool)

(assert (=> b!5496765 (= e!3400408 (= s!2326 (Cons!62577 (c!959633 (regTwo!31447 r!7292)) Nil!62577)))))

(declare-fun d!1742753 () Bool)

(declare-fun c!959790 () Bool)

(assert (=> d!1742753 (= c!959790 ((_ is EmptyExpr!15467) (regTwo!31447 r!7292)))))

(declare-fun e!3400409 () Bool)

(assert (=> d!1742753 (= (matchRSpec!2570 (regTwo!31447 r!7292) s!2326) e!3400409)))

(declare-fun call!405421 () Bool)

(declare-fun c!959792 () Bool)

(declare-fun bm!405416 () Bool)

(assert (=> bm!405416 (= call!405421 (Exists!2575 (ite c!959792 lambda!294288 lambda!294289)))))

(declare-fun b!5496766 () Bool)

(assert (=> b!5496766 (= e!3400404 e!3400407)))

(assert (=> b!5496766 (= c!959792 ((_ is Star!15467) (regTwo!31447 r!7292)))))

(declare-fun b!5496767 () Bool)

(assert (=> b!5496767 (= e!3400404 e!3400405)))

(declare-fun res!2343542 () Bool)

(assert (=> b!5496767 (= res!2343542 (matchRSpec!2570 (regOne!31447 (regTwo!31447 r!7292)) s!2326))))

(assert (=> b!5496767 (=> res!2343542 e!3400405)))

(assert (=> b!5496768 (= e!3400407 call!405421)))

(declare-fun b!5496769 () Bool)

(assert (=> b!5496769 (= e!3400409 e!3400410)))

(declare-fun res!2343543 () Bool)

(assert (=> b!5496769 (= res!2343543 (not ((_ is EmptyLang!15467) (regTwo!31447 r!7292))))))

(assert (=> b!5496769 (=> (not res!2343543) (not e!3400410))))

(declare-fun bm!405417 () Bool)

(assert (=> bm!405417 (= call!405422 (isEmpty!34374 s!2326))))

(declare-fun b!5496770 () Bool)

(assert (=> b!5496770 (= e!3400409 call!405422)))

(assert (=> b!5496771 (= e!3400406 call!405421)))

(assert (= (and d!1742753 c!959790) b!5496770))

(assert (= (and d!1742753 (not c!959790)) b!5496769))

(assert (= (and b!5496769 res!2343543) b!5496762))

(assert (= (and b!5496762 c!959793) b!5496765))

(assert (= (and b!5496762 (not c!959793)) b!5496764))

(assert (= (and b!5496764 c!959791) b!5496767))

(assert (= (and b!5496764 (not c!959791)) b!5496766))

(assert (= (and b!5496767 (not res!2343542)) b!5496763))

(assert (= (and b!5496766 c!959792) b!5496761))

(assert (= (and b!5496766 (not c!959792)) b!5496768))

(assert (= (and b!5496761 (not res!2343541)) b!5496771))

(assert (= (or b!5496771 b!5496768) bm!405416))

(assert (= (or b!5496770 b!5496761) bm!405417))

(declare-fun m!6506420 () Bool)

(assert (=> b!5496763 m!6506420))

(declare-fun m!6506422 () Bool)

(assert (=> bm!405416 m!6506422))

(declare-fun m!6506424 () Bool)

(assert (=> b!5496767 m!6506424))

(assert (=> bm!405417 m!6506332))

(assert (=> b!5496211 d!1742753))

(declare-fun d!1742755 () Bool)

(assert (=> d!1742755 (= (matchR!7652 (regOne!31447 r!7292) s!2326) (matchRSpec!2570 (regOne!31447 r!7292) s!2326))))

(declare-fun lt!2242879 () Unit!155394)

(assert (=> d!1742755 (= lt!2242879 (choose!41778 (regOne!31447 r!7292) s!2326))))

(assert (=> d!1742755 (validRegex!7203 (regOne!31447 r!7292))))

(assert (=> d!1742755 (= (mainMatchTheorem!2570 (regOne!31447 r!7292) s!2326) lt!2242879)))

(declare-fun bs!1268087 () Bool)

(assert (= bs!1268087 d!1742755))

(assert (=> bs!1268087 m!6506180))

(assert (=> bs!1268087 m!6506176))

(declare-fun m!6506426 () Bool)

(assert (=> bs!1268087 m!6506426))

(declare-fun m!6506428 () Bool)

(assert (=> bs!1268087 m!6506428))

(assert (=> b!5496211 d!1742755))

(declare-fun bm!405418 () Bool)

(declare-fun call!405423 () Bool)

(assert (=> bm!405418 (= call!405423 (isEmpty!34374 s!2326))))

(declare-fun b!5496772 () Bool)

(declare-fun e!3400412 () Bool)

(assert (=> b!5496772 (= e!3400412 (= (head!11771 s!2326) (c!959633 (regTwo!31447 r!7292))))))

(declare-fun b!5496774 () Bool)

(declare-fun e!3400416 () Bool)

(declare-fun e!3400413 () Bool)

(assert (=> b!5496774 (= e!3400416 e!3400413)))

(declare-fun c!959796 () Bool)

(assert (=> b!5496774 (= c!959796 ((_ is EmptyLang!15467) (regTwo!31447 r!7292)))))

(declare-fun b!5496775 () Bool)

(declare-fun lt!2242880 () Bool)

(assert (=> b!5496775 (= e!3400416 (= lt!2242880 call!405423))))

(declare-fun b!5496776 () Bool)

(declare-fun e!3400415 () Bool)

(assert (=> b!5496776 (= e!3400415 (matchR!7652 (derivativeStep!4349 (regTwo!31447 r!7292) (head!11771 s!2326)) (tail!10866 s!2326)))))

(declare-fun b!5496777 () Bool)

(assert (=> b!5496777 (= e!3400413 (not lt!2242880))))

(declare-fun b!5496778 () Bool)

(declare-fun e!3400414 () Bool)

(declare-fun e!3400411 () Bool)

(assert (=> b!5496778 (= e!3400414 e!3400411)))

(declare-fun res!2343551 () Bool)

(assert (=> b!5496778 (=> res!2343551 e!3400411)))

(assert (=> b!5496778 (= res!2343551 call!405423)))

(declare-fun b!5496779 () Bool)

(declare-fun res!2343547 () Bool)

(assert (=> b!5496779 (=> (not res!2343547) (not e!3400412))))

(assert (=> b!5496779 (= res!2343547 (not call!405423))))

(declare-fun b!5496780 () Bool)

(declare-fun e!3400417 () Bool)

(assert (=> b!5496780 (= e!3400417 e!3400414)))

(declare-fun res!2343545 () Bool)

(assert (=> b!5496780 (=> (not res!2343545) (not e!3400414))))

(assert (=> b!5496780 (= res!2343545 (not lt!2242880))))

(declare-fun b!5496781 () Bool)

(declare-fun res!2343549 () Bool)

(assert (=> b!5496781 (=> res!2343549 e!3400411)))

(assert (=> b!5496781 (= res!2343549 (not (isEmpty!34374 (tail!10866 s!2326))))))

(declare-fun b!5496782 () Bool)

(declare-fun res!2343548 () Bool)

(assert (=> b!5496782 (=> (not res!2343548) (not e!3400412))))

(assert (=> b!5496782 (= res!2343548 (isEmpty!34374 (tail!10866 s!2326)))))

(declare-fun b!5496783 () Bool)

(declare-fun res!2343544 () Bool)

(assert (=> b!5496783 (=> res!2343544 e!3400417)))

(assert (=> b!5496783 (= res!2343544 (not ((_ is ElementMatch!15467) (regTwo!31447 r!7292))))))

(assert (=> b!5496783 (= e!3400413 e!3400417)))

(declare-fun d!1742757 () Bool)

(assert (=> d!1742757 e!3400416))

(declare-fun c!959795 () Bool)

(assert (=> d!1742757 (= c!959795 ((_ is EmptyExpr!15467) (regTwo!31447 r!7292)))))

(assert (=> d!1742757 (= lt!2242880 e!3400415)))

(declare-fun c!959794 () Bool)

(assert (=> d!1742757 (= c!959794 (isEmpty!34374 s!2326))))

(assert (=> d!1742757 (validRegex!7203 (regTwo!31447 r!7292))))

(assert (=> d!1742757 (= (matchR!7652 (regTwo!31447 r!7292) s!2326) lt!2242880)))

(declare-fun b!5496773 () Bool)

(assert (=> b!5496773 (= e!3400415 (nullable!5510 (regTwo!31447 r!7292)))))

(declare-fun b!5496784 () Bool)

(declare-fun res!2343550 () Bool)

(assert (=> b!5496784 (=> res!2343550 e!3400417)))

(assert (=> b!5496784 (= res!2343550 e!3400412)))

(declare-fun res!2343546 () Bool)

(assert (=> b!5496784 (=> (not res!2343546) (not e!3400412))))

(assert (=> b!5496784 (= res!2343546 lt!2242880)))

(declare-fun b!5496785 () Bool)

(assert (=> b!5496785 (= e!3400411 (not (= (head!11771 s!2326) (c!959633 (regTwo!31447 r!7292)))))))

(assert (= (and d!1742757 c!959794) b!5496773))

(assert (= (and d!1742757 (not c!959794)) b!5496776))

(assert (= (and d!1742757 c!959795) b!5496775))

(assert (= (and d!1742757 (not c!959795)) b!5496774))

(assert (= (and b!5496774 c!959796) b!5496777))

(assert (= (and b!5496774 (not c!959796)) b!5496783))

(assert (= (and b!5496783 (not res!2343544)) b!5496784))

(assert (= (and b!5496784 res!2343546) b!5496779))

(assert (= (and b!5496779 res!2343547) b!5496782))

(assert (= (and b!5496782 res!2343548) b!5496772))

(assert (= (and b!5496784 (not res!2343550)) b!5496780))

(assert (= (and b!5496780 res!2343545) b!5496778))

(assert (= (and b!5496778 (not res!2343551)) b!5496781))

(assert (= (and b!5496781 (not res!2343549)) b!5496785))

(assert (= (or b!5496775 b!5496778 b!5496779) bm!405418))

(assert (=> d!1742757 m!6506332))

(declare-fun m!6506430 () Bool)

(assert (=> d!1742757 m!6506430))

(assert (=> b!5496776 m!6506356))

(assert (=> b!5496776 m!6506356))

(declare-fun m!6506432 () Bool)

(assert (=> b!5496776 m!6506432))

(assert (=> b!5496776 m!6506362))

(assert (=> b!5496776 m!6506432))

(assert (=> b!5496776 m!6506362))

(declare-fun m!6506434 () Bool)

(assert (=> b!5496776 m!6506434))

(assert (=> b!5496781 m!6506362))

(assert (=> b!5496781 m!6506362))

(assert (=> b!5496781 m!6506368))

(assert (=> b!5496785 m!6506356))

(declare-fun m!6506436 () Bool)

(assert (=> b!5496773 m!6506436))

(assert (=> bm!405418 m!6506332))

(assert (=> b!5496782 m!6506362))

(assert (=> b!5496782 m!6506362))

(assert (=> b!5496782 m!6506368))

(assert (=> b!5496772 m!6506356))

(assert (=> b!5496211 d!1742757))

(declare-fun d!1742759 () Bool)

(assert (=> d!1742759 (= (matchR!7652 (regTwo!31447 r!7292) s!2326) (matchRSpec!2570 (regTwo!31447 r!7292) s!2326))))

(declare-fun lt!2242881 () Unit!155394)

(assert (=> d!1742759 (= lt!2242881 (choose!41778 (regTwo!31447 r!7292) s!2326))))

(assert (=> d!1742759 (validRegex!7203 (regTwo!31447 r!7292))))

(assert (=> d!1742759 (= (mainMatchTheorem!2570 (regTwo!31447 r!7292) s!2326) lt!2242881)))

(declare-fun bs!1268088 () Bool)

(assert (= bs!1268088 d!1742759))

(assert (=> bs!1268088 m!6506174))

(assert (=> bs!1268088 m!6506170))

(declare-fun m!6506438 () Bool)

(assert (=> bs!1268088 m!6506438))

(assert (=> bs!1268088 m!6506430))

(assert (=> b!5496211 d!1742759))

(declare-fun bs!1268089 () Bool)

(declare-fun b!5496796 () Bool)

(assert (= bs!1268089 (and b!5496796 b!5496519)))

(declare-fun lambda!294290 () Int)

(assert (=> bs!1268089 (= (and (= (reg!15796 (regOne!31447 r!7292)) (reg!15796 r!7292)) (= (regOne!31447 r!7292) r!7292)) (= lambda!294290 lambda!294274))))

(declare-fun bs!1268090 () Bool)

(assert (= bs!1268090 (and b!5496796 b!5496516)))

(assert (=> bs!1268090 (not (= lambda!294290 lambda!294275))))

(declare-fun bs!1268091 () Bool)

(assert (= bs!1268091 (and b!5496796 b!5496771)))

(assert (=> bs!1268091 (= (and (= (reg!15796 (regOne!31447 r!7292)) (reg!15796 (regTwo!31447 r!7292))) (= (regOne!31447 r!7292) (regTwo!31447 r!7292))) (= lambda!294290 lambda!294288))))

(declare-fun bs!1268092 () Bool)

(assert (= bs!1268092 (and b!5496796 b!5496768)))

(assert (=> bs!1268092 (not (= lambda!294290 lambda!294289))))

(assert (=> b!5496796 true))

(assert (=> b!5496796 true))

(declare-fun bs!1268093 () Bool)

(declare-fun b!5496793 () Bool)

(assert (= bs!1268093 (and b!5496793 b!5496516)))

(declare-fun lambda!294291 () Int)

(assert (=> bs!1268093 (= (and (= (regOne!31446 (regOne!31447 r!7292)) (regOne!31446 r!7292)) (= (regTwo!31446 (regOne!31447 r!7292)) (regTwo!31446 r!7292))) (= lambda!294291 lambda!294275))))

(declare-fun bs!1268094 () Bool)

(assert (= bs!1268094 (and b!5496793 b!5496768)))

(assert (=> bs!1268094 (= (and (= (regOne!31446 (regOne!31447 r!7292)) (regOne!31446 (regTwo!31447 r!7292))) (= (regTwo!31446 (regOne!31447 r!7292)) (regTwo!31446 (regTwo!31447 r!7292)))) (= lambda!294291 lambda!294289))))

(declare-fun bs!1268095 () Bool)

(assert (= bs!1268095 (and b!5496793 b!5496519)))

(assert (=> bs!1268095 (not (= lambda!294291 lambda!294274))))

(declare-fun bs!1268096 () Bool)

(assert (= bs!1268096 (and b!5496793 b!5496771)))

(assert (=> bs!1268096 (not (= lambda!294291 lambda!294288))))

(declare-fun bs!1268097 () Bool)

(assert (= bs!1268097 (and b!5496793 b!5496796)))

(assert (=> bs!1268097 (not (= lambda!294291 lambda!294290))))

(assert (=> b!5496793 true))

(assert (=> b!5496793 true))

(declare-fun b!5496786 () Bool)

(declare-fun res!2343552 () Bool)

(declare-fun e!3400420 () Bool)

(assert (=> b!5496786 (=> res!2343552 e!3400420)))

(declare-fun call!405425 () Bool)

(assert (=> b!5496786 (= res!2343552 call!405425)))

(declare-fun e!3400421 () Bool)

(assert (=> b!5496786 (= e!3400421 e!3400420)))

(declare-fun b!5496787 () Bool)

(declare-fun c!959800 () Bool)

(assert (=> b!5496787 (= c!959800 ((_ is ElementMatch!15467) (regOne!31447 r!7292)))))

(declare-fun e!3400424 () Bool)

(declare-fun e!3400422 () Bool)

(assert (=> b!5496787 (= e!3400424 e!3400422)))

(declare-fun b!5496788 () Bool)

(declare-fun e!3400419 () Bool)

(assert (=> b!5496788 (= e!3400419 (matchRSpec!2570 (regTwo!31447 (regOne!31447 r!7292)) s!2326))))

(declare-fun b!5496789 () Bool)

(declare-fun c!959798 () Bool)

(assert (=> b!5496789 (= c!959798 ((_ is Union!15467) (regOne!31447 r!7292)))))

(declare-fun e!3400418 () Bool)

(assert (=> b!5496789 (= e!3400422 e!3400418)))

(declare-fun b!5496790 () Bool)

(assert (=> b!5496790 (= e!3400422 (= s!2326 (Cons!62577 (c!959633 (regOne!31447 r!7292)) Nil!62577)))))

(declare-fun d!1742761 () Bool)

(declare-fun c!959797 () Bool)

(assert (=> d!1742761 (= c!959797 ((_ is EmptyExpr!15467) (regOne!31447 r!7292)))))

(declare-fun e!3400423 () Bool)

(assert (=> d!1742761 (= (matchRSpec!2570 (regOne!31447 r!7292) s!2326) e!3400423)))

(declare-fun bm!405419 () Bool)

(declare-fun c!959799 () Bool)

(declare-fun call!405424 () Bool)

(assert (=> bm!405419 (= call!405424 (Exists!2575 (ite c!959799 lambda!294290 lambda!294291)))))

(declare-fun b!5496791 () Bool)

(assert (=> b!5496791 (= e!3400418 e!3400421)))

(assert (=> b!5496791 (= c!959799 ((_ is Star!15467) (regOne!31447 r!7292)))))

(declare-fun b!5496792 () Bool)

(assert (=> b!5496792 (= e!3400418 e!3400419)))

(declare-fun res!2343553 () Bool)

(assert (=> b!5496792 (= res!2343553 (matchRSpec!2570 (regOne!31447 (regOne!31447 r!7292)) s!2326))))

(assert (=> b!5496792 (=> res!2343553 e!3400419)))

(assert (=> b!5496793 (= e!3400421 call!405424)))

(declare-fun b!5496794 () Bool)

(assert (=> b!5496794 (= e!3400423 e!3400424)))

(declare-fun res!2343554 () Bool)

(assert (=> b!5496794 (= res!2343554 (not ((_ is EmptyLang!15467) (regOne!31447 r!7292))))))

(assert (=> b!5496794 (=> (not res!2343554) (not e!3400424))))

(declare-fun bm!405420 () Bool)

(assert (=> bm!405420 (= call!405425 (isEmpty!34374 s!2326))))

(declare-fun b!5496795 () Bool)

(assert (=> b!5496795 (= e!3400423 call!405425)))

(assert (=> b!5496796 (= e!3400420 call!405424)))

(assert (= (and d!1742761 c!959797) b!5496795))

(assert (= (and d!1742761 (not c!959797)) b!5496794))

(assert (= (and b!5496794 res!2343554) b!5496787))

(assert (= (and b!5496787 c!959800) b!5496790))

(assert (= (and b!5496787 (not c!959800)) b!5496789))

(assert (= (and b!5496789 c!959798) b!5496792))

(assert (= (and b!5496789 (not c!959798)) b!5496791))

(assert (= (and b!5496792 (not res!2343553)) b!5496788))

(assert (= (and b!5496791 c!959799) b!5496786))

(assert (= (and b!5496791 (not c!959799)) b!5496793))

(assert (= (and b!5496786 (not res!2343552)) b!5496796))

(assert (= (or b!5496796 b!5496793) bm!405419))

(assert (= (or b!5496795 b!5496786) bm!405420))

(declare-fun m!6506440 () Bool)

(assert (=> b!5496788 m!6506440))

(declare-fun m!6506442 () Bool)

(assert (=> bm!405419 m!6506442))

(declare-fun m!6506444 () Bool)

(assert (=> b!5496792 m!6506444))

(assert (=> bm!405420 m!6506332))

(assert (=> b!5496211 d!1742761))

(declare-fun bm!405421 () Bool)

(declare-fun call!405426 () Bool)

(assert (=> bm!405421 (= call!405426 (isEmpty!34374 s!2326))))

(declare-fun b!5496797 () Bool)

(declare-fun e!3400426 () Bool)

(assert (=> b!5496797 (= e!3400426 (= (head!11771 s!2326) (c!959633 (regOne!31447 r!7292))))))

(declare-fun b!5496799 () Bool)

(declare-fun e!3400430 () Bool)

(declare-fun e!3400427 () Bool)

(assert (=> b!5496799 (= e!3400430 e!3400427)))

(declare-fun c!959803 () Bool)

(assert (=> b!5496799 (= c!959803 ((_ is EmptyLang!15467) (regOne!31447 r!7292)))))

(declare-fun b!5496800 () Bool)

(declare-fun lt!2242882 () Bool)

(assert (=> b!5496800 (= e!3400430 (= lt!2242882 call!405426))))

(declare-fun b!5496801 () Bool)

(declare-fun e!3400429 () Bool)

(assert (=> b!5496801 (= e!3400429 (matchR!7652 (derivativeStep!4349 (regOne!31447 r!7292) (head!11771 s!2326)) (tail!10866 s!2326)))))

(declare-fun b!5496802 () Bool)

(assert (=> b!5496802 (= e!3400427 (not lt!2242882))))

(declare-fun b!5496803 () Bool)

(declare-fun e!3400428 () Bool)

(declare-fun e!3400425 () Bool)

(assert (=> b!5496803 (= e!3400428 e!3400425)))

(declare-fun res!2343562 () Bool)

(assert (=> b!5496803 (=> res!2343562 e!3400425)))

(assert (=> b!5496803 (= res!2343562 call!405426)))

(declare-fun b!5496804 () Bool)

(declare-fun res!2343558 () Bool)

(assert (=> b!5496804 (=> (not res!2343558) (not e!3400426))))

(assert (=> b!5496804 (= res!2343558 (not call!405426))))

(declare-fun b!5496805 () Bool)

(declare-fun e!3400431 () Bool)

(assert (=> b!5496805 (= e!3400431 e!3400428)))

(declare-fun res!2343556 () Bool)

(assert (=> b!5496805 (=> (not res!2343556) (not e!3400428))))

(assert (=> b!5496805 (= res!2343556 (not lt!2242882))))

(declare-fun b!5496806 () Bool)

(declare-fun res!2343560 () Bool)

(assert (=> b!5496806 (=> res!2343560 e!3400425)))

(assert (=> b!5496806 (= res!2343560 (not (isEmpty!34374 (tail!10866 s!2326))))))

(declare-fun b!5496807 () Bool)

(declare-fun res!2343559 () Bool)

(assert (=> b!5496807 (=> (not res!2343559) (not e!3400426))))

(assert (=> b!5496807 (= res!2343559 (isEmpty!34374 (tail!10866 s!2326)))))

(declare-fun b!5496808 () Bool)

(declare-fun res!2343555 () Bool)

(assert (=> b!5496808 (=> res!2343555 e!3400431)))

(assert (=> b!5496808 (= res!2343555 (not ((_ is ElementMatch!15467) (regOne!31447 r!7292))))))

(assert (=> b!5496808 (= e!3400427 e!3400431)))

(declare-fun d!1742763 () Bool)

(assert (=> d!1742763 e!3400430))

(declare-fun c!959802 () Bool)

(assert (=> d!1742763 (= c!959802 ((_ is EmptyExpr!15467) (regOne!31447 r!7292)))))

(assert (=> d!1742763 (= lt!2242882 e!3400429)))

(declare-fun c!959801 () Bool)

(assert (=> d!1742763 (= c!959801 (isEmpty!34374 s!2326))))

(assert (=> d!1742763 (validRegex!7203 (regOne!31447 r!7292))))

(assert (=> d!1742763 (= (matchR!7652 (regOne!31447 r!7292) s!2326) lt!2242882)))

(declare-fun b!5496798 () Bool)

(assert (=> b!5496798 (= e!3400429 (nullable!5510 (regOne!31447 r!7292)))))

(declare-fun b!5496809 () Bool)

(declare-fun res!2343561 () Bool)

(assert (=> b!5496809 (=> res!2343561 e!3400431)))

(assert (=> b!5496809 (= res!2343561 e!3400426)))

(declare-fun res!2343557 () Bool)

(assert (=> b!5496809 (=> (not res!2343557) (not e!3400426))))

(assert (=> b!5496809 (= res!2343557 lt!2242882)))

(declare-fun b!5496810 () Bool)

(assert (=> b!5496810 (= e!3400425 (not (= (head!11771 s!2326) (c!959633 (regOne!31447 r!7292)))))))

(assert (= (and d!1742763 c!959801) b!5496798))

(assert (= (and d!1742763 (not c!959801)) b!5496801))

(assert (= (and d!1742763 c!959802) b!5496800))

(assert (= (and d!1742763 (not c!959802)) b!5496799))

(assert (= (and b!5496799 c!959803) b!5496802))

(assert (= (and b!5496799 (not c!959803)) b!5496808))

(assert (= (and b!5496808 (not res!2343555)) b!5496809))

(assert (= (and b!5496809 res!2343557) b!5496804))

(assert (= (and b!5496804 res!2343558) b!5496807))

(assert (= (and b!5496807 res!2343559) b!5496797))

(assert (= (and b!5496809 (not res!2343561)) b!5496805))

(assert (= (and b!5496805 res!2343556) b!5496803))

(assert (= (and b!5496803 (not res!2343562)) b!5496806))

(assert (= (and b!5496806 (not res!2343560)) b!5496810))

(assert (= (or b!5496800 b!5496803 b!5496804) bm!405421))

(assert (=> d!1742763 m!6506332))

(assert (=> d!1742763 m!6506428))

(assert (=> b!5496801 m!6506356))

(assert (=> b!5496801 m!6506356))

(declare-fun m!6506446 () Bool)

(assert (=> b!5496801 m!6506446))

(assert (=> b!5496801 m!6506362))

(assert (=> b!5496801 m!6506446))

(assert (=> b!5496801 m!6506362))

(declare-fun m!6506448 () Bool)

(assert (=> b!5496801 m!6506448))

(assert (=> b!5496806 m!6506362))

(assert (=> b!5496806 m!6506362))

(assert (=> b!5496806 m!6506368))

(assert (=> b!5496810 m!6506356))

(declare-fun m!6506450 () Bool)

(assert (=> b!5496798 m!6506450))

(assert (=> bm!405421 m!6506332))

(assert (=> b!5496807 m!6506362))

(assert (=> b!5496807 m!6506362))

(assert (=> b!5496807 m!6506368))

(assert (=> b!5496797 m!6506356))

(assert (=> b!5496211 d!1742763))

(declare-fun bs!1268098 () Bool)

(declare-fun d!1742765 () Bool)

(assert (= bs!1268098 (and d!1742765 d!1742747)))

(declare-fun lambda!294294 () Int)

(assert (=> bs!1268098 (= lambda!294294 lambda!294281)))

(declare-fun bs!1268099 () Bool)

(assert (= bs!1268099 (and d!1742765 d!1742749)))

(assert (=> bs!1268099 (= lambda!294294 lambda!294284)))

(declare-fun bs!1268100 () Bool)

(assert (= bs!1268100 (and d!1742765 d!1742751)))

(assert (=> bs!1268100 (= lambda!294294 lambda!294287)))

(declare-fun b!5496831 () Bool)

(declare-fun e!3400445 () Bool)

(declare-fun e!3400449 () Bool)

(assert (=> b!5496831 (= e!3400445 e!3400449)))

(declare-fun c!959814 () Bool)

(assert (=> b!5496831 (= c!959814 (isEmpty!34375 (exprs!5351 (h!69026 zl!343))))))

(declare-fun b!5496832 () Bool)

(declare-fun e!3400447 () Bool)

(declare-fun lt!2242885 () Regex!15467)

(declare-fun isConcat!579 (Regex!15467) Bool)

(assert (=> b!5496832 (= e!3400447 (isConcat!579 lt!2242885))))

(declare-fun b!5496833 () Bool)

(declare-fun isEmptyExpr!1056 (Regex!15467) Bool)

(assert (=> b!5496833 (= e!3400449 (isEmptyExpr!1056 lt!2242885))))

(declare-fun b!5496834 () Bool)

(assert (=> b!5496834 (= e!3400449 e!3400447)))

(declare-fun c!959815 () Bool)

(assert (=> b!5496834 (= c!959815 (isEmpty!34375 (tail!10867 (exprs!5351 (h!69026 zl!343)))))))

(declare-fun b!5496835 () Bool)

(declare-fun e!3400444 () Regex!15467)

(declare-fun e!3400446 () Regex!15467)

(assert (=> b!5496835 (= e!3400444 e!3400446)))

(declare-fun c!959812 () Bool)

(assert (=> b!5496835 (= c!959812 ((_ is Cons!62576) (exprs!5351 (h!69026 zl!343))))))

(declare-fun b!5496836 () Bool)

(assert (=> b!5496836 (= e!3400447 (= lt!2242885 (head!11772 (exprs!5351 (h!69026 zl!343)))))))

(declare-fun b!5496838 () Bool)

(assert (=> b!5496838 (= e!3400446 (Concat!24312 (h!69024 (exprs!5351 (h!69026 zl!343))) (generalisedConcat!1082 (t!375933 (exprs!5351 (h!69026 zl!343))))))))

(declare-fun b!5496839 () Bool)

(assert (=> b!5496839 (= e!3400446 EmptyExpr!15467)))

(declare-fun b!5496840 () Bool)

(declare-fun e!3400448 () Bool)

(assert (=> b!5496840 (= e!3400448 (isEmpty!34375 (t!375933 (exprs!5351 (h!69026 zl!343)))))))

(declare-fun b!5496837 () Bool)

(assert (=> b!5496837 (= e!3400444 (h!69024 (exprs!5351 (h!69026 zl!343))))))

(assert (=> d!1742765 e!3400445))

(declare-fun res!2343567 () Bool)

(assert (=> d!1742765 (=> (not res!2343567) (not e!3400445))))

(assert (=> d!1742765 (= res!2343567 (validRegex!7203 lt!2242885))))

(assert (=> d!1742765 (= lt!2242885 e!3400444)))

(declare-fun c!959813 () Bool)

(assert (=> d!1742765 (= c!959813 e!3400448)))

(declare-fun res!2343568 () Bool)

(assert (=> d!1742765 (=> (not res!2343568) (not e!3400448))))

(assert (=> d!1742765 (= res!2343568 ((_ is Cons!62576) (exprs!5351 (h!69026 zl!343))))))

(assert (=> d!1742765 (forall!14658 (exprs!5351 (h!69026 zl!343)) lambda!294294)))

(assert (=> d!1742765 (= (generalisedConcat!1082 (exprs!5351 (h!69026 zl!343))) lt!2242885)))

(assert (= (and d!1742765 res!2343568) b!5496840))

(assert (= (and d!1742765 c!959813) b!5496837))

(assert (= (and d!1742765 (not c!959813)) b!5496835))

(assert (= (and b!5496835 c!959812) b!5496838))

(assert (= (and b!5496835 (not c!959812)) b!5496839))

(assert (= (and d!1742765 res!2343567) b!5496831))

(assert (= (and b!5496831 c!959814) b!5496833))

(assert (= (and b!5496831 (not c!959814)) b!5496834))

(assert (= (and b!5496834 c!959815) b!5496836))

(assert (= (and b!5496834 (not c!959815)) b!5496832))

(declare-fun m!6506452 () Bool)

(assert (=> d!1742765 m!6506452))

(declare-fun m!6506454 () Bool)

(assert (=> d!1742765 m!6506454))

(declare-fun m!6506456 () Bool)

(assert (=> b!5496838 m!6506456))

(declare-fun m!6506458 () Bool)

(assert (=> b!5496836 m!6506458))

(declare-fun m!6506460 () Bool)

(assert (=> b!5496832 m!6506460))

(declare-fun m!6506462 () Bool)

(assert (=> b!5496833 m!6506462))

(declare-fun m!6506464 () Bool)

(assert (=> b!5496840 m!6506464))

(declare-fun m!6506466 () Bool)

(assert (=> b!5496834 m!6506466))

(assert (=> b!5496834 m!6506466))

(declare-fun m!6506468 () Bool)

(assert (=> b!5496834 m!6506468))

(declare-fun m!6506470 () Bool)

(assert (=> b!5496831 m!6506470))

(assert (=> b!5496225 d!1742765))

(declare-fun bm!405422 () Bool)

(declare-fun call!405427 () (InoxSet Context!9702))

(declare-fun call!405432 () (InoxSet Context!9702))

(assert (=> bm!405422 (= call!405427 call!405432)))

(declare-fun call!405431 () List!62700)

(declare-fun c!959818 () Bool)

(declare-fun c!959816 () Bool)

(declare-fun bm!405423 () Bool)

(assert (=> bm!405423 (= call!405431 ($colon$colon!1564 (exprs!5351 lt!2242840) (ite (or c!959818 c!959816) (regTwo!31446 (regOne!31447 r!7292)) (regOne!31447 r!7292))))))

(declare-fun b!5496841 () Bool)

(declare-fun e!3400453 () Bool)

(assert (=> b!5496841 (= e!3400453 (nullable!5510 (regOne!31446 (regOne!31447 r!7292))))))

(declare-fun b!5496842 () Bool)

(declare-fun e!3400455 () (InoxSet Context!9702))

(assert (=> b!5496842 (= e!3400455 ((as const (Array Context!9702 Bool)) false))))

(declare-fun bm!405424 () Bool)

(declare-fun call!405430 () List!62700)

(assert (=> bm!405424 (= call!405430 call!405431)))

(declare-fun b!5496843 () Bool)

(declare-fun call!405429 () (InoxSet Context!9702))

(assert (=> b!5496843 (= e!3400455 call!405429)))

(declare-fun b!5496844 () Bool)

(declare-fun e!3400450 () (InoxSet Context!9702))

(declare-fun e!3400452 () (InoxSet Context!9702))

(assert (=> b!5496844 (= e!3400450 e!3400452)))

(declare-fun c!959817 () Bool)

(assert (=> b!5496844 (= c!959817 ((_ is Union!15467) (regOne!31447 r!7292)))))

(declare-fun b!5496845 () Bool)

(assert (=> b!5496845 (= c!959818 e!3400453)))

(declare-fun res!2343569 () Bool)

(assert (=> b!5496845 (=> (not res!2343569) (not e!3400453))))

(assert (=> b!5496845 (= res!2343569 ((_ is Concat!24312) (regOne!31447 r!7292)))))

(declare-fun e!3400454 () (InoxSet Context!9702))

(assert (=> b!5496845 (= e!3400452 e!3400454)))

(declare-fun d!1742767 () Bool)

(declare-fun c!959819 () Bool)

(assert (=> d!1742767 (= c!959819 (and ((_ is ElementMatch!15467) (regOne!31447 r!7292)) (= (c!959633 (regOne!31447 r!7292)) (h!69025 s!2326))))))

(assert (=> d!1742767 (= (derivationStepZipperDown!813 (regOne!31447 r!7292) lt!2242840 (h!69025 s!2326)) e!3400450)))

(declare-fun b!5496846 () Bool)

(assert (=> b!5496846 (= e!3400450 (store ((as const (Array Context!9702 Bool)) false) lt!2242840 true))))

(declare-fun b!5496847 () Bool)

(declare-fun c!959820 () Bool)

(assert (=> b!5496847 (= c!959820 ((_ is Star!15467) (regOne!31447 r!7292)))))

(declare-fun e!3400451 () (InoxSet Context!9702))

(assert (=> b!5496847 (= e!3400451 e!3400455)))

(declare-fun call!405428 () (InoxSet Context!9702))

(declare-fun bm!405425 () Bool)

(assert (=> bm!405425 (= call!405428 (derivationStepZipperDown!813 (ite c!959817 (regTwo!31447 (regOne!31447 r!7292)) (regOne!31446 (regOne!31447 r!7292))) (ite c!959817 lt!2242840 (Context!9703 call!405431)) (h!69025 s!2326)))))

(declare-fun bm!405426 () Bool)

(assert (=> bm!405426 (= call!405432 (derivationStepZipperDown!813 (ite c!959817 (regOne!31447 (regOne!31447 r!7292)) (ite c!959818 (regTwo!31446 (regOne!31447 r!7292)) (ite c!959816 (regOne!31446 (regOne!31447 r!7292)) (reg!15796 (regOne!31447 r!7292))))) (ite (or c!959817 c!959818) lt!2242840 (Context!9703 call!405430)) (h!69025 s!2326)))))

(declare-fun b!5496848 () Bool)

(assert (=> b!5496848 (= e!3400454 e!3400451)))

(assert (=> b!5496848 (= c!959816 ((_ is Concat!24312) (regOne!31447 r!7292)))))

(declare-fun b!5496849 () Bool)

(assert (=> b!5496849 (= e!3400451 call!405429)))

(declare-fun b!5496850 () Bool)

(assert (=> b!5496850 (= e!3400452 ((_ map or) call!405432 call!405428))))

(declare-fun bm!405427 () Bool)

(assert (=> bm!405427 (= call!405429 call!405427)))

(declare-fun b!5496851 () Bool)

(assert (=> b!5496851 (= e!3400454 ((_ map or) call!405428 call!405427))))

(assert (= (and d!1742767 c!959819) b!5496846))

(assert (= (and d!1742767 (not c!959819)) b!5496844))

(assert (= (and b!5496844 c!959817) b!5496850))

(assert (= (and b!5496844 (not c!959817)) b!5496845))

(assert (= (and b!5496845 res!2343569) b!5496841))

(assert (= (and b!5496845 c!959818) b!5496851))

(assert (= (and b!5496845 (not c!959818)) b!5496848))

(assert (= (and b!5496848 c!959816) b!5496849))

(assert (= (and b!5496848 (not c!959816)) b!5496847))

(assert (= (and b!5496847 c!959820) b!5496843))

(assert (= (and b!5496847 (not c!959820)) b!5496842))

(assert (= (or b!5496849 b!5496843) bm!405424))

(assert (= (or b!5496849 b!5496843) bm!405427))

(assert (= (or b!5496851 bm!405424) bm!405423))

(assert (= (or b!5496851 bm!405427) bm!405422))

(assert (= (or b!5496850 b!5496851) bm!405425))

(assert (= (or b!5496850 bm!405422) bm!405426))

(declare-fun m!6506472 () Bool)

(assert (=> bm!405425 m!6506472))

(assert (=> b!5496846 m!6506380))

(declare-fun m!6506474 () Bool)

(assert (=> b!5496841 m!6506474))

(declare-fun m!6506476 () Bool)

(assert (=> bm!405426 m!6506476))

(declare-fun m!6506478 () Bool)

(assert (=> bm!405423 m!6506478))

(assert (=> b!5496223 d!1742767))

(declare-fun bm!405428 () Bool)

(declare-fun call!405433 () (InoxSet Context!9702))

(declare-fun call!405438 () (InoxSet Context!9702))

(assert (=> bm!405428 (= call!405433 call!405438)))

(declare-fun call!405437 () List!62700)

(declare-fun c!959821 () Bool)

(declare-fun c!959823 () Bool)

(declare-fun bm!405429 () Bool)

(assert (=> bm!405429 (= call!405437 ($colon$colon!1564 (exprs!5351 lt!2242840) (ite (or c!959823 c!959821) (regTwo!31446 (regTwo!31447 r!7292)) (regTwo!31447 r!7292))))))

(declare-fun b!5496852 () Bool)

(declare-fun e!3400459 () Bool)

(assert (=> b!5496852 (= e!3400459 (nullable!5510 (regOne!31446 (regTwo!31447 r!7292))))))

(declare-fun b!5496853 () Bool)

(declare-fun e!3400461 () (InoxSet Context!9702))

(assert (=> b!5496853 (= e!3400461 ((as const (Array Context!9702 Bool)) false))))

(declare-fun bm!405430 () Bool)

(declare-fun call!405436 () List!62700)

(assert (=> bm!405430 (= call!405436 call!405437)))

(declare-fun b!5496854 () Bool)

(declare-fun call!405435 () (InoxSet Context!9702))

(assert (=> b!5496854 (= e!3400461 call!405435)))

(declare-fun b!5496855 () Bool)

(declare-fun e!3400456 () (InoxSet Context!9702))

(declare-fun e!3400458 () (InoxSet Context!9702))

(assert (=> b!5496855 (= e!3400456 e!3400458)))

(declare-fun c!959822 () Bool)

(assert (=> b!5496855 (= c!959822 ((_ is Union!15467) (regTwo!31447 r!7292)))))

(declare-fun b!5496856 () Bool)

(assert (=> b!5496856 (= c!959823 e!3400459)))

(declare-fun res!2343570 () Bool)

(assert (=> b!5496856 (=> (not res!2343570) (not e!3400459))))

(assert (=> b!5496856 (= res!2343570 ((_ is Concat!24312) (regTwo!31447 r!7292)))))

(declare-fun e!3400460 () (InoxSet Context!9702))

(assert (=> b!5496856 (= e!3400458 e!3400460)))

(declare-fun d!1742769 () Bool)

(declare-fun c!959824 () Bool)

(assert (=> d!1742769 (= c!959824 (and ((_ is ElementMatch!15467) (regTwo!31447 r!7292)) (= (c!959633 (regTwo!31447 r!7292)) (h!69025 s!2326))))))

(assert (=> d!1742769 (= (derivationStepZipperDown!813 (regTwo!31447 r!7292) lt!2242840 (h!69025 s!2326)) e!3400456)))

(declare-fun b!5496857 () Bool)

(assert (=> b!5496857 (= e!3400456 (store ((as const (Array Context!9702 Bool)) false) lt!2242840 true))))

(declare-fun b!5496858 () Bool)

(declare-fun c!959825 () Bool)

(assert (=> b!5496858 (= c!959825 ((_ is Star!15467) (regTwo!31447 r!7292)))))

(declare-fun e!3400457 () (InoxSet Context!9702))

(assert (=> b!5496858 (= e!3400457 e!3400461)))

(declare-fun call!405434 () (InoxSet Context!9702))

(declare-fun bm!405431 () Bool)

(assert (=> bm!405431 (= call!405434 (derivationStepZipperDown!813 (ite c!959822 (regTwo!31447 (regTwo!31447 r!7292)) (regOne!31446 (regTwo!31447 r!7292))) (ite c!959822 lt!2242840 (Context!9703 call!405437)) (h!69025 s!2326)))))

(declare-fun bm!405432 () Bool)

(assert (=> bm!405432 (= call!405438 (derivationStepZipperDown!813 (ite c!959822 (regOne!31447 (regTwo!31447 r!7292)) (ite c!959823 (regTwo!31446 (regTwo!31447 r!7292)) (ite c!959821 (regOne!31446 (regTwo!31447 r!7292)) (reg!15796 (regTwo!31447 r!7292))))) (ite (or c!959822 c!959823) lt!2242840 (Context!9703 call!405436)) (h!69025 s!2326)))))

(declare-fun b!5496859 () Bool)

(assert (=> b!5496859 (= e!3400460 e!3400457)))

(assert (=> b!5496859 (= c!959821 ((_ is Concat!24312) (regTwo!31447 r!7292)))))

(declare-fun b!5496860 () Bool)

(assert (=> b!5496860 (= e!3400457 call!405435)))

(declare-fun b!5496861 () Bool)

(assert (=> b!5496861 (= e!3400458 ((_ map or) call!405438 call!405434))))

(declare-fun bm!405433 () Bool)

(assert (=> bm!405433 (= call!405435 call!405433)))

(declare-fun b!5496862 () Bool)

(assert (=> b!5496862 (= e!3400460 ((_ map or) call!405434 call!405433))))

(assert (= (and d!1742769 c!959824) b!5496857))

(assert (= (and d!1742769 (not c!959824)) b!5496855))

(assert (= (and b!5496855 c!959822) b!5496861))

(assert (= (and b!5496855 (not c!959822)) b!5496856))

(assert (= (and b!5496856 res!2343570) b!5496852))

(assert (= (and b!5496856 c!959823) b!5496862))

(assert (= (and b!5496856 (not c!959823)) b!5496859))

(assert (= (and b!5496859 c!959821) b!5496860))

(assert (= (and b!5496859 (not c!959821)) b!5496858))

(assert (= (and b!5496858 c!959825) b!5496854))

(assert (= (and b!5496858 (not c!959825)) b!5496853))

(assert (= (or b!5496860 b!5496854) bm!405430))

(assert (= (or b!5496860 b!5496854) bm!405433))

(assert (= (or b!5496862 bm!405430) bm!405429))

(assert (= (or b!5496862 bm!405433) bm!405428))

(assert (= (or b!5496861 b!5496862) bm!405431))

(assert (= (or b!5496861 bm!405428) bm!405432))

(declare-fun m!6506480 () Bool)

(assert (=> bm!405431 m!6506480))

(assert (=> b!5496857 m!6506380))

(declare-fun m!6506482 () Bool)

(assert (=> b!5496852 m!6506482))

(declare-fun m!6506484 () Bool)

(assert (=> bm!405432 m!6506484))

(declare-fun m!6506486 () Bool)

(assert (=> bm!405429 m!6506486))

(assert (=> b!5496223 d!1742769))

(declare-fun d!1742771 () Bool)

(assert (=> d!1742771 (= (isEmpty!34371 (t!375935 zl!343)) ((_ is Nil!62578) (t!375935 zl!343)))))

(assert (=> b!5496226 d!1742771))

(declare-fun b!5496881 () Bool)

(declare-fun e!3400476 () Bool)

(declare-fun e!3400482 () Bool)

(assert (=> b!5496881 (= e!3400476 e!3400482)))

(declare-fun c!959831 () Bool)

(assert (=> b!5496881 (= c!959831 ((_ is Union!15467) r!7292))))

(declare-fun b!5496882 () Bool)

(declare-fun res!2343585 () Bool)

(declare-fun e!3400479 () Bool)

(assert (=> b!5496882 (=> (not res!2343585) (not e!3400479))))

(declare-fun call!405447 () Bool)

(assert (=> b!5496882 (= res!2343585 call!405447)))

(assert (=> b!5496882 (= e!3400482 e!3400479)))

(declare-fun b!5496883 () Bool)

(declare-fun e!3400481 () Bool)

(declare-fun call!405445 () Bool)

(assert (=> b!5496883 (= e!3400481 call!405445)))

(declare-fun b!5496884 () Bool)

(declare-fun e!3400477 () Bool)

(declare-fun e!3400478 () Bool)

(assert (=> b!5496884 (= e!3400477 e!3400478)))

(declare-fun res!2343581 () Bool)

(assert (=> b!5496884 (=> (not res!2343581) (not e!3400478))))

(assert (=> b!5496884 (= res!2343581 call!405447)))

(declare-fun bm!405440 () Bool)

(declare-fun c!959830 () Bool)

(assert (=> bm!405440 (= call!405445 (validRegex!7203 (ite c!959830 (reg!15796 r!7292) (ite c!959831 (regTwo!31447 r!7292) (regTwo!31446 r!7292)))))))

(declare-fun b!5496886 () Bool)

(declare-fun call!405446 () Bool)

(assert (=> b!5496886 (= e!3400478 call!405446)))

(declare-fun bm!405441 () Bool)

(assert (=> bm!405441 (= call!405447 (validRegex!7203 (ite c!959831 (regOne!31447 r!7292) (regOne!31446 r!7292))))))

(declare-fun b!5496887 () Bool)

(declare-fun e!3400480 () Bool)

(assert (=> b!5496887 (= e!3400480 e!3400476)))

(assert (=> b!5496887 (= c!959830 ((_ is Star!15467) r!7292))))

(declare-fun bm!405442 () Bool)

(assert (=> bm!405442 (= call!405446 call!405445)))

(declare-fun b!5496888 () Bool)

(declare-fun res!2343582 () Bool)

(assert (=> b!5496888 (=> res!2343582 e!3400477)))

(assert (=> b!5496888 (= res!2343582 (not ((_ is Concat!24312) r!7292)))))

(assert (=> b!5496888 (= e!3400482 e!3400477)))

(declare-fun b!5496889 () Bool)

(assert (=> b!5496889 (= e!3400479 call!405446)))

(declare-fun b!5496885 () Bool)

(assert (=> b!5496885 (= e!3400476 e!3400481)))

(declare-fun res!2343583 () Bool)

(assert (=> b!5496885 (= res!2343583 (not (nullable!5510 (reg!15796 r!7292))))))

(assert (=> b!5496885 (=> (not res!2343583) (not e!3400481))))

(declare-fun d!1742773 () Bool)

(declare-fun res!2343584 () Bool)

(assert (=> d!1742773 (=> res!2343584 e!3400480)))

(assert (=> d!1742773 (= res!2343584 ((_ is ElementMatch!15467) r!7292))))

(assert (=> d!1742773 (= (validRegex!7203 r!7292) e!3400480)))

(assert (= (and d!1742773 (not res!2343584)) b!5496887))

(assert (= (and b!5496887 c!959830) b!5496885))

(assert (= (and b!5496887 (not c!959830)) b!5496881))

(assert (= (and b!5496885 res!2343583) b!5496883))

(assert (= (and b!5496881 c!959831) b!5496882))

(assert (= (and b!5496881 (not c!959831)) b!5496888))

(assert (= (and b!5496882 res!2343585) b!5496889))

(assert (= (and b!5496888 (not res!2343582)) b!5496884))

(assert (= (and b!5496884 res!2343581) b!5496886))

(assert (= (or b!5496889 b!5496886) bm!405442))

(assert (= (or b!5496882 b!5496884) bm!405441))

(assert (= (or b!5496883 bm!405442) bm!405440))

(declare-fun m!6506488 () Bool)

(assert (=> bm!405440 m!6506488))

(declare-fun m!6506490 () Bool)

(assert (=> bm!405441 m!6506490))

(declare-fun m!6506492 () Bool)

(assert (=> b!5496885 m!6506492))

(assert (=> start!574202 d!1742773))

(declare-fun bs!1268101 () Bool)

(declare-fun d!1742775 () Bool)

(assert (= bs!1268101 (and d!1742775 d!1742747)))

(declare-fun lambda!294295 () Int)

(assert (=> bs!1268101 (= lambda!294295 lambda!294281)))

(declare-fun bs!1268102 () Bool)

(assert (= bs!1268102 (and d!1742775 d!1742749)))

(assert (=> bs!1268102 (= lambda!294295 lambda!294284)))

(declare-fun bs!1268103 () Bool)

(assert (= bs!1268103 (and d!1742775 d!1742751)))

(assert (=> bs!1268103 (= lambda!294295 lambda!294287)))

(declare-fun bs!1268104 () Bool)

(assert (= bs!1268104 (and d!1742775 d!1742765)))

(assert (=> bs!1268104 (= lambda!294295 lambda!294294)))

(assert (=> d!1742775 (= (inv!81914 setElem!36399) (forall!14658 (exprs!5351 setElem!36399) lambda!294295))))

(declare-fun bs!1268105 () Bool)

(assert (= bs!1268105 d!1742775))

(declare-fun m!6506494 () Bool)

(assert (=> bs!1268105 m!6506494))

(assert (=> setNonEmpty!36399 d!1742775))

(declare-fun d!1742777 () Bool)

(declare-fun e!3400485 () Bool)

(assert (=> d!1742777 e!3400485))

(declare-fun res!2343588 () Bool)

(assert (=> d!1742777 (=> (not res!2343588) (not e!3400485))))

(declare-fun lt!2242888 () List!62702)

(declare-fun noDuplicate!1476 (List!62702) Bool)

(assert (=> d!1742777 (= res!2343588 (noDuplicate!1476 lt!2242888))))

(declare-fun choose!41779 ((InoxSet Context!9702)) List!62702)

(assert (=> d!1742777 (= lt!2242888 (choose!41779 z!1189))))

(assert (=> d!1742777 (= (toList!9251 z!1189) lt!2242888)))

(declare-fun b!5496892 () Bool)

(declare-fun content!11237 (List!62702) (InoxSet Context!9702))

(assert (=> b!5496892 (= e!3400485 (= (content!11237 lt!2242888) z!1189))))

(assert (= (and d!1742777 res!2343588) b!5496892))

(declare-fun m!6506496 () Bool)

(assert (=> d!1742777 m!6506496))

(declare-fun m!6506498 () Bool)

(assert (=> d!1742777 m!6506498))

(declare-fun m!6506500 () Bool)

(assert (=> b!5496892 m!6506500))

(assert (=> b!5496215 d!1742777))

(declare-fun d!1742779 () Bool)

(declare-fun lt!2242891 () Regex!15467)

(assert (=> d!1742779 (validRegex!7203 lt!2242891)))

(assert (=> d!1742779 (= lt!2242891 (generalisedUnion!1330 (unfocusZipperList!895 zl!343)))))

(assert (=> d!1742779 (= (unfocusZipper!1209 zl!343) lt!2242891)))

(declare-fun bs!1268106 () Bool)

(assert (= bs!1268106 d!1742779))

(declare-fun m!6506502 () Bool)

(assert (=> bs!1268106 m!6506502))

(assert (=> bs!1268106 m!6506192))

(assert (=> bs!1268106 m!6506192))

(assert (=> bs!1268106 m!6506194))

(assert (=> b!5496216 d!1742779))

(declare-fun b!5496906 () Bool)

(declare-fun e!3400488 () Bool)

(declare-fun tp!1512460 () Bool)

(declare-fun tp!1512463 () Bool)

(assert (=> b!5496906 (= e!3400488 (and tp!1512460 tp!1512463))))

(declare-fun b!5496905 () Bool)

(declare-fun tp!1512464 () Bool)

(assert (=> b!5496905 (= e!3400488 tp!1512464)))

(declare-fun b!5496903 () Bool)

(assert (=> b!5496903 (= e!3400488 tp_is_empty!40187)))

(declare-fun b!5496904 () Bool)

(declare-fun tp!1512462 () Bool)

(declare-fun tp!1512461 () Bool)

(assert (=> b!5496904 (= e!3400488 (and tp!1512462 tp!1512461))))

(assert (=> b!5496220 (= tp!1512387 e!3400488)))

(assert (= (and b!5496220 ((_ is ElementMatch!15467) (reg!15796 r!7292))) b!5496903))

(assert (= (and b!5496220 ((_ is Concat!24312) (reg!15796 r!7292))) b!5496904))

(assert (= (and b!5496220 ((_ is Star!15467) (reg!15796 r!7292))) b!5496905))

(assert (= (and b!5496220 ((_ is Union!15467) (reg!15796 r!7292))) b!5496906))

(declare-fun b!5496911 () Bool)

(declare-fun e!3400491 () Bool)

(declare-fun tp!1512469 () Bool)

(declare-fun tp!1512470 () Bool)

(assert (=> b!5496911 (= e!3400491 (and tp!1512469 tp!1512470))))

(assert (=> b!5496224 (= tp!1512388 e!3400491)))

(assert (= (and b!5496224 ((_ is Cons!62576) (exprs!5351 setElem!36399))) b!5496911))

(declare-fun b!5496915 () Bool)

(declare-fun e!3400492 () Bool)

(declare-fun tp!1512471 () Bool)

(declare-fun tp!1512474 () Bool)

(assert (=> b!5496915 (= e!3400492 (and tp!1512471 tp!1512474))))

(declare-fun b!5496914 () Bool)

(declare-fun tp!1512475 () Bool)

(assert (=> b!5496914 (= e!3400492 tp!1512475)))

(declare-fun b!5496912 () Bool)

(assert (=> b!5496912 (= e!3400492 tp_is_empty!40187)))

(declare-fun b!5496913 () Bool)

(declare-fun tp!1512473 () Bool)

(declare-fun tp!1512472 () Bool)

(assert (=> b!5496913 (= e!3400492 (and tp!1512473 tp!1512472))))

(assert (=> b!5496228 (= tp!1512390 e!3400492)))

(assert (= (and b!5496228 ((_ is ElementMatch!15467) (regOne!31447 r!7292))) b!5496912))

(assert (= (and b!5496228 ((_ is Concat!24312) (regOne!31447 r!7292))) b!5496913))

(assert (= (and b!5496228 ((_ is Star!15467) (regOne!31447 r!7292))) b!5496914))

(assert (= (and b!5496228 ((_ is Union!15467) (regOne!31447 r!7292))) b!5496915))

(declare-fun b!5496919 () Bool)

(declare-fun e!3400493 () Bool)

(declare-fun tp!1512476 () Bool)

(declare-fun tp!1512479 () Bool)

(assert (=> b!5496919 (= e!3400493 (and tp!1512476 tp!1512479))))

(declare-fun b!5496918 () Bool)

(declare-fun tp!1512480 () Bool)

(assert (=> b!5496918 (= e!3400493 tp!1512480)))

(declare-fun b!5496916 () Bool)

(assert (=> b!5496916 (= e!3400493 tp_is_empty!40187)))

(declare-fun b!5496917 () Bool)

(declare-fun tp!1512478 () Bool)

(declare-fun tp!1512477 () Bool)

(assert (=> b!5496917 (= e!3400493 (and tp!1512478 tp!1512477))))

(assert (=> b!5496228 (= tp!1512384 e!3400493)))

(assert (= (and b!5496228 ((_ is ElementMatch!15467) (regTwo!31447 r!7292))) b!5496916))

(assert (= (and b!5496228 ((_ is Concat!24312) (regTwo!31447 r!7292))) b!5496917))

(assert (= (and b!5496228 ((_ is Star!15467) (regTwo!31447 r!7292))) b!5496918))

(assert (= (and b!5496228 ((_ is Union!15467) (regTwo!31447 r!7292))) b!5496919))

(declare-fun b!5496927 () Bool)

(declare-fun e!3400499 () Bool)

(declare-fun tp!1512485 () Bool)

(assert (=> b!5496927 (= e!3400499 tp!1512485)))

(declare-fun b!5496926 () Bool)

(declare-fun e!3400498 () Bool)

(declare-fun tp!1512486 () Bool)

(assert (=> b!5496926 (= e!3400498 (and (inv!81914 (h!69026 (t!375935 zl!343))) e!3400499 tp!1512486))))

(assert (=> b!5496222 (= tp!1512385 e!3400498)))

(assert (= b!5496926 b!5496927))

(assert (= (and b!5496222 ((_ is Cons!62578) (t!375935 zl!343))) b!5496926))

(declare-fun m!6506504 () Bool)

(assert (=> b!5496926 m!6506504))

(declare-fun b!5496931 () Bool)

(declare-fun e!3400500 () Bool)

(declare-fun tp!1512487 () Bool)

(declare-fun tp!1512490 () Bool)

(assert (=> b!5496931 (= e!3400500 (and tp!1512487 tp!1512490))))

(declare-fun b!5496930 () Bool)

(declare-fun tp!1512491 () Bool)

(assert (=> b!5496930 (= e!3400500 tp!1512491)))

(declare-fun b!5496928 () Bool)

(assert (=> b!5496928 (= e!3400500 tp_is_empty!40187)))

(declare-fun b!5496929 () Bool)

(declare-fun tp!1512489 () Bool)

(declare-fun tp!1512488 () Bool)

(assert (=> b!5496929 (= e!3400500 (and tp!1512489 tp!1512488))))

(assert (=> b!5496212 (= tp!1512386 e!3400500)))

(assert (= (and b!5496212 ((_ is ElementMatch!15467) (regOne!31446 r!7292))) b!5496928))

(assert (= (and b!5496212 ((_ is Concat!24312) (regOne!31446 r!7292))) b!5496929))

(assert (= (and b!5496212 ((_ is Star!15467) (regOne!31446 r!7292))) b!5496930))

(assert (= (and b!5496212 ((_ is Union!15467) (regOne!31446 r!7292))) b!5496931))

(declare-fun b!5496935 () Bool)

(declare-fun e!3400501 () Bool)

(declare-fun tp!1512492 () Bool)

(declare-fun tp!1512495 () Bool)

(assert (=> b!5496935 (= e!3400501 (and tp!1512492 tp!1512495))))

(declare-fun b!5496934 () Bool)

(declare-fun tp!1512496 () Bool)

(assert (=> b!5496934 (= e!3400501 tp!1512496)))

(declare-fun b!5496932 () Bool)

(assert (=> b!5496932 (= e!3400501 tp_is_empty!40187)))

(declare-fun b!5496933 () Bool)

(declare-fun tp!1512494 () Bool)

(declare-fun tp!1512493 () Bool)

(assert (=> b!5496933 (= e!3400501 (and tp!1512494 tp!1512493))))

(assert (=> b!5496212 (= tp!1512383 e!3400501)))

(assert (= (and b!5496212 ((_ is ElementMatch!15467) (regTwo!31446 r!7292))) b!5496932))

(assert (= (and b!5496212 ((_ is Concat!24312) (regTwo!31446 r!7292))) b!5496933))

(assert (= (and b!5496212 ((_ is Star!15467) (regTwo!31446 r!7292))) b!5496934))

(assert (= (and b!5496212 ((_ is Union!15467) (regTwo!31446 r!7292))) b!5496935))

(declare-fun b!5496940 () Bool)

(declare-fun e!3400504 () Bool)

(declare-fun tp!1512499 () Bool)

(assert (=> b!5496940 (= e!3400504 (and tp_is_empty!40187 tp!1512499))))

(assert (=> b!5496227 (= tp!1512389 e!3400504)))

(assert (= (and b!5496227 ((_ is Cons!62577) (t!375934 s!2326))) b!5496940))

(declare-fun condSetEmpty!36405 () Bool)

(assert (=> setNonEmpty!36399 (= condSetEmpty!36405 (= setRest!36399 ((as const (Array Context!9702 Bool)) false)))))

(declare-fun setRes!36405 () Bool)

(assert (=> setNonEmpty!36399 (= tp!1512382 setRes!36405)))

(declare-fun setIsEmpty!36405 () Bool)

(assert (=> setIsEmpty!36405 setRes!36405))

(declare-fun setElem!36405 () Context!9702)

(declare-fun e!3400507 () Bool)

(declare-fun setNonEmpty!36405 () Bool)

(declare-fun tp!1512505 () Bool)

(assert (=> setNonEmpty!36405 (= setRes!36405 (and tp!1512505 (inv!81914 setElem!36405) e!3400507))))

(declare-fun setRest!36405 () (InoxSet Context!9702))

(assert (=> setNonEmpty!36405 (= setRest!36399 ((_ map or) (store ((as const (Array Context!9702 Bool)) false) setElem!36405 true) setRest!36405))))

(declare-fun b!5496945 () Bool)

(declare-fun tp!1512504 () Bool)

(assert (=> b!5496945 (= e!3400507 tp!1512504)))

(assert (= (and setNonEmpty!36399 condSetEmpty!36405) setIsEmpty!36405))

(assert (= (and setNonEmpty!36399 (not condSetEmpty!36405)) setNonEmpty!36405))

(assert (= setNonEmpty!36405 b!5496945))

(declare-fun m!6506506 () Bool)

(assert (=> setNonEmpty!36405 m!6506506))

(declare-fun b!5496946 () Bool)

(declare-fun e!3400508 () Bool)

(declare-fun tp!1512506 () Bool)

(declare-fun tp!1512507 () Bool)

(assert (=> b!5496946 (= e!3400508 (and tp!1512506 tp!1512507))))

(assert (=> b!5496221 (= tp!1512391 e!3400508)))

(assert (= (and b!5496221 ((_ is Cons!62576) (exprs!5351 (h!69026 zl!343)))) b!5496946))

(check-sat (not b!5496807) (not bm!405432) (not bm!405419) (not bm!405423) (not b!5496806) (not b!5496919) (not b!5496797) (not b!5496905) (not b!5496885) (not bm!405381) (not b!5496745) (not bm!405429) (not b!5496788) (not b!5496749) (not bm!405415) (not b!5496836) (not b!5496759) (not b!5496831) (not b!5496852) (not b!5496838) (not b!5496911) (not b!5496699) (not b!5496940) (not d!1742765) (not b!5496767) (not bm!405417) (not bm!405420) (not b!5496776) (not b!5496610) (not b!5496810) (not b!5496918) (not b!5496927) (not bm!405426) (not d!1742735) (not b!5496747) (not bm!405431) (not d!1742755) (not b!5496781) tp_is_empty!40187 (not b!5496604) (not bm!405421) (not b!5496720) (not b!5496773) (not d!1742741) (not b!5496929) (not b!5496782) (not b!5496721) (not b!5496754) (not b!5496600) (not d!1742777) (not d!1742763) (not b!5496917) (not b!5496926) (not bm!405418) (not b!5496933) (not b!5496748) (not bm!405410) (not bm!405425) (not d!1742779) (not b!5496914) (not d!1742751) (not d!1742747) (not b!5496833) (not b!5496753) (not b!5496840) (not b!5496511) (not d!1742759) (not b!5496935) (not b!5496913) (not b!5496763) (not bm!405441) (not b!5496841) (not b!5496892) (not bm!405416) (not setNonEmpty!36405) (not bm!405382) (not b!5496946) (not b!5496930) (not b!5496772) (not b!5496515) (not d!1742749) (not b!5496834) (not b!5496945) (not bm!405411) (not d!1742757) (not b!5496609) (not b!5496915) (not d!1742775) (not bm!405408) (not b!5496931) (not b!5496613) (not b!5496601) (not b!5496798) (not b!5496785) (not b!5496746) (not b!5496934) (not b!5496801) (not bm!405440) (not b!5496792) (not b!5496904) (not bm!405391) (not b!5496832) (not b!5496906))
(check-sat)
