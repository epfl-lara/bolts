; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574570 () Bool)

(assert start!574570)

(declare-fun b!5500704 () Bool)

(assert (=> b!5500704 true))

(declare-fun b!5500698 () Bool)

(declare-fun e!3402571 () Bool)

(declare-fun tp!1513551 () Bool)

(assert (=> b!5500698 (= e!3402571 tp!1513551)))

(declare-fun b!5500699 () Bool)

(declare-fun res!2344686 () Bool)

(declare-fun e!3402569 () Bool)

(assert (=> b!5500699 (=> res!2344686 e!3402569)))

(declare-datatypes ((C!31216 0))(
  ( (C!31217 (val!25310 Int)) )
))
(declare-datatypes ((Regex!15473 0))(
  ( (ElementMatch!15473 (c!960763 C!31216)) (Concat!24318 (regOne!31458 Regex!15473) (regTwo!31458 Regex!15473)) (EmptyExpr!15473) (Star!15473 (reg!15802 Regex!15473)) (EmptyLang!15473) (Union!15473 (regOne!31459 Regex!15473) (regTwo!31459 Regex!15473)) )
))
(declare-fun r!7292 () Regex!15473)

(declare-datatypes ((List!62718 0))(
  ( (Nil!62594) (Cons!62594 (h!69042 Regex!15473) (t!375955 List!62718)) )
))
(declare-datatypes ((Context!9714 0))(
  ( (Context!9715 (exprs!5357 List!62718)) )
))
(declare-datatypes ((List!62719 0))(
  ( (Nil!62595) (Cons!62595 (h!69043 Context!9714) (t!375956 List!62719)) )
))
(declare-fun zl!343 () List!62719)

(declare-fun generalisedConcat!1088 (List!62718) Regex!15473)

(assert (=> b!5500699 (= res!2344686 (not (= r!7292 (generalisedConcat!1088 (exprs!5357 (h!69043 zl!343))))))))

(declare-fun res!2344689 () Bool)

(declare-fun e!3402561 () Bool)

(assert (=> start!574570 (=> (not res!2344689) (not e!3402561))))

(declare-fun validRegex!7209 (Regex!15473) Bool)

(assert (=> start!574570 (= res!2344689 (validRegex!7209 r!7292))))

(assert (=> start!574570 e!3402561))

(assert (=> start!574570 e!3402571))

(declare-fun condSetEmpty!36451 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9714))

(assert (=> start!574570 (= condSetEmpty!36451 (= z!1189 ((as const (Array Context!9714 Bool)) false)))))

(declare-fun setRes!36451 () Bool)

(assert (=> start!574570 setRes!36451))

(declare-fun e!3402564 () Bool)

(assert (=> start!574570 e!3402564))

(declare-fun e!3402567 () Bool)

(assert (=> start!574570 e!3402567))

(declare-fun b!5500700 () Bool)

(declare-fun e!3402572 () Bool)

(assert (=> b!5500700 (= e!3402569 e!3402572)))

(declare-fun res!2344698 () Bool)

(assert (=> b!5500700 (=> res!2344698 e!3402572)))

(declare-datatypes ((List!62720 0))(
  ( (Nil!62596) (Cons!62596 (h!69044 C!31216) (t!375957 List!62720)) )
))
(declare-fun s!2326 () List!62720)

(declare-fun lt!2243260 () Bool)

(declare-fun lt!2243266 () Bool)

(declare-fun lt!2243267 () Bool)

(get-info :version)

(assert (=> b!5500700 (= res!2344698 (or (not (= lt!2243260 (or lt!2243266 lt!2243267))) ((_ is Nil!62596) s!2326)))))

(declare-fun matchRSpec!2576 (Regex!15473 List!62720) Bool)

(assert (=> b!5500700 (= lt!2243267 (matchRSpec!2576 (regTwo!31459 r!7292) s!2326))))

(declare-fun matchR!7658 (Regex!15473 List!62720) Bool)

(assert (=> b!5500700 (= lt!2243267 (matchR!7658 (regTwo!31459 r!7292) s!2326))))

(declare-datatypes ((Unit!155406 0))(
  ( (Unit!155407) )
))
(declare-fun lt!2243269 () Unit!155406)

