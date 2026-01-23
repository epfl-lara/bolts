; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!553570 () Bool)

(assert start!553570)

(declare-fun b!5235794 () Bool)

(assert (=> b!5235794 true))

(assert (=> b!5235794 true))

(declare-fun lambda!263158 () Int)

(declare-fun lambda!263157 () Int)

(assert (=> b!5235794 (not (= lambda!263158 lambda!263157))))

(assert (=> b!5235794 true))

(assert (=> b!5235794 true))

(declare-fun b!5235765 () Bool)

(assert (=> b!5235765 true))

(declare-fun b!5235764 () Bool)

(declare-fun e!3258061 () Bool)

(declare-fun tp!1466785 () Bool)

(declare-fun tp!1466780 () Bool)

(assert (=> b!5235764 (= e!3258061 (and tp!1466785 tp!1466780))))

(declare-fun e!3258060 () Bool)

(declare-fun e!3258064 () Bool)

(assert (=> b!5235765 (= e!3258060 e!3258064)))

(declare-fun res!2222348 () Bool)

(assert (=> b!5235765 (=> res!2222348 e!3258064)))

(declare-datatypes ((C!29932 0))(
  ( (C!29933 (val!24668 Int)) )
))
(declare-datatypes ((Regex!14831 0))(
  ( (ElementMatch!14831 (c!904577 C!29932)) (Concat!23676 (regOne!30174 Regex!14831) (regTwo!30174 Regex!14831)) (EmptyExpr!14831) (Star!14831 (reg!15160 Regex!14831)) (EmptyLang!14831) (Union!14831 (regOne!30175 Regex!14831) (regTwo!30175 Regex!14831)) )
))
(declare-fun r!7292 () Regex!14831)

(declare-datatypes ((List!60792 0))(
  ( (Nil!60668) (Cons!60668 (h!67116 C!29932) (t!373973 List!60792)) )
))
(declare-fun s!2326 () List!60792)

(get-info :version)

(assert (=> b!5235765 (= res!2222348 (or (and ((_ is ElementMatch!14831) (regOne!30174 r!7292)) (= (c!904577 (regOne!30174 r!7292)) (h!67116 s!2326))) (not ((_ is Union!14831) (regOne!30174 r!7292)))))))

(declare-datatypes ((Unit!152662 0))(
  ( (Unit!152663) )
))
(declare-fun lt!2146622 () Unit!152662)

(declare-fun e!3258056 () Unit!152662)

(assert (=> b!5235765 (= lt!2146622 e!3258056)))

(declare-fun c!904574 () Bool)

(declare-datatypes ((List!60793 0))(
  ( (Nil!60669) (Cons!60669 (h!67117 Regex!14831) (t!373974 List!60793)) )
))
(declare-datatypes ((Context!8430 0))(
  ( (Context!8431 (exprs!4715 List!60793)) )
))
(declare-datatypes ((List!60794 0))(
  ( (Nil!60670) (Cons!60670 (h!67118 Context!8430) (t!373975 List!60794)) )
))
(declare-fun zl!343 () List!60794)

(declare-fun nullable!5000 (Regex!14831) Bool)

