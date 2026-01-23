; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!571980 () Bool)

(assert start!571980)

(declare-fun b!5462559 () Bool)

(assert (=> b!5462559 true))

(assert (=> b!5462559 true))

(declare-fun tp!1502436 () Bool)

(declare-fun setNonEmpty!35746 () Bool)

(declare-datatypes ((C!30858 0))(
  ( (C!30859 (val!25131 Int)) )
))
(declare-datatypes ((Regex!15294 0))(
  ( (ElementMatch!15294 (c!954580 C!30858)) (Concat!24139 (regOne!31100 Regex!15294) (regTwo!31100 Regex!15294)) (EmptyExpr!15294) (Star!15294 (reg!15623 Regex!15294)) (EmptyLang!15294) (Union!15294 (regOne!31101 Regex!15294) (regTwo!31101 Regex!15294)) )
))
(declare-datatypes ((List!62181 0))(
  ( (Nil!62057) (Cons!62057 (h!68505 Regex!15294) (t!375410 List!62181)) )
))
(declare-datatypes ((Context!9356 0))(
  ( (Context!9357 (exprs!5178 List!62181)) )
))
(declare-fun setElem!35746 () Context!9356)

(declare-fun e!3382487 () Bool)

(declare-fun setRes!35746 () Bool)

(declare-fun inv!81483 (Context!9356) Bool)

(assert (=> setNonEmpty!35746 (= setRes!35746 (and tp!1502436 (inv!81483 setElem!35746) e!3382487))))

(declare-fun z!1189 () (Set Context!9356))

(declare-fun setRest!35746 () (Set Context!9356))

(assert (=> setNonEmpty!35746 (= z!1189 (set.union (set.insert setElem!35746 (as set.empty (Set Context!9356))) setRest!35746))))

(declare-fun e!3382481 () Bool)

(assert (=> b!5462559 (= e!3382481 true)))

(declare-fun r!7292 () Regex!15294)

(declare-datatypes ((List!62182 0))(
  ( (Nil!62058) (Cons!62058 (h!68506 C!30858) (t!375411 List!62182)) )
))
(declare-fun s!2326 () List!62182)

(declare-fun lambda!289974 () Int)

(declare-datatypes ((tuple2!64982 0))(
  ( (tuple2!64983 (_1!35794 List!62182) (_2!35794 List!62182)) )
))
(declare-datatypes ((Option!15403 0))(
  ( (None!15402) (Some!15402 (v!51431 tuple2!64982)) )
))
(declare-fun isDefined!12106 (Option!15403) Bool)

(declare-fun findConcatSeparation!1817 (Regex!15294 Regex!15294 List!62182 List!62182 List!62182) Option!15403)

(declare-fun Exists!2473 (Int) Bool)

(assert (=> b!5462559 (= (isDefined!12106 (findConcatSeparation!1817 (reg!15623 r!7292) r!7292 Nil!62058 s!2326 s!2326)) (Exists!2473 lambda!289974))))

(declare-datatypes ((Unit!155038 0))(
  ( (Unit!155039) )
))
(declare-fun lt!2232736 () Unit!155038)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1581 (Regex!15294 Regex!15294 List!62182) Unit!155038)

(assert (=> b!5462559 (= lt!2232736 (lemmaFindConcatSeparationEquivalentToExists!1581 (reg!15623 r!7292) r!7292 s!2326))))

(declare-fun b!5462560 () Bool)

(declare-fun e!3382484 () Bool)

(declare-fun tp!1502440 () Bool)

(declare-fun tp!1502435 () Bool)

(assert (=> b!5462560 (= e!3382484 (and tp!1502440 tp!1502435))))

(declare-fun b!5462562 () Bool)

(declare-fun res!2326952 () Bool)

(declare-fun e!3382482 () Bool)

(assert (=> b!5462562 (=> (not res!2326952) (not e!3382482))))

(declare-datatypes ((List!62183 0))(
  ( (Nil!62059) (Cons!62059 (h!68507 Context!9356) (t!375412 List!62183)) )
))
(declare-fun zl!343 () List!62183)

(declare-fun toList!9078 ((Set Context!9356)) List!62183)

(assert (=> b!5462562 (= res!2326952 (= (toList!9078 z!1189) zl!343))))

(declare-fun b!5462563 () Bool)

(declare-fun res!2326950 () Bool)

(assert (=> b!5462563 (=> res!2326950 e!3382481)))

(declare-fun generalisedConcat!963 (List!62181) Regex!15294)