(declare-fun mainMatchTheorem!2576 (Regex!15473 List!62720) Unit!155406)

(assert (=> b!5500700 (= lt!2243269 (mainMatchTheorem!2576 (regTwo!31459 r!7292) s!2326))))

(assert (=> b!5500700 (= lt!2243266 (matchRSpec!2576 (regOne!31459 r!7292) s!2326))))

(assert (=> b!5500700 (= lt!2243266 (matchR!7658 (regOne!31459 r!7292) s!2326))))

(declare-fun lt!2243274 () Unit!155406)

(assert (=> b!5500700 (= lt!2243274 (mainMatchTheorem!2576 (regOne!31459 r!7292) s!2326))))

(declare-fun b!5500701 () Bool)

(declare-fun res!2344688 () Bool)

(assert (=> b!5500701 (=> res!2344688 e!3402569)))

(declare-fun generalisedUnion!1336 (List!62718) Regex!15473)

(declare-fun unfocusZipperList!901 (List!62719) List!62718)

(assert (=> b!5500701 (= res!2344688 (not (= r!7292 (generalisedUnion!1336 (unfocusZipperList!901 zl!343)))))))

(declare-fun setElem!36451 () Context!9714)

(declare-fun e!3402566 () Bool)

(declare-fun tp!1513555 () Bool)

(declare-fun setNonEmpty!36451 () Bool)

(declare-fun inv!81929 (Context!9714) Bool)

(assert (=> setNonEmpty!36451 (= setRes!36451 (and tp!1513555 (inv!81929 setElem!36451) e!3402566))))

(declare-fun setRest!36451 () (InoxSet Context!9714))

(assert (=> setNonEmpty!36451 (= z!1189 ((_ map or) (store ((as const (Array Context!9714 Bool)) false) setElem!36451 true) setRest!36451))))

(declare-fun b!5500702 () Bool)

(declare-fun res!2344700 () Bool)

(assert (=> b!5500702 (=> res!2344700 e!3402569)))

(assert (=> b!5500702 (= res!2344700 (not ((_ is Cons!62594) (exprs!5357 (h!69043 zl!343)))))))

(declare-fun b!5500703 () Bool)

(declare-fun res!2344697 () Bool)

(assert (=> b!5500703 (=> res!2344697 e!3402569)))

(declare-fun isEmpty!34389 (List!62719) Bool)

(assert (=> b!5500703 (= res!2344697 (not (isEmpty!34389 (t!375956 zl!343))))))

(declare-fun e!3402560 () Bool)

(declare-fun e!3402563 () Bool)

(assert (=> b!5500704 (= e!3402560 e!3402563)))

(declare-fun res!2344695 () Bool)

(assert (=> b!5500704 (=> res!2344695 e!3402563)))

(declare-fun lt!2243270 () (InoxSet Context!9714))

(declare-fun derivationStepZipper!1584 ((InoxSet Context!9714) C!31216) (InoxSet Context!9714))

(assert (=> b!5500704 (= res!2344695 (not (= (derivationStepZipper!1584 z!1189 (h!69044 s!2326)) lt!2243270)))))

(declare-fun lambda!294481 () Int)

(declare-fun flatMap!1092 ((InoxSet Context!9714) Int) (InoxSet Context!9714))

(declare-fun derivationStepZipperUp!745 (Context!9714 C!31216) (InoxSet Context!9714))

(assert (=> b!5500704 (= (flatMap!1092 z!1189 lambda!294481) (derivationStepZipperUp!745 (h!69043 zl!343) (h!69044 s!2326)))))

(declare-fun lt!2243271 () Unit!155406)

(declare-fun lemmaFlatMapOnSingletonSet!624 ((InoxSet Context!9714) Context!9714 Int) Unit!155406)

(assert (=> b!5500704 (= lt!2243271 (lemmaFlatMapOnSingletonSet!624 z!1189 (h!69043 zl!343) lambda!294481))))

(declare-fun b!5500705 () Bool)

(declare-fun e!3402562 () Bool)

(declare-fun tp!1513553 () Bool)

(assert (=> b!5500705 (= e!3402562 tp!1513553)))