(assert (=> b!5235765 (= c!904574 (nullable!5000 (h!67117 (exprs!4715 (h!67118 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8430))

(declare-fun lambda!263159 () Int)

(declare-fun flatMap!558 ((InoxSet Context!8430) Int) (InoxSet Context!8430))

(declare-fun derivationStepZipperUp!203 (Context!8430 C!29932) (InoxSet Context!8430))

(assert (=> b!5235765 (= (flatMap!558 z!1189 lambda!263159) (derivationStepZipperUp!203 (h!67118 zl!343) (h!67116 s!2326)))))

(declare-fun lt!2146615 () Unit!152662)

(declare-fun lemmaFlatMapOnSingletonSet!90 ((InoxSet Context!8430) Context!8430 Int) Unit!152662)

(assert (=> b!5235765 (= lt!2146615 (lemmaFlatMapOnSingletonSet!90 z!1189 (h!67118 zl!343) lambda!263159))))

(declare-fun lt!2146625 () (InoxSet Context!8430))

(declare-fun lt!2146595 () Context!8430)

(assert (=> b!5235765 (= lt!2146625 (derivationStepZipperUp!203 lt!2146595 (h!67116 s!2326)))))

(declare-fun lt!2146598 () (InoxSet Context!8430))

(declare-fun derivationStepZipperDown!279 (Regex!14831 Context!8430 C!29932) (InoxSet Context!8430))

(assert (=> b!5235765 (= lt!2146598 (derivationStepZipperDown!279 (h!67117 (exprs!4715 (h!67118 zl!343))) lt!2146595 (h!67116 s!2326)))))

(assert (=> b!5235765 (= lt!2146595 (Context!8431 (t!373974 (exprs!4715 (h!67118 zl!343)))))))

(declare-fun lt!2146613 () (InoxSet Context!8430))

(assert (=> b!5235765 (= lt!2146613 (derivationStepZipperUp!203 (Context!8431 (Cons!60669 (h!67117 (exprs!4715 (h!67118 zl!343))) (t!373974 (exprs!4715 (h!67118 zl!343))))) (h!67116 s!2326)))))

(declare-fun b!5235766 () Bool)

(declare-fun res!2222341 () Bool)

(declare-fun e!3258062 () Bool)

(assert (=> b!5235766 (=> res!2222341 e!3258062)))

(declare-fun isEmpty!32595 (List!60794) Bool)

(assert (=> b!5235766 (= res!2222341 (not (isEmpty!32595 (t!373975 zl!343))))))

(declare-fun b!5235767 () Bool)

(declare-fun e!3258069 () Bool)

(declare-fun lt!2146601 () (InoxSet Context!8430))

(declare-fun matchZipper!1075 ((InoxSet Context!8430) List!60792) Bool)

(assert (=> b!5235767 (= e!3258069 (matchZipper!1075 lt!2146601 (t!373973 s!2326)))))

(declare-fun b!5235768 () Bool)

(declare-fun e!3258067 () Bool)

(assert (=> b!5235768 (= e!3258067 (not e!3258062))))

(declare-fun res!2222343 () Bool)

(assert (=> b!5235768 (=> res!2222343 e!3258062)))

(assert (=> b!5235768 (= res!2222343 (not ((_ is Cons!60670) zl!343)))))

(declare-fun lt!2146607 () Bool)

(declare-fun matchRSpec!1934 (Regex!14831 List!60792) Bool)

(assert (=> b!5235768 (= lt!2146607 (matchRSpec!1934 r!7292 s!2326))))

(declare-fun matchR!7016 (Regex!14831 List!60792) Bool)

(assert (=> b!5235768 (= lt!2146607 (matchR!7016 r!7292 s!2326))))

(declare-fun lt!2146611 () Unit!152662)

(declare-fun mainMatchTheorem!1934 (Regex!14831 List!60792) Unit!152662)

(assert (=> b!5235768 (= lt!2146611 (mainMatchTheorem!1934 r!7292 s!2326))))

(declare-fun b!5235769 () Bool)

(declare-fun e!3258059 () Bool)

(assert (=> b!5235769 (= e!3258059 e!3258067)))

(declare-fun res!2222344 () Bool)

(assert (=> b!5235769 (=> (not res!2222344) (not e!3258067))))

(declare-fun lt!2146623 () Regex!14831)

(assert (=> b!5235769 (= res!2222344 (= r!7292 lt!2146623))))

(declare-fun unfocusZipper!573 (List!60794) Regex!14831)

(assert (=> b!5235769 (= lt!2146623 (unfocusZipper!573 zl!343))))

(declare-fun b!5235770 () Bool)

(declare-fun Unit!152664 () Unit!152662)

(assert (=> b!5235770 (= e!3258056 Unit!152664)))

(declare-fun b!5235771 () Bool)

(declare-fun tp_is_empty!38915 () Bool)

(assert (=> b!5235771 (= e!3258061 tp_is_empty!38915)))

(declare-fun b!5235772 () Bool)

(declare-fun e!3258058 () Bool)

(declare-fun e!3258073 () Bool)

(assert (=> b!5235772 (= e!3258058 e!3258073)))

(declare-fun res!2222337 () Bool)

(assert (=> b!5235772 (=> res!2222337 e!3258073)))

(declare-fun e!3258063 () Bool)

(assert (=> b!5235772 (= res!2222337 e!3258063)))

(declare-fun res!2222351 () Bool)

(assert (=> b!5235772 (=> (not res!2222351) (not e!3258063))))

(declare-fun lt!2146621 () Bool)

(assert (=> b!5235772 (= res!2222351 (not (= (matchZipper!1075 lt!2146598 (t!373973 s!2326)) lt!2146621)))))

(declare-fun lt!2146590 () (InoxSet Context!8430))

(assert (=> b!5235772 (= (matchZipper!1075 lt!2146590 (t!373973 s!2326)) e!3258069)))

(declare-fun res!2222340 () Bool)

(assert (=> b!5235772 (=> res!2222340 e!3258069)))

(assert (=> b!5235772 (= res!2222340 lt!2146621)))

(declare-fun lt!2146616 () (InoxSet Context!8430))

(assert (=> b!5235772 (= lt!2146621 (matchZipper!1075 lt!2146616 (t!373973 s!2326)))))

(declare-fun lt!2146604 () Unit!152662)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!68 ((InoxSet Context!8430) (InoxSet Context!8430) List!60792) Unit!152662)

(assert (=> b!5235772 (= lt!2146604 (lemmaZipperConcatMatchesSameAsBothZippers!68 lt!2146616 lt!2146601 (t!373973 s!2326)))))

(declare-fun setIsEmpty!33371 () Bool)

(declare-fun setRes!33371 () Bool)

(assert (=> setIsEmpty!33371 setRes!33371))

(declare-fun b!5235773 () Bool)

(declare-fun e!3258072 () Bool)

(assert (=> b!5235773 (= e!3258073 e!3258072)))

(declare-fun res!2222350 () Bool)

(assert (=> b!5235773 (=> res!2222350 e!3258072)))

(declare-fun e!3258057 () Bool)

(assert (=> b!5235773 (= res!2222350 (not (= (matchZipper!1075 z!1189 s!2326) e!3258057)))))

(declare-fun res!2222333 () Bool)

(assert (=> b!5235773 (=> res!2222333 e!3258057)))

(declare-fun lt!2146614 () Bool)

(assert (=> b!5235773 (= res!2222333 lt!2146614)))

(declare-fun lt!2146608 () (InoxSet Context!8430))

(assert (=> b!5235773 (= lt!2146614 (matchZipper!1075 lt!2146608 s!2326))))

(declare-fun lt!2146626 () Unit!152662)

(declare-fun e!3258076 () Unit!152662)

(assert (=> b!5235773 (= lt!2146626 e!3258076)))

(declare-fun c!904575 () Bool)

(assert (=> b!5235773 (= c!904575 (nullable!5000 (regTwo!30175 (regOne!30174 r!7292))))))

(declare-fun lt!2146591 () Context!8430)

(declare-fun lt!2146593 () (InoxSet Context!8430))

(assert (=> b!5235773 (= (flatMap!558 lt!2146593 lambda!263159) (derivationStepZipperUp!203 lt!2146591 (h!67116 s!2326)))))

(declare-fun lt!2146589 () Unit!152662)

(assert (=> b!5235773 (= lt!2146589 (lemmaFlatMapOnSingletonSet!90 lt!2146593 lt!2146591 lambda!263159))))

(declare-fun lt!2146612 () (InoxSet Context!8430))

(assert (=> b!5235773 (= lt!2146612 (derivationStepZipperUp!203 lt!2146591 (h!67116 s!2326)))))

(declare-fun lt!2146594 () Unit!152662)

(declare-fun e!3258078 () Unit!152662)

(assert (=> b!5235773 (= lt!2146594 e!3258078)))

(declare-fun c!904576 () Bool)

(assert (=> b!5235773 (= c!904576 (nullable!5000 (regOne!30175 (regOne!30174 r!7292))))))

(declare-fun lt!2146588 () Context!8430)

(assert (=> b!5235773 (= (flatMap!558 lt!2146608 lambda!263159) (derivationStepZipperUp!203 lt!2146588 (h!67116 s!2326)))))

(declare-fun lt!2146596 () Unit!152662)

(assert (=> b!5235773 (= lt!2146596 (lemmaFlatMapOnSingletonSet!90 lt!2146608 lt!2146588 lambda!263159))))

(declare-fun lt!2146628 () (InoxSet Context!8430))

(assert (=> b!5235773 (= lt!2146628 (derivationStepZipperUp!203 lt!2146588 (h!67116 s!2326)))))

(assert (=> b!5235773 (= lt!2146593 (store ((as const (Array Context!8430 Bool)) false) lt!2146591 true))))

(declare-fun lt!2146602 () List!60793)

(assert (=> b!5235773 (= lt!2146591 (Context!8431 lt!2146602))))

(assert (=> b!5235773 (= lt!2146602 (Cons!60669 (regTwo!30175 (regOne!30174 r!7292)) (t!373974 (exprs!4715 (h!67118 zl!343)))))))

(assert (=> b!5235773 (= lt!2146608 (store ((as const (Array Context!8430 Bool)) false) lt!2146588 true))))

(declare-fun lt!2146603 () List!60793)

(assert (=> b!5235773 (= lt!2146588 (Context!8431 lt!2146603))))

(assert (=> b!5235773 (= lt!2146603 (Cons!60669 (regOne!30175 (regOne!30174 r!7292)) (t!373974 (exprs!4715 (h!67118 zl!343)))))))

(declare-fun b!5235774 () Bool)

(declare-fun e!3258066 () Bool)

(declare-fun e!3258071 () Bool)

(assert (=> b!5235774 (= e!3258066 e!3258071)))

(declare-fun res!2222345 () Bool)

(assert (=> b!5235774 (=> res!2222345 e!3258071)))

(declare-fun lt!2146624 () List!60794)

(declare-fun lt!2146617 () Int)

(declare-fun zipperDepthTotal!12 (List!60794) Int)

(assert (=> b!5235774 (= res!2222345 (>= (zipperDepthTotal!12 lt!2146624) lt!2146617))))

(assert (=> b!5235774 (= lt!2146624 (Cons!60670 lt!2146591 Nil!60670))))

(declare-fun b!5235775 () Bool)

(declare-fun e!3258074 () Bool)

(declare-fun tp!1466776 () Bool)

(assert (=> b!5235775 (= e!3258074 (and tp_is_empty!38915 tp!1466776))))

(declare-fun b!5235776 () Bool)

(declare-fun e!3258070 () Bool)

(declare-fun tp!1466784 () Bool)

(assert (=> b!5235776 (= e!3258070 tp!1466784)))

(declare-fun b!5235777 () Bool)

(declare-fun res!2222342 () Bool)

(assert (=> b!5235777 (=> res!2222342 e!3258062)))

(declare-fun generalisedUnion!760 (List!60793) Regex!14831)

(declare-fun unfocusZipperList!273 (List!60794) List!60793)

(assert (=> b!5235777 (= res!2222342 (not (= r!7292 (generalisedUnion!760 (unfocusZipperList!273 zl!343)))))))

(declare-fun b!5235778 () Bool)

(declare-fun Unit!152665 () Unit!152662)

(assert (=> b!5235778 (= e!3258076 Unit!152665)))

(declare-fun lt!2146599 () Unit!152662)

(assert (=> b!5235778 (= lt!2146599 (lemmaZipperConcatMatchesSameAsBothZippers!68 lt!2146601 lt!2146625 (t!373973 s!2326)))))

(declare-fun res!2222336 () Bool)

(assert (=> b!5235778 (= res!2222336 (matchZipper!1075 lt!2146601 (t!373973 s!2326)))))

(declare-fun e!3258075 () Bool)

(assert (=> b!5235778 (=> res!2222336 e!3258075)))

(assert (=> b!5235778 (= (matchZipper!1075 ((_ map or) lt!2146601 lt!2146625) (t!373973 s!2326)) e!3258075)))

(declare-fun b!5235779 () Bool)

(assert (=> b!5235779 (= e!3258075 (matchZipper!1075 lt!2146625 (t!373973 s!2326)))))

(declare-fun b!5235780 () Bool)

(declare-fun res!2222338 () Bool)

(assert (=> b!5235780 (=> res!2222338 e!3258062)))

(assert (=> b!5235780 (= res!2222338 (not ((_ is Cons!60669) (exprs!4715 (h!67118 zl!343)))))))

(declare-fun b!5235781 () Bool)

(assert (=> b!5235781 (= e!3258057 (matchZipper!1075 lt!2146593 s!2326))))

(declare-fun b!5235783 () Bool)

(declare-fun res!2222331 () Bool)

(assert (=> b!5235783 (=> res!2222331 e!3258072)))

(assert (=> b!5235783 (= res!2222331 (or (not (= lt!2146623 r!7292)) (not (= (exprs!4715 (h!67118 zl!343)) (Cons!60669 (regOne!30174 r!7292) (t!373974 (exprs!4715 (h!67118 zl!343))))))))))

(declare-fun b!5235782 () Bool)

(declare-fun Unit!152666 () Unit!152662)

(assert (=> b!5235782 (= e!3258078 Unit!152666)))

(declare-fun lt!2146592 () Unit!152662)

(assert (=> b!5235782 (= lt!2146592 (lemmaZipperConcatMatchesSameAsBothZippers!68 lt!2146616 lt!2146625 (t!373973 s!2326)))))

(declare-fun res!2222335 () Bool)

(assert (=> b!5235782 (= res!2222335 lt!2146621)))

(declare-fun e!3258068 () Bool)

(assert (=> b!5235782 (=> res!2222335 e!3258068)))

(assert (=> b!5235782 (= (matchZipper!1075 ((_ map or) lt!2146616 lt!2146625) (t!373973 s!2326)) e!3258068)))

(declare-fun res!2222330 () Bool)

(assert (=> start!553570 (=> (not res!2222330) (not e!3258059))))

(declare-fun validRegex!6567 (Regex!14831) Bool)

(assert (=> start!553570 (= res!2222330 (validRegex!6567 r!7292))))

(assert (=> start!553570 e!3258059))

(assert (=> start!553570 e!3258061))

(declare-fun condSetEmpty!33371 () Bool)

(assert (=> start!553570 (= condSetEmpty!33371 (= z!1189 ((as const (Array Context!8430 Bool)) false)))))

(assert (=> start!553570 setRes!33371))

(declare-fun e!3258077 () Bool)

(assert (=> start!553570 e!3258077))

(assert (=> start!553570 e!3258074))

(declare-fun b!5235784 () Bool)

(declare-fun res!2222332 () Bool)

(assert (=> b!5235784 (=> res!2222332 e!3258062)))

(declare-fun generalisedConcat!500 (List!60793) Regex!14831)

(assert (=> b!5235784 (= res!2222332 (not (= r!7292 (generalisedConcat!500 (exprs!4715 (h!67118 zl!343))))))))

(declare-fun b!5235785 () Bool)

(declare-fun tp!1466777 () Bool)

(declare-fun tp!1466782 () Bool)

(assert (=> b!5235785 (= e!3258061 (and tp!1466777 tp!1466782))))

(declare-fun b!5235786 () Bool)

(declare-fun Unit!152667 () Unit!152662)

(assert (=> b!5235786 (= e!3258076 Unit!152667)))

(declare-fun b!5235787 () Bool)

(assert (=> b!5235787 (= e!3258072 e!3258066)))

(declare-fun res!2222346 () Bool)

(assert (=> b!5235787 (=> res!2222346 e!3258066)))

(declare-fun lt!2146609 () Int)

(assert (=> b!5235787 (= res!2222346 (>= lt!2146609 lt!2146617))))

(assert (=> b!5235787 (= lt!2146617 (zipperDepthTotal!12 zl!343))))

(declare-fun lt!2146627 () List!60794)

(assert (=> b!5235787 (= lt!2146609 (zipperDepthTotal!12 lt!2146627))))

(assert (=> b!5235787 (= lt!2146627 (Cons!60670 lt!2146588 Nil!60670))))

(declare-fun tp!1466781 () Bool)

(declare-fun setNonEmpty!33371 () Bool)

(declare-fun e!3258055 () Bool)

(declare-fun setElem!33371 () Context!8430)

(declare-fun inv!80324 (Context!8430) Bool)

(assert (=> setNonEmpty!33371 (= setRes!33371 (and tp!1466781 (inv!80324 setElem!33371) e!3258055))))

(declare-fun setRest!33371 () (InoxSet Context!8430))

(assert (=> setNonEmpty!33371 (= z!1189 ((_ map or) (store ((as const (Array Context!8430 Bool)) false) setElem!33371 true) setRest!33371))))

(declare-fun b!5235788 () Bool)

(assert (=> b!5235788 (= e!3258071 true)))

(declare-fun lt!2146618 () Regex!14831)

(assert (=> b!5235788 (= (matchR!7016 lt!2146618 s!2326) (matchZipper!1075 lt!2146593 s!2326))))

(declare-fun lt!2146610 () Unit!152662)

(declare-fun theoremZipperRegexEquiv!265 ((InoxSet Context!8430) List!60794 Regex!14831 List!60792) Unit!152662)

(assert (=> b!5235788 (= lt!2146610 (theoremZipperRegexEquiv!265 lt!2146593 lt!2146624 lt!2146618 s!2326))))

(assert (=> b!5235788 (= lt!2146618 (generalisedConcat!500 lt!2146602))))

(declare-fun lt!2146606 () Regex!14831)

(assert (=> b!5235788 (= (matchR!7016 lt!2146606 s!2326) lt!2146614)))

(declare-fun lt!2146620 () Unit!152662)

(assert (=> b!5235788 (= lt!2146620 (theoremZipperRegexEquiv!265 lt!2146608 lt!2146627 lt!2146606 s!2326))))

(assert (=> b!5235788 (= lt!2146606 (generalisedConcat!500 lt!2146603))))

(declare-fun b!5235789 () Bool)

(declare-fun tp!1466778 () Bool)

(assert (=> b!5235789 (= e!3258055 tp!1466778)))

(declare-fun b!5235790 () Bool)

(declare-fun e!3258065 () Bool)

(assert (=> b!5235790 (= e!3258065 (matchZipper!1075 lt!2146625 (t!373973 s!2326)))))

(declare-fun b!5235791 () Bool)

(declare-fun Unit!152668 () Unit!152662)

(assert (=> b!5235791 (= e!3258056 Unit!152668)))

(declare-fun lt!2146600 () Unit!152662)

(assert (=> b!5235791 (= lt!2146600 (lemmaZipperConcatMatchesSameAsBothZippers!68 lt!2146598 lt!2146625 (t!373973 s!2326)))))

(declare-fun res!2222328 () Bool)

(assert (=> b!5235791 (= res!2222328 (matchZipper!1075 lt!2146598 (t!373973 s!2326)))))

(assert (=> b!5235791 (=> res!2222328 e!3258065)))

(assert (=> b!5235791 (= (matchZipper!1075 ((_ map or) lt!2146598 lt!2146625) (t!373973 s!2326)) e!3258065)))

(declare-fun b!5235792 () Bool)

(assert (=> b!5235792 (= e!3258063 (not (matchZipper!1075 lt!2146601 (t!373973 s!2326))))))

(declare-fun b!5235793 () Bool)

(assert (=> b!5235793 (= e!3258064 e!3258058)))

(declare-fun res!2222334 () Bool)

(assert (=> b!5235793 (=> res!2222334 e!3258058)))

(assert (=> b!5235793 (= res!2222334 (not (= lt!2146598 lt!2146590)))))

(assert (=> b!5235793 (= lt!2146590 ((_ map or) lt!2146616 lt!2146601))))

(assert (=> b!5235793 (= lt!2146601 (derivationStepZipperDown!279 (regTwo!30175 (regOne!30174 r!7292)) lt!2146595 (h!67116 s!2326)))))

(assert (=> b!5235793 (= lt!2146616 (derivationStepZipperDown!279 (regOne!30175 (regOne!30174 r!7292)) lt!2146595 (h!67116 s!2326)))))

(assert (=> b!5235794 (= e!3258062 e!3258060)))

(declare-fun res!2222347 () Bool)

(assert (=> b!5235794 (=> res!2222347 e!3258060)))

(declare-fun lt!2146605 () Bool)

(assert (=> b!5235794 (= res!2222347 (or (not (= lt!2146607 lt!2146605)) ((_ is Nil!60668) s!2326)))))

(declare-fun Exists!2012 (Int) Bool)

(assert (=> b!5235794 (= (Exists!2012 lambda!263157) (Exists!2012 lambda!263158))))

(declare-fun lt!2146619 () Unit!152662)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!666 (Regex!14831 Regex!14831 List!60792) Unit!152662)

(assert (=> b!5235794 (= lt!2146619 (lemmaExistCutMatchRandMatchRSpecEquivalent!666 (regOne!30174 r!7292) (regTwo!30174 r!7292) s!2326))))

(assert (=> b!5235794 (= lt!2146605 (Exists!2012 lambda!263157))))

(declare-datatypes ((tuple2!64060 0))(
  ( (tuple2!64061 (_1!35333 List!60792) (_2!35333 List!60792)) )
))
(declare-datatypes ((Option!14942 0))(
  ( (None!14941) (Some!14941 (v!50970 tuple2!64060)) )
))
(declare-fun isDefined!11645 (Option!14942) Bool)

(declare-fun findConcatSeparation!1356 (Regex!14831 Regex!14831 List!60792 List!60792 List!60792) Option!14942)

(assert (=> b!5235794 (= lt!2146605 (isDefined!11645 (findConcatSeparation!1356 (regOne!30174 r!7292) (regTwo!30174 r!7292) Nil!60668 s!2326 s!2326)))))

(declare-fun lt!2146597 () Unit!152662)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1120 (Regex!14831 Regex!14831 List!60792) Unit!152662)

(assert (=> b!5235794 (= lt!2146597 (lemmaFindConcatSeparationEquivalentToExists!1120 (regOne!30174 r!7292) (regTwo!30174 r!7292) s!2326))))

(declare-fun b!5235795 () Bool)

(declare-fun res!2222339 () Bool)

(assert (=> b!5235795 (=> (not res!2222339) (not e!3258059))))

(declare-fun toList!8615 ((InoxSet Context!8430)) List!60794)

(assert (=> b!5235795 (= res!2222339 (= (toList!8615 z!1189) zl!343))))

(declare-fun b!5235796 () Bool)

(declare-fun tp!1466783 () Bool)

(assert (=> b!5235796 (= e!3258061 tp!1466783)))

(declare-fun tp!1466779 () Bool)

(declare-fun b!5235797 () Bool)

(assert (=> b!5235797 (= e!3258077 (and (inv!80324 (h!67118 zl!343)) e!3258070 tp!1466779))))

(declare-fun b!5235798 () Bool)

(assert (=> b!5235798 (= e!3258068 (matchZipper!1075 lt!2146625 (t!373973 s!2326)))))

(declare-fun b!5235799 () Bool)

(declare-fun res!2222349 () Bool)

(assert (=> b!5235799 (=> res!2222349 e!3258062)))

(assert (=> b!5235799 (= res!2222349 (or ((_ is EmptyExpr!14831) r!7292) ((_ is EmptyLang!14831) r!7292) ((_ is ElementMatch!14831) r!7292) ((_ is Union!14831) r!7292) (not ((_ is Concat!23676) r!7292))))))

(declare-fun b!5235800 () Bool)

(declare-fun res!2222329 () Bool)

(assert (=> b!5235800 (=> res!2222329 e!3258060)))

(declare-fun isEmpty!32596 (List!60793) Bool)

(assert (=> b!5235800 (= res!2222329 (isEmpty!32596 (t!373974 (exprs!4715 (h!67118 zl!343)))))))

(declare-fun b!5235801 () Bool)

(declare-fun Unit!152669 () Unit!152662)

(assert (=> b!5235801 (= e!3258078 Unit!152669)))

(assert (= (and start!553570 res!2222330) b!5235795))

(assert (= (and b!5235795 res!2222339) b!5235769))

(assert (= (and b!5235769 res!2222344) b!5235768))

(assert (= (and b!5235768 (not res!2222343)) b!5235766))

(assert (= (and b!5235766 (not res!2222341)) b!5235784))

(assert (= (and b!5235784 (not res!2222332)) b!5235780))

(assert (= (and b!5235780 (not res!2222338)) b!5235777))

(assert (= (and b!5235777 (not res!2222342)) b!5235799))

(assert (= (and b!5235799 (not res!2222349)) b!5235794))

(assert (= (and b!5235794 (not res!2222347)) b!5235800))

(assert (= (and b!5235800 (not res!2222329)) b!5235765))

(assert (= (and b!5235765 c!904574) b!5235791))

(assert (= (and b!5235765 (not c!904574)) b!5235770))

(assert (= (and b!5235791 (not res!2222328)) b!5235790))

(assert (= (and b!5235765 (not res!2222348)) b!5235793))

(assert (= (and b!5235793 (not res!2222334)) b!5235772))

(assert (= (and b!5235772 (not res!2222340)) b!5235767))

(assert (= (and b!5235772 res!2222351) b!5235792))

(assert (= (and b!5235772 (not res!2222337)) b!5235773))

(assert (= (and b!5235773 c!904576) b!5235782))

(assert (= (and b!5235773 (not c!904576)) b!5235801))

(assert (= (and b!5235782 (not res!2222335)) b!5235798))

(assert (= (and b!5235773 c!904575) b!5235778))

(assert (= (and b!5235773 (not c!904575)) b!5235786))

(assert (= (and b!5235778 (not res!2222336)) b!5235779))

(assert (= (and b!5235773 (not res!2222333)) b!5235781))

(assert (= (and b!5235773 (not res!2222350)) b!5235783))

(assert (= (and b!5235783 (not res!2222331)) b!5235787))

(assert (= (and b!5235787 (not res!2222346)) b!5235774))

(assert (= (and b!5235774 (not res!2222345)) b!5235788))

(assert (= (and start!553570 ((_ is ElementMatch!14831) r!7292)) b!5235771))

(assert (= (and start!553570 ((_ is Concat!23676) r!7292)) b!5235785))

(assert (= (and start!553570 ((_ is Star!14831) r!7292)) b!5235796))

(assert (= (and start!553570 ((_ is Union!14831) r!7292)) b!5235764))

(assert (= (and start!553570 condSetEmpty!33371) setIsEmpty!33371))

(assert (= (and start!553570 (not condSetEmpty!33371)) setNonEmpty!33371))

(assert (= setNonEmpty!33371 b!5235789))

(assert (= b!5235797 b!5235776))

(assert (= (and start!553570 ((_ is Cons!60670) zl!343)) b!5235797))

(assert (= (and start!553570 ((_ is Cons!60668) s!2326)) b!5235775))

(declare-fun m!6281028 () Bool)

(assert (=> b!5235781 m!6281028))

(declare-fun m!6281030 () Bool)

(assert (=> b!5235793 m!6281030))

(declare-fun m!6281032 () Bool)

(assert (=> b!5235793 m!6281032))

(declare-fun m!6281034 () Bool)

(assert (=> b!5235787 m!6281034))

(declare-fun m!6281036 () Bool)

(assert (=> b!5235787 m!6281036))

(declare-fun m!6281038 () Bool)

(assert (=> b!5235791 m!6281038))

(declare-fun m!6281040 () Bool)

(assert (=> b!5235791 m!6281040))

(declare-fun m!6281042 () Bool)

(assert (=> b!5235791 m!6281042))

(declare-fun m!6281044 () Bool)

(assert (=> b!5235768 m!6281044))

(declare-fun m!6281046 () Bool)

(assert (=> b!5235768 m!6281046))

(declare-fun m!6281048 () Bool)

(assert (=> b!5235768 m!6281048))

(declare-fun m!6281050 () Bool)

(assert (=> b!5235778 m!6281050))

(declare-fun m!6281052 () Bool)

(assert (=> b!5235778 m!6281052))

(declare-fun m!6281054 () Bool)

(assert (=> b!5235778 m!6281054))

(declare-fun m!6281056 () Bool)

(assert (=> b!5235766 m!6281056))

(declare-fun m!6281058 () Bool)

(assert (=> b!5235788 m!6281058))

(assert (=> b!5235788 m!6281028))

(declare-fun m!6281060 () Bool)

(assert (=> b!5235788 m!6281060))

(declare-fun m!6281062 () Bool)

(assert (=> b!5235788 m!6281062))

(declare-fun m!6281064 () Bool)

(assert (=> b!5235788 m!6281064))

(declare-fun m!6281066 () Bool)

(assert (=> b!5235788 m!6281066))

(declare-fun m!6281068 () Bool)

(assert (=> b!5235788 m!6281068))

(declare-fun m!6281070 () Bool)

(assert (=> b!5235795 m!6281070))

(declare-fun m!6281072 () Bool)

(assert (=> b!5235779 m!6281072))

(declare-fun m!6281074 () Bool)

(assert (=> b!5235773 m!6281074))

(declare-fun m!6281076 () Bool)

(assert (=> b!5235773 m!6281076))

(declare-fun m!6281078 () Bool)

(assert (=> b!5235773 m!6281078))

(declare-fun m!6281080 () Bool)

(assert (=> b!5235773 m!6281080))

(declare-fun m!6281082 () Bool)

(assert (=> b!5235773 m!6281082))

(declare-fun m!6281084 () Bool)

(assert (=> b!5235773 m!6281084))

(declare-fun m!6281086 () Bool)

(assert (=> b!5235773 m!6281086))

(declare-fun m!6281088 () Bool)

(assert (=> b!5235773 m!6281088))

(declare-fun m!6281090 () Bool)

(assert (=> b!5235773 m!6281090))

(declare-fun m!6281092 () Bool)

(assert (=> b!5235773 m!6281092))

(declare-fun m!6281094 () Bool)

(assert (=> b!5235773 m!6281094))

(declare-fun m!6281096 () Bool)

(assert (=> b!5235773 m!6281096))

(declare-fun m!6281098 () Bool)

(assert (=> b!5235800 m!6281098))

(declare-fun m!6281100 () Bool)

(assert (=> b!5235784 m!6281100))

(declare-fun m!6281102 () Bool)

(assert (=> b!5235782 m!6281102))

(declare-fun m!6281104 () Bool)

(assert (=> b!5235782 m!6281104))

(declare-fun m!6281106 () Bool)

(assert (=> start!553570 m!6281106))

(declare-fun m!6281108 () Bool)

(assert (=> b!5235794 m!6281108))

(declare-fun m!6281110 () Bool)

(assert (=> b!5235794 m!6281110))

(declare-fun m!6281112 () Bool)

(assert (=> b!5235794 m!6281112))

(declare-fun m!6281114 () Bool)

(assert (=> b!5235794 m!6281114))

(declare-fun m!6281116 () Bool)

(assert (=> b!5235794 m!6281116))

(assert (=> b!5235794 m!6281108))

(assert (=> b!5235794 m!6281114))

(declare-fun m!6281118 () Bool)

(assert (=> b!5235794 m!6281118))

(declare-fun m!6281120 () Bool)

(assert (=> b!5235774 m!6281120))

(assert (=> b!5235798 m!6281072))

(assert (=> b!5235772 m!6281040))

(declare-fun m!6281122 () Bool)

(assert (=> b!5235772 m!6281122))

(declare-fun m!6281124 () Bool)

(assert (=> b!5235772 m!6281124))

(declare-fun m!6281126 () Bool)

(assert (=> b!5235772 m!6281126))

(declare-fun m!6281128 () Bool)

(assert (=> setNonEmpty!33371 m!6281128))

(assert (=> b!5235792 m!6281052))

(declare-fun m!6281130 () Bool)

(assert (=> b!5235769 m!6281130))

(declare-fun m!6281132 () Bool)

(assert (=> b!5235797 m!6281132))

(assert (=> b!5235767 m!6281052))

(declare-fun m!6281134 () Bool)

(assert (=> b!5235777 m!6281134))

(assert (=> b!5235777 m!6281134))

(declare-fun m!6281136 () Bool)

(assert (=> b!5235777 m!6281136))

(assert (=> b!5235790 m!6281072))

(declare-fun m!6281138 () Bool)

(assert (=> b!5235765 m!6281138))

(declare-fun m!6281140 () Bool)

(assert (=> b!5235765 m!6281140))

(declare-fun m!6281142 () Bool)

(assert (=> b!5235765 m!6281142))

(declare-fun m!6281144 () Bool)

(assert (=> b!5235765 m!6281144))

(declare-fun m!6281146 () Bool)

(assert (=> b!5235765 m!6281146))

(declare-fun m!6281148 () Bool)

(assert (=> b!5235765 m!6281148))

(declare-fun m!6281150 () Bool)

(assert (=> b!5235765 m!6281150))

(check-sat (not b!5235800) (not b!5235792) (not b!5235785) (not b!5235778) (not b!5235795) (not b!5235782) (not b!5235788) (not b!5235787) (not b!5235798) (not b!5235784) (not b!5235768) (not b!5235774) (not b!5235781) (not b!5235764) (not setNonEmpty!33371) (not b!5235769) (not b!5235796) (not b!5235767) tp_is_empty!38915 (not b!5235766) (not b!5235772) (not b!5235793) (not b!5235797) (not b!5235790) (not b!5235765) (not b!5235773) (not b!5235779) (not start!553570) (not b!5235775) (not b!5235789) (not b!5235776) (not b!5235794) (not b!5235777) (not b!5235791))
(check-sat)