(assert (=> b!5462563 (= res!2326950 (not (= r!7292 (generalisedConcat!963 (exprs!5178 (h!68507 zl!343))))))))

(declare-fun b!5462564 () Bool)

(declare-fun tp!1502437 () Bool)

(assert (=> b!5462564 (= e!3382487 tp!1502437)))

(declare-fun b!5462565 () Bool)

(declare-fun res!2326949 () Bool)

(assert (=> b!5462565 (=> res!2326949 e!3382481)))

(declare-fun generalisedUnion!1223 (List!62181) Regex!15294)

(declare-fun unfocusZipperList!736 (List!62183) List!62181)

(assert (=> b!5462565 (= res!2326949 (not (= r!7292 (generalisedUnion!1223 (unfocusZipperList!736 zl!343)))))))

(declare-fun setIsEmpty!35746 () Bool)

(assert (=> setIsEmpty!35746 setRes!35746))

(declare-fun b!5462566 () Bool)

(declare-fun e!3382486 () Bool)

(declare-fun tp!1502439 () Bool)

(assert (=> b!5462566 (= e!3382486 tp!1502439)))

(declare-fun b!5462567 () Bool)

(declare-fun tp_is_empty!39841 () Bool)

(assert (=> b!5462567 (= e!3382484 tp_is_empty!39841)))

(declare-fun e!3382485 () Bool)

(declare-fun tp!1502441 () Bool)

(declare-fun b!5462568 () Bool)

(assert (=> b!5462568 (= e!3382485 (and (inv!81483 (h!68507 zl!343)) e!3382486 tp!1502441))))

(declare-fun b!5462569 () Bool)

(declare-fun tp!1502443 () Bool)

(declare-fun tp!1502442 () Bool)

(assert (=> b!5462569 (= e!3382484 (and tp!1502443 tp!1502442))))

(declare-fun b!5462570 () Bool)

(declare-fun res!2326955 () Bool)

(assert (=> b!5462570 (=> res!2326955 e!3382481)))

(assert (=> b!5462570 (= res!2326955 (not (is-Cons!62057 (exprs!5178 (h!68507 zl!343)))))))

(declare-fun b!5462571 () Bool)

(declare-fun tp!1502434 () Bool)

(assert (=> b!5462571 (= e!3382484 tp!1502434)))

(declare-fun b!5462572 () Bool)

(declare-fun res!2326948 () Bool)

(assert (=> b!5462572 (=> (not res!2326948) (not e!3382482))))

(declare-fun unfocusZipper!1036 (List!62183) Regex!15294)

(assert (=> b!5462572 (= res!2326948 (= r!7292 (unfocusZipper!1036 zl!343)))))

(declare-fun b!5462573 () Bool)

(declare-fun res!2326954 () Bool)

(assert (=> b!5462573 (=> res!2326954 e!3382481)))

(assert (=> b!5462573 (= res!2326954 (or (is-EmptyExpr!15294 r!7292) (is-EmptyLang!15294 r!7292) (is-ElementMatch!15294 r!7292) (is-Union!15294 r!7292) (is-Concat!24139 r!7292)))))

(declare-fun b!5462561 () Bool)

(declare-fun res!2326951 () Bool)

(assert (=> b!5462561 (=> res!2326951 e!3382481)))

(declare-fun isEmpty!34042 (List!62183) Bool)

(assert (=> b!5462561 (= res!2326951 (not (isEmpty!34042 (t!375412 zl!343))))))

(declare-fun res!2326947 () Bool)

(assert (=> start!571980 (=> (not res!2326947) (not e!3382482))))

(declare-fun validRegex!7030 (Regex!15294) Bool)

(assert (=> start!571980 (= res!2326947 (validRegex!7030 r!7292))))

(assert (=> start!571980 e!3382482))

(assert (=> start!571980 e!3382484))

(declare-fun condSetEmpty!35746 () Bool)

(assert (=> start!571980 (= condSetEmpty!35746 (= z!1189 (as set.empty (Set Context!9356))))))

(assert (=> start!571980 setRes!35746))

(assert (=> start!571980 e!3382485))

(declare-fun e!3382483 () Bool)

(assert (=> start!571980 e!3382483))

(declare-fun b!5462574 () Bool)

(assert (=> b!5462574 (= e!3382482 (not e!3382481))))

(declare-fun res!2326953 () Bool)

(assert (=> b!5462574 (=> res!2326953 e!3382481)))