(declare-fun b!5500706 () Bool)

(declare-fun res!2344690 () Bool)

(assert (=> b!5500706 (=> res!2344690 e!3402569)))

(assert (=> b!5500706 (= res!2344690 (or ((_ is EmptyExpr!15473) r!7292) ((_ is EmptyLang!15473) r!7292) ((_ is ElementMatch!15473) r!7292) (not ((_ is Union!15473) r!7292))))))

(declare-fun b!5500707 () Bool)

(declare-fun tp_is_empty!40199 () Bool)

(assert (=> b!5500707 (= e!3402571 tp_is_empty!40199)))

(declare-fun b!5500708 () Bool)

(assert (=> b!5500708 (= e!3402561 (not e!3402569))))

(declare-fun res!2344692 () Bool)

(assert (=> b!5500708 (=> res!2344692 e!3402569)))

(assert (=> b!5500708 (= res!2344692 (not ((_ is Cons!62595) zl!343)))))

(assert (=> b!5500708 (= lt!2243260 (matchRSpec!2576 r!7292 s!2326))))

(assert (=> b!5500708 (= lt!2243260 (matchR!7658 r!7292 s!2326))))

(declare-fun lt!2243273 () Unit!155406)

(assert (=> b!5500708 (= lt!2243273 (mainMatchTheorem!2576 r!7292 s!2326))))

(declare-fun b!5500709 () Bool)

(declare-fun e!3402570 () Bool)

(declare-fun lt!2243275 () (InoxSet Context!9714))

(declare-fun matchZipper!1641 ((InoxSet Context!9714) List!62720) Bool)

(assert (=> b!5500709 (= e!3402570 (matchZipper!1641 lt!2243275 (t!375957 s!2326)))))

(declare-fun b!5500710 () Bool)

(declare-fun tp!1513559 () Bool)

(declare-fun tp!1513554 () Bool)

(assert (=> b!5500710 (= e!3402571 (and tp!1513559 tp!1513554))))

(declare-fun b!5500711 () Bool)

(declare-fun tp!1513550 () Bool)

(assert (=> b!5500711 (= e!3402566 tp!1513550)))

(declare-fun setIsEmpty!36451 () Bool)

(assert (=> setIsEmpty!36451 setRes!36451))

(declare-fun b!5500712 () Bool)

(declare-fun e!3402565 () Bool)

(assert (=> b!5500712 (= e!3402572 e!3402565)))

(declare-fun res!2344699 () Bool)

(assert (=> b!5500712 (=> res!2344699 e!3402565)))

(declare-fun lt!2243272 () (InoxSet Context!9714))

(declare-fun lt!2243268 () (InoxSet Context!9714))

(assert (=> b!5500712 (= res!2344699 (not (= lt!2243272 lt!2243268)))))

(declare-fun lt!2243261 () Context!9714)

(declare-fun derivationStepZipperDown!819 (Regex!15473 Context!9714 C!31216) (InoxSet Context!9714))

(assert (=> b!5500712 (= lt!2243268 (derivationStepZipperDown!819 r!7292 lt!2243261 (h!69044 s!2326)))))

(assert (=> b!5500712 (= lt!2243261 (Context!9715 Nil!62594))))

(assert (=> b!5500712 (= lt!2243272 (derivationStepZipperUp!745 (Context!9715 (Cons!62594 r!7292 Nil!62594)) (h!69044 s!2326)))))

(declare-fun b!5500713 () Bool)

(declare-fun res!2344691 () Bool)

(assert (=> b!5500713 (=> (not res!2344691) (not e!3402561))))

(declare-fun unfocusZipper!1215 (List!62719) Regex!15473)

(assert (=> b!5500713 (= res!2344691 (= r!7292 (unfocusZipper!1215 zl!343)))))

(declare-fun b!5500714 () Bool)

(declare-fun e!3402568 () Bool)

(declare-fun lt!2243262 () Bool)

(declare-fun lt!2243263 () Bool)

(assert (=> b!5500714 (= e!3402568 (= lt!2243262 lt!2243263))))

(assert (=> b!5500714 (= lt!2243263 lt!2243262)))

(assert (=> b!5500714 (= lt!2243262 e!3402570)))

