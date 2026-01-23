; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574258 () Bool)

(assert start!574258)

(declare-fun b!5497053 () Bool)

(assert (=> b!5497053 true))

(declare-fun b!5497049 () Bool)

(declare-fun e!3400563 () Bool)

(declare-fun tp!1512567 () Bool)

(assert (=> b!5497049 (= e!3400563 tp!1512567)))

(declare-fun b!5497050 () Bool)

(declare-fun res!2343660 () Bool)

(declare-fun e!3400559 () Bool)

(assert (=> b!5497050 (=> (not res!2343660) (not e!3400559))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31208 0))(
  ( (C!31209 (val!25306 Int)) )
))
(declare-datatypes ((Regex!15469 0))(
  ( (ElementMatch!15469 (c!959839 C!31208)) (Concat!24314 (regOne!31450 Regex!15469) (regTwo!31450 Regex!15469)) (EmptyExpr!15469) (Star!15469 (reg!15798 Regex!15469)) (EmptyLang!15469) (Union!15469 (regOne!31451 Regex!15469) (regTwo!31451 Regex!15469)) )
))
(declare-datatypes ((List!62706 0))(
  ( (Nil!62582) (Cons!62582 (h!69030 Regex!15469) (t!375939 List!62706)) )
))
(declare-datatypes ((Context!9706 0))(
  ( (Context!9707 (exprs!5353 List!62706)) )
))
(declare-fun z!1189 () (InoxSet Context!9706))

(declare-datatypes ((List!62707 0))(
  ( (Nil!62583) (Cons!62583 (h!69031 Context!9706) (t!375940 List!62707)) )
))
(declare-fun zl!343 () List!62707)

(declare-fun toList!9253 ((InoxSet Context!9706)) List!62707)

(assert (=> b!5497050 (= res!2343660 (= (toList!9253 z!1189) zl!343))))

(declare-fun setIsEmpty!36411 () Bool)

(declare-fun setRes!36411 () Bool)

(assert (=> setIsEmpty!36411 setRes!36411))

(declare-fun b!5497051 () Bool)

(declare-fun e!3400568 () Bool)

(assert (=> b!5497051 (= e!3400559 (not e!3400568))))

(declare-fun res!2343659 () Bool)

(assert (=> b!5497051 (=> res!2343659 e!3400568)))

(get-info :version)

(assert (=> b!5497051 (= res!2343659 (not ((_ is Cons!62583) zl!343)))))

(declare-fun lt!2242948 () Bool)

(declare-fun r!7292 () Regex!15469)

(declare-datatypes ((List!62708 0))(
  ( (Nil!62584) (Cons!62584 (h!69032 C!31208) (t!375941 List!62708)) )
))
(declare-fun s!2326 () List!62708)

(declare-fun matchRSpec!2572 (Regex!15469 List!62708) Bool)

(assert (=> b!5497051 (= lt!2242948 (matchRSpec!2572 r!7292 s!2326))))

(declare-fun matchR!7654 (Regex!15469 List!62708) Bool)

(assert (=> b!5497051 (= lt!2242948 (matchR!7654 r!7292 s!2326))))

(declare-datatypes ((Unit!155398 0))(
  ( (Unit!155399) )
))
(declare-fun lt!2242955 () Unit!155398)

(declare-fun mainMatchTheorem!2572 (Regex!15469 List!62708) Unit!155398)

(assert (=> b!5497051 (= lt!2242955 (mainMatchTheorem!2572 r!7292 s!2326))))

(declare-fun e!3400566 () Bool)

(declare-fun b!5497052 () Bool)

(declare-fun e!3400564 () Bool)

(declare-fun tp!1512564 () Bool)

(declare-fun inv!81919 (Context!9706) Bool)

(assert (=> b!5497052 (= e!3400564 (and (inv!81919 (h!69031 zl!343)) e!3400566 tp!1512564))))

(declare-fun e!3400565 () Bool)

(declare-fun lt!2242949 () (InoxSet Context!9706))

(declare-fun derivationStepZipper!1580 ((InoxSet Context!9706) C!31208) (InoxSet Context!9706))

(assert (=> b!5497053 (= e!3400565 (= (derivationStepZipper!1580 z!1189 (h!69032 s!2326)) lt!2242949))))

(declare-fun lambda!294301 () Int)

(declare-fun flatMap!1088 ((InoxSet Context!9706) Int) (InoxSet Context!9706))

(declare-fun derivationStepZipperUp!741 (Context!9706 C!31208) (InoxSet Context!9706))

(assert (=> b!5497053 (= (flatMap!1088 z!1189 lambda!294301) (derivationStepZipperUp!741 (h!69031 zl!343) (h!69032 s!2326)))))

(declare-fun lt!2242954 () Unit!155398)

(declare-fun lemmaFlatMapOnSingletonSet!620 ((InoxSet Context!9706) Context!9706 Int) Unit!155398)

(assert (=> b!5497053 (= lt!2242954 (lemmaFlatMapOnSingletonSet!620 z!1189 (h!69031 zl!343) lambda!294301))))

(declare-fun b!5497054 () Bool)

(declare-fun tp!1512563 () Bool)

(declare-fun tp!1512565 () Bool)

(assert (=> b!5497054 (= e!3400563 (and tp!1512563 tp!1512565))))

(declare-fun b!5497055 () Bool)

(declare-fun res!2343654 () Bool)

(assert (=> b!5497055 (=> res!2343654 e!3400568)))

(declare-fun generalisedUnion!1332 (List!62706) Regex!15469)

(declare-fun unfocusZipperList!897 (List!62707) List!62706)

(assert (=> b!5497055 (= res!2343654 (not (= r!7292 (generalisedUnion!1332 (unfocusZipperList!897 zl!343)))))))

(declare-fun b!5497056 () Bool)

(declare-fun e!3400562 () Bool)

(declare-fun e!3400561 () Bool)

(assert (=> b!5497056 (= e!3400562 e!3400561)))

(declare-fun res!2343656 () Bool)

(assert (=> b!5497056 (=> res!2343656 e!3400561)))

(declare-fun lt!2242956 () (InoxSet Context!9706))

(declare-fun lt!2242947 () (InoxSet Context!9706))

(assert (=> b!5497056 (= res!2343656 (not (= lt!2242956 lt!2242947)))))

(declare-fun lt!2242950 () Context!9706)

(declare-fun derivationStepZipperDown!815 (Regex!15469 Context!9706 C!31208) (InoxSet Context!9706))

(assert (=> b!5497056 (= lt!2242947 (derivationStepZipperDown!815 r!7292 lt!2242950 (h!69032 s!2326)))))

(assert (=> b!5497056 (= lt!2242950 (Context!9707 Nil!62582))))

(assert (=> b!5497056 (= lt!2242956 (derivationStepZipperUp!741 (Context!9707 (Cons!62582 r!7292 Nil!62582)) (h!69032 s!2326)))))

(declare-fun b!5497057 () Bool)

(declare-fun res!2343652 () Bool)

(assert (=> b!5497057 (=> res!2343652 e!3400568)))

(declare-fun generalisedConcat!1084 (List!62706) Regex!15469)

(assert (=> b!5497057 (= res!2343652 (not (= r!7292 (generalisedConcat!1084 (exprs!5353 (h!69031 zl!343))))))))

(declare-fun b!5497058 () Bool)

(declare-fun tp_is_empty!40191 () Bool)

(assert (=> b!5497058 (= e!3400563 tp_is_empty!40191)))

(declare-fun b!5497059 () Bool)

(declare-fun e!3400560 () Bool)

(declare-fun tp!1512559 () Bool)

(assert (=> b!5497059 (= e!3400560 (and tp_is_empty!40191 tp!1512559))))

(declare-fun b!5497061 () Bool)

(assert (=> b!5497061 (= e!3400561 e!3400565)))

(declare-fun res!2343655 () Bool)

(assert (=> b!5497061 (=> res!2343655 e!3400565)))

(assert (=> b!5497061 (= res!2343655 (not (= lt!2242947 lt!2242949)))))

(assert (=> b!5497061 (= lt!2242949 ((_ map or) (derivationStepZipperDown!815 (regOne!31451 r!7292) lt!2242950 (h!69032 s!2326)) (derivationStepZipperDown!815 (regTwo!31451 r!7292) lt!2242950 (h!69032 s!2326))))))

(declare-fun res!2343658 () Bool)

(assert (=> start!574258 (=> (not res!2343658) (not e!3400559))))

(declare-fun validRegex!7205 (Regex!15469) Bool)

(assert (=> start!574258 (= res!2343658 (validRegex!7205 r!7292))))

(assert (=> start!574258 e!3400559))

(assert (=> start!574258 e!3400563))

(declare-fun condSetEmpty!36411 () Bool)

(assert (=> start!574258 (= condSetEmpty!36411 (= z!1189 ((as const (Array Context!9706 Bool)) false)))))

(assert (=> start!574258 setRes!36411))

(assert (=> start!574258 e!3400564))

(assert (=> start!574258 e!3400560))

(declare-fun b!5497060 () Bool)

(declare-fun res!2343650 () Bool)

(assert (=> b!5497060 (=> res!2343650 e!3400568)))

(assert (=> b!5497060 (= res!2343650 (not ((_ is Cons!62582) (exprs!5353 (h!69031 zl!343)))))))

(declare-fun b!5497062 () Bool)

(declare-fun res!2343649 () Bool)

(assert (=> b!5497062 (=> (not res!2343649) (not e!3400559))))

(declare-fun unfocusZipper!1211 (List!62707) Regex!15469)

(assert (=> b!5497062 (= res!2343649 (= r!7292 (unfocusZipper!1211 zl!343)))))

(declare-fun b!5497063 () Bool)

(declare-fun res!2343653 () Bool)

(assert (=> b!5497063 (=> res!2343653 e!3400568)))

(declare-fun isEmpty!34377 (List!62707) Bool)

(assert (=> b!5497063 (= res!2343653 (not (isEmpty!34377 (t!375940 zl!343))))))

(declare-fun b!5497064 () Bool)

(declare-fun e!3400567 () Bool)

(declare-fun tp!1512558 () Bool)

(assert (=> b!5497064 (= e!3400567 tp!1512558)))

(declare-fun setNonEmpty!36411 () Bool)

(declare-fun tp!1512566 () Bool)

(declare-fun setElem!36411 () Context!9706)

(assert (=> setNonEmpty!36411 (= setRes!36411 (and tp!1512566 (inv!81919 setElem!36411) e!3400567))))

(declare-fun setRest!36411 () (InoxSet Context!9706))

(assert (=> setNonEmpty!36411 (= z!1189 ((_ map or) (store ((as const (Array Context!9706 Bool)) false) setElem!36411 true) setRest!36411))))

(declare-fun b!5497065 () Bool)

(declare-fun tp!1512562 () Bool)

(assert (=> b!5497065 (= e!3400566 tp!1512562)))

(declare-fun b!5497066 () Bool)

(declare-fun tp!1512561 () Bool)

(declare-fun tp!1512560 () Bool)

(assert (=> b!5497066 (= e!3400563 (and tp!1512561 tp!1512560))))

(declare-fun b!5497067 () Bool)

(assert (=> b!5497067 (= e!3400568 e!3400562)))

(declare-fun res!2343657 () Bool)

(assert (=> b!5497067 (=> res!2343657 e!3400562)))

(declare-fun lt!2242957 () Bool)

(declare-fun lt!2242951 () Bool)

(assert (=> b!5497067 (= res!2343657 (or (not (= lt!2242948 (or lt!2242951 lt!2242957))) ((_ is Nil!62584) s!2326)))))

(assert (=> b!5497067 (= lt!2242957 (matchRSpec!2572 (regTwo!31451 r!7292) s!2326))))

(assert (=> b!5497067 (= lt!2242957 (matchR!7654 (regTwo!31451 r!7292) s!2326))))

(declare-fun lt!2242953 () Unit!155398)

(assert (=> b!5497067 (= lt!2242953 (mainMatchTheorem!2572 (regTwo!31451 r!7292) s!2326))))

(assert (=> b!5497067 (= lt!2242951 (matchRSpec!2572 (regOne!31451 r!7292) s!2326))))

(assert (=> b!5497067 (= lt!2242951 (matchR!7654 (regOne!31451 r!7292) s!2326))))

(declare-fun lt!2242952 () Unit!155398)

(assert (=> b!5497067 (= lt!2242952 (mainMatchTheorem!2572 (regOne!31451 r!7292) s!2326))))

(declare-fun b!5497068 () Bool)

(declare-fun res!2343651 () Bool)

(assert (=> b!5497068 (=> res!2343651 e!3400568)))

(assert (=> b!5497068 (= res!2343651 (or ((_ is EmptyExpr!15469) r!7292) ((_ is EmptyLang!15469) r!7292) ((_ is ElementMatch!15469) r!7292) (not ((_ is Union!15469) r!7292))))))

(assert (= (and start!574258 res!2343658) b!5497050))

(assert (= (and b!5497050 res!2343660) b!5497062))

(assert (= (and b!5497062 res!2343649) b!5497051))

(assert (= (and b!5497051 (not res!2343659)) b!5497063))

(assert (= (and b!5497063 (not res!2343653)) b!5497057))

(assert (= (and b!5497057 (not res!2343652)) b!5497060))

(assert (= (and b!5497060 (not res!2343650)) b!5497055))

(assert (= (and b!5497055 (not res!2343654)) b!5497068))

(assert (= (and b!5497068 (not res!2343651)) b!5497067))

(assert (= (and b!5497067 (not res!2343657)) b!5497056))

(assert (= (and b!5497056 (not res!2343656)) b!5497061))

(assert (= (and b!5497061 (not res!2343655)) b!5497053))

(assert (= (and start!574258 ((_ is ElementMatch!15469) r!7292)) b!5497058))

(assert (= (and start!574258 ((_ is Concat!24314) r!7292)) b!5497066))

(assert (= (and start!574258 ((_ is Star!15469) r!7292)) b!5497049))

(assert (= (and start!574258 ((_ is Union!15469) r!7292)) b!5497054))

(assert (= (and start!574258 condSetEmpty!36411) setIsEmpty!36411))

(assert (= (and start!574258 (not condSetEmpty!36411)) setNonEmpty!36411))

(assert (= setNonEmpty!36411 b!5497064))

(assert (= b!5497052 b!5497065))

(assert (= (and start!574258 ((_ is Cons!62583) zl!343)) b!5497052))

(assert (= (and start!574258 ((_ is Cons!62584) s!2326)) b!5497059))

(declare-fun m!6506560 () Bool)

(assert (=> setNonEmpty!36411 m!6506560))

(declare-fun m!6506562 () Bool)

(assert (=> b!5497053 m!6506562))

(declare-fun m!6506564 () Bool)

(assert (=> b!5497053 m!6506564))

(declare-fun m!6506566 () Bool)

(assert (=> b!5497053 m!6506566))

(declare-fun m!6506568 () Bool)

(assert (=> b!5497053 m!6506568))

(declare-fun m!6506570 () Bool)

(assert (=> b!5497057 m!6506570))

(declare-fun m!6506572 () Bool)

(assert (=> b!5497067 m!6506572))

(declare-fun m!6506574 () Bool)

(assert (=> b!5497067 m!6506574))

(declare-fun m!6506576 () Bool)

(assert (=> b!5497067 m!6506576))

(declare-fun m!6506578 () Bool)

(assert (=> b!5497067 m!6506578))

(declare-fun m!6506580 () Bool)

(assert (=> b!5497067 m!6506580))

(declare-fun m!6506582 () Bool)

(assert (=> b!5497067 m!6506582))

(declare-fun m!6506584 () Bool)

(assert (=> b!5497056 m!6506584))

(declare-fun m!6506586 () Bool)

(assert (=> b!5497056 m!6506586))

(declare-fun m!6506588 () Bool)

(assert (=> b!5497052 m!6506588))

(declare-fun m!6506590 () Bool)

(assert (=> b!5497062 m!6506590))

(declare-fun m!6506592 () Bool)

(assert (=> b!5497050 m!6506592))

(declare-fun m!6506594 () Bool)

(assert (=> b!5497061 m!6506594))

(declare-fun m!6506596 () Bool)

(assert (=> b!5497061 m!6506596))

(declare-fun m!6506598 () Bool)

(assert (=> b!5497063 m!6506598))

(declare-fun m!6506600 () Bool)

(assert (=> b!5497051 m!6506600))

(declare-fun m!6506602 () Bool)

(assert (=> b!5497051 m!6506602))

(declare-fun m!6506604 () Bool)

(assert (=> b!5497051 m!6506604))

(declare-fun m!6506606 () Bool)

(assert (=> start!574258 m!6506606))

(declare-fun m!6506608 () Bool)

(assert (=> b!5497055 m!6506608))

(assert (=> b!5497055 m!6506608))

(declare-fun m!6506610 () Bool)

(assert (=> b!5497055 m!6506610))

(check-sat (not b!5497055) (not b!5497067) (not b!5497052) (not b!5497057) (not b!5497066) (not b!5497061) (not b!5497063) (not b!5497059) (not start!574258) (not b!5497051) (not setNonEmpty!36411) (not b!5497054) (not b!5497064) tp_is_empty!40191 (not b!5497050) (not b!5497049) (not b!5497062) (not b!5497053) (not b!5497056) (not b!5497065))
(check-sat)
(get-model)

(declare-fun d!1742782 () Bool)

(declare-fun lambda!294304 () Int)

(declare-fun forall!14660 (List!62706 Int) Bool)

(assert (=> d!1742782 (= (inv!81919 (h!69031 zl!343)) (forall!14660 (exprs!5353 (h!69031 zl!343)) lambda!294304))))

(declare-fun bs!1268109 () Bool)

(assert (= bs!1268109 d!1742782))

(declare-fun m!6506612 () Bool)

(assert (=> bs!1268109 m!6506612))

(assert (=> b!5497052 d!1742782))

(declare-fun b!5497187 () Bool)

(assert (=> b!5497187 true))

(assert (=> b!5497187 true))

(declare-fun bs!1268111 () Bool)

(declare-fun b!5497183 () Bool)

(assert (= bs!1268111 (and b!5497183 b!5497187)))

(declare-fun lambda!294317 () Int)

(declare-fun lambda!294316 () Int)

(assert (=> bs!1268111 (not (= lambda!294317 lambda!294316))))

(assert (=> b!5497183 true))

(assert (=> b!5497183 true))

(declare-fun b!5497179 () Bool)

(declare-fun e!3400631 () Bool)

(declare-fun e!3400632 () Bool)

(assert (=> b!5497179 (= e!3400631 e!3400632)))

(declare-fun c!959877 () Bool)

(assert (=> b!5497179 (= c!959877 ((_ is Star!15469) r!7292))))

(declare-fun b!5497180 () Bool)

(declare-fun e!3400634 () Bool)

(declare-fun e!3400635 () Bool)

(assert (=> b!5497180 (= e!3400634 e!3400635)))

(declare-fun res!2343698 () Bool)

(assert (=> b!5497180 (= res!2343698 (not ((_ is EmptyLang!15469) r!7292)))))

(assert (=> b!5497180 (=> (not res!2343698) (not e!3400635))))

(declare-fun b!5497181 () Bool)

(declare-fun e!3400630 () Bool)

(assert (=> b!5497181 (= e!3400631 e!3400630)))

(declare-fun res!2343699 () Bool)

(assert (=> b!5497181 (= res!2343699 (matchRSpec!2572 (regOne!31451 r!7292) s!2326))))

(assert (=> b!5497181 (=> res!2343699 e!3400630)))

(declare-fun b!5497182 () Bool)

(declare-fun e!3400629 () Bool)

(assert (=> b!5497182 (= e!3400629 (= s!2326 (Cons!62584 (c!959839 r!7292) Nil!62584)))))

(declare-fun d!1742784 () Bool)

(declare-fun c!959878 () Bool)

(assert (=> d!1742784 (= c!959878 ((_ is EmptyExpr!15469) r!7292))))

(assert (=> d!1742784 (= (matchRSpec!2572 r!7292 s!2326) e!3400634)))

(declare-fun call!405477 () Bool)

(assert (=> b!5497183 (= e!3400632 call!405477)))

(declare-fun b!5497184 () Bool)

(declare-fun c!959876 () Bool)

(assert (=> b!5497184 (= c!959876 ((_ is ElementMatch!15469) r!7292))))

(assert (=> b!5497184 (= e!3400635 e!3400629)))

(declare-fun b!5497185 () Bool)

(declare-fun call!405476 () Bool)

(assert (=> b!5497185 (= e!3400634 call!405476)))

(declare-fun b!5497186 () Bool)

(assert (=> b!5497186 (= e!3400630 (matchRSpec!2572 (regTwo!31451 r!7292) s!2326))))

(declare-fun bm!405471 () Bool)

(declare-fun Exists!2577 (Int) Bool)

(assert (=> bm!405471 (= call!405477 (Exists!2577 (ite c!959877 lambda!294316 lambda!294317)))))

(declare-fun e!3400633 () Bool)

(assert (=> b!5497187 (= e!3400633 call!405477)))

(declare-fun b!5497188 () Bool)

(declare-fun res!2343697 () Bool)

(assert (=> b!5497188 (=> res!2343697 e!3400633)))

(assert (=> b!5497188 (= res!2343697 call!405476)))

(assert (=> b!5497188 (= e!3400632 e!3400633)))

(declare-fun b!5497189 () Bool)

(declare-fun c!959879 () Bool)

(assert (=> b!5497189 (= c!959879 ((_ is Union!15469) r!7292))))

(assert (=> b!5497189 (= e!3400629 e!3400631)))

(declare-fun bm!405472 () Bool)

(declare-fun isEmpty!34380 (List!62708) Bool)

(assert (=> bm!405472 (= call!405476 (isEmpty!34380 s!2326))))

(assert (= (and d!1742784 c!959878) b!5497185))

(assert (= (and d!1742784 (not c!959878)) b!5497180))

(assert (= (and b!5497180 res!2343698) b!5497184))

(assert (= (and b!5497184 c!959876) b!5497182))

(assert (= (and b!5497184 (not c!959876)) b!5497189))

(assert (= (and b!5497189 c!959879) b!5497181))

(assert (= (and b!5497189 (not c!959879)) b!5497179))

(assert (= (and b!5497181 (not res!2343699)) b!5497186))

(assert (= (and b!5497179 c!959877) b!5497188))

(assert (= (and b!5497179 (not c!959877)) b!5497183))

(assert (= (and b!5497188 (not res!2343697)) b!5497187))

(assert (= (or b!5497187 b!5497183) bm!405471))

(assert (= (or b!5497185 b!5497188) bm!405472))

(assert (=> b!5497181 m!6506578))

(assert (=> b!5497186 m!6506572))

(declare-fun m!6506634 () Bool)

(assert (=> bm!405471 m!6506634))

(declare-fun m!6506636 () Bool)

(assert (=> bm!405472 m!6506636))

(assert (=> b!5497051 d!1742784))

(declare-fun b!5497290 () Bool)

(declare-fun res!2343755 () Bool)

(declare-fun e!3400694 () Bool)

(assert (=> b!5497290 (=> res!2343755 e!3400694)))

(declare-fun e!3400689 () Bool)

(assert (=> b!5497290 (= res!2343755 e!3400689)))

(declare-fun res!2343746 () Bool)

(assert (=> b!5497290 (=> (not res!2343746) (not e!3400689))))

(declare-fun lt!2242967 () Bool)

(assert (=> b!5497290 (= res!2343746 lt!2242967)))

(declare-fun b!5497291 () Bool)

(declare-fun e!3400687 () Bool)

(declare-fun head!11775 (List!62708) C!31208)

(assert (=> b!5497291 (= e!3400687 (not (= (head!11775 s!2326) (c!959839 r!7292))))))

(declare-fun b!5497292 () Bool)

(declare-fun e!3400686 () Bool)

(declare-fun derivativeStep!4351 (Regex!15469 C!31208) Regex!15469)

(declare-fun tail!10870 (List!62708) List!62708)

(assert (=> b!5497292 (= e!3400686 (matchR!7654 (derivativeStep!4351 r!7292 (head!11775 s!2326)) (tail!10870 s!2326)))))

(declare-fun b!5497293 () Bool)

(declare-fun e!3400690 () Bool)

(declare-fun call!405491 () Bool)

(assert (=> b!5497293 (= e!3400690 (= lt!2242967 call!405491))))

(declare-fun b!5497294 () Bool)

(declare-fun res!2343752 () Bool)

(assert (=> b!5497294 (=> (not res!2343752) (not e!3400689))))

(assert (=> b!5497294 (= res!2343752 (not call!405491))))

(declare-fun bm!405486 () Bool)

(assert (=> bm!405486 (= call!405491 (isEmpty!34380 s!2326))))

(declare-fun b!5497295 () Bool)

(declare-fun res!2343753 () Bool)

(assert (=> b!5497295 (=> (not res!2343753) (not e!3400689))))

(assert (=> b!5497295 (= res!2343753 (isEmpty!34380 (tail!10870 s!2326)))))

(declare-fun d!1742796 () Bool)

(assert (=> d!1742796 e!3400690))

(declare-fun c!959903 () Bool)

(assert (=> d!1742796 (= c!959903 ((_ is EmptyExpr!15469) r!7292))))

(assert (=> d!1742796 (= lt!2242967 e!3400686)))

(declare-fun c!959904 () Bool)

(assert (=> d!1742796 (= c!959904 (isEmpty!34380 s!2326))))

(assert (=> d!1742796 (validRegex!7205 r!7292)))

(assert (=> d!1742796 (= (matchR!7654 r!7292 s!2326) lt!2242967)))

(declare-fun b!5497296 () Bool)

(declare-fun res!2343748 () Bool)

(assert (=> b!5497296 (=> res!2343748 e!3400694)))

(assert (=> b!5497296 (= res!2343748 (not ((_ is ElementMatch!15469) r!7292)))))

(declare-fun e!3400685 () Bool)

(assert (=> b!5497296 (= e!3400685 e!3400694)))

(declare-fun b!5497297 () Bool)

(declare-fun e!3400688 () Bool)

(assert (=> b!5497297 (= e!3400688 e!3400687)))

(declare-fun res!2343749 () Bool)

(assert (=> b!5497297 (=> res!2343749 e!3400687)))

(assert (=> b!5497297 (= res!2343749 call!405491)))

(declare-fun b!5497298 () Bool)

(assert (=> b!5497298 (= e!3400694 e!3400688)))

(declare-fun res!2343750 () Bool)

(assert (=> b!5497298 (=> (not res!2343750) (not e!3400688))))

(assert (=> b!5497298 (= res!2343750 (not lt!2242967))))

(declare-fun b!5497299 () Bool)

(assert (=> b!5497299 (= e!3400689 (= (head!11775 s!2326) (c!959839 r!7292)))))

(declare-fun b!5497301 () Bool)

(declare-fun nullable!5512 (Regex!15469) Bool)

(assert (=> b!5497301 (= e!3400686 (nullable!5512 r!7292))))

(declare-fun b!5497303 () Bool)

(assert (=> b!5497303 (= e!3400685 (not lt!2242967))))

(declare-fun b!5497305 () Bool)

(assert (=> b!5497305 (= e!3400690 e!3400685)))

(declare-fun c!959906 () Bool)

(assert (=> b!5497305 (= c!959906 ((_ is EmptyLang!15469) r!7292))))

(declare-fun b!5497307 () Bool)

(declare-fun res!2343747 () Bool)

(assert (=> b!5497307 (=> res!2343747 e!3400687)))

(assert (=> b!5497307 (= res!2343747 (not (isEmpty!34380 (tail!10870 s!2326))))))

(assert (= (and d!1742796 c!959904) b!5497301))

(assert (= (and d!1742796 (not c!959904)) b!5497292))

(assert (= (and d!1742796 c!959903) b!5497293))

(assert (= (and d!1742796 (not c!959903)) b!5497305))

(assert (= (and b!5497305 c!959906) b!5497303))

(assert (= (and b!5497305 (not c!959906)) b!5497296))

(assert (= (and b!5497296 (not res!2343748)) b!5497290))

(assert (= (and b!5497290 res!2343746) b!5497294))

(assert (= (and b!5497294 res!2343752) b!5497295))

(assert (= (and b!5497295 res!2343753) b!5497299))

(assert (= (and b!5497290 (not res!2343755)) b!5497298))

(assert (= (and b!5497298 res!2343750) b!5497297))

(assert (= (and b!5497297 (not res!2343749)) b!5497307))

(assert (= (and b!5497307 (not res!2343747)) b!5497291))

(assert (= (or b!5497293 b!5497294 b!5497297) bm!405486))

(declare-fun m!6506678 () Bool)

(assert (=> b!5497301 m!6506678))

(declare-fun m!6506680 () Bool)

(assert (=> b!5497292 m!6506680))

(assert (=> b!5497292 m!6506680))

(declare-fun m!6506682 () Bool)

(assert (=> b!5497292 m!6506682))

(declare-fun m!6506684 () Bool)

(assert (=> b!5497292 m!6506684))

(assert (=> b!5497292 m!6506682))

(assert (=> b!5497292 m!6506684))

(declare-fun m!6506686 () Bool)

(assert (=> b!5497292 m!6506686))

(assert (=> b!5497299 m!6506680))

(assert (=> b!5497291 m!6506680))

(assert (=> b!5497295 m!6506684))

(assert (=> b!5497295 m!6506684))

(declare-fun m!6506688 () Bool)

(assert (=> b!5497295 m!6506688))

(assert (=> b!5497307 m!6506684))

(assert (=> b!5497307 m!6506684))

(assert (=> b!5497307 m!6506688))

(assert (=> bm!405486 m!6506636))

(assert (=> d!1742796 m!6506636))

(assert (=> d!1742796 m!6506606))

(assert (=> b!5497051 d!1742796))

(declare-fun d!1742810 () Bool)

(assert (=> d!1742810 (= (matchR!7654 r!7292 s!2326) (matchRSpec!2572 r!7292 s!2326))))

(declare-fun lt!2242973 () Unit!155398)

(declare-fun choose!41781 (Regex!15469 List!62708) Unit!155398)

(assert (=> d!1742810 (= lt!2242973 (choose!41781 r!7292 s!2326))))

(assert (=> d!1742810 (validRegex!7205 r!7292)))

(assert (=> d!1742810 (= (mainMatchTheorem!2572 r!7292 s!2326) lt!2242973)))

(declare-fun bs!1268120 () Bool)

(assert (= bs!1268120 d!1742810))

(assert (=> bs!1268120 m!6506602))

(assert (=> bs!1268120 m!6506600))

(declare-fun m!6506690 () Bool)

(assert (=> bs!1268120 m!6506690))

(assert (=> bs!1268120 m!6506606))

(assert (=> b!5497051 d!1742810))

(declare-fun d!1742812 () Bool)

(declare-fun lt!2242977 () Regex!15469)

(assert (=> d!1742812 (validRegex!7205 lt!2242977)))

(assert (=> d!1742812 (= lt!2242977 (generalisedUnion!1332 (unfocusZipperList!897 zl!343)))))

(assert (=> d!1742812 (= (unfocusZipper!1211 zl!343) lt!2242977)))

(declare-fun bs!1268122 () Bool)

(assert (= bs!1268122 d!1742812))

(declare-fun m!6506712 () Bool)

(assert (=> bs!1268122 m!6506712))

(assert (=> bs!1268122 m!6506608))

(assert (=> bs!1268122 m!6506608))

(assert (=> bs!1268122 m!6506610))

(assert (=> b!5497062 d!1742812))

(declare-fun bs!1268123 () Bool)

(declare-fun d!1742816 () Bool)

(assert (= bs!1268123 (and d!1742816 b!5497053)))

(declare-fun lambda!294329 () Int)

(assert (=> bs!1268123 (= lambda!294329 lambda!294301)))

(assert (=> d!1742816 true))

(assert (=> d!1742816 (= (derivationStepZipper!1580 z!1189 (h!69032 s!2326)) (flatMap!1088 z!1189 lambda!294329))))

(declare-fun bs!1268124 () Bool)

(assert (= bs!1268124 d!1742816))

(declare-fun m!6506714 () Bool)

(assert (=> bs!1268124 m!6506714))

(assert (=> b!5497053 d!1742816))

(declare-fun d!1742818 () Bool)

(declare-fun choose!41782 ((InoxSet Context!9706) Int) (InoxSet Context!9706))

(assert (=> d!1742818 (= (flatMap!1088 z!1189 lambda!294301) (choose!41782 z!1189 lambda!294301))))

(declare-fun bs!1268125 () Bool)

(assert (= bs!1268125 d!1742818))

(declare-fun m!6506716 () Bool)

(assert (=> bs!1268125 m!6506716))

(assert (=> b!5497053 d!1742818))

(declare-fun b!5497407 () Bool)

(declare-fun e!3400752 () (InoxSet Context!9706))

(declare-fun e!3400751 () (InoxSet Context!9706))

(assert (=> b!5497407 (= e!3400752 e!3400751)))

(declare-fun c!959948 () Bool)

(assert (=> b!5497407 (= c!959948 ((_ is Cons!62582) (exprs!5353 (h!69031 zl!343))))))

(declare-fun d!1742820 () Bool)

(declare-fun c!959947 () Bool)

(declare-fun e!3400750 () Bool)

(assert (=> d!1742820 (= c!959947 e!3400750)))

(declare-fun res!2343777 () Bool)

(assert (=> d!1742820 (=> (not res!2343777) (not e!3400750))))

(assert (=> d!1742820 (= res!2343777 ((_ is Cons!62582) (exprs!5353 (h!69031 zl!343))))))

(assert (=> d!1742820 (= (derivationStepZipperUp!741 (h!69031 zl!343) (h!69032 s!2326)) e!3400752)))

(declare-fun b!5497408 () Bool)

(declare-fun call!405501 () (InoxSet Context!9706))

(assert (=> b!5497408 (= e!3400751 call!405501)))

(declare-fun b!5497409 () Bool)

(assert (=> b!5497409 (= e!3400751 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5497410 () Bool)

(assert (=> b!5497410 (= e!3400752 ((_ map or) call!405501 (derivationStepZipperUp!741 (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343)))) (h!69032 s!2326))))))

(declare-fun bm!405496 () Bool)

(assert (=> bm!405496 (= call!405501 (derivationStepZipperDown!815 (h!69030 (exprs!5353 (h!69031 zl!343))) (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343)))) (h!69032 s!2326)))))

(declare-fun b!5497411 () Bool)

(assert (=> b!5497411 (= e!3400750 (nullable!5512 (h!69030 (exprs!5353 (h!69031 zl!343)))))))

(assert (= (and d!1742820 res!2343777) b!5497411))

(assert (= (and d!1742820 c!959947) b!5497410))

(assert (= (and d!1742820 (not c!959947)) b!5497407))

(assert (= (and b!5497407 c!959948) b!5497408))

(assert (= (and b!5497407 (not c!959948)) b!5497409))

(assert (= (or b!5497410 b!5497408) bm!405496))

(declare-fun m!6506750 () Bool)

(assert (=> b!5497410 m!6506750))

(declare-fun m!6506752 () Bool)

(assert (=> bm!405496 m!6506752))

(declare-fun m!6506754 () Bool)

(assert (=> b!5497411 m!6506754))

(assert (=> b!5497053 d!1742820))

(declare-fun d!1742828 () Bool)

(declare-fun dynLambda!24459 (Int Context!9706) (InoxSet Context!9706))

(assert (=> d!1742828 (= (flatMap!1088 z!1189 lambda!294301) (dynLambda!24459 lambda!294301 (h!69031 zl!343)))))

(declare-fun lt!2242986 () Unit!155398)

(declare-fun choose!41783 ((InoxSet Context!9706) Context!9706 Int) Unit!155398)

(assert (=> d!1742828 (= lt!2242986 (choose!41783 z!1189 (h!69031 zl!343) lambda!294301))))

(assert (=> d!1742828 (= z!1189 (store ((as const (Array Context!9706 Bool)) false) (h!69031 zl!343) true))))

(assert (=> d!1742828 (= (lemmaFlatMapOnSingletonSet!620 z!1189 (h!69031 zl!343) lambda!294301) lt!2242986)))

(declare-fun b_lambda!208515 () Bool)

(assert (=> (not b_lambda!208515) (not d!1742828)))

(declare-fun bs!1268136 () Bool)

(assert (= bs!1268136 d!1742828))

(assert (=> bs!1268136 m!6506564))

(declare-fun m!6506764 () Bool)

(assert (=> bs!1268136 m!6506764))

(declare-fun m!6506766 () Bool)

(assert (=> bs!1268136 m!6506766))

(declare-fun m!6506768 () Bool)

(assert (=> bs!1268136 m!6506768))

(assert (=> b!5497053 d!1742828))

(declare-fun d!1742834 () Bool)

(assert (=> d!1742834 (= (isEmpty!34377 (t!375940 zl!343)) ((_ is Nil!62583) (t!375940 zl!343)))))

(assert (=> b!5497063 d!1742834))

(declare-fun b!5497497 () Bool)

(declare-fun e!3400817 () Bool)

(declare-fun call!405524 () Bool)

(assert (=> b!5497497 (= e!3400817 call!405524)))

(declare-fun b!5497498 () Bool)

(declare-fun e!3400812 () Bool)

(declare-fun call!405523 () Bool)

(assert (=> b!5497498 (= e!3400812 call!405523)))

(declare-fun b!5497499 () Bool)

(declare-fun e!3400813 () Bool)

(assert (=> b!5497499 (= e!3400813 call!405524)))

(declare-fun b!5497500 () Bool)

(declare-fun e!3400811 () Bool)

(declare-fun e!3400815 () Bool)

(assert (=> b!5497500 (= e!3400811 e!3400815)))

(declare-fun c!959972 () Bool)

(assert (=> b!5497500 (= c!959972 ((_ is Union!15469) r!7292))))

(declare-fun c!959973 () Bool)

(declare-fun bm!405518 () Bool)

(assert (=> bm!405518 (= call!405523 (validRegex!7205 (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292)))))))

(declare-fun bm!405519 () Bool)

(assert (=> bm!405519 (= call!405524 (validRegex!7205 (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292))))))

(declare-fun b!5497501 () Bool)

(assert (=> b!5497501 (= e!3400811 e!3400812)))

(declare-fun res!2343821 () Bool)

(assert (=> b!5497501 (= res!2343821 (not (nullable!5512 (reg!15798 r!7292))))))

(assert (=> b!5497501 (=> (not res!2343821) (not e!3400812))))

(declare-fun b!5497502 () Bool)

(declare-fun e!3400816 () Bool)

(assert (=> b!5497502 (= e!3400816 e!3400813)))

(declare-fun res!2343818 () Bool)

(assert (=> b!5497502 (=> (not res!2343818) (not e!3400813))))

(declare-fun call!405525 () Bool)

(assert (=> b!5497502 (= res!2343818 call!405525)))

(declare-fun bm!405520 () Bool)

(assert (=> bm!405520 (= call!405525 call!405523)))

(declare-fun b!5497503 () Bool)

(declare-fun res!2343819 () Bool)

(assert (=> b!5497503 (=> res!2343819 e!3400816)))

(assert (=> b!5497503 (= res!2343819 (not ((_ is Concat!24314) r!7292)))))

(assert (=> b!5497503 (= e!3400815 e!3400816)))

(declare-fun d!1742836 () Bool)

(declare-fun res!2343817 () Bool)

(declare-fun e!3400814 () Bool)

(assert (=> d!1742836 (=> res!2343817 e!3400814)))

(assert (=> d!1742836 (= res!2343817 ((_ is ElementMatch!15469) r!7292))))

(assert (=> d!1742836 (= (validRegex!7205 r!7292) e!3400814)))

(declare-fun b!5497504 () Bool)

(declare-fun res!2343820 () Bool)

(assert (=> b!5497504 (=> (not res!2343820) (not e!3400817))))

(assert (=> b!5497504 (= res!2343820 call!405525)))

(assert (=> b!5497504 (= e!3400815 e!3400817)))

(declare-fun b!5497505 () Bool)

(assert (=> b!5497505 (= e!3400814 e!3400811)))

(assert (=> b!5497505 (= c!959973 ((_ is Star!15469) r!7292))))

(assert (= (and d!1742836 (not res!2343817)) b!5497505))

(assert (= (and b!5497505 c!959973) b!5497501))

(assert (= (and b!5497505 (not c!959973)) b!5497500))

(assert (= (and b!5497501 res!2343821) b!5497498))

(assert (= (and b!5497500 c!959972) b!5497504))

(assert (= (and b!5497500 (not c!959972)) b!5497503))

(assert (= (and b!5497504 res!2343820) b!5497497))

(assert (= (and b!5497503 (not res!2343819)) b!5497502))

(assert (= (and b!5497502 res!2343818) b!5497499))

(assert (= (or b!5497497 b!5497499) bm!405519))

(assert (= (or b!5497504 b!5497502) bm!405520))

(assert (= (or b!5497498 bm!405520) bm!405518))

(declare-fun m!6506788 () Bool)

(assert (=> bm!405518 m!6506788))

(declare-fun m!6506790 () Bool)

(assert (=> bm!405519 m!6506790))

(declare-fun m!6506792 () Bool)

(assert (=> b!5497501 m!6506792))

(assert (=> start!574258 d!1742836))

(declare-fun bs!1268148 () Bool)

(declare-fun d!1742848 () Bool)

(assert (= bs!1268148 (and d!1742848 d!1742782)))

(declare-fun lambda!294339 () Int)

(assert (=> bs!1268148 (= lambda!294339 lambda!294304)))

(assert (=> d!1742848 (= (inv!81919 setElem!36411) (forall!14660 (exprs!5353 setElem!36411) lambda!294339))))

(declare-fun bs!1268150 () Bool)

(assert (= bs!1268150 d!1742848))

(declare-fun m!6506794 () Bool)

(assert (=> bs!1268150 m!6506794))

(assert (=> setNonEmpty!36411 d!1742848))

(declare-fun b!5497592 () Bool)

(declare-fun e!3400864 () (InoxSet Context!9706))

(declare-fun e!3400860 () (InoxSet Context!9706))

(assert (=> b!5497592 (= e!3400864 e!3400860)))

(declare-fun c!959992 () Bool)

(assert (=> b!5497592 (= c!959992 ((_ is Concat!24314) r!7292))))

(declare-fun bm!405534 () Bool)

(declare-fun call!405540 () List!62706)

(declare-fun call!405539 () (InoxSet Context!9706))

(declare-fun c!959988 () Bool)

(assert (=> bm!405534 (= call!405539 (derivationStepZipperDown!815 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292)) (ite c!959988 lt!2242950 (Context!9707 call!405540)) (h!69032 s!2326)))))

(declare-fun b!5497593 () Bool)

(declare-fun e!3400861 () (InoxSet Context!9706))

(declare-fun call!405543 () (InoxSet Context!9706))

(assert (=> b!5497593 (= e!3400861 call!405543)))

(declare-fun b!5497594 () Bool)

(declare-fun call!405541 () (InoxSet Context!9706))

(assert (=> b!5497594 (= e!3400864 ((_ map or) call!405539 call!405541))))

(declare-fun call!405544 () List!62706)

(declare-fun call!405542 () (InoxSet Context!9706))

(declare-fun c!959989 () Bool)

(declare-fun bm!405535 () Bool)

(assert (=> bm!405535 (= call!405542 (derivationStepZipperDown!815 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292)))) (ite (or c!959988 c!959989) lt!2242950 (Context!9707 call!405544)) (h!69032 s!2326)))))

(declare-fun b!5497595 () Bool)

(declare-fun e!3400859 () Bool)

(assert (=> b!5497595 (= e!3400859 (nullable!5512 (regOne!31450 r!7292)))))

(declare-fun d!1742850 () Bool)

(declare-fun c!959991 () Bool)

(assert (=> d!1742850 (= c!959991 (and ((_ is ElementMatch!15469) r!7292) (= (c!959839 r!7292) (h!69032 s!2326))))))

(declare-fun e!3400862 () (InoxSet Context!9706))

(assert (=> d!1742850 (= (derivationStepZipperDown!815 r!7292 lt!2242950 (h!69032 s!2326)) e!3400862)))

(declare-fun b!5497596 () Bool)

(assert (=> b!5497596 (= e!3400861 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5497597 () Bool)

(declare-fun e!3400863 () (InoxSet Context!9706))

(assert (=> b!5497597 (= e!3400862 e!3400863)))

(assert (=> b!5497597 (= c!959988 ((_ is Union!15469) r!7292))))

(declare-fun b!5497598 () Bool)

(assert (=> b!5497598 (= e!3400863 ((_ map or) call!405539 call!405542))))

(declare-fun bm!405536 () Bool)

(assert (=> bm!405536 (= call!405544 call!405540)))

(declare-fun bm!405537 () Bool)

(declare-fun $colon$colon!1566 (List!62706 Regex!15469) List!62706)

(assert (=> bm!405537 (= call!405540 ($colon$colon!1566 (exprs!5353 lt!2242950) (ite (or c!959989 c!959992) (regTwo!31450 r!7292) r!7292)))))

(declare-fun bm!405538 () Bool)

(assert (=> bm!405538 (= call!405541 call!405542)))

(declare-fun b!5497599 () Bool)

(assert (=> b!5497599 (= e!3400860 call!405543)))

(declare-fun b!5497600 () Bool)

(declare-fun c!959990 () Bool)

(assert (=> b!5497600 (= c!959990 ((_ is Star!15469) r!7292))))

(assert (=> b!5497600 (= e!3400860 e!3400861)))

(declare-fun b!5497601 () Bool)

(assert (=> b!5497601 (= c!959989 e!3400859)))

(declare-fun res!2343828 () Bool)

(assert (=> b!5497601 (=> (not res!2343828) (not e!3400859))))

(assert (=> b!5497601 (= res!2343828 ((_ is Concat!24314) r!7292))))

(assert (=> b!5497601 (= e!3400863 e!3400864)))

(declare-fun bm!405539 () Bool)

(assert (=> bm!405539 (= call!405543 call!405541)))

(declare-fun b!5497602 () Bool)

(assert (=> b!5497602 (= e!3400862 (store ((as const (Array Context!9706 Bool)) false) lt!2242950 true))))

(assert (= (and d!1742850 c!959991) b!5497602))

(assert (= (and d!1742850 (not c!959991)) b!5497597))

(assert (= (and b!5497597 c!959988) b!5497598))

(assert (= (and b!5497597 (not c!959988)) b!5497601))

(assert (= (and b!5497601 res!2343828) b!5497595))

(assert (= (and b!5497601 c!959989) b!5497594))

(assert (= (and b!5497601 (not c!959989)) b!5497592))

(assert (= (and b!5497592 c!959992) b!5497599))

(assert (= (and b!5497592 (not c!959992)) b!5497600))

(assert (= (and b!5497600 c!959990) b!5497593))

(assert (= (and b!5497600 (not c!959990)) b!5497596))

(assert (= (or b!5497599 b!5497593) bm!405536))

(assert (= (or b!5497599 b!5497593) bm!405539))

(assert (= (or b!5497594 bm!405536) bm!405537))

(assert (= (or b!5497594 bm!405539) bm!405538))

(assert (= (or b!5497598 bm!405538) bm!405535))

(assert (= (or b!5497598 b!5497594) bm!405534))

(declare-fun m!6506822 () Bool)

(assert (=> bm!405534 m!6506822))

(declare-fun m!6506824 () Bool)

(assert (=> b!5497595 m!6506824))

(declare-fun m!6506826 () Bool)

(assert (=> b!5497602 m!6506826))

(declare-fun m!6506828 () Bool)

(assert (=> bm!405537 m!6506828))

(declare-fun m!6506830 () Bool)

(assert (=> bm!405535 m!6506830))

(assert (=> b!5497056 d!1742850))

(declare-fun b!5497603 () Bool)

(declare-fun e!3400867 () (InoxSet Context!9706))

(declare-fun e!3400866 () (InoxSet Context!9706))

(assert (=> b!5497603 (= e!3400867 e!3400866)))

(declare-fun c!959994 () Bool)

(assert (=> b!5497603 (= c!959994 ((_ is Cons!62582) (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))))))

(declare-fun d!1742862 () Bool)

(declare-fun c!959993 () Bool)

(declare-fun e!3400865 () Bool)

(assert (=> d!1742862 (= c!959993 e!3400865)))

(declare-fun res!2343829 () Bool)

(assert (=> d!1742862 (=> (not res!2343829) (not e!3400865))))

(assert (=> d!1742862 (= res!2343829 ((_ is Cons!62582) (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))))))

(assert (=> d!1742862 (= (derivationStepZipperUp!741 (Context!9707 (Cons!62582 r!7292 Nil!62582)) (h!69032 s!2326)) e!3400867)))

(declare-fun b!5497604 () Bool)

(declare-fun call!405545 () (InoxSet Context!9706))

(assert (=> b!5497604 (= e!3400866 call!405545)))

(declare-fun b!5497605 () Bool)

(assert (=> b!5497605 (= e!3400866 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5497606 () Bool)

(assert (=> b!5497606 (= e!3400867 ((_ map or) call!405545 (derivationStepZipperUp!741 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (h!69032 s!2326))))))

(declare-fun bm!405540 () Bool)

(assert (=> bm!405540 (= call!405545 (derivationStepZipperDown!815 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))) (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (h!69032 s!2326)))))

(declare-fun b!5497607 () Bool)

(assert (=> b!5497607 (= e!3400865 (nullable!5512 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))))))

(assert (= (and d!1742862 res!2343829) b!5497607))

(assert (= (and d!1742862 c!959993) b!5497606))

(assert (= (and d!1742862 (not c!959993)) b!5497603))

(assert (= (and b!5497603 c!959994) b!5497604))

(assert (= (and b!5497603 (not c!959994)) b!5497605))

(assert (= (or b!5497606 b!5497604) bm!405540))

(declare-fun m!6506832 () Bool)

(assert (=> b!5497606 m!6506832))

(declare-fun m!6506834 () Bool)

(assert (=> bm!405540 m!6506834))

(declare-fun m!6506836 () Bool)

(assert (=> b!5497607 m!6506836))

(assert (=> b!5497056 d!1742862))

(declare-fun bs!1268155 () Bool)

(declare-fun d!1742864 () Bool)

(assert (= bs!1268155 (and d!1742864 d!1742782)))

(declare-fun lambda!294343 () Int)

(assert (=> bs!1268155 (= lambda!294343 lambda!294304)))

(declare-fun bs!1268156 () Bool)

(assert (= bs!1268156 (and d!1742864 d!1742848)))

(assert (=> bs!1268156 (= lambda!294343 lambda!294339)))

(declare-fun b!5497628 () Bool)

(declare-fun e!3400881 () Regex!15469)

(assert (=> b!5497628 (= e!3400881 EmptyLang!15469)))

(declare-fun b!5497629 () Bool)

(declare-fun e!3400882 () Bool)

(declare-fun isEmpty!34381 (List!62706) Bool)

(assert (=> b!5497629 (= e!3400882 (isEmpty!34381 (t!375939 (unfocusZipperList!897 zl!343))))))

(declare-fun b!5497630 () Bool)

(declare-fun e!3400885 () Bool)

(declare-fun lt!2243000 () Regex!15469)

(declare-fun head!11776 (List!62706) Regex!15469)

(assert (=> b!5497630 (= e!3400885 (= lt!2243000 (head!11776 (unfocusZipperList!897 zl!343))))))

(declare-fun b!5497631 () Bool)

(assert (=> b!5497631 (= e!3400881 (Union!15469 (h!69030 (unfocusZipperList!897 zl!343)) (generalisedUnion!1332 (t!375939 (unfocusZipperList!897 zl!343)))))))

(declare-fun b!5497632 () Bool)

(declare-fun e!3400880 () Bool)

(declare-fun isEmptyLang!1069 (Regex!15469) Bool)

(assert (=> b!5497632 (= e!3400880 (isEmptyLang!1069 lt!2243000))))

(declare-fun b!5497633 () Bool)

(declare-fun e!3400884 () Regex!15469)

(assert (=> b!5497633 (= e!3400884 (h!69030 (unfocusZipperList!897 zl!343)))))

(declare-fun e!3400883 () Bool)

(assert (=> d!1742864 e!3400883))

(declare-fun res!2343835 () Bool)

(assert (=> d!1742864 (=> (not res!2343835) (not e!3400883))))

(assert (=> d!1742864 (= res!2343835 (validRegex!7205 lt!2243000))))

(assert (=> d!1742864 (= lt!2243000 e!3400884)))

(declare-fun c!960006 () Bool)

(assert (=> d!1742864 (= c!960006 e!3400882)))

(declare-fun res!2343834 () Bool)

(assert (=> d!1742864 (=> (not res!2343834) (not e!3400882))))

(assert (=> d!1742864 (= res!2343834 ((_ is Cons!62582) (unfocusZipperList!897 zl!343)))))

(assert (=> d!1742864 (forall!14660 (unfocusZipperList!897 zl!343) lambda!294343)))

(assert (=> d!1742864 (= (generalisedUnion!1332 (unfocusZipperList!897 zl!343)) lt!2243000)))

(declare-fun b!5497634 () Bool)

(declare-fun isUnion!499 (Regex!15469) Bool)

(assert (=> b!5497634 (= e!3400885 (isUnion!499 lt!2243000))))

(declare-fun b!5497635 () Bool)

(assert (=> b!5497635 (= e!3400880 e!3400885)))

(declare-fun c!960003 () Bool)

(declare-fun tail!10871 (List!62706) List!62706)

(assert (=> b!5497635 (= c!960003 (isEmpty!34381 (tail!10871 (unfocusZipperList!897 zl!343))))))

(declare-fun b!5497636 () Bool)

(assert (=> b!5497636 (= e!3400884 e!3400881)))

(declare-fun c!960005 () Bool)

(assert (=> b!5497636 (= c!960005 ((_ is Cons!62582) (unfocusZipperList!897 zl!343)))))

(declare-fun b!5497637 () Bool)

(assert (=> b!5497637 (= e!3400883 e!3400880)))

(declare-fun c!960004 () Bool)

(assert (=> b!5497637 (= c!960004 (isEmpty!34381 (unfocusZipperList!897 zl!343)))))

(assert (= (and d!1742864 res!2343834) b!5497629))

(assert (= (and d!1742864 c!960006) b!5497633))

(assert (= (and d!1742864 (not c!960006)) b!5497636))

(assert (= (and b!5497636 c!960005) b!5497631))

(assert (= (and b!5497636 (not c!960005)) b!5497628))

(assert (= (and d!1742864 res!2343835) b!5497637))

(assert (= (and b!5497637 c!960004) b!5497632))

(assert (= (and b!5497637 (not c!960004)) b!5497635))

(assert (= (and b!5497635 c!960003) b!5497630))

(assert (= (and b!5497635 (not c!960003)) b!5497634))

(declare-fun m!6506838 () Bool)

(assert (=> b!5497634 m!6506838))

(declare-fun m!6506840 () Bool)

(assert (=> d!1742864 m!6506840))

(assert (=> d!1742864 m!6506608))

(declare-fun m!6506842 () Bool)

(assert (=> d!1742864 m!6506842))

(declare-fun m!6506844 () Bool)

(assert (=> b!5497629 m!6506844))

(assert (=> b!5497637 m!6506608))

(declare-fun m!6506846 () Bool)

(assert (=> b!5497637 m!6506846))

(assert (=> b!5497630 m!6506608))

(declare-fun m!6506848 () Bool)

(assert (=> b!5497630 m!6506848))

(declare-fun m!6506850 () Bool)

(assert (=> b!5497631 m!6506850))

(assert (=> b!5497635 m!6506608))

(declare-fun m!6506852 () Bool)

(assert (=> b!5497635 m!6506852))

(assert (=> b!5497635 m!6506852))

(declare-fun m!6506854 () Bool)

(assert (=> b!5497635 m!6506854))

(declare-fun m!6506856 () Bool)

(assert (=> b!5497632 m!6506856))

(assert (=> b!5497055 d!1742864))

(declare-fun bs!1268157 () Bool)

(declare-fun d!1742866 () Bool)

(assert (= bs!1268157 (and d!1742866 d!1742782)))

(declare-fun lambda!294346 () Int)

(assert (=> bs!1268157 (= lambda!294346 lambda!294304)))

(declare-fun bs!1268158 () Bool)

(assert (= bs!1268158 (and d!1742866 d!1742848)))

(assert (=> bs!1268158 (= lambda!294346 lambda!294339)))

(declare-fun bs!1268159 () Bool)

(assert (= bs!1268159 (and d!1742866 d!1742864)))

(assert (=> bs!1268159 (= lambda!294346 lambda!294343)))

(declare-fun lt!2243003 () List!62706)

(assert (=> d!1742866 (forall!14660 lt!2243003 lambda!294346)))

(declare-fun e!3400888 () List!62706)

(assert (=> d!1742866 (= lt!2243003 e!3400888)))

(declare-fun c!960009 () Bool)

(assert (=> d!1742866 (= c!960009 ((_ is Cons!62583) zl!343))))

(assert (=> d!1742866 (= (unfocusZipperList!897 zl!343) lt!2243003)))

(declare-fun b!5497642 () Bool)

(assert (=> b!5497642 (= e!3400888 (Cons!62582 (generalisedConcat!1084 (exprs!5353 (h!69031 zl!343))) (unfocusZipperList!897 (t!375940 zl!343))))))

(declare-fun b!5497643 () Bool)

(assert (=> b!5497643 (= e!3400888 Nil!62582)))

(assert (= (and d!1742866 c!960009) b!5497642))

(assert (= (and d!1742866 (not c!960009)) b!5497643))

(declare-fun m!6506858 () Bool)

(assert (=> d!1742866 m!6506858))

(assert (=> b!5497642 m!6506570))

(declare-fun m!6506860 () Bool)

(assert (=> b!5497642 m!6506860))

(assert (=> b!5497055 d!1742866))

(declare-fun bs!1268160 () Bool)

(declare-fun d!1742868 () Bool)

(assert (= bs!1268160 (and d!1742868 d!1742782)))

(declare-fun lambda!294349 () Int)

(assert (=> bs!1268160 (= lambda!294349 lambda!294304)))

(declare-fun bs!1268161 () Bool)

(assert (= bs!1268161 (and d!1742868 d!1742848)))

(assert (=> bs!1268161 (= lambda!294349 lambda!294339)))

(declare-fun bs!1268162 () Bool)

(assert (= bs!1268162 (and d!1742868 d!1742864)))

(assert (=> bs!1268162 (= lambda!294349 lambda!294343)))

(declare-fun bs!1268163 () Bool)

(assert (= bs!1268163 (and d!1742868 d!1742866)))

(assert (=> bs!1268163 (= lambda!294349 lambda!294346)))

(declare-fun b!5497665 () Bool)

(declare-fun e!3400903 () Regex!15469)

(assert (=> b!5497665 (= e!3400903 (Concat!24314 (h!69030 (exprs!5353 (h!69031 zl!343))) (generalisedConcat!1084 (t!375939 (exprs!5353 (h!69031 zl!343))))))))

(declare-fun b!5497666 () Bool)

(declare-fun e!3400904 () Bool)

(declare-fun e!3400902 () Bool)

(assert (=> b!5497666 (= e!3400904 e!3400902)))

(declare-fun c!960021 () Bool)

(assert (=> b!5497666 (= c!960021 (isEmpty!34381 (tail!10871 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun b!5497667 () Bool)

(declare-fun lt!2243006 () Regex!15469)

(declare-fun isEmptyExpr!1058 (Regex!15469) Bool)

(assert (=> b!5497667 (= e!3400904 (isEmptyExpr!1058 lt!2243006))))

(declare-fun b!5497668 () Bool)

(declare-fun e!3400905 () Bool)

(assert (=> b!5497668 (= e!3400905 e!3400904)))

(declare-fun c!960018 () Bool)

(assert (=> b!5497668 (= c!960018 (isEmpty!34381 (exprs!5353 (h!69031 zl!343))))))

(declare-fun b!5497669 () Bool)

(declare-fun e!3400906 () Regex!15469)

(assert (=> b!5497669 (= e!3400906 (h!69030 (exprs!5353 (h!69031 zl!343))))))

(declare-fun b!5497670 () Bool)

(assert (=> b!5497670 (= e!3400903 EmptyExpr!15469)))

(declare-fun b!5497671 () Bool)

(declare-fun e!3400901 () Bool)

(assert (=> b!5497671 (= e!3400901 (isEmpty!34381 (t!375939 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun b!5497664 () Bool)

(declare-fun isConcat!581 (Regex!15469) Bool)

(assert (=> b!5497664 (= e!3400902 (isConcat!581 lt!2243006))))

(assert (=> d!1742868 e!3400905))

(declare-fun res!2343841 () Bool)

(assert (=> d!1742868 (=> (not res!2343841) (not e!3400905))))

(assert (=> d!1742868 (= res!2343841 (validRegex!7205 lt!2243006))))

(assert (=> d!1742868 (= lt!2243006 e!3400906)))

(declare-fun c!960020 () Bool)

(assert (=> d!1742868 (= c!960020 e!3400901)))

(declare-fun res!2343840 () Bool)

(assert (=> d!1742868 (=> (not res!2343840) (not e!3400901))))

(assert (=> d!1742868 (= res!2343840 ((_ is Cons!62582) (exprs!5353 (h!69031 zl!343))))))

(assert (=> d!1742868 (forall!14660 (exprs!5353 (h!69031 zl!343)) lambda!294349)))

(assert (=> d!1742868 (= (generalisedConcat!1084 (exprs!5353 (h!69031 zl!343))) lt!2243006)))

(declare-fun b!5497672 () Bool)

(assert (=> b!5497672 (= e!3400906 e!3400903)))

(declare-fun c!960019 () Bool)

(assert (=> b!5497672 (= c!960019 ((_ is Cons!62582) (exprs!5353 (h!69031 zl!343))))))

(declare-fun b!5497673 () Bool)

(assert (=> b!5497673 (= e!3400902 (= lt!2243006 (head!11776 (exprs!5353 (h!69031 zl!343)))))))

(assert (= (and d!1742868 res!2343840) b!5497671))

(assert (= (and d!1742868 c!960020) b!5497669))

(assert (= (and d!1742868 (not c!960020)) b!5497672))

(assert (= (and b!5497672 c!960019) b!5497665))

(assert (= (and b!5497672 (not c!960019)) b!5497670))

(assert (= (and d!1742868 res!2343841) b!5497668))

(assert (= (and b!5497668 c!960018) b!5497667))

(assert (= (and b!5497668 (not c!960018)) b!5497666))

(assert (= (and b!5497666 c!960021) b!5497673))

(assert (= (and b!5497666 (not c!960021)) b!5497664))

(declare-fun m!6506862 () Bool)

(assert (=> b!5497665 m!6506862))

(declare-fun m!6506864 () Bool)

(assert (=> b!5497664 m!6506864))

(declare-fun m!6506866 () Bool)

(assert (=> d!1742868 m!6506866))

(declare-fun m!6506868 () Bool)

(assert (=> d!1742868 m!6506868))

(declare-fun m!6506870 () Bool)

(assert (=> b!5497668 m!6506870))

(declare-fun m!6506872 () Bool)

(assert (=> b!5497673 m!6506872))

(declare-fun m!6506874 () Bool)

(assert (=> b!5497667 m!6506874))

(declare-fun m!6506876 () Bool)

(assert (=> b!5497671 m!6506876))

(declare-fun m!6506878 () Bool)

(assert (=> b!5497666 m!6506878))

(assert (=> b!5497666 m!6506878))

(declare-fun m!6506880 () Bool)

(assert (=> b!5497666 m!6506880))

(assert (=> b!5497057 d!1742868))

(declare-fun bs!1268164 () Bool)

(declare-fun b!5497682 () Bool)

(assert (= bs!1268164 (and b!5497682 b!5497187)))

(declare-fun lambda!294350 () Int)

(assert (=> bs!1268164 (= (and (= (reg!15798 (regTwo!31451 r!7292)) (reg!15798 r!7292)) (= (regTwo!31451 r!7292) r!7292)) (= lambda!294350 lambda!294316))))

(declare-fun bs!1268165 () Bool)

(assert (= bs!1268165 (and b!5497682 b!5497183)))

(assert (=> bs!1268165 (not (= lambda!294350 lambda!294317))))

(assert (=> b!5497682 true))

(assert (=> b!5497682 true))

(declare-fun bs!1268166 () Bool)

(declare-fun b!5497678 () Bool)

(assert (= bs!1268166 (and b!5497678 b!5497187)))

(declare-fun lambda!294351 () Int)

(assert (=> bs!1268166 (not (= lambda!294351 lambda!294316))))

(declare-fun bs!1268167 () Bool)

(assert (= bs!1268167 (and b!5497678 b!5497183)))

(assert (=> bs!1268167 (= (and (= (regOne!31450 (regTwo!31451 r!7292)) (regOne!31450 r!7292)) (= (regTwo!31450 (regTwo!31451 r!7292)) (regTwo!31450 r!7292))) (= lambda!294351 lambda!294317))))

(declare-fun bs!1268168 () Bool)

(assert (= bs!1268168 (and b!5497678 b!5497682)))

(assert (=> bs!1268168 (not (= lambda!294351 lambda!294350))))

(assert (=> b!5497678 true))

(assert (=> b!5497678 true))

(declare-fun b!5497674 () Bool)

(declare-fun e!3400909 () Bool)

(declare-fun e!3400910 () Bool)

(assert (=> b!5497674 (= e!3400909 e!3400910)))

(declare-fun c!960023 () Bool)

(assert (=> b!5497674 (= c!960023 ((_ is Star!15469) (regTwo!31451 r!7292)))))

(declare-fun b!5497675 () Bool)

(declare-fun e!3400912 () Bool)

(declare-fun e!3400913 () Bool)

(assert (=> b!5497675 (= e!3400912 e!3400913)))

(declare-fun res!2343843 () Bool)

(assert (=> b!5497675 (= res!2343843 (not ((_ is EmptyLang!15469) (regTwo!31451 r!7292))))))

(assert (=> b!5497675 (=> (not res!2343843) (not e!3400913))))

(declare-fun b!5497676 () Bool)

(declare-fun e!3400908 () Bool)

(assert (=> b!5497676 (= e!3400909 e!3400908)))

(declare-fun res!2343844 () Bool)

(assert (=> b!5497676 (= res!2343844 (matchRSpec!2572 (regOne!31451 (regTwo!31451 r!7292)) s!2326))))

(assert (=> b!5497676 (=> res!2343844 e!3400908)))

(declare-fun b!5497677 () Bool)

(declare-fun e!3400907 () Bool)

(assert (=> b!5497677 (= e!3400907 (= s!2326 (Cons!62584 (c!959839 (regTwo!31451 r!7292)) Nil!62584)))))

(declare-fun d!1742870 () Bool)

(declare-fun c!960024 () Bool)

(assert (=> d!1742870 (= c!960024 ((_ is EmptyExpr!15469) (regTwo!31451 r!7292)))))

(assert (=> d!1742870 (= (matchRSpec!2572 (regTwo!31451 r!7292) s!2326) e!3400912)))

(declare-fun call!405547 () Bool)

(assert (=> b!5497678 (= e!3400910 call!405547)))

(declare-fun b!5497679 () Bool)

(declare-fun c!960022 () Bool)

(assert (=> b!5497679 (= c!960022 ((_ is ElementMatch!15469) (regTwo!31451 r!7292)))))

(assert (=> b!5497679 (= e!3400913 e!3400907)))

(declare-fun b!5497680 () Bool)

(declare-fun call!405546 () Bool)

(assert (=> b!5497680 (= e!3400912 call!405546)))

(declare-fun b!5497681 () Bool)

(assert (=> b!5497681 (= e!3400908 (matchRSpec!2572 (regTwo!31451 (regTwo!31451 r!7292)) s!2326))))

(declare-fun bm!405541 () Bool)

(assert (=> bm!405541 (= call!405547 (Exists!2577 (ite c!960023 lambda!294350 lambda!294351)))))

(declare-fun e!3400911 () Bool)

(assert (=> b!5497682 (= e!3400911 call!405547)))

(declare-fun b!5497683 () Bool)

(declare-fun res!2343842 () Bool)

(assert (=> b!5497683 (=> res!2343842 e!3400911)))

(assert (=> b!5497683 (= res!2343842 call!405546)))

(assert (=> b!5497683 (= e!3400910 e!3400911)))

(declare-fun b!5497684 () Bool)

(declare-fun c!960025 () Bool)

(assert (=> b!5497684 (= c!960025 ((_ is Union!15469) (regTwo!31451 r!7292)))))

(assert (=> b!5497684 (= e!3400907 e!3400909)))

(declare-fun bm!405542 () Bool)

(assert (=> bm!405542 (= call!405546 (isEmpty!34380 s!2326))))

(assert (= (and d!1742870 c!960024) b!5497680))

(assert (= (and d!1742870 (not c!960024)) b!5497675))

(assert (= (and b!5497675 res!2343843) b!5497679))

(assert (= (and b!5497679 c!960022) b!5497677))

(assert (= (and b!5497679 (not c!960022)) b!5497684))

(assert (= (and b!5497684 c!960025) b!5497676))

(assert (= (and b!5497684 (not c!960025)) b!5497674))

(assert (= (and b!5497676 (not res!2343844)) b!5497681))

(assert (= (and b!5497674 c!960023) b!5497683))

(assert (= (and b!5497674 (not c!960023)) b!5497678))

(assert (= (and b!5497683 (not res!2343842)) b!5497682))

(assert (= (or b!5497682 b!5497678) bm!405541))

(assert (= (or b!5497680 b!5497683) bm!405542))

(declare-fun m!6506882 () Bool)

(assert (=> b!5497676 m!6506882))

(declare-fun m!6506884 () Bool)

(assert (=> b!5497681 m!6506884))

(declare-fun m!6506886 () Bool)

(assert (=> bm!405541 m!6506886))

(assert (=> bm!405542 m!6506636))

(assert (=> b!5497067 d!1742870))

(declare-fun d!1742872 () Bool)

(assert (=> d!1742872 (= (matchR!7654 (regOne!31451 r!7292) s!2326) (matchRSpec!2572 (regOne!31451 r!7292) s!2326))))

(declare-fun lt!2243007 () Unit!155398)

(assert (=> d!1742872 (= lt!2243007 (choose!41781 (regOne!31451 r!7292) s!2326))))

(assert (=> d!1742872 (validRegex!7205 (regOne!31451 r!7292))))

(assert (=> d!1742872 (= (mainMatchTheorem!2572 (regOne!31451 r!7292) s!2326) lt!2243007)))

(declare-fun bs!1268169 () Bool)

(assert (= bs!1268169 d!1742872))

(assert (=> bs!1268169 m!6506582))

(assert (=> bs!1268169 m!6506578))

(declare-fun m!6506888 () Bool)

(assert (=> bs!1268169 m!6506888))

(declare-fun m!6506890 () Bool)

(assert (=> bs!1268169 m!6506890))

(assert (=> b!5497067 d!1742872))

(declare-fun b!5497685 () Bool)

(declare-fun res!2343852 () Bool)

(declare-fun e!3400920 () Bool)

(assert (=> b!5497685 (=> res!2343852 e!3400920)))

(declare-fun e!3400918 () Bool)

(assert (=> b!5497685 (= res!2343852 e!3400918)))

(declare-fun res!2343845 () Bool)

(assert (=> b!5497685 (=> (not res!2343845) (not e!3400918))))

(declare-fun lt!2243008 () Bool)

(assert (=> b!5497685 (= res!2343845 lt!2243008)))

(declare-fun b!5497686 () Bool)

(declare-fun e!3400916 () Bool)

(assert (=> b!5497686 (= e!3400916 (not (= (head!11775 s!2326) (c!959839 (regTwo!31451 r!7292)))))))

(declare-fun b!5497687 () Bool)

(declare-fun e!3400915 () Bool)

(assert (=> b!5497687 (= e!3400915 (matchR!7654 (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326)) (tail!10870 s!2326)))))

(declare-fun b!5497688 () Bool)

(declare-fun e!3400919 () Bool)

(declare-fun call!405548 () Bool)

(assert (=> b!5497688 (= e!3400919 (= lt!2243008 call!405548))))

(declare-fun b!5497689 () Bool)

(declare-fun res!2343850 () Bool)

(assert (=> b!5497689 (=> (not res!2343850) (not e!3400918))))

(assert (=> b!5497689 (= res!2343850 (not call!405548))))

(declare-fun bm!405543 () Bool)

(assert (=> bm!405543 (= call!405548 (isEmpty!34380 s!2326))))

(declare-fun b!5497690 () Bool)

(declare-fun res!2343851 () Bool)

(assert (=> b!5497690 (=> (not res!2343851) (not e!3400918))))

(assert (=> b!5497690 (= res!2343851 (isEmpty!34380 (tail!10870 s!2326)))))

(declare-fun d!1742874 () Bool)

(assert (=> d!1742874 e!3400919))

(declare-fun c!960026 () Bool)

(assert (=> d!1742874 (= c!960026 ((_ is EmptyExpr!15469) (regTwo!31451 r!7292)))))

(assert (=> d!1742874 (= lt!2243008 e!3400915)))

(declare-fun c!960027 () Bool)

(assert (=> d!1742874 (= c!960027 (isEmpty!34380 s!2326))))

(assert (=> d!1742874 (validRegex!7205 (regTwo!31451 r!7292))))

(assert (=> d!1742874 (= (matchR!7654 (regTwo!31451 r!7292) s!2326) lt!2243008)))

(declare-fun b!5497691 () Bool)

(declare-fun res!2343847 () Bool)

(assert (=> b!5497691 (=> res!2343847 e!3400920)))

(assert (=> b!5497691 (= res!2343847 (not ((_ is ElementMatch!15469) (regTwo!31451 r!7292))))))

(declare-fun e!3400914 () Bool)

(assert (=> b!5497691 (= e!3400914 e!3400920)))

(declare-fun b!5497692 () Bool)

(declare-fun e!3400917 () Bool)

(assert (=> b!5497692 (= e!3400917 e!3400916)))

(declare-fun res!2343848 () Bool)

(assert (=> b!5497692 (=> res!2343848 e!3400916)))

(assert (=> b!5497692 (= res!2343848 call!405548)))

(declare-fun b!5497693 () Bool)

(assert (=> b!5497693 (= e!3400920 e!3400917)))

(declare-fun res!2343849 () Bool)

(assert (=> b!5497693 (=> (not res!2343849) (not e!3400917))))

(assert (=> b!5497693 (= res!2343849 (not lt!2243008))))

(declare-fun b!5497694 () Bool)

(assert (=> b!5497694 (= e!3400918 (= (head!11775 s!2326) (c!959839 (regTwo!31451 r!7292))))))

(declare-fun b!5497695 () Bool)

(assert (=> b!5497695 (= e!3400915 (nullable!5512 (regTwo!31451 r!7292)))))

(declare-fun b!5497696 () Bool)

(assert (=> b!5497696 (= e!3400914 (not lt!2243008))))

(declare-fun b!5497697 () Bool)

(assert (=> b!5497697 (= e!3400919 e!3400914)))

(declare-fun c!960028 () Bool)

(assert (=> b!5497697 (= c!960028 ((_ is EmptyLang!15469) (regTwo!31451 r!7292)))))

(declare-fun b!5497698 () Bool)

(declare-fun res!2343846 () Bool)

(assert (=> b!5497698 (=> res!2343846 e!3400916)))

(assert (=> b!5497698 (= res!2343846 (not (isEmpty!34380 (tail!10870 s!2326))))))

(assert (= (and d!1742874 c!960027) b!5497695))

(assert (= (and d!1742874 (not c!960027)) b!5497687))

(assert (= (and d!1742874 c!960026) b!5497688))

(assert (= (and d!1742874 (not c!960026)) b!5497697))

(assert (= (and b!5497697 c!960028) b!5497696))

(assert (= (and b!5497697 (not c!960028)) b!5497691))

(assert (= (and b!5497691 (not res!2343847)) b!5497685))

(assert (= (and b!5497685 res!2343845) b!5497689))

(assert (= (and b!5497689 res!2343850) b!5497690))

(assert (= (and b!5497690 res!2343851) b!5497694))

(assert (= (and b!5497685 (not res!2343852)) b!5497693))

(assert (= (and b!5497693 res!2343849) b!5497692))

(assert (= (and b!5497692 (not res!2343848)) b!5497698))

(assert (= (and b!5497698 (not res!2343846)) b!5497686))

(assert (= (or b!5497688 b!5497689 b!5497692) bm!405543))

(declare-fun m!6506892 () Bool)

(assert (=> b!5497695 m!6506892))

(assert (=> b!5497687 m!6506680))

(assert (=> b!5497687 m!6506680))

(declare-fun m!6506894 () Bool)

(assert (=> b!5497687 m!6506894))

(assert (=> b!5497687 m!6506684))

(assert (=> b!5497687 m!6506894))

(assert (=> b!5497687 m!6506684))

(declare-fun m!6506896 () Bool)

(assert (=> b!5497687 m!6506896))

(assert (=> b!5497694 m!6506680))

(assert (=> b!5497686 m!6506680))

(assert (=> b!5497690 m!6506684))

(assert (=> b!5497690 m!6506684))

(assert (=> b!5497690 m!6506688))

(assert (=> b!5497698 m!6506684))

(assert (=> b!5497698 m!6506684))

(assert (=> b!5497698 m!6506688))

(assert (=> bm!405543 m!6506636))

(assert (=> d!1742874 m!6506636))

(declare-fun m!6506898 () Bool)

(assert (=> d!1742874 m!6506898))

(assert (=> b!5497067 d!1742874))

(declare-fun d!1742876 () Bool)

(assert (=> d!1742876 (= (matchR!7654 (regTwo!31451 r!7292) s!2326) (matchRSpec!2572 (regTwo!31451 r!7292) s!2326))))

(declare-fun lt!2243009 () Unit!155398)

(assert (=> d!1742876 (= lt!2243009 (choose!41781 (regTwo!31451 r!7292) s!2326))))

(assert (=> d!1742876 (validRegex!7205 (regTwo!31451 r!7292))))

(assert (=> d!1742876 (= (mainMatchTheorem!2572 (regTwo!31451 r!7292) s!2326) lt!2243009)))

(declare-fun bs!1268170 () Bool)

(assert (= bs!1268170 d!1742876))

(assert (=> bs!1268170 m!6506576))

(assert (=> bs!1268170 m!6506572))

(declare-fun m!6506900 () Bool)

(assert (=> bs!1268170 m!6506900))

(assert (=> bs!1268170 m!6506898))

(assert (=> b!5497067 d!1742876))

(declare-fun bs!1268171 () Bool)

(declare-fun b!5497707 () Bool)

(assert (= bs!1268171 (and b!5497707 b!5497187)))

(declare-fun lambda!294352 () Int)

(assert (=> bs!1268171 (= (and (= (reg!15798 (regOne!31451 r!7292)) (reg!15798 r!7292)) (= (regOne!31451 r!7292) r!7292)) (= lambda!294352 lambda!294316))))

(declare-fun bs!1268172 () Bool)

(assert (= bs!1268172 (and b!5497707 b!5497183)))

(assert (=> bs!1268172 (not (= lambda!294352 lambda!294317))))

(declare-fun bs!1268173 () Bool)

(assert (= bs!1268173 (and b!5497707 b!5497682)))

(assert (=> bs!1268173 (= (and (= (reg!15798 (regOne!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292))) (= (regOne!31451 r!7292) (regTwo!31451 r!7292))) (= lambda!294352 lambda!294350))))

(declare-fun bs!1268174 () Bool)

(assert (= bs!1268174 (and b!5497707 b!5497678)))

(assert (=> bs!1268174 (not (= lambda!294352 lambda!294351))))

(assert (=> b!5497707 true))

(assert (=> b!5497707 true))

(declare-fun bs!1268175 () Bool)

(declare-fun b!5497703 () Bool)

(assert (= bs!1268175 (and b!5497703 b!5497187)))

(declare-fun lambda!294353 () Int)

(assert (=> bs!1268175 (not (= lambda!294353 lambda!294316))))

(declare-fun bs!1268176 () Bool)

(assert (= bs!1268176 (and b!5497703 b!5497678)))

(assert (=> bs!1268176 (= (and (= (regOne!31450 (regOne!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292))) (= (regTwo!31450 (regOne!31451 r!7292)) (regTwo!31450 (regTwo!31451 r!7292)))) (= lambda!294353 lambda!294351))))

(declare-fun bs!1268177 () Bool)

(assert (= bs!1268177 (and b!5497703 b!5497682)))

(assert (=> bs!1268177 (not (= lambda!294353 lambda!294350))))

(declare-fun bs!1268178 () Bool)

(assert (= bs!1268178 (and b!5497703 b!5497183)))

(assert (=> bs!1268178 (= (and (= (regOne!31450 (regOne!31451 r!7292)) (regOne!31450 r!7292)) (= (regTwo!31450 (regOne!31451 r!7292)) (regTwo!31450 r!7292))) (= lambda!294353 lambda!294317))))

(declare-fun bs!1268179 () Bool)

(assert (= bs!1268179 (and b!5497703 b!5497707)))

(assert (=> bs!1268179 (not (= lambda!294353 lambda!294352))))

(assert (=> b!5497703 true))

(assert (=> b!5497703 true))

(declare-fun b!5497699 () Bool)

(declare-fun e!3400923 () Bool)

(declare-fun e!3400924 () Bool)

(assert (=> b!5497699 (= e!3400923 e!3400924)))

(declare-fun c!960030 () Bool)

(assert (=> b!5497699 (= c!960030 ((_ is Star!15469) (regOne!31451 r!7292)))))

(declare-fun b!5497700 () Bool)

(declare-fun e!3400926 () Bool)

(declare-fun e!3400927 () Bool)

(assert (=> b!5497700 (= e!3400926 e!3400927)))

(declare-fun res!2343854 () Bool)

(assert (=> b!5497700 (= res!2343854 (not ((_ is EmptyLang!15469) (regOne!31451 r!7292))))))

(assert (=> b!5497700 (=> (not res!2343854) (not e!3400927))))

(declare-fun b!5497701 () Bool)

(declare-fun e!3400922 () Bool)

(assert (=> b!5497701 (= e!3400923 e!3400922)))

(declare-fun res!2343855 () Bool)

(assert (=> b!5497701 (= res!2343855 (matchRSpec!2572 (regOne!31451 (regOne!31451 r!7292)) s!2326))))

(assert (=> b!5497701 (=> res!2343855 e!3400922)))

(declare-fun b!5497702 () Bool)

(declare-fun e!3400921 () Bool)

(assert (=> b!5497702 (= e!3400921 (= s!2326 (Cons!62584 (c!959839 (regOne!31451 r!7292)) Nil!62584)))))

(declare-fun d!1742878 () Bool)

(declare-fun c!960031 () Bool)

(assert (=> d!1742878 (= c!960031 ((_ is EmptyExpr!15469) (regOne!31451 r!7292)))))

(assert (=> d!1742878 (= (matchRSpec!2572 (regOne!31451 r!7292) s!2326) e!3400926)))

(declare-fun call!405550 () Bool)

(assert (=> b!5497703 (= e!3400924 call!405550)))

(declare-fun b!5497704 () Bool)

(declare-fun c!960029 () Bool)

(assert (=> b!5497704 (= c!960029 ((_ is ElementMatch!15469) (regOne!31451 r!7292)))))

(assert (=> b!5497704 (= e!3400927 e!3400921)))

(declare-fun b!5497705 () Bool)

(declare-fun call!405549 () Bool)

(assert (=> b!5497705 (= e!3400926 call!405549)))

(declare-fun b!5497706 () Bool)

(assert (=> b!5497706 (= e!3400922 (matchRSpec!2572 (regTwo!31451 (regOne!31451 r!7292)) s!2326))))

(declare-fun bm!405544 () Bool)

(assert (=> bm!405544 (= call!405550 (Exists!2577 (ite c!960030 lambda!294352 lambda!294353)))))

(declare-fun e!3400925 () Bool)

(assert (=> b!5497707 (= e!3400925 call!405550)))

(declare-fun b!5497708 () Bool)

(declare-fun res!2343853 () Bool)

(assert (=> b!5497708 (=> res!2343853 e!3400925)))

(assert (=> b!5497708 (= res!2343853 call!405549)))

(assert (=> b!5497708 (= e!3400924 e!3400925)))

(declare-fun b!5497709 () Bool)

(declare-fun c!960032 () Bool)

(assert (=> b!5497709 (= c!960032 ((_ is Union!15469) (regOne!31451 r!7292)))))

(assert (=> b!5497709 (= e!3400921 e!3400923)))

(declare-fun bm!405545 () Bool)

(assert (=> bm!405545 (= call!405549 (isEmpty!34380 s!2326))))

(assert (= (and d!1742878 c!960031) b!5497705))

(assert (= (and d!1742878 (not c!960031)) b!5497700))

(assert (= (and b!5497700 res!2343854) b!5497704))

(assert (= (and b!5497704 c!960029) b!5497702))

(assert (= (and b!5497704 (not c!960029)) b!5497709))

(assert (= (and b!5497709 c!960032) b!5497701))

(assert (= (and b!5497709 (not c!960032)) b!5497699))

(assert (= (and b!5497701 (not res!2343855)) b!5497706))

(assert (= (and b!5497699 c!960030) b!5497708))

(assert (= (and b!5497699 (not c!960030)) b!5497703))

(assert (= (and b!5497708 (not res!2343853)) b!5497707))

(assert (= (or b!5497707 b!5497703) bm!405544))

(assert (= (or b!5497705 b!5497708) bm!405545))

(declare-fun m!6506902 () Bool)

(assert (=> b!5497701 m!6506902))

(declare-fun m!6506904 () Bool)

(assert (=> b!5497706 m!6506904))

(declare-fun m!6506906 () Bool)

(assert (=> bm!405544 m!6506906))

(assert (=> bm!405545 m!6506636))

(assert (=> b!5497067 d!1742878))

(declare-fun b!5497710 () Bool)

(declare-fun res!2343863 () Bool)

(declare-fun e!3400934 () Bool)

(assert (=> b!5497710 (=> res!2343863 e!3400934)))

(declare-fun e!3400932 () Bool)

(assert (=> b!5497710 (= res!2343863 e!3400932)))

(declare-fun res!2343856 () Bool)

(assert (=> b!5497710 (=> (not res!2343856) (not e!3400932))))

(declare-fun lt!2243010 () Bool)

(assert (=> b!5497710 (= res!2343856 lt!2243010)))

(declare-fun b!5497711 () Bool)

(declare-fun e!3400930 () Bool)

(assert (=> b!5497711 (= e!3400930 (not (= (head!11775 s!2326) (c!959839 (regOne!31451 r!7292)))))))

(declare-fun b!5497712 () Bool)

(declare-fun e!3400929 () Bool)

(assert (=> b!5497712 (= e!3400929 (matchR!7654 (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326)) (tail!10870 s!2326)))))

(declare-fun b!5497713 () Bool)

(declare-fun e!3400933 () Bool)

(declare-fun call!405551 () Bool)

(assert (=> b!5497713 (= e!3400933 (= lt!2243010 call!405551))))

(declare-fun b!5497714 () Bool)

(declare-fun res!2343861 () Bool)

(assert (=> b!5497714 (=> (not res!2343861) (not e!3400932))))

(assert (=> b!5497714 (= res!2343861 (not call!405551))))

(declare-fun bm!405546 () Bool)

(assert (=> bm!405546 (= call!405551 (isEmpty!34380 s!2326))))

(declare-fun b!5497715 () Bool)

(declare-fun res!2343862 () Bool)

(assert (=> b!5497715 (=> (not res!2343862) (not e!3400932))))

(assert (=> b!5497715 (= res!2343862 (isEmpty!34380 (tail!10870 s!2326)))))

(declare-fun d!1742880 () Bool)

(assert (=> d!1742880 e!3400933))

(declare-fun c!960033 () Bool)

(assert (=> d!1742880 (= c!960033 ((_ is EmptyExpr!15469) (regOne!31451 r!7292)))))

(assert (=> d!1742880 (= lt!2243010 e!3400929)))

(declare-fun c!960034 () Bool)

(assert (=> d!1742880 (= c!960034 (isEmpty!34380 s!2326))))

(assert (=> d!1742880 (validRegex!7205 (regOne!31451 r!7292))))

(assert (=> d!1742880 (= (matchR!7654 (regOne!31451 r!7292) s!2326) lt!2243010)))

(declare-fun b!5497716 () Bool)

(declare-fun res!2343858 () Bool)

(assert (=> b!5497716 (=> res!2343858 e!3400934)))

(assert (=> b!5497716 (= res!2343858 (not ((_ is ElementMatch!15469) (regOne!31451 r!7292))))))

(declare-fun e!3400928 () Bool)

(assert (=> b!5497716 (= e!3400928 e!3400934)))

(declare-fun b!5497717 () Bool)

(declare-fun e!3400931 () Bool)

(assert (=> b!5497717 (= e!3400931 e!3400930)))

(declare-fun res!2343859 () Bool)

(assert (=> b!5497717 (=> res!2343859 e!3400930)))

(assert (=> b!5497717 (= res!2343859 call!405551)))

(declare-fun b!5497718 () Bool)

(assert (=> b!5497718 (= e!3400934 e!3400931)))

(declare-fun res!2343860 () Bool)

(assert (=> b!5497718 (=> (not res!2343860) (not e!3400931))))

(assert (=> b!5497718 (= res!2343860 (not lt!2243010))))

(declare-fun b!5497719 () Bool)

(assert (=> b!5497719 (= e!3400932 (= (head!11775 s!2326) (c!959839 (regOne!31451 r!7292))))))

(declare-fun b!5497720 () Bool)

(assert (=> b!5497720 (= e!3400929 (nullable!5512 (regOne!31451 r!7292)))))

(declare-fun b!5497721 () Bool)

(assert (=> b!5497721 (= e!3400928 (not lt!2243010))))

(declare-fun b!5497722 () Bool)

(assert (=> b!5497722 (= e!3400933 e!3400928)))

(declare-fun c!960035 () Bool)

(assert (=> b!5497722 (= c!960035 ((_ is EmptyLang!15469) (regOne!31451 r!7292)))))

(declare-fun b!5497723 () Bool)

(declare-fun res!2343857 () Bool)

(assert (=> b!5497723 (=> res!2343857 e!3400930)))

(assert (=> b!5497723 (= res!2343857 (not (isEmpty!34380 (tail!10870 s!2326))))))

(assert (= (and d!1742880 c!960034) b!5497720))

(assert (= (and d!1742880 (not c!960034)) b!5497712))

(assert (= (and d!1742880 c!960033) b!5497713))

(assert (= (and d!1742880 (not c!960033)) b!5497722))

(assert (= (and b!5497722 c!960035) b!5497721))

(assert (= (and b!5497722 (not c!960035)) b!5497716))

(assert (= (and b!5497716 (not res!2343858)) b!5497710))

(assert (= (and b!5497710 res!2343856) b!5497714))

(assert (= (and b!5497714 res!2343861) b!5497715))

(assert (= (and b!5497715 res!2343862) b!5497719))

(assert (= (and b!5497710 (not res!2343863)) b!5497718))

(assert (= (and b!5497718 res!2343860) b!5497717))

(assert (= (and b!5497717 (not res!2343859)) b!5497723))

(assert (= (and b!5497723 (not res!2343857)) b!5497711))

(assert (= (or b!5497713 b!5497714 b!5497717) bm!405546))

(declare-fun m!6506908 () Bool)

(assert (=> b!5497720 m!6506908))

(assert (=> b!5497712 m!6506680))

(assert (=> b!5497712 m!6506680))

(declare-fun m!6506910 () Bool)

(assert (=> b!5497712 m!6506910))

(assert (=> b!5497712 m!6506684))

(assert (=> b!5497712 m!6506910))

(assert (=> b!5497712 m!6506684))

(declare-fun m!6506912 () Bool)

(assert (=> b!5497712 m!6506912))

(assert (=> b!5497719 m!6506680))

(assert (=> b!5497711 m!6506680))

(assert (=> b!5497715 m!6506684))

(assert (=> b!5497715 m!6506684))

(assert (=> b!5497715 m!6506688))

(assert (=> b!5497723 m!6506684))

(assert (=> b!5497723 m!6506684))

(assert (=> b!5497723 m!6506688))

(assert (=> bm!405546 m!6506636))

(assert (=> d!1742880 m!6506636))

(assert (=> d!1742880 m!6506890))

(assert (=> b!5497067 d!1742880))

(declare-fun d!1742882 () Bool)

(declare-fun e!3400937 () Bool)

(assert (=> d!1742882 e!3400937))

(declare-fun res!2343866 () Bool)

(assert (=> d!1742882 (=> (not res!2343866) (not e!3400937))))

(declare-fun lt!2243013 () List!62707)

(declare-fun noDuplicate!1478 (List!62707) Bool)

(assert (=> d!1742882 (= res!2343866 (noDuplicate!1478 lt!2243013))))

(declare-fun choose!41787 ((InoxSet Context!9706)) List!62707)

(assert (=> d!1742882 (= lt!2243013 (choose!41787 z!1189))))

(assert (=> d!1742882 (= (toList!9253 z!1189) lt!2243013)))

(declare-fun b!5497726 () Bool)

(declare-fun content!11239 (List!62707) (InoxSet Context!9706))

(assert (=> b!5497726 (= e!3400937 (= (content!11239 lt!2243013) z!1189))))

(assert (= (and d!1742882 res!2343866) b!5497726))

(declare-fun m!6506914 () Bool)

(assert (=> d!1742882 m!6506914))

(declare-fun m!6506916 () Bool)

(assert (=> d!1742882 m!6506916))

(declare-fun m!6506918 () Bool)

(assert (=> b!5497726 m!6506918))

(assert (=> b!5497050 d!1742882))

(declare-fun b!5497727 () Bool)

(declare-fun e!3400943 () (InoxSet Context!9706))

(declare-fun e!3400939 () (InoxSet Context!9706))

(assert (=> b!5497727 (= e!3400943 e!3400939)))

(declare-fun c!960040 () Bool)

(assert (=> b!5497727 (= c!960040 ((_ is Concat!24314) (regOne!31451 r!7292)))))

(declare-fun call!405553 () List!62706)

(declare-fun call!405552 () (InoxSet Context!9706))

(declare-fun bm!405547 () Bool)

(declare-fun c!960036 () Bool)

(assert (=> bm!405547 (= call!405552 (derivationStepZipperDown!815 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292))) (ite c!960036 lt!2242950 (Context!9707 call!405553)) (h!69032 s!2326)))))

(declare-fun b!5497728 () Bool)

(declare-fun e!3400940 () (InoxSet Context!9706))

(declare-fun call!405556 () (InoxSet Context!9706))

(assert (=> b!5497728 (= e!3400940 call!405556)))

(declare-fun b!5497729 () Bool)

(declare-fun call!405554 () (InoxSet Context!9706))

(assert (=> b!5497729 (= e!3400943 ((_ map or) call!405552 call!405554))))

(declare-fun call!405557 () List!62706)

(declare-fun call!405555 () (InoxSet Context!9706))

(declare-fun bm!405548 () Bool)

(declare-fun c!960037 () Bool)

(assert (=> bm!405548 (= call!405555 (derivationStepZipperDown!815 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292))))) (ite (or c!960036 c!960037) lt!2242950 (Context!9707 call!405557)) (h!69032 s!2326)))))

(declare-fun b!5497730 () Bool)

(declare-fun e!3400938 () Bool)

(assert (=> b!5497730 (= e!3400938 (nullable!5512 (regOne!31450 (regOne!31451 r!7292))))))

(declare-fun d!1742884 () Bool)

(declare-fun c!960039 () Bool)

(assert (=> d!1742884 (= c!960039 (and ((_ is ElementMatch!15469) (regOne!31451 r!7292)) (= (c!959839 (regOne!31451 r!7292)) (h!69032 s!2326))))))

(declare-fun e!3400941 () (InoxSet Context!9706))

(assert (=> d!1742884 (= (derivationStepZipperDown!815 (regOne!31451 r!7292) lt!2242950 (h!69032 s!2326)) e!3400941)))

(declare-fun b!5497731 () Bool)

(assert (=> b!5497731 (= e!3400940 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5497732 () Bool)

(declare-fun e!3400942 () (InoxSet Context!9706))

(assert (=> b!5497732 (= e!3400941 e!3400942)))

(assert (=> b!5497732 (= c!960036 ((_ is Union!15469) (regOne!31451 r!7292)))))

(declare-fun b!5497733 () Bool)

(assert (=> b!5497733 (= e!3400942 ((_ map or) call!405552 call!405555))))

(declare-fun bm!405549 () Bool)

(assert (=> bm!405549 (= call!405557 call!405553)))

(declare-fun bm!405550 () Bool)

(assert (=> bm!405550 (= call!405553 ($colon$colon!1566 (exprs!5353 lt!2242950) (ite (or c!960037 c!960040) (regTwo!31450 (regOne!31451 r!7292)) (regOne!31451 r!7292))))))

(declare-fun bm!405551 () Bool)

(assert (=> bm!405551 (= call!405554 call!405555)))

(declare-fun b!5497734 () Bool)

(assert (=> b!5497734 (= e!3400939 call!405556)))

(declare-fun b!5497735 () Bool)

(declare-fun c!960038 () Bool)

(assert (=> b!5497735 (= c!960038 ((_ is Star!15469) (regOne!31451 r!7292)))))

(assert (=> b!5497735 (= e!3400939 e!3400940)))

(declare-fun b!5497736 () Bool)

(assert (=> b!5497736 (= c!960037 e!3400938)))

(declare-fun res!2343867 () Bool)

(assert (=> b!5497736 (=> (not res!2343867) (not e!3400938))))

(assert (=> b!5497736 (= res!2343867 ((_ is Concat!24314) (regOne!31451 r!7292)))))

(assert (=> b!5497736 (= e!3400942 e!3400943)))

(declare-fun bm!405552 () Bool)

(assert (=> bm!405552 (= call!405556 call!405554)))

(declare-fun b!5497737 () Bool)

(assert (=> b!5497737 (= e!3400941 (store ((as const (Array Context!9706 Bool)) false) lt!2242950 true))))

(assert (= (and d!1742884 c!960039) b!5497737))

(assert (= (and d!1742884 (not c!960039)) b!5497732))

(assert (= (and b!5497732 c!960036) b!5497733))

(assert (= (and b!5497732 (not c!960036)) b!5497736))

(assert (= (and b!5497736 res!2343867) b!5497730))

(assert (= (and b!5497736 c!960037) b!5497729))

(assert (= (and b!5497736 (not c!960037)) b!5497727))

(assert (= (and b!5497727 c!960040) b!5497734))

(assert (= (and b!5497727 (not c!960040)) b!5497735))

(assert (= (and b!5497735 c!960038) b!5497728))

(assert (= (and b!5497735 (not c!960038)) b!5497731))

(assert (= (or b!5497734 b!5497728) bm!405549))

(assert (= (or b!5497734 b!5497728) bm!405552))

(assert (= (or b!5497729 bm!405549) bm!405550))

(assert (= (or b!5497729 bm!405552) bm!405551))

(assert (= (or b!5497733 bm!405551) bm!405548))

(assert (= (or b!5497733 b!5497729) bm!405547))

(declare-fun m!6506920 () Bool)

(assert (=> bm!405547 m!6506920))

(declare-fun m!6506922 () Bool)

(assert (=> b!5497730 m!6506922))

(assert (=> b!5497737 m!6506826))

(declare-fun m!6506924 () Bool)

(assert (=> bm!405550 m!6506924))

(declare-fun m!6506926 () Bool)

(assert (=> bm!405548 m!6506926))

(assert (=> b!5497061 d!1742884))

(declare-fun b!5497738 () Bool)

(declare-fun e!3400949 () (InoxSet Context!9706))

(declare-fun e!3400945 () (InoxSet Context!9706))

(assert (=> b!5497738 (= e!3400949 e!3400945)))

(declare-fun c!960045 () Bool)

(assert (=> b!5497738 (= c!960045 ((_ is Concat!24314) (regTwo!31451 r!7292)))))

(declare-fun call!405559 () List!62706)

(declare-fun call!405558 () (InoxSet Context!9706))

(declare-fun c!960041 () Bool)

(declare-fun bm!405553 () Bool)

(assert (=> bm!405553 (= call!405558 (derivationStepZipperDown!815 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292))) (ite c!960041 lt!2242950 (Context!9707 call!405559)) (h!69032 s!2326)))))

(declare-fun b!5497739 () Bool)

(declare-fun e!3400946 () (InoxSet Context!9706))

(declare-fun call!405562 () (InoxSet Context!9706))

(assert (=> b!5497739 (= e!3400946 call!405562)))

(declare-fun b!5497740 () Bool)

(declare-fun call!405560 () (InoxSet Context!9706))

(assert (=> b!5497740 (= e!3400949 ((_ map or) call!405558 call!405560))))

(declare-fun call!405561 () (InoxSet Context!9706))

(declare-fun bm!405554 () Bool)

(declare-fun call!405563 () List!62706)

(declare-fun c!960042 () Bool)

(assert (=> bm!405554 (= call!405561 (derivationStepZipperDown!815 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292))))) (ite (or c!960041 c!960042) lt!2242950 (Context!9707 call!405563)) (h!69032 s!2326)))))

(declare-fun b!5497741 () Bool)

(declare-fun e!3400944 () Bool)

(assert (=> b!5497741 (= e!3400944 (nullable!5512 (regOne!31450 (regTwo!31451 r!7292))))))

(declare-fun d!1742886 () Bool)

(declare-fun c!960044 () Bool)

(assert (=> d!1742886 (= c!960044 (and ((_ is ElementMatch!15469) (regTwo!31451 r!7292)) (= (c!959839 (regTwo!31451 r!7292)) (h!69032 s!2326))))))

(declare-fun e!3400947 () (InoxSet Context!9706))

(assert (=> d!1742886 (= (derivationStepZipperDown!815 (regTwo!31451 r!7292) lt!2242950 (h!69032 s!2326)) e!3400947)))

(declare-fun b!5497742 () Bool)

(assert (=> b!5497742 (= e!3400946 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5497743 () Bool)

(declare-fun e!3400948 () (InoxSet Context!9706))

(assert (=> b!5497743 (= e!3400947 e!3400948)))

(assert (=> b!5497743 (= c!960041 ((_ is Union!15469) (regTwo!31451 r!7292)))))

(declare-fun b!5497744 () Bool)

(assert (=> b!5497744 (= e!3400948 ((_ map or) call!405558 call!405561))))

(declare-fun bm!405555 () Bool)

(assert (=> bm!405555 (= call!405563 call!405559)))

(declare-fun bm!405556 () Bool)

(assert (=> bm!405556 (= call!405559 ($colon$colon!1566 (exprs!5353 lt!2242950) (ite (or c!960042 c!960045) (regTwo!31450 (regTwo!31451 r!7292)) (regTwo!31451 r!7292))))))

(declare-fun bm!405557 () Bool)

(assert (=> bm!405557 (= call!405560 call!405561)))

(declare-fun b!5497745 () Bool)

(assert (=> b!5497745 (= e!3400945 call!405562)))

(declare-fun b!5497746 () Bool)

(declare-fun c!960043 () Bool)

(assert (=> b!5497746 (= c!960043 ((_ is Star!15469) (regTwo!31451 r!7292)))))

(assert (=> b!5497746 (= e!3400945 e!3400946)))

(declare-fun b!5497747 () Bool)

(assert (=> b!5497747 (= c!960042 e!3400944)))

(declare-fun res!2343868 () Bool)

(assert (=> b!5497747 (=> (not res!2343868) (not e!3400944))))

(assert (=> b!5497747 (= res!2343868 ((_ is Concat!24314) (regTwo!31451 r!7292)))))

(assert (=> b!5497747 (= e!3400948 e!3400949)))

(declare-fun bm!405558 () Bool)

(assert (=> bm!405558 (= call!405562 call!405560)))

(declare-fun b!5497748 () Bool)

(assert (=> b!5497748 (= e!3400947 (store ((as const (Array Context!9706 Bool)) false) lt!2242950 true))))

(assert (= (and d!1742886 c!960044) b!5497748))

(assert (= (and d!1742886 (not c!960044)) b!5497743))

(assert (= (and b!5497743 c!960041) b!5497744))

(assert (= (and b!5497743 (not c!960041)) b!5497747))

(assert (= (and b!5497747 res!2343868) b!5497741))

(assert (= (and b!5497747 c!960042) b!5497740))

(assert (= (and b!5497747 (not c!960042)) b!5497738))

(assert (= (and b!5497738 c!960045) b!5497745))

(assert (= (and b!5497738 (not c!960045)) b!5497746))

(assert (= (and b!5497746 c!960043) b!5497739))

(assert (= (and b!5497746 (not c!960043)) b!5497742))

(assert (= (or b!5497745 b!5497739) bm!405555))

(assert (= (or b!5497745 b!5497739) bm!405558))

(assert (= (or b!5497740 bm!405555) bm!405556))

(assert (= (or b!5497740 bm!405558) bm!405557))

(assert (= (or b!5497744 bm!405557) bm!405554))

(assert (= (or b!5497744 b!5497740) bm!405553))

(declare-fun m!6506928 () Bool)

(assert (=> bm!405553 m!6506928))

(declare-fun m!6506930 () Bool)

(assert (=> b!5497741 m!6506930))

(assert (=> b!5497748 m!6506826))

(declare-fun m!6506932 () Bool)

(assert (=> bm!405556 m!6506932))

(declare-fun m!6506934 () Bool)

(assert (=> bm!405554 m!6506934))

(assert (=> b!5497061 d!1742886))

(declare-fun b!5497756 () Bool)

(declare-fun e!3400955 () Bool)

(declare-fun tp!1512630 () Bool)

(assert (=> b!5497756 (= e!3400955 tp!1512630)))

(declare-fun b!5497755 () Bool)

(declare-fun e!3400954 () Bool)

(declare-fun tp!1512631 () Bool)

(assert (=> b!5497755 (= e!3400954 (and (inv!81919 (h!69031 (t!375940 zl!343))) e!3400955 tp!1512631))))

(assert (=> b!5497052 (= tp!1512564 e!3400954)))

(assert (= b!5497755 b!5497756))

(assert (= (and b!5497052 ((_ is Cons!62583) (t!375940 zl!343))) b!5497755))

(declare-fun m!6506936 () Bool)

(assert (=> b!5497755 m!6506936))

(declare-fun b!5497770 () Bool)

(declare-fun e!3400958 () Bool)

(declare-fun tp!1512642 () Bool)

(declare-fun tp!1512645 () Bool)

(assert (=> b!5497770 (= e!3400958 (and tp!1512642 tp!1512645))))

(declare-fun b!5497768 () Bool)

(declare-fun tp!1512644 () Bool)

(declare-fun tp!1512646 () Bool)

(assert (=> b!5497768 (= e!3400958 (and tp!1512644 tp!1512646))))

(declare-fun b!5497769 () Bool)

(declare-fun tp!1512643 () Bool)

(assert (=> b!5497769 (= e!3400958 tp!1512643)))

(declare-fun b!5497767 () Bool)

(assert (=> b!5497767 (= e!3400958 tp_is_empty!40191)))

(assert (=> b!5497066 (= tp!1512561 e!3400958)))

(assert (= (and b!5497066 ((_ is ElementMatch!15469) (regOne!31450 r!7292))) b!5497767))

(assert (= (and b!5497066 ((_ is Concat!24314) (regOne!31450 r!7292))) b!5497768))

(assert (= (and b!5497066 ((_ is Star!15469) (regOne!31450 r!7292))) b!5497769))

(assert (= (and b!5497066 ((_ is Union!15469) (regOne!31450 r!7292))) b!5497770))

(declare-fun b!5497774 () Bool)

(declare-fun e!3400959 () Bool)

(declare-fun tp!1512647 () Bool)

(declare-fun tp!1512650 () Bool)

(assert (=> b!5497774 (= e!3400959 (and tp!1512647 tp!1512650))))

(declare-fun b!5497772 () Bool)

(declare-fun tp!1512649 () Bool)

(declare-fun tp!1512651 () Bool)

(assert (=> b!5497772 (= e!3400959 (and tp!1512649 tp!1512651))))

(declare-fun b!5497773 () Bool)

(declare-fun tp!1512648 () Bool)

(assert (=> b!5497773 (= e!3400959 tp!1512648)))

(declare-fun b!5497771 () Bool)

(assert (=> b!5497771 (= e!3400959 tp_is_empty!40191)))

(assert (=> b!5497066 (= tp!1512560 e!3400959)))

(assert (= (and b!5497066 ((_ is ElementMatch!15469) (regTwo!31450 r!7292))) b!5497771))

(assert (= (and b!5497066 ((_ is Concat!24314) (regTwo!31450 r!7292))) b!5497772))

(assert (= (and b!5497066 ((_ is Star!15469) (regTwo!31450 r!7292))) b!5497773))

(assert (= (and b!5497066 ((_ is Union!15469) (regTwo!31450 r!7292))) b!5497774))

(declare-fun b!5497779 () Bool)

(declare-fun e!3400962 () Bool)

(declare-fun tp!1512656 () Bool)

(declare-fun tp!1512657 () Bool)

(assert (=> b!5497779 (= e!3400962 (and tp!1512656 tp!1512657))))

(assert (=> b!5497064 (= tp!1512558 e!3400962)))

(assert (= (and b!5497064 ((_ is Cons!62582) (exprs!5353 setElem!36411))) b!5497779))

(declare-fun b!5497783 () Bool)

(declare-fun e!3400963 () Bool)

(declare-fun tp!1512658 () Bool)

(declare-fun tp!1512661 () Bool)

(assert (=> b!5497783 (= e!3400963 (and tp!1512658 tp!1512661))))

(declare-fun b!5497781 () Bool)

(declare-fun tp!1512660 () Bool)

(declare-fun tp!1512662 () Bool)

(assert (=> b!5497781 (= e!3400963 (and tp!1512660 tp!1512662))))

(declare-fun b!5497782 () Bool)

(declare-fun tp!1512659 () Bool)

(assert (=> b!5497782 (= e!3400963 tp!1512659)))

(declare-fun b!5497780 () Bool)

(assert (=> b!5497780 (= e!3400963 tp_is_empty!40191)))

(assert (=> b!5497049 (= tp!1512567 e!3400963)))

(assert (= (and b!5497049 ((_ is ElementMatch!15469) (reg!15798 r!7292))) b!5497780))

(assert (= (and b!5497049 ((_ is Concat!24314) (reg!15798 r!7292))) b!5497781))

(assert (= (and b!5497049 ((_ is Star!15469) (reg!15798 r!7292))) b!5497782))

(assert (= (and b!5497049 ((_ is Union!15469) (reg!15798 r!7292))) b!5497783))

(declare-fun condSetEmpty!36417 () Bool)

(assert (=> setNonEmpty!36411 (= condSetEmpty!36417 (= setRest!36411 ((as const (Array Context!9706 Bool)) false)))))

(declare-fun setRes!36417 () Bool)

(assert (=> setNonEmpty!36411 (= tp!1512566 setRes!36417)))

(declare-fun setIsEmpty!36417 () Bool)

(assert (=> setIsEmpty!36417 setRes!36417))

(declare-fun setElem!36417 () Context!9706)

(declare-fun tp!1512667 () Bool)

(declare-fun e!3400966 () Bool)

(declare-fun setNonEmpty!36417 () Bool)

(assert (=> setNonEmpty!36417 (= setRes!36417 (and tp!1512667 (inv!81919 setElem!36417) e!3400966))))

(declare-fun setRest!36417 () (InoxSet Context!9706))

(assert (=> setNonEmpty!36417 (= setRest!36411 ((_ map or) (store ((as const (Array Context!9706 Bool)) false) setElem!36417 true) setRest!36417))))

(declare-fun b!5497788 () Bool)

(declare-fun tp!1512668 () Bool)

(assert (=> b!5497788 (= e!3400966 tp!1512668)))

(assert (= (and setNonEmpty!36411 condSetEmpty!36417) setIsEmpty!36417))

(assert (= (and setNonEmpty!36411 (not condSetEmpty!36417)) setNonEmpty!36417))

(assert (= setNonEmpty!36417 b!5497788))

(declare-fun m!6506938 () Bool)

(assert (=> setNonEmpty!36417 m!6506938))

(declare-fun b!5497793 () Bool)

(declare-fun e!3400969 () Bool)

(declare-fun tp!1512671 () Bool)

(assert (=> b!5497793 (= e!3400969 (and tp_is_empty!40191 tp!1512671))))

(assert (=> b!5497059 (= tp!1512559 e!3400969)))

(assert (= (and b!5497059 ((_ is Cons!62584) (t!375941 s!2326))) b!5497793))

(declare-fun b!5497797 () Bool)

(declare-fun e!3400970 () Bool)

(declare-fun tp!1512672 () Bool)

(declare-fun tp!1512675 () Bool)

(assert (=> b!5497797 (= e!3400970 (and tp!1512672 tp!1512675))))

(declare-fun b!5497795 () Bool)

(declare-fun tp!1512674 () Bool)

(declare-fun tp!1512676 () Bool)

(assert (=> b!5497795 (= e!3400970 (and tp!1512674 tp!1512676))))

(declare-fun b!5497796 () Bool)

(declare-fun tp!1512673 () Bool)

(assert (=> b!5497796 (= e!3400970 tp!1512673)))

(declare-fun b!5497794 () Bool)

(assert (=> b!5497794 (= e!3400970 tp_is_empty!40191)))

(assert (=> b!5497054 (= tp!1512563 e!3400970)))

(assert (= (and b!5497054 ((_ is ElementMatch!15469) (regOne!31451 r!7292))) b!5497794))

(assert (= (and b!5497054 ((_ is Concat!24314) (regOne!31451 r!7292))) b!5497795))

(assert (= (and b!5497054 ((_ is Star!15469) (regOne!31451 r!7292))) b!5497796))

(assert (= (and b!5497054 ((_ is Union!15469) (regOne!31451 r!7292))) b!5497797))

(declare-fun b!5497801 () Bool)

(declare-fun e!3400971 () Bool)

(declare-fun tp!1512677 () Bool)

(declare-fun tp!1512680 () Bool)

(assert (=> b!5497801 (= e!3400971 (and tp!1512677 tp!1512680))))

(declare-fun b!5497799 () Bool)

(declare-fun tp!1512679 () Bool)

(declare-fun tp!1512681 () Bool)

(assert (=> b!5497799 (= e!3400971 (and tp!1512679 tp!1512681))))

(declare-fun b!5497800 () Bool)

(declare-fun tp!1512678 () Bool)

(assert (=> b!5497800 (= e!3400971 tp!1512678)))

(declare-fun b!5497798 () Bool)

(assert (=> b!5497798 (= e!3400971 tp_is_empty!40191)))

(assert (=> b!5497054 (= tp!1512565 e!3400971)))

(assert (= (and b!5497054 ((_ is ElementMatch!15469) (regTwo!31451 r!7292))) b!5497798))

(assert (= (and b!5497054 ((_ is Concat!24314) (regTwo!31451 r!7292))) b!5497799))

(assert (= (and b!5497054 ((_ is Star!15469) (regTwo!31451 r!7292))) b!5497800))

(assert (= (and b!5497054 ((_ is Union!15469) (regTwo!31451 r!7292))) b!5497801))

(declare-fun b!5497802 () Bool)

(declare-fun e!3400972 () Bool)

(declare-fun tp!1512682 () Bool)

(declare-fun tp!1512683 () Bool)

(assert (=> b!5497802 (= e!3400972 (and tp!1512682 tp!1512683))))

(assert (=> b!5497065 (= tp!1512562 e!3400972)))

(assert (= (and b!5497065 ((_ is Cons!62582) (exprs!5353 (h!69031 zl!343)))) b!5497802))

(declare-fun b_lambda!208521 () Bool)

(assert (= b_lambda!208515 (or b!5497053 b_lambda!208521)))

(declare-fun bs!1268180 () Bool)

(declare-fun d!1742888 () Bool)

(assert (= bs!1268180 (and d!1742888 b!5497053)))

(assert (=> bs!1268180 (= (dynLambda!24459 lambda!294301 (h!69031 zl!343)) (derivationStepZipperUp!741 (h!69031 zl!343) (h!69032 s!2326)))))

(assert (=> bs!1268180 m!6506566))

(assert (=> d!1742828 d!1742888))

(check-sat (not d!1742866) (not b!5497665) (not b!5497715) (not b!5497706) (not setNonEmpty!36417) (not b!5497687) (not b!5497690) (not d!1742816) (not b!5497773) (not b!5497723) (not b!5497782) (not b!5497802) (not bm!405472) (not b!5497698) (not d!1742872) (not d!1742876) (not bm!405550) (not d!1742810) (not bs!1268180) (not b!5497681) (not b!5497301) tp_is_empty!40191 (not bm!405548) (not b!5497756) (not b!5497772) (not b!5497795) (not b!5497694) (not bm!405547) (not b!5497295) (not bm!405553) (not b!5497788) (not bm!405544) (not d!1742864) (not b!5497631) (not b!5497595) (not b_lambda!208521) (not d!1742848) (not bm!405542) (not bm!405556) (not b!5497701) (not b!5497719) (not b!5497671) (not bm!405518) (not b!5497291) (not b!5497779) (not b!5497630) (not b!5497796) (not b!5497635) (not bm!405545) (not b!5497181) (not b!5497668) (not bm!405535) (not b!5497800) (not d!1742782) (not bm!405537) (not b!5497726) (not b!5497667) (not b!5497793) (not d!1742812) (not b!5497781) (not d!1742828) (not b!5497634) (not b!5497712) (not b!5497801) (not b!5497686) (not b!5497676) (not bm!405540) (not b!5497720) (not d!1742874) (not b!5497632) (not b!5497755) (not b!5497774) (not b!5497186) (not b!5497411) (not b!5497501) (not b!5497292) (not bm!405519) (not bm!405471) (not b!5497673) (not b!5497797) (not d!1742882) (not b!5497629) (not b!5497607) (not d!1742818) (not b!5497783) (not b!5497770) (not b!5497307) (not b!5497606) (not b!5497637) (not b!5497769) (not bm!405546) (not b!5497768) (not b!5497695) (not b!5497642) (not d!1742868) (not b!5497730) (not d!1742796) (not d!1742880) (not b!5497666) (not b!5497799) (not bm!405543) (not bm!405486) (not bm!405541) (not b!5497664) (not bm!405534) (not b!5497741) (not bm!405554) (not b!5497410) (not bm!405496) (not b!5497299) (not b!5497711))
(check-sat)
(get-model)

(declare-fun d!1743022 () Bool)

(assert (=> d!1743022 (= (head!11776 (exprs!5353 (h!69031 zl!343))) (h!69030 (exprs!5353 (h!69031 zl!343))))))

(assert (=> b!5497673 d!1743022))

(declare-fun bs!1268300 () Bool)

(declare-fun b!5498132 () Bool)

(assert (= bs!1268300 (and b!5498132 b!5497187)))

(declare-fun lambda!294366 () Int)

(assert (=> bs!1268300 (= (and (= (reg!15798 (regOne!31451 (regOne!31451 r!7292))) (reg!15798 r!7292)) (= (regOne!31451 (regOne!31451 r!7292)) r!7292)) (= lambda!294366 lambda!294316))))

(declare-fun bs!1268304 () Bool)

(assert (= bs!1268304 (and b!5498132 b!5497678)))

(assert (=> bs!1268304 (not (= lambda!294366 lambda!294351))))

(declare-fun bs!1268308 () Bool)

(assert (= bs!1268308 (and b!5498132 b!5497682)))

(assert (=> bs!1268308 (= (and (= (reg!15798 (regOne!31451 (regOne!31451 r!7292))) (reg!15798 (regTwo!31451 r!7292))) (= (regOne!31451 (regOne!31451 r!7292)) (regTwo!31451 r!7292))) (= lambda!294366 lambda!294350))))

(declare-fun bs!1268312 () Bool)

(assert (= bs!1268312 (and b!5498132 b!5497183)))

(assert (=> bs!1268312 (not (= lambda!294366 lambda!294317))))

(declare-fun bs!1268313 () Bool)

(assert (= bs!1268313 (and b!5498132 b!5497703)))

(assert (=> bs!1268313 (not (= lambda!294366 lambda!294353))))

(declare-fun bs!1268314 () Bool)

(assert (= bs!1268314 (and b!5498132 b!5497707)))

(assert (=> bs!1268314 (= (and (= (reg!15798 (regOne!31451 (regOne!31451 r!7292))) (reg!15798 (regOne!31451 r!7292))) (= (regOne!31451 (regOne!31451 r!7292)) (regOne!31451 r!7292))) (= lambda!294366 lambda!294352))))

(assert (=> b!5498132 true))

(assert (=> b!5498132 true))

(declare-fun bs!1268317 () Bool)

(declare-fun b!5498128 () Bool)

(assert (= bs!1268317 (and b!5498128 b!5497187)))

(declare-fun lambda!294368 () Int)

(assert (=> bs!1268317 (not (= lambda!294368 lambda!294316))))

(declare-fun bs!1268318 () Bool)

(assert (= bs!1268318 (and b!5498128 b!5497682)))

(assert (=> bs!1268318 (not (= lambda!294368 lambda!294350))))

(declare-fun bs!1268319 () Bool)

(assert (= bs!1268319 (and b!5498128 b!5497183)))

(assert (=> bs!1268319 (= (and (= (regOne!31450 (regOne!31451 (regOne!31451 r!7292))) (regOne!31450 r!7292)) (= (regTwo!31450 (regOne!31451 (regOne!31451 r!7292))) (regTwo!31450 r!7292))) (= lambda!294368 lambda!294317))))

(declare-fun bs!1268320 () Bool)

(assert (= bs!1268320 (and b!5498128 b!5497703)))

(assert (=> bs!1268320 (= (and (= (regOne!31450 (regOne!31451 (regOne!31451 r!7292))) (regOne!31450 (regOne!31451 r!7292))) (= (regTwo!31450 (regOne!31451 (regOne!31451 r!7292))) (regTwo!31450 (regOne!31451 r!7292)))) (= lambda!294368 lambda!294353))))

(declare-fun bs!1268321 () Bool)

(assert (= bs!1268321 (and b!5498128 b!5497707)))

(assert (=> bs!1268321 (not (= lambda!294368 lambda!294352))))

(declare-fun bs!1268322 () Bool)

(assert (= bs!1268322 (and b!5498128 b!5498132)))

(assert (=> bs!1268322 (not (= lambda!294368 lambda!294366))))

(declare-fun bs!1268323 () Bool)

(assert (= bs!1268323 (and b!5498128 b!5497678)))

(assert (=> bs!1268323 (= (and (= (regOne!31450 (regOne!31451 (regOne!31451 r!7292))) (regOne!31450 (regTwo!31451 r!7292))) (= (regTwo!31450 (regOne!31451 (regOne!31451 r!7292))) (regTwo!31450 (regTwo!31451 r!7292)))) (= lambda!294368 lambda!294351))))

(assert (=> b!5498128 true))

(assert (=> b!5498128 true))

(declare-fun b!5498124 () Bool)

(declare-fun e!3401180 () Bool)

(declare-fun e!3401181 () Bool)

(assert (=> b!5498124 (= e!3401180 e!3401181)))

(declare-fun c!960155 () Bool)

(assert (=> b!5498124 (= c!960155 ((_ is Star!15469) (regOne!31451 (regOne!31451 r!7292))))))

(declare-fun b!5498125 () Bool)

(declare-fun e!3401183 () Bool)

(declare-fun e!3401184 () Bool)

(assert (=> b!5498125 (= e!3401183 e!3401184)))

(declare-fun res!2343972 () Bool)

(assert (=> b!5498125 (= res!2343972 (not ((_ is EmptyLang!15469) (regOne!31451 (regOne!31451 r!7292)))))))

(assert (=> b!5498125 (=> (not res!2343972) (not e!3401184))))

(declare-fun b!5498126 () Bool)

(declare-fun e!3401179 () Bool)

(assert (=> b!5498126 (= e!3401180 e!3401179)))

(declare-fun res!2343973 () Bool)

(assert (=> b!5498126 (= res!2343973 (matchRSpec!2572 (regOne!31451 (regOne!31451 (regOne!31451 r!7292))) s!2326))))

(assert (=> b!5498126 (=> res!2343973 e!3401179)))

(declare-fun b!5498127 () Bool)

(declare-fun e!3401178 () Bool)

(assert (=> b!5498127 (= e!3401178 (= s!2326 (Cons!62584 (c!959839 (regOne!31451 (regOne!31451 r!7292))) Nil!62584)))))

(declare-fun d!1743026 () Bool)

(declare-fun c!960156 () Bool)

(assert (=> d!1743026 (= c!960156 ((_ is EmptyExpr!15469) (regOne!31451 (regOne!31451 r!7292))))))

(assert (=> d!1743026 (= (matchRSpec!2572 (regOne!31451 (regOne!31451 r!7292)) s!2326) e!3401183)))

(declare-fun call!405662 () Bool)

(assert (=> b!5498128 (= e!3401181 call!405662)))

(declare-fun b!5498129 () Bool)

(declare-fun c!960154 () Bool)

(assert (=> b!5498129 (= c!960154 ((_ is ElementMatch!15469) (regOne!31451 (regOne!31451 r!7292))))))

(assert (=> b!5498129 (= e!3401184 e!3401178)))

(declare-fun b!5498130 () Bool)

(declare-fun call!405661 () Bool)

(assert (=> b!5498130 (= e!3401183 call!405661)))

(declare-fun b!5498131 () Bool)

(assert (=> b!5498131 (= e!3401179 (matchRSpec!2572 (regTwo!31451 (regOne!31451 (regOne!31451 r!7292))) s!2326))))

(declare-fun bm!405656 () Bool)

(assert (=> bm!405656 (= call!405662 (Exists!2577 (ite c!960155 lambda!294366 lambda!294368)))))

(declare-fun e!3401182 () Bool)

(assert (=> b!5498132 (= e!3401182 call!405662)))

(declare-fun b!5498133 () Bool)

(declare-fun res!2343971 () Bool)

(assert (=> b!5498133 (=> res!2343971 e!3401182)))

(assert (=> b!5498133 (= res!2343971 call!405661)))

(assert (=> b!5498133 (= e!3401181 e!3401182)))

(declare-fun b!5498134 () Bool)

(declare-fun c!960157 () Bool)

(assert (=> b!5498134 (= c!960157 ((_ is Union!15469) (regOne!31451 (regOne!31451 r!7292))))))

(assert (=> b!5498134 (= e!3401178 e!3401180)))

(declare-fun bm!405657 () Bool)

(assert (=> bm!405657 (= call!405661 (isEmpty!34380 s!2326))))

(assert (= (and d!1743026 c!960156) b!5498130))

(assert (= (and d!1743026 (not c!960156)) b!5498125))

(assert (= (and b!5498125 res!2343972) b!5498129))

(assert (= (and b!5498129 c!960154) b!5498127))

(assert (= (and b!5498129 (not c!960154)) b!5498134))

(assert (= (and b!5498134 c!960157) b!5498126))

(assert (= (and b!5498134 (not c!960157)) b!5498124))

(assert (= (and b!5498126 (not res!2343973)) b!5498131))

(assert (= (and b!5498124 c!960155) b!5498133))

(assert (= (and b!5498124 (not c!960155)) b!5498128))

(assert (= (and b!5498133 (not res!2343971)) b!5498132))

(assert (= (or b!5498132 b!5498128) bm!405656))

(assert (= (or b!5498130 b!5498133) bm!405657))

(declare-fun m!6507254 () Bool)

(assert (=> b!5498126 m!6507254))

(declare-fun m!6507256 () Bool)

(assert (=> b!5498131 m!6507256))

(declare-fun m!6507258 () Bool)

(assert (=> bm!405656 m!6507258))

(assert (=> bm!405657 m!6506636))

(assert (=> b!5497701 d!1743026))

(declare-fun d!1743052 () Bool)

(assert (=> d!1743052 (= (isEmpty!34380 s!2326) ((_ is Nil!62584) s!2326))))

(assert (=> d!1742796 d!1743052))

(assert (=> d!1742796 d!1742836))

(declare-fun b!5498181 () Bool)

(declare-fun e!3401215 () Bool)

(declare-fun call!405669 () Bool)

(assert (=> b!5498181 (= e!3401215 call!405669)))

(declare-fun b!5498182 () Bool)

(declare-fun e!3401210 () Bool)

(declare-fun call!405668 () Bool)

(assert (=> b!5498182 (= e!3401210 call!405668)))

(declare-fun b!5498183 () Bool)

(declare-fun e!3401211 () Bool)

(assert (=> b!5498183 (= e!3401211 call!405669)))

(declare-fun b!5498184 () Bool)

(declare-fun e!3401209 () Bool)

(declare-fun e!3401213 () Bool)

(assert (=> b!5498184 (= e!3401209 e!3401213)))

(declare-fun c!960170 () Bool)

(assert (=> b!5498184 (= c!960170 ((_ is Union!15469) (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292)))))))

(declare-fun c!960171 () Bool)

(declare-fun bm!405663 () Bool)

(assert (=> bm!405663 (= call!405668 (validRegex!7205 (ite c!960171 (reg!15798 (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292)))) (ite c!960170 (regOne!31451 (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292)))) (regOne!31450 (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292))))))))))

(declare-fun bm!405664 () Bool)

(assert (=> bm!405664 (= call!405669 (validRegex!7205 (ite c!960170 (regTwo!31451 (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292)))) (regTwo!31450 (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292)))))))))

(declare-fun b!5498185 () Bool)

(assert (=> b!5498185 (= e!3401209 e!3401210)))

(declare-fun res!2343990 () Bool)

(assert (=> b!5498185 (= res!2343990 (not (nullable!5512 (reg!15798 (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292)))))))))

(assert (=> b!5498185 (=> (not res!2343990) (not e!3401210))))

(declare-fun b!5498186 () Bool)

(declare-fun e!3401214 () Bool)

(assert (=> b!5498186 (= e!3401214 e!3401211)))

(declare-fun res!2343987 () Bool)

(assert (=> b!5498186 (=> (not res!2343987) (not e!3401211))))

(declare-fun call!405670 () Bool)

(assert (=> b!5498186 (= res!2343987 call!405670)))

(declare-fun bm!405665 () Bool)

(assert (=> bm!405665 (= call!405670 call!405668)))

(declare-fun b!5498189 () Bool)

(declare-fun res!2343988 () Bool)

(assert (=> b!5498189 (=> res!2343988 e!3401214)))

(assert (=> b!5498189 (= res!2343988 (not ((_ is Concat!24314) (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292))))))))

(assert (=> b!5498189 (= e!3401213 e!3401214)))

(declare-fun d!1743054 () Bool)

(declare-fun res!2343986 () Bool)

(declare-fun e!3401212 () Bool)

(assert (=> d!1743054 (=> res!2343986 e!3401212)))

(assert (=> d!1743054 (= res!2343986 ((_ is ElementMatch!15469) (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292)))))))

(assert (=> d!1743054 (= (validRegex!7205 (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292)))) e!3401212)))

(declare-fun b!5498191 () Bool)

(declare-fun res!2343989 () Bool)

(assert (=> b!5498191 (=> (not res!2343989) (not e!3401215))))

(assert (=> b!5498191 (= res!2343989 call!405670)))

(assert (=> b!5498191 (= e!3401213 e!3401215)))

(declare-fun b!5498193 () Bool)

(assert (=> b!5498193 (= e!3401212 e!3401209)))

(assert (=> b!5498193 (= c!960171 ((_ is Star!15469) (ite c!959973 (reg!15798 r!7292) (ite c!959972 (regOne!31451 r!7292) (regOne!31450 r!7292)))))))

(assert (= (and d!1743054 (not res!2343986)) b!5498193))

(assert (= (and b!5498193 c!960171) b!5498185))

(assert (= (and b!5498193 (not c!960171)) b!5498184))

(assert (= (and b!5498185 res!2343990) b!5498182))

(assert (= (and b!5498184 c!960170) b!5498191))

(assert (= (and b!5498184 (not c!960170)) b!5498189))

(assert (= (and b!5498191 res!2343989) b!5498181))

(assert (= (and b!5498189 (not res!2343988)) b!5498186))

(assert (= (and b!5498186 res!2343987) b!5498183))

(assert (= (or b!5498181 b!5498183) bm!405664))

(assert (= (or b!5498191 b!5498186) bm!405665))

(assert (= (or b!5498182 bm!405665) bm!405663))

(declare-fun m!6507262 () Bool)

(assert (=> bm!405663 m!6507262))

(declare-fun m!6507264 () Bool)

(assert (=> bm!405664 m!6507264))

(declare-fun m!6507266 () Bool)

(assert (=> b!5498185 m!6507266))

(assert (=> bm!405518 d!1743054))

(declare-fun d!1743056 () Bool)

(assert (=> d!1743056 (= (isEmpty!34381 (t!375939 (unfocusZipperList!897 zl!343))) ((_ is Nil!62582) (t!375939 (unfocusZipperList!897 zl!343))))))

(assert (=> b!5497629 d!1743056))

(declare-fun d!1743058 () Bool)

(assert (=> d!1743058 (= (head!11775 s!2326) (h!69032 s!2326))))

(assert (=> b!5497291 d!1743058))

(assert (=> b!5497186 d!1742870))

(declare-fun d!1743060 () Bool)

(declare-fun nullableFct!1647 (Regex!15469) Bool)

(assert (=> d!1743060 (= (nullable!5512 (regOne!31451 r!7292)) (nullableFct!1647 (regOne!31451 r!7292)))))

(declare-fun bs!1268324 () Bool)

(assert (= bs!1268324 d!1743060))

(declare-fun m!6507270 () Bool)

(assert (=> bs!1268324 m!6507270))

(assert (=> b!5497720 d!1743060))

(declare-fun bs!1268327 () Bool)

(declare-fun b!5498287 () Bool)

(assert (= bs!1268327 (and b!5498287 b!5497682)))

(declare-fun lambda!294369 () Int)

(assert (=> bs!1268327 (= (and (= (reg!15798 (regOne!31451 (regTwo!31451 r!7292))) (reg!15798 (regTwo!31451 r!7292))) (= (regOne!31451 (regTwo!31451 r!7292)) (regTwo!31451 r!7292))) (= lambda!294369 lambda!294350))))

(declare-fun bs!1268331 () Bool)

(assert (= bs!1268331 (and b!5498287 b!5497183)))

(assert (=> bs!1268331 (not (= lambda!294369 lambda!294317))))

(declare-fun bs!1268332 () Bool)

(assert (= bs!1268332 (and b!5498287 b!5497703)))

(assert (=> bs!1268332 (not (= lambda!294369 lambda!294353))))

(declare-fun bs!1268333 () Bool)

(assert (= bs!1268333 (and b!5498287 b!5497707)))

(assert (=> bs!1268333 (= (and (= (reg!15798 (regOne!31451 (regTwo!31451 r!7292))) (reg!15798 (regOne!31451 r!7292))) (= (regOne!31451 (regTwo!31451 r!7292)) (regOne!31451 r!7292))) (= lambda!294369 lambda!294352))))

(declare-fun bs!1268334 () Bool)

(assert (= bs!1268334 (and b!5498287 b!5497187)))

(assert (=> bs!1268334 (= (and (= (reg!15798 (regOne!31451 (regTwo!31451 r!7292))) (reg!15798 r!7292)) (= (regOne!31451 (regTwo!31451 r!7292)) r!7292)) (= lambda!294369 lambda!294316))))

(declare-fun bs!1268335 () Bool)

(assert (= bs!1268335 (and b!5498287 b!5498128)))

(assert (=> bs!1268335 (not (= lambda!294369 lambda!294368))))

(declare-fun bs!1268336 () Bool)

(assert (= bs!1268336 (and b!5498287 b!5498132)))

(assert (=> bs!1268336 (= (and (= (reg!15798 (regOne!31451 (regTwo!31451 r!7292))) (reg!15798 (regOne!31451 (regOne!31451 r!7292)))) (= (regOne!31451 (regTwo!31451 r!7292)) (regOne!31451 (regOne!31451 r!7292)))) (= lambda!294369 lambda!294366))))

(declare-fun bs!1268337 () Bool)

(assert (= bs!1268337 (and b!5498287 b!5497678)))

(assert (=> bs!1268337 (not (= lambda!294369 lambda!294351))))

(assert (=> b!5498287 true))

(assert (=> b!5498287 true))

(declare-fun bs!1268338 () Bool)

(declare-fun b!5498283 () Bool)

(assert (= bs!1268338 (and b!5498283 b!5498287)))

(declare-fun lambda!294370 () Int)

(assert (=> bs!1268338 (not (= lambda!294370 lambda!294369))))

(declare-fun bs!1268339 () Bool)

(assert (= bs!1268339 (and b!5498283 b!5497682)))

(assert (=> bs!1268339 (not (= lambda!294370 lambda!294350))))

(declare-fun bs!1268340 () Bool)

(assert (= bs!1268340 (and b!5498283 b!5497183)))

(assert (=> bs!1268340 (= (and (= (regOne!31450 (regOne!31451 (regTwo!31451 r!7292))) (regOne!31450 r!7292)) (= (regTwo!31450 (regOne!31451 (regTwo!31451 r!7292))) (regTwo!31450 r!7292))) (= lambda!294370 lambda!294317))))

(declare-fun bs!1268341 () Bool)

(assert (= bs!1268341 (and b!5498283 b!5497703)))

(assert (=> bs!1268341 (= (and (= (regOne!31450 (regOne!31451 (regTwo!31451 r!7292))) (regOne!31450 (regOne!31451 r!7292))) (= (regTwo!31450 (regOne!31451 (regTwo!31451 r!7292))) (regTwo!31450 (regOne!31451 r!7292)))) (= lambda!294370 lambda!294353))))

(declare-fun bs!1268342 () Bool)

(assert (= bs!1268342 (and b!5498283 b!5497707)))

(assert (=> bs!1268342 (not (= lambda!294370 lambda!294352))))

(declare-fun bs!1268343 () Bool)

(assert (= bs!1268343 (and b!5498283 b!5497187)))

(assert (=> bs!1268343 (not (= lambda!294370 lambda!294316))))

(declare-fun bs!1268344 () Bool)

(assert (= bs!1268344 (and b!5498283 b!5498128)))

(assert (=> bs!1268344 (= (and (= (regOne!31450 (regOne!31451 (regTwo!31451 r!7292))) (regOne!31450 (regOne!31451 (regOne!31451 r!7292)))) (= (regTwo!31450 (regOne!31451 (regTwo!31451 r!7292))) (regTwo!31450 (regOne!31451 (regOne!31451 r!7292))))) (= lambda!294370 lambda!294368))))

(declare-fun bs!1268345 () Bool)

(assert (= bs!1268345 (and b!5498283 b!5498132)))

(assert (=> bs!1268345 (not (= lambda!294370 lambda!294366))))

(declare-fun bs!1268346 () Bool)

(assert (= bs!1268346 (and b!5498283 b!5497678)))

(assert (=> bs!1268346 (= (and (= (regOne!31450 (regOne!31451 (regTwo!31451 r!7292))) (regOne!31450 (regTwo!31451 r!7292))) (= (regTwo!31450 (regOne!31451 (regTwo!31451 r!7292))) (regTwo!31450 (regTwo!31451 r!7292)))) (= lambda!294370 lambda!294351))))

(assert (=> b!5498283 true))

(assert (=> b!5498283 true))

(declare-fun b!5498279 () Bool)

(declare-fun e!3401244 () Bool)

(declare-fun e!3401245 () Bool)

(assert (=> b!5498279 (= e!3401244 e!3401245)))

(declare-fun c!960173 () Bool)

(assert (=> b!5498279 (= c!960173 ((_ is Star!15469) (regOne!31451 (regTwo!31451 r!7292))))))

(declare-fun b!5498280 () Bool)

(declare-fun e!3401247 () Bool)

(declare-fun e!3401248 () Bool)

(assert (=> b!5498280 (= e!3401247 e!3401248)))

(declare-fun res!2343992 () Bool)

(assert (=> b!5498280 (= res!2343992 (not ((_ is EmptyLang!15469) (regOne!31451 (regTwo!31451 r!7292)))))))

(assert (=> b!5498280 (=> (not res!2343992) (not e!3401248))))

(declare-fun b!5498281 () Bool)

(declare-fun e!3401243 () Bool)

(assert (=> b!5498281 (= e!3401244 e!3401243)))

(declare-fun res!2343993 () Bool)

(assert (=> b!5498281 (= res!2343993 (matchRSpec!2572 (regOne!31451 (regOne!31451 (regTwo!31451 r!7292))) s!2326))))

(assert (=> b!5498281 (=> res!2343993 e!3401243)))

(declare-fun b!5498282 () Bool)

(declare-fun e!3401242 () Bool)

(assert (=> b!5498282 (= e!3401242 (= s!2326 (Cons!62584 (c!959839 (regOne!31451 (regTwo!31451 r!7292))) Nil!62584)))))

(declare-fun d!1743062 () Bool)

(declare-fun c!960174 () Bool)

(assert (=> d!1743062 (= c!960174 ((_ is EmptyExpr!15469) (regOne!31451 (regTwo!31451 r!7292))))))

(assert (=> d!1743062 (= (matchRSpec!2572 (regOne!31451 (regTwo!31451 r!7292)) s!2326) e!3401247)))

(declare-fun call!405672 () Bool)

(assert (=> b!5498283 (= e!3401245 call!405672)))

(declare-fun b!5498284 () Bool)

(declare-fun c!960172 () Bool)

(assert (=> b!5498284 (= c!960172 ((_ is ElementMatch!15469) (regOne!31451 (regTwo!31451 r!7292))))))

(assert (=> b!5498284 (= e!3401248 e!3401242)))

(declare-fun b!5498285 () Bool)

(declare-fun call!405671 () Bool)

(assert (=> b!5498285 (= e!3401247 call!405671)))

(declare-fun b!5498286 () Bool)

(assert (=> b!5498286 (= e!3401243 (matchRSpec!2572 (regTwo!31451 (regOne!31451 (regTwo!31451 r!7292))) s!2326))))

(declare-fun bm!405666 () Bool)

(assert (=> bm!405666 (= call!405672 (Exists!2577 (ite c!960173 lambda!294369 lambda!294370)))))

(declare-fun e!3401246 () Bool)

(assert (=> b!5498287 (= e!3401246 call!405672)))

(declare-fun b!5498288 () Bool)

(declare-fun res!2343991 () Bool)

(assert (=> b!5498288 (=> res!2343991 e!3401246)))

(assert (=> b!5498288 (= res!2343991 call!405671)))

(assert (=> b!5498288 (= e!3401245 e!3401246)))

(declare-fun b!5498289 () Bool)

(declare-fun c!960175 () Bool)

(assert (=> b!5498289 (= c!960175 ((_ is Union!15469) (regOne!31451 (regTwo!31451 r!7292))))))

(assert (=> b!5498289 (= e!3401242 e!3401244)))

(declare-fun bm!405667 () Bool)

(assert (=> bm!405667 (= call!405671 (isEmpty!34380 s!2326))))

(assert (= (and d!1743062 c!960174) b!5498285))

(assert (= (and d!1743062 (not c!960174)) b!5498280))

(assert (= (and b!5498280 res!2343992) b!5498284))

(assert (= (and b!5498284 c!960172) b!5498282))

(assert (= (and b!5498284 (not c!960172)) b!5498289))

(assert (= (and b!5498289 c!960175) b!5498281))

(assert (= (and b!5498289 (not c!960175)) b!5498279))

(assert (= (and b!5498281 (not res!2343993)) b!5498286))

(assert (= (and b!5498279 c!960173) b!5498288))

(assert (= (and b!5498279 (not c!960173)) b!5498283))

(assert (= (and b!5498288 (not res!2343991)) b!5498287))

(assert (= (or b!5498287 b!5498283) bm!405666))

(assert (= (or b!5498285 b!5498288) bm!405667))

(declare-fun m!6507280 () Bool)

(assert (=> b!5498281 m!6507280))

(declare-fun m!6507282 () Bool)

(assert (=> b!5498286 m!6507282))

(declare-fun m!6507284 () Bool)

(assert (=> bm!405666 m!6507284))

(assert (=> bm!405667 m!6506636))

(assert (=> b!5497676 d!1743062))

(declare-fun d!1743074 () Bool)

(assert (=> d!1743074 (= ($colon$colon!1566 (exprs!5353 lt!2242950) (ite (or c!960037 c!960040) (regTwo!31450 (regOne!31451 r!7292)) (regOne!31451 r!7292))) (Cons!62582 (ite (or c!960037 c!960040) (regTwo!31450 (regOne!31451 r!7292)) (regOne!31451 r!7292)) (exprs!5353 lt!2242950)))))

(assert (=> bm!405550 d!1743074))

(declare-fun d!1743076 () Bool)

(assert (=> d!1743076 (= (nullable!5512 (reg!15798 r!7292)) (nullableFct!1647 (reg!15798 r!7292)))))

(declare-fun bs!1268347 () Bool)

(assert (= bs!1268347 d!1743076))

(declare-fun m!6507286 () Bool)

(assert (=> bs!1268347 m!6507286))

(assert (=> b!5497501 d!1743076))

(declare-fun d!1743078 () Bool)

(assert (=> d!1743078 (= (nullable!5512 (regTwo!31451 r!7292)) (nullableFct!1647 (regTwo!31451 r!7292)))))

(declare-fun bs!1268348 () Bool)

(assert (= bs!1268348 d!1743078))

(declare-fun m!6507288 () Bool)

(assert (=> bs!1268348 m!6507288))

(assert (=> b!5497695 d!1743078))

(declare-fun bs!1268349 () Bool)

(declare-fun d!1743080 () Bool)

(assert (= bs!1268349 (and d!1743080 d!1742866)))

(declare-fun lambda!294371 () Int)

(assert (=> bs!1268349 (= lambda!294371 lambda!294346)))

(declare-fun bs!1268350 () Bool)

(assert (= bs!1268350 (and d!1743080 d!1742868)))

(assert (=> bs!1268350 (= lambda!294371 lambda!294349)))

(declare-fun bs!1268351 () Bool)

(assert (= bs!1268351 (and d!1743080 d!1742848)))

(assert (=> bs!1268351 (= lambda!294371 lambda!294339)))

(declare-fun bs!1268352 () Bool)

(assert (= bs!1268352 (and d!1743080 d!1742782)))

(assert (=> bs!1268352 (= lambda!294371 lambda!294304)))

(declare-fun bs!1268353 () Bool)

(assert (= bs!1268353 (and d!1743080 d!1742864)))

(assert (=> bs!1268353 (= lambda!294371 lambda!294343)))

(declare-fun b!5498307 () Bool)

(declare-fun e!3401255 () Regex!15469)

(assert (=> b!5498307 (= e!3401255 EmptyLang!15469)))

(declare-fun b!5498308 () Bool)

(declare-fun e!3401256 () Bool)

(assert (=> b!5498308 (= e!3401256 (isEmpty!34381 (t!375939 (t!375939 (unfocusZipperList!897 zl!343)))))))

(declare-fun b!5498309 () Bool)

(declare-fun e!3401259 () Bool)

(declare-fun lt!2243025 () Regex!15469)

(assert (=> b!5498309 (= e!3401259 (= lt!2243025 (head!11776 (t!375939 (unfocusZipperList!897 zl!343)))))))

(declare-fun b!5498310 () Bool)

(assert (=> b!5498310 (= e!3401255 (Union!15469 (h!69030 (t!375939 (unfocusZipperList!897 zl!343))) (generalisedUnion!1332 (t!375939 (t!375939 (unfocusZipperList!897 zl!343))))))))

(declare-fun b!5498311 () Bool)

(declare-fun e!3401254 () Bool)

(assert (=> b!5498311 (= e!3401254 (isEmptyLang!1069 lt!2243025))))

(declare-fun b!5498312 () Bool)

(declare-fun e!3401258 () Regex!15469)

(assert (=> b!5498312 (= e!3401258 (h!69030 (t!375939 (unfocusZipperList!897 zl!343))))))

(declare-fun e!3401257 () Bool)

(assert (=> d!1743080 e!3401257))

(declare-fun res!2343995 () Bool)

(assert (=> d!1743080 (=> (not res!2343995) (not e!3401257))))

(assert (=> d!1743080 (= res!2343995 (validRegex!7205 lt!2243025))))

(assert (=> d!1743080 (= lt!2243025 e!3401258)))

(declare-fun c!960179 () Bool)

(assert (=> d!1743080 (= c!960179 e!3401256)))

(declare-fun res!2343994 () Bool)

(assert (=> d!1743080 (=> (not res!2343994) (not e!3401256))))

(assert (=> d!1743080 (= res!2343994 ((_ is Cons!62582) (t!375939 (unfocusZipperList!897 zl!343))))))

(assert (=> d!1743080 (forall!14660 (t!375939 (unfocusZipperList!897 zl!343)) lambda!294371)))

(assert (=> d!1743080 (= (generalisedUnion!1332 (t!375939 (unfocusZipperList!897 zl!343))) lt!2243025)))

(declare-fun b!5498313 () Bool)

(assert (=> b!5498313 (= e!3401259 (isUnion!499 lt!2243025))))

(declare-fun b!5498314 () Bool)

(assert (=> b!5498314 (= e!3401254 e!3401259)))

(declare-fun c!960176 () Bool)

(assert (=> b!5498314 (= c!960176 (isEmpty!34381 (tail!10871 (t!375939 (unfocusZipperList!897 zl!343)))))))

(declare-fun b!5498315 () Bool)

(assert (=> b!5498315 (= e!3401258 e!3401255)))

(declare-fun c!960178 () Bool)

(assert (=> b!5498315 (= c!960178 ((_ is Cons!62582) (t!375939 (unfocusZipperList!897 zl!343))))))

(declare-fun b!5498316 () Bool)

(assert (=> b!5498316 (= e!3401257 e!3401254)))

(declare-fun c!960177 () Bool)

(assert (=> b!5498316 (= c!960177 (isEmpty!34381 (t!375939 (unfocusZipperList!897 zl!343))))))

(assert (= (and d!1743080 res!2343994) b!5498308))

(assert (= (and d!1743080 c!960179) b!5498312))

(assert (= (and d!1743080 (not c!960179)) b!5498315))

(assert (= (and b!5498315 c!960178) b!5498310))

(assert (= (and b!5498315 (not c!960178)) b!5498307))

(assert (= (and d!1743080 res!2343995) b!5498316))

(assert (= (and b!5498316 c!960177) b!5498311))

(assert (= (and b!5498316 (not c!960177)) b!5498314))

(assert (= (and b!5498314 c!960176) b!5498309))

(assert (= (and b!5498314 (not c!960176)) b!5498313))

(declare-fun m!6507290 () Bool)

(assert (=> b!5498313 m!6507290))

(declare-fun m!6507292 () Bool)

(assert (=> d!1743080 m!6507292))

(declare-fun m!6507294 () Bool)

(assert (=> d!1743080 m!6507294))

(declare-fun m!6507296 () Bool)

(assert (=> b!5498308 m!6507296))

(assert (=> b!5498316 m!6506844))

(declare-fun m!6507298 () Bool)

(assert (=> b!5498309 m!6507298))

(declare-fun m!6507300 () Bool)

(assert (=> b!5498310 m!6507300))

(declare-fun m!6507302 () Bool)

(assert (=> b!5498314 m!6507302))

(assert (=> b!5498314 m!6507302))

(declare-fun m!6507304 () Bool)

(assert (=> b!5498314 m!6507304))

(declare-fun m!6507306 () Bool)

(assert (=> b!5498311 m!6507306))

(assert (=> b!5497631 d!1743080))

(declare-fun b!5498317 () Bool)

(declare-fun res!2344003 () Bool)

(declare-fun e!3401266 () Bool)

(assert (=> b!5498317 (=> res!2344003 e!3401266)))

(declare-fun e!3401264 () Bool)

(assert (=> b!5498317 (= res!2344003 e!3401264)))

(declare-fun res!2343996 () Bool)

(assert (=> b!5498317 (=> (not res!2343996) (not e!3401264))))

(declare-fun lt!2243026 () Bool)

(assert (=> b!5498317 (= res!2343996 lt!2243026)))

(declare-fun b!5498318 () Bool)

(declare-fun e!3401262 () Bool)

(assert (=> b!5498318 (= e!3401262 (not (= (head!11775 (tail!10870 s!2326)) (c!959839 (derivativeStep!4351 r!7292 (head!11775 s!2326))))))))

(declare-fun b!5498319 () Bool)

(declare-fun e!3401261 () Bool)

(assert (=> b!5498319 (= e!3401261 (matchR!7654 (derivativeStep!4351 (derivativeStep!4351 r!7292 (head!11775 s!2326)) (head!11775 (tail!10870 s!2326))) (tail!10870 (tail!10870 s!2326))))))

(declare-fun b!5498320 () Bool)

(declare-fun e!3401265 () Bool)

(declare-fun call!405673 () Bool)

(assert (=> b!5498320 (= e!3401265 (= lt!2243026 call!405673))))

(declare-fun b!5498321 () Bool)

(declare-fun res!2344001 () Bool)

(assert (=> b!5498321 (=> (not res!2344001) (not e!3401264))))

(assert (=> b!5498321 (= res!2344001 (not call!405673))))

(declare-fun bm!405668 () Bool)

(assert (=> bm!405668 (= call!405673 (isEmpty!34380 (tail!10870 s!2326)))))

(declare-fun b!5498322 () Bool)

(declare-fun res!2344002 () Bool)

(assert (=> b!5498322 (=> (not res!2344002) (not e!3401264))))

(assert (=> b!5498322 (= res!2344002 (isEmpty!34380 (tail!10870 (tail!10870 s!2326))))))

(declare-fun d!1743082 () Bool)

(assert (=> d!1743082 e!3401265))

(declare-fun c!960180 () Bool)

(assert (=> d!1743082 (= c!960180 ((_ is EmptyExpr!15469) (derivativeStep!4351 r!7292 (head!11775 s!2326))))))

(assert (=> d!1743082 (= lt!2243026 e!3401261)))

(declare-fun c!960181 () Bool)

(assert (=> d!1743082 (= c!960181 (isEmpty!34380 (tail!10870 s!2326)))))

(assert (=> d!1743082 (validRegex!7205 (derivativeStep!4351 r!7292 (head!11775 s!2326)))))

(assert (=> d!1743082 (= (matchR!7654 (derivativeStep!4351 r!7292 (head!11775 s!2326)) (tail!10870 s!2326)) lt!2243026)))

(declare-fun b!5498323 () Bool)

(declare-fun res!2343998 () Bool)

(assert (=> b!5498323 (=> res!2343998 e!3401266)))

(assert (=> b!5498323 (= res!2343998 (not ((_ is ElementMatch!15469) (derivativeStep!4351 r!7292 (head!11775 s!2326)))))))

(declare-fun e!3401260 () Bool)

(assert (=> b!5498323 (= e!3401260 e!3401266)))

(declare-fun b!5498324 () Bool)

(declare-fun e!3401263 () Bool)

(assert (=> b!5498324 (= e!3401263 e!3401262)))

(declare-fun res!2343999 () Bool)

(assert (=> b!5498324 (=> res!2343999 e!3401262)))

(assert (=> b!5498324 (= res!2343999 call!405673)))

(declare-fun b!5498325 () Bool)

(assert (=> b!5498325 (= e!3401266 e!3401263)))

(declare-fun res!2344000 () Bool)

(assert (=> b!5498325 (=> (not res!2344000) (not e!3401263))))

(assert (=> b!5498325 (= res!2344000 (not lt!2243026))))

(declare-fun b!5498326 () Bool)

(assert (=> b!5498326 (= e!3401264 (= (head!11775 (tail!10870 s!2326)) (c!959839 (derivativeStep!4351 r!7292 (head!11775 s!2326)))))))

(declare-fun b!5498327 () Bool)

(assert (=> b!5498327 (= e!3401261 (nullable!5512 (derivativeStep!4351 r!7292 (head!11775 s!2326))))))

(declare-fun b!5498328 () Bool)

(assert (=> b!5498328 (= e!3401260 (not lt!2243026))))

(declare-fun b!5498329 () Bool)

(assert (=> b!5498329 (= e!3401265 e!3401260)))

(declare-fun c!960182 () Bool)

(assert (=> b!5498329 (= c!960182 ((_ is EmptyLang!15469) (derivativeStep!4351 r!7292 (head!11775 s!2326))))))

(declare-fun b!5498330 () Bool)

(declare-fun res!2343997 () Bool)

(assert (=> b!5498330 (=> res!2343997 e!3401262)))

(assert (=> b!5498330 (= res!2343997 (not (isEmpty!34380 (tail!10870 (tail!10870 s!2326)))))))

(assert (= (and d!1743082 c!960181) b!5498327))

(assert (= (and d!1743082 (not c!960181)) b!5498319))

(assert (= (and d!1743082 c!960180) b!5498320))

(assert (= (and d!1743082 (not c!960180)) b!5498329))

(assert (= (and b!5498329 c!960182) b!5498328))

(assert (= (and b!5498329 (not c!960182)) b!5498323))

(assert (= (and b!5498323 (not res!2343998)) b!5498317))

(assert (= (and b!5498317 res!2343996) b!5498321))

(assert (= (and b!5498321 res!2344001) b!5498322))

(assert (= (and b!5498322 res!2344002) b!5498326))

(assert (= (and b!5498317 (not res!2344003)) b!5498325))

(assert (= (and b!5498325 res!2344000) b!5498324))

(assert (= (and b!5498324 (not res!2343999)) b!5498330))

(assert (= (and b!5498330 (not res!2343997)) b!5498318))

(assert (= (or b!5498320 b!5498321 b!5498324) bm!405668))

(assert (=> b!5498327 m!6506682))

(declare-fun m!6507308 () Bool)

(assert (=> b!5498327 m!6507308))

(assert (=> b!5498319 m!6506684))

(declare-fun m!6507310 () Bool)

(assert (=> b!5498319 m!6507310))

(assert (=> b!5498319 m!6506682))

(assert (=> b!5498319 m!6507310))

(declare-fun m!6507312 () Bool)

(assert (=> b!5498319 m!6507312))

(assert (=> b!5498319 m!6506684))

(declare-fun m!6507314 () Bool)

(assert (=> b!5498319 m!6507314))

(assert (=> b!5498319 m!6507312))

(assert (=> b!5498319 m!6507314))

(declare-fun m!6507316 () Bool)

(assert (=> b!5498319 m!6507316))

(assert (=> b!5498326 m!6506684))

(assert (=> b!5498326 m!6507310))

(assert (=> b!5498318 m!6506684))

(assert (=> b!5498318 m!6507310))

(assert (=> b!5498322 m!6506684))

(assert (=> b!5498322 m!6507314))

(assert (=> b!5498322 m!6507314))

(declare-fun m!6507318 () Bool)

(assert (=> b!5498322 m!6507318))

(assert (=> b!5498330 m!6506684))

(assert (=> b!5498330 m!6507314))

(assert (=> b!5498330 m!6507314))

(assert (=> b!5498330 m!6507318))

(assert (=> bm!405668 m!6506684))

(assert (=> bm!405668 m!6506688))

(assert (=> d!1743082 m!6506684))

(assert (=> d!1743082 m!6506688))

(assert (=> d!1743082 m!6506682))

(declare-fun m!6507320 () Bool)

(assert (=> d!1743082 m!6507320))

(assert (=> b!5497292 d!1743082))

(declare-fun b!5498351 () Bool)

(declare-fun e!3401279 () Regex!15469)

(declare-fun e!3401280 () Regex!15469)

(assert (=> b!5498351 (= e!3401279 e!3401280)))

(declare-fun c!960197 () Bool)

(assert (=> b!5498351 (= c!960197 ((_ is Star!15469) r!7292))))

(declare-fun b!5498352 () Bool)

(declare-fun c!960196 () Bool)

(assert (=> b!5498352 (= c!960196 (nullable!5512 (regOne!31450 r!7292)))))

(declare-fun e!3401277 () Regex!15469)

(assert (=> b!5498352 (= e!3401280 e!3401277)))

(declare-fun b!5498353 () Bool)

(declare-fun e!3401278 () Regex!15469)

(declare-fun e!3401281 () Regex!15469)

(assert (=> b!5498353 (= e!3401278 e!3401281)))

(declare-fun c!960195 () Bool)

(assert (=> b!5498353 (= c!960195 ((_ is ElementMatch!15469) r!7292))))

(declare-fun b!5498354 () Bool)

(declare-fun call!405685 () Regex!15469)

(declare-fun call!405684 () Regex!15469)

(assert (=> b!5498354 (= e!3401279 (Union!15469 call!405685 call!405684))))

(declare-fun bm!405678 () Bool)

(declare-fun call!405683 () Regex!15469)

(assert (=> bm!405678 (= call!405683 call!405684)))

(declare-fun call!405682 () Regex!15469)

(declare-fun b!5498355 () Bool)

(assert (=> b!5498355 (= e!3401277 (Union!15469 (Concat!24314 call!405685 (regTwo!31450 r!7292)) call!405682))))

(declare-fun b!5498356 () Bool)

(assert (=> b!5498356 (= e!3401281 (ite (= (head!11775 s!2326) (c!959839 r!7292)) EmptyExpr!15469 EmptyLang!15469))))

(declare-fun b!5498357 () Bool)

(declare-fun c!960194 () Bool)

(assert (=> b!5498357 (= c!960194 ((_ is Union!15469) r!7292))))

(assert (=> b!5498357 (= e!3401281 e!3401279)))

(declare-fun b!5498358 () Bool)

(assert (=> b!5498358 (= e!3401280 (Concat!24314 call!405683 r!7292))))

(declare-fun bm!405679 () Bool)

(assert (=> bm!405679 (= call!405684 (derivativeStep!4351 (ite c!960194 (regTwo!31451 r!7292) (ite c!960197 (reg!15798 r!7292) (ite c!960196 (regTwo!31450 r!7292) (regOne!31450 r!7292)))) (head!11775 s!2326)))))

(declare-fun b!5498359 () Bool)

(assert (=> b!5498359 (= e!3401277 (Union!15469 (Concat!24314 call!405682 (regTwo!31450 r!7292)) EmptyLang!15469))))

(declare-fun b!5498360 () Bool)

(assert (=> b!5498360 (= e!3401278 EmptyLang!15469)))

(declare-fun bm!405680 () Bool)

(assert (=> bm!405680 (= call!405682 call!405683)))

(declare-fun bm!405677 () Bool)

(assert (=> bm!405677 (= call!405685 (derivativeStep!4351 (ite c!960194 (regOne!31451 r!7292) (regOne!31450 r!7292)) (head!11775 s!2326)))))

(declare-fun d!1743084 () Bool)

(declare-fun lt!2243029 () Regex!15469)

(assert (=> d!1743084 (validRegex!7205 lt!2243029)))

(assert (=> d!1743084 (= lt!2243029 e!3401278)))

(declare-fun c!960193 () Bool)

(assert (=> d!1743084 (= c!960193 (or ((_ is EmptyExpr!15469) r!7292) ((_ is EmptyLang!15469) r!7292)))))

(assert (=> d!1743084 (validRegex!7205 r!7292)))

(assert (=> d!1743084 (= (derivativeStep!4351 r!7292 (head!11775 s!2326)) lt!2243029)))

(assert (= (and d!1743084 c!960193) b!5498360))

(assert (= (and d!1743084 (not c!960193)) b!5498353))

(assert (= (and b!5498353 c!960195) b!5498356))

(assert (= (and b!5498353 (not c!960195)) b!5498357))

(assert (= (and b!5498357 c!960194) b!5498354))

(assert (= (and b!5498357 (not c!960194)) b!5498351))

(assert (= (and b!5498351 c!960197) b!5498358))

(assert (= (and b!5498351 (not c!960197)) b!5498352))

(assert (= (and b!5498352 c!960196) b!5498355))

(assert (= (and b!5498352 (not c!960196)) b!5498359))

(assert (= (or b!5498355 b!5498359) bm!405680))

(assert (= (or b!5498358 bm!405680) bm!405678))

(assert (= (or b!5498354 bm!405678) bm!405679))

(assert (= (or b!5498354 b!5498355) bm!405677))

(assert (=> b!5498352 m!6506824))

(assert (=> bm!405679 m!6506680))

(declare-fun m!6507322 () Bool)

(assert (=> bm!405679 m!6507322))

(assert (=> bm!405677 m!6506680))

(declare-fun m!6507324 () Bool)

(assert (=> bm!405677 m!6507324))

(declare-fun m!6507326 () Bool)

(assert (=> d!1743084 m!6507326))

(assert (=> d!1743084 m!6506606))

(assert (=> b!5497292 d!1743084))

(assert (=> b!5497292 d!1743058))

(declare-fun d!1743086 () Bool)

(assert (=> d!1743086 (= (tail!10870 s!2326) (t!375941 s!2326))))

(assert (=> b!5497292 d!1743086))

(declare-fun b!5498361 () Bool)

(declare-fun e!3401288 () Bool)

(declare-fun call!405687 () Bool)

(assert (=> b!5498361 (= e!3401288 call!405687)))

(declare-fun b!5498362 () Bool)

(declare-fun e!3401283 () Bool)

(declare-fun call!405686 () Bool)

(assert (=> b!5498362 (= e!3401283 call!405686)))

(declare-fun b!5498363 () Bool)

(declare-fun e!3401284 () Bool)

(assert (=> b!5498363 (= e!3401284 call!405687)))

(declare-fun b!5498364 () Bool)

(declare-fun e!3401282 () Bool)

(declare-fun e!3401286 () Bool)

(assert (=> b!5498364 (= e!3401282 e!3401286)))

(declare-fun c!960198 () Bool)

(assert (=> b!5498364 (= c!960198 ((_ is Union!15469) lt!2243006))))

(declare-fun bm!405681 () Bool)

(declare-fun c!960199 () Bool)

(assert (=> bm!405681 (= call!405686 (validRegex!7205 (ite c!960199 (reg!15798 lt!2243006) (ite c!960198 (regOne!31451 lt!2243006) (regOne!31450 lt!2243006)))))))

(declare-fun bm!405682 () Bool)

(assert (=> bm!405682 (= call!405687 (validRegex!7205 (ite c!960198 (regTwo!31451 lt!2243006) (regTwo!31450 lt!2243006))))))

(declare-fun b!5498365 () Bool)

(assert (=> b!5498365 (= e!3401282 e!3401283)))

(declare-fun res!2344008 () Bool)

(assert (=> b!5498365 (= res!2344008 (not (nullable!5512 (reg!15798 lt!2243006))))))

(assert (=> b!5498365 (=> (not res!2344008) (not e!3401283))))

(declare-fun b!5498366 () Bool)

(declare-fun e!3401287 () Bool)

(assert (=> b!5498366 (= e!3401287 e!3401284)))

(declare-fun res!2344005 () Bool)

(assert (=> b!5498366 (=> (not res!2344005) (not e!3401284))))

(declare-fun call!405688 () Bool)

(assert (=> b!5498366 (= res!2344005 call!405688)))

(declare-fun bm!405683 () Bool)

(assert (=> bm!405683 (= call!405688 call!405686)))

(declare-fun b!5498367 () Bool)

(declare-fun res!2344006 () Bool)

(assert (=> b!5498367 (=> res!2344006 e!3401287)))

(assert (=> b!5498367 (= res!2344006 (not ((_ is Concat!24314) lt!2243006)))))

(assert (=> b!5498367 (= e!3401286 e!3401287)))

(declare-fun d!1743088 () Bool)

(declare-fun res!2344004 () Bool)

(declare-fun e!3401285 () Bool)

(assert (=> d!1743088 (=> res!2344004 e!3401285)))

(assert (=> d!1743088 (= res!2344004 ((_ is ElementMatch!15469) lt!2243006))))

(assert (=> d!1743088 (= (validRegex!7205 lt!2243006) e!3401285)))

(declare-fun b!5498368 () Bool)

(declare-fun res!2344007 () Bool)

(assert (=> b!5498368 (=> (not res!2344007) (not e!3401288))))

(assert (=> b!5498368 (= res!2344007 call!405688)))

(assert (=> b!5498368 (= e!3401286 e!3401288)))

(declare-fun b!5498369 () Bool)

(assert (=> b!5498369 (= e!3401285 e!3401282)))

(assert (=> b!5498369 (= c!960199 ((_ is Star!15469) lt!2243006))))

(assert (= (and d!1743088 (not res!2344004)) b!5498369))

(assert (= (and b!5498369 c!960199) b!5498365))

(assert (= (and b!5498369 (not c!960199)) b!5498364))

(assert (= (and b!5498365 res!2344008) b!5498362))

(assert (= (and b!5498364 c!960198) b!5498368))

(assert (= (and b!5498364 (not c!960198)) b!5498367))

(assert (= (and b!5498368 res!2344007) b!5498361))

(assert (= (and b!5498367 (not res!2344006)) b!5498366))

(assert (= (and b!5498366 res!2344005) b!5498363))

(assert (= (or b!5498361 b!5498363) bm!405682))

(assert (= (or b!5498368 b!5498366) bm!405683))

(assert (= (or b!5498362 bm!405683) bm!405681))

(declare-fun m!6507328 () Bool)

(assert (=> bm!405681 m!6507328))

(declare-fun m!6507330 () Bool)

(assert (=> bm!405682 m!6507330))

(declare-fun m!6507332 () Bool)

(assert (=> b!5498365 m!6507332))

(assert (=> d!1742868 d!1743088))

(declare-fun d!1743090 () Bool)

(declare-fun res!2344013 () Bool)

(declare-fun e!3401293 () Bool)

(assert (=> d!1743090 (=> res!2344013 e!3401293)))

(assert (=> d!1743090 (= res!2344013 ((_ is Nil!62582) (exprs!5353 (h!69031 zl!343))))))

(assert (=> d!1743090 (= (forall!14660 (exprs!5353 (h!69031 zl!343)) lambda!294349) e!3401293)))

(declare-fun b!5498374 () Bool)

(declare-fun e!3401294 () Bool)

(assert (=> b!5498374 (= e!3401293 e!3401294)))

(declare-fun res!2344014 () Bool)

(assert (=> b!5498374 (=> (not res!2344014) (not e!3401294))))

(declare-fun dynLambda!24462 (Int Regex!15469) Bool)

(assert (=> b!5498374 (= res!2344014 (dynLambda!24462 lambda!294349 (h!69030 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun b!5498375 () Bool)

(assert (=> b!5498375 (= e!3401294 (forall!14660 (t!375939 (exprs!5353 (h!69031 zl!343))) lambda!294349))))

(assert (= (and d!1743090 (not res!2344013)) b!5498374))

(assert (= (and b!5498374 res!2344014) b!5498375))

(declare-fun b_lambda!208547 () Bool)

(assert (=> (not b_lambda!208547) (not b!5498374)))

(declare-fun m!6507334 () Bool)

(assert (=> b!5498374 m!6507334))

(declare-fun m!6507336 () Bool)

(assert (=> b!5498375 m!6507336))

(assert (=> d!1742868 d!1743090))

(declare-fun d!1743092 () Bool)

(assert (=> d!1743092 (= (nullable!5512 (regOne!31450 (regTwo!31451 r!7292))) (nullableFct!1647 (regOne!31450 (regTwo!31451 r!7292))))))

(declare-fun bs!1268354 () Bool)

(assert (= bs!1268354 d!1743092))

(declare-fun m!6507338 () Bool)

(assert (=> bs!1268354 m!6507338))

(assert (=> b!5497741 d!1743092))

(assert (=> d!1742872 d!1742880))

(assert (=> d!1742872 d!1742878))

(declare-fun d!1743094 () Bool)

(assert (=> d!1743094 (= (matchR!7654 (regOne!31451 r!7292) s!2326) (matchRSpec!2572 (regOne!31451 r!7292) s!2326))))

(assert (=> d!1743094 true))

(declare-fun _$88!3722 () Unit!155398)

(assert (=> d!1743094 (= (choose!41781 (regOne!31451 r!7292) s!2326) _$88!3722)))

(declare-fun bs!1268355 () Bool)

(assert (= bs!1268355 d!1743094))

(assert (=> bs!1268355 m!6506582))

(assert (=> bs!1268355 m!6506578))

(assert (=> d!1742872 d!1743094))

(declare-fun b!5498376 () Bool)

(declare-fun e!3401301 () Bool)

(declare-fun call!405690 () Bool)

(assert (=> b!5498376 (= e!3401301 call!405690)))

(declare-fun b!5498377 () Bool)

(declare-fun e!3401296 () Bool)

(declare-fun call!405689 () Bool)

(assert (=> b!5498377 (= e!3401296 call!405689)))

(declare-fun b!5498378 () Bool)

(declare-fun e!3401297 () Bool)

(assert (=> b!5498378 (= e!3401297 call!405690)))

(declare-fun b!5498379 () Bool)

(declare-fun e!3401295 () Bool)

(declare-fun e!3401299 () Bool)

(assert (=> b!5498379 (= e!3401295 e!3401299)))

(declare-fun c!960200 () Bool)

(assert (=> b!5498379 (= c!960200 ((_ is Union!15469) (regOne!31451 r!7292)))))

(declare-fun c!960201 () Bool)

(declare-fun bm!405684 () Bool)

(assert (=> bm!405684 (= call!405689 (validRegex!7205 (ite c!960201 (reg!15798 (regOne!31451 r!7292)) (ite c!960200 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292))))))))

(declare-fun bm!405685 () Bool)

(assert (=> bm!405685 (= call!405690 (validRegex!7205 (ite c!960200 (regTwo!31451 (regOne!31451 r!7292)) (regTwo!31450 (regOne!31451 r!7292)))))))

(declare-fun b!5498380 () Bool)

(assert (=> b!5498380 (= e!3401295 e!3401296)))

(declare-fun res!2344019 () Bool)

(assert (=> b!5498380 (= res!2344019 (not (nullable!5512 (reg!15798 (regOne!31451 r!7292)))))))

(assert (=> b!5498380 (=> (not res!2344019) (not e!3401296))))

(declare-fun b!5498381 () Bool)

(declare-fun e!3401300 () Bool)

(assert (=> b!5498381 (= e!3401300 e!3401297)))

(declare-fun res!2344016 () Bool)

(assert (=> b!5498381 (=> (not res!2344016) (not e!3401297))))

(declare-fun call!405691 () Bool)

(assert (=> b!5498381 (= res!2344016 call!405691)))

(declare-fun bm!405686 () Bool)

(assert (=> bm!405686 (= call!405691 call!405689)))

(declare-fun b!5498382 () Bool)

(declare-fun res!2344017 () Bool)

(assert (=> b!5498382 (=> res!2344017 e!3401300)))

(assert (=> b!5498382 (= res!2344017 (not ((_ is Concat!24314) (regOne!31451 r!7292))))))

(assert (=> b!5498382 (= e!3401299 e!3401300)))

(declare-fun d!1743096 () Bool)

(declare-fun res!2344015 () Bool)

(declare-fun e!3401298 () Bool)

(assert (=> d!1743096 (=> res!2344015 e!3401298)))

(assert (=> d!1743096 (= res!2344015 ((_ is ElementMatch!15469) (regOne!31451 r!7292)))))

(assert (=> d!1743096 (= (validRegex!7205 (regOne!31451 r!7292)) e!3401298)))

(declare-fun b!5498383 () Bool)

(declare-fun res!2344018 () Bool)

(assert (=> b!5498383 (=> (not res!2344018) (not e!3401301))))

(assert (=> b!5498383 (= res!2344018 call!405691)))

(assert (=> b!5498383 (= e!3401299 e!3401301)))

(declare-fun b!5498384 () Bool)

(assert (=> b!5498384 (= e!3401298 e!3401295)))

(assert (=> b!5498384 (= c!960201 ((_ is Star!15469) (regOne!31451 r!7292)))))

(assert (= (and d!1743096 (not res!2344015)) b!5498384))

(assert (= (and b!5498384 c!960201) b!5498380))

(assert (= (and b!5498384 (not c!960201)) b!5498379))

(assert (= (and b!5498380 res!2344019) b!5498377))

(assert (= (and b!5498379 c!960200) b!5498383))

(assert (= (and b!5498379 (not c!960200)) b!5498382))

(assert (= (and b!5498383 res!2344018) b!5498376))

(assert (= (and b!5498382 (not res!2344017)) b!5498381))

(assert (= (and b!5498381 res!2344016) b!5498378))

(assert (= (or b!5498376 b!5498378) bm!405685))

(assert (= (or b!5498383 b!5498381) bm!405686))

(assert (= (or b!5498377 bm!405686) bm!405684))

(declare-fun m!6507340 () Bool)

(assert (=> bm!405684 m!6507340))

(declare-fun m!6507342 () Bool)

(assert (=> bm!405685 m!6507342))

(declare-fun m!6507344 () Bool)

(assert (=> b!5498380 m!6507344))

(assert (=> d!1742872 d!1743096))

(declare-fun bs!1268356 () Bool)

(declare-fun d!1743098 () Bool)

(assert (= bs!1268356 (and d!1743098 d!1742866)))

(declare-fun lambda!294372 () Int)

(assert (=> bs!1268356 (= lambda!294372 lambda!294346)))

(declare-fun bs!1268357 () Bool)

(assert (= bs!1268357 (and d!1743098 d!1742868)))

(assert (=> bs!1268357 (= lambda!294372 lambda!294349)))

(declare-fun bs!1268358 () Bool)

(assert (= bs!1268358 (and d!1743098 d!1742848)))

(assert (=> bs!1268358 (= lambda!294372 lambda!294339)))

(declare-fun bs!1268359 () Bool)

(assert (= bs!1268359 (and d!1743098 d!1742782)))

(assert (=> bs!1268359 (= lambda!294372 lambda!294304)))

(declare-fun bs!1268360 () Bool)

(assert (= bs!1268360 (and d!1743098 d!1743080)))

(assert (=> bs!1268360 (= lambda!294372 lambda!294371)))

(declare-fun bs!1268361 () Bool)

(assert (= bs!1268361 (and d!1743098 d!1742864)))

(assert (=> bs!1268361 (= lambda!294372 lambda!294343)))

(assert (=> d!1743098 (= (inv!81919 (h!69031 (t!375940 zl!343))) (forall!14660 (exprs!5353 (h!69031 (t!375940 zl!343))) lambda!294372))))

(declare-fun bs!1268362 () Bool)

(assert (= bs!1268362 d!1743098))

(declare-fun m!6507346 () Bool)

(assert (=> bs!1268362 m!6507346))

(assert (=> b!5497755 d!1743098))

(declare-fun b!5498385 () Bool)

(declare-fun e!3401304 () (InoxSet Context!9706))

(declare-fun e!3401303 () (InoxSet Context!9706))

(assert (=> b!5498385 (= e!3401304 e!3401303)))

(declare-fun c!960203 () Bool)

(assert (=> b!5498385 (= c!960203 ((_ is Cons!62582) (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343)))))))))

(declare-fun d!1743100 () Bool)

(declare-fun c!960202 () Bool)

(declare-fun e!3401302 () Bool)

(assert (=> d!1743100 (= c!960202 e!3401302)))

(declare-fun res!2344020 () Bool)

(assert (=> d!1743100 (=> (not res!2344020) (not e!3401302))))

(assert (=> d!1743100 (= res!2344020 ((_ is Cons!62582) (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343)))))))))

(assert (=> d!1743100 (= (derivationStepZipperUp!741 (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343)))) (h!69032 s!2326)) e!3401304)))

(declare-fun b!5498386 () Bool)

(declare-fun call!405692 () (InoxSet Context!9706))

(assert (=> b!5498386 (= e!3401303 call!405692)))

(declare-fun b!5498387 () Bool)

(assert (=> b!5498387 (= e!3401303 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498388 () Bool)

(assert (=> b!5498388 (= e!3401304 ((_ map or) call!405692 (derivationStepZipperUp!741 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343))))))) (h!69032 s!2326))))))

(declare-fun bm!405687 () Bool)

(assert (=> bm!405687 (= call!405692 (derivationStepZipperDown!815 (h!69030 (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343)))))) (Context!9707 (t!375939 (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343))))))) (h!69032 s!2326)))))

(declare-fun b!5498389 () Bool)

(assert (=> b!5498389 (= e!3401302 (nullable!5512 (h!69030 (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343))))))))))

(assert (= (and d!1743100 res!2344020) b!5498389))

(assert (= (and d!1743100 c!960202) b!5498388))

(assert (= (and d!1743100 (not c!960202)) b!5498385))

(assert (= (and b!5498385 c!960203) b!5498386))

(assert (= (and b!5498385 (not c!960203)) b!5498387))

(assert (= (or b!5498388 b!5498386) bm!405687))

(declare-fun m!6507348 () Bool)

(assert (=> b!5498388 m!6507348))

(declare-fun m!6507350 () Bool)

(assert (=> bm!405687 m!6507350))

(declare-fun m!6507352 () Bool)

(assert (=> b!5498389 m!6507352))

(assert (=> b!5497410 d!1743100))

(declare-fun d!1743102 () Bool)

(assert (=> d!1743102 (= (isEmpty!34381 (tail!10871 (unfocusZipperList!897 zl!343))) ((_ is Nil!62582) (tail!10871 (unfocusZipperList!897 zl!343))))))

(assert (=> b!5497635 d!1743102))

(declare-fun d!1743104 () Bool)

(assert (=> d!1743104 (= (tail!10871 (unfocusZipperList!897 zl!343)) (t!375939 (unfocusZipperList!897 zl!343)))))

(assert (=> b!5497635 d!1743104))

(assert (=> bm!405546 d!1743052))

(declare-fun d!1743106 () Bool)

(declare-fun choose!41789 (Int) Bool)

(assert (=> d!1743106 (= (Exists!2577 (ite c!960023 lambda!294350 lambda!294351)) (choose!41789 (ite c!960023 lambda!294350 lambda!294351)))))

(declare-fun bs!1268363 () Bool)

(assert (= bs!1268363 d!1743106))

(declare-fun m!6507354 () Bool)

(assert (=> bs!1268363 m!6507354))

(assert (=> bm!405541 d!1743106))

(declare-fun b!5498390 () Bool)

(declare-fun e!3401310 () (InoxSet Context!9706))

(declare-fun e!3401306 () (InoxSet Context!9706))

(assert (=> b!5498390 (= e!3401310 e!3401306)))

(declare-fun c!960208 () Bool)

(assert (=> b!5498390 (= c!960208 ((_ is Concat!24314) (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))))))

(declare-fun call!405693 () (InoxSet Context!9706))

(declare-fun bm!405688 () Bool)

(declare-fun c!960204 () Bool)

(declare-fun call!405694 () List!62706)

(assert (=> bm!405688 (= call!405693 (derivationStepZipperDown!815 (ite c!960204 (regOne!31451 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (regOne!31450 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))))) (ite c!960204 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (Context!9707 call!405694)) (h!69032 s!2326)))))

(declare-fun b!5498391 () Bool)

(declare-fun e!3401307 () (InoxSet Context!9706))

(declare-fun call!405697 () (InoxSet Context!9706))

(assert (=> b!5498391 (= e!3401307 call!405697)))

(declare-fun b!5498392 () Bool)

(declare-fun call!405695 () (InoxSet Context!9706))

(assert (=> b!5498392 (= e!3401310 ((_ map or) call!405693 call!405695))))

(declare-fun call!405696 () (InoxSet Context!9706))

(declare-fun c!960205 () Bool)

(declare-fun call!405698 () List!62706)

(declare-fun bm!405689 () Bool)

(assert (=> bm!405689 (= call!405696 (derivationStepZipperDown!815 (ite c!960204 (regTwo!31451 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (ite c!960205 (regTwo!31450 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (ite c!960208 (regOne!31450 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (reg!15798 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))))))) (ite (or c!960204 c!960205) (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (Context!9707 call!405698)) (h!69032 s!2326)))))

(declare-fun b!5498393 () Bool)

(declare-fun e!3401305 () Bool)

(assert (=> b!5498393 (= e!3401305 (nullable!5512 (regOne!31450 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))))))))

(declare-fun d!1743108 () Bool)

(declare-fun c!960207 () Bool)

(assert (=> d!1743108 (= c!960207 (and ((_ is ElementMatch!15469) (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (= (c!959839 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (h!69032 s!2326))))))

(declare-fun e!3401308 () (InoxSet Context!9706))

(assert (=> d!1743108 (= (derivationStepZipperDown!815 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))) (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (h!69032 s!2326)) e!3401308)))

(declare-fun b!5498394 () Bool)

(assert (=> b!5498394 (= e!3401307 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498395 () Bool)

(declare-fun e!3401309 () (InoxSet Context!9706))

(assert (=> b!5498395 (= e!3401308 e!3401309)))

(assert (=> b!5498395 (= c!960204 ((_ is Union!15469) (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))))))

(declare-fun b!5498396 () Bool)

(assert (=> b!5498396 (= e!3401309 ((_ map or) call!405693 call!405696))))

(declare-fun bm!405690 () Bool)

(assert (=> bm!405690 (= call!405698 call!405694)))

(declare-fun bm!405691 () Bool)

(assert (=> bm!405691 (= call!405694 ($colon$colon!1566 (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))))) (ite (or c!960205 c!960208) (regTwo!31450 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))))))))

(declare-fun bm!405692 () Bool)

(assert (=> bm!405692 (= call!405695 call!405696)))

(declare-fun b!5498397 () Bool)

(assert (=> b!5498397 (= e!3401306 call!405697)))

(declare-fun b!5498398 () Bool)

(declare-fun c!960206 () Bool)

(assert (=> b!5498398 (= c!960206 ((_ is Star!15469) (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))))))

(assert (=> b!5498398 (= e!3401306 e!3401307)))

(declare-fun b!5498399 () Bool)

(assert (=> b!5498399 (= c!960205 e!3401305)))

(declare-fun res!2344021 () Bool)

(assert (=> b!5498399 (=> (not res!2344021) (not e!3401305))))

(assert (=> b!5498399 (= res!2344021 ((_ is Concat!24314) (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))))))

(assert (=> b!5498399 (= e!3401309 e!3401310)))

(declare-fun bm!405693 () Bool)

(assert (=> bm!405693 (= call!405697 call!405695)))

(declare-fun b!5498400 () Bool)

(assert (=> b!5498400 (= e!3401308 (store ((as const (Array Context!9706 Bool)) false) (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) true))))

(assert (= (and d!1743108 c!960207) b!5498400))

(assert (= (and d!1743108 (not c!960207)) b!5498395))

(assert (= (and b!5498395 c!960204) b!5498396))

(assert (= (and b!5498395 (not c!960204)) b!5498399))

(assert (= (and b!5498399 res!2344021) b!5498393))

(assert (= (and b!5498399 c!960205) b!5498392))

(assert (= (and b!5498399 (not c!960205)) b!5498390))

(assert (= (and b!5498390 c!960208) b!5498397))

(assert (= (and b!5498390 (not c!960208)) b!5498398))

(assert (= (and b!5498398 c!960206) b!5498391))

(assert (= (and b!5498398 (not c!960206)) b!5498394))

(assert (= (or b!5498397 b!5498391) bm!405690))

(assert (= (or b!5498397 b!5498391) bm!405693))

(assert (= (or b!5498392 bm!405690) bm!405691))

(assert (= (or b!5498392 bm!405693) bm!405692))

(assert (= (or b!5498396 bm!405692) bm!405689))

(assert (= (or b!5498396 b!5498392) bm!405688))

(declare-fun m!6507356 () Bool)

(assert (=> bm!405688 m!6507356))

(declare-fun m!6507358 () Bool)

(assert (=> b!5498393 m!6507358))

(declare-fun m!6507360 () Bool)

(assert (=> b!5498400 m!6507360))

(declare-fun m!6507362 () Bool)

(assert (=> bm!405691 m!6507362))

(declare-fun m!6507364 () Bool)

(assert (=> bm!405689 m!6507364))

(assert (=> bm!405540 d!1743108))

(declare-fun d!1743110 () Bool)

(assert (=> d!1743110 (= (nullable!5512 (h!69030 (exprs!5353 (h!69031 zl!343)))) (nullableFct!1647 (h!69030 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun bs!1268364 () Bool)

(assert (= bs!1268364 d!1743110))

(declare-fun m!6507366 () Bool)

(assert (=> bs!1268364 m!6507366))

(assert (=> b!5497411 d!1743110))

(declare-fun b!5498401 () Bool)

(declare-fun e!3401316 () (InoxSet Context!9706))

(declare-fun e!3401312 () (InoxSet Context!9706))

(assert (=> b!5498401 (= e!3401316 e!3401312)))

(declare-fun c!960213 () Bool)

(assert (=> b!5498401 (= c!960213 ((_ is Concat!24314) (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))))))

(declare-fun c!960209 () Bool)

(declare-fun call!405700 () List!62706)

(declare-fun call!405699 () (InoxSet Context!9706))

(declare-fun bm!405694 () Bool)

(assert (=> bm!405694 (= call!405699 (derivationStepZipperDown!815 (ite c!960209 (regOne!31451 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))) (regOne!31450 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292))))))) (ite c!960209 (ite (or c!960036 c!960037) lt!2242950 (Context!9707 call!405557)) (Context!9707 call!405700)) (h!69032 s!2326)))))

(declare-fun b!5498402 () Bool)

(declare-fun e!3401313 () (InoxSet Context!9706))

(declare-fun call!405703 () (InoxSet Context!9706))

(assert (=> b!5498402 (= e!3401313 call!405703)))

(declare-fun b!5498403 () Bool)

(declare-fun call!405701 () (InoxSet Context!9706))

(assert (=> b!5498403 (= e!3401316 ((_ map or) call!405699 call!405701))))

(declare-fun call!405702 () (InoxSet Context!9706))

(declare-fun call!405704 () List!62706)

(declare-fun bm!405695 () Bool)

(declare-fun c!960210 () Bool)

(assert (=> bm!405695 (= call!405702 (derivationStepZipperDown!815 (ite c!960209 (regTwo!31451 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))) (ite c!960210 (regTwo!31450 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))) (ite c!960213 (regOne!31450 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))) (reg!15798 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292))))))))) (ite (or c!960209 c!960210) (ite (or c!960036 c!960037) lt!2242950 (Context!9707 call!405557)) (Context!9707 call!405704)) (h!69032 s!2326)))))

(declare-fun e!3401311 () Bool)

(declare-fun b!5498404 () Bool)

(assert (=> b!5498404 (= e!3401311 (nullable!5512 (regOne!31450 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292))))))))))

(declare-fun d!1743112 () Bool)

(declare-fun c!960212 () Bool)

(assert (=> d!1743112 (= c!960212 (and ((_ is ElementMatch!15469) (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))) (= (c!959839 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))) (h!69032 s!2326))))))

(declare-fun e!3401314 () (InoxSet Context!9706))

(assert (=> d!1743112 (= (derivationStepZipperDown!815 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292))))) (ite (or c!960036 c!960037) lt!2242950 (Context!9707 call!405557)) (h!69032 s!2326)) e!3401314)))

(declare-fun b!5498405 () Bool)

(assert (=> b!5498405 (= e!3401313 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498406 () Bool)

(declare-fun e!3401315 () (InoxSet Context!9706))

(assert (=> b!5498406 (= e!3401314 e!3401315)))

(assert (=> b!5498406 (= c!960209 ((_ is Union!15469) (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))))))

(declare-fun b!5498407 () Bool)

(assert (=> b!5498407 (= e!3401315 ((_ map or) call!405699 call!405702))))

(declare-fun bm!405696 () Bool)

(assert (=> bm!405696 (= call!405704 call!405700)))

(declare-fun bm!405697 () Bool)

(assert (=> bm!405697 (= call!405700 ($colon$colon!1566 (exprs!5353 (ite (or c!960036 c!960037) lt!2242950 (Context!9707 call!405557))) (ite (or c!960210 c!960213) (regTwo!31450 (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))) (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292))))))))))

(declare-fun bm!405698 () Bool)

(assert (=> bm!405698 (= call!405701 call!405702)))

(declare-fun b!5498408 () Bool)

(assert (=> b!5498408 (= e!3401312 call!405703)))

(declare-fun c!960211 () Bool)

(declare-fun b!5498409 () Bool)

(assert (=> b!5498409 (= c!960211 ((_ is Star!15469) (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))))))

(assert (=> b!5498409 (= e!3401312 e!3401313)))

(declare-fun b!5498410 () Bool)

(assert (=> b!5498410 (= c!960210 e!3401311)))

(declare-fun res!2344022 () Bool)

(assert (=> b!5498410 (=> (not res!2344022) (not e!3401311))))

(assert (=> b!5498410 (= res!2344022 ((_ is Concat!24314) (ite c!960036 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960037 (regTwo!31450 (regOne!31451 r!7292)) (ite c!960040 (regOne!31450 (regOne!31451 r!7292)) (reg!15798 (regOne!31451 r!7292)))))))))

(assert (=> b!5498410 (= e!3401315 e!3401316)))

(declare-fun bm!405699 () Bool)

(assert (=> bm!405699 (= call!405703 call!405701)))

(declare-fun b!5498411 () Bool)

(assert (=> b!5498411 (= e!3401314 (store ((as const (Array Context!9706 Bool)) false) (ite (or c!960036 c!960037) lt!2242950 (Context!9707 call!405557)) true))))

(assert (= (and d!1743112 c!960212) b!5498411))

(assert (= (and d!1743112 (not c!960212)) b!5498406))

(assert (= (and b!5498406 c!960209) b!5498407))

(assert (= (and b!5498406 (not c!960209)) b!5498410))

(assert (= (and b!5498410 res!2344022) b!5498404))

(assert (= (and b!5498410 c!960210) b!5498403))

(assert (= (and b!5498410 (not c!960210)) b!5498401))

(assert (= (and b!5498401 c!960213) b!5498408))

(assert (= (and b!5498401 (not c!960213)) b!5498409))

(assert (= (and b!5498409 c!960211) b!5498402))

(assert (= (and b!5498409 (not c!960211)) b!5498405))

(assert (= (or b!5498408 b!5498402) bm!405696))

(assert (= (or b!5498408 b!5498402) bm!405699))

(assert (= (or b!5498403 bm!405696) bm!405697))

(assert (= (or b!5498403 bm!405699) bm!405698))

(assert (= (or b!5498407 bm!405698) bm!405695))

(assert (= (or b!5498407 b!5498403) bm!405694))

(declare-fun m!6507368 () Bool)

(assert (=> bm!405694 m!6507368))

(declare-fun m!6507370 () Bool)

(assert (=> b!5498404 m!6507370))

(declare-fun m!6507372 () Bool)

(assert (=> b!5498411 m!6507372))

(declare-fun m!6507374 () Bool)

(assert (=> bm!405697 m!6507374))

(declare-fun m!6507376 () Bool)

(assert (=> bm!405695 m!6507376))

(assert (=> bm!405548 d!1743112))

(declare-fun d!1743114 () Bool)

(assert (=> d!1743114 (= (isEmpty!34381 (unfocusZipperList!897 zl!343)) ((_ is Nil!62582) (unfocusZipperList!897 zl!343)))))

(assert (=> b!5497637 d!1743114))

(declare-fun d!1743116 () Bool)

(assert (=> d!1743116 (= (nullable!5512 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (nullableFct!1647 (h!69030 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))))))

(declare-fun bs!1268365 () Bool)

(assert (= bs!1268365 d!1743116))

(declare-fun m!6507378 () Bool)

(assert (=> bs!1268365 m!6507378))

(assert (=> b!5497607 d!1743116))

(assert (=> bm!405545 d!1743052))

(declare-fun b!5498412 () Bool)

(declare-fun res!2344030 () Bool)

(declare-fun e!3401323 () Bool)

(assert (=> b!5498412 (=> res!2344030 e!3401323)))

(declare-fun e!3401321 () Bool)

(assert (=> b!5498412 (= res!2344030 e!3401321)))

(declare-fun res!2344023 () Bool)

(assert (=> b!5498412 (=> (not res!2344023) (not e!3401321))))

(declare-fun lt!2243030 () Bool)

(assert (=> b!5498412 (= res!2344023 lt!2243030)))

(declare-fun b!5498413 () Bool)

(declare-fun e!3401319 () Bool)

(assert (=> b!5498413 (= e!3401319 (not (= (head!11775 (tail!10870 s!2326)) (c!959839 (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326))))))))

(declare-fun b!5498414 () Bool)

(declare-fun e!3401318 () Bool)

(assert (=> b!5498414 (= e!3401318 (matchR!7654 (derivativeStep!4351 (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326)) (head!11775 (tail!10870 s!2326))) (tail!10870 (tail!10870 s!2326))))))

(declare-fun b!5498415 () Bool)

(declare-fun e!3401322 () Bool)

(declare-fun call!405705 () Bool)

(assert (=> b!5498415 (= e!3401322 (= lt!2243030 call!405705))))

(declare-fun b!5498416 () Bool)

(declare-fun res!2344028 () Bool)

(assert (=> b!5498416 (=> (not res!2344028) (not e!3401321))))

(assert (=> b!5498416 (= res!2344028 (not call!405705))))

(declare-fun bm!405700 () Bool)

(assert (=> bm!405700 (= call!405705 (isEmpty!34380 (tail!10870 s!2326)))))

(declare-fun b!5498417 () Bool)

(declare-fun res!2344029 () Bool)

(assert (=> b!5498417 (=> (not res!2344029) (not e!3401321))))

(assert (=> b!5498417 (= res!2344029 (isEmpty!34380 (tail!10870 (tail!10870 s!2326))))))

(declare-fun d!1743118 () Bool)

(assert (=> d!1743118 e!3401322))

(declare-fun c!960214 () Bool)

(assert (=> d!1743118 (= c!960214 ((_ is EmptyExpr!15469) (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326))))))

(assert (=> d!1743118 (= lt!2243030 e!3401318)))

(declare-fun c!960215 () Bool)

(assert (=> d!1743118 (= c!960215 (isEmpty!34380 (tail!10870 s!2326)))))

(assert (=> d!1743118 (validRegex!7205 (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326)))))

(assert (=> d!1743118 (= (matchR!7654 (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326)) (tail!10870 s!2326)) lt!2243030)))

(declare-fun b!5498418 () Bool)

(declare-fun res!2344025 () Bool)

(assert (=> b!5498418 (=> res!2344025 e!3401323)))

(assert (=> b!5498418 (= res!2344025 (not ((_ is ElementMatch!15469) (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326)))))))

(declare-fun e!3401317 () Bool)

(assert (=> b!5498418 (= e!3401317 e!3401323)))

(declare-fun b!5498419 () Bool)

(declare-fun e!3401320 () Bool)

(assert (=> b!5498419 (= e!3401320 e!3401319)))

(declare-fun res!2344026 () Bool)

(assert (=> b!5498419 (=> res!2344026 e!3401319)))

(assert (=> b!5498419 (= res!2344026 call!405705)))

(declare-fun b!5498420 () Bool)

(assert (=> b!5498420 (= e!3401323 e!3401320)))

(declare-fun res!2344027 () Bool)

(assert (=> b!5498420 (=> (not res!2344027) (not e!3401320))))

(assert (=> b!5498420 (= res!2344027 (not lt!2243030))))

(declare-fun b!5498421 () Bool)

(assert (=> b!5498421 (= e!3401321 (= (head!11775 (tail!10870 s!2326)) (c!959839 (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326)))))))

(declare-fun b!5498422 () Bool)

(assert (=> b!5498422 (= e!3401318 (nullable!5512 (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326))))))

(declare-fun b!5498423 () Bool)

(assert (=> b!5498423 (= e!3401317 (not lt!2243030))))

(declare-fun b!5498424 () Bool)

(assert (=> b!5498424 (= e!3401322 e!3401317)))

(declare-fun c!960216 () Bool)

(assert (=> b!5498424 (= c!960216 ((_ is EmptyLang!15469) (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326))))))

(declare-fun b!5498425 () Bool)

(declare-fun res!2344024 () Bool)

(assert (=> b!5498425 (=> res!2344024 e!3401319)))

(assert (=> b!5498425 (= res!2344024 (not (isEmpty!34380 (tail!10870 (tail!10870 s!2326)))))))

(assert (= (and d!1743118 c!960215) b!5498422))

(assert (= (and d!1743118 (not c!960215)) b!5498414))

(assert (= (and d!1743118 c!960214) b!5498415))

(assert (= (and d!1743118 (not c!960214)) b!5498424))

(assert (= (and b!5498424 c!960216) b!5498423))

(assert (= (and b!5498424 (not c!960216)) b!5498418))

(assert (= (and b!5498418 (not res!2344025)) b!5498412))

(assert (= (and b!5498412 res!2344023) b!5498416))

(assert (= (and b!5498416 res!2344028) b!5498417))

(assert (= (and b!5498417 res!2344029) b!5498421))

(assert (= (and b!5498412 (not res!2344030)) b!5498420))

(assert (= (and b!5498420 res!2344027) b!5498419))

(assert (= (and b!5498419 (not res!2344026)) b!5498425))

(assert (= (and b!5498425 (not res!2344024)) b!5498413))

(assert (= (or b!5498415 b!5498416 b!5498419) bm!405700))

(assert (=> b!5498422 m!6506910))

(declare-fun m!6507380 () Bool)

(assert (=> b!5498422 m!6507380))

(assert (=> b!5498414 m!6506684))

(assert (=> b!5498414 m!6507310))

(assert (=> b!5498414 m!6506910))

(assert (=> b!5498414 m!6507310))

(declare-fun m!6507382 () Bool)

(assert (=> b!5498414 m!6507382))

(assert (=> b!5498414 m!6506684))

(assert (=> b!5498414 m!6507314))

(assert (=> b!5498414 m!6507382))

(assert (=> b!5498414 m!6507314))

(declare-fun m!6507384 () Bool)

(assert (=> b!5498414 m!6507384))

(assert (=> b!5498421 m!6506684))

(assert (=> b!5498421 m!6507310))

(assert (=> b!5498413 m!6506684))

(assert (=> b!5498413 m!6507310))

(assert (=> b!5498417 m!6506684))

(assert (=> b!5498417 m!6507314))

(assert (=> b!5498417 m!6507314))

(assert (=> b!5498417 m!6507318))

(assert (=> b!5498425 m!6506684))

(assert (=> b!5498425 m!6507314))

(assert (=> b!5498425 m!6507314))

(assert (=> b!5498425 m!6507318))

(assert (=> bm!405700 m!6506684))

(assert (=> bm!405700 m!6506688))

(assert (=> d!1743118 m!6506684))

(assert (=> d!1743118 m!6506688))

(assert (=> d!1743118 m!6506910))

(declare-fun m!6507386 () Bool)

(assert (=> d!1743118 m!6507386))

(assert (=> b!5497712 d!1743118))

(declare-fun b!5498426 () Bool)

(declare-fun e!3401326 () Regex!15469)

(declare-fun e!3401327 () Regex!15469)

(assert (=> b!5498426 (= e!3401326 e!3401327)))

(declare-fun c!960221 () Bool)

(assert (=> b!5498426 (= c!960221 ((_ is Star!15469) (regOne!31451 r!7292)))))

(declare-fun b!5498427 () Bool)

(declare-fun c!960220 () Bool)

(assert (=> b!5498427 (= c!960220 (nullable!5512 (regOne!31450 (regOne!31451 r!7292))))))

(declare-fun e!3401324 () Regex!15469)

(assert (=> b!5498427 (= e!3401327 e!3401324)))

(declare-fun b!5498428 () Bool)

(declare-fun e!3401325 () Regex!15469)

(declare-fun e!3401328 () Regex!15469)

(assert (=> b!5498428 (= e!3401325 e!3401328)))

(declare-fun c!960219 () Bool)

(assert (=> b!5498428 (= c!960219 ((_ is ElementMatch!15469) (regOne!31451 r!7292)))))

(declare-fun b!5498429 () Bool)

(declare-fun call!405709 () Regex!15469)

(declare-fun call!405708 () Regex!15469)

(assert (=> b!5498429 (= e!3401326 (Union!15469 call!405709 call!405708))))

(declare-fun bm!405702 () Bool)

(declare-fun call!405707 () Regex!15469)

(assert (=> bm!405702 (= call!405707 call!405708)))

(declare-fun b!5498430 () Bool)

(declare-fun call!405706 () Regex!15469)

(assert (=> b!5498430 (= e!3401324 (Union!15469 (Concat!24314 call!405709 (regTwo!31450 (regOne!31451 r!7292))) call!405706))))

(declare-fun b!5498431 () Bool)

(assert (=> b!5498431 (= e!3401328 (ite (= (head!11775 s!2326) (c!959839 (regOne!31451 r!7292))) EmptyExpr!15469 EmptyLang!15469))))

(declare-fun b!5498432 () Bool)

(declare-fun c!960218 () Bool)

(assert (=> b!5498432 (= c!960218 ((_ is Union!15469) (regOne!31451 r!7292)))))

(assert (=> b!5498432 (= e!3401328 e!3401326)))

(declare-fun b!5498433 () Bool)

(assert (=> b!5498433 (= e!3401327 (Concat!24314 call!405707 (regOne!31451 r!7292)))))

(declare-fun bm!405703 () Bool)

(assert (=> bm!405703 (= call!405708 (derivativeStep!4351 (ite c!960218 (regTwo!31451 (regOne!31451 r!7292)) (ite c!960221 (reg!15798 (regOne!31451 r!7292)) (ite c!960220 (regTwo!31450 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292))))) (head!11775 s!2326)))))

(declare-fun b!5498434 () Bool)

(assert (=> b!5498434 (= e!3401324 (Union!15469 (Concat!24314 call!405706 (regTwo!31450 (regOne!31451 r!7292))) EmptyLang!15469))))

(declare-fun b!5498435 () Bool)

(assert (=> b!5498435 (= e!3401325 EmptyLang!15469)))

(declare-fun bm!405704 () Bool)

(assert (=> bm!405704 (= call!405706 call!405707)))

(declare-fun bm!405701 () Bool)

(assert (=> bm!405701 (= call!405709 (derivativeStep!4351 (ite c!960218 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292))) (head!11775 s!2326)))))

(declare-fun d!1743120 () Bool)

(declare-fun lt!2243031 () Regex!15469)

(assert (=> d!1743120 (validRegex!7205 lt!2243031)))

(assert (=> d!1743120 (= lt!2243031 e!3401325)))

(declare-fun c!960217 () Bool)

(assert (=> d!1743120 (= c!960217 (or ((_ is EmptyExpr!15469) (regOne!31451 r!7292)) ((_ is EmptyLang!15469) (regOne!31451 r!7292))))))

(assert (=> d!1743120 (validRegex!7205 (regOne!31451 r!7292))))

(assert (=> d!1743120 (= (derivativeStep!4351 (regOne!31451 r!7292) (head!11775 s!2326)) lt!2243031)))

(assert (= (and d!1743120 c!960217) b!5498435))

(assert (= (and d!1743120 (not c!960217)) b!5498428))

(assert (= (and b!5498428 c!960219) b!5498431))

(assert (= (and b!5498428 (not c!960219)) b!5498432))

(assert (= (and b!5498432 c!960218) b!5498429))

(assert (= (and b!5498432 (not c!960218)) b!5498426))

(assert (= (and b!5498426 c!960221) b!5498433))

(assert (= (and b!5498426 (not c!960221)) b!5498427))

(assert (= (and b!5498427 c!960220) b!5498430))

(assert (= (and b!5498427 (not c!960220)) b!5498434))

(assert (= (or b!5498430 b!5498434) bm!405704))

(assert (= (or b!5498433 bm!405704) bm!405702))

(assert (= (or b!5498429 bm!405702) bm!405703))

(assert (= (or b!5498429 b!5498430) bm!405701))

(assert (=> b!5498427 m!6506922))

(assert (=> bm!405703 m!6506680))

(declare-fun m!6507388 () Bool)

(assert (=> bm!405703 m!6507388))

(assert (=> bm!405701 m!6506680))

(declare-fun m!6507390 () Bool)

(assert (=> bm!405701 m!6507390))

(declare-fun m!6507392 () Bool)

(assert (=> d!1743120 m!6507392))

(assert (=> d!1743120 m!6506890))

(assert (=> b!5497712 d!1743120))

(assert (=> b!5497712 d!1743058))

(assert (=> b!5497712 d!1743086))

(declare-fun b!5498436 () Bool)

(declare-fun e!3401334 () (InoxSet Context!9706))

(declare-fun e!3401330 () (InoxSet Context!9706))

(assert (=> b!5498436 (= e!3401334 e!3401330)))

(declare-fun c!960226 () Bool)

(assert (=> b!5498436 (= c!960226 ((_ is Concat!24314) (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))))))

(declare-fun bm!405705 () Bool)

(declare-fun call!405710 () (InoxSet Context!9706))

(declare-fun call!405711 () List!62706)

(declare-fun c!960222 () Bool)

(assert (=> bm!405705 (= call!405710 (derivationStepZipperDown!815 (ite c!960222 (regOne!31451 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))) (regOne!31450 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292))))) (ite c!960222 (ite c!960036 lt!2242950 (Context!9707 call!405553)) (Context!9707 call!405711)) (h!69032 s!2326)))))

(declare-fun b!5498437 () Bool)

(declare-fun e!3401331 () (InoxSet Context!9706))

(declare-fun call!405714 () (InoxSet Context!9706))

(assert (=> b!5498437 (= e!3401331 call!405714)))

(declare-fun b!5498438 () Bool)

(declare-fun call!405712 () (InoxSet Context!9706))

(assert (=> b!5498438 (= e!3401334 ((_ map or) call!405710 call!405712))))

(declare-fun call!405715 () List!62706)

(declare-fun call!405713 () (InoxSet Context!9706))

(declare-fun bm!405706 () Bool)

(declare-fun c!960223 () Bool)

(assert (=> bm!405706 (= call!405713 (derivationStepZipperDown!815 (ite c!960222 (regTwo!31451 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))) (ite c!960223 (regTwo!31450 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))) (ite c!960226 (regOne!31450 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))) (reg!15798 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292))))))) (ite (or c!960222 c!960223) (ite c!960036 lt!2242950 (Context!9707 call!405553)) (Context!9707 call!405715)) (h!69032 s!2326)))))

(declare-fun b!5498439 () Bool)

(declare-fun e!3401329 () Bool)

(assert (=> b!5498439 (= e!3401329 (nullable!5512 (regOne!31450 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292))))))))

(declare-fun d!1743122 () Bool)

(declare-fun c!960225 () Bool)

(assert (=> d!1743122 (= c!960225 (and ((_ is ElementMatch!15469) (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))) (= (c!959839 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))) (h!69032 s!2326))))))

(declare-fun e!3401332 () (InoxSet Context!9706))

(assert (=> d!1743122 (= (derivationStepZipperDown!815 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292))) (ite c!960036 lt!2242950 (Context!9707 call!405553)) (h!69032 s!2326)) e!3401332)))

(declare-fun b!5498440 () Bool)

(assert (=> b!5498440 (= e!3401331 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498441 () Bool)

(declare-fun e!3401333 () (InoxSet Context!9706))

(assert (=> b!5498441 (= e!3401332 e!3401333)))

(assert (=> b!5498441 (= c!960222 ((_ is Union!15469) (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))))))

(declare-fun b!5498442 () Bool)

(assert (=> b!5498442 (= e!3401333 ((_ map or) call!405710 call!405713))))

(declare-fun bm!405707 () Bool)

(assert (=> bm!405707 (= call!405715 call!405711)))

(declare-fun bm!405708 () Bool)

(assert (=> bm!405708 (= call!405711 ($colon$colon!1566 (exprs!5353 (ite c!960036 lt!2242950 (Context!9707 call!405553))) (ite (or c!960223 c!960226) (regTwo!31450 (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))) (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292))))))))

(declare-fun bm!405709 () Bool)

(assert (=> bm!405709 (= call!405712 call!405713)))

(declare-fun b!5498443 () Bool)

(assert (=> b!5498443 (= e!3401330 call!405714)))

(declare-fun b!5498444 () Bool)

(declare-fun c!960224 () Bool)

(assert (=> b!5498444 (= c!960224 ((_ is Star!15469) (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))))))

(assert (=> b!5498444 (= e!3401330 e!3401331)))

(declare-fun b!5498445 () Bool)

(assert (=> b!5498445 (= c!960223 e!3401329)))

(declare-fun res!2344031 () Bool)

(assert (=> b!5498445 (=> (not res!2344031) (not e!3401329))))

(assert (=> b!5498445 (= res!2344031 ((_ is Concat!24314) (ite c!960036 (regOne!31451 (regOne!31451 r!7292)) (regOne!31450 (regOne!31451 r!7292)))))))

(assert (=> b!5498445 (= e!3401333 e!3401334)))

(declare-fun bm!405710 () Bool)

(assert (=> bm!405710 (= call!405714 call!405712)))

(declare-fun b!5498446 () Bool)

(assert (=> b!5498446 (= e!3401332 (store ((as const (Array Context!9706 Bool)) false) (ite c!960036 lt!2242950 (Context!9707 call!405553)) true))))

(assert (= (and d!1743122 c!960225) b!5498446))

(assert (= (and d!1743122 (not c!960225)) b!5498441))

(assert (= (and b!5498441 c!960222) b!5498442))

(assert (= (and b!5498441 (not c!960222)) b!5498445))

(assert (= (and b!5498445 res!2344031) b!5498439))

(assert (= (and b!5498445 c!960223) b!5498438))

(assert (= (and b!5498445 (not c!960223)) b!5498436))

(assert (= (and b!5498436 c!960226) b!5498443))

(assert (= (and b!5498436 (not c!960226)) b!5498444))

(assert (= (and b!5498444 c!960224) b!5498437))

(assert (= (and b!5498444 (not c!960224)) b!5498440))

(assert (= (or b!5498443 b!5498437) bm!405707))

(assert (= (or b!5498443 b!5498437) bm!405710))

(assert (= (or b!5498438 bm!405707) bm!405708))

(assert (= (or b!5498438 bm!405710) bm!405709))

(assert (= (or b!5498442 bm!405709) bm!405706))

(assert (= (or b!5498442 b!5498438) bm!405705))

(declare-fun m!6507394 () Bool)

(assert (=> bm!405705 m!6507394))

(declare-fun m!6507396 () Bool)

(assert (=> b!5498439 m!6507396))

(declare-fun m!6507398 () Bool)

(assert (=> b!5498446 m!6507398))

(declare-fun m!6507400 () Bool)

(assert (=> bm!405708 m!6507400))

(declare-fun m!6507402 () Bool)

(assert (=> bm!405706 m!6507402))

(assert (=> bm!405547 d!1743122))

(declare-fun bs!1268366 () Bool)

(declare-fun d!1743124 () Bool)

(assert (= bs!1268366 (and d!1743124 d!1742866)))

(declare-fun lambda!294373 () Int)

(assert (=> bs!1268366 (= lambda!294373 lambda!294346)))

(declare-fun bs!1268367 () Bool)

(assert (= bs!1268367 (and d!1743124 d!1742868)))

(assert (=> bs!1268367 (= lambda!294373 lambda!294349)))

(declare-fun bs!1268368 () Bool)

(assert (= bs!1268368 (and d!1743124 d!1742848)))

(assert (=> bs!1268368 (= lambda!294373 lambda!294339)))

(declare-fun bs!1268369 () Bool)

(assert (= bs!1268369 (and d!1743124 d!1742782)))

(assert (=> bs!1268369 (= lambda!294373 lambda!294304)))

(declare-fun bs!1268370 () Bool)

(assert (= bs!1268370 (and d!1743124 d!1743080)))

(assert (=> bs!1268370 (= lambda!294373 lambda!294371)))

(declare-fun bs!1268371 () Bool)

(assert (= bs!1268371 (and d!1743124 d!1743098)))

(assert (=> bs!1268371 (= lambda!294373 lambda!294372)))

(declare-fun bs!1268372 () Bool)

(assert (= bs!1268372 (and d!1743124 d!1742864)))

(assert (=> bs!1268372 (= lambda!294373 lambda!294343)))

(declare-fun b!5498448 () Bool)

(declare-fun e!3401337 () Regex!15469)

(assert (=> b!5498448 (= e!3401337 (Concat!24314 (h!69030 (t!375939 (exprs!5353 (h!69031 zl!343)))) (generalisedConcat!1084 (t!375939 (t!375939 (exprs!5353 (h!69031 zl!343)))))))))

(declare-fun b!5498449 () Bool)

(declare-fun e!3401338 () Bool)

(declare-fun e!3401336 () Bool)

(assert (=> b!5498449 (= e!3401338 e!3401336)))

(declare-fun c!960230 () Bool)

(assert (=> b!5498449 (= c!960230 (isEmpty!34381 (tail!10871 (t!375939 (exprs!5353 (h!69031 zl!343))))))))

(declare-fun b!5498450 () Bool)

(declare-fun lt!2243032 () Regex!15469)

(assert (=> b!5498450 (= e!3401338 (isEmptyExpr!1058 lt!2243032))))

(declare-fun b!5498451 () Bool)

(declare-fun e!3401339 () Bool)

(assert (=> b!5498451 (= e!3401339 e!3401338)))

(declare-fun c!960227 () Bool)

(assert (=> b!5498451 (= c!960227 (isEmpty!34381 (t!375939 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun b!5498452 () Bool)

(declare-fun e!3401340 () Regex!15469)

(assert (=> b!5498452 (= e!3401340 (h!69030 (t!375939 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun b!5498453 () Bool)

(assert (=> b!5498453 (= e!3401337 EmptyExpr!15469)))

(declare-fun b!5498454 () Bool)

(declare-fun e!3401335 () Bool)

(assert (=> b!5498454 (= e!3401335 (isEmpty!34381 (t!375939 (t!375939 (exprs!5353 (h!69031 zl!343))))))))

(declare-fun b!5498447 () Bool)

(assert (=> b!5498447 (= e!3401336 (isConcat!581 lt!2243032))))

(assert (=> d!1743124 e!3401339))

(declare-fun res!2344033 () Bool)

(assert (=> d!1743124 (=> (not res!2344033) (not e!3401339))))

(assert (=> d!1743124 (= res!2344033 (validRegex!7205 lt!2243032))))

(assert (=> d!1743124 (= lt!2243032 e!3401340)))

(declare-fun c!960229 () Bool)

(assert (=> d!1743124 (= c!960229 e!3401335)))

(declare-fun res!2344032 () Bool)

(assert (=> d!1743124 (=> (not res!2344032) (not e!3401335))))

(assert (=> d!1743124 (= res!2344032 ((_ is Cons!62582) (t!375939 (exprs!5353 (h!69031 zl!343)))))))

(assert (=> d!1743124 (forall!14660 (t!375939 (exprs!5353 (h!69031 zl!343))) lambda!294373)))

(assert (=> d!1743124 (= (generalisedConcat!1084 (t!375939 (exprs!5353 (h!69031 zl!343)))) lt!2243032)))

(declare-fun b!5498455 () Bool)

(assert (=> b!5498455 (= e!3401340 e!3401337)))

(declare-fun c!960228 () Bool)

(assert (=> b!5498455 (= c!960228 ((_ is Cons!62582) (t!375939 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun b!5498456 () Bool)

(assert (=> b!5498456 (= e!3401336 (= lt!2243032 (head!11776 (t!375939 (exprs!5353 (h!69031 zl!343))))))))

(assert (= (and d!1743124 res!2344032) b!5498454))

(assert (= (and d!1743124 c!960229) b!5498452))

(assert (= (and d!1743124 (not c!960229)) b!5498455))

(assert (= (and b!5498455 c!960228) b!5498448))

(assert (= (and b!5498455 (not c!960228)) b!5498453))

(assert (= (and d!1743124 res!2344033) b!5498451))

(assert (= (and b!5498451 c!960227) b!5498450))

(assert (= (and b!5498451 (not c!960227)) b!5498449))

(assert (= (and b!5498449 c!960230) b!5498456))

(assert (= (and b!5498449 (not c!960230)) b!5498447))

(declare-fun m!6507404 () Bool)

(assert (=> b!5498448 m!6507404))

(declare-fun m!6507406 () Bool)

(assert (=> b!5498447 m!6507406))

(declare-fun m!6507408 () Bool)

(assert (=> d!1743124 m!6507408))

(declare-fun m!6507410 () Bool)

(assert (=> d!1743124 m!6507410))

(assert (=> b!5498451 m!6506876))

(declare-fun m!6507412 () Bool)

(assert (=> b!5498456 m!6507412))

(declare-fun m!6507414 () Bool)

(assert (=> b!5498450 m!6507414))

(declare-fun m!6507416 () Bool)

(assert (=> b!5498454 m!6507416))

(declare-fun m!6507418 () Bool)

(assert (=> b!5498449 m!6507418))

(assert (=> b!5498449 m!6507418))

(declare-fun m!6507420 () Bool)

(assert (=> b!5498449 m!6507420))

(assert (=> b!5497665 d!1743124))

(declare-fun b!5498457 () Bool)

(declare-fun e!3401346 () (InoxSet Context!9706))

(declare-fun e!3401342 () (InoxSet Context!9706))

(assert (=> b!5498457 (= e!3401346 e!3401342)))

(declare-fun c!960235 () Bool)

(assert (=> b!5498457 (= c!960235 ((_ is Concat!24314) (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))))))

(declare-fun c!960231 () Bool)

(declare-fun call!405716 () (InoxSet Context!9706))

(declare-fun bm!405711 () Bool)

(declare-fun call!405717 () List!62706)

(assert (=> bm!405711 (= call!405716 (derivationStepZipperDown!815 (ite c!960231 (regOne!31451 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))) (regOne!31450 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292)))) (ite c!960231 (ite c!959988 lt!2242950 (Context!9707 call!405540)) (Context!9707 call!405717)) (h!69032 s!2326)))))

(declare-fun b!5498458 () Bool)

(declare-fun e!3401343 () (InoxSet Context!9706))

(declare-fun call!405720 () (InoxSet Context!9706))

(assert (=> b!5498458 (= e!3401343 call!405720)))

(declare-fun b!5498459 () Bool)

(declare-fun call!405718 () (InoxSet Context!9706))

(assert (=> b!5498459 (= e!3401346 ((_ map or) call!405716 call!405718))))

(declare-fun call!405721 () List!62706)

(declare-fun bm!405712 () Bool)

(declare-fun call!405719 () (InoxSet Context!9706))

(declare-fun c!960232 () Bool)

(assert (=> bm!405712 (= call!405719 (derivationStepZipperDown!815 (ite c!960231 (regTwo!31451 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))) (ite c!960232 (regTwo!31450 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))) (ite c!960235 (regOne!31450 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))) (reg!15798 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292)))))) (ite (or c!960231 c!960232) (ite c!959988 lt!2242950 (Context!9707 call!405540)) (Context!9707 call!405721)) (h!69032 s!2326)))))

(declare-fun b!5498460 () Bool)

(declare-fun e!3401341 () Bool)

(assert (=> b!5498460 (= e!3401341 (nullable!5512 (regOne!31450 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292)))))))

(declare-fun c!960234 () Bool)

(declare-fun d!1743126 () Bool)

(assert (=> d!1743126 (= c!960234 (and ((_ is ElementMatch!15469) (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))) (= (c!959839 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))) (h!69032 s!2326))))))

(declare-fun e!3401344 () (InoxSet Context!9706))

(assert (=> d!1743126 (= (derivationStepZipperDown!815 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292)) (ite c!959988 lt!2242950 (Context!9707 call!405540)) (h!69032 s!2326)) e!3401344)))

(declare-fun b!5498461 () Bool)

(assert (=> b!5498461 (= e!3401343 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498462 () Bool)

(declare-fun e!3401345 () (InoxSet Context!9706))

(assert (=> b!5498462 (= e!3401344 e!3401345)))

(assert (=> b!5498462 (= c!960231 ((_ is Union!15469) (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))))))

(declare-fun b!5498463 () Bool)

(assert (=> b!5498463 (= e!3401345 ((_ map or) call!405716 call!405719))))

(declare-fun bm!405713 () Bool)

(assert (=> bm!405713 (= call!405721 call!405717)))

(declare-fun bm!405714 () Bool)

(assert (=> bm!405714 (= call!405717 ($colon$colon!1566 (exprs!5353 (ite c!959988 lt!2242950 (Context!9707 call!405540))) (ite (or c!960232 c!960235) (regTwo!31450 (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))) (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292)))))))

(declare-fun bm!405715 () Bool)

(assert (=> bm!405715 (= call!405718 call!405719)))

(declare-fun b!5498464 () Bool)

(assert (=> b!5498464 (= e!3401342 call!405720)))

(declare-fun b!5498465 () Bool)

(declare-fun c!960233 () Bool)

(assert (=> b!5498465 (= c!960233 ((_ is Star!15469) (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))))))

(assert (=> b!5498465 (= e!3401342 e!3401343)))

(declare-fun b!5498466 () Bool)

(assert (=> b!5498466 (= c!960232 e!3401341)))

(declare-fun res!2344034 () Bool)

(assert (=> b!5498466 (=> (not res!2344034) (not e!3401341))))

(assert (=> b!5498466 (= res!2344034 ((_ is Concat!24314) (ite c!959988 (regOne!31451 r!7292) (regOne!31450 r!7292))))))

(assert (=> b!5498466 (= e!3401345 e!3401346)))

(declare-fun bm!405716 () Bool)

(assert (=> bm!405716 (= call!405720 call!405718)))

(declare-fun b!5498467 () Bool)

(assert (=> b!5498467 (= e!3401344 (store ((as const (Array Context!9706 Bool)) false) (ite c!959988 lt!2242950 (Context!9707 call!405540)) true))))

(assert (= (and d!1743126 c!960234) b!5498467))

(assert (= (and d!1743126 (not c!960234)) b!5498462))

(assert (= (and b!5498462 c!960231) b!5498463))

(assert (= (and b!5498462 (not c!960231)) b!5498466))

(assert (= (and b!5498466 res!2344034) b!5498460))

(assert (= (and b!5498466 c!960232) b!5498459))

(assert (= (and b!5498466 (not c!960232)) b!5498457))

(assert (= (and b!5498457 c!960235) b!5498464))

(assert (= (and b!5498457 (not c!960235)) b!5498465))

(assert (= (and b!5498465 c!960233) b!5498458))

(assert (= (and b!5498465 (not c!960233)) b!5498461))

(assert (= (or b!5498464 b!5498458) bm!405713))

(assert (= (or b!5498464 b!5498458) bm!405716))

(assert (= (or b!5498459 bm!405713) bm!405714))

(assert (= (or b!5498459 bm!405716) bm!405715))

(assert (= (or b!5498463 bm!405715) bm!405712))

(assert (= (or b!5498463 b!5498459) bm!405711))

(declare-fun m!6507422 () Bool)

(assert (=> bm!405711 m!6507422))

(declare-fun m!6507424 () Bool)

(assert (=> b!5498460 m!6507424))

(declare-fun m!6507426 () Bool)

(assert (=> b!5498467 m!6507426))

(declare-fun m!6507428 () Bool)

(assert (=> bm!405714 m!6507428))

(declare-fun m!6507430 () Bool)

(assert (=> bm!405712 m!6507430))

(assert (=> bm!405534 d!1743126))

(assert (=> d!1742880 d!1743052))

(assert (=> d!1742880 d!1743096))

(declare-fun d!1743128 () Bool)

(assert (=> d!1743128 (= (isEmptyExpr!1058 lt!2243006) ((_ is EmptyExpr!15469) lt!2243006))))

(assert (=> b!5497667 d!1743128))

(declare-fun d!1743130 () Bool)

(assert (=> d!1743130 (= (Exists!2577 (ite c!960030 lambda!294352 lambda!294353)) (choose!41789 (ite c!960030 lambda!294352 lambda!294353)))))

(declare-fun bs!1268373 () Bool)

(assert (= bs!1268373 d!1743130))

(declare-fun m!6507432 () Bool)

(assert (=> bs!1268373 m!6507432))

(assert (=> bm!405544 d!1743130))

(declare-fun d!1743132 () Bool)

(declare-fun res!2344035 () Bool)

(declare-fun e!3401347 () Bool)

(assert (=> d!1743132 (=> res!2344035 e!3401347)))

(assert (=> d!1743132 (= res!2344035 ((_ is Nil!62582) (exprs!5353 (h!69031 zl!343))))))

(assert (=> d!1743132 (= (forall!14660 (exprs!5353 (h!69031 zl!343)) lambda!294304) e!3401347)))

(declare-fun b!5498468 () Bool)

(declare-fun e!3401348 () Bool)

(assert (=> b!5498468 (= e!3401347 e!3401348)))

(declare-fun res!2344036 () Bool)

(assert (=> b!5498468 (=> (not res!2344036) (not e!3401348))))

(assert (=> b!5498468 (= res!2344036 (dynLambda!24462 lambda!294304 (h!69030 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun b!5498469 () Bool)

(assert (=> b!5498469 (= e!3401348 (forall!14660 (t!375939 (exprs!5353 (h!69031 zl!343))) lambda!294304))))

(assert (= (and d!1743132 (not res!2344035)) b!5498468))

(assert (= (and b!5498468 res!2344036) b!5498469))

(declare-fun b_lambda!208549 () Bool)

(assert (=> (not b_lambda!208549) (not b!5498468)))

(declare-fun m!6507434 () Bool)

(assert (=> b!5498468 m!6507434))

(declare-fun m!6507436 () Bool)

(assert (=> b!5498469 m!6507436))

(assert (=> d!1742782 d!1743132))

(assert (=> b!5497686 d!1743058))

(assert (=> d!1742876 d!1742874))

(assert (=> d!1742876 d!1742870))

(declare-fun d!1743134 () Bool)

(assert (=> d!1743134 (= (matchR!7654 (regTwo!31451 r!7292) s!2326) (matchRSpec!2572 (regTwo!31451 r!7292) s!2326))))

(assert (=> d!1743134 true))

(declare-fun _$88!3723 () Unit!155398)

(assert (=> d!1743134 (= (choose!41781 (regTwo!31451 r!7292) s!2326) _$88!3723)))

(declare-fun bs!1268374 () Bool)

(assert (= bs!1268374 d!1743134))

(assert (=> bs!1268374 m!6506576))

(assert (=> bs!1268374 m!6506572))

(assert (=> d!1742876 d!1743134))

(declare-fun b!5498470 () Bool)

(declare-fun e!3401355 () Bool)

(declare-fun call!405723 () Bool)

(assert (=> b!5498470 (= e!3401355 call!405723)))

(declare-fun b!5498471 () Bool)

(declare-fun e!3401350 () Bool)

(declare-fun call!405722 () Bool)

(assert (=> b!5498471 (= e!3401350 call!405722)))

(declare-fun b!5498472 () Bool)

(declare-fun e!3401351 () Bool)

(assert (=> b!5498472 (= e!3401351 call!405723)))

(declare-fun b!5498473 () Bool)

(declare-fun e!3401349 () Bool)

(declare-fun e!3401353 () Bool)

(assert (=> b!5498473 (= e!3401349 e!3401353)))

(declare-fun c!960236 () Bool)

(assert (=> b!5498473 (= c!960236 ((_ is Union!15469) (regTwo!31451 r!7292)))))

(declare-fun bm!405717 () Bool)

(declare-fun c!960237 () Bool)

(assert (=> bm!405717 (= call!405722 (validRegex!7205 (ite c!960237 (reg!15798 (regTwo!31451 r!7292)) (ite c!960236 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292))))))))

(declare-fun bm!405718 () Bool)

(assert (=> bm!405718 (= call!405723 (validRegex!7205 (ite c!960236 (regTwo!31451 (regTwo!31451 r!7292)) (regTwo!31450 (regTwo!31451 r!7292)))))))

(declare-fun b!5498474 () Bool)

(assert (=> b!5498474 (= e!3401349 e!3401350)))

(declare-fun res!2344041 () Bool)

(assert (=> b!5498474 (= res!2344041 (not (nullable!5512 (reg!15798 (regTwo!31451 r!7292)))))))

(assert (=> b!5498474 (=> (not res!2344041) (not e!3401350))))

(declare-fun b!5498475 () Bool)

(declare-fun e!3401354 () Bool)

(assert (=> b!5498475 (= e!3401354 e!3401351)))

(declare-fun res!2344038 () Bool)

(assert (=> b!5498475 (=> (not res!2344038) (not e!3401351))))

(declare-fun call!405724 () Bool)

(assert (=> b!5498475 (= res!2344038 call!405724)))

(declare-fun bm!405719 () Bool)

(assert (=> bm!405719 (= call!405724 call!405722)))

(declare-fun b!5498476 () Bool)

(declare-fun res!2344039 () Bool)

(assert (=> b!5498476 (=> res!2344039 e!3401354)))

(assert (=> b!5498476 (= res!2344039 (not ((_ is Concat!24314) (regTwo!31451 r!7292))))))

(assert (=> b!5498476 (= e!3401353 e!3401354)))

(declare-fun d!1743136 () Bool)

(declare-fun res!2344037 () Bool)

(declare-fun e!3401352 () Bool)

(assert (=> d!1743136 (=> res!2344037 e!3401352)))

(assert (=> d!1743136 (= res!2344037 ((_ is ElementMatch!15469) (regTwo!31451 r!7292)))))

(assert (=> d!1743136 (= (validRegex!7205 (regTwo!31451 r!7292)) e!3401352)))

(declare-fun b!5498477 () Bool)

(declare-fun res!2344040 () Bool)

(assert (=> b!5498477 (=> (not res!2344040) (not e!3401355))))

(assert (=> b!5498477 (= res!2344040 call!405724)))

(assert (=> b!5498477 (= e!3401353 e!3401355)))

(declare-fun b!5498478 () Bool)

(assert (=> b!5498478 (= e!3401352 e!3401349)))

(assert (=> b!5498478 (= c!960237 ((_ is Star!15469) (regTwo!31451 r!7292)))))

(assert (= (and d!1743136 (not res!2344037)) b!5498478))

(assert (= (and b!5498478 c!960237) b!5498474))

(assert (= (and b!5498478 (not c!960237)) b!5498473))

(assert (= (and b!5498474 res!2344041) b!5498471))

(assert (= (and b!5498473 c!960236) b!5498477))

(assert (= (and b!5498473 (not c!960236)) b!5498476))

(assert (= (and b!5498477 res!2344040) b!5498470))

(assert (= (and b!5498476 (not res!2344039)) b!5498475))

(assert (= (and b!5498475 res!2344038) b!5498472))

(assert (= (or b!5498470 b!5498472) bm!405718))

(assert (= (or b!5498477 b!5498475) bm!405719))

(assert (= (or b!5498471 bm!405719) bm!405717))

(declare-fun m!6507438 () Bool)

(assert (=> bm!405717 m!6507438))

(declare-fun m!6507440 () Bool)

(assert (=> bm!405718 m!6507440))

(declare-fun m!6507442 () Bool)

(assert (=> b!5498474 m!6507442))

(assert (=> d!1742876 d!1743136))

(declare-fun d!1743138 () Bool)

(assert (=> d!1743138 (= (nullable!5512 (regOne!31450 r!7292)) (nullableFct!1647 (regOne!31450 r!7292)))))

(declare-fun bs!1268375 () Bool)

(assert (= bs!1268375 d!1743138))

(declare-fun m!6507444 () Bool)

(assert (=> bs!1268375 m!6507444))

(assert (=> b!5497595 d!1743138))

(declare-fun b!5498479 () Bool)

(declare-fun e!3401362 () Bool)

(declare-fun call!405726 () Bool)

(assert (=> b!5498479 (= e!3401362 call!405726)))

(declare-fun b!5498480 () Bool)

(declare-fun e!3401357 () Bool)

(declare-fun call!405725 () Bool)

(assert (=> b!5498480 (= e!3401357 call!405725)))

(declare-fun b!5498481 () Bool)

(declare-fun e!3401358 () Bool)

(assert (=> b!5498481 (= e!3401358 call!405726)))

(declare-fun b!5498482 () Bool)

(declare-fun e!3401356 () Bool)

(declare-fun e!3401360 () Bool)

(assert (=> b!5498482 (= e!3401356 e!3401360)))

(declare-fun c!960238 () Bool)

(assert (=> b!5498482 (= c!960238 ((_ is Union!15469) lt!2243000))))

(declare-fun c!960239 () Bool)

(declare-fun bm!405720 () Bool)

(assert (=> bm!405720 (= call!405725 (validRegex!7205 (ite c!960239 (reg!15798 lt!2243000) (ite c!960238 (regOne!31451 lt!2243000) (regOne!31450 lt!2243000)))))))

(declare-fun bm!405721 () Bool)

(assert (=> bm!405721 (= call!405726 (validRegex!7205 (ite c!960238 (regTwo!31451 lt!2243000) (regTwo!31450 lt!2243000))))))

(declare-fun b!5498483 () Bool)

(assert (=> b!5498483 (= e!3401356 e!3401357)))

(declare-fun res!2344046 () Bool)

(assert (=> b!5498483 (= res!2344046 (not (nullable!5512 (reg!15798 lt!2243000))))))

(assert (=> b!5498483 (=> (not res!2344046) (not e!3401357))))

(declare-fun b!5498484 () Bool)

(declare-fun e!3401361 () Bool)

(assert (=> b!5498484 (= e!3401361 e!3401358)))

(declare-fun res!2344043 () Bool)

(assert (=> b!5498484 (=> (not res!2344043) (not e!3401358))))

(declare-fun call!405727 () Bool)

(assert (=> b!5498484 (= res!2344043 call!405727)))

(declare-fun bm!405722 () Bool)

(assert (=> bm!405722 (= call!405727 call!405725)))

(declare-fun b!5498485 () Bool)

(declare-fun res!2344044 () Bool)

(assert (=> b!5498485 (=> res!2344044 e!3401361)))

(assert (=> b!5498485 (= res!2344044 (not ((_ is Concat!24314) lt!2243000)))))

(assert (=> b!5498485 (= e!3401360 e!3401361)))

(declare-fun d!1743140 () Bool)

(declare-fun res!2344042 () Bool)

(declare-fun e!3401359 () Bool)

(assert (=> d!1743140 (=> res!2344042 e!3401359)))

(assert (=> d!1743140 (= res!2344042 ((_ is ElementMatch!15469) lt!2243000))))

(assert (=> d!1743140 (= (validRegex!7205 lt!2243000) e!3401359)))

(declare-fun b!5498486 () Bool)

(declare-fun res!2344045 () Bool)

(assert (=> b!5498486 (=> (not res!2344045) (not e!3401362))))

(assert (=> b!5498486 (= res!2344045 call!405727)))

(assert (=> b!5498486 (= e!3401360 e!3401362)))

(declare-fun b!5498487 () Bool)

(assert (=> b!5498487 (= e!3401359 e!3401356)))

(assert (=> b!5498487 (= c!960239 ((_ is Star!15469) lt!2243000))))

(assert (= (and d!1743140 (not res!2344042)) b!5498487))

(assert (= (and b!5498487 c!960239) b!5498483))

(assert (= (and b!5498487 (not c!960239)) b!5498482))

(assert (= (and b!5498483 res!2344046) b!5498480))

(assert (= (and b!5498482 c!960238) b!5498486))

(assert (= (and b!5498482 (not c!960238)) b!5498485))

(assert (= (and b!5498486 res!2344045) b!5498479))

(assert (= (and b!5498485 (not res!2344044)) b!5498484))

(assert (= (and b!5498484 res!2344043) b!5498481))

(assert (= (or b!5498479 b!5498481) bm!405721))

(assert (= (or b!5498486 b!5498484) bm!405722))

(assert (= (or b!5498480 bm!405722) bm!405720))

(declare-fun m!6507446 () Bool)

(assert (=> bm!405720 m!6507446))

(declare-fun m!6507448 () Bool)

(assert (=> bm!405721 m!6507448))

(declare-fun m!6507450 () Bool)

(assert (=> b!5498483 m!6507450))

(assert (=> d!1742864 d!1743140))

(declare-fun d!1743142 () Bool)

(declare-fun res!2344047 () Bool)

(declare-fun e!3401363 () Bool)

(assert (=> d!1743142 (=> res!2344047 e!3401363)))

(assert (=> d!1743142 (= res!2344047 ((_ is Nil!62582) (unfocusZipperList!897 zl!343)))))

(assert (=> d!1743142 (= (forall!14660 (unfocusZipperList!897 zl!343) lambda!294343) e!3401363)))

(declare-fun b!5498488 () Bool)

(declare-fun e!3401364 () Bool)

(assert (=> b!5498488 (= e!3401363 e!3401364)))

(declare-fun res!2344048 () Bool)

(assert (=> b!5498488 (=> (not res!2344048) (not e!3401364))))

(assert (=> b!5498488 (= res!2344048 (dynLambda!24462 lambda!294343 (h!69030 (unfocusZipperList!897 zl!343))))))

(declare-fun b!5498489 () Bool)

(assert (=> b!5498489 (= e!3401364 (forall!14660 (t!375939 (unfocusZipperList!897 zl!343)) lambda!294343))))

(assert (= (and d!1743142 (not res!2344047)) b!5498488))

(assert (= (and b!5498488 res!2344048) b!5498489))

(declare-fun b_lambda!208551 () Bool)

(assert (=> (not b_lambda!208551) (not b!5498488)))

(declare-fun m!6507452 () Bool)

(assert (=> b!5498488 m!6507452))

(declare-fun m!6507454 () Bool)

(assert (=> b!5498489 m!6507454))

(assert (=> d!1742864 d!1743142))

(assert (=> bs!1268180 d!1742820))

(declare-fun d!1743144 () Bool)

(assert (=> d!1743144 (= (isEmpty!34381 (t!375939 (exprs!5353 (h!69031 zl!343)))) ((_ is Nil!62582) (t!375939 (exprs!5353 (h!69031 zl!343)))))))

(assert (=> b!5497671 d!1743144))

(assert (=> d!1742810 d!1742796))

(assert (=> d!1742810 d!1742784))

(declare-fun d!1743146 () Bool)

(assert (=> d!1743146 (= (matchR!7654 r!7292 s!2326) (matchRSpec!2572 r!7292 s!2326))))

(assert (=> d!1743146 true))

(declare-fun _$88!3724 () Unit!155398)

(assert (=> d!1743146 (= (choose!41781 r!7292 s!2326) _$88!3724)))

(declare-fun bs!1268376 () Bool)

(assert (= bs!1268376 d!1743146))

(assert (=> bs!1268376 m!6506602))

(assert (=> bs!1268376 m!6506600))

(assert (=> d!1742810 d!1743146))

(assert (=> d!1742810 d!1742836))

(assert (=> bm!405543 d!1743052))

(declare-fun b!5498490 () Bool)

(declare-fun e!3401371 () Bool)

(declare-fun call!405729 () Bool)

(assert (=> b!5498490 (= e!3401371 call!405729)))

(declare-fun b!5498491 () Bool)

(declare-fun e!3401366 () Bool)

(declare-fun call!405728 () Bool)

(assert (=> b!5498491 (= e!3401366 call!405728)))

(declare-fun b!5498492 () Bool)

(declare-fun e!3401367 () Bool)

(assert (=> b!5498492 (= e!3401367 call!405729)))

(declare-fun b!5498493 () Bool)

(declare-fun e!3401365 () Bool)

(declare-fun e!3401369 () Bool)

(assert (=> b!5498493 (= e!3401365 e!3401369)))

(declare-fun c!960240 () Bool)

(assert (=> b!5498493 (= c!960240 ((_ is Union!15469) lt!2242977))))

(declare-fun bm!405723 () Bool)

(declare-fun c!960241 () Bool)

(assert (=> bm!405723 (= call!405728 (validRegex!7205 (ite c!960241 (reg!15798 lt!2242977) (ite c!960240 (regOne!31451 lt!2242977) (regOne!31450 lt!2242977)))))))

(declare-fun bm!405724 () Bool)

(assert (=> bm!405724 (= call!405729 (validRegex!7205 (ite c!960240 (regTwo!31451 lt!2242977) (regTwo!31450 lt!2242977))))))

(declare-fun b!5498494 () Bool)

(assert (=> b!5498494 (= e!3401365 e!3401366)))

(declare-fun res!2344053 () Bool)

(assert (=> b!5498494 (= res!2344053 (not (nullable!5512 (reg!15798 lt!2242977))))))

(assert (=> b!5498494 (=> (not res!2344053) (not e!3401366))))

(declare-fun b!5498495 () Bool)

(declare-fun e!3401370 () Bool)

(assert (=> b!5498495 (= e!3401370 e!3401367)))

(declare-fun res!2344050 () Bool)

(assert (=> b!5498495 (=> (not res!2344050) (not e!3401367))))

(declare-fun call!405730 () Bool)

(assert (=> b!5498495 (= res!2344050 call!405730)))

(declare-fun bm!405725 () Bool)

(assert (=> bm!405725 (= call!405730 call!405728)))

(declare-fun b!5498496 () Bool)

(declare-fun res!2344051 () Bool)

(assert (=> b!5498496 (=> res!2344051 e!3401370)))

(assert (=> b!5498496 (= res!2344051 (not ((_ is Concat!24314) lt!2242977)))))

(assert (=> b!5498496 (= e!3401369 e!3401370)))

(declare-fun d!1743148 () Bool)

(declare-fun res!2344049 () Bool)

(declare-fun e!3401368 () Bool)

(assert (=> d!1743148 (=> res!2344049 e!3401368)))

(assert (=> d!1743148 (= res!2344049 ((_ is ElementMatch!15469) lt!2242977))))

(assert (=> d!1743148 (= (validRegex!7205 lt!2242977) e!3401368)))

(declare-fun b!5498497 () Bool)

(declare-fun res!2344052 () Bool)

(assert (=> b!5498497 (=> (not res!2344052) (not e!3401371))))

(assert (=> b!5498497 (= res!2344052 call!405730)))

(assert (=> b!5498497 (= e!3401369 e!3401371)))

(declare-fun b!5498498 () Bool)

(assert (=> b!5498498 (= e!3401368 e!3401365)))

(assert (=> b!5498498 (= c!960241 ((_ is Star!15469) lt!2242977))))

(assert (= (and d!1743148 (not res!2344049)) b!5498498))

(assert (= (and b!5498498 c!960241) b!5498494))

(assert (= (and b!5498498 (not c!960241)) b!5498493))

(assert (= (and b!5498494 res!2344053) b!5498491))

(assert (= (and b!5498493 c!960240) b!5498497))

(assert (= (and b!5498493 (not c!960240)) b!5498496))

(assert (= (and b!5498497 res!2344052) b!5498490))

(assert (= (and b!5498496 (not res!2344051)) b!5498495))

(assert (= (and b!5498495 res!2344050) b!5498492))

(assert (= (or b!5498490 b!5498492) bm!405724))

(assert (= (or b!5498497 b!5498495) bm!405725))

(assert (= (or b!5498491 bm!405725) bm!405723))

(declare-fun m!6507456 () Bool)

(assert (=> bm!405723 m!6507456))

(declare-fun m!6507458 () Bool)

(assert (=> bm!405724 m!6507458))

(declare-fun m!6507460 () Bool)

(assert (=> b!5498494 m!6507460))

(assert (=> d!1742812 d!1743148))

(assert (=> d!1742812 d!1742864))

(assert (=> d!1742812 d!1742866))

(declare-fun d!1743150 () Bool)

(assert (=> d!1743150 (= (isEmpty!34380 (tail!10870 s!2326)) ((_ is Nil!62584) (tail!10870 s!2326)))))

(assert (=> b!5497723 d!1743150))

(assert (=> b!5497723 d!1743086))

(declare-fun d!1743152 () Bool)

(assert (=> d!1743152 (= ($colon$colon!1566 (exprs!5353 lt!2242950) (ite (or c!959989 c!959992) (regTwo!31450 r!7292) r!7292)) (Cons!62582 (ite (or c!959989 c!959992) (regTwo!31450 r!7292) r!7292) (exprs!5353 lt!2242950)))))

(assert (=> bm!405537 d!1743152))

(declare-fun d!1743154 () Bool)

(assert (=> d!1743154 (= (nullable!5512 r!7292) (nullableFct!1647 r!7292))))

(declare-fun bs!1268377 () Bool)

(assert (= bs!1268377 d!1743154))

(declare-fun m!6507462 () Bool)

(assert (=> bs!1268377 m!6507462))

(assert (=> b!5497301 d!1743154))

(declare-fun d!1743156 () Bool)

(assert (=> d!1743156 (= ($colon$colon!1566 (exprs!5353 lt!2242950) (ite (or c!960042 c!960045) (regTwo!31450 (regTwo!31451 r!7292)) (regTwo!31451 r!7292))) (Cons!62582 (ite (or c!960042 c!960045) (regTwo!31450 (regTwo!31451 r!7292)) (regTwo!31451 r!7292)) (exprs!5353 lt!2242950)))))

(assert (=> bm!405556 d!1743156))

(declare-fun bs!1268378 () Bool)

(declare-fun d!1743158 () Bool)

(assert (= bs!1268378 (and d!1743158 d!1742866)))

(declare-fun lambda!294374 () Int)

(assert (=> bs!1268378 (= lambda!294374 lambda!294346)))

(declare-fun bs!1268379 () Bool)

(assert (= bs!1268379 (and d!1743158 d!1742868)))

(assert (=> bs!1268379 (= lambda!294374 lambda!294349)))

(declare-fun bs!1268380 () Bool)

(assert (= bs!1268380 (and d!1743158 d!1742848)))

(assert (=> bs!1268380 (= lambda!294374 lambda!294339)))

(declare-fun bs!1268381 () Bool)

(assert (= bs!1268381 (and d!1743158 d!1742782)))

(assert (=> bs!1268381 (= lambda!294374 lambda!294304)))

(declare-fun bs!1268382 () Bool)

(assert (= bs!1268382 (and d!1743158 d!1743080)))

(assert (=> bs!1268382 (= lambda!294374 lambda!294371)))

(declare-fun bs!1268383 () Bool)

(assert (= bs!1268383 (and d!1743158 d!1743124)))

(assert (=> bs!1268383 (= lambda!294374 lambda!294373)))

(declare-fun bs!1268384 () Bool)

(assert (= bs!1268384 (and d!1743158 d!1743098)))

(assert (=> bs!1268384 (= lambda!294374 lambda!294372)))

(declare-fun bs!1268385 () Bool)

(assert (= bs!1268385 (and d!1743158 d!1742864)))

(assert (=> bs!1268385 (= lambda!294374 lambda!294343)))

(assert (=> d!1743158 (= (inv!81919 setElem!36417) (forall!14660 (exprs!5353 setElem!36417) lambda!294374))))

(declare-fun bs!1268386 () Bool)

(assert (= bs!1268386 d!1743158))

(declare-fun m!6507464 () Bool)

(assert (=> bs!1268386 m!6507464))

(assert (=> setNonEmpty!36417 d!1743158))

(assert (=> d!1742828 d!1742818))

(declare-fun d!1743160 () Bool)

(assert (=> d!1743160 (= (flatMap!1088 z!1189 lambda!294301) (dynLambda!24459 lambda!294301 (h!69031 zl!343)))))

(assert (=> d!1743160 true))

(declare-fun _$13!1998 () Unit!155398)

(assert (=> d!1743160 (= (choose!41783 z!1189 (h!69031 zl!343) lambda!294301) _$13!1998)))

(declare-fun b_lambda!208553 () Bool)

(assert (=> (not b_lambda!208553) (not d!1743160)))

(declare-fun bs!1268387 () Bool)

(assert (= bs!1268387 d!1743160))

(assert (=> bs!1268387 m!6506564))

(assert (=> bs!1268387 m!6506764))

(assert (=> d!1742828 d!1743160))

(declare-fun b!5498499 () Bool)

(declare-fun e!3401378 () Bool)

(declare-fun call!405732 () Bool)

(assert (=> b!5498499 (= e!3401378 call!405732)))

(declare-fun b!5498500 () Bool)

(declare-fun e!3401373 () Bool)

(declare-fun call!405731 () Bool)

(assert (=> b!5498500 (= e!3401373 call!405731)))

(declare-fun b!5498501 () Bool)

(declare-fun e!3401374 () Bool)

(assert (=> b!5498501 (= e!3401374 call!405732)))

(declare-fun b!5498502 () Bool)

(declare-fun e!3401372 () Bool)

(declare-fun e!3401376 () Bool)

(assert (=> b!5498502 (= e!3401372 e!3401376)))

(declare-fun c!960242 () Bool)

(assert (=> b!5498502 (= c!960242 ((_ is Union!15469) (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292))))))

(declare-fun c!960243 () Bool)

(declare-fun bm!405726 () Bool)

(assert (=> bm!405726 (= call!405731 (validRegex!7205 (ite c!960243 (reg!15798 (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292))) (ite c!960242 (regOne!31451 (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292))) (regOne!31450 (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292)))))))))

(declare-fun bm!405727 () Bool)

(assert (=> bm!405727 (= call!405732 (validRegex!7205 (ite c!960242 (regTwo!31451 (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292))) (regTwo!31450 (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292))))))))

(declare-fun b!5498503 () Bool)

(assert (=> b!5498503 (= e!3401372 e!3401373)))

(declare-fun res!2344058 () Bool)

(assert (=> b!5498503 (= res!2344058 (not (nullable!5512 (reg!15798 (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292))))))))

(assert (=> b!5498503 (=> (not res!2344058) (not e!3401373))))

(declare-fun b!5498504 () Bool)

(declare-fun e!3401377 () Bool)

(assert (=> b!5498504 (= e!3401377 e!3401374)))

(declare-fun res!2344055 () Bool)

(assert (=> b!5498504 (=> (not res!2344055) (not e!3401374))))

(declare-fun call!405733 () Bool)

(assert (=> b!5498504 (= res!2344055 call!405733)))

(declare-fun bm!405728 () Bool)

(assert (=> bm!405728 (= call!405733 call!405731)))

(declare-fun b!5498505 () Bool)

(declare-fun res!2344056 () Bool)

(assert (=> b!5498505 (=> res!2344056 e!3401377)))

(assert (=> b!5498505 (= res!2344056 (not ((_ is Concat!24314) (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292)))))))

(assert (=> b!5498505 (= e!3401376 e!3401377)))

(declare-fun d!1743162 () Bool)

(declare-fun res!2344054 () Bool)

(declare-fun e!3401375 () Bool)

(assert (=> d!1743162 (=> res!2344054 e!3401375)))

(assert (=> d!1743162 (= res!2344054 ((_ is ElementMatch!15469) (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292))))))

(assert (=> d!1743162 (= (validRegex!7205 (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292))) e!3401375)))

(declare-fun b!5498506 () Bool)

(declare-fun res!2344057 () Bool)

(assert (=> b!5498506 (=> (not res!2344057) (not e!3401378))))

(assert (=> b!5498506 (= res!2344057 call!405733)))

(assert (=> b!5498506 (= e!3401376 e!3401378)))

(declare-fun b!5498507 () Bool)

(assert (=> b!5498507 (= e!3401375 e!3401372)))

(assert (=> b!5498507 (= c!960243 ((_ is Star!15469) (ite c!959972 (regTwo!31451 r!7292) (regTwo!31450 r!7292))))))

(assert (= (and d!1743162 (not res!2344054)) b!5498507))

(assert (= (and b!5498507 c!960243) b!5498503))

(assert (= (and b!5498507 (not c!960243)) b!5498502))

(assert (= (and b!5498503 res!2344058) b!5498500))

(assert (= (and b!5498502 c!960242) b!5498506))

(assert (= (and b!5498502 (not c!960242)) b!5498505))

(assert (= (and b!5498506 res!2344057) b!5498499))

(assert (= (and b!5498505 (not res!2344056)) b!5498504))

(assert (= (and b!5498504 res!2344055) b!5498501))

(assert (= (or b!5498499 b!5498501) bm!405727))

(assert (= (or b!5498506 b!5498504) bm!405728))

(assert (= (or b!5498500 bm!405728) bm!405726))

(declare-fun m!6507466 () Bool)

(assert (=> bm!405726 m!6507466))

(declare-fun m!6507468 () Bool)

(assert (=> bm!405727 m!6507468))

(declare-fun m!6507470 () Bool)

(assert (=> b!5498503 m!6507470))

(assert (=> bm!405519 d!1743162))

(assert (=> b!5497694 d!1743058))

(declare-fun d!1743164 () Bool)

(assert (=> d!1743164 (= (head!11776 (unfocusZipperList!897 zl!343)) (h!69030 (unfocusZipperList!897 zl!343)))))

(assert (=> b!5497630 d!1743164))

(assert (=> b!5497719 d!1743058))

(declare-fun d!1743166 () Bool)

(assert (=> d!1743166 (= (Exists!2577 (ite c!959877 lambda!294316 lambda!294317)) (choose!41789 (ite c!959877 lambda!294316 lambda!294317)))))

(declare-fun bs!1268388 () Bool)

(assert (= bs!1268388 d!1743166))

(declare-fun m!6507472 () Bool)

(assert (=> bs!1268388 m!6507472))

(assert (=> bm!405471 d!1743166))

(declare-fun d!1743168 () Bool)

(assert (=> d!1743168 true))

(declare-fun setRes!36424 () Bool)

(assert (=> d!1743168 setRes!36424))

(declare-fun condSetEmpty!36424 () Bool)

(declare-fun res!2344061 () (InoxSet Context!9706))

(assert (=> d!1743168 (= condSetEmpty!36424 (= res!2344061 ((as const (Array Context!9706 Bool)) false)))))

(assert (=> d!1743168 (= (choose!41782 z!1189 lambda!294301) res!2344061)))

(declare-fun setIsEmpty!36424 () Bool)

(assert (=> setIsEmpty!36424 setRes!36424))

(declare-fun e!3401381 () Bool)

(declare-fun setNonEmpty!36424 () Bool)

(declare-fun setElem!36424 () Context!9706)

(declare-fun tp!1512848 () Bool)

(assert (=> setNonEmpty!36424 (= setRes!36424 (and tp!1512848 (inv!81919 setElem!36424) e!3401381))))

(declare-fun setRest!36424 () (InoxSet Context!9706))

(assert (=> setNonEmpty!36424 (= res!2344061 ((_ map or) (store ((as const (Array Context!9706 Bool)) false) setElem!36424 true) setRest!36424))))

(declare-fun b!5498510 () Bool)

(declare-fun tp!1512849 () Bool)

(assert (=> b!5498510 (= e!3401381 tp!1512849)))

(assert (= (and d!1743168 condSetEmpty!36424) setIsEmpty!36424))

(assert (= (and d!1743168 (not condSetEmpty!36424)) setNonEmpty!36424))

(assert (= setNonEmpty!36424 b!5498510))

(declare-fun m!6507474 () Bool)

(assert (=> setNonEmpty!36424 m!6507474))

(assert (=> d!1742818 d!1743168))

(declare-fun d!1743170 () Bool)

(assert (=> d!1743170 (= (isEmptyLang!1069 lt!2243000) ((_ is EmptyLang!15469) lt!2243000))))

(assert (=> b!5497632 d!1743170))

(declare-fun d!1743172 () Bool)

(declare-fun res!2344062 () Bool)

(declare-fun e!3401382 () Bool)

(assert (=> d!1743172 (=> res!2344062 e!3401382)))

(assert (=> d!1743172 (= res!2344062 ((_ is Nil!62582) (exprs!5353 setElem!36411)))))

(assert (=> d!1743172 (= (forall!14660 (exprs!5353 setElem!36411) lambda!294339) e!3401382)))

(declare-fun b!5498511 () Bool)

(declare-fun e!3401383 () Bool)

(assert (=> b!5498511 (= e!3401382 e!3401383)))

(declare-fun res!2344063 () Bool)

(assert (=> b!5498511 (=> (not res!2344063) (not e!3401383))))

(assert (=> b!5498511 (= res!2344063 (dynLambda!24462 lambda!294339 (h!69030 (exprs!5353 setElem!36411))))))

(declare-fun b!5498512 () Bool)

(assert (=> b!5498512 (= e!3401383 (forall!14660 (t!375939 (exprs!5353 setElem!36411)) lambda!294339))))

(assert (= (and d!1743172 (not res!2344062)) b!5498511))

(assert (= (and b!5498511 res!2344063) b!5498512))

(declare-fun b_lambda!208555 () Bool)

(assert (=> (not b_lambda!208555) (not b!5498511)))

(declare-fun m!6507476 () Bool)

(assert (=> b!5498511 m!6507476))

(declare-fun m!6507478 () Bool)

(assert (=> b!5498512 m!6507478))

(assert (=> d!1742848 d!1743172))

(assert (=> b!5497307 d!1743150))

(assert (=> b!5497307 d!1743086))

(assert (=> b!5497698 d!1743150))

(assert (=> b!5497698 d!1743086))

(declare-fun d!1743174 () Bool)

(assert (=> d!1743174 (= (isUnion!499 lt!2243000) ((_ is Union!15469) lt!2243000))))

(assert (=> b!5497634 d!1743174))

(declare-fun b!5498513 () Bool)

(declare-fun e!3401389 () (InoxSet Context!9706))

(declare-fun e!3401385 () (InoxSet Context!9706))

(assert (=> b!5498513 (= e!3401389 e!3401385)))

(declare-fun c!960248 () Bool)

(assert (=> b!5498513 (= c!960248 ((_ is Concat!24314) (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))))))

(declare-fun call!405735 () List!62706)

(declare-fun bm!405729 () Bool)

(declare-fun c!960244 () Bool)

(declare-fun call!405734 () (InoxSet Context!9706))

(assert (=> bm!405729 (= call!405734 (derivationStepZipperDown!815 (ite c!960244 (regOne!31451 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))) (regOne!31450 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292))))))) (ite c!960244 (ite (or c!960041 c!960042) lt!2242950 (Context!9707 call!405563)) (Context!9707 call!405735)) (h!69032 s!2326)))))

(declare-fun b!5498514 () Bool)

(declare-fun e!3401386 () (InoxSet Context!9706))

(declare-fun call!405738 () (InoxSet Context!9706))

(assert (=> b!5498514 (= e!3401386 call!405738)))

(declare-fun b!5498515 () Bool)

(declare-fun call!405736 () (InoxSet Context!9706))

(assert (=> b!5498515 (= e!3401389 ((_ map or) call!405734 call!405736))))

(declare-fun call!405737 () (InoxSet Context!9706))

(declare-fun bm!405730 () Bool)

(declare-fun c!960245 () Bool)

(declare-fun call!405739 () List!62706)

(assert (=> bm!405730 (= call!405737 (derivationStepZipperDown!815 (ite c!960244 (regTwo!31451 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))) (ite c!960245 (regTwo!31450 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))) (ite c!960248 (regOne!31450 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))) (reg!15798 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292))))))))) (ite (or c!960244 c!960245) (ite (or c!960041 c!960042) lt!2242950 (Context!9707 call!405563)) (Context!9707 call!405739)) (h!69032 s!2326)))))

(declare-fun e!3401384 () Bool)

(declare-fun b!5498516 () Bool)

(assert (=> b!5498516 (= e!3401384 (nullable!5512 (regOne!31450 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292))))))))))

(declare-fun c!960247 () Bool)

(declare-fun d!1743176 () Bool)

(assert (=> d!1743176 (= c!960247 (and ((_ is ElementMatch!15469) (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))) (= (c!959839 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))) (h!69032 s!2326))))))

(declare-fun e!3401387 () (InoxSet Context!9706))

(assert (=> d!1743176 (= (derivationStepZipperDown!815 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292))))) (ite (or c!960041 c!960042) lt!2242950 (Context!9707 call!405563)) (h!69032 s!2326)) e!3401387)))

(declare-fun b!5498517 () Bool)

(assert (=> b!5498517 (= e!3401386 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498518 () Bool)

(declare-fun e!3401388 () (InoxSet Context!9706))

(assert (=> b!5498518 (= e!3401387 e!3401388)))

(assert (=> b!5498518 (= c!960244 ((_ is Union!15469) (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))))))

(declare-fun b!5498519 () Bool)

(assert (=> b!5498519 (= e!3401388 ((_ map or) call!405734 call!405737))))

(declare-fun bm!405731 () Bool)

(assert (=> bm!405731 (= call!405739 call!405735)))

(declare-fun bm!405732 () Bool)

(assert (=> bm!405732 (= call!405735 ($colon$colon!1566 (exprs!5353 (ite (or c!960041 c!960042) lt!2242950 (Context!9707 call!405563))) (ite (or c!960245 c!960248) (regTwo!31450 (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))) (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292))))))))))

(declare-fun bm!405733 () Bool)

(assert (=> bm!405733 (= call!405736 call!405737)))

(declare-fun b!5498520 () Bool)

(assert (=> b!5498520 (= e!3401385 call!405738)))

(declare-fun c!960246 () Bool)

(declare-fun b!5498521 () Bool)

(assert (=> b!5498521 (= c!960246 ((_ is Star!15469) (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))))))

(assert (=> b!5498521 (= e!3401385 e!3401386)))

(declare-fun b!5498522 () Bool)

(assert (=> b!5498522 (= c!960245 e!3401384)))

(declare-fun res!2344064 () Bool)

(assert (=> b!5498522 (=> (not res!2344064) (not e!3401384))))

(assert (=> b!5498522 (= res!2344064 ((_ is Concat!24314) (ite c!960041 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960042 (regTwo!31450 (regTwo!31451 r!7292)) (ite c!960045 (regOne!31450 (regTwo!31451 r!7292)) (reg!15798 (regTwo!31451 r!7292)))))))))

(assert (=> b!5498522 (= e!3401388 e!3401389)))

(declare-fun bm!405734 () Bool)

(assert (=> bm!405734 (= call!405738 call!405736)))

(declare-fun b!5498523 () Bool)

(assert (=> b!5498523 (= e!3401387 (store ((as const (Array Context!9706 Bool)) false) (ite (or c!960041 c!960042) lt!2242950 (Context!9707 call!405563)) true))))

(assert (= (and d!1743176 c!960247) b!5498523))

(assert (= (and d!1743176 (not c!960247)) b!5498518))

(assert (= (and b!5498518 c!960244) b!5498519))

(assert (= (and b!5498518 (not c!960244)) b!5498522))

(assert (= (and b!5498522 res!2344064) b!5498516))

(assert (= (and b!5498522 c!960245) b!5498515))

(assert (= (and b!5498522 (not c!960245)) b!5498513))

(assert (= (and b!5498513 c!960248) b!5498520))

(assert (= (and b!5498513 (not c!960248)) b!5498521))

(assert (= (and b!5498521 c!960246) b!5498514))

(assert (= (and b!5498521 (not c!960246)) b!5498517))

(assert (= (or b!5498520 b!5498514) bm!405731))

(assert (= (or b!5498520 b!5498514) bm!405734))

(assert (= (or b!5498515 bm!405731) bm!405732))

(assert (= (or b!5498515 bm!405734) bm!405733))

(assert (= (or b!5498519 bm!405733) bm!405730))

(assert (= (or b!5498519 b!5498515) bm!405729))

(declare-fun m!6507480 () Bool)

(assert (=> bm!405729 m!6507480))

(declare-fun m!6507482 () Bool)

(assert (=> b!5498516 m!6507482))

(declare-fun m!6507484 () Bool)

(assert (=> b!5498523 m!6507484))

(declare-fun m!6507486 () Bool)

(assert (=> bm!405732 m!6507486))

(declare-fun m!6507488 () Bool)

(assert (=> bm!405730 m!6507488))

(assert (=> bm!405554 d!1743176))

(assert (=> b!5497715 d!1743150))

(assert (=> b!5497715 d!1743086))

(assert (=> bm!405472 d!1743052))

(declare-fun bs!1268389 () Bool)

(declare-fun b!5498532 () Bool)

(assert (= bs!1268389 (and b!5498532 b!5498287)))

(declare-fun lambda!294375 () Int)

(assert (=> bs!1268389 (= (and (= (reg!15798 (regTwo!31451 (regTwo!31451 r!7292))) (reg!15798 (regOne!31451 (regTwo!31451 r!7292)))) (= (regTwo!31451 (regTwo!31451 r!7292)) (regOne!31451 (regTwo!31451 r!7292)))) (= lambda!294375 lambda!294369))))

(declare-fun bs!1268390 () Bool)

(assert (= bs!1268390 (and b!5498532 b!5498283)))

(assert (=> bs!1268390 (not (= lambda!294375 lambda!294370))))

(declare-fun bs!1268391 () Bool)

(assert (= bs!1268391 (and b!5498532 b!5497682)))

(assert (=> bs!1268391 (= (and (= (reg!15798 (regTwo!31451 (regTwo!31451 r!7292))) (reg!15798 (regTwo!31451 r!7292))) (= (regTwo!31451 (regTwo!31451 r!7292)) (regTwo!31451 r!7292))) (= lambda!294375 lambda!294350))))

(declare-fun bs!1268392 () Bool)

(assert (= bs!1268392 (and b!5498532 b!5497183)))

(assert (=> bs!1268392 (not (= lambda!294375 lambda!294317))))

(declare-fun bs!1268393 () Bool)

(assert (= bs!1268393 (and b!5498532 b!5497703)))

(assert (=> bs!1268393 (not (= lambda!294375 lambda!294353))))

(declare-fun bs!1268394 () Bool)

(assert (= bs!1268394 (and b!5498532 b!5497707)))

(assert (=> bs!1268394 (= (and (= (reg!15798 (regTwo!31451 (regTwo!31451 r!7292))) (reg!15798 (regOne!31451 r!7292))) (= (regTwo!31451 (regTwo!31451 r!7292)) (regOne!31451 r!7292))) (= lambda!294375 lambda!294352))))

(declare-fun bs!1268395 () Bool)

(assert (= bs!1268395 (and b!5498532 b!5497187)))

(assert (=> bs!1268395 (= (and (= (reg!15798 (regTwo!31451 (regTwo!31451 r!7292))) (reg!15798 r!7292)) (= (regTwo!31451 (regTwo!31451 r!7292)) r!7292)) (= lambda!294375 lambda!294316))))

(declare-fun bs!1268396 () Bool)

(assert (= bs!1268396 (and b!5498532 b!5498128)))

(assert (=> bs!1268396 (not (= lambda!294375 lambda!294368))))

(declare-fun bs!1268397 () Bool)

(assert (= bs!1268397 (and b!5498532 b!5498132)))

(assert (=> bs!1268397 (= (and (= (reg!15798 (regTwo!31451 (regTwo!31451 r!7292))) (reg!15798 (regOne!31451 (regOne!31451 r!7292)))) (= (regTwo!31451 (regTwo!31451 r!7292)) (regOne!31451 (regOne!31451 r!7292)))) (= lambda!294375 lambda!294366))))

(declare-fun bs!1268398 () Bool)

(assert (= bs!1268398 (and b!5498532 b!5497678)))

(assert (=> bs!1268398 (not (= lambda!294375 lambda!294351))))

(assert (=> b!5498532 true))

(assert (=> b!5498532 true))

(declare-fun bs!1268399 () Bool)

(declare-fun b!5498528 () Bool)

(assert (= bs!1268399 (and b!5498528 b!5498287)))

(declare-fun lambda!294376 () Int)

(assert (=> bs!1268399 (not (= lambda!294376 lambda!294369))))

(declare-fun bs!1268400 () Bool)

(assert (= bs!1268400 (and b!5498528 b!5498283)))

(assert (=> bs!1268400 (= (and (= (regOne!31450 (regTwo!31451 (regTwo!31451 r!7292))) (regOne!31450 (regOne!31451 (regTwo!31451 r!7292)))) (= (regTwo!31450 (regTwo!31451 (regTwo!31451 r!7292))) (regTwo!31450 (regOne!31451 (regTwo!31451 r!7292))))) (= lambda!294376 lambda!294370))))

(declare-fun bs!1268401 () Bool)

(assert (= bs!1268401 (and b!5498528 b!5498532)))

(assert (=> bs!1268401 (not (= lambda!294376 lambda!294375))))

(declare-fun bs!1268402 () Bool)

(assert (= bs!1268402 (and b!5498528 b!5497682)))

(assert (=> bs!1268402 (not (= lambda!294376 lambda!294350))))

(declare-fun bs!1268403 () Bool)

(assert (= bs!1268403 (and b!5498528 b!5497183)))

(assert (=> bs!1268403 (= (and (= (regOne!31450 (regTwo!31451 (regTwo!31451 r!7292))) (regOne!31450 r!7292)) (= (regTwo!31450 (regTwo!31451 (regTwo!31451 r!7292))) (regTwo!31450 r!7292))) (= lambda!294376 lambda!294317))))

(declare-fun bs!1268404 () Bool)

(assert (= bs!1268404 (and b!5498528 b!5497703)))

(assert (=> bs!1268404 (= (and (= (regOne!31450 (regTwo!31451 (regTwo!31451 r!7292))) (regOne!31450 (regOne!31451 r!7292))) (= (regTwo!31450 (regTwo!31451 (regTwo!31451 r!7292))) (regTwo!31450 (regOne!31451 r!7292)))) (= lambda!294376 lambda!294353))))

(declare-fun bs!1268405 () Bool)

(assert (= bs!1268405 (and b!5498528 b!5497707)))

(assert (=> bs!1268405 (not (= lambda!294376 lambda!294352))))

(declare-fun bs!1268406 () Bool)

(assert (= bs!1268406 (and b!5498528 b!5497187)))

(assert (=> bs!1268406 (not (= lambda!294376 lambda!294316))))

(declare-fun bs!1268407 () Bool)

(assert (= bs!1268407 (and b!5498528 b!5498128)))

(assert (=> bs!1268407 (= (and (= (regOne!31450 (regTwo!31451 (regTwo!31451 r!7292))) (regOne!31450 (regOne!31451 (regOne!31451 r!7292)))) (= (regTwo!31450 (regTwo!31451 (regTwo!31451 r!7292))) (regTwo!31450 (regOne!31451 (regOne!31451 r!7292))))) (= lambda!294376 lambda!294368))))

(declare-fun bs!1268408 () Bool)

(assert (= bs!1268408 (and b!5498528 b!5498132)))

(assert (=> bs!1268408 (not (= lambda!294376 lambda!294366))))

(declare-fun bs!1268409 () Bool)

(assert (= bs!1268409 (and b!5498528 b!5497678)))

(assert (=> bs!1268409 (= (and (= (regOne!31450 (regTwo!31451 (regTwo!31451 r!7292))) (regOne!31450 (regTwo!31451 r!7292))) (= (regTwo!31450 (regTwo!31451 (regTwo!31451 r!7292))) (regTwo!31450 (regTwo!31451 r!7292)))) (= lambda!294376 lambda!294351))))

(assert (=> b!5498528 true))

(assert (=> b!5498528 true))

(declare-fun b!5498524 () Bool)

(declare-fun e!3401392 () Bool)

(declare-fun e!3401393 () Bool)

(assert (=> b!5498524 (= e!3401392 e!3401393)))

(declare-fun c!960250 () Bool)

(assert (=> b!5498524 (= c!960250 ((_ is Star!15469) (regTwo!31451 (regTwo!31451 r!7292))))))

(declare-fun b!5498525 () Bool)

(declare-fun e!3401395 () Bool)

(declare-fun e!3401396 () Bool)

(assert (=> b!5498525 (= e!3401395 e!3401396)))

(declare-fun res!2344066 () Bool)

(assert (=> b!5498525 (= res!2344066 (not ((_ is EmptyLang!15469) (regTwo!31451 (regTwo!31451 r!7292)))))))

(assert (=> b!5498525 (=> (not res!2344066) (not e!3401396))))

(declare-fun b!5498526 () Bool)

(declare-fun e!3401391 () Bool)

(assert (=> b!5498526 (= e!3401392 e!3401391)))

(declare-fun res!2344067 () Bool)

(assert (=> b!5498526 (= res!2344067 (matchRSpec!2572 (regOne!31451 (regTwo!31451 (regTwo!31451 r!7292))) s!2326))))

(assert (=> b!5498526 (=> res!2344067 e!3401391)))

(declare-fun b!5498527 () Bool)

(declare-fun e!3401390 () Bool)

(assert (=> b!5498527 (= e!3401390 (= s!2326 (Cons!62584 (c!959839 (regTwo!31451 (regTwo!31451 r!7292))) Nil!62584)))))

(declare-fun d!1743178 () Bool)

(declare-fun c!960251 () Bool)

(assert (=> d!1743178 (= c!960251 ((_ is EmptyExpr!15469) (regTwo!31451 (regTwo!31451 r!7292))))))

(assert (=> d!1743178 (= (matchRSpec!2572 (regTwo!31451 (regTwo!31451 r!7292)) s!2326) e!3401395)))

(declare-fun call!405741 () Bool)

(assert (=> b!5498528 (= e!3401393 call!405741)))

(declare-fun b!5498529 () Bool)

(declare-fun c!960249 () Bool)

(assert (=> b!5498529 (= c!960249 ((_ is ElementMatch!15469) (regTwo!31451 (regTwo!31451 r!7292))))))

(assert (=> b!5498529 (= e!3401396 e!3401390)))

(declare-fun b!5498530 () Bool)

(declare-fun call!405740 () Bool)

(assert (=> b!5498530 (= e!3401395 call!405740)))

(declare-fun b!5498531 () Bool)

(assert (=> b!5498531 (= e!3401391 (matchRSpec!2572 (regTwo!31451 (regTwo!31451 (regTwo!31451 r!7292))) s!2326))))

(declare-fun bm!405735 () Bool)

(assert (=> bm!405735 (= call!405741 (Exists!2577 (ite c!960250 lambda!294375 lambda!294376)))))

(declare-fun e!3401394 () Bool)

(assert (=> b!5498532 (= e!3401394 call!405741)))

(declare-fun b!5498533 () Bool)

(declare-fun res!2344065 () Bool)

(assert (=> b!5498533 (=> res!2344065 e!3401394)))

(assert (=> b!5498533 (= res!2344065 call!405740)))

(assert (=> b!5498533 (= e!3401393 e!3401394)))

(declare-fun b!5498534 () Bool)

(declare-fun c!960252 () Bool)

(assert (=> b!5498534 (= c!960252 ((_ is Union!15469) (regTwo!31451 (regTwo!31451 r!7292))))))

(assert (=> b!5498534 (= e!3401390 e!3401392)))

(declare-fun bm!405736 () Bool)

(assert (=> bm!405736 (= call!405740 (isEmpty!34380 s!2326))))

(assert (= (and d!1743178 c!960251) b!5498530))

(assert (= (and d!1743178 (not c!960251)) b!5498525))

(assert (= (and b!5498525 res!2344066) b!5498529))

(assert (= (and b!5498529 c!960249) b!5498527))

(assert (= (and b!5498529 (not c!960249)) b!5498534))

(assert (= (and b!5498534 c!960252) b!5498526))

(assert (= (and b!5498534 (not c!960252)) b!5498524))

(assert (= (and b!5498526 (not res!2344067)) b!5498531))

(assert (= (and b!5498524 c!960250) b!5498533))

(assert (= (and b!5498524 (not c!960250)) b!5498528))

(assert (= (and b!5498533 (not res!2344065)) b!5498532))

(assert (= (or b!5498532 b!5498528) bm!405735))

(assert (= (or b!5498530 b!5498533) bm!405736))

(declare-fun m!6507490 () Bool)

(assert (=> b!5498526 m!6507490))

(declare-fun m!6507492 () Bool)

(assert (=> b!5498531 m!6507492))

(declare-fun m!6507494 () Bool)

(assert (=> bm!405735 m!6507494))

(assert (=> bm!405736 m!6506636))

(assert (=> b!5497681 d!1743178))

(declare-fun b!5498535 () Bool)

(declare-fun e!3401399 () (InoxSet Context!9706))

(declare-fun e!3401398 () (InoxSet Context!9706))

(assert (=> b!5498535 (= e!3401399 e!3401398)))

(declare-fun c!960254 () Bool)

(assert (=> b!5498535 (= c!960254 ((_ is Cons!62582) (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))))))))

(declare-fun d!1743180 () Bool)

(declare-fun c!960253 () Bool)

(declare-fun e!3401397 () Bool)

(assert (=> d!1743180 (= c!960253 e!3401397)))

(declare-fun res!2344068 () Bool)

(assert (=> d!1743180 (=> (not res!2344068) (not e!3401397))))

(assert (=> d!1743180 (= res!2344068 ((_ is Cons!62582) (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))))))))

(assert (=> d!1743180 (= (derivationStepZipperUp!741 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))) (h!69032 s!2326)) e!3401399)))

(declare-fun b!5498536 () Bool)

(declare-fun call!405742 () (InoxSet Context!9706))

(assert (=> b!5498536 (= e!3401398 call!405742)))

(declare-fun b!5498537 () Bool)

(assert (=> b!5498537 (= e!3401398 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498538 () Bool)

(assert (=> b!5498538 (= e!3401399 ((_ map or) call!405742 (derivationStepZipperUp!741 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))))))) (h!69032 s!2326))))))

(declare-fun bm!405737 () Bool)

(assert (=> bm!405737 (= call!405742 (derivationStepZipperDown!815 (h!69030 (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582))))))) (Context!9707 (t!375939 (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))))))) (h!69032 s!2326)))))

(declare-fun b!5498539 () Bool)

(assert (=> b!5498539 (= e!3401397 (nullable!5512 (h!69030 (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (Context!9707 (Cons!62582 r!7292 Nil!62582)))))))))))

(assert (= (and d!1743180 res!2344068) b!5498539))

(assert (= (and d!1743180 c!960253) b!5498538))

(assert (= (and d!1743180 (not c!960253)) b!5498535))

(assert (= (and b!5498535 c!960254) b!5498536))

(assert (= (and b!5498535 (not c!960254)) b!5498537))

(assert (= (or b!5498538 b!5498536) bm!405737))

(declare-fun m!6507496 () Bool)

(assert (=> b!5498538 m!6507496))

(declare-fun m!6507498 () Bool)

(assert (=> bm!405737 m!6507498))

(declare-fun m!6507500 () Bool)

(assert (=> b!5498539 m!6507500))

(assert (=> b!5497606 d!1743180))

(declare-fun d!1743182 () Bool)

(assert (=> d!1743182 (= (nullable!5512 (regOne!31450 (regOne!31451 r!7292))) (nullableFct!1647 (regOne!31450 (regOne!31451 r!7292))))))

(declare-fun bs!1268410 () Bool)

(assert (= bs!1268410 d!1743182))

(declare-fun m!6507502 () Bool)

(assert (=> bs!1268410 m!6507502))

(assert (=> b!5497730 d!1743182))

(declare-fun b!5498540 () Bool)

(declare-fun e!3401405 () (InoxSet Context!9706))

(declare-fun e!3401401 () (InoxSet Context!9706))

(assert (=> b!5498540 (= e!3401405 e!3401401)))

(declare-fun c!960259 () Bool)

(assert (=> b!5498540 (= c!960259 ((_ is Concat!24314) (h!69030 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun c!960255 () Bool)

(declare-fun call!405744 () List!62706)

(declare-fun call!405743 () (InoxSet Context!9706))

(declare-fun bm!405738 () Bool)

(assert (=> bm!405738 (= call!405743 (derivationStepZipperDown!815 (ite c!960255 (regOne!31451 (h!69030 (exprs!5353 (h!69031 zl!343)))) (regOne!31450 (h!69030 (exprs!5353 (h!69031 zl!343))))) (ite c!960255 (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343)))) (Context!9707 call!405744)) (h!69032 s!2326)))))

(declare-fun b!5498541 () Bool)

(declare-fun e!3401402 () (InoxSet Context!9706))

(declare-fun call!405747 () (InoxSet Context!9706))

(assert (=> b!5498541 (= e!3401402 call!405747)))

(declare-fun b!5498542 () Bool)

(declare-fun call!405745 () (InoxSet Context!9706))

(assert (=> b!5498542 (= e!3401405 ((_ map or) call!405743 call!405745))))

(declare-fun call!405748 () List!62706)

(declare-fun c!960256 () Bool)

(declare-fun call!405746 () (InoxSet Context!9706))

(declare-fun bm!405739 () Bool)

(assert (=> bm!405739 (= call!405746 (derivationStepZipperDown!815 (ite c!960255 (regTwo!31451 (h!69030 (exprs!5353 (h!69031 zl!343)))) (ite c!960256 (regTwo!31450 (h!69030 (exprs!5353 (h!69031 zl!343)))) (ite c!960259 (regOne!31450 (h!69030 (exprs!5353 (h!69031 zl!343)))) (reg!15798 (h!69030 (exprs!5353 (h!69031 zl!343))))))) (ite (or c!960255 c!960256) (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343)))) (Context!9707 call!405748)) (h!69032 s!2326)))))

(declare-fun b!5498543 () Bool)

(declare-fun e!3401400 () Bool)

(assert (=> b!5498543 (= e!3401400 (nullable!5512 (regOne!31450 (h!69030 (exprs!5353 (h!69031 zl!343))))))))

(declare-fun d!1743184 () Bool)

(declare-fun c!960258 () Bool)

(assert (=> d!1743184 (= c!960258 (and ((_ is ElementMatch!15469) (h!69030 (exprs!5353 (h!69031 zl!343)))) (= (c!959839 (h!69030 (exprs!5353 (h!69031 zl!343)))) (h!69032 s!2326))))))

(declare-fun e!3401403 () (InoxSet Context!9706))

(assert (=> d!1743184 (= (derivationStepZipperDown!815 (h!69030 (exprs!5353 (h!69031 zl!343))) (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343)))) (h!69032 s!2326)) e!3401403)))

(declare-fun b!5498544 () Bool)

(assert (=> b!5498544 (= e!3401402 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498545 () Bool)

(declare-fun e!3401404 () (InoxSet Context!9706))

(assert (=> b!5498545 (= e!3401403 e!3401404)))

(assert (=> b!5498545 (= c!960255 ((_ is Union!15469) (h!69030 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun b!5498546 () Bool)

(assert (=> b!5498546 (= e!3401404 ((_ map or) call!405743 call!405746))))

(declare-fun bm!405740 () Bool)

(assert (=> bm!405740 (= call!405748 call!405744)))

(declare-fun bm!405741 () Bool)

(assert (=> bm!405741 (= call!405744 ($colon$colon!1566 (exprs!5353 (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343))))) (ite (or c!960256 c!960259) (regTwo!31450 (h!69030 (exprs!5353 (h!69031 zl!343)))) (h!69030 (exprs!5353 (h!69031 zl!343))))))))

(declare-fun bm!405742 () Bool)

(assert (=> bm!405742 (= call!405745 call!405746)))

(declare-fun b!5498547 () Bool)

(assert (=> b!5498547 (= e!3401401 call!405747)))

(declare-fun b!5498548 () Bool)

(declare-fun c!960257 () Bool)

(assert (=> b!5498548 (= c!960257 ((_ is Star!15469) (h!69030 (exprs!5353 (h!69031 zl!343)))))))

(assert (=> b!5498548 (= e!3401401 e!3401402)))

(declare-fun b!5498549 () Bool)

(assert (=> b!5498549 (= c!960256 e!3401400)))

(declare-fun res!2344069 () Bool)

(assert (=> b!5498549 (=> (not res!2344069) (not e!3401400))))

(assert (=> b!5498549 (= res!2344069 ((_ is Concat!24314) (h!69030 (exprs!5353 (h!69031 zl!343)))))))

(assert (=> b!5498549 (= e!3401404 e!3401405)))

(declare-fun bm!405743 () Bool)

(assert (=> bm!405743 (= call!405747 call!405745)))

(declare-fun b!5498550 () Bool)

(assert (=> b!5498550 (= e!3401403 (store ((as const (Array Context!9706 Bool)) false) (Context!9707 (t!375939 (exprs!5353 (h!69031 zl!343)))) true))))

(assert (= (and d!1743184 c!960258) b!5498550))

(assert (= (and d!1743184 (not c!960258)) b!5498545))

(assert (= (and b!5498545 c!960255) b!5498546))

(assert (= (and b!5498545 (not c!960255)) b!5498549))

(assert (= (and b!5498549 res!2344069) b!5498543))

(assert (= (and b!5498549 c!960256) b!5498542))

(assert (= (and b!5498549 (not c!960256)) b!5498540))

(assert (= (and b!5498540 c!960259) b!5498547))

(assert (= (and b!5498540 (not c!960259)) b!5498548))

(assert (= (and b!5498548 c!960257) b!5498541))

(assert (= (and b!5498548 (not c!960257)) b!5498544))

(assert (= (or b!5498547 b!5498541) bm!405740))

(assert (= (or b!5498547 b!5498541) bm!405743))

(assert (= (or b!5498542 bm!405740) bm!405741))

(assert (= (or b!5498542 bm!405743) bm!405742))

(assert (= (or b!5498546 bm!405742) bm!405739))

(assert (= (or b!5498546 b!5498542) bm!405738))

(declare-fun m!6507504 () Bool)

(assert (=> bm!405738 m!6507504))

(declare-fun m!6507506 () Bool)

(assert (=> b!5498543 m!6507506))

(declare-fun m!6507508 () Bool)

(assert (=> b!5498550 m!6507508))

(declare-fun m!6507510 () Bool)

(assert (=> bm!405741 m!6507510))

(declare-fun m!6507512 () Bool)

(assert (=> bm!405739 m!6507512))

(assert (=> bm!405496 d!1743184))

(assert (=> bm!405486 d!1743052))

(declare-fun b!5498551 () Bool)

(declare-fun e!3401411 () (InoxSet Context!9706))

(declare-fun e!3401407 () (InoxSet Context!9706))

(assert (=> b!5498551 (= e!3401411 e!3401407)))

(declare-fun c!960264 () Bool)

(assert (=> b!5498551 (= c!960264 ((_ is Concat!24314) (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))))))

(declare-fun c!960260 () Bool)

(declare-fun call!405750 () List!62706)

(declare-fun call!405749 () (InoxSet Context!9706))

(declare-fun bm!405744 () Bool)

(assert (=> bm!405744 (= call!405749 (derivationStepZipperDown!815 (ite c!960260 (regOne!31451 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))) (regOne!31450 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292))))) (ite c!960260 (ite c!960041 lt!2242950 (Context!9707 call!405559)) (Context!9707 call!405750)) (h!69032 s!2326)))))

(declare-fun b!5498552 () Bool)

(declare-fun e!3401408 () (InoxSet Context!9706))

(declare-fun call!405753 () (InoxSet Context!9706))

(assert (=> b!5498552 (= e!3401408 call!405753)))

(declare-fun b!5498553 () Bool)

(declare-fun call!405751 () (InoxSet Context!9706))

(assert (=> b!5498553 (= e!3401411 ((_ map or) call!405749 call!405751))))

(declare-fun bm!405745 () Bool)

(declare-fun call!405752 () (InoxSet Context!9706))

(declare-fun c!960261 () Bool)

(declare-fun call!405754 () List!62706)

(assert (=> bm!405745 (= call!405752 (derivationStepZipperDown!815 (ite c!960260 (regTwo!31451 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))) (ite c!960261 (regTwo!31450 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))) (ite c!960264 (regOne!31450 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))) (reg!15798 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292))))))) (ite (or c!960260 c!960261) (ite c!960041 lt!2242950 (Context!9707 call!405559)) (Context!9707 call!405754)) (h!69032 s!2326)))))

(declare-fun b!5498554 () Bool)

(declare-fun e!3401406 () Bool)

(assert (=> b!5498554 (= e!3401406 (nullable!5512 (regOne!31450 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292))))))))

(declare-fun d!1743186 () Bool)

(declare-fun c!960263 () Bool)

(assert (=> d!1743186 (= c!960263 (and ((_ is ElementMatch!15469) (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))) (= (c!959839 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))) (h!69032 s!2326))))))

(declare-fun e!3401409 () (InoxSet Context!9706))

(assert (=> d!1743186 (= (derivationStepZipperDown!815 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292))) (ite c!960041 lt!2242950 (Context!9707 call!405559)) (h!69032 s!2326)) e!3401409)))

(declare-fun b!5498555 () Bool)

(assert (=> b!5498555 (= e!3401408 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498556 () Bool)

(declare-fun e!3401410 () (InoxSet Context!9706))

(assert (=> b!5498556 (= e!3401409 e!3401410)))

(assert (=> b!5498556 (= c!960260 ((_ is Union!15469) (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))))))

(declare-fun b!5498557 () Bool)

(assert (=> b!5498557 (= e!3401410 ((_ map or) call!405749 call!405752))))

(declare-fun bm!405746 () Bool)

(assert (=> bm!405746 (= call!405754 call!405750)))

(declare-fun bm!405747 () Bool)

(assert (=> bm!405747 (= call!405750 ($colon$colon!1566 (exprs!5353 (ite c!960041 lt!2242950 (Context!9707 call!405559))) (ite (or c!960261 c!960264) (regTwo!31450 (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))) (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292))))))))

(declare-fun bm!405748 () Bool)

(assert (=> bm!405748 (= call!405751 call!405752)))

(declare-fun b!5498558 () Bool)

(assert (=> b!5498558 (= e!3401407 call!405753)))

(declare-fun b!5498559 () Bool)

(declare-fun c!960262 () Bool)

(assert (=> b!5498559 (= c!960262 ((_ is Star!15469) (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))))))

(assert (=> b!5498559 (= e!3401407 e!3401408)))

(declare-fun b!5498560 () Bool)

(assert (=> b!5498560 (= c!960261 e!3401406)))

(declare-fun res!2344070 () Bool)

(assert (=> b!5498560 (=> (not res!2344070) (not e!3401406))))

(assert (=> b!5498560 (= res!2344070 ((_ is Concat!24314) (ite c!960041 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292)))))))

(assert (=> b!5498560 (= e!3401410 e!3401411)))

(declare-fun bm!405749 () Bool)

(assert (=> bm!405749 (= call!405753 call!405751)))

(declare-fun b!5498561 () Bool)

(assert (=> b!5498561 (= e!3401409 (store ((as const (Array Context!9706 Bool)) false) (ite c!960041 lt!2242950 (Context!9707 call!405559)) true))))

(assert (= (and d!1743186 c!960263) b!5498561))

(assert (= (and d!1743186 (not c!960263)) b!5498556))

(assert (= (and b!5498556 c!960260) b!5498557))

(assert (= (and b!5498556 (not c!960260)) b!5498560))

(assert (= (and b!5498560 res!2344070) b!5498554))

(assert (= (and b!5498560 c!960261) b!5498553))

(assert (= (and b!5498560 (not c!960261)) b!5498551))

(assert (= (and b!5498551 c!960264) b!5498558))

(assert (= (and b!5498551 (not c!960264)) b!5498559))

(assert (= (and b!5498559 c!960262) b!5498552))

(assert (= (and b!5498559 (not c!960262)) b!5498555))

(assert (= (or b!5498558 b!5498552) bm!405746))

(assert (= (or b!5498558 b!5498552) bm!405749))

(assert (= (or b!5498553 bm!405746) bm!405747))

(assert (= (or b!5498553 bm!405749) bm!405748))

(assert (= (or b!5498557 bm!405748) bm!405745))

(assert (= (or b!5498557 b!5498553) bm!405744))

(declare-fun m!6507514 () Bool)

(assert (=> bm!405744 m!6507514))

(declare-fun m!6507516 () Bool)

(assert (=> b!5498554 m!6507516))

(declare-fun m!6507518 () Bool)

(assert (=> b!5498561 m!6507518))

(declare-fun m!6507520 () Bool)

(assert (=> bm!405747 m!6507520))

(declare-fun m!6507522 () Bool)

(assert (=> bm!405745 m!6507522))

(assert (=> bm!405553 d!1743186))

(declare-fun d!1743188 () Bool)

(assert (=> d!1743188 (= (isConcat!581 lt!2243006) ((_ is Concat!24314) lt!2243006))))

(assert (=> b!5497664 d!1743188))

(assert (=> b!5497295 d!1743150))

(assert (=> b!5497295 d!1743086))

(assert (=> b!5497711 d!1743058))

(assert (=> bm!405542 d!1743052))

(declare-fun d!1743190 () Bool)

(declare-fun res!2344075 () Bool)

(declare-fun e!3401416 () Bool)

(assert (=> d!1743190 (=> res!2344075 e!3401416)))

(assert (=> d!1743190 (= res!2344075 ((_ is Nil!62583) lt!2243013))))

(assert (=> d!1743190 (= (noDuplicate!1478 lt!2243013) e!3401416)))

(declare-fun b!5498566 () Bool)

(declare-fun e!3401417 () Bool)

(assert (=> b!5498566 (= e!3401416 e!3401417)))

(declare-fun res!2344076 () Bool)

(assert (=> b!5498566 (=> (not res!2344076) (not e!3401417))))

(declare-fun contains!19769 (List!62707 Context!9706) Bool)

(assert (=> b!5498566 (= res!2344076 (not (contains!19769 (t!375940 lt!2243013) (h!69031 lt!2243013))))))

(declare-fun b!5498567 () Bool)

(assert (=> b!5498567 (= e!3401417 (noDuplicate!1478 (t!375940 lt!2243013)))))

(assert (= (and d!1743190 (not res!2344075)) b!5498566))

(assert (= (and b!5498566 res!2344076) b!5498567))

(declare-fun m!6507524 () Bool)

(assert (=> b!5498566 m!6507524))

(declare-fun m!6507526 () Bool)

(assert (=> b!5498567 m!6507526))

(assert (=> d!1742882 d!1743190))

(declare-fun d!1743192 () Bool)

(declare-fun e!3401424 () Bool)

(assert (=> d!1743192 e!3401424))

(declare-fun res!2344082 () Bool)

(assert (=> d!1743192 (=> (not res!2344082) (not e!3401424))))

(declare-fun res!2344081 () List!62707)

(assert (=> d!1743192 (= res!2344082 (noDuplicate!1478 res!2344081))))

(declare-fun e!3401425 () Bool)

(assert (=> d!1743192 e!3401425))

(assert (=> d!1743192 (= (choose!41787 z!1189) res!2344081)))

(declare-fun b!5498575 () Bool)

(declare-fun e!3401426 () Bool)

(declare-fun tp!1512854 () Bool)

(assert (=> b!5498575 (= e!3401426 tp!1512854)))

(declare-fun tp!1512855 () Bool)

(declare-fun b!5498574 () Bool)

(assert (=> b!5498574 (= e!3401425 (and (inv!81919 (h!69031 res!2344081)) e!3401426 tp!1512855))))

(declare-fun b!5498576 () Bool)

(assert (=> b!5498576 (= e!3401424 (= (content!11239 res!2344081) z!1189))))

(assert (= b!5498574 b!5498575))

(assert (= (and d!1743192 ((_ is Cons!62583) res!2344081)) b!5498574))

(assert (= (and d!1743192 res!2344082) b!5498576))

(declare-fun m!6507528 () Bool)

(assert (=> d!1743192 m!6507528))

(declare-fun m!6507530 () Bool)

(assert (=> b!5498574 m!6507530))

(declare-fun m!6507532 () Bool)

(assert (=> b!5498576 m!6507532))

(assert (=> d!1742882 d!1743192))

(declare-fun d!1743194 () Bool)

(assert (=> d!1743194 (= (flatMap!1088 z!1189 lambda!294329) (choose!41782 z!1189 lambda!294329))))

(declare-fun bs!1268411 () Bool)

(assert (= bs!1268411 d!1743194))

(declare-fun m!6507534 () Bool)

(assert (=> bs!1268411 m!6507534))

(assert (=> d!1742816 d!1743194))

(declare-fun d!1743196 () Bool)

(declare-fun res!2344083 () Bool)

(declare-fun e!3401427 () Bool)

(assert (=> d!1743196 (=> res!2344083 e!3401427)))

(assert (=> d!1743196 (= res!2344083 ((_ is Nil!62582) lt!2243003))))

(assert (=> d!1743196 (= (forall!14660 lt!2243003 lambda!294346) e!3401427)))

(declare-fun b!5498577 () Bool)

(declare-fun e!3401428 () Bool)

(assert (=> b!5498577 (= e!3401427 e!3401428)))

(declare-fun res!2344084 () Bool)

(assert (=> b!5498577 (=> (not res!2344084) (not e!3401428))))

(assert (=> b!5498577 (= res!2344084 (dynLambda!24462 lambda!294346 (h!69030 lt!2243003)))))

(declare-fun b!5498578 () Bool)

(assert (=> b!5498578 (= e!3401428 (forall!14660 (t!375939 lt!2243003) lambda!294346))))

(assert (= (and d!1743196 (not res!2344083)) b!5498577))

(assert (= (and b!5498577 res!2344084) b!5498578))

(declare-fun b_lambda!208557 () Bool)

(assert (=> (not b_lambda!208557) (not b!5498577)))

(declare-fun m!6507536 () Bool)

(assert (=> b!5498577 m!6507536))

(declare-fun m!6507538 () Bool)

(assert (=> b!5498578 m!6507538))

(assert (=> d!1742866 d!1743196))

(declare-fun d!1743198 () Bool)

(assert (=> d!1743198 (= (isEmpty!34381 (tail!10871 (exprs!5353 (h!69031 zl!343)))) ((_ is Nil!62582) (tail!10871 (exprs!5353 (h!69031 zl!343)))))))

(assert (=> b!5497666 d!1743198))

(declare-fun d!1743200 () Bool)

(assert (=> d!1743200 (= (tail!10871 (exprs!5353 (h!69031 zl!343))) (t!375939 (exprs!5353 (h!69031 zl!343))))))

(assert (=> b!5497666 d!1743200))

(assert (=> d!1742874 d!1743052))

(assert (=> d!1742874 d!1743136))

(assert (=> b!5497642 d!1742868))

(declare-fun bs!1268412 () Bool)

(declare-fun d!1743202 () Bool)

(assert (= bs!1268412 (and d!1743202 d!1742866)))

(declare-fun lambda!294377 () Int)

(assert (=> bs!1268412 (= lambda!294377 lambda!294346)))

(declare-fun bs!1268413 () Bool)

(assert (= bs!1268413 (and d!1743202 d!1742868)))

(assert (=> bs!1268413 (= lambda!294377 lambda!294349)))

(declare-fun bs!1268414 () Bool)

(assert (= bs!1268414 (and d!1743202 d!1742848)))

(assert (=> bs!1268414 (= lambda!294377 lambda!294339)))

(declare-fun bs!1268415 () Bool)

(assert (= bs!1268415 (and d!1743202 d!1742782)))

(assert (=> bs!1268415 (= lambda!294377 lambda!294304)))

(declare-fun bs!1268416 () Bool)

(assert (= bs!1268416 (and d!1743202 d!1743080)))

(assert (=> bs!1268416 (= lambda!294377 lambda!294371)))

(declare-fun bs!1268417 () Bool)

(assert (= bs!1268417 (and d!1743202 d!1743124)))

(assert (=> bs!1268417 (= lambda!294377 lambda!294373)))

(declare-fun bs!1268418 () Bool)

(assert (= bs!1268418 (and d!1743202 d!1742864)))

(assert (=> bs!1268418 (= lambda!294377 lambda!294343)))

(declare-fun bs!1268419 () Bool)

(assert (= bs!1268419 (and d!1743202 d!1743098)))

(assert (=> bs!1268419 (= lambda!294377 lambda!294372)))

(declare-fun bs!1268420 () Bool)

(assert (= bs!1268420 (and d!1743202 d!1743158)))

(assert (=> bs!1268420 (= lambda!294377 lambda!294374)))

(declare-fun lt!2243033 () List!62706)

(assert (=> d!1743202 (forall!14660 lt!2243033 lambda!294377)))

(declare-fun e!3401429 () List!62706)

(assert (=> d!1743202 (= lt!2243033 e!3401429)))

(declare-fun c!960265 () Bool)

(assert (=> d!1743202 (= c!960265 ((_ is Cons!62583) (t!375940 zl!343)))))

(assert (=> d!1743202 (= (unfocusZipperList!897 (t!375940 zl!343)) lt!2243033)))

(declare-fun b!5498579 () Bool)

(assert (=> b!5498579 (= e!3401429 (Cons!62582 (generalisedConcat!1084 (exprs!5353 (h!69031 (t!375940 zl!343)))) (unfocusZipperList!897 (t!375940 (t!375940 zl!343)))))))

(declare-fun b!5498580 () Bool)

(assert (=> b!5498580 (= e!3401429 Nil!62582)))

(assert (= (and d!1743202 c!960265) b!5498579))

(assert (= (and d!1743202 (not c!960265)) b!5498580))

(declare-fun m!6507540 () Bool)

(assert (=> d!1743202 m!6507540))

(declare-fun m!6507542 () Bool)

(assert (=> b!5498579 m!6507542))

(declare-fun m!6507544 () Bool)

(assert (=> b!5498579 m!6507544))

(assert (=> b!5497642 d!1743202))

(declare-fun d!1743204 () Bool)

(assert (=> d!1743204 (= (isEmpty!34381 (exprs!5353 (h!69031 zl!343))) ((_ is Nil!62582) (exprs!5353 (h!69031 zl!343))))))

(assert (=> b!5497668 d!1743204))

(declare-fun b!5498581 () Bool)

(declare-fun e!3401435 () (InoxSet Context!9706))

(declare-fun e!3401431 () (InoxSet Context!9706))

(assert (=> b!5498581 (= e!3401435 e!3401431)))

(declare-fun c!960270 () Bool)

(assert (=> b!5498581 (= c!960270 ((_ is Concat!24314) (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))))))

(declare-fun call!405756 () List!62706)

(declare-fun c!960266 () Bool)

(declare-fun call!405755 () (InoxSet Context!9706))

(declare-fun bm!405750 () Bool)

(assert (=> bm!405750 (= call!405755 (derivationStepZipperDown!815 (ite c!960266 (regOne!31451 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))) (regOne!31450 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292)))))) (ite c!960266 (ite (or c!959988 c!959989) lt!2242950 (Context!9707 call!405544)) (Context!9707 call!405756)) (h!69032 s!2326)))))

(declare-fun b!5498582 () Bool)

(declare-fun e!3401432 () (InoxSet Context!9706))

(declare-fun call!405759 () (InoxSet Context!9706))

(assert (=> b!5498582 (= e!3401432 call!405759)))

(declare-fun b!5498583 () Bool)

(declare-fun call!405757 () (InoxSet Context!9706))

(assert (=> b!5498583 (= e!3401435 ((_ map or) call!405755 call!405757))))

(declare-fun call!405760 () List!62706)

(declare-fun c!960267 () Bool)

(declare-fun call!405758 () (InoxSet Context!9706))

(declare-fun bm!405751 () Bool)

(assert (=> bm!405751 (= call!405758 (derivationStepZipperDown!815 (ite c!960266 (regTwo!31451 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))) (ite c!960267 (regTwo!31450 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))) (ite c!960270 (regOne!31450 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))) (reg!15798 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292)))))))) (ite (or c!960266 c!960267) (ite (or c!959988 c!959989) lt!2242950 (Context!9707 call!405544)) (Context!9707 call!405760)) (h!69032 s!2326)))))

(declare-fun b!5498584 () Bool)

(declare-fun e!3401430 () Bool)

(assert (=> b!5498584 (= e!3401430 (nullable!5512 (regOne!31450 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292)))))))))

(declare-fun c!960269 () Bool)

(declare-fun d!1743206 () Bool)

(assert (=> d!1743206 (= c!960269 (and ((_ is ElementMatch!15469) (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))) (= (c!959839 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))) (h!69032 s!2326))))))

(declare-fun e!3401433 () (InoxSet Context!9706))

(assert (=> d!1743206 (= (derivationStepZipperDown!815 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292)))) (ite (or c!959988 c!959989) lt!2242950 (Context!9707 call!405544)) (h!69032 s!2326)) e!3401433)))

(declare-fun b!5498585 () Bool)

(assert (=> b!5498585 (= e!3401432 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498586 () Bool)

(declare-fun e!3401434 () (InoxSet Context!9706))

(assert (=> b!5498586 (= e!3401433 e!3401434)))

(assert (=> b!5498586 (= c!960266 ((_ is Union!15469) (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))))))

(declare-fun b!5498587 () Bool)

(assert (=> b!5498587 (= e!3401434 ((_ map or) call!405755 call!405758))))

(declare-fun bm!405752 () Bool)

(assert (=> bm!405752 (= call!405760 call!405756)))

(declare-fun bm!405753 () Bool)

(assert (=> bm!405753 (= call!405756 ($colon$colon!1566 (exprs!5353 (ite (or c!959988 c!959989) lt!2242950 (Context!9707 call!405544))) (ite (or c!960267 c!960270) (regTwo!31450 (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))) (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292)))))))))

(declare-fun bm!405754 () Bool)

(assert (=> bm!405754 (= call!405757 call!405758)))

(declare-fun b!5498588 () Bool)

(assert (=> b!5498588 (= e!3401431 call!405759)))

(declare-fun c!960268 () Bool)

(declare-fun b!5498589 () Bool)

(assert (=> b!5498589 (= c!960268 ((_ is Star!15469) (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))))))

(assert (=> b!5498589 (= e!3401431 e!3401432)))

(declare-fun b!5498590 () Bool)

(assert (=> b!5498590 (= c!960267 e!3401430)))

(declare-fun res!2344085 () Bool)

(assert (=> b!5498590 (=> (not res!2344085) (not e!3401430))))

(assert (=> b!5498590 (= res!2344085 ((_ is Concat!24314) (ite c!959988 (regTwo!31451 r!7292) (ite c!959989 (regTwo!31450 r!7292) (ite c!959992 (regOne!31450 r!7292) (reg!15798 r!7292))))))))

(assert (=> b!5498590 (= e!3401434 e!3401435)))

(declare-fun bm!405755 () Bool)

(assert (=> bm!405755 (= call!405759 call!405757)))

(declare-fun b!5498591 () Bool)

(assert (=> b!5498591 (= e!3401433 (store ((as const (Array Context!9706 Bool)) false) (ite (or c!959988 c!959989) lt!2242950 (Context!9707 call!405544)) true))))

(assert (= (and d!1743206 c!960269) b!5498591))

(assert (= (and d!1743206 (not c!960269)) b!5498586))

(assert (= (and b!5498586 c!960266) b!5498587))

(assert (= (and b!5498586 (not c!960266)) b!5498590))

(assert (= (and b!5498590 res!2344085) b!5498584))

(assert (= (and b!5498590 c!960267) b!5498583))

(assert (= (and b!5498590 (not c!960267)) b!5498581))

(assert (= (and b!5498581 c!960270) b!5498588))

(assert (= (and b!5498581 (not c!960270)) b!5498589))

(assert (= (and b!5498589 c!960268) b!5498582))

(assert (= (and b!5498589 (not c!960268)) b!5498585))

(assert (= (or b!5498588 b!5498582) bm!405752))

(assert (= (or b!5498588 b!5498582) bm!405755))

(assert (= (or b!5498583 bm!405752) bm!405753))

(assert (= (or b!5498583 bm!405755) bm!405754))

(assert (= (or b!5498587 bm!405754) bm!405751))

(assert (= (or b!5498587 b!5498583) bm!405750))

(declare-fun m!6507546 () Bool)

(assert (=> bm!405750 m!6507546))

(declare-fun m!6507548 () Bool)

(assert (=> b!5498584 m!6507548))

(declare-fun m!6507550 () Bool)

(assert (=> b!5498591 m!6507550))

(declare-fun m!6507552 () Bool)

(assert (=> bm!405753 m!6507552))

(declare-fun m!6507554 () Bool)

(assert (=> bm!405751 m!6507554))

(assert (=> bm!405535 d!1743206))

(declare-fun bs!1268421 () Bool)

(declare-fun b!5498600 () Bool)

(assert (= bs!1268421 (and b!5498600 b!5498287)))

(declare-fun lambda!294378 () Int)

(assert (=> bs!1268421 (= (and (= (reg!15798 (regTwo!31451 (regOne!31451 r!7292))) (reg!15798 (regOne!31451 (regTwo!31451 r!7292)))) (= (regTwo!31451 (regOne!31451 r!7292)) (regOne!31451 (regTwo!31451 r!7292)))) (= lambda!294378 lambda!294369))))

(declare-fun bs!1268422 () Bool)

(assert (= bs!1268422 (and b!5498600 b!5498528)))

(assert (=> bs!1268422 (not (= lambda!294378 lambda!294376))))

(declare-fun bs!1268423 () Bool)

(assert (= bs!1268423 (and b!5498600 b!5498283)))

(assert (=> bs!1268423 (not (= lambda!294378 lambda!294370))))

(declare-fun bs!1268424 () Bool)

(assert (= bs!1268424 (and b!5498600 b!5498532)))

(assert (=> bs!1268424 (= (and (= (reg!15798 (regTwo!31451 (regOne!31451 r!7292))) (reg!15798 (regTwo!31451 (regTwo!31451 r!7292)))) (= (regTwo!31451 (regOne!31451 r!7292)) (regTwo!31451 (regTwo!31451 r!7292)))) (= lambda!294378 lambda!294375))))

(declare-fun bs!1268425 () Bool)

(assert (= bs!1268425 (and b!5498600 b!5497682)))

(assert (=> bs!1268425 (= (and (= (reg!15798 (regTwo!31451 (regOne!31451 r!7292))) (reg!15798 (regTwo!31451 r!7292))) (= (regTwo!31451 (regOne!31451 r!7292)) (regTwo!31451 r!7292))) (= lambda!294378 lambda!294350))))

(declare-fun bs!1268426 () Bool)

(assert (= bs!1268426 (and b!5498600 b!5497183)))

(assert (=> bs!1268426 (not (= lambda!294378 lambda!294317))))

(declare-fun bs!1268427 () Bool)

(assert (= bs!1268427 (and b!5498600 b!5497703)))

(assert (=> bs!1268427 (not (= lambda!294378 lambda!294353))))

(declare-fun bs!1268428 () Bool)

(assert (= bs!1268428 (and b!5498600 b!5497707)))

(assert (=> bs!1268428 (= (and (= (reg!15798 (regTwo!31451 (regOne!31451 r!7292))) (reg!15798 (regOne!31451 r!7292))) (= (regTwo!31451 (regOne!31451 r!7292)) (regOne!31451 r!7292))) (= lambda!294378 lambda!294352))))

(declare-fun bs!1268429 () Bool)

(assert (= bs!1268429 (and b!5498600 b!5497187)))

(assert (=> bs!1268429 (= (and (= (reg!15798 (regTwo!31451 (regOne!31451 r!7292))) (reg!15798 r!7292)) (= (regTwo!31451 (regOne!31451 r!7292)) r!7292)) (= lambda!294378 lambda!294316))))

(declare-fun bs!1268430 () Bool)

(assert (= bs!1268430 (and b!5498600 b!5498128)))

(assert (=> bs!1268430 (not (= lambda!294378 lambda!294368))))

(declare-fun bs!1268431 () Bool)

(assert (= bs!1268431 (and b!5498600 b!5498132)))

(assert (=> bs!1268431 (= (and (= (reg!15798 (regTwo!31451 (regOne!31451 r!7292))) (reg!15798 (regOne!31451 (regOne!31451 r!7292)))) (= (regTwo!31451 (regOne!31451 r!7292)) (regOne!31451 (regOne!31451 r!7292)))) (= lambda!294378 lambda!294366))))

(declare-fun bs!1268432 () Bool)

(assert (= bs!1268432 (and b!5498600 b!5497678)))

(assert (=> bs!1268432 (not (= lambda!294378 lambda!294351))))

(assert (=> b!5498600 true))

(assert (=> b!5498600 true))

(declare-fun bs!1268433 () Bool)

(declare-fun b!5498596 () Bool)

(assert (= bs!1268433 (and b!5498596 b!5498287)))

(declare-fun lambda!294379 () Int)

(assert (=> bs!1268433 (not (= lambda!294379 lambda!294369))))

(declare-fun bs!1268434 () Bool)

(assert (= bs!1268434 (and b!5498596 b!5498528)))

(assert (=> bs!1268434 (= (and (= (regOne!31450 (regTwo!31451 (regOne!31451 r!7292))) (regOne!31450 (regTwo!31451 (regTwo!31451 r!7292)))) (= (regTwo!31450 (regTwo!31451 (regOne!31451 r!7292))) (regTwo!31450 (regTwo!31451 (regTwo!31451 r!7292))))) (= lambda!294379 lambda!294376))))

(declare-fun bs!1268435 () Bool)

(assert (= bs!1268435 (and b!5498596 b!5498283)))

(assert (=> bs!1268435 (= (and (= (regOne!31450 (regTwo!31451 (regOne!31451 r!7292))) (regOne!31450 (regOne!31451 (regTwo!31451 r!7292)))) (= (regTwo!31450 (regTwo!31451 (regOne!31451 r!7292))) (regTwo!31450 (regOne!31451 (regTwo!31451 r!7292))))) (= lambda!294379 lambda!294370))))

(declare-fun bs!1268436 () Bool)

(assert (= bs!1268436 (and b!5498596 b!5498532)))

(assert (=> bs!1268436 (not (= lambda!294379 lambda!294375))))

(declare-fun bs!1268437 () Bool)

(assert (= bs!1268437 (and b!5498596 b!5497682)))

(assert (=> bs!1268437 (not (= lambda!294379 lambda!294350))))

(declare-fun bs!1268438 () Bool)

(assert (= bs!1268438 (and b!5498596 b!5497183)))

(assert (=> bs!1268438 (= (and (= (regOne!31450 (regTwo!31451 (regOne!31451 r!7292))) (regOne!31450 r!7292)) (= (regTwo!31450 (regTwo!31451 (regOne!31451 r!7292))) (regTwo!31450 r!7292))) (= lambda!294379 lambda!294317))))

(declare-fun bs!1268439 () Bool)

(assert (= bs!1268439 (and b!5498596 b!5497703)))

(assert (=> bs!1268439 (= (and (= (regOne!31450 (regTwo!31451 (regOne!31451 r!7292))) (regOne!31450 (regOne!31451 r!7292))) (= (regTwo!31450 (regTwo!31451 (regOne!31451 r!7292))) (regTwo!31450 (regOne!31451 r!7292)))) (= lambda!294379 lambda!294353))))

(declare-fun bs!1268440 () Bool)

(assert (= bs!1268440 (and b!5498596 b!5497707)))

(assert (=> bs!1268440 (not (= lambda!294379 lambda!294352))))

(declare-fun bs!1268441 () Bool)

(assert (= bs!1268441 (and b!5498596 b!5498600)))

(assert (=> bs!1268441 (not (= lambda!294379 lambda!294378))))

(declare-fun bs!1268442 () Bool)

(assert (= bs!1268442 (and b!5498596 b!5497187)))

(assert (=> bs!1268442 (not (= lambda!294379 lambda!294316))))

(declare-fun bs!1268443 () Bool)

(assert (= bs!1268443 (and b!5498596 b!5498128)))

(assert (=> bs!1268443 (= (and (= (regOne!31450 (regTwo!31451 (regOne!31451 r!7292))) (regOne!31450 (regOne!31451 (regOne!31451 r!7292)))) (= (regTwo!31450 (regTwo!31451 (regOne!31451 r!7292))) (regTwo!31450 (regOne!31451 (regOne!31451 r!7292))))) (= lambda!294379 lambda!294368))))

(declare-fun bs!1268444 () Bool)

(assert (= bs!1268444 (and b!5498596 b!5498132)))

(assert (=> bs!1268444 (not (= lambda!294379 lambda!294366))))

(declare-fun bs!1268445 () Bool)

(assert (= bs!1268445 (and b!5498596 b!5497678)))

(assert (=> bs!1268445 (= (and (= (regOne!31450 (regTwo!31451 (regOne!31451 r!7292))) (regOne!31450 (regTwo!31451 r!7292))) (= (regTwo!31450 (regTwo!31451 (regOne!31451 r!7292))) (regTwo!31450 (regTwo!31451 r!7292)))) (= lambda!294379 lambda!294351))))

(assert (=> b!5498596 true))

(assert (=> b!5498596 true))

(declare-fun b!5498592 () Bool)

(declare-fun e!3401438 () Bool)

(declare-fun e!3401439 () Bool)

(assert (=> b!5498592 (= e!3401438 e!3401439)))

(declare-fun c!960272 () Bool)

(assert (=> b!5498592 (= c!960272 ((_ is Star!15469) (regTwo!31451 (regOne!31451 r!7292))))))

(declare-fun b!5498593 () Bool)

(declare-fun e!3401441 () Bool)

(declare-fun e!3401442 () Bool)

(assert (=> b!5498593 (= e!3401441 e!3401442)))

(declare-fun res!2344087 () Bool)

(assert (=> b!5498593 (= res!2344087 (not ((_ is EmptyLang!15469) (regTwo!31451 (regOne!31451 r!7292)))))))

(assert (=> b!5498593 (=> (not res!2344087) (not e!3401442))))

(declare-fun b!5498594 () Bool)

(declare-fun e!3401437 () Bool)

(assert (=> b!5498594 (= e!3401438 e!3401437)))

(declare-fun res!2344088 () Bool)

(assert (=> b!5498594 (= res!2344088 (matchRSpec!2572 (regOne!31451 (regTwo!31451 (regOne!31451 r!7292))) s!2326))))

(assert (=> b!5498594 (=> res!2344088 e!3401437)))

(declare-fun b!5498595 () Bool)

(declare-fun e!3401436 () Bool)

(assert (=> b!5498595 (= e!3401436 (= s!2326 (Cons!62584 (c!959839 (regTwo!31451 (regOne!31451 r!7292))) Nil!62584)))))

(declare-fun d!1743208 () Bool)

(declare-fun c!960273 () Bool)

(assert (=> d!1743208 (= c!960273 ((_ is EmptyExpr!15469) (regTwo!31451 (regOne!31451 r!7292))))))

(assert (=> d!1743208 (= (matchRSpec!2572 (regTwo!31451 (regOne!31451 r!7292)) s!2326) e!3401441)))

(declare-fun call!405762 () Bool)

(assert (=> b!5498596 (= e!3401439 call!405762)))

(declare-fun b!5498597 () Bool)

(declare-fun c!960271 () Bool)

(assert (=> b!5498597 (= c!960271 ((_ is ElementMatch!15469) (regTwo!31451 (regOne!31451 r!7292))))))

(assert (=> b!5498597 (= e!3401442 e!3401436)))

(declare-fun b!5498598 () Bool)

(declare-fun call!405761 () Bool)

(assert (=> b!5498598 (= e!3401441 call!405761)))

(declare-fun b!5498599 () Bool)

(assert (=> b!5498599 (= e!3401437 (matchRSpec!2572 (regTwo!31451 (regTwo!31451 (regOne!31451 r!7292))) s!2326))))

(declare-fun bm!405756 () Bool)

(assert (=> bm!405756 (= call!405762 (Exists!2577 (ite c!960272 lambda!294378 lambda!294379)))))

(declare-fun e!3401440 () Bool)

(assert (=> b!5498600 (= e!3401440 call!405762)))

(declare-fun b!5498601 () Bool)

(declare-fun res!2344086 () Bool)

(assert (=> b!5498601 (=> res!2344086 e!3401440)))

(assert (=> b!5498601 (= res!2344086 call!405761)))

(assert (=> b!5498601 (= e!3401439 e!3401440)))

(declare-fun b!5498602 () Bool)

(declare-fun c!960274 () Bool)

(assert (=> b!5498602 (= c!960274 ((_ is Union!15469) (regTwo!31451 (regOne!31451 r!7292))))))

(assert (=> b!5498602 (= e!3401436 e!3401438)))

(declare-fun bm!405757 () Bool)

(assert (=> bm!405757 (= call!405761 (isEmpty!34380 s!2326))))

(assert (= (and d!1743208 c!960273) b!5498598))

(assert (= (and d!1743208 (not c!960273)) b!5498593))

(assert (= (and b!5498593 res!2344087) b!5498597))

(assert (= (and b!5498597 c!960271) b!5498595))

(assert (= (and b!5498597 (not c!960271)) b!5498602))

(assert (= (and b!5498602 c!960274) b!5498594))

(assert (= (and b!5498602 (not c!960274)) b!5498592))

(assert (= (and b!5498594 (not res!2344088)) b!5498599))

(assert (= (and b!5498592 c!960272) b!5498601))

(assert (= (and b!5498592 (not c!960272)) b!5498596))

(assert (= (and b!5498601 (not res!2344086)) b!5498600))

(assert (= (or b!5498600 b!5498596) bm!405756))

(assert (= (or b!5498598 b!5498601) bm!405757))

(declare-fun m!6507556 () Bool)

(assert (=> b!5498594 m!6507556))

(declare-fun m!6507558 () Bool)

(assert (=> b!5498599 m!6507558))

(declare-fun m!6507560 () Bool)

(assert (=> bm!405756 m!6507560))

(assert (=> bm!405757 m!6506636))

(assert (=> b!5497706 d!1743208))

(declare-fun b!5498603 () Bool)

(declare-fun res!2344096 () Bool)

(declare-fun e!3401449 () Bool)

(assert (=> b!5498603 (=> res!2344096 e!3401449)))

(declare-fun e!3401447 () Bool)

(assert (=> b!5498603 (= res!2344096 e!3401447)))

(declare-fun res!2344089 () Bool)

(assert (=> b!5498603 (=> (not res!2344089) (not e!3401447))))

(declare-fun lt!2243034 () Bool)

(assert (=> b!5498603 (= res!2344089 lt!2243034)))

(declare-fun b!5498604 () Bool)

(declare-fun e!3401445 () Bool)

(assert (=> b!5498604 (= e!3401445 (not (= (head!11775 (tail!10870 s!2326)) (c!959839 (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326))))))))

(declare-fun b!5498605 () Bool)

(declare-fun e!3401444 () Bool)

(assert (=> b!5498605 (= e!3401444 (matchR!7654 (derivativeStep!4351 (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326)) (head!11775 (tail!10870 s!2326))) (tail!10870 (tail!10870 s!2326))))))

(declare-fun b!5498606 () Bool)

(declare-fun e!3401448 () Bool)

(declare-fun call!405763 () Bool)

(assert (=> b!5498606 (= e!3401448 (= lt!2243034 call!405763))))

(declare-fun b!5498607 () Bool)

(declare-fun res!2344094 () Bool)

(assert (=> b!5498607 (=> (not res!2344094) (not e!3401447))))

(assert (=> b!5498607 (= res!2344094 (not call!405763))))

(declare-fun bm!405758 () Bool)

(assert (=> bm!405758 (= call!405763 (isEmpty!34380 (tail!10870 s!2326)))))

(declare-fun b!5498608 () Bool)

(declare-fun res!2344095 () Bool)

(assert (=> b!5498608 (=> (not res!2344095) (not e!3401447))))

(assert (=> b!5498608 (= res!2344095 (isEmpty!34380 (tail!10870 (tail!10870 s!2326))))))

(declare-fun d!1743210 () Bool)

(assert (=> d!1743210 e!3401448))

(declare-fun c!960275 () Bool)

(assert (=> d!1743210 (= c!960275 ((_ is EmptyExpr!15469) (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326))))))

(assert (=> d!1743210 (= lt!2243034 e!3401444)))

(declare-fun c!960276 () Bool)

(assert (=> d!1743210 (= c!960276 (isEmpty!34380 (tail!10870 s!2326)))))

(assert (=> d!1743210 (validRegex!7205 (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326)))))

(assert (=> d!1743210 (= (matchR!7654 (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326)) (tail!10870 s!2326)) lt!2243034)))

(declare-fun b!5498609 () Bool)

(declare-fun res!2344091 () Bool)

(assert (=> b!5498609 (=> res!2344091 e!3401449)))

(assert (=> b!5498609 (= res!2344091 (not ((_ is ElementMatch!15469) (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326)))))))

(declare-fun e!3401443 () Bool)

(assert (=> b!5498609 (= e!3401443 e!3401449)))

(declare-fun b!5498610 () Bool)

(declare-fun e!3401446 () Bool)

(assert (=> b!5498610 (= e!3401446 e!3401445)))

(declare-fun res!2344092 () Bool)

(assert (=> b!5498610 (=> res!2344092 e!3401445)))

(assert (=> b!5498610 (= res!2344092 call!405763)))

(declare-fun b!5498611 () Bool)

(assert (=> b!5498611 (= e!3401449 e!3401446)))

(declare-fun res!2344093 () Bool)

(assert (=> b!5498611 (=> (not res!2344093) (not e!3401446))))

(assert (=> b!5498611 (= res!2344093 (not lt!2243034))))

(declare-fun b!5498612 () Bool)

(assert (=> b!5498612 (= e!3401447 (= (head!11775 (tail!10870 s!2326)) (c!959839 (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326)))))))

(declare-fun b!5498613 () Bool)

(assert (=> b!5498613 (= e!3401444 (nullable!5512 (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326))))))

(declare-fun b!5498614 () Bool)

(assert (=> b!5498614 (= e!3401443 (not lt!2243034))))

(declare-fun b!5498615 () Bool)

(assert (=> b!5498615 (= e!3401448 e!3401443)))

(declare-fun c!960277 () Bool)

(assert (=> b!5498615 (= c!960277 ((_ is EmptyLang!15469) (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326))))))

(declare-fun b!5498616 () Bool)

(declare-fun res!2344090 () Bool)

(assert (=> b!5498616 (=> res!2344090 e!3401445)))

(assert (=> b!5498616 (= res!2344090 (not (isEmpty!34380 (tail!10870 (tail!10870 s!2326)))))))

(assert (= (and d!1743210 c!960276) b!5498613))

(assert (= (and d!1743210 (not c!960276)) b!5498605))

(assert (= (and d!1743210 c!960275) b!5498606))

(assert (= (and d!1743210 (not c!960275)) b!5498615))

(assert (= (and b!5498615 c!960277) b!5498614))

(assert (= (and b!5498615 (not c!960277)) b!5498609))

(assert (= (and b!5498609 (not res!2344091)) b!5498603))

(assert (= (and b!5498603 res!2344089) b!5498607))

(assert (= (and b!5498607 res!2344094) b!5498608))

(assert (= (and b!5498608 res!2344095) b!5498612))

(assert (= (and b!5498603 (not res!2344096)) b!5498611))

(assert (= (and b!5498611 res!2344093) b!5498610))

(assert (= (and b!5498610 (not res!2344092)) b!5498616))

(assert (= (and b!5498616 (not res!2344090)) b!5498604))

(assert (= (or b!5498606 b!5498607 b!5498610) bm!405758))

(assert (=> b!5498613 m!6506894))

(declare-fun m!6507562 () Bool)

(assert (=> b!5498613 m!6507562))

(assert (=> b!5498605 m!6506684))

(assert (=> b!5498605 m!6507310))

(assert (=> b!5498605 m!6506894))

(assert (=> b!5498605 m!6507310))

(declare-fun m!6507564 () Bool)

(assert (=> b!5498605 m!6507564))

(assert (=> b!5498605 m!6506684))

(assert (=> b!5498605 m!6507314))

(assert (=> b!5498605 m!6507564))

(assert (=> b!5498605 m!6507314))

(declare-fun m!6507566 () Bool)

(assert (=> b!5498605 m!6507566))

(assert (=> b!5498612 m!6506684))

(assert (=> b!5498612 m!6507310))

(assert (=> b!5498604 m!6506684))

(assert (=> b!5498604 m!6507310))

(assert (=> b!5498608 m!6506684))

(assert (=> b!5498608 m!6507314))

(assert (=> b!5498608 m!6507314))

(assert (=> b!5498608 m!6507318))

(assert (=> b!5498616 m!6506684))

(assert (=> b!5498616 m!6507314))

(assert (=> b!5498616 m!6507314))

(assert (=> b!5498616 m!6507318))

(assert (=> bm!405758 m!6506684))

(assert (=> bm!405758 m!6506688))

(assert (=> d!1743210 m!6506684))

(assert (=> d!1743210 m!6506688))

(assert (=> d!1743210 m!6506894))

(declare-fun m!6507568 () Bool)

(assert (=> d!1743210 m!6507568))

(assert (=> b!5497687 d!1743210))

(declare-fun b!5498617 () Bool)

(declare-fun e!3401452 () Regex!15469)

(declare-fun e!3401453 () Regex!15469)

(assert (=> b!5498617 (= e!3401452 e!3401453)))

(declare-fun c!960282 () Bool)

(assert (=> b!5498617 (= c!960282 ((_ is Star!15469) (regTwo!31451 r!7292)))))

(declare-fun b!5498618 () Bool)

(declare-fun c!960281 () Bool)

(assert (=> b!5498618 (= c!960281 (nullable!5512 (regOne!31450 (regTwo!31451 r!7292))))))

(declare-fun e!3401450 () Regex!15469)

(assert (=> b!5498618 (= e!3401453 e!3401450)))

(declare-fun b!5498619 () Bool)

(declare-fun e!3401451 () Regex!15469)

(declare-fun e!3401454 () Regex!15469)

(assert (=> b!5498619 (= e!3401451 e!3401454)))

(declare-fun c!960280 () Bool)

(assert (=> b!5498619 (= c!960280 ((_ is ElementMatch!15469) (regTwo!31451 r!7292)))))

(declare-fun b!5498620 () Bool)

(declare-fun call!405767 () Regex!15469)

(declare-fun call!405766 () Regex!15469)

(assert (=> b!5498620 (= e!3401452 (Union!15469 call!405767 call!405766))))

(declare-fun bm!405760 () Bool)

(declare-fun call!405765 () Regex!15469)

(assert (=> bm!405760 (= call!405765 call!405766)))

(declare-fun b!5498621 () Bool)

(declare-fun call!405764 () Regex!15469)

(assert (=> b!5498621 (= e!3401450 (Union!15469 (Concat!24314 call!405767 (regTwo!31450 (regTwo!31451 r!7292))) call!405764))))

(declare-fun b!5498622 () Bool)

(assert (=> b!5498622 (= e!3401454 (ite (= (head!11775 s!2326) (c!959839 (regTwo!31451 r!7292))) EmptyExpr!15469 EmptyLang!15469))))

(declare-fun b!5498623 () Bool)

(declare-fun c!960279 () Bool)

(assert (=> b!5498623 (= c!960279 ((_ is Union!15469) (regTwo!31451 r!7292)))))

(assert (=> b!5498623 (= e!3401454 e!3401452)))

(declare-fun b!5498624 () Bool)

(assert (=> b!5498624 (= e!3401453 (Concat!24314 call!405765 (regTwo!31451 r!7292)))))

(declare-fun bm!405761 () Bool)

(assert (=> bm!405761 (= call!405766 (derivativeStep!4351 (ite c!960279 (regTwo!31451 (regTwo!31451 r!7292)) (ite c!960282 (reg!15798 (regTwo!31451 r!7292)) (ite c!960281 (regTwo!31450 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292))))) (head!11775 s!2326)))))

(declare-fun b!5498625 () Bool)

(assert (=> b!5498625 (= e!3401450 (Union!15469 (Concat!24314 call!405764 (regTwo!31450 (regTwo!31451 r!7292))) EmptyLang!15469))))

(declare-fun b!5498626 () Bool)

(assert (=> b!5498626 (= e!3401451 EmptyLang!15469)))

(declare-fun bm!405762 () Bool)

(assert (=> bm!405762 (= call!405764 call!405765)))

(declare-fun bm!405759 () Bool)

(assert (=> bm!405759 (= call!405767 (derivativeStep!4351 (ite c!960279 (regOne!31451 (regTwo!31451 r!7292)) (regOne!31450 (regTwo!31451 r!7292))) (head!11775 s!2326)))))

(declare-fun d!1743212 () Bool)

(declare-fun lt!2243035 () Regex!15469)

(assert (=> d!1743212 (validRegex!7205 lt!2243035)))

(assert (=> d!1743212 (= lt!2243035 e!3401451)))

(declare-fun c!960278 () Bool)

(assert (=> d!1743212 (= c!960278 (or ((_ is EmptyExpr!15469) (regTwo!31451 r!7292)) ((_ is EmptyLang!15469) (regTwo!31451 r!7292))))))

(assert (=> d!1743212 (validRegex!7205 (regTwo!31451 r!7292))))

(assert (=> d!1743212 (= (derivativeStep!4351 (regTwo!31451 r!7292) (head!11775 s!2326)) lt!2243035)))

(assert (= (and d!1743212 c!960278) b!5498626))

(assert (= (and d!1743212 (not c!960278)) b!5498619))

(assert (= (and b!5498619 c!960280) b!5498622))

(assert (= (and b!5498619 (not c!960280)) b!5498623))

(assert (= (and b!5498623 c!960279) b!5498620))

(assert (= (and b!5498623 (not c!960279)) b!5498617))

(assert (= (and b!5498617 c!960282) b!5498624))

(assert (= (and b!5498617 (not c!960282)) b!5498618))

(assert (= (and b!5498618 c!960281) b!5498621))

(assert (= (and b!5498618 (not c!960281)) b!5498625))

(assert (= (or b!5498621 b!5498625) bm!405762))

(assert (= (or b!5498624 bm!405762) bm!405760))

(assert (= (or b!5498620 bm!405760) bm!405761))

(assert (= (or b!5498620 b!5498621) bm!405759))

(assert (=> b!5498618 m!6506930))

(assert (=> bm!405761 m!6506680))

(declare-fun m!6507570 () Bool)

(assert (=> bm!405761 m!6507570))

(assert (=> bm!405759 m!6506680))

(declare-fun m!6507572 () Bool)

(assert (=> bm!405759 m!6507572))

(declare-fun m!6507574 () Bool)

(assert (=> d!1743212 m!6507574))

(assert (=> d!1743212 m!6506898))

(assert (=> b!5497687 d!1743212))

(assert (=> b!5497687 d!1743058))

(assert (=> b!5497687 d!1743086))

(assert (=> b!5497181 d!1742878))

(declare-fun d!1743214 () Bool)

(declare-fun c!960285 () Bool)

(assert (=> d!1743214 (= c!960285 ((_ is Nil!62583) lt!2243013))))

(declare-fun e!3401457 () (InoxSet Context!9706))

(assert (=> d!1743214 (= (content!11239 lt!2243013) e!3401457)))

(declare-fun b!5498631 () Bool)

(assert (=> b!5498631 (= e!3401457 ((as const (Array Context!9706 Bool)) false))))

(declare-fun b!5498632 () Bool)

(assert (=> b!5498632 (= e!3401457 ((_ map or) (store ((as const (Array Context!9706 Bool)) false) (h!69031 lt!2243013) true) (content!11239 (t!375940 lt!2243013))))))

(assert (= (and d!1743214 c!960285) b!5498631))

(assert (= (and d!1743214 (not c!960285)) b!5498632))

(declare-fun m!6507576 () Bool)

(assert (=> b!5498632 m!6507576))

(declare-fun m!6507578 () Bool)

(assert (=> b!5498632 m!6507578))

(assert (=> b!5497726 d!1743214))

(assert (=> b!5497299 d!1743058))

(assert (=> b!5497690 d!1743150))

(assert (=> b!5497690 d!1743086))

(declare-fun b!5498633 () Bool)

(declare-fun e!3401458 () Bool)

(declare-fun tp!1512856 () Bool)

(declare-fun tp!1512857 () Bool)

(assert (=> b!5498633 (= e!3401458 (and tp!1512856 tp!1512857))))

(assert (=> b!5497788 (= tp!1512668 e!3401458)))

(assert (= (and b!5497788 ((_ is Cons!62582) (exprs!5353 setElem!36417))) b!5498633))

(declare-fun b!5498637 () Bool)

(declare-fun e!3401459 () Bool)

(declare-fun tp!1512858 () Bool)

(declare-fun tp!1512861 () Bool)

(assert (=> b!5498637 (= e!3401459 (and tp!1512858 tp!1512861))))

(declare-fun b!5498635 () Bool)

(declare-fun tp!1512860 () Bool)

(declare-fun tp!1512862 () Bool)

(assert (=> b!5498635 (= e!3401459 (and tp!1512860 tp!1512862))))

(declare-fun b!5498636 () Bool)

(declare-fun tp!1512859 () Bool)

(assert (=> b!5498636 (= e!3401459 tp!1512859)))

(declare-fun b!5498634 () Bool)

(assert (=> b!5498634 (= e!3401459 tp_is_empty!40191)))

(assert (=> b!5497774 (= tp!1512647 e!3401459)))

(assert (= (and b!5497774 ((_ is ElementMatch!15469) (regOne!31451 (regTwo!31450 r!7292)))) b!5498634))

(assert (= (and b!5497774 ((_ is Concat!24314) (regOne!31451 (regTwo!31450 r!7292)))) b!5498635))

(assert (= (and b!5497774 ((_ is Star!15469) (regOne!31451 (regTwo!31450 r!7292)))) b!5498636))

(assert (= (and b!5497774 ((_ is Union!15469) (regOne!31451 (regTwo!31450 r!7292)))) b!5498637))

(declare-fun b!5498641 () Bool)

(declare-fun e!3401460 () Bool)

(declare-fun tp!1512863 () Bool)

(declare-fun tp!1512866 () Bool)

(assert (=> b!5498641 (= e!3401460 (and tp!1512863 tp!1512866))))

(declare-fun b!5498639 () Bool)

(declare-fun tp!1512865 () Bool)

(declare-fun tp!1512867 () Bool)

(assert (=> b!5498639 (= e!3401460 (and tp!1512865 tp!1512867))))

(declare-fun b!5498640 () Bool)

(declare-fun tp!1512864 () Bool)

(assert (=> b!5498640 (= e!3401460 tp!1512864)))

(declare-fun b!5498638 () Bool)

(assert (=> b!5498638 (= e!3401460 tp_is_empty!40191)))

(assert (=> b!5497774 (= tp!1512650 e!3401460)))

(assert (= (and b!5497774 ((_ is ElementMatch!15469) (regTwo!31451 (regTwo!31450 r!7292)))) b!5498638))

(assert (= (and b!5497774 ((_ is Concat!24314) (regTwo!31451 (regTwo!31450 r!7292)))) b!5498639))

(assert (= (and b!5497774 ((_ is Star!15469) (regTwo!31451 (regTwo!31450 r!7292)))) b!5498640))

(assert (= (and b!5497774 ((_ is Union!15469) (regTwo!31451 (regTwo!31450 r!7292)))) b!5498641))

(declare-fun condSetEmpty!36425 () Bool)

(assert (=> setNonEmpty!36417 (= condSetEmpty!36425 (= setRest!36417 ((as const (Array Context!9706 Bool)) false)))))

(declare-fun setRes!36425 () Bool)

(assert (=> setNonEmpty!36417 (= tp!1512667 setRes!36425)))

(declare-fun setIsEmpty!36425 () Bool)

(assert (=> setIsEmpty!36425 setRes!36425))

(declare-fun setElem!36425 () Context!9706)

(declare-fun tp!1512868 () Bool)

(declare-fun setNonEmpty!36425 () Bool)

(declare-fun e!3401461 () Bool)

(assert (=> setNonEmpty!36425 (= setRes!36425 (and tp!1512868 (inv!81919 setElem!36425) e!3401461))))

(declare-fun setRest!36425 () (InoxSet Context!9706))

(assert (=> setNonEmpty!36425 (= setRest!36417 ((_ map or) (store ((as const (Array Context!9706 Bool)) false) setElem!36425 true) setRest!36425))))

(declare-fun b!5498642 () Bool)

(declare-fun tp!1512869 () Bool)

(assert (=> b!5498642 (= e!3401461 tp!1512869)))

(assert (= (and setNonEmpty!36417 condSetEmpty!36425) setIsEmpty!36425))

(assert (= (and setNonEmpty!36417 (not condSetEmpty!36425)) setNonEmpty!36425))

(assert (= setNonEmpty!36425 b!5498642))

(declare-fun m!6507580 () Bool)

(assert (=> setNonEmpty!36425 m!6507580))

(declare-fun b!5498646 () Bool)

(declare-fun e!3401462 () Bool)

(declare-fun tp!1512870 () Bool)

(declare-fun tp!1512873 () Bool)

(assert (=> b!5498646 (= e!3401462 (and tp!1512870 tp!1512873))))

(declare-fun b!5498644 () Bool)

(declare-fun tp!1512872 () Bool)

(declare-fun tp!1512874 () Bool)

(assert (=> b!5498644 (= e!3401462 (and tp!1512872 tp!1512874))))

(declare-fun b!5498645 () Bool)

(declare-fun tp!1512871 () Bool)

(assert (=> b!5498645 (= e!3401462 tp!1512871)))

(declare-fun b!5498643 () Bool)

(assert (=> b!5498643 (= e!3401462 tp_is_empty!40191)))

(assert (=> b!5497773 (= tp!1512648 e!3401462)))

(assert (= (and b!5497773 ((_ is ElementMatch!15469) (reg!15798 (regTwo!31450 r!7292)))) b!5498643))

(assert (= (and b!5497773 ((_ is Concat!24314) (reg!15798 (regTwo!31450 r!7292)))) b!5498644))

(assert (= (and b!5497773 ((_ is Star!15469) (reg!15798 (regTwo!31450 r!7292)))) b!5498645))

(assert (= (and b!5497773 ((_ is Union!15469) (reg!15798 (regTwo!31450 r!7292)))) b!5498646))

(declare-fun b!5498650 () Bool)

(declare-fun e!3401463 () Bool)

(declare-fun tp!1512875 () Bool)

(declare-fun tp!1512878 () Bool)

(assert (=> b!5498650 (= e!3401463 (and tp!1512875 tp!1512878))))

(declare-fun b!5498648 () Bool)

(declare-fun tp!1512877 () Bool)

(declare-fun tp!1512879 () Bool)

(assert (=> b!5498648 (= e!3401463 (and tp!1512877 tp!1512879))))

(declare-fun b!5498649 () Bool)

(declare-fun tp!1512876 () Bool)

(assert (=> b!5498649 (= e!3401463 tp!1512876)))

(declare-fun b!5498647 () Bool)

(assert (=> b!5498647 (= e!3401463 tp_is_empty!40191)))

(assert (=> b!5497802 (= tp!1512682 e!3401463)))

(assert (= (and b!5497802 ((_ is ElementMatch!15469) (h!69030 (exprs!5353 (h!69031 zl!343))))) b!5498647))

(assert (= (and b!5497802 ((_ is Concat!24314) (h!69030 (exprs!5353 (h!69031 zl!343))))) b!5498648))

(assert (= (and b!5497802 ((_ is Star!15469) (h!69030 (exprs!5353 (h!69031 zl!343))))) b!5498649))

(assert (= (and b!5497802 ((_ is Union!15469) (h!69030 (exprs!5353 (h!69031 zl!343))))) b!5498650))

(declare-fun b!5498651 () Bool)

(declare-fun e!3401464 () Bool)

(declare-fun tp!1512880 () Bool)

(declare-fun tp!1512881 () Bool)

(assert (=> b!5498651 (= e!3401464 (and tp!1512880 tp!1512881))))

(assert (=> b!5497802 (= tp!1512683 e!3401464)))

(assert (= (and b!5497802 ((_ is Cons!62582) (t!375939 (exprs!5353 (h!69031 zl!343))))) b!5498651))

(declare-fun b!5498655 () Bool)

(declare-fun e!3401465 () Bool)

(declare-fun tp!1512882 () Bool)

(declare-fun tp!1512885 () Bool)

(assert (=> b!5498655 (= e!3401465 (and tp!1512882 tp!1512885))))

(declare-fun b!5498653 () Bool)

(declare-fun tp!1512884 () Bool)

(declare-fun tp!1512886 () Bool)

(assert (=> b!5498653 (= e!3401465 (and tp!1512884 tp!1512886))))

(declare-fun b!5498654 () Bool)

(declare-fun tp!1512883 () Bool)

(assert (=> b!5498654 (= e!3401465 tp!1512883)))

(declare-fun b!5498652 () Bool)

(assert (=> b!5498652 (= e!3401465 tp_is_empty!40191)))

(assert (=> b!5497772 (= tp!1512649 e!3401465)))

(assert (= (and b!5497772 ((_ is ElementMatch!15469) (regOne!31450 (regTwo!31450 r!7292)))) b!5498652))

(assert (= (and b!5497772 ((_ is Concat!24314) (regOne!31450 (regTwo!31450 r!7292)))) b!5498653))

(assert (= (and b!5497772 ((_ is Star!15469) (regOne!31450 (regTwo!31450 r!7292)))) b!5498654))

(assert (= (and b!5497772 ((_ is Union!15469) (regOne!31450 (regTwo!31450 r!7292)))) b!5498655))

(declare-fun b!5498659 () Bool)

(declare-fun e!3401466 () Bool)

(declare-fun tp!1512887 () Bool)

(declare-fun tp!1512890 () Bool)

(assert (=> b!5498659 (= e!3401466 (and tp!1512887 tp!1512890))))

(declare-fun b!5498657 () Bool)

(declare-fun tp!1512889 () Bool)

(declare-fun tp!1512891 () Bool)

(assert (=> b!5498657 (= e!3401466 (and tp!1512889 tp!1512891))))

(declare-fun b!5498658 () Bool)

(declare-fun tp!1512888 () Bool)

(assert (=> b!5498658 (= e!3401466 tp!1512888)))

(declare-fun b!5498656 () Bool)

(assert (=> b!5498656 (= e!3401466 tp_is_empty!40191)))

(assert (=> b!5497772 (= tp!1512651 e!3401466)))

(assert (= (and b!5497772 ((_ is ElementMatch!15469) (regTwo!31450 (regTwo!31450 r!7292)))) b!5498656))

(assert (= (and b!5497772 ((_ is Concat!24314) (regTwo!31450 (regTwo!31450 r!7292)))) b!5498657))

(assert (= (and b!5497772 ((_ is Star!15469) (regTwo!31450 (regTwo!31450 r!7292)))) b!5498658))

(assert (= (and b!5497772 ((_ is Union!15469) (regTwo!31450 (regTwo!31450 r!7292)))) b!5498659))

(declare-fun b!5498663 () Bool)

(declare-fun e!3401467 () Bool)

(declare-fun tp!1512892 () Bool)

(declare-fun tp!1512895 () Bool)

(assert (=> b!5498663 (= e!3401467 (and tp!1512892 tp!1512895))))

(declare-fun b!5498661 () Bool)

(declare-fun tp!1512894 () Bool)

(declare-fun tp!1512896 () Bool)

(assert (=> b!5498661 (= e!3401467 (and tp!1512894 tp!1512896))))

(declare-fun b!5498662 () Bool)

(declare-fun tp!1512893 () Bool)

(assert (=> b!5498662 (= e!3401467 tp!1512893)))

(declare-fun b!5498660 () Bool)

(assert (=> b!5498660 (= e!3401467 tp_is_empty!40191)))

(assert (=> b!5497779 (= tp!1512656 e!3401467)))

(assert (= (and b!5497779 ((_ is ElementMatch!15469) (h!69030 (exprs!5353 setElem!36411)))) b!5498660))

(assert (= (and b!5497779 ((_ is Concat!24314) (h!69030 (exprs!5353 setElem!36411)))) b!5498661))

(assert (= (and b!5497779 ((_ is Star!15469) (h!69030 (exprs!5353 setElem!36411)))) b!5498662))

(assert (= (and b!5497779 ((_ is Union!15469) (h!69030 (exprs!5353 setElem!36411)))) b!5498663))

(declare-fun b!5498664 () Bool)

(declare-fun e!3401468 () Bool)

(declare-fun tp!1512897 () Bool)

(declare-fun tp!1512898 () Bool)

(assert (=> b!5498664 (= e!3401468 (and tp!1512897 tp!1512898))))

(assert (=> b!5497779 (= tp!1512657 e!3401468)))

(assert (= (and b!5497779 ((_ is Cons!62582) (t!375939 (exprs!5353 setElem!36411)))) b!5498664))

(declare-fun b!5498665 () Bool)

(declare-fun e!3401469 () Bool)

(declare-fun tp!1512899 () Bool)

(assert (=> b!5498665 (= e!3401469 (and tp_is_empty!40191 tp!1512899))))

(assert (=> b!5497793 (= tp!1512671 e!3401469)))

(assert (= (and b!5497793 ((_ is Cons!62584) (t!375941 (t!375941 s!2326)))) b!5498665))

(declare-fun b!5498666 () Bool)

(declare-fun e!3401470 () Bool)

(declare-fun tp!1512900 () Bool)

(declare-fun tp!1512901 () Bool)

(assert (=> b!5498666 (= e!3401470 (and tp!1512900 tp!1512901))))

(assert (=> b!5497756 (= tp!1512630 e!3401470)))

(assert (= (and b!5497756 ((_ is Cons!62582) (exprs!5353 (h!69031 (t!375940 zl!343))))) b!5498666))

(declare-fun b!5498670 () Bool)

(declare-fun e!3401471 () Bool)

(declare-fun tp!1512902 () Bool)

(declare-fun tp!1512905 () Bool)

(assert (=> b!5498670 (= e!3401471 (and tp!1512902 tp!1512905))))

(declare-fun b!5498668 () Bool)

(declare-fun tp!1512904 () Bool)

(declare-fun tp!1512906 () Bool)

(assert (=> b!5498668 (= e!3401471 (and tp!1512904 tp!1512906))))

(declare-fun b!5498669 () Bool)

(declare-fun tp!1512903 () Bool)

(assert (=> b!5498669 (= e!3401471 tp!1512903)))

(declare-fun b!5498667 () Bool)

(assert (=> b!5498667 (= e!3401471 tp_is_empty!40191)))

(assert (=> b!5497801 (= tp!1512677 e!3401471)))

(assert (= (and b!5497801 ((_ is ElementMatch!15469) (regOne!31451 (regTwo!31451 r!7292)))) b!5498667))

(assert (= (and b!5497801 ((_ is Concat!24314) (regOne!31451 (regTwo!31451 r!7292)))) b!5498668))

(assert (= (and b!5497801 ((_ is Star!15469) (regOne!31451 (regTwo!31451 r!7292)))) b!5498669))

(assert (= (and b!5497801 ((_ is Union!15469) (regOne!31451 (regTwo!31451 r!7292)))) b!5498670))

(declare-fun b!5498674 () Bool)

(declare-fun e!3401472 () Bool)

(declare-fun tp!1512907 () Bool)

(declare-fun tp!1512910 () Bool)

(assert (=> b!5498674 (= e!3401472 (and tp!1512907 tp!1512910))))

(declare-fun b!5498672 () Bool)

(declare-fun tp!1512909 () Bool)

(declare-fun tp!1512911 () Bool)

(assert (=> b!5498672 (= e!3401472 (and tp!1512909 tp!1512911))))

(declare-fun b!5498673 () Bool)

(declare-fun tp!1512908 () Bool)

(assert (=> b!5498673 (= e!3401472 tp!1512908)))

(declare-fun b!5498671 () Bool)

(assert (=> b!5498671 (= e!3401472 tp_is_empty!40191)))

(assert (=> b!5497801 (= tp!1512680 e!3401472)))

(assert (= (and b!5497801 ((_ is ElementMatch!15469) (regTwo!31451 (regTwo!31451 r!7292)))) b!5498671))

(assert (= (and b!5497801 ((_ is Concat!24314) (regTwo!31451 (regTwo!31451 r!7292)))) b!5498672))

(assert (= (and b!5497801 ((_ is Star!15469) (regTwo!31451 (regTwo!31451 r!7292)))) b!5498673))

(assert (= (and b!5497801 ((_ is Union!15469) (regTwo!31451 (regTwo!31451 r!7292)))) b!5498674))

(declare-fun b!5498676 () Bool)

(declare-fun e!3401474 () Bool)

(declare-fun tp!1512912 () Bool)

(assert (=> b!5498676 (= e!3401474 tp!1512912)))

(declare-fun tp!1512913 () Bool)

(declare-fun b!5498675 () Bool)

(declare-fun e!3401473 () Bool)

(assert (=> b!5498675 (= e!3401473 (and (inv!81919 (h!69031 (t!375940 (t!375940 zl!343)))) e!3401474 tp!1512913))))

(assert (=> b!5497755 (= tp!1512631 e!3401473)))

(assert (= b!5498675 b!5498676))

(assert (= (and b!5497755 ((_ is Cons!62583) (t!375940 (t!375940 zl!343)))) b!5498675))

(declare-fun m!6507582 () Bool)

(assert (=> b!5498675 m!6507582))

(declare-fun b!5498680 () Bool)

(declare-fun e!3401475 () Bool)

(declare-fun tp!1512914 () Bool)

(declare-fun tp!1512917 () Bool)

(assert (=> b!5498680 (= e!3401475 (and tp!1512914 tp!1512917))))

(declare-fun b!5498678 () Bool)

(declare-fun tp!1512916 () Bool)

(declare-fun tp!1512918 () Bool)

(assert (=> b!5498678 (= e!3401475 (and tp!1512916 tp!1512918))))

(declare-fun b!5498679 () Bool)

(declare-fun tp!1512915 () Bool)

(assert (=> b!5498679 (= e!3401475 tp!1512915)))

(declare-fun b!5498677 () Bool)

(assert (=> b!5498677 (= e!3401475 tp_is_empty!40191)))

(assert (=> b!5497800 (= tp!1512678 e!3401475)))

(assert (= (and b!5497800 ((_ is ElementMatch!15469) (reg!15798 (regTwo!31451 r!7292)))) b!5498677))

(assert (= (and b!5497800 ((_ is Concat!24314) (reg!15798 (regTwo!31451 r!7292)))) b!5498678))

(assert (= (and b!5497800 ((_ is Star!15469) (reg!15798 (regTwo!31451 r!7292)))) b!5498679))

(assert (= (and b!5497800 ((_ is Union!15469) (reg!15798 (regTwo!31451 r!7292)))) b!5498680))

(declare-fun b!5498684 () Bool)

(declare-fun e!3401476 () Bool)

(declare-fun tp!1512919 () Bool)

(declare-fun tp!1512922 () Bool)

(assert (=> b!5498684 (= e!3401476 (and tp!1512919 tp!1512922))))

(declare-fun b!5498682 () Bool)

(declare-fun tp!1512921 () Bool)

(declare-fun tp!1512923 () Bool)

(assert (=> b!5498682 (= e!3401476 (and tp!1512921 tp!1512923))))

(declare-fun b!5498683 () Bool)

(declare-fun tp!1512920 () Bool)

(assert (=> b!5498683 (= e!3401476 tp!1512920)))

(declare-fun b!5498681 () Bool)

(assert (=> b!5498681 (= e!3401476 tp_is_empty!40191)))

(assert (=> b!5497799 (= tp!1512679 e!3401476)))

(assert (= (and b!5497799 ((_ is ElementMatch!15469) (regOne!31450 (regTwo!31451 r!7292)))) b!5498681))

(assert (= (and b!5497799 ((_ is Concat!24314) (regOne!31450 (regTwo!31451 r!7292)))) b!5498682))

(assert (= (and b!5497799 ((_ is Star!15469) (regOne!31450 (regTwo!31451 r!7292)))) b!5498683))

(assert (= (and b!5497799 ((_ is Union!15469) (regOne!31450 (regTwo!31451 r!7292)))) b!5498684))

(declare-fun b!5498688 () Bool)

(declare-fun e!3401477 () Bool)

(declare-fun tp!1512924 () Bool)

(declare-fun tp!1512927 () Bool)

(assert (=> b!5498688 (= e!3401477 (and tp!1512924 tp!1512927))))

(declare-fun b!5498686 () Bool)

(declare-fun tp!1512926 () Bool)

(declare-fun tp!1512928 () Bool)

(assert (=> b!5498686 (= e!3401477 (and tp!1512926 tp!1512928))))

(declare-fun b!5498687 () Bool)

(declare-fun tp!1512925 () Bool)

(assert (=> b!5498687 (= e!3401477 tp!1512925)))

(declare-fun b!5498685 () Bool)

(assert (=> b!5498685 (= e!3401477 tp_is_empty!40191)))

(assert (=> b!5497799 (= tp!1512681 e!3401477)))

(assert (= (and b!5497799 ((_ is ElementMatch!15469) (regTwo!31450 (regTwo!31451 r!7292)))) b!5498685))

(assert (= (and b!5497799 ((_ is Concat!24314) (regTwo!31450 (regTwo!31451 r!7292)))) b!5498686))

(assert (= (and b!5497799 ((_ is Star!15469) (regTwo!31450 (regTwo!31451 r!7292)))) b!5498687))

(assert (= (and b!5497799 ((_ is Union!15469) (regTwo!31450 (regTwo!31451 r!7292)))) b!5498688))

(declare-fun b!5498692 () Bool)

(declare-fun e!3401478 () Bool)

(declare-fun tp!1512929 () Bool)

(declare-fun tp!1512932 () Bool)

(assert (=> b!5498692 (= e!3401478 (and tp!1512929 tp!1512932))))

(declare-fun b!5498690 () Bool)

(declare-fun tp!1512931 () Bool)

(declare-fun tp!1512933 () Bool)

(assert (=> b!5498690 (= e!3401478 (and tp!1512931 tp!1512933))))

(declare-fun b!5498691 () Bool)

(declare-fun tp!1512930 () Bool)

(assert (=> b!5498691 (= e!3401478 tp!1512930)))

(declare-fun b!5498689 () Bool)

(assert (=> b!5498689 (= e!3401478 tp_is_empty!40191)))

(assert (=> b!5497770 (= tp!1512642 e!3401478)))

(assert (= (and b!5497770 ((_ is ElementMatch!15469) (regOne!31451 (regOne!31450 r!7292)))) b!5498689))

(assert (= (and b!5497770 ((_ is Concat!24314) (regOne!31451 (regOne!31450 r!7292)))) b!5498690))

(assert (= (and b!5497770 ((_ is Star!15469) (regOne!31451 (regOne!31450 r!7292)))) b!5498691))

(assert (= (and b!5497770 ((_ is Union!15469) (regOne!31451 (regOne!31450 r!7292)))) b!5498692))

(declare-fun b!5498696 () Bool)

(declare-fun e!3401479 () Bool)

(declare-fun tp!1512934 () Bool)

(declare-fun tp!1512937 () Bool)

(assert (=> b!5498696 (= e!3401479 (and tp!1512934 tp!1512937))))

(declare-fun b!5498694 () Bool)

(declare-fun tp!1512936 () Bool)

(declare-fun tp!1512938 () Bool)

(assert (=> b!5498694 (= e!3401479 (and tp!1512936 tp!1512938))))

(declare-fun b!5498695 () Bool)

(declare-fun tp!1512935 () Bool)

(assert (=> b!5498695 (= e!3401479 tp!1512935)))

(declare-fun b!5498693 () Bool)

(assert (=> b!5498693 (= e!3401479 tp_is_empty!40191)))

(assert (=> b!5497770 (= tp!1512645 e!3401479)))

(assert (= (and b!5497770 ((_ is ElementMatch!15469) (regTwo!31451 (regOne!31450 r!7292)))) b!5498693))

(assert (= (and b!5497770 ((_ is Concat!24314) (regTwo!31451 (regOne!31450 r!7292)))) b!5498694))

(assert (= (and b!5497770 ((_ is Star!15469) (regTwo!31451 (regOne!31450 r!7292)))) b!5498695))

(assert (= (and b!5497770 ((_ is Union!15469) (regTwo!31451 (regOne!31450 r!7292)))) b!5498696))

(declare-fun b!5498700 () Bool)

(declare-fun e!3401480 () Bool)

(declare-fun tp!1512939 () Bool)

(declare-fun tp!1512942 () Bool)

(assert (=> b!5498700 (= e!3401480 (and tp!1512939 tp!1512942))))

(declare-fun b!5498698 () Bool)

(declare-fun tp!1512941 () Bool)

(declare-fun tp!1512943 () Bool)

(assert (=> b!5498698 (= e!3401480 (and tp!1512941 tp!1512943))))

(declare-fun b!5498699 () Bool)

(declare-fun tp!1512940 () Bool)

(assert (=> b!5498699 (= e!3401480 tp!1512940)))

(declare-fun b!5498697 () Bool)

(assert (=> b!5498697 (= e!3401480 tp_is_empty!40191)))

(assert (=> b!5497769 (= tp!1512643 e!3401480)))

(assert (= (and b!5497769 ((_ is ElementMatch!15469) (reg!15798 (regOne!31450 r!7292)))) b!5498697))

(assert (= (and b!5497769 ((_ is Concat!24314) (reg!15798 (regOne!31450 r!7292)))) b!5498698))

(assert (= (and b!5497769 ((_ is Star!15469) (reg!15798 (regOne!31450 r!7292)))) b!5498699))

(assert (= (and b!5497769 ((_ is Union!15469) (reg!15798 (regOne!31450 r!7292)))) b!5498700))

(declare-fun b!5498704 () Bool)

(declare-fun e!3401481 () Bool)

(declare-fun tp!1512944 () Bool)

(declare-fun tp!1512947 () Bool)

(assert (=> b!5498704 (= e!3401481 (and tp!1512944 tp!1512947))))

(declare-fun b!5498702 () Bool)

(declare-fun tp!1512946 () Bool)

(declare-fun tp!1512948 () Bool)

(assert (=> b!5498702 (= e!3401481 (and tp!1512946 tp!1512948))))

(declare-fun b!5498703 () Bool)

(declare-fun tp!1512945 () Bool)

(assert (=> b!5498703 (= e!3401481 tp!1512945)))

(declare-fun b!5498701 () Bool)

(assert (=> b!5498701 (= e!3401481 tp_is_empty!40191)))

(assert (=> b!5497768 (= tp!1512644 e!3401481)))

(assert (= (and b!5497768 ((_ is ElementMatch!15469) (regOne!31450 (regOne!31450 r!7292)))) b!5498701))

(assert (= (and b!5497768 ((_ is Concat!24314) (regOne!31450 (regOne!31450 r!7292)))) b!5498702))

(assert (= (and b!5497768 ((_ is Star!15469) (regOne!31450 (regOne!31450 r!7292)))) b!5498703))

(assert (= (and b!5497768 ((_ is Union!15469) (regOne!31450 (regOne!31450 r!7292)))) b!5498704))

(declare-fun b!5498708 () Bool)

(declare-fun e!3401482 () Bool)

(declare-fun tp!1512949 () Bool)

(declare-fun tp!1512952 () Bool)

(assert (=> b!5498708 (= e!3401482 (and tp!1512949 tp!1512952))))

(declare-fun b!5498706 () Bool)

(declare-fun tp!1512951 () Bool)

(declare-fun tp!1512953 () Bool)

(assert (=> b!5498706 (= e!3401482 (and tp!1512951 tp!1512953))))

(declare-fun b!5498707 () Bool)

(declare-fun tp!1512950 () Bool)

(assert (=> b!5498707 (= e!3401482 tp!1512950)))

(declare-fun b!5498705 () Bool)

(assert (=> b!5498705 (= e!3401482 tp_is_empty!40191)))

(assert (=> b!5497768 (= tp!1512646 e!3401482)))

(assert (= (and b!5497768 ((_ is ElementMatch!15469) (regTwo!31450 (regOne!31450 r!7292)))) b!5498705))

(assert (= (and b!5497768 ((_ is Concat!24314) (regTwo!31450 (regOne!31450 r!7292)))) b!5498706))

(assert (= (and b!5497768 ((_ is Star!15469) (regTwo!31450 (regOne!31450 r!7292)))) b!5498707))

(assert (= (and b!5497768 ((_ is Union!15469) (regTwo!31450 (regOne!31450 r!7292)))) b!5498708))

(declare-fun b!5498712 () Bool)

(declare-fun e!3401483 () Bool)

(declare-fun tp!1512954 () Bool)

(declare-fun tp!1512957 () Bool)

(assert (=> b!5498712 (= e!3401483 (and tp!1512954 tp!1512957))))

(declare-fun b!5498710 () Bool)

(declare-fun tp!1512956 () Bool)

(declare-fun tp!1512958 () Bool)

(assert (=> b!5498710 (= e!3401483 (and tp!1512956 tp!1512958))))

(declare-fun b!5498711 () Bool)

(declare-fun tp!1512955 () Bool)

(assert (=> b!5498711 (= e!3401483 tp!1512955)))

(declare-fun b!5498709 () Bool)

(assert (=> b!5498709 (= e!3401483 tp_is_empty!40191)))

(assert (=> b!5497783 (= tp!1512658 e!3401483)))

(assert (= (and b!5497783 ((_ is ElementMatch!15469) (regOne!31451 (reg!15798 r!7292)))) b!5498709))

(assert (= (and b!5497783 ((_ is Concat!24314) (regOne!31451 (reg!15798 r!7292)))) b!5498710))

(assert (= (and b!5497783 ((_ is Star!15469) (regOne!31451 (reg!15798 r!7292)))) b!5498711))

(assert (= (and b!5497783 ((_ is Union!15469) (regOne!31451 (reg!15798 r!7292)))) b!5498712))

(declare-fun b!5498716 () Bool)

(declare-fun e!3401484 () Bool)

(declare-fun tp!1512959 () Bool)

(declare-fun tp!1512962 () Bool)

(assert (=> b!5498716 (= e!3401484 (and tp!1512959 tp!1512962))))

(declare-fun b!5498714 () Bool)

(declare-fun tp!1512961 () Bool)

(declare-fun tp!1512963 () Bool)

(assert (=> b!5498714 (= e!3401484 (and tp!1512961 tp!1512963))))

(declare-fun b!5498715 () Bool)

(declare-fun tp!1512960 () Bool)

(assert (=> b!5498715 (= e!3401484 tp!1512960)))

(declare-fun b!5498713 () Bool)

(assert (=> b!5498713 (= e!3401484 tp_is_empty!40191)))

(assert (=> b!5497783 (= tp!1512661 e!3401484)))

(assert (= (and b!5497783 ((_ is ElementMatch!15469) (regTwo!31451 (reg!15798 r!7292)))) b!5498713))

(assert (= (and b!5497783 ((_ is Concat!24314) (regTwo!31451 (reg!15798 r!7292)))) b!5498714))

(assert (= (and b!5497783 ((_ is Star!15469) (regTwo!31451 (reg!15798 r!7292)))) b!5498715))

(assert (= (and b!5497783 ((_ is Union!15469) (regTwo!31451 (reg!15798 r!7292)))) b!5498716))

(declare-fun b!5498720 () Bool)

(declare-fun e!3401485 () Bool)

(declare-fun tp!1512964 () Bool)

(declare-fun tp!1512967 () Bool)

(assert (=> b!5498720 (= e!3401485 (and tp!1512964 tp!1512967))))

(declare-fun b!5498718 () Bool)

(declare-fun tp!1512966 () Bool)

(declare-fun tp!1512968 () Bool)

(assert (=> b!5498718 (= e!3401485 (and tp!1512966 tp!1512968))))

(declare-fun b!5498719 () Bool)

(declare-fun tp!1512965 () Bool)

(assert (=> b!5498719 (= e!3401485 tp!1512965)))

(declare-fun b!5498717 () Bool)

(assert (=> b!5498717 (= e!3401485 tp_is_empty!40191)))

(assert (=> b!5497782 (= tp!1512659 e!3401485)))

(assert (= (and b!5497782 ((_ is ElementMatch!15469) (reg!15798 (reg!15798 r!7292)))) b!5498717))

(assert (= (and b!5497782 ((_ is Concat!24314) (reg!15798 (reg!15798 r!7292)))) b!5498718))

(assert (= (and b!5497782 ((_ is Star!15469) (reg!15798 (reg!15798 r!7292)))) b!5498719))

(assert (= (and b!5497782 ((_ is Union!15469) (reg!15798 (reg!15798 r!7292)))) b!5498720))

(declare-fun b!5498724 () Bool)

(declare-fun e!3401486 () Bool)

(declare-fun tp!1512969 () Bool)

(declare-fun tp!1512972 () Bool)

(assert (=> b!5498724 (= e!3401486 (and tp!1512969 tp!1512972))))

(declare-fun b!5498722 () Bool)

(declare-fun tp!1512971 () Bool)

(declare-fun tp!1512973 () Bool)

(assert (=> b!5498722 (= e!3401486 (and tp!1512971 tp!1512973))))

(declare-fun b!5498723 () Bool)

(declare-fun tp!1512970 () Bool)

(assert (=> b!5498723 (= e!3401486 tp!1512970)))

(declare-fun b!5498721 () Bool)

(assert (=> b!5498721 (= e!3401486 tp_is_empty!40191)))

(assert (=> b!5497797 (= tp!1512672 e!3401486)))

(assert (= (and b!5497797 ((_ is ElementMatch!15469) (regOne!31451 (regOne!31451 r!7292)))) b!5498721))

(assert (= (and b!5497797 ((_ is Concat!24314) (regOne!31451 (regOne!31451 r!7292)))) b!5498722))

(assert (= (and b!5497797 ((_ is Star!15469) (regOne!31451 (regOne!31451 r!7292)))) b!5498723))

(assert (= (and b!5497797 ((_ is Union!15469) (regOne!31451 (regOne!31451 r!7292)))) b!5498724))

(declare-fun b!5498728 () Bool)

(declare-fun e!3401487 () Bool)

(declare-fun tp!1512974 () Bool)

(declare-fun tp!1512977 () Bool)

(assert (=> b!5498728 (= e!3401487 (and tp!1512974 tp!1512977))))

(declare-fun b!5498726 () Bool)

(declare-fun tp!1512976 () Bool)

(declare-fun tp!1512978 () Bool)

(assert (=> b!5498726 (= e!3401487 (and tp!1512976 tp!1512978))))

(declare-fun b!5498727 () Bool)

(declare-fun tp!1512975 () Bool)

(assert (=> b!5498727 (= e!3401487 tp!1512975)))

(declare-fun b!5498725 () Bool)

(assert (=> b!5498725 (= e!3401487 tp_is_empty!40191)))

(assert (=> b!5497797 (= tp!1512675 e!3401487)))

(assert (= (and b!5497797 ((_ is ElementMatch!15469) (regTwo!31451 (regOne!31451 r!7292)))) b!5498725))

(assert (= (and b!5497797 ((_ is Concat!24314) (regTwo!31451 (regOne!31451 r!7292)))) b!5498726))

(assert (= (and b!5497797 ((_ is Star!15469) (regTwo!31451 (regOne!31451 r!7292)))) b!5498727))

(assert (= (and b!5497797 ((_ is Union!15469) (regTwo!31451 (regOne!31451 r!7292)))) b!5498728))

(declare-fun b!5498732 () Bool)

(declare-fun e!3401488 () Bool)

(declare-fun tp!1512979 () Bool)

(declare-fun tp!1512982 () Bool)

(assert (=> b!5498732 (= e!3401488 (and tp!1512979 tp!1512982))))

(declare-fun b!5498730 () Bool)

(declare-fun tp!1512981 () Bool)

(declare-fun tp!1512983 () Bool)

(assert (=> b!5498730 (= e!3401488 (and tp!1512981 tp!1512983))))

(declare-fun b!5498731 () Bool)

(declare-fun tp!1512980 () Bool)

(assert (=> b!5498731 (= e!3401488 tp!1512980)))

(declare-fun b!5498729 () Bool)

(assert (=> b!5498729 (= e!3401488 tp_is_empty!40191)))

(assert (=> b!5497781 (= tp!1512660 e!3401488)))

(assert (= (and b!5497781 ((_ is ElementMatch!15469) (regOne!31450 (reg!15798 r!7292)))) b!5498729))

(assert (= (and b!5497781 ((_ is Concat!24314) (regOne!31450 (reg!15798 r!7292)))) b!5498730))

(assert (= (and b!5497781 ((_ is Star!15469) (regOne!31450 (reg!15798 r!7292)))) b!5498731))

(assert (= (and b!5497781 ((_ is Union!15469) (regOne!31450 (reg!15798 r!7292)))) b!5498732))

(declare-fun b!5498736 () Bool)

(declare-fun e!3401489 () Bool)

(declare-fun tp!1512984 () Bool)

(declare-fun tp!1512987 () Bool)

(assert (=> b!5498736 (= e!3401489 (and tp!1512984 tp!1512987))))

(declare-fun b!5498734 () Bool)

(declare-fun tp!1512986 () Bool)

(declare-fun tp!1512988 () Bool)

(assert (=> b!5498734 (= e!3401489 (and tp!1512986 tp!1512988))))

(declare-fun b!5498735 () Bool)

(declare-fun tp!1512985 () Bool)

(assert (=> b!5498735 (= e!3401489 tp!1512985)))

(declare-fun b!5498733 () Bool)

(assert (=> b!5498733 (= e!3401489 tp_is_empty!40191)))

(assert (=> b!5497781 (= tp!1512662 e!3401489)))

(assert (= (and b!5497781 ((_ is ElementMatch!15469) (regTwo!31450 (reg!15798 r!7292)))) b!5498733))

(assert (= (and b!5497781 ((_ is Concat!24314) (regTwo!31450 (reg!15798 r!7292)))) b!5498734))

(assert (= (and b!5497781 ((_ is Star!15469) (regTwo!31450 (reg!15798 r!7292)))) b!5498735))

(assert (= (and b!5497781 ((_ is Union!15469) (regTwo!31450 (reg!15798 r!7292)))) b!5498736))

(declare-fun b!5498740 () Bool)

(declare-fun e!3401490 () Bool)

(declare-fun tp!1512989 () Bool)

(declare-fun tp!1512992 () Bool)

(assert (=> b!5498740 (= e!3401490 (and tp!1512989 tp!1512992))))

(declare-fun b!5498738 () Bool)

(declare-fun tp!1512991 () Bool)

(declare-fun tp!1512993 () Bool)

(assert (=> b!5498738 (= e!3401490 (and tp!1512991 tp!1512993))))

(declare-fun b!5498739 () Bool)

(declare-fun tp!1512990 () Bool)

(assert (=> b!5498739 (= e!3401490 tp!1512990)))

(declare-fun b!5498737 () Bool)

(assert (=> b!5498737 (= e!3401490 tp_is_empty!40191)))

(assert (=> b!5497796 (= tp!1512673 e!3401490)))

(assert (= (and b!5497796 ((_ is ElementMatch!15469) (reg!15798 (regOne!31451 r!7292)))) b!5498737))

(assert (= (and b!5497796 ((_ is Concat!24314) (reg!15798 (regOne!31451 r!7292)))) b!5498738))

(assert (= (and b!5497796 ((_ is Star!15469) (reg!15798 (regOne!31451 r!7292)))) b!5498739))

(assert (= (and b!5497796 ((_ is Union!15469) (reg!15798 (regOne!31451 r!7292)))) b!5498740))

(declare-fun b!5498744 () Bool)

(declare-fun e!3401491 () Bool)

(declare-fun tp!1512994 () Bool)

(declare-fun tp!1512997 () Bool)

(assert (=> b!5498744 (= e!3401491 (and tp!1512994 tp!1512997))))

(declare-fun b!5498742 () Bool)

(declare-fun tp!1512996 () Bool)

(declare-fun tp!1512998 () Bool)

(assert (=> b!5498742 (= e!3401491 (and tp!1512996 tp!1512998))))

(declare-fun b!5498743 () Bool)

(declare-fun tp!1512995 () Bool)

(assert (=> b!5498743 (= e!3401491 tp!1512995)))

(declare-fun b!5498741 () Bool)

(assert (=> b!5498741 (= e!3401491 tp_is_empty!40191)))

(assert (=> b!5497795 (= tp!1512674 e!3401491)))

(assert (= (and b!5497795 ((_ is ElementMatch!15469) (regOne!31450 (regOne!31451 r!7292)))) b!5498741))

(assert (= (and b!5497795 ((_ is Concat!24314) (regOne!31450 (regOne!31451 r!7292)))) b!5498742))

(assert (= (and b!5497795 ((_ is Star!15469) (regOne!31450 (regOne!31451 r!7292)))) b!5498743))

(assert (= (and b!5497795 ((_ is Union!15469) (regOne!31450 (regOne!31451 r!7292)))) b!5498744))

(declare-fun b!5498748 () Bool)

(declare-fun e!3401492 () Bool)

(declare-fun tp!1512999 () Bool)

(declare-fun tp!1513002 () Bool)

(assert (=> b!5498748 (= e!3401492 (and tp!1512999 tp!1513002))))

(declare-fun b!5498746 () Bool)

(declare-fun tp!1513001 () Bool)

(declare-fun tp!1513003 () Bool)

(assert (=> b!5498746 (= e!3401492 (and tp!1513001 tp!1513003))))

(declare-fun b!5498747 () Bool)

(declare-fun tp!1513000 () Bool)

(assert (=> b!5498747 (= e!3401492 tp!1513000)))

(declare-fun b!5498745 () Bool)

(assert (=> b!5498745 (= e!3401492 tp_is_empty!40191)))

(assert (=> b!5497795 (= tp!1512676 e!3401492)))

(assert (= (and b!5497795 ((_ is ElementMatch!15469) (regTwo!31450 (regOne!31451 r!7292)))) b!5498745))

(assert (= (and b!5497795 ((_ is Concat!24314) (regTwo!31450 (regOne!31451 r!7292)))) b!5498746))

(assert (= (and b!5497795 ((_ is Star!15469) (regTwo!31450 (regOne!31451 r!7292)))) b!5498747))

(assert (= (and b!5497795 ((_ is Union!15469) (regTwo!31450 (regOne!31451 r!7292)))) b!5498748))

(declare-fun b_lambda!208559 () Bool)

(assert (= b_lambda!208555 (or d!1742848 b_lambda!208559)))

(declare-fun bs!1268446 () Bool)

(declare-fun d!1743216 () Bool)

(assert (= bs!1268446 (and d!1743216 d!1742848)))

(assert (=> bs!1268446 (= (dynLambda!24462 lambda!294339 (h!69030 (exprs!5353 setElem!36411))) (validRegex!7205 (h!69030 (exprs!5353 setElem!36411))))))

(declare-fun m!6507584 () Bool)

(assert (=> bs!1268446 m!6507584))

(assert (=> b!5498511 d!1743216))

(declare-fun b_lambda!208561 () Bool)

(assert (= b_lambda!208551 (or d!1742864 b_lambda!208561)))

(declare-fun bs!1268447 () Bool)

(declare-fun d!1743218 () Bool)

(assert (= bs!1268447 (and d!1743218 d!1742864)))

(assert (=> bs!1268447 (= (dynLambda!24462 lambda!294343 (h!69030 (unfocusZipperList!897 zl!343))) (validRegex!7205 (h!69030 (unfocusZipperList!897 zl!343))))))

(declare-fun m!6507586 () Bool)

(assert (=> bs!1268447 m!6507586))

(assert (=> b!5498488 d!1743218))

(declare-fun b_lambda!208563 () Bool)

(assert (= b_lambda!208553 (or b!5497053 b_lambda!208563)))

(assert (=> d!1743160 d!1742888))

(declare-fun b_lambda!208565 () Bool)

(assert (= b_lambda!208549 (or d!1742782 b_lambda!208565)))

(declare-fun bs!1268448 () Bool)

(declare-fun d!1743220 () Bool)

(assert (= bs!1268448 (and d!1743220 d!1742782)))

(assert (=> bs!1268448 (= (dynLambda!24462 lambda!294304 (h!69030 (exprs!5353 (h!69031 zl!343)))) (validRegex!7205 (h!69030 (exprs!5353 (h!69031 zl!343)))))))

(declare-fun m!6507588 () Bool)

(assert (=> bs!1268448 m!6507588))

(assert (=> b!5498468 d!1743220))

(declare-fun b_lambda!208567 () Bool)

(assert (= b_lambda!208557 (or d!1742866 b_lambda!208567)))

(declare-fun bs!1268449 () Bool)

(declare-fun d!1743222 () Bool)

(assert (= bs!1268449 (and d!1743222 d!1742866)))

(assert (=> bs!1268449 (= (dynLambda!24462 lambda!294346 (h!69030 lt!2243003)) (validRegex!7205 (h!69030 lt!2243003)))))

(declare-fun m!6507590 () Bool)

(assert (=> bs!1268449 m!6507590))

(assert (=> b!5498577 d!1743222))

(declare-fun b_lambda!208569 () Bool)

(assert (= b_lambda!208547 (or d!1742868 b_lambda!208569)))

(declare-fun bs!1268450 () Bool)

(declare-fun d!1743224 () Bool)

(assert (= bs!1268450 (and d!1743224 d!1742868)))

(assert (=> bs!1268450 (= (dynLambda!24462 lambda!294349 (h!69030 (exprs!5353 (h!69031 zl!343)))) (validRegex!7205 (h!69030 (exprs!5353 (h!69031 zl!343)))))))

(assert (=> bs!1268450 m!6507588))

(assert (=> b!5498374 d!1743224))

(check-sat (not bm!405657) (not b!5498680) (not b!5498451) (not b_lambda!208563) (not b!5498318) (not b!5498715) (not d!1743078) (not b!5498330) (not d!1743166) (not b!5498286) (not b!5498310) (not b!5498684) (not b!5498608) (not d!1743210) (not b!5498474) (not bm!405747) (not b_lambda!208561) (not bm!405712) (not bm!405717) (not b!5498327) (not b!5498567) (not b!5498612) (not b!5498543) (not b!5498743) (not b!5498579) (not b!5498599) (not b!5498313) (not bm!405663) (not b_lambda!208559) (not b!5498388) (not b!5498736) (not b!5498326) (not bm!405689) (not bm!405668) (not bm!405711) (not b!5498691) (not b!5498439) (not b!5498526) (not b!5498724) (not bm!405667) (not bm!405714) (not setNonEmpty!36424) (not b!5498309) (not b!5498682) (not bm!405723) (not bm!405724) (not d!1743212) (not bs!1268448) (not b!5498448) (not b!5498664) tp_is_empty!40191 (not b!5498316) (not b!5498281) (not bm!405656) (not d!1743080) (not bm!405751) (not b!5498731) (not b!5498747) (not d!1743120) (not b!5498322) (not b!5498314) (not b!5498512) (not b!5498727) (not b!5498616) (not b!5498635) (not bm!405688) (not b!5498510) (not b!5498706) (not b!5498131) (not setNonEmpty!36425) (not b!5498645) (not bm!405682) (not b!5498421) (not b!5498185) (not d!1743146) (not b_lambda!208521) (not b!5498704) (not b!5498683) (not b!5498703) (not b!5498126) (not b!5498716) (not b!5498576) (not d!1743116) (not bm!405736) (not bs!1268450) (not b!5498644) (not b!5498700) (not d!1743106) (not b!5498352) (not d!1743154) (not b!5498531) (not b!5498483) (not bm!405720) (not b!5498718) (not bm!405687) (not bm!405738) (not b!5498735) (not b!5498427) (not b!5498640) (not b!5498746) (not b!5498605) (not b!5498460) (not bm!405756) (not b!5498710) (not d!1743092) (not d!1743094) (not b!5498739) (not b!5498503) (not b!5498708) (not b!5498687) (not b!5498578) (not d!1743084) (not bm!405695) (not b!5498742) (not d!1743138) (not b!5498692) (not b!5498659) (not b!5498678) (not b!5498688) (not b!5498655) (not b!5498699) (not b!5498538) (not b!5498308) (not d!1743134) (not bm!405757) (not d!1743182) (not bm!405700) (not b!5498657) (not b!5498744) (not b!5498730) (not b_lambda!208569) (not b!5498679) (not b!5498665) (not b!5498720) (not bm!405739) (not d!1743098) (not d!1743202) (not bm!405729) (not b!5498604) (not bm!405721) (not b!5498594) (not b!5498375) (not bm!405708) (not b!5498672) (not b!5498539) (not b!5498673) (not b!5498639) (not b!5498632) (not b!5498574) (not b!5498649) (not bm!405753) (not b!5498365) (not b!5498413) (not bm!405726) (not b!5498707) (not b!5498650) (not b!5498728) (not bm!405759) (not b!5498584) (not b!5498666) (not b!5498494) (not b!5498723) (not bm!405697) (not bm!405666) (not b!5498675) (not d!1743130) (not b!5498734) (not b!5498311) (not b!5498554) (not b!5498319) (not d!1743060) (not bm!405705) (not bm!405732) (not bm!405750) (not d!1743110) (not b!5498633) (not b!5498516) (not b!5498618) (not bm!405706) (not d!1743194) (not b!5498694) (not b!5498450) (not b!5498469) (not b!5498642) (not d!1743192) (not bm!405694) (not b_lambda!208567) (not b!5498422) (not b!5498648) (not b!5498674) (not b!5498653) (not b!5498670) (not b!5498711) (not bm!405730) (not bm!405727) (not bm!405691) (not b!5498641) (not b!5498449) (not b!5498389) (not b!5498740) (not b!5498669) (not bm!405664) (not b!5498702) (not bm!405679) (not bm!405741) (not b!5498676) (not b!5498636) (not b!5498414) (not bm!405745) (not b_lambda!208565) (not bm!405737) (not bm!405761) (not b!5498658) (not bm!405758) (not b!5498695) (not b!5498417) (not b!5498654) (not bs!1268449) (not bm!405703) (not d!1743076) (not bm!405718) (not b!5498719) (not bm!405677) (not b!5498456) (not b!5498454) (not bm!405684) (not b!5498646) (not b!5498566) (not b!5498613) (not b!5498425) (not d!1743124) (not b!5498686) (not bm!405701) (not bm!405735) (not b!5498722) (not b!5498696) (not b!5498662) (not b!5498380) (not b!5498489) (not b!5498698) (not b!5498393) (not bm!405744) (not b!5498663) (not b!5498712) (not bs!1268447) (not d!1743118) (not bm!405681) (not b!5498651) (not d!1743160) (not b!5498690) (not b!5498726) (not bm!405685) (not b!5498748) (not b!5498732) (not d!1743158) (not b!5498661) (not b!5498738) (not b!5498575) (not b!5498447) (not b!5498637) (not b!5498714) (not b!5498404) (not bs!1268446) (not d!1743082) (not b!5498668))
(check-sat)