(assert (=> b!5462574 (= res!2326953 (not (is-Cons!62059 zl!343)))))

(declare-fun matchR!7479 (Regex!15294 List!62182) Bool)

(declare-fun matchRSpec!2397 (Regex!15294 List!62182) Bool)

(assert (=> b!5462574 (= (matchR!7479 r!7292 s!2326) (matchRSpec!2397 r!7292 s!2326))))

(declare-fun lt!2232737 () Unit!155038)

(declare-fun mainMatchTheorem!2397 (Regex!15294 List!62182) Unit!155038)

(assert (=> b!5462574 (= lt!2232737 (mainMatchTheorem!2397 r!7292 s!2326))))

(declare-fun b!5462575 () Bool)

(declare-fun tp!1502438 () Bool)

(assert (=> b!5462575 (= e!3382483 (and tp_is_empty!39841 tp!1502438))))

(assert (= (and start!571980 res!2326947) b!5462562))

(assert (= (and b!5462562 res!2326952) b!5462572))

(assert (= (and b!5462572 res!2326948) b!5462574))

(assert (= (and b!5462574 (not res!2326953)) b!5462561))

(assert (= (and b!5462561 (not res!2326951)) b!5462563))

(assert (= (and b!5462563 (not res!2326950)) b!5462570))

(assert (= (and b!5462570 (not res!2326955)) b!5462565))

(assert (= (and b!5462565 (not res!2326949)) b!5462573))

(assert (= (and b!5462573 (not res!2326954)) b!5462559))

(assert (= (and start!571980 (is-ElementMatch!15294 r!7292)) b!5462567))

(assert (= (and start!571980 (is-Concat!24139 r!7292)) b!5462569))

(assert (= (and start!571980 (is-Star!15294 r!7292)) b!5462571))

(assert (= (and start!571980 (is-Union!15294 r!7292)) b!5462560))

(assert (= (and start!571980 condSetEmpty!35746) setIsEmpty!35746))

(assert (= (and start!571980 (not condSetEmpty!35746)) setNonEmpty!35746))

(assert (= setNonEmpty!35746 b!5462564))

(assert (= b!5462568 b!5462566))

(assert (= (and start!571980 (is-Cons!62059 zl!343)) b!5462568))

(assert (= (and start!571980 (is-Cons!62058 s!2326)) b!5462575))

(declare-fun m!6483824 () Bool)

(assert (=> b!5462574 m!6483824))

(declare-fun m!6483826 () Bool)

(assert (=> b!5462574 m!6483826))

(declare-fun m!6483828 () Bool)

(assert (=> b!5462574 m!6483828))

(declare-fun m!6483830 () Bool)

(assert (=> b!5462561 m!6483830))

(declare-fun m!6483832 () Bool)

(assert (=> b!5462563 m!6483832))

(declare-fun m!6483834 () Bool)

(assert (=> b!5462565 m!6483834))

(assert (=> b!5462565 m!6483834))

(declare-fun m!6483836 () Bool)

(assert (=> b!5462565 m!6483836))

(declare-fun m!6483838 () Bool)

(assert (=> b!5462572 m!6483838))

(declare-fun m!6483840 () Bool)

(assert (=> setNonEmpty!35746 m!6483840))

(declare-fun m!6483842 () Bool)

(assert (=> b!5462562 m!6483842))

(declare-fun m!6483844 () Bool)

(assert (=> b!5462568 m!6483844))

(declare-fun m!6483846 () Bool)

(assert (=> start!571980 m!6483846))

(declare-fun m!6483848 () Bool)

(assert (=> b!5462559 m!6483848))

(assert (=> b!5462559 m!6483848))

(declare-fun m!6483850 () Bool)

(assert (=> b!5462559 m!6483850))

(declare-fun m!6483852 () Bool)

(assert (=> b!5462559 m!6483852))

(declare-fun m!6483854 () Bool)

(assert (=> b!5462559 m!6483854))

(push 1)

(assert (not b!5462563))

(assert (not b!5462559))

(assert (not b!5462574))

(assert (not b!5462571))

(assert (not b!5462568))

(assert tp_is_empty!39841)

(assert (not b!5462572))

(assert (not b!5462569))

(assert (not b!5462564))

(assert (not start!571980))

(assert (not b!5462565))

(assert (not b!5462560))

(assert (not b!5462562))

(assert (not setNonEmpty!35746))

(assert (not b!5462566))

(assert (not b!5462575))

(assert (not b!5462561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