(declare-fun res!2344687 () Bool)

(assert (=> b!5500714 (=> res!2344687 e!3402570)))

(declare-fun lt!2243265 () (InoxSet Context!9714))

(assert (=> b!5500714 (= res!2344687 (matchZipper!1641 lt!2243265 (t!375957 s!2326)))))

(declare-fun lt!2243264 () Unit!155406)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!530 ((InoxSet Context!9714) (InoxSet Context!9714) List!62720) Unit!155406)

(assert (=> b!5500714 (= lt!2243264 (lemmaZipperConcatMatchesSameAsBothZippers!530 lt!2243265 lt!2243275 (t!375957 s!2326)))))

(declare-fun b!5500715 () Bool)

(declare-fun res!2344693 () Bool)

(assert (=> b!5500715 (=> (not res!2344693) (not e!3402561))))

(declare-fun toList!9257 ((InoxSet Context!9714)) List!62719)

(assert (=> b!5500715 (= res!2344693 (= (toList!9257 z!1189) zl!343))))

(declare-fun tp!1513557 () Bool)

(declare-fun b!5500716 () Bool)

(assert (=> b!5500716 (= e!3402564 (and (inv!81929 (h!69043 zl!343)) e!3402562 tp!1513557))))

(declare-fun b!5500717 () Bool)

(declare-fun tp!1513556 () Bool)

(assert (=> b!5500717 (= e!3402567 (and tp_is_empty!40199 tp!1513556))))

(declare-fun b!5500718 () Bool)

(assert (=> b!5500718 (= e!3402565 e!3402560)))

(declare-fun res!2344696 () Bool)

(assert (=> b!5500718 (=> res!2344696 e!3402560)))

(assert (=> b!5500718 (= res!2344696 (not (= lt!2243268 lt!2243270)))))

(assert (=> b!5500718 (= lt!2243270 ((_ map or) lt!2243265 lt!2243275))))

(assert (=> b!5500718 (= lt!2243275 (derivationStepZipperDown!819 (regTwo!31459 r!7292) lt!2243261 (h!69044 s!2326)))))

(assert (=> b!5500718 (= lt!2243265 (derivationStepZipperDown!819 (regOne!31459 r!7292) lt!2243261 (h!69044 s!2326)))))

(declare-fun b!5500719 () Bool)

(assert (=> b!5500719 (= e!3402563 e!3402568)))

(declare-fun res!2344694 () Bool)

(assert (=> b!5500719 (=> res!2344694 e!3402568)))

(assert (=> b!5500719 (= res!2344694 (not (= lt!2243263 (matchZipper!1641 z!1189 s!2326))))))

(assert (=> b!5500719 (= lt!2243263 (matchZipper!1641 lt!2243270 (t!375957 s!2326)))))

(declare-fun b!5500720 () Bool)

(declare-fun tp!1513552 () Bool)

(declare-fun tp!1513558 () Bool)

(assert (=> b!5500720 (= e!3402571 (and tp!1513552 tp!1513558))))

(assert (= (and start!574570 res!2344689) b!5500715))

(assert (= (and b!5500715 res!2344693) b!5500713))

(assert (= (and b!5500713 res!2344691) b!5500708))

(assert (= (and b!5500708 (not res!2344692)) b!5500703))

(assert (= (and b!5500703 (not res!2344697)) b!5500699))

(assert (= (and b!5500699 (not res!2344686)) b!5500702))

(assert (= (and b!5500702 (not res!2344700)) b!5500701))

(assert (= (and b!5500701 (not res!2344688)) b!5500706))

(assert (= (and b!5500706 (not res!2344690)) b!5500700))

(assert (= (and b!5500700 (not res!2344698)) b!5500712))

(assert (= (and b!5500712 (not res!2344699)) b!5500718))

(assert (= (and b!5500718 (not res!2344696)) b!5500704))

(assert (= (and b!5500704 (not res!2344695)) b!5500719))

(assert (= (and b!5500719 (not res!2344694)) b!5500714))

(assert (= (and b!5500714 (not res!2344687)) b!5500709))

(assert (= (and start!574570 ((_ is ElementMatch!15473) r!7292)) b!5500707))

(assert (= (and start!574570 ((_ is Concat!24318) r!7292)) b!5500720))

(assert (= (and start!574570 ((_ is Star!15473) r!7292)) b!5500698))

(assert (= (and start!574570 ((_ is Union!15473) r!7292)) b!5500710))

(assert (= (and start!574570 condSetEmpty!36451) setIsEmpty!36451))

(assert (= (and start!574570 (not condSetEmpty!36451)) setNonEmpty!36451))

(assert (= setNonEmpty!36451 b!5500711))

(assert (= b!5500716 b!5500705))

(assert (= (and start!574570 ((_ is Cons!62595) zl!343)) b!5500716))

(assert (= (and start!574570 ((_ is Cons!62596) s!2326)) b!5500717))

(declare-fun m!6508834 () Bool)

(assert (=> b!5500716 m!6508834))

(declare-fun m!6508836 () Bool)

(assert (=> start!574570 m!6508836))

(declare-fun m!6508838 () Bool)

(assert (=> b!5500704 m!6508838))

(declare-fun m!6508840 () Bool)

(assert (=> b!5500704 m!6508840))

(declare-fun m!6508842 () Bool)

(assert (=> b!5500704 m!6508842))

(declare-fun m!6508844 () Bool)

(assert (=> b!5500704 m!6508844))

(declare-fun m!6508846 () Bool)

(assert (=> b!5500703 m!6508846))

(declare-fun m!6508848 () Bool)

(assert (=> b!5500701 m!6508848))

(assert (=> b!5500701 m!6508848))

(declare-fun m!6508850 () Bool)

(assert (=> b!5500701 m!6508850))

(declare-fun m!6508852 () Bool)

(assert (=> b!5500709 m!6508852))

(declare-fun m!6508854 () Bool)

(assert (=> setNonEmpty!36451 m!6508854))

(declare-fun m!6508856 () Bool)

(assert (=> b!5500713 m!6508856))

(declare-fun m!6508858 () Bool)

(assert (=> b!5500700 m!6508858))

(declare-fun m!6508860 () Bool)

(assert (=> b!5500700 m!6508860))

(declare-fun m!6508862 () Bool)

(assert (=> b!5500700 m!6508862))

(declare-fun m!6508864 () Bool)

(assert (=> b!5500700 m!6508864))

(declare-fun m!6508866 () Bool)

(assert (=> b!5500700 m!6508866))

(declare-fun m!6508868 () Bool)

(assert (=> b!5500700 m!6508868))

(declare-fun m!6508870 () Bool)

(assert (=> b!5500708 m!6508870))

(declare-fun m!6508872 () Bool)

(assert (=> b!5500708 m!6508872))

(declare-fun m!6508874 () Bool)

(assert (=> b!5500708 m!6508874))

(declare-fun m!6508876 () Bool)

(assert (=> b!5500718 m!6508876))

(declare-fun m!6508878 () Bool)

(assert (=> b!5500718 m!6508878))

(declare-fun m!6508880 () Bool)

(assert (=> b!5500699 m!6508880))

(declare-fun m!6508882 () Bool)

(assert (=> b!5500714 m!6508882))

(declare-fun m!6508884 () Bool)

(assert (=> b!5500714 m!6508884))

(declare-fun m!6508886 () Bool)

(assert (=> b!5500712 m!6508886))

(declare-fun m!6508888 () Bool)

(assert (=> b!5500712 m!6508888))

(declare-fun m!6508890 () Bool)

(assert (=> b!5500719 m!6508890))

(declare-fun m!6508892 () Bool)

(assert (=> b!5500719 m!6508892))

(declare-fun m!6508894 () Bool)

(assert (=> b!5500715 m!6508894))

(check-sat (not b!5500713) (not b!5500705) (not b!5500715) (not setNonEmpty!36451) (not b!5500699) (not b!5500701) (not b!5500720) (not b!5500698) (not b!5500704) (not start!574570) (not b!5500711) (not b!5500718) (not b!5500717) tp_is_empty!40199 (not b!5500714) (not b!5500708) (not b!5500719) (not b!5500709) (not b!5500710) (not b!5500700) (not b!5500716) (not b!5500712) (not b!5500703))
(check-sat)
