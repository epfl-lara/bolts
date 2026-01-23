; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!552256 () Bool)

(assert start!552256)

(declare-fun b!5221526 () Bool)

(assert (=> b!5221526 true))

(assert (=> b!5221526 true))

(declare-fun lambda!262070 () Int)

(declare-fun lambda!262069 () Int)

(assert (=> b!5221526 (not (= lambda!262070 lambda!262069))))

(assert (=> b!5221526 true))

(assert (=> b!5221526 true))

(declare-fun b!5221522 () Bool)

(assert (=> b!5221522 true))

(declare-fun b!5221519 () Bool)

(declare-fun res!2217146 () Bool)

(declare-fun e!3249998 () Bool)

(assert (=> b!5221519 (=> res!2217146 e!3249998)))

(declare-datatypes ((C!29896 0))(
  ( (C!29897 (val!24650 Int)) )
))
(declare-datatypes ((Regex!14813 0))(
  ( (ElementMatch!14813 (c!901095 C!29896)) (Concat!23658 (regOne!30138 Regex!14813) (regTwo!30138 Regex!14813)) (EmptyExpr!14813) (Star!14813 (reg!15142 Regex!14813)) (EmptyLang!14813) (Union!14813 (regOne!30139 Regex!14813) (regTwo!30139 Regex!14813)) )
))
(declare-fun r!7292 () Regex!14813)

(declare-datatypes ((List!60738 0))(
  ( (Nil!60614) (Cons!60614 (h!67062 Regex!14813) (t!373909 List!60738)) )
))
(declare-datatypes ((Context!8394 0))(
  ( (Context!8395 (exprs!4697 List!60738)) )
))
(declare-datatypes ((List!60739 0))(
  ( (Nil!60615) (Cons!60615 (h!67063 Context!8394) (t!373910 List!60739)) )
))
(declare-fun zl!343 () List!60739)

(declare-fun generalisedConcat!482 (List!60738) Regex!14813)

(assert (=> b!5221519 (= res!2217146 (not (= r!7292 (generalisedConcat!482 (exprs!4697 (h!67063 zl!343))))))))

(declare-fun b!5221520 () Bool)

(declare-fun res!2217132 () Bool)

(assert (=> b!5221520 (=> res!2217132 e!3249998)))

(get-info :version)

(assert (=> b!5221520 (= res!2217132 (or ((_ is EmptyExpr!14813) r!7292) ((_ is EmptyLang!14813) r!7292) ((_ is ElementMatch!14813) r!7292) ((_ is Union!14813) r!7292) (not ((_ is Concat!23658) r!7292))))))

(declare-fun tp!1463801 () Bool)

(declare-fun e!3250014 () Bool)

(declare-fun b!5221521 () Bool)

(declare-fun e!3250010 () Bool)

(declare-fun inv!80279 (Context!8394) Bool)

(assert (=> b!5221521 (= e!3250010 (and (inv!80279 (h!67063 zl!343)) e!3250014 tp!1463801))))

(declare-fun e!3250008 () Bool)

(declare-fun e!3250015 () Bool)

(assert (=> b!5221522 (= e!3250008 e!3250015)))

(declare-fun res!2217142 () Bool)

(assert (=> b!5221522 (=> res!2217142 e!3250015)))

(declare-datatypes ((List!60740 0))(
  ( (Nil!60616) (Cons!60616 (h!67064 C!29896) (t!373911 List!60740)) )
))
(declare-fun s!2326 () List!60740)

(assert (=> b!5221522 (= res!2217142 (or (and ((_ is ElementMatch!14813) (regOne!30138 r!7292)) (= (c!901095 (regOne!30138 r!7292)) (h!67064 s!2326))) (not ((_ is Union!14813) (regOne!30138 r!7292)))))))

(declare-datatypes ((Unit!152528 0))(
  ( (Unit!152529) )
))
(declare-fun lt!2143757 () Unit!152528)

(declare-fun e!3250001 () Unit!152528)

(assert (=> b!5221522 (= lt!2143757 e!3250001)))

(declare-fun c!901094 () Bool)

(declare-fun nullable!4982 (Regex!14813) Bool)

(assert (=> b!5221522 (= c!901094 (nullable!4982 (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8394))

(declare-fun lambda!262071 () Int)

(declare-fun flatMap!540 ((InoxSet Context!8394) Int) (InoxSet Context!8394))

(declare-fun derivationStepZipperUp!185 (Context!8394 C!29896) (InoxSet Context!8394))

(assert (=> b!5221522 (= (flatMap!540 z!1189 lambda!262071) (derivationStepZipperUp!185 (h!67063 zl!343) (h!67064 s!2326)))))

(declare-fun lt!2143766 () Unit!152528)

(declare-fun lemmaFlatMapOnSingletonSet!72 ((InoxSet Context!8394) Context!8394 Int) Unit!152528)

(assert (=> b!5221522 (= lt!2143766 (lemmaFlatMapOnSingletonSet!72 z!1189 (h!67063 zl!343) lambda!262071))))

(declare-fun lt!2143771 () (InoxSet Context!8394))

(declare-fun lt!2143761 () Context!8394)

(assert (=> b!5221522 (= lt!2143771 (derivationStepZipperUp!185 lt!2143761 (h!67064 s!2326)))))

(declare-fun lt!2143779 () (InoxSet Context!8394))

(declare-fun derivationStepZipperDown!261 (Regex!14813 Context!8394 C!29896) (InoxSet Context!8394))

(assert (=> b!5221522 (= lt!2143779 (derivationStepZipperDown!261 (h!67062 (exprs!4697 (h!67063 zl!343))) lt!2143761 (h!67064 s!2326)))))

(assert (=> b!5221522 (= lt!2143761 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun lt!2143777 () (InoxSet Context!8394))

(assert (=> b!5221522 (= lt!2143777 (derivationStepZipperUp!185 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))) (h!67064 s!2326)))))

(declare-fun b!5221523 () Bool)

(declare-fun res!2217139 () Bool)

(declare-fun e!3250012 () Bool)

(assert (=> b!5221523 (=> res!2217139 e!3250012)))

(declare-fun lt!2143781 () (InoxSet Context!8394))

(declare-fun lt!2143770 () (InoxSet Context!8394))

(assert (=> b!5221523 (= res!2217139 (not (= lt!2143770 ((_ map or) lt!2143781 lt!2143771))))))

(declare-fun b!5221524 () Bool)

(declare-fun e!3250004 () Bool)

(assert (=> b!5221524 (= e!3250004 e!3250012)))

(declare-fun res!2217136 () Bool)

(assert (=> b!5221524 (=> res!2217136 e!3250012)))

(assert (=> b!5221524 (= res!2217136 (not (nullable!4982 (regTwo!30139 (regOne!30138 r!7292)))))))

(declare-fun lt!2143772 () (InoxSet Context!8394))

(declare-fun lt!2143780 () Context!8394)

(assert (=> b!5221524 (= (flatMap!540 lt!2143772 lambda!262071) (derivationStepZipperUp!185 lt!2143780 (h!67064 s!2326)))))

(declare-fun lt!2143773 () Unit!152528)

(assert (=> b!5221524 (= lt!2143773 (lemmaFlatMapOnSingletonSet!72 lt!2143772 lt!2143780 lambda!262071))))

(assert (=> b!5221524 (= lt!2143770 (derivationStepZipperUp!185 lt!2143780 (h!67064 s!2326)))))

(declare-fun lt!2143760 () Unit!152528)

(declare-fun e!3250005 () Unit!152528)

(assert (=> b!5221524 (= lt!2143760 e!3250005)))

(declare-fun c!901093 () Bool)

(assert (=> b!5221524 (= c!901093 (nullable!4982 (regOne!30139 (regOne!30138 r!7292))))))

(declare-fun lt!2143763 () Context!8394)

(declare-fun lt!2143768 () (InoxSet Context!8394))

(assert (=> b!5221524 (= (flatMap!540 lt!2143768 lambda!262071) (derivationStepZipperUp!185 lt!2143763 (h!67064 s!2326)))))

(declare-fun lt!2143759 () Unit!152528)

(assert (=> b!5221524 (= lt!2143759 (lemmaFlatMapOnSingletonSet!72 lt!2143768 lt!2143763 lambda!262071))))

(declare-fun lt!2143776 () (InoxSet Context!8394))

(assert (=> b!5221524 (= lt!2143776 (derivationStepZipperUp!185 lt!2143763 (h!67064 s!2326)))))

(assert (=> b!5221524 (= lt!2143772 (store ((as const (Array Context!8394 Bool)) false) lt!2143780 true))))

(assert (=> b!5221524 (= lt!2143780 (Context!8395 (Cons!60614 (regTwo!30139 (regOne!30138 r!7292)) (t!373909 (exprs!4697 (h!67063 zl!343))))))))

(assert (=> b!5221524 (= lt!2143768 (store ((as const (Array Context!8394 Bool)) false) lt!2143763 true))))

(assert (=> b!5221524 (= lt!2143763 (Context!8395 (Cons!60614 (regOne!30139 (regOne!30138 r!7292)) (t!373909 (exprs!4697 (h!67063 zl!343))))))))

(assert (=> b!5221526 (= e!3249998 e!3250008)))

(declare-fun res!2217135 () Bool)

(assert (=> b!5221526 (=> res!2217135 e!3250008)))

(declare-fun lt!2143774 () Bool)

(declare-fun lt!2143783 () Bool)

(assert (=> b!5221526 (= res!2217135 (or (not (= lt!2143774 lt!2143783)) ((_ is Nil!60616) s!2326)))))

(declare-fun Exists!1994 (Int) Bool)

(assert (=> b!5221526 (= (Exists!1994 lambda!262069) (Exists!1994 lambda!262070))))

(declare-fun lt!2143758 () Unit!152528)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!648 (Regex!14813 Regex!14813 List!60740) Unit!152528)

(assert (=> b!5221526 (= lt!2143758 (lemmaExistCutMatchRandMatchRSpecEquivalent!648 (regOne!30138 r!7292) (regTwo!30138 r!7292) s!2326))))

(assert (=> b!5221526 (= lt!2143783 (Exists!1994 lambda!262069))))

(declare-datatypes ((tuple2!64024 0))(
  ( (tuple2!64025 (_1!35315 List!60740) (_2!35315 List!60740)) )
))
(declare-datatypes ((Option!14924 0))(
  ( (None!14923) (Some!14923 (v!50952 tuple2!64024)) )
))
(declare-fun isDefined!11627 (Option!14924) Bool)

(declare-fun findConcatSeparation!1338 (Regex!14813 Regex!14813 List!60740 List!60740 List!60740) Option!14924)

(assert (=> b!5221526 (= lt!2143783 (isDefined!11627 (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) Nil!60616 s!2326 s!2326)))))

(declare-fun lt!2143778 () Unit!152528)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1102 (Regex!14813 Regex!14813 List!60740) Unit!152528)

(assert (=> b!5221526 (= lt!2143778 (lemmaFindConcatSeparationEquivalentToExists!1102 (regOne!30138 r!7292) (regTwo!30138 r!7292) s!2326))))

(declare-fun b!5221527 () Bool)

(declare-fun e!3249999 () Bool)

(assert (=> b!5221527 (= e!3250015 e!3249999)))

(declare-fun res!2217144 () Bool)

(assert (=> b!5221527 (=> res!2217144 e!3249999)))

(declare-fun lt!2143769 () (InoxSet Context!8394))

(assert (=> b!5221527 (= res!2217144 (not (= lt!2143779 lt!2143769)))))

(declare-fun lt!2143782 () (InoxSet Context!8394))

(assert (=> b!5221527 (= lt!2143769 ((_ map or) lt!2143782 lt!2143781))))

(assert (=> b!5221527 (= lt!2143781 (derivationStepZipperDown!261 (regTwo!30139 (regOne!30138 r!7292)) lt!2143761 (h!67064 s!2326)))))

(assert (=> b!5221527 (= lt!2143782 (derivationStepZipperDown!261 (regOne!30139 (regOne!30138 r!7292)) lt!2143761 (h!67064 s!2326)))))

(declare-fun b!5221528 () Bool)

(declare-fun e!3250007 () Bool)

(declare-fun tp_is_empty!38879 () Bool)

(declare-fun tp!1463795 () Bool)

(assert (=> b!5221528 (= e!3250007 (and tp_is_empty!38879 tp!1463795))))

(declare-fun b!5221529 () Bool)

(declare-fun e!3250003 () Bool)

(assert (=> b!5221529 (= e!3250003 tp_is_empty!38879)))

(declare-fun b!5221530 () Bool)

(declare-fun tp!1463799 () Bool)

(assert (=> b!5221530 (= e!3250014 tp!1463799)))

(declare-fun b!5221531 () Bool)

(declare-fun Unit!152530 () Unit!152528)

(assert (=> b!5221531 (= e!3250001 Unit!152530)))

(declare-fun lt!2143775 () Unit!152528)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!50 ((InoxSet Context!8394) (InoxSet Context!8394) List!60740) Unit!152528)

(assert (=> b!5221531 (= lt!2143775 (lemmaZipperConcatMatchesSameAsBothZippers!50 lt!2143779 lt!2143771 (t!373911 s!2326)))))

(declare-fun res!2217148 () Bool)

(declare-fun matchZipper!1057 ((InoxSet Context!8394) List!60740) Bool)

(assert (=> b!5221531 (= res!2217148 (matchZipper!1057 lt!2143779 (t!373911 s!2326)))))

(declare-fun e!3250006 () Bool)

(assert (=> b!5221531 (=> res!2217148 e!3250006)))

(assert (=> b!5221531 (= (matchZipper!1057 ((_ map or) lt!2143779 lt!2143771) (t!373911 s!2326)) e!3250006)))

(declare-fun b!5221532 () Bool)

(assert (=> b!5221532 (= e!3250006 (matchZipper!1057 lt!2143771 (t!373911 s!2326)))))

(declare-fun b!5221533 () Bool)

(declare-fun validRegex!6549 (Regex!14813) Bool)

(assert (=> b!5221533 (= e!3250012 (validRegex!6549 (regTwo!30139 (regOne!30138 r!7292))))))

(declare-fun b!5221534 () Bool)

(declare-fun res!2217150 () Bool)

(declare-fun e!3250013 () Bool)

(assert (=> b!5221534 (=> (not res!2217150) (not e!3250013))))

(declare-fun toList!8597 ((InoxSet Context!8394)) List!60739)

(assert (=> b!5221534 (= res!2217150 (= (toList!8597 z!1189) zl!343))))

(declare-fun setIsEmpty!33217 () Bool)

(declare-fun setRes!33217 () Bool)

(assert (=> setIsEmpty!33217 setRes!33217))

(declare-fun b!5221535 () Bool)

(assert (=> b!5221535 (= e!3249999 e!3250004)))

(declare-fun res!2217151 () Bool)

(assert (=> b!5221535 (=> res!2217151 e!3250004)))

(declare-fun e!3250009 () Bool)

(assert (=> b!5221535 (= res!2217151 e!3250009)))

(declare-fun res!2217149 () Bool)

(assert (=> b!5221535 (=> (not res!2217149) (not e!3250009))))

(declare-fun lt!2143764 () Bool)

(assert (=> b!5221535 (= res!2217149 (not (= (matchZipper!1057 lt!2143779 (t!373911 s!2326)) lt!2143764)))))

(declare-fun e!3250000 () Bool)

(assert (=> b!5221535 (= (matchZipper!1057 lt!2143769 (t!373911 s!2326)) e!3250000)))

(declare-fun res!2217134 () Bool)

(assert (=> b!5221535 (=> res!2217134 e!3250000)))

(assert (=> b!5221535 (= res!2217134 lt!2143764)))

(assert (=> b!5221535 (= lt!2143764 (matchZipper!1057 lt!2143782 (t!373911 s!2326)))))

(declare-fun lt!2143765 () Unit!152528)

(assert (=> b!5221535 (= lt!2143765 (lemmaZipperConcatMatchesSameAsBothZippers!50 lt!2143782 lt!2143781 (t!373911 s!2326)))))

(declare-fun b!5221536 () Bool)

(declare-fun tp!1463797 () Bool)

(declare-fun tp!1463802 () Bool)

(assert (=> b!5221536 (= e!3250003 (and tp!1463797 tp!1463802))))

(declare-fun b!5221537 () Bool)

(declare-fun Unit!152531 () Unit!152528)

(assert (=> b!5221537 (= e!3250001 Unit!152531)))

(declare-fun b!5221538 () Bool)

(declare-fun tp!1463798 () Bool)

(declare-fun tp!1463803 () Bool)

(assert (=> b!5221538 (= e!3250003 (and tp!1463798 tp!1463803))))

(declare-fun b!5221539 () Bool)

(assert (=> b!5221539 (= e!3250000 (matchZipper!1057 lt!2143781 (t!373911 s!2326)))))

(declare-fun b!5221540 () Bool)

(assert (=> b!5221540 (= e!3250013 (not e!3249998))))

(declare-fun res!2217141 () Bool)

(assert (=> b!5221540 (=> res!2217141 e!3249998)))

(assert (=> b!5221540 (= res!2217141 (not ((_ is Cons!60615) zl!343)))))

(declare-fun matchRSpec!1916 (Regex!14813 List!60740) Bool)

(assert (=> b!5221540 (= lt!2143774 (matchRSpec!1916 r!7292 s!2326))))

(declare-fun matchR!6998 (Regex!14813 List!60740) Bool)

(assert (=> b!5221540 (= lt!2143774 (matchR!6998 r!7292 s!2326))))

(declare-fun lt!2143762 () Unit!152528)

(declare-fun mainMatchTheorem!1916 (Regex!14813 List!60740) Unit!152528)

(assert (=> b!5221540 (= lt!2143762 (mainMatchTheorem!1916 r!7292 s!2326))))

(declare-fun res!2217147 () Bool)

(assert (=> start!552256 (=> (not res!2217147) (not e!3250013))))

(assert (=> start!552256 (= res!2217147 (validRegex!6549 r!7292))))

(assert (=> start!552256 e!3250013))

(assert (=> start!552256 e!3250003))

(declare-fun condSetEmpty!33217 () Bool)

(assert (=> start!552256 (= condSetEmpty!33217 (= z!1189 ((as const (Array Context!8394 Bool)) false)))))

(assert (=> start!552256 setRes!33217))

(assert (=> start!552256 e!3250010))

(assert (=> start!552256 e!3250007))

(declare-fun b!5221525 () Bool)

(declare-fun tp!1463800 () Bool)

(assert (=> b!5221525 (= e!3250003 tp!1463800)))

(declare-fun b!5221541 () Bool)

(declare-fun res!2217137 () Bool)

(assert (=> b!5221541 (=> (not res!2217137) (not e!3250013))))

(declare-fun unfocusZipper!555 (List!60739) Regex!14813)

(assert (=> b!5221541 (= res!2217137 (= r!7292 (unfocusZipper!555 zl!343)))))

(declare-fun b!5221542 () Bool)

(declare-fun res!2217145 () Bool)

(assert (=> b!5221542 (=> res!2217145 e!3249998)))

(declare-fun generalisedUnion!742 (List!60738) Regex!14813)

(declare-fun unfocusZipperList!255 (List!60739) List!60738)

(assert (=> b!5221542 (= res!2217145 (not (= r!7292 (generalisedUnion!742 (unfocusZipperList!255 zl!343)))))))

(declare-fun b!5221543 () Bool)

(declare-fun res!2217133 () Bool)

(assert (=> b!5221543 (=> res!2217133 e!3249998)))

(declare-fun isEmpty!32533 (List!60739) Bool)

(assert (=> b!5221543 (= res!2217133 (not (isEmpty!32533 (t!373910 zl!343))))))

(declare-fun b!5221544 () Bool)

(declare-fun res!2217143 () Bool)

(assert (=> b!5221544 (=> res!2217143 e!3249998)))

(assert (=> b!5221544 (= res!2217143 (not ((_ is Cons!60614) (exprs!4697 (h!67063 zl!343)))))))

(declare-fun b!5221545 () Bool)

(declare-fun Unit!152532 () Unit!152528)

(assert (=> b!5221545 (= e!3250005 Unit!152532)))

(declare-fun b!5221546 () Bool)

(declare-fun res!2217138 () Bool)

(assert (=> b!5221546 (=> res!2217138 e!3250008)))

(declare-fun isEmpty!32534 (List!60738) Bool)

(assert (=> b!5221546 (= res!2217138 (isEmpty!32534 (t!373909 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun b!5221547 () Bool)

(declare-fun Unit!152533 () Unit!152528)

(assert (=> b!5221547 (= e!3250005 Unit!152533)))

(declare-fun lt!2143767 () Unit!152528)

(assert (=> b!5221547 (= lt!2143767 (lemmaZipperConcatMatchesSameAsBothZippers!50 lt!2143782 lt!2143771 (t!373911 s!2326)))))

(declare-fun res!2217140 () Bool)

(assert (=> b!5221547 (= res!2217140 lt!2143764)))

(declare-fun e!3250002 () Bool)

(assert (=> b!5221547 (=> res!2217140 e!3250002)))

(assert (=> b!5221547 (= (matchZipper!1057 ((_ map or) lt!2143782 lt!2143771) (t!373911 s!2326)) e!3250002)))

(declare-fun b!5221548 () Bool)

(assert (=> b!5221548 (= e!3250009 (not (matchZipper!1057 lt!2143781 (t!373911 s!2326))))))

(declare-fun b!5221549 () Bool)

(assert (=> b!5221549 (= e!3250002 (matchZipper!1057 lt!2143771 (t!373911 s!2326)))))

(declare-fun b!5221550 () Bool)

(declare-fun e!3250011 () Bool)

(declare-fun tp!1463794 () Bool)

(assert (=> b!5221550 (= e!3250011 tp!1463794)))

(declare-fun tp!1463796 () Bool)

(declare-fun setElem!33217 () Context!8394)

(declare-fun setNonEmpty!33217 () Bool)

(assert (=> setNonEmpty!33217 (= setRes!33217 (and tp!1463796 (inv!80279 setElem!33217) e!3250011))))

(declare-fun setRest!33217 () (InoxSet Context!8394))

(assert (=> setNonEmpty!33217 (= z!1189 ((_ map or) (store ((as const (Array Context!8394 Bool)) false) setElem!33217 true) setRest!33217))))

(assert (= (and start!552256 res!2217147) b!5221534))

(assert (= (and b!5221534 res!2217150) b!5221541))

(assert (= (and b!5221541 res!2217137) b!5221540))

(assert (= (and b!5221540 (not res!2217141)) b!5221543))

(assert (= (and b!5221543 (not res!2217133)) b!5221519))

(assert (= (and b!5221519 (not res!2217146)) b!5221544))

(assert (= (and b!5221544 (not res!2217143)) b!5221542))

(assert (= (and b!5221542 (not res!2217145)) b!5221520))

(assert (= (and b!5221520 (not res!2217132)) b!5221526))

(assert (= (and b!5221526 (not res!2217135)) b!5221546))

(assert (= (and b!5221546 (not res!2217138)) b!5221522))

(assert (= (and b!5221522 c!901094) b!5221531))

(assert (= (and b!5221522 (not c!901094)) b!5221537))

(assert (= (and b!5221531 (not res!2217148)) b!5221532))

(assert (= (and b!5221522 (not res!2217142)) b!5221527))

(assert (= (and b!5221527 (not res!2217144)) b!5221535))

(assert (= (and b!5221535 (not res!2217134)) b!5221539))

(assert (= (and b!5221535 res!2217149) b!5221548))

(assert (= (and b!5221535 (not res!2217151)) b!5221524))

(assert (= (and b!5221524 c!901093) b!5221547))

(assert (= (and b!5221524 (not c!901093)) b!5221545))

(assert (= (and b!5221547 (not res!2217140)) b!5221549))

(assert (= (and b!5221524 (not res!2217136)) b!5221523))

(assert (= (and b!5221523 (not res!2217139)) b!5221533))

(assert (= (and start!552256 ((_ is ElementMatch!14813) r!7292)) b!5221529))

(assert (= (and start!552256 ((_ is Concat!23658) r!7292)) b!5221538))

(assert (= (and start!552256 ((_ is Star!14813) r!7292)) b!5221525))

(assert (= (and start!552256 ((_ is Union!14813) r!7292)) b!5221536))

(assert (= (and start!552256 condSetEmpty!33217) setIsEmpty!33217))

(assert (= (and start!552256 (not condSetEmpty!33217)) setNonEmpty!33217))

(assert (= setNonEmpty!33217 b!5221550))

(assert (= b!5221521 b!5221530))

(assert (= (and start!552256 ((_ is Cons!60615) zl!343)) b!5221521))

(assert (= (and start!552256 ((_ is Cons!60616) s!2326)) b!5221528))

(declare-fun m!6268964 () Bool)

(assert (=> b!5221539 m!6268964))

(declare-fun m!6268966 () Bool)

(assert (=> start!552256 m!6268966))

(declare-fun m!6268968 () Bool)

(assert (=> b!5221526 m!6268968))

(declare-fun m!6268970 () Bool)

(assert (=> b!5221526 m!6268970))

(declare-fun m!6268972 () Bool)

(assert (=> b!5221526 m!6268972))

(declare-fun m!6268974 () Bool)

(assert (=> b!5221526 m!6268974))

(declare-fun m!6268976 () Bool)

(assert (=> b!5221526 m!6268976))

(assert (=> b!5221526 m!6268970))

(assert (=> b!5221526 m!6268974))

(declare-fun m!6268978 () Bool)

(assert (=> b!5221526 m!6268978))

(declare-fun m!6268980 () Bool)

(assert (=> b!5221543 m!6268980))

(declare-fun m!6268982 () Bool)

(assert (=> b!5221533 m!6268982))

(declare-fun m!6268984 () Bool)

(assert (=> b!5221547 m!6268984))

(declare-fun m!6268986 () Bool)

(assert (=> b!5221547 m!6268986))

(declare-fun m!6268988 () Bool)

(assert (=> b!5221531 m!6268988))

(declare-fun m!6268990 () Bool)

(assert (=> b!5221531 m!6268990))

(declare-fun m!6268992 () Bool)

(assert (=> b!5221531 m!6268992))

(declare-fun m!6268994 () Bool)

(assert (=> b!5221519 m!6268994))

(declare-fun m!6268996 () Bool)

(assert (=> b!5221524 m!6268996))

(declare-fun m!6268998 () Bool)

(assert (=> b!5221524 m!6268998))

(declare-fun m!6269000 () Bool)

(assert (=> b!5221524 m!6269000))

(declare-fun m!6269002 () Bool)

(assert (=> b!5221524 m!6269002))

(declare-fun m!6269004 () Bool)

(assert (=> b!5221524 m!6269004))

(declare-fun m!6269006 () Bool)

(assert (=> b!5221524 m!6269006))

(declare-fun m!6269008 () Bool)

(assert (=> b!5221524 m!6269008))

(declare-fun m!6269010 () Bool)

(assert (=> b!5221524 m!6269010))

(declare-fun m!6269012 () Bool)

(assert (=> b!5221524 m!6269012))

(declare-fun m!6269014 () Bool)

(assert (=> b!5221524 m!6269014))

(declare-fun m!6269016 () Bool)

(assert (=> b!5221521 m!6269016))

(assert (=> b!5221535 m!6268990))

(declare-fun m!6269018 () Bool)

(assert (=> b!5221535 m!6269018))

(declare-fun m!6269020 () Bool)

(assert (=> b!5221535 m!6269020))

(declare-fun m!6269022 () Bool)

(assert (=> b!5221535 m!6269022))

(assert (=> b!5221548 m!6268964))

(declare-fun m!6269024 () Bool)

(assert (=> b!5221534 m!6269024))

(declare-fun m!6269026 () Bool)

(assert (=> b!5221540 m!6269026))

(declare-fun m!6269028 () Bool)

(assert (=> b!5221540 m!6269028))

(declare-fun m!6269030 () Bool)

(assert (=> b!5221540 m!6269030))

(declare-fun m!6269032 () Bool)

(assert (=> b!5221549 m!6269032))

(declare-fun m!6269034 () Bool)

(assert (=> b!5221527 m!6269034))

(declare-fun m!6269036 () Bool)

(assert (=> b!5221527 m!6269036))

(declare-fun m!6269038 () Bool)

(assert (=> setNonEmpty!33217 m!6269038))

(declare-fun m!6269040 () Bool)

(assert (=> b!5221522 m!6269040))

(declare-fun m!6269042 () Bool)

(assert (=> b!5221522 m!6269042))

(declare-fun m!6269044 () Bool)

(assert (=> b!5221522 m!6269044))

(declare-fun m!6269046 () Bool)

(assert (=> b!5221522 m!6269046))

(declare-fun m!6269048 () Bool)

(assert (=> b!5221522 m!6269048))

(declare-fun m!6269050 () Bool)

(assert (=> b!5221522 m!6269050))

(declare-fun m!6269052 () Bool)

(assert (=> b!5221522 m!6269052))

(assert (=> b!5221532 m!6269032))

(declare-fun m!6269054 () Bool)

(assert (=> b!5221542 m!6269054))

(assert (=> b!5221542 m!6269054))

(declare-fun m!6269056 () Bool)

(assert (=> b!5221542 m!6269056))

(declare-fun m!6269058 () Bool)

(assert (=> b!5221541 m!6269058))

(declare-fun m!6269060 () Bool)

(assert (=> b!5221546 m!6269060))

(check-sat (not b!5221547) (not b!5221543) (not b!5221550) (not b!5221526) (not b!5221521) (not b!5221542) (not b!5221540) (not b!5221548) (not b!5221549) (not b!5221533) (not b!5221532) (not b!5221528) (not b!5221536) (not b!5221524) (not b!5221546) (not b!5221525) (not b!5221522) (not b!5221531) (not b!5221530) (not b!5221527) (not b!5221538) tp_is_empty!38879 (not b!5221534) (not b!5221539) (not start!552256) (not b!5221535) (not b!5221541) (not b!5221519) (not setNonEmpty!33217))
(check-sat)
(get-model)

(declare-fun d!1683448 () Bool)

(declare-fun e!3250243 () Bool)

(assert (=> d!1683448 (= (matchZipper!1057 ((_ map or) lt!2143782 lt!2143771) (t!373911 s!2326)) e!3250243)))

(declare-fun res!2217276 () Bool)

(assert (=> d!1683448 (=> res!2217276 e!3250243)))

(assert (=> d!1683448 (= res!2217276 (matchZipper!1057 lt!2143782 (t!373911 s!2326)))))

(declare-fun lt!2143832 () Unit!152528)

(declare-fun choose!38837 ((InoxSet Context!8394) (InoxSet Context!8394) List!60740) Unit!152528)

(assert (=> d!1683448 (= lt!2143832 (choose!38837 lt!2143782 lt!2143771 (t!373911 s!2326)))))

(assert (=> d!1683448 (= (lemmaZipperConcatMatchesSameAsBothZippers!50 lt!2143782 lt!2143771 (t!373911 s!2326)) lt!2143832)))

(declare-fun b!5221955 () Bool)

(assert (=> b!5221955 (= e!3250243 (matchZipper!1057 lt!2143771 (t!373911 s!2326)))))

(assert (= (and d!1683448 (not res!2217276)) b!5221955))

(assert (=> d!1683448 m!6268986))

(assert (=> d!1683448 m!6269020))

(declare-fun m!6269330 () Bool)

(assert (=> d!1683448 m!6269330))

(assert (=> b!5221955 m!6269032))

(assert (=> b!5221547 d!1683448))

(declare-fun d!1683450 () Bool)

(declare-fun c!901208 () Bool)

(declare-fun isEmpty!32537 (List!60740) Bool)

(assert (=> d!1683450 (= c!901208 (isEmpty!32537 (t!373911 s!2326)))))

(declare-fun e!3250246 () Bool)

(assert (=> d!1683450 (= (matchZipper!1057 ((_ map or) lt!2143782 lt!2143771) (t!373911 s!2326)) e!3250246)))

(declare-fun b!5221960 () Bool)

(declare-fun nullableZipper!1237 ((InoxSet Context!8394)) Bool)

(assert (=> b!5221960 (= e!3250246 (nullableZipper!1237 ((_ map or) lt!2143782 lt!2143771)))))

(declare-fun b!5221961 () Bool)

(declare-fun derivationStepZipper!1081 ((InoxSet Context!8394) C!29896) (InoxSet Context!8394))

(declare-fun head!11193 (List!60740) C!29896)

(declare-fun tail!10290 (List!60740) List!60740)

(assert (=> b!5221961 (= e!3250246 (matchZipper!1057 (derivationStepZipper!1081 ((_ map or) lt!2143782 lt!2143771) (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))))))

(assert (= (and d!1683450 c!901208) b!5221960))

(assert (= (and d!1683450 (not c!901208)) b!5221961))

(declare-fun m!6269332 () Bool)

(assert (=> d!1683450 m!6269332))

(declare-fun m!6269334 () Bool)

(assert (=> b!5221960 m!6269334))

(declare-fun m!6269336 () Bool)

(assert (=> b!5221961 m!6269336))

(assert (=> b!5221961 m!6269336))

(declare-fun m!6269338 () Bool)

(assert (=> b!5221961 m!6269338))

(declare-fun m!6269340 () Bool)

(assert (=> b!5221961 m!6269340))

(assert (=> b!5221961 m!6269338))

(assert (=> b!5221961 m!6269340))

(declare-fun m!6269342 () Bool)

(assert (=> b!5221961 m!6269342))

(assert (=> b!5221547 d!1683450))

(declare-fun d!1683452 () Bool)

(assert (=> d!1683452 (= (isEmpty!32534 (t!373909 (exprs!4697 (h!67063 zl!343)))) ((_ is Nil!60614) (t!373909 (exprs!4697 (h!67063 zl!343)))))))

(assert (=> b!5221546 d!1683452))

(declare-fun b!5221980 () Bool)

(declare-fun e!3250260 () Option!14924)

(declare-fun e!3250258 () Option!14924)

(assert (=> b!5221980 (= e!3250260 e!3250258)))

(declare-fun c!901213 () Bool)

(assert (=> b!5221980 (= c!901213 ((_ is Nil!60616) s!2326))))

(declare-fun b!5221981 () Bool)

(declare-fun lt!2143841 () Unit!152528)

(declare-fun lt!2143839 () Unit!152528)

(assert (=> b!5221981 (= lt!2143841 lt!2143839)))

(declare-fun ++!13217 (List!60740 List!60740) List!60740)

(assert (=> b!5221981 (= (++!13217 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)) (t!373911 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1632 (List!60740 C!29896 List!60740 List!60740) Unit!152528)

(assert (=> b!5221981 (= lt!2143839 (lemmaMoveElementToOtherListKeepsConcatEq!1632 Nil!60616 (h!67064 s!2326) (t!373911 s!2326) s!2326))))

(assert (=> b!5221981 (= e!3250258 (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)) (t!373911 s!2326) s!2326))))

(declare-fun b!5221983 () Bool)

(assert (=> b!5221983 (= e!3250258 None!14923)))

(declare-fun b!5221984 () Bool)

(declare-fun e!3250259 () Bool)

(assert (=> b!5221984 (= e!3250259 (matchR!6998 (regTwo!30138 r!7292) s!2326))))

(declare-fun b!5221985 () Bool)

(declare-fun e!3250257 () Bool)

(declare-fun lt!2143840 () Option!14924)

(assert (=> b!5221985 (= e!3250257 (not (isDefined!11627 lt!2143840)))))

(declare-fun b!5221986 () Bool)

(declare-fun res!2217291 () Bool)

(declare-fun e!3250261 () Bool)

(assert (=> b!5221986 (=> (not res!2217291) (not e!3250261))))

(declare-fun get!20829 (Option!14924) tuple2!64024)

(assert (=> b!5221986 (= res!2217291 (matchR!6998 (regOne!30138 r!7292) (_1!35315 (get!20829 lt!2143840))))))

(declare-fun b!5221982 () Bool)

(assert (=> b!5221982 (= e!3250261 (= (++!13217 (_1!35315 (get!20829 lt!2143840)) (_2!35315 (get!20829 lt!2143840))) s!2326))))

(declare-fun d!1683454 () Bool)

(assert (=> d!1683454 e!3250257))

(declare-fun res!2217288 () Bool)

(assert (=> d!1683454 (=> res!2217288 e!3250257)))

(assert (=> d!1683454 (= res!2217288 e!3250261)))

(declare-fun res!2217290 () Bool)

(assert (=> d!1683454 (=> (not res!2217290) (not e!3250261))))

(assert (=> d!1683454 (= res!2217290 (isDefined!11627 lt!2143840))))

(assert (=> d!1683454 (= lt!2143840 e!3250260)))

(declare-fun c!901214 () Bool)

(assert (=> d!1683454 (= c!901214 e!3250259)))

(declare-fun res!2217287 () Bool)

(assert (=> d!1683454 (=> (not res!2217287) (not e!3250259))))

(assert (=> d!1683454 (= res!2217287 (matchR!6998 (regOne!30138 r!7292) Nil!60616))))

(assert (=> d!1683454 (validRegex!6549 (regOne!30138 r!7292))))

(assert (=> d!1683454 (= (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) Nil!60616 s!2326 s!2326) lt!2143840)))

(declare-fun b!5221987 () Bool)

(declare-fun res!2217289 () Bool)

(assert (=> b!5221987 (=> (not res!2217289) (not e!3250261))))

(assert (=> b!5221987 (= res!2217289 (matchR!6998 (regTwo!30138 r!7292) (_2!35315 (get!20829 lt!2143840))))))

(declare-fun b!5221988 () Bool)

(assert (=> b!5221988 (= e!3250260 (Some!14923 (tuple2!64025 Nil!60616 s!2326)))))

(assert (= (and d!1683454 res!2217287) b!5221984))

(assert (= (and d!1683454 c!901214) b!5221988))

(assert (= (and d!1683454 (not c!901214)) b!5221980))

(assert (= (and b!5221980 c!901213) b!5221983))

(assert (= (and b!5221980 (not c!901213)) b!5221981))

(assert (= (and d!1683454 res!2217290) b!5221986))

(assert (= (and b!5221986 res!2217291) b!5221987))

(assert (= (and b!5221987 res!2217289) b!5221982))

(assert (= (and d!1683454 (not res!2217288)) b!5221985))

(declare-fun m!6269344 () Bool)

(assert (=> b!5221984 m!6269344))

(declare-fun m!6269346 () Bool)

(assert (=> b!5221985 m!6269346))

(declare-fun m!6269348 () Bool)

(assert (=> b!5221986 m!6269348))

(declare-fun m!6269350 () Bool)

(assert (=> b!5221986 m!6269350))

(assert (=> d!1683454 m!6269346))

(declare-fun m!6269352 () Bool)

(assert (=> d!1683454 m!6269352))

(declare-fun m!6269354 () Bool)

(assert (=> d!1683454 m!6269354))

(assert (=> b!5221982 m!6269348))

(declare-fun m!6269356 () Bool)

(assert (=> b!5221982 m!6269356))

(declare-fun m!6269358 () Bool)

(assert (=> b!5221981 m!6269358))

(assert (=> b!5221981 m!6269358))

(declare-fun m!6269360 () Bool)

(assert (=> b!5221981 m!6269360))

(declare-fun m!6269362 () Bool)

(assert (=> b!5221981 m!6269362))

(assert (=> b!5221981 m!6269358))

(declare-fun m!6269364 () Bool)

(assert (=> b!5221981 m!6269364))

(assert (=> b!5221987 m!6269348))

(declare-fun m!6269366 () Bool)

(assert (=> b!5221987 m!6269366))

(assert (=> b!5221526 d!1683454))

(declare-fun d!1683456 () Bool)

(declare-fun choose!38838 (Int) Bool)

(assert (=> d!1683456 (= (Exists!1994 lambda!262070) (choose!38838 lambda!262070))))

(declare-fun bs!1212547 () Bool)

(assert (= bs!1212547 d!1683456))

(declare-fun m!6269368 () Bool)

(assert (=> bs!1212547 m!6269368))

(assert (=> b!5221526 d!1683456))

(declare-fun bs!1212548 () Bool)

(declare-fun d!1683458 () Bool)

(assert (= bs!1212548 (and d!1683458 b!5221526)))

(declare-fun lambda!262102 () Int)

(assert (=> bs!1212548 (= lambda!262102 lambda!262069)))

(assert (=> bs!1212548 (not (= lambda!262102 lambda!262070))))

(assert (=> d!1683458 true))

(assert (=> d!1683458 true))

(assert (=> d!1683458 true))

(assert (=> d!1683458 (= (isDefined!11627 (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) Nil!60616 s!2326 s!2326)) (Exists!1994 lambda!262102))))

(declare-fun lt!2143844 () Unit!152528)

(declare-fun choose!38839 (Regex!14813 Regex!14813 List!60740) Unit!152528)

(assert (=> d!1683458 (= lt!2143844 (choose!38839 (regOne!30138 r!7292) (regTwo!30138 r!7292) s!2326))))

(assert (=> d!1683458 (validRegex!6549 (regOne!30138 r!7292))))

(assert (=> d!1683458 (= (lemmaFindConcatSeparationEquivalentToExists!1102 (regOne!30138 r!7292) (regTwo!30138 r!7292) s!2326) lt!2143844)))

(declare-fun bs!1212549 () Bool)

(assert (= bs!1212549 d!1683458))

(declare-fun m!6269370 () Bool)

(assert (=> bs!1212549 m!6269370))

(declare-fun m!6269372 () Bool)

(assert (=> bs!1212549 m!6269372))

(assert (=> bs!1212549 m!6269354))

(assert (=> bs!1212549 m!6268974))

(assert (=> bs!1212549 m!6268974))

(assert (=> bs!1212549 m!6268976))

(assert (=> b!5221526 d!1683458))

(declare-fun bs!1212550 () Bool)

(declare-fun d!1683460 () Bool)

(assert (= bs!1212550 (and d!1683460 b!5221526)))

(declare-fun lambda!262107 () Int)

(assert (=> bs!1212550 (= lambda!262107 lambda!262069)))

(assert (=> bs!1212550 (not (= lambda!262107 lambda!262070))))

(declare-fun bs!1212551 () Bool)

(assert (= bs!1212551 (and d!1683460 d!1683458)))

(assert (=> bs!1212551 (= lambda!262107 lambda!262102)))

(assert (=> d!1683460 true))

(assert (=> d!1683460 true))

(assert (=> d!1683460 true))

(declare-fun lambda!262108 () Int)

(assert (=> bs!1212550 (not (= lambda!262108 lambda!262069))))

(assert (=> bs!1212550 (= lambda!262108 lambda!262070)))

(assert (=> bs!1212551 (not (= lambda!262108 lambda!262102))))

(declare-fun bs!1212552 () Bool)

(assert (= bs!1212552 d!1683460))

(assert (=> bs!1212552 (not (= lambda!262108 lambda!262107))))

(assert (=> d!1683460 true))

(assert (=> d!1683460 true))

(assert (=> d!1683460 true))

(assert (=> d!1683460 (= (Exists!1994 lambda!262107) (Exists!1994 lambda!262108))))

(declare-fun lt!2143847 () Unit!152528)

(declare-fun choose!38840 (Regex!14813 Regex!14813 List!60740) Unit!152528)

(assert (=> d!1683460 (= lt!2143847 (choose!38840 (regOne!30138 r!7292) (regTwo!30138 r!7292) s!2326))))

(assert (=> d!1683460 (validRegex!6549 (regOne!30138 r!7292))))

(assert (=> d!1683460 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!648 (regOne!30138 r!7292) (regTwo!30138 r!7292) s!2326) lt!2143847)))

(declare-fun m!6269374 () Bool)

(assert (=> bs!1212552 m!6269374))

(declare-fun m!6269376 () Bool)

(assert (=> bs!1212552 m!6269376))

(declare-fun m!6269378 () Bool)

(assert (=> bs!1212552 m!6269378))

(assert (=> bs!1212552 m!6269354))

(assert (=> b!5221526 d!1683460))

(declare-fun d!1683462 () Bool)

(declare-fun isEmpty!32538 (Option!14924) Bool)

(assert (=> d!1683462 (= (isDefined!11627 (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) Nil!60616 s!2326 s!2326)) (not (isEmpty!32538 (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) Nil!60616 s!2326 s!2326))))))

(declare-fun bs!1212553 () Bool)

(assert (= bs!1212553 d!1683462))

(assert (=> bs!1212553 m!6268974))

(declare-fun m!6269380 () Bool)

(assert (=> bs!1212553 m!6269380))

(assert (=> b!5221526 d!1683462))

(declare-fun d!1683464 () Bool)

(assert (=> d!1683464 (= (Exists!1994 lambda!262069) (choose!38838 lambda!262069))))

(declare-fun bs!1212554 () Bool)

(assert (= bs!1212554 d!1683464))

(declare-fun m!6269382 () Bool)

(assert (=> bs!1212554 m!6269382))

(assert (=> b!5221526 d!1683464))

(declare-fun d!1683466 () Bool)

(declare-fun c!901215 () Bool)

(assert (=> d!1683466 (= c!901215 (isEmpty!32537 (t!373911 s!2326)))))

(declare-fun e!3250268 () Bool)

(assert (=> d!1683466 (= (matchZipper!1057 lt!2143781 (t!373911 s!2326)) e!3250268)))

(declare-fun b!5222001 () Bool)

(assert (=> b!5222001 (= e!3250268 (nullableZipper!1237 lt!2143781))))

(declare-fun b!5222002 () Bool)

(assert (=> b!5222002 (= e!3250268 (matchZipper!1057 (derivationStepZipper!1081 lt!2143781 (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))))))

(assert (= (and d!1683466 c!901215) b!5222001))

(assert (= (and d!1683466 (not c!901215)) b!5222002))

(assert (=> d!1683466 m!6269332))

(declare-fun m!6269384 () Bool)

(assert (=> b!5222001 m!6269384))

(assert (=> b!5222002 m!6269336))

(assert (=> b!5222002 m!6269336))

(declare-fun m!6269386 () Bool)

(assert (=> b!5222002 m!6269386))

(assert (=> b!5222002 m!6269340))

(assert (=> b!5222002 m!6269386))

(assert (=> b!5222002 m!6269340))

(declare-fun m!6269388 () Bool)

(assert (=> b!5222002 m!6269388))

(assert (=> b!5221548 d!1683466))

(declare-fun bm!368580 () Bool)

(declare-fun call!368585 () List!60738)

(declare-fun call!368586 () List!60738)

(assert (=> bm!368580 (= call!368585 call!368586)))

(declare-fun b!5222026 () Bool)

(declare-fun e!3250283 () (InoxSet Context!8394))

(declare-fun call!368590 () (InoxSet Context!8394))

(assert (=> b!5222026 (= e!3250283 call!368590)))

(declare-fun b!5222027 () Bool)

(declare-fun e!3250285 () (InoxSet Context!8394))

(declare-fun call!368587 () (InoxSet Context!8394))

(declare-fun call!368588 () (InoxSet Context!8394))

(assert (=> b!5222027 (= e!3250285 ((_ map or) call!368587 call!368588))))

(declare-fun b!5222028 () Bool)

(declare-fun e!3250282 () (InoxSet Context!8394))

(assert (=> b!5222028 (= e!3250282 call!368590)))

(declare-fun b!5222029 () Bool)

(declare-fun e!3250281 () (InoxSet Context!8394))

(declare-fun e!3250286 () (InoxSet Context!8394))

(assert (=> b!5222029 (= e!3250281 e!3250286)))

(declare-fun c!901228 () Bool)

(assert (=> b!5222029 (= c!901228 ((_ is Union!14813) (regTwo!30139 (regOne!30138 r!7292))))))

(declare-fun bm!368581 () Bool)

(assert (=> bm!368581 (= call!368590 call!368588)))

(declare-fun bm!368582 () Bool)

(assert (=> bm!368582 (= call!368587 (derivationStepZipperDown!261 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))) (ite c!901228 lt!2143761 (Context!8395 call!368586)) (h!67064 s!2326)))))

(declare-fun bm!368583 () Bool)

(declare-fun c!901229 () Bool)

(declare-fun c!901226 () Bool)

(declare-fun $colon$colon!1287 (List!60738 Regex!14813) List!60738)

(assert (=> bm!368583 (= call!368586 ($colon$colon!1287 (exprs!4697 lt!2143761) (ite (or c!901229 c!901226) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30139 (regOne!30138 r!7292)))))))

(declare-fun b!5222030 () Bool)

(assert (=> b!5222030 (= e!3250283 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5222031 () Bool)

(assert (=> b!5222031 (= e!3250281 (store ((as const (Array Context!8394 Bool)) false) lt!2143761 true))))

(declare-fun b!5222032 () Bool)

(declare-fun call!368589 () (InoxSet Context!8394))

(assert (=> b!5222032 (= e!3250286 ((_ map or) call!368587 call!368589))))

(declare-fun b!5222033 () Bool)

(declare-fun c!901227 () Bool)

(assert (=> b!5222033 (= c!901227 ((_ is Star!14813) (regTwo!30139 (regOne!30138 r!7292))))))

(assert (=> b!5222033 (= e!3250282 e!3250283)))

(declare-fun d!1683468 () Bool)

(declare-fun c!901230 () Bool)

(assert (=> d!1683468 (= c!901230 (and ((_ is ElementMatch!14813) (regTwo!30139 (regOne!30138 r!7292))) (= (c!901095 (regTwo!30139 (regOne!30138 r!7292))) (h!67064 s!2326))))))

(assert (=> d!1683468 (= (derivationStepZipperDown!261 (regTwo!30139 (regOne!30138 r!7292)) lt!2143761 (h!67064 s!2326)) e!3250281)))

(declare-fun b!5222025 () Bool)

(declare-fun e!3250284 () Bool)

(assert (=> b!5222025 (= c!901229 e!3250284)))

(declare-fun res!2217306 () Bool)

(assert (=> b!5222025 (=> (not res!2217306) (not e!3250284))))

(assert (=> b!5222025 (= res!2217306 ((_ is Concat!23658) (regTwo!30139 (regOne!30138 r!7292))))))

(assert (=> b!5222025 (= e!3250286 e!3250285)))

(declare-fun bm!368584 () Bool)

(assert (=> bm!368584 (= call!368589 (derivationStepZipperDown!261 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292)))))) (ite (or c!901228 c!901229) lt!2143761 (Context!8395 call!368585)) (h!67064 s!2326)))))

(declare-fun bm!368585 () Bool)

(assert (=> bm!368585 (= call!368588 call!368589)))

(declare-fun b!5222034 () Bool)

(assert (=> b!5222034 (= e!3250284 (nullable!4982 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))

(declare-fun b!5222035 () Bool)

(assert (=> b!5222035 (= e!3250285 e!3250282)))

(assert (=> b!5222035 (= c!901226 ((_ is Concat!23658) (regTwo!30139 (regOne!30138 r!7292))))))

(assert (= (and d!1683468 c!901230) b!5222031))

(assert (= (and d!1683468 (not c!901230)) b!5222029))

(assert (= (and b!5222029 c!901228) b!5222032))

(assert (= (and b!5222029 (not c!901228)) b!5222025))

(assert (= (and b!5222025 res!2217306) b!5222034))

(assert (= (and b!5222025 c!901229) b!5222027))

(assert (= (and b!5222025 (not c!901229)) b!5222035))

(assert (= (and b!5222035 c!901226) b!5222028))

(assert (= (and b!5222035 (not c!901226)) b!5222033))

(assert (= (and b!5222033 c!901227) b!5222026))

(assert (= (and b!5222033 (not c!901227)) b!5222030))

(assert (= (or b!5222028 b!5222026) bm!368580))

(assert (= (or b!5222028 b!5222026) bm!368581))

(assert (= (or b!5222027 bm!368580) bm!368583))

(assert (= (or b!5222027 bm!368581) bm!368585))

(assert (= (or b!5222032 bm!368585) bm!368584))

(assert (= (or b!5222032 b!5222027) bm!368582))

(declare-fun m!6269390 () Bool)

(assert (=> bm!368584 m!6269390))

(declare-fun m!6269392 () Bool)

(assert (=> b!5222034 m!6269392))

(declare-fun m!6269394 () Bool)

(assert (=> bm!368583 m!6269394))

(declare-fun m!6269396 () Bool)

(assert (=> bm!368582 m!6269396))

(declare-fun m!6269398 () Bool)

(assert (=> b!5222031 m!6269398))

(assert (=> b!5221527 d!1683468))

(declare-fun bm!368586 () Bool)

(declare-fun call!368591 () List!60738)

(declare-fun call!368592 () List!60738)

(assert (=> bm!368586 (= call!368591 call!368592)))

(declare-fun b!5222037 () Bool)

(declare-fun e!3250289 () (InoxSet Context!8394))

(declare-fun call!368596 () (InoxSet Context!8394))

(assert (=> b!5222037 (= e!3250289 call!368596)))

(declare-fun b!5222038 () Bool)

(declare-fun e!3250291 () (InoxSet Context!8394))

(declare-fun call!368593 () (InoxSet Context!8394))

(declare-fun call!368594 () (InoxSet Context!8394))

(assert (=> b!5222038 (= e!3250291 ((_ map or) call!368593 call!368594))))

(declare-fun b!5222039 () Bool)

(declare-fun e!3250288 () (InoxSet Context!8394))

(assert (=> b!5222039 (= e!3250288 call!368596)))

(declare-fun b!5222040 () Bool)

(declare-fun e!3250287 () (InoxSet Context!8394))

(declare-fun e!3250292 () (InoxSet Context!8394))

(assert (=> b!5222040 (= e!3250287 e!3250292)))

(declare-fun c!901233 () Bool)

(assert (=> b!5222040 (= c!901233 ((_ is Union!14813) (regOne!30139 (regOne!30138 r!7292))))))

(declare-fun bm!368587 () Bool)

(assert (=> bm!368587 (= call!368596 call!368594)))

(declare-fun bm!368588 () Bool)

(assert (=> bm!368588 (= call!368593 (derivationStepZipperDown!261 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292)))) (ite c!901233 lt!2143761 (Context!8395 call!368592)) (h!67064 s!2326)))))

(declare-fun c!901234 () Bool)

(declare-fun c!901231 () Bool)

(declare-fun bm!368589 () Bool)

(assert (=> bm!368589 (= call!368592 ($colon$colon!1287 (exprs!4697 lt!2143761) (ite (or c!901234 c!901231) (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (regOne!30139 (regOne!30138 r!7292)))))))

(declare-fun b!5222041 () Bool)

(assert (=> b!5222041 (= e!3250289 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5222042 () Bool)

(assert (=> b!5222042 (= e!3250287 (store ((as const (Array Context!8394 Bool)) false) lt!2143761 true))))

(declare-fun b!5222043 () Bool)

(declare-fun call!368595 () (InoxSet Context!8394))

(assert (=> b!5222043 (= e!3250292 ((_ map or) call!368593 call!368595))))

(declare-fun b!5222044 () Bool)

(declare-fun c!901232 () Bool)

(assert (=> b!5222044 (= c!901232 ((_ is Star!14813) (regOne!30139 (regOne!30138 r!7292))))))

(assert (=> b!5222044 (= e!3250288 e!3250289)))

(declare-fun d!1683470 () Bool)

(declare-fun c!901235 () Bool)

(assert (=> d!1683470 (= c!901235 (and ((_ is ElementMatch!14813) (regOne!30139 (regOne!30138 r!7292))) (= (c!901095 (regOne!30139 (regOne!30138 r!7292))) (h!67064 s!2326))))))

(assert (=> d!1683470 (= (derivationStepZipperDown!261 (regOne!30139 (regOne!30138 r!7292)) lt!2143761 (h!67064 s!2326)) e!3250287)))

(declare-fun b!5222036 () Bool)

(declare-fun e!3250290 () Bool)

(assert (=> b!5222036 (= c!901234 e!3250290)))

(declare-fun res!2217307 () Bool)

(assert (=> b!5222036 (=> (not res!2217307) (not e!3250290))))

(assert (=> b!5222036 (= res!2217307 ((_ is Concat!23658) (regOne!30139 (regOne!30138 r!7292))))))

(assert (=> b!5222036 (= e!3250292 e!3250291)))

(declare-fun bm!368590 () Bool)

(assert (=> bm!368590 (= call!368595 (derivationStepZipperDown!261 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292)))))) (ite (or c!901233 c!901234) lt!2143761 (Context!8395 call!368591)) (h!67064 s!2326)))))

(declare-fun bm!368591 () Bool)

(assert (=> bm!368591 (= call!368594 call!368595)))

(declare-fun b!5222045 () Bool)

(assert (=> b!5222045 (= e!3250290 (nullable!4982 (regOne!30138 (regOne!30139 (regOne!30138 r!7292)))))))

(declare-fun b!5222046 () Bool)

(assert (=> b!5222046 (= e!3250291 e!3250288)))

(assert (=> b!5222046 (= c!901231 ((_ is Concat!23658) (regOne!30139 (regOne!30138 r!7292))))))

(assert (= (and d!1683470 c!901235) b!5222042))

(assert (= (and d!1683470 (not c!901235)) b!5222040))

(assert (= (and b!5222040 c!901233) b!5222043))

(assert (= (and b!5222040 (not c!901233)) b!5222036))

(assert (= (and b!5222036 res!2217307) b!5222045))

(assert (= (and b!5222036 c!901234) b!5222038))

(assert (= (and b!5222036 (not c!901234)) b!5222046))

(assert (= (and b!5222046 c!901231) b!5222039))

(assert (= (and b!5222046 (not c!901231)) b!5222044))

(assert (= (and b!5222044 c!901232) b!5222037))

(assert (= (and b!5222044 (not c!901232)) b!5222041))

(assert (= (or b!5222039 b!5222037) bm!368586))

(assert (= (or b!5222039 b!5222037) bm!368587))

(assert (= (or b!5222038 bm!368586) bm!368589))

(assert (= (or b!5222038 bm!368587) bm!368591))

(assert (= (or b!5222043 bm!368591) bm!368590))

(assert (= (or b!5222043 b!5222038) bm!368588))

(declare-fun m!6269400 () Bool)

(assert (=> bm!368590 m!6269400))

(declare-fun m!6269402 () Bool)

(assert (=> b!5222045 m!6269402))

(declare-fun m!6269404 () Bool)

(assert (=> bm!368589 m!6269404))

(declare-fun m!6269406 () Bool)

(assert (=> bm!368588 m!6269406))

(assert (=> b!5222042 m!6269398))

(assert (=> b!5221527 d!1683470))

(assert (=> b!5221539 d!1683466))

(declare-fun d!1683472 () Bool)

(declare-fun c!901236 () Bool)

(assert (=> d!1683472 (= c!901236 (isEmpty!32537 (t!373911 s!2326)))))

(declare-fun e!3250293 () Bool)

(assert (=> d!1683472 (= (matchZipper!1057 lt!2143771 (t!373911 s!2326)) e!3250293)))

(declare-fun b!5222047 () Bool)

(assert (=> b!5222047 (= e!3250293 (nullableZipper!1237 lt!2143771))))

(declare-fun b!5222048 () Bool)

(assert (=> b!5222048 (= e!3250293 (matchZipper!1057 (derivationStepZipper!1081 lt!2143771 (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))))))

(assert (= (and d!1683472 c!901236) b!5222047))

(assert (= (and d!1683472 (not c!901236)) b!5222048))

(assert (=> d!1683472 m!6269332))

(declare-fun m!6269408 () Bool)

(assert (=> b!5222047 m!6269408))

(assert (=> b!5222048 m!6269336))

(assert (=> b!5222048 m!6269336))

(declare-fun m!6269410 () Bool)

(assert (=> b!5222048 m!6269410))

(assert (=> b!5222048 m!6269340))

(assert (=> b!5222048 m!6269410))

(assert (=> b!5222048 m!6269340))

(declare-fun m!6269412 () Bool)

(assert (=> b!5222048 m!6269412))

(assert (=> b!5221549 d!1683472))

(declare-fun bs!1212555 () Bool)

(declare-fun b!5222081 () Bool)

(assert (= bs!1212555 (and b!5222081 b!5221526)))

(declare-fun lambda!262113 () Int)

(assert (=> bs!1212555 (not (= lambda!262113 lambda!262069))))

(declare-fun bs!1212556 () Bool)

(assert (= bs!1212556 (and b!5222081 d!1683460)))

(assert (=> bs!1212556 (not (= lambda!262113 lambda!262108))))

(assert (=> bs!1212555 (not (= lambda!262113 lambda!262070))))

(declare-fun bs!1212557 () Bool)

(assert (= bs!1212557 (and b!5222081 d!1683458)))

(assert (=> bs!1212557 (not (= lambda!262113 lambda!262102))))

(assert (=> bs!1212556 (not (= lambda!262113 lambda!262107))))

(assert (=> b!5222081 true))

(assert (=> b!5222081 true))

(declare-fun bs!1212558 () Bool)

(declare-fun b!5222085 () Bool)

(assert (= bs!1212558 (and b!5222085 b!5221526)))

(declare-fun lambda!262114 () Int)

(assert (=> bs!1212558 (not (= lambda!262114 lambda!262069))))

(declare-fun bs!1212559 () Bool)

(assert (= bs!1212559 (and b!5222085 b!5222081)))

(assert (=> bs!1212559 (not (= lambda!262114 lambda!262113))))

(declare-fun bs!1212560 () Bool)

(assert (= bs!1212560 (and b!5222085 d!1683460)))

(assert (=> bs!1212560 (= lambda!262114 lambda!262108)))

(assert (=> bs!1212558 (= lambda!262114 lambda!262070)))

(declare-fun bs!1212561 () Bool)

(assert (= bs!1212561 (and b!5222085 d!1683458)))

(assert (=> bs!1212561 (not (= lambda!262114 lambda!262102))))

(assert (=> bs!1212560 (not (= lambda!262114 lambda!262107))))

(assert (=> b!5222085 true))

(assert (=> b!5222085 true))

(declare-fun e!3250315 () Bool)

(declare-fun call!368601 () Bool)

(assert (=> b!5222081 (= e!3250315 call!368601)))

(declare-fun b!5222082 () Bool)

(declare-fun e!3250314 () Bool)

(declare-fun e!3250318 () Bool)

(assert (=> b!5222082 (= e!3250314 e!3250318)))

(declare-fun res!2217325 () Bool)

(assert (=> b!5222082 (= res!2217325 (matchRSpec!1916 (regOne!30139 r!7292) s!2326))))

(assert (=> b!5222082 (=> res!2217325 e!3250318)))

(declare-fun d!1683474 () Bool)

(declare-fun c!901245 () Bool)

(assert (=> d!1683474 (= c!901245 ((_ is EmptyExpr!14813) r!7292))))

(declare-fun e!3250316 () Bool)

(assert (=> d!1683474 (= (matchRSpec!1916 r!7292 s!2326) e!3250316)))

(declare-fun b!5222083 () Bool)

(declare-fun e!3250312 () Bool)

(assert (=> b!5222083 (= e!3250312 (= s!2326 (Cons!60616 (c!901095 r!7292) Nil!60616)))))

(declare-fun bm!368596 () Bool)

(declare-fun call!368602 () Bool)

(assert (=> bm!368596 (= call!368602 (isEmpty!32537 s!2326))))

(declare-fun b!5222084 () Bool)

(assert (=> b!5222084 (= e!3250316 call!368602)))

(declare-fun e!3250313 () Bool)

(assert (=> b!5222085 (= e!3250313 call!368601)))

(declare-fun b!5222086 () Bool)

(declare-fun c!901248 () Bool)

(assert (=> b!5222086 (= c!901248 ((_ is ElementMatch!14813) r!7292))))

(declare-fun e!3250317 () Bool)

(assert (=> b!5222086 (= e!3250317 e!3250312)))

(declare-fun b!5222087 () Bool)

(assert (=> b!5222087 (= e!3250316 e!3250317)))

(declare-fun res!2217324 () Bool)

(assert (=> b!5222087 (= res!2217324 (not ((_ is EmptyLang!14813) r!7292)))))

(assert (=> b!5222087 (=> (not res!2217324) (not e!3250317))))

(declare-fun b!5222088 () Bool)

(assert (=> b!5222088 (= e!3250318 (matchRSpec!1916 (regTwo!30139 r!7292) s!2326))))

(declare-fun c!901246 () Bool)

(declare-fun bm!368597 () Bool)

(assert (=> bm!368597 (= call!368601 (Exists!1994 (ite c!901246 lambda!262113 lambda!262114)))))

(declare-fun b!5222089 () Bool)

(declare-fun res!2217326 () Bool)

(assert (=> b!5222089 (=> res!2217326 e!3250315)))

(assert (=> b!5222089 (= res!2217326 call!368602)))

(assert (=> b!5222089 (= e!3250313 e!3250315)))

(declare-fun b!5222090 () Bool)

(declare-fun c!901247 () Bool)

(assert (=> b!5222090 (= c!901247 ((_ is Union!14813) r!7292))))

(assert (=> b!5222090 (= e!3250312 e!3250314)))

(declare-fun b!5222091 () Bool)

(assert (=> b!5222091 (= e!3250314 e!3250313)))

(assert (=> b!5222091 (= c!901246 ((_ is Star!14813) r!7292))))

(assert (= (and d!1683474 c!901245) b!5222084))

(assert (= (and d!1683474 (not c!901245)) b!5222087))

(assert (= (and b!5222087 res!2217324) b!5222086))

(assert (= (and b!5222086 c!901248) b!5222083))

(assert (= (and b!5222086 (not c!901248)) b!5222090))

(assert (= (and b!5222090 c!901247) b!5222082))

(assert (= (and b!5222090 (not c!901247)) b!5222091))

(assert (= (and b!5222082 (not res!2217325)) b!5222088))

(assert (= (and b!5222091 c!901246) b!5222089))

(assert (= (and b!5222091 (not c!901246)) b!5222085))

(assert (= (and b!5222089 (not res!2217326)) b!5222081))

(assert (= (or b!5222081 b!5222085) bm!368597))

(assert (= (or b!5222084 b!5222089) bm!368596))

(declare-fun m!6269414 () Bool)

(assert (=> b!5222082 m!6269414))

(declare-fun m!6269416 () Bool)

(assert (=> bm!368596 m!6269416))

(declare-fun m!6269418 () Bool)

(assert (=> b!5222088 m!6269418))

(declare-fun m!6269420 () Bool)

(assert (=> bm!368597 m!6269420))

(assert (=> b!5221540 d!1683474))

(declare-fun b!5222120 () Bool)

(declare-fun e!3250339 () Bool)

(declare-fun lt!2143850 () Bool)

(assert (=> b!5222120 (= e!3250339 (not lt!2143850))))

(declare-fun b!5222121 () Bool)

(declare-fun e!3250333 () Bool)

(declare-fun e!3250337 () Bool)

(assert (=> b!5222121 (= e!3250333 e!3250337)))

(declare-fun res!2217344 () Bool)

(assert (=> b!5222121 (=> (not res!2217344) (not e!3250337))))

(assert (=> b!5222121 (= res!2217344 (not lt!2143850))))

(declare-fun bm!368600 () Bool)

(declare-fun call!368605 () Bool)

(assert (=> bm!368600 (= call!368605 (isEmpty!32537 s!2326))))

(declare-fun b!5222122 () Bool)

(declare-fun e!3250338 () Bool)

(declare-fun derivativeStep!4059 (Regex!14813 C!29896) Regex!14813)

(assert (=> b!5222122 (= e!3250338 (matchR!6998 (derivativeStep!4059 r!7292 (head!11193 s!2326)) (tail!10290 s!2326)))))

(declare-fun b!5222123 () Bool)

(declare-fun e!3250336 () Bool)

(assert (=> b!5222123 (= e!3250337 e!3250336)))

(declare-fun res!2217349 () Bool)

(assert (=> b!5222123 (=> res!2217349 e!3250336)))

(assert (=> b!5222123 (= res!2217349 call!368605)))

(declare-fun b!5222124 () Bool)

(declare-fun e!3250334 () Bool)

(assert (=> b!5222124 (= e!3250334 (= (head!11193 s!2326) (c!901095 r!7292)))))

(declare-fun d!1683476 () Bool)

(declare-fun e!3250335 () Bool)

(assert (=> d!1683476 e!3250335))

(declare-fun c!901255 () Bool)

(assert (=> d!1683476 (= c!901255 ((_ is EmptyExpr!14813) r!7292))))

(assert (=> d!1683476 (= lt!2143850 e!3250338)))

(declare-fun c!901257 () Bool)

(assert (=> d!1683476 (= c!901257 (isEmpty!32537 s!2326))))

(assert (=> d!1683476 (validRegex!6549 r!7292)))

(assert (=> d!1683476 (= (matchR!6998 r!7292 s!2326) lt!2143850)))

(declare-fun b!5222125 () Bool)

(assert (=> b!5222125 (= e!3250335 (= lt!2143850 call!368605))))

(declare-fun b!5222126 () Bool)

(assert (=> b!5222126 (= e!3250338 (nullable!4982 r!7292))))

(declare-fun b!5222127 () Bool)

(declare-fun res!2217348 () Bool)

(assert (=> b!5222127 (=> (not res!2217348) (not e!3250334))))

(assert (=> b!5222127 (= res!2217348 (isEmpty!32537 (tail!10290 s!2326)))))

(declare-fun b!5222128 () Bool)

(declare-fun res!2217343 () Bool)

(assert (=> b!5222128 (=> (not res!2217343) (not e!3250334))))

(assert (=> b!5222128 (= res!2217343 (not call!368605))))

(declare-fun b!5222129 () Bool)

(declare-fun res!2217350 () Bool)

(assert (=> b!5222129 (=> res!2217350 e!3250336)))

(assert (=> b!5222129 (= res!2217350 (not (isEmpty!32537 (tail!10290 s!2326))))))

(declare-fun b!5222130 () Bool)

(assert (=> b!5222130 (= e!3250336 (not (= (head!11193 s!2326) (c!901095 r!7292))))))

(declare-fun b!5222131 () Bool)

(declare-fun res!2217346 () Bool)

(assert (=> b!5222131 (=> res!2217346 e!3250333)))

(assert (=> b!5222131 (= res!2217346 (not ((_ is ElementMatch!14813) r!7292)))))

(assert (=> b!5222131 (= e!3250339 e!3250333)))

(declare-fun b!5222132 () Bool)

(declare-fun res!2217347 () Bool)

(assert (=> b!5222132 (=> res!2217347 e!3250333)))

(assert (=> b!5222132 (= res!2217347 e!3250334)))

(declare-fun res!2217345 () Bool)

(assert (=> b!5222132 (=> (not res!2217345) (not e!3250334))))

(assert (=> b!5222132 (= res!2217345 lt!2143850)))

(declare-fun b!5222133 () Bool)

(assert (=> b!5222133 (= e!3250335 e!3250339)))

(declare-fun c!901256 () Bool)

(assert (=> b!5222133 (= c!901256 ((_ is EmptyLang!14813) r!7292))))

(assert (= (and d!1683476 c!901257) b!5222126))

(assert (= (and d!1683476 (not c!901257)) b!5222122))

(assert (= (and d!1683476 c!901255) b!5222125))

(assert (= (and d!1683476 (not c!901255)) b!5222133))

(assert (= (and b!5222133 c!901256) b!5222120))

(assert (= (and b!5222133 (not c!901256)) b!5222131))

(assert (= (and b!5222131 (not res!2217346)) b!5222132))

(assert (= (and b!5222132 res!2217345) b!5222128))

(assert (= (and b!5222128 res!2217343) b!5222127))

(assert (= (and b!5222127 res!2217348) b!5222124))

(assert (= (and b!5222132 (not res!2217347)) b!5222121))

(assert (= (and b!5222121 res!2217344) b!5222123))

(assert (= (and b!5222123 (not res!2217349)) b!5222129))

(assert (= (and b!5222129 (not res!2217350)) b!5222130))

(assert (= (or b!5222125 b!5222123 b!5222128) bm!368600))

(declare-fun m!6269422 () Bool)

(assert (=> b!5222124 m!6269422))

(declare-fun m!6269424 () Bool)

(assert (=> b!5222127 m!6269424))

(assert (=> b!5222127 m!6269424))

(declare-fun m!6269426 () Bool)

(assert (=> b!5222127 m!6269426))

(assert (=> b!5222130 m!6269422))

(assert (=> b!5222129 m!6269424))

(assert (=> b!5222129 m!6269424))

(assert (=> b!5222129 m!6269426))

(assert (=> bm!368600 m!6269416))

(assert (=> b!5222122 m!6269422))

(assert (=> b!5222122 m!6269422))

(declare-fun m!6269428 () Bool)

(assert (=> b!5222122 m!6269428))

(assert (=> b!5222122 m!6269424))

(assert (=> b!5222122 m!6269428))

(assert (=> b!5222122 m!6269424))

(declare-fun m!6269430 () Bool)

(assert (=> b!5222122 m!6269430))

(declare-fun m!6269432 () Bool)

(assert (=> b!5222126 m!6269432))

(assert (=> d!1683476 m!6269416))

(assert (=> d!1683476 m!6268966))

(assert (=> b!5221540 d!1683476))

(declare-fun d!1683478 () Bool)

(assert (=> d!1683478 (= (matchR!6998 r!7292 s!2326) (matchRSpec!1916 r!7292 s!2326))))

(declare-fun lt!2143853 () Unit!152528)

(declare-fun choose!38841 (Regex!14813 List!60740) Unit!152528)

(assert (=> d!1683478 (= lt!2143853 (choose!38841 r!7292 s!2326))))

(assert (=> d!1683478 (validRegex!6549 r!7292)))

(assert (=> d!1683478 (= (mainMatchTheorem!1916 r!7292 s!2326) lt!2143853)))

(declare-fun bs!1212562 () Bool)

(assert (= bs!1212562 d!1683478))

(assert (=> bs!1212562 m!6269028))

(assert (=> bs!1212562 m!6269026))

(declare-fun m!6269434 () Bool)

(assert (=> bs!1212562 m!6269434))

(assert (=> bs!1212562 m!6268966))

(assert (=> b!5221540 d!1683478))

(declare-fun d!1683480 () Bool)

(declare-fun lambda!262117 () Int)

(declare-fun forall!14245 (List!60738 Int) Bool)

(assert (=> d!1683480 (= (inv!80279 setElem!33217) (forall!14245 (exprs!4697 setElem!33217) lambda!262117))))

(declare-fun bs!1212563 () Bool)

(assert (= bs!1212563 d!1683480))

(declare-fun m!6269436 () Bool)

(assert (=> bs!1212563 m!6269436))

(assert (=> setNonEmpty!33217 d!1683480))

(declare-fun bs!1212564 () Bool)

(declare-fun d!1683482 () Bool)

(assert (= bs!1212564 (and d!1683482 d!1683480)))

(declare-fun lambda!262120 () Int)

(assert (=> bs!1212564 (= lambda!262120 lambda!262117)))

(declare-fun b!5222154 () Bool)

(declare-fun e!3250354 () Bool)

(declare-fun e!3250352 () Bool)

(assert (=> b!5222154 (= e!3250354 e!3250352)))

(declare-fun c!901269 () Bool)

(declare-fun tail!10291 (List!60738) List!60738)

(assert (=> b!5222154 (= c!901269 (isEmpty!32534 (tail!10291 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun b!5222155 () Bool)

(declare-fun e!3250356 () Bool)

(assert (=> b!5222155 (= e!3250356 (isEmpty!32534 (t!373909 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun b!5222156 () Bool)

(declare-fun e!3250353 () Regex!14813)

(assert (=> b!5222156 (= e!3250353 (h!67062 (exprs!4697 (h!67063 zl!343))))))

(declare-fun b!5222157 () Bool)

(declare-fun e!3250355 () Regex!14813)

(assert (=> b!5222157 (= e!3250353 e!3250355)))

(declare-fun c!901267 () Bool)

(assert (=> b!5222157 (= c!901267 ((_ is Cons!60614) (exprs!4697 (h!67063 zl!343))))))

(declare-fun b!5222158 () Bool)

(declare-fun lt!2143856 () Regex!14813)

(declare-fun isEmptyExpr!773 (Regex!14813) Bool)

(assert (=> b!5222158 (= e!3250354 (isEmptyExpr!773 lt!2143856))))

(declare-fun b!5222159 () Bool)

(declare-fun isConcat!296 (Regex!14813) Bool)

(assert (=> b!5222159 (= e!3250352 (isConcat!296 lt!2143856))))

(declare-fun b!5222160 () Bool)

(declare-fun head!11194 (List!60738) Regex!14813)

(assert (=> b!5222160 (= e!3250352 (= lt!2143856 (head!11194 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun e!3250357 () Bool)

(assert (=> d!1683482 e!3250357))

(declare-fun res!2217356 () Bool)

(assert (=> d!1683482 (=> (not res!2217356) (not e!3250357))))

(assert (=> d!1683482 (= res!2217356 (validRegex!6549 lt!2143856))))

(assert (=> d!1683482 (= lt!2143856 e!3250353)))

(declare-fun c!901266 () Bool)

(assert (=> d!1683482 (= c!901266 e!3250356)))

(declare-fun res!2217355 () Bool)

(assert (=> d!1683482 (=> (not res!2217355) (not e!3250356))))

(assert (=> d!1683482 (= res!2217355 ((_ is Cons!60614) (exprs!4697 (h!67063 zl!343))))))

(assert (=> d!1683482 (forall!14245 (exprs!4697 (h!67063 zl!343)) lambda!262120)))

(assert (=> d!1683482 (= (generalisedConcat!482 (exprs!4697 (h!67063 zl!343))) lt!2143856)))

(declare-fun b!5222161 () Bool)

(assert (=> b!5222161 (= e!3250355 EmptyExpr!14813)))

(declare-fun b!5222162 () Bool)

(assert (=> b!5222162 (= e!3250357 e!3250354)))

(declare-fun c!901268 () Bool)

(assert (=> b!5222162 (= c!901268 (isEmpty!32534 (exprs!4697 (h!67063 zl!343))))))

(declare-fun b!5222163 () Bool)

(assert (=> b!5222163 (= e!3250355 (Concat!23658 (h!67062 (exprs!4697 (h!67063 zl!343))) (generalisedConcat!482 (t!373909 (exprs!4697 (h!67063 zl!343))))))))

(assert (= (and d!1683482 res!2217355) b!5222155))

(assert (= (and d!1683482 c!901266) b!5222156))

(assert (= (and d!1683482 (not c!901266)) b!5222157))

(assert (= (and b!5222157 c!901267) b!5222163))

(assert (= (and b!5222157 (not c!901267)) b!5222161))

(assert (= (and d!1683482 res!2217356) b!5222162))

(assert (= (and b!5222162 c!901268) b!5222158))

(assert (= (and b!5222162 (not c!901268)) b!5222154))

(assert (= (and b!5222154 c!901269) b!5222160))

(assert (= (and b!5222154 (not c!901269)) b!5222159))

(declare-fun m!6269438 () Bool)

(assert (=> b!5222159 m!6269438))

(declare-fun m!6269440 () Bool)

(assert (=> b!5222163 m!6269440))

(declare-fun m!6269442 () Bool)

(assert (=> d!1683482 m!6269442))

(declare-fun m!6269444 () Bool)

(assert (=> d!1683482 m!6269444))

(declare-fun m!6269446 () Bool)

(assert (=> b!5222158 m!6269446))

(declare-fun m!6269448 () Bool)

(assert (=> b!5222154 m!6269448))

(assert (=> b!5222154 m!6269448))

(declare-fun m!6269450 () Bool)

(assert (=> b!5222154 m!6269450))

(assert (=> b!5222155 m!6269060))

(declare-fun m!6269452 () Bool)

(assert (=> b!5222160 m!6269452))

(declare-fun m!6269454 () Bool)

(assert (=> b!5222162 m!6269454))

(assert (=> b!5221519 d!1683482))

(declare-fun bs!1212565 () Bool)

(declare-fun d!1683484 () Bool)

(assert (= bs!1212565 (and d!1683484 d!1683480)))

(declare-fun lambda!262121 () Int)

(assert (=> bs!1212565 (= lambda!262121 lambda!262117)))

(declare-fun bs!1212566 () Bool)

(assert (= bs!1212566 (and d!1683484 d!1683482)))

(assert (=> bs!1212566 (= lambda!262121 lambda!262120)))

(assert (=> d!1683484 (= (inv!80279 (h!67063 zl!343)) (forall!14245 (exprs!4697 (h!67063 zl!343)) lambda!262121))))

(declare-fun bs!1212567 () Bool)

(assert (= bs!1212567 d!1683484))

(declare-fun m!6269456 () Bool)

(assert (=> bs!1212567 m!6269456))

(assert (=> b!5221521 d!1683484))

(assert (=> b!5221532 d!1683472))

(declare-fun e!3250358 () Bool)

(declare-fun d!1683486 () Bool)

(assert (=> d!1683486 (= (matchZipper!1057 ((_ map or) lt!2143779 lt!2143771) (t!373911 s!2326)) e!3250358)))

(declare-fun res!2217357 () Bool)

(assert (=> d!1683486 (=> res!2217357 e!3250358)))

(assert (=> d!1683486 (= res!2217357 (matchZipper!1057 lt!2143779 (t!373911 s!2326)))))

(declare-fun lt!2143857 () Unit!152528)

(assert (=> d!1683486 (= lt!2143857 (choose!38837 lt!2143779 lt!2143771 (t!373911 s!2326)))))

(assert (=> d!1683486 (= (lemmaZipperConcatMatchesSameAsBothZippers!50 lt!2143779 lt!2143771 (t!373911 s!2326)) lt!2143857)))

(declare-fun b!5222164 () Bool)

(assert (=> b!5222164 (= e!3250358 (matchZipper!1057 lt!2143771 (t!373911 s!2326)))))

(assert (= (and d!1683486 (not res!2217357)) b!5222164))

(assert (=> d!1683486 m!6268992))

(assert (=> d!1683486 m!6268990))

(declare-fun m!6269458 () Bool)

(assert (=> d!1683486 m!6269458))

(assert (=> b!5222164 m!6269032))

(assert (=> b!5221531 d!1683486))

(declare-fun d!1683488 () Bool)

(declare-fun c!901270 () Bool)

(assert (=> d!1683488 (= c!901270 (isEmpty!32537 (t!373911 s!2326)))))

(declare-fun e!3250359 () Bool)

(assert (=> d!1683488 (= (matchZipper!1057 lt!2143779 (t!373911 s!2326)) e!3250359)))

(declare-fun b!5222165 () Bool)

(assert (=> b!5222165 (= e!3250359 (nullableZipper!1237 lt!2143779))))

(declare-fun b!5222166 () Bool)

(assert (=> b!5222166 (= e!3250359 (matchZipper!1057 (derivationStepZipper!1081 lt!2143779 (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))))))

(assert (= (and d!1683488 c!901270) b!5222165))

(assert (= (and d!1683488 (not c!901270)) b!5222166))

(assert (=> d!1683488 m!6269332))

(declare-fun m!6269460 () Bool)

(assert (=> b!5222165 m!6269460))

(assert (=> b!5222166 m!6269336))

(assert (=> b!5222166 m!6269336))

(declare-fun m!6269462 () Bool)

(assert (=> b!5222166 m!6269462))

(assert (=> b!5222166 m!6269340))

(assert (=> b!5222166 m!6269462))

(assert (=> b!5222166 m!6269340))

(declare-fun m!6269464 () Bool)

(assert (=> b!5222166 m!6269464))

(assert (=> b!5221531 d!1683488))

(declare-fun d!1683490 () Bool)

(declare-fun c!901271 () Bool)

(assert (=> d!1683490 (= c!901271 (isEmpty!32537 (t!373911 s!2326)))))

(declare-fun e!3250360 () Bool)

(assert (=> d!1683490 (= (matchZipper!1057 ((_ map or) lt!2143779 lt!2143771) (t!373911 s!2326)) e!3250360)))

(declare-fun b!5222167 () Bool)

(assert (=> b!5222167 (= e!3250360 (nullableZipper!1237 ((_ map or) lt!2143779 lt!2143771)))))

(declare-fun b!5222168 () Bool)

(assert (=> b!5222168 (= e!3250360 (matchZipper!1057 (derivationStepZipper!1081 ((_ map or) lt!2143779 lt!2143771) (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))))))

(assert (= (and d!1683490 c!901271) b!5222167))

(assert (= (and d!1683490 (not c!901271)) b!5222168))

(assert (=> d!1683490 m!6269332))

(declare-fun m!6269466 () Bool)

(assert (=> b!5222167 m!6269466))

(assert (=> b!5222168 m!6269336))

(assert (=> b!5222168 m!6269336))

(declare-fun m!6269468 () Bool)

(assert (=> b!5222168 m!6269468))

(assert (=> b!5222168 m!6269340))

(assert (=> b!5222168 m!6269468))

(assert (=> b!5222168 m!6269340))

(declare-fun m!6269470 () Bool)

(assert (=> b!5222168 m!6269470))

(assert (=> b!5221531 d!1683490))

(declare-fun d!1683492 () Bool)

(declare-fun lt!2143860 () Regex!14813)

(assert (=> d!1683492 (validRegex!6549 lt!2143860)))

(assert (=> d!1683492 (= lt!2143860 (generalisedUnion!742 (unfocusZipperList!255 zl!343)))))

(assert (=> d!1683492 (= (unfocusZipper!555 zl!343) lt!2143860)))

(declare-fun bs!1212568 () Bool)

(assert (= bs!1212568 d!1683492))

(declare-fun m!6269472 () Bool)

(assert (=> bs!1212568 m!6269472))

(assert (=> bs!1212568 m!6269054))

(assert (=> bs!1212568 m!6269054))

(assert (=> bs!1212568 m!6269056))

(assert (=> b!5221541 d!1683492))

(declare-fun c!901277 () Bool)

(declare-fun call!368613 () Bool)

(declare-fun c!901276 () Bool)

(declare-fun bm!368607 () Bool)

(assert (=> bm!368607 (= call!368613 (validRegex!6549 (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))))

(declare-fun b!5222187 () Bool)

(declare-fun e!3250381 () Bool)

(declare-fun e!3250380 () Bool)

(assert (=> b!5222187 (= e!3250381 e!3250380)))

(declare-fun res!2217371 () Bool)

(assert (=> b!5222187 (=> (not res!2217371) (not e!3250380))))

(declare-fun call!368612 () Bool)

(assert (=> b!5222187 (= res!2217371 call!368612)))

(declare-fun d!1683494 () Bool)

(declare-fun res!2217369 () Bool)

(declare-fun e!3250378 () Bool)

(assert (=> d!1683494 (=> res!2217369 e!3250378)))

(assert (=> d!1683494 (= res!2217369 ((_ is ElementMatch!14813) (regTwo!30139 (regOne!30138 r!7292))))))

(assert (=> d!1683494 (= (validRegex!6549 (regTwo!30139 (regOne!30138 r!7292))) e!3250378)))

(declare-fun b!5222188 () Bool)

(declare-fun e!3250376 () Bool)

(assert (=> b!5222188 (= e!3250376 call!368613)))

(declare-fun b!5222189 () Bool)

(declare-fun e!3250377 () Bool)

(declare-fun call!368614 () Bool)

(assert (=> b!5222189 (= e!3250377 call!368614)))

(declare-fun bm!368608 () Bool)

(assert (=> bm!368608 (= call!368614 (validRegex!6549 (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))))))

(declare-fun bm!368609 () Bool)

(assert (=> bm!368609 (= call!368612 call!368613)))

(declare-fun b!5222190 () Bool)

(declare-fun e!3250375 () Bool)

(assert (=> b!5222190 (= e!3250378 e!3250375)))

(assert (=> b!5222190 (= c!901276 ((_ is Star!14813) (regTwo!30139 (regOne!30138 r!7292))))))

(declare-fun b!5222191 () Bool)

(declare-fun e!3250379 () Bool)

(assert (=> b!5222191 (= e!3250375 e!3250379)))

(assert (=> b!5222191 (= c!901277 ((_ is Union!14813) (regTwo!30139 (regOne!30138 r!7292))))))

(declare-fun b!5222192 () Bool)

(declare-fun res!2217370 () Bool)

(assert (=> b!5222192 (=> (not res!2217370) (not e!3250377))))

(assert (=> b!5222192 (= res!2217370 call!368612)))

(assert (=> b!5222192 (= e!3250379 e!3250377)))

(declare-fun b!5222193 () Bool)

(assert (=> b!5222193 (= e!3250380 call!368614)))

(declare-fun b!5222194 () Bool)

(declare-fun res!2217368 () Bool)

(assert (=> b!5222194 (=> res!2217368 e!3250381)))

(assert (=> b!5222194 (= res!2217368 (not ((_ is Concat!23658) (regTwo!30139 (regOne!30138 r!7292)))))))

(assert (=> b!5222194 (= e!3250379 e!3250381)))

(declare-fun b!5222195 () Bool)

(assert (=> b!5222195 (= e!3250375 e!3250376)))

(declare-fun res!2217372 () Bool)

(assert (=> b!5222195 (= res!2217372 (not (nullable!4982 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))))

(assert (=> b!5222195 (=> (not res!2217372) (not e!3250376))))

(assert (= (and d!1683494 (not res!2217369)) b!5222190))

(assert (= (and b!5222190 c!901276) b!5222195))

(assert (= (and b!5222190 (not c!901276)) b!5222191))

(assert (= (and b!5222195 res!2217372) b!5222188))

(assert (= (and b!5222191 c!901277) b!5222192))

(assert (= (and b!5222191 (not c!901277)) b!5222194))

(assert (= (and b!5222192 res!2217370) b!5222189))

(assert (= (and b!5222194 (not res!2217368)) b!5222187))

(assert (= (and b!5222187 res!2217371) b!5222193))

(assert (= (or b!5222189 b!5222193) bm!368608))

(assert (= (or b!5222192 b!5222187) bm!368609))

(assert (= (or b!5222188 bm!368609) bm!368607))

(declare-fun m!6269474 () Bool)

(assert (=> bm!368607 m!6269474))

(declare-fun m!6269476 () Bool)

(assert (=> bm!368608 m!6269476))

(declare-fun m!6269478 () Bool)

(assert (=> b!5222195 m!6269478))

(assert (=> b!5221533 d!1683494))

(declare-fun d!1683496 () Bool)

(assert (=> d!1683496 (= (isEmpty!32533 (t!373910 zl!343)) ((_ is Nil!60615) (t!373910 zl!343)))))

(assert (=> b!5221543 d!1683496))

(declare-fun bs!1212569 () Bool)

(declare-fun d!1683498 () Bool)

(assert (= bs!1212569 (and d!1683498 d!1683480)))

(declare-fun lambda!262124 () Int)

(assert (=> bs!1212569 (= lambda!262124 lambda!262117)))

(declare-fun bs!1212570 () Bool)

(assert (= bs!1212570 (and d!1683498 d!1683482)))

(assert (=> bs!1212570 (= lambda!262124 lambda!262120)))

(declare-fun bs!1212571 () Bool)

(assert (= bs!1212571 (and d!1683498 d!1683484)))

(assert (=> bs!1212571 (= lambda!262124 lambda!262121)))

(declare-fun b!5222216 () Bool)

(declare-fun e!3250396 () Bool)

(declare-fun lt!2143863 () Regex!14813)

(declare-fun isEmptyLang!782 (Regex!14813) Bool)

(assert (=> b!5222216 (= e!3250396 (isEmptyLang!782 lt!2143863))))

(declare-fun b!5222217 () Bool)

(declare-fun e!3250398 () Bool)

(declare-fun isUnion!214 (Regex!14813) Bool)

(assert (=> b!5222217 (= e!3250398 (isUnion!214 lt!2143863))))

(declare-fun b!5222218 () Bool)

(declare-fun e!3250394 () Bool)

(assert (=> b!5222218 (= e!3250394 (isEmpty!32534 (t!373909 (unfocusZipperList!255 zl!343))))))

(declare-fun b!5222219 () Bool)

(declare-fun e!3250399 () Bool)

(assert (=> b!5222219 (= e!3250399 e!3250396)))

(declare-fun c!901289 () Bool)

(assert (=> b!5222219 (= c!901289 (isEmpty!32534 (unfocusZipperList!255 zl!343)))))

(declare-fun b!5222220 () Bool)

(assert (=> b!5222220 (= e!3250398 (= lt!2143863 (head!11194 (unfocusZipperList!255 zl!343))))))

(declare-fun b!5222221 () Bool)

(declare-fun e!3250397 () Regex!14813)

(assert (=> b!5222221 (= e!3250397 (h!67062 (unfocusZipperList!255 zl!343)))))

(declare-fun b!5222223 () Bool)

(declare-fun e!3250395 () Regex!14813)

(assert (=> b!5222223 (= e!3250395 EmptyLang!14813)))

(declare-fun b!5222224 () Bool)

(assert (=> b!5222224 (= e!3250395 (Union!14813 (h!67062 (unfocusZipperList!255 zl!343)) (generalisedUnion!742 (t!373909 (unfocusZipperList!255 zl!343)))))))

(declare-fun b!5222225 () Bool)

(assert (=> b!5222225 (= e!3250397 e!3250395)))

(declare-fun c!901288 () Bool)

(assert (=> b!5222225 (= c!901288 ((_ is Cons!60614) (unfocusZipperList!255 zl!343)))))

(assert (=> d!1683498 e!3250399))

(declare-fun res!2217377 () Bool)

(assert (=> d!1683498 (=> (not res!2217377) (not e!3250399))))

(assert (=> d!1683498 (= res!2217377 (validRegex!6549 lt!2143863))))

(assert (=> d!1683498 (= lt!2143863 e!3250397)))

(declare-fun c!901287 () Bool)

(assert (=> d!1683498 (= c!901287 e!3250394)))

(declare-fun res!2217378 () Bool)

(assert (=> d!1683498 (=> (not res!2217378) (not e!3250394))))

(assert (=> d!1683498 (= res!2217378 ((_ is Cons!60614) (unfocusZipperList!255 zl!343)))))

(assert (=> d!1683498 (forall!14245 (unfocusZipperList!255 zl!343) lambda!262124)))

(assert (=> d!1683498 (= (generalisedUnion!742 (unfocusZipperList!255 zl!343)) lt!2143863)))

(declare-fun b!5222222 () Bool)

(assert (=> b!5222222 (= e!3250396 e!3250398)))

(declare-fun c!901286 () Bool)

(assert (=> b!5222222 (= c!901286 (isEmpty!32534 (tail!10291 (unfocusZipperList!255 zl!343))))))

(assert (= (and d!1683498 res!2217378) b!5222218))

(assert (= (and d!1683498 c!901287) b!5222221))

(assert (= (and d!1683498 (not c!901287)) b!5222225))

(assert (= (and b!5222225 c!901288) b!5222224))

(assert (= (and b!5222225 (not c!901288)) b!5222223))

(assert (= (and d!1683498 res!2217377) b!5222219))

(assert (= (and b!5222219 c!901289) b!5222216))

(assert (= (and b!5222219 (not c!901289)) b!5222222))

(assert (= (and b!5222222 c!901286) b!5222220))

(assert (= (and b!5222222 (not c!901286)) b!5222217))

(assert (=> b!5222219 m!6269054))

(declare-fun m!6269480 () Bool)

(assert (=> b!5222219 m!6269480))

(assert (=> b!5222222 m!6269054))

(declare-fun m!6269482 () Bool)

(assert (=> b!5222222 m!6269482))

(assert (=> b!5222222 m!6269482))

(declare-fun m!6269484 () Bool)

(assert (=> b!5222222 m!6269484))

(declare-fun m!6269486 () Bool)

(assert (=> b!5222218 m!6269486))

(declare-fun m!6269488 () Bool)

(assert (=> b!5222217 m!6269488))

(declare-fun m!6269490 () Bool)

(assert (=> d!1683498 m!6269490))

(assert (=> d!1683498 m!6269054))

(declare-fun m!6269492 () Bool)

(assert (=> d!1683498 m!6269492))

(declare-fun m!6269494 () Bool)

(assert (=> b!5222224 m!6269494))

(declare-fun m!6269496 () Bool)

(assert (=> b!5222216 m!6269496))

(assert (=> b!5222220 m!6269054))

(declare-fun m!6269498 () Bool)

(assert (=> b!5222220 m!6269498))

(assert (=> b!5221542 d!1683498))

(declare-fun bs!1212572 () Bool)

(declare-fun d!1683500 () Bool)

(assert (= bs!1212572 (and d!1683500 d!1683480)))

(declare-fun lambda!262127 () Int)

(assert (=> bs!1212572 (= lambda!262127 lambda!262117)))

(declare-fun bs!1212573 () Bool)

(assert (= bs!1212573 (and d!1683500 d!1683482)))

(assert (=> bs!1212573 (= lambda!262127 lambda!262120)))

(declare-fun bs!1212574 () Bool)

(assert (= bs!1212574 (and d!1683500 d!1683484)))

(assert (=> bs!1212574 (= lambda!262127 lambda!262121)))

(declare-fun bs!1212575 () Bool)

(assert (= bs!1212575 (and d!1683500 d!1683498)))

(assert (=> bs!1212575 (= lambda!262127 lambda!262124)))

(declare-fun lt!2143866 () List!60738)

(assert (=> d!1683500 (forall!14245 lt!2143866 lambda!262127)))

(declare-fun e!3250402 () List!60738)

(assert (=> d!1683500 (= lt!2143866 e!3250402)))

(declare-fun c!901292 () Bool)

(assert (=> d!1683500 (= c!901292 ((_ is Cons!60615) zl!343))))

(assert (=> d!1683500 (= (unfocusZipperList!255 zl!343) lt!2143866)))

(declare-fun b!5222230 () Bool)

(assert (=> b!5222230 (= e!3250402 (Cons!60614 (generalisedConcat!482 (exprs!4697 (h!67063 zl!343))) (unfocusZipperList!255 (t!373910 zl!343))))))

(declare-fun b!5222231 () Bool)

(assert (=> b!5222231 (= e!3250402 Nil!60614)))

(assert (= (and d!1683500 c!901292) b!5222230))

(assert (= (and d!1683500 (not c!901292)) b!5222231))

(declare-fun m!6269500 () Bool)

(assert (=> d!1683500 m!6269500))

(assert (=> b!5222230 m!6268994))

(declare-fun m!6269502 () Bool)

(assert (=> b!5222230 m!6269502))

(assert (=> b!5221542 d!1683500))

(declare-fun d!1683502 () Bool)

(declare-fun dynLambda!23949 (Int Context!8394) (InoxSet Context!8394))

(assert (=> d!1683502 (= (flatMap!540 z!1189 lambda!262071) (dynLambda!23949 lambda!262071 (h!67063 zl!343)))))

(declare-fun lt!2143869 () Unit!152528)

(declare-fun choose!38842 ((InoxSet Context!8394) Context!8394 Int) Unit!152528)

(assert (=> d!1683502 (= lt!2143869 (choose!38842 z!1189 (h!67063 zl!343) lambda!262071))))

(assert (=> d!1683502 (= z!1189 (store ((as const (Array Context!8394 Bool)) false) (h!67063 zl!343) true))))

(assert (=> d!1683502 (= (lemmaFlatMapOnSingletonSet!72 z!1189 (h!67063 zl!343) lambda!262071) lt!2143869)))

(declare-fun b_lambda!201909 () Bool)

(assert (=> (not b_lambda!201909) (not d!1683502)))

(declare-fun bs!1212576 () Bool)

(assert (= bs!1212576 d!1683502))

(assert (=> bs!1212576 m!6269052))

(declare-fun m!6269504 () Bool)

(assert (=> bs!1212576 m!6269504))

(declare-fun m!6269506 () Bool)

(assert (=> bs!1212576 m!6269506))

(declare-fun m!6269508 () Bool)

(assert (=> bs!1212576 m!6269508))

(assert (=> b!5221522 d!1683502))

(declare-fun d!1683504 () Bool)

(declare-fun choose!38843 ((InoxSet Context!8394) Int) (InoxSet Context!8394))

(assert (=> d!1683504 (= (flatMap!540 z!1189 lambda!262071) (choose!38843 z!1189 lambda!262071))))

(declare-fun bs!1212577 () Bool)

(assert (= bs!1212577 d!1683504))

(declare-fun m!6269510 () Bool)

(assert (=> bs!1212577 m!6269510))

(assert (=> b!5221522 d!1683504))

(declare-fun b!5222242 () Bool)

(declare-fun e!3250411 () (InoxSet Context!8394))

(declare-fun e!3250409 () (InoxSet Context!8394))

(assert (=> b!5222242 (= e!3250411 e!3250409)))

(declare-fun c!901297 () Bool)

(assert (=> b!5222242 (= c!901297 ((_ is Cons!60614) (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))))))

(declare-fun bm!368612 () Bool)

(declare-fun call!368617 () (InoxSet Context!8394))

(assert (=> bm!368612 (= call!368617 (derivationStepZipperDown!261 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))) (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (h!67064 s!2326)))))

(declare-fun d!1683506 () Bool)

(declare-fun c!901298 () Bool)

(declare-fun e!3250410 () Bool)

(assert (=> d!1683506 (= c!901298 e!3250410)))

(declare-fun res!2217381 () Bool)

(assert (=> d!1683506 (=> (not res!2217381) (not e!3250410))))

(assert (=> d!1683506 (= res!2217381 ((_ is Cons!60614) (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))))))

(assert (=> d!1683506 (= (derivationStepZipperUp!185 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))) (h!67064 s!2326)) e!3250411)))

(declare-fun b!5222243 () Bool)

(assert (=> b!5222243 (= e!3250409 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5222244 () Bool)

(assert (=> b!5222244 (= e!3250409 call!368617)))

(declare-fun b!5222245 () Bool)

(assert (=> b!5222245 (= e!3250411 ((_ map or) call!368617 (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (h!67064 s!2326))))))

(declare-fun b!5222246 () Bool)

(assert (=> b!5222246 (= e!3250410 (nullable!4982 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))))))

(assert (= (and d!1683506 res!2217381) b!5222246))

(assert (= (and d!1683506 c!901298) b!5222245))

(assert (= (and d!1683506 (not c!901298)) b!5222242))

(assert (= (and b!5222242 c!901297) b!5222244))

(assert (= (and b!5222242 (not c!901297)) b!5222243))

(assert (= (or b!5222245 b!5222244) bm!368612))

(declare-fun m!6269512 () Bool)

(assert (=> bm!368612 m!6269512))

(declare-fun m!6269514 () Bool)

(assert (=> b!5222245 m!6269514))

(declare-fun m!6269516 () Bool)

(assert (=> b!5222246 m!6269516))

(assert (=> b!5221522 d!1683506))

(declare-fun b!5222247 () Bool)

(declare-fun e!3250414 () (InoxSet Context!8394))

(declare-fun e!3250412 () (InoxSet Context!8394))

(assert (=> b!5222247 (= e!3250414 e!3250412)))

(declare-fun c!901299 () Bool)

(assert (=> b!5222247 (= c!901299 ((_ is Cons!60614) (exprs!4697 (h!67063 zl!343))))))

(declare-fun bm!368613 () Bool)

(declare-fun call!368618 () (InoxSet Context!8394))

(assert (=> bm!368613 (= call!368618 (derivationStepZipperDown!261 (h!67062 (exprs!4697 (h!67063 zl!343))) (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))) (h!67064 s!2326)))))

(declare-fun d!1683508 () Bool)

(declare-fun c!901300 () Bool)

(declare-fun e!3250413 () Bool)

(assert (=> d!1683508 (= c!901300 e!3250413)))

(declare-fun res!2217382 () Bool)

(assert (=> d!1683508 (=> (not res!2217382) (not e!3250413))))

(assert (=> d!1683508 (= res!2217382 ((_ is Cons!60614) (exprs!4697 (h!67063 zl!343))))))

(assert (=> d!1683508 (= (derivationStepZipperUp!185 (h!67063 zl!343) (h!67064 s!2326)) e!3250414)))

(declare-fun b!5222248 () Bool)

(assert (=> b!5222248 (= e!3250412 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5222249 () Bool)

(assert (=> b!5222249 (= e!3250412 call!368618)))

(declare-fun b!5222250 () Bool)

(assert (=> b!5222250 (= e!3250414 ((_ map or) call!368618 (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))) (h!67064 s!2326))))))

(declare-fun b!5222251 () Bool)

(assert (=> b!5222251 (= e!3250413 (nullable!4982 (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(assert (= (and d!1683508 res!2217382) b!5222251))

(assert (= (and d!1683508 c!901300) b!5222250))

(assert (= (and d!1683508 (not c!901300)) b!5222247))

(assert (= (and b!5222247 c!901299) b!5222249))

(assert (= (and b!5222247 (not c!901299)) b!5222248))

(assert (= (or b!5222250 b!5222249) bm!368613))

(declare-fun m!6269518 () Bool)

(assert (=> bm!368613 m!6269518))

(declare-fun m!6269520 () Bool)

(assert (=> b!5222250 m!6269520))

(assert (=> b!5222251 m!6269046))

(assert (=> b!5221522 d!1683508))

(declare-fun bm!368614 () Bool)

(declare-fun call!368619 () List!60738)

(declare-fun call!368620 () List!60738)

(assert (=> bm!368614 (= call!368619 call!368620)))

(declare-fun b!5222253 () Bool)

(declare-fun e!3250417 () (InoxSet Context!8394))

(declare-fun call!368624 () (InoxSet Context!8394))

(assert (=> b!5222253 (= e!3250417 call!368624)))

(declare-fun b!5222254 () Bool)

(declare-fun e!3250419 () (InoxSet Context!8394))

(declare-fun call!368621 () (InoxSet Context!8394))

(declare-fun call!368622 () (InoxSet Context!8394))

(assert (=> b!5222254 (= e!3250419 ((_ map or) call!368621 call!368622))))

(declare-fun b!5222255 () Bool)

(declare-fun e!3250416 () (InoxSet Context!8394))

(assert (=> b!5222255 (= e!3250416 call!368624)))

(declare-fun b!5222256 () Bool)

(declare-fun e!3250415 () (InoxSet Context!8394))

(declare-fun e!3250420 () (InoxSet Context!8394))

(assert (=> b!5222256 (= e!3250415 e!3250420)))

(declare-fun c!901303 () Bool)

(assert (=> b!5222256 (= c!901303 ((_ is Union!14813) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun bm!368615 () Bool)

(assert (=> bm!368615 (= call!368624 call!368622)))

(declare-fun bm!368616 () Bool)

(assert (=> bm!368616 (= call!368621 (derivationStepZipperDown!261 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))) (ite c!901303 lt!2143761 (Context!8395 call!368620)) (h!67064 s!2326)))))

(declare-fun c!901301 () Bool)

(declare-fun c!901304 () Bool)

(declare-fun bm!368617 () Bool)

(assert (=> bm!368617 (= call!368620 ($colon$colon!1287 (exprs!4697 lt!2143761) (ite (or c!901304 c!901301) (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (h!67062 (exprs!4697 (h!67063 zl!343))))))))

(declare-fun b!5222257 () Bool)

(assert (=> b!5222257 (= e!3250417 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5222258 () Bool)

(assert (=> b!5222258 (= e!3250415 (store ((as const (Array Context!8394 Bool)) false) lt!2143761 true))))

(declare-fun b!5222259 () Bool)

(declare-fun call!368623 () (InoxSet Context!8394))

(assert (=> b!5222259 (= e!3250420 ((_ map or) call!368621 call!368623))))

(declare-fun b!5222260 () Bool)

(declare-fun c!901302 () Bool)

(assert (=> b!5222260 (= c!901302 ((_ is Star!14813) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(assert (=> b!5222260 (= e!3250416 e!3250417)))

(declare-fun d!1683510 () Bool)

(declare-fun c!901305 () Bool)

(assert (=> d!1683510 (= c!901305 (and ((_ is ElementMatch!14813) (h!67062 (exprs!4697 (h!67063 zl!343)))) (= (c!901095 (h!67062 (exprs!4697 (h!67063 zl!343)))) (h!67064 s!2326))))))

(assert (=> d!1683510 (= (derivationStepZipperDown!261 (h!67062 (exprs!4697 (h!67063 zl!343))) lt!2143761 (h!67064 s!2326)) e!3250415)))

(declare-fun b!5222252 () Bool)

(declare-fun e!3250418 () Bool)

(assert (=> b!5222252 (= c!901304 e!3250418)))

(declare-fun res!2217383 () Bool)

(assert (=> b!5222252 (=> (not res!2217383) (not e!3250418))))

(assert (=> b!5222252 (= res!2217383 ((_ is Concat!23658) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(assert (=> b!5222252 (= e!3250420 e!3250419)))

(declare-fun bm!368618 () Bool)

(assert (=> bm!368618 (= call!368623 (derivationStepZipperDown!261 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343))))))) (ite (or c!901303 c!901304) lt!2143761 (Context!8395 call!368619)) (h!67064 s!2326)))))

(declare-fun bm!368619 () Bool)

(assert (=> bm!368619 (= call!368622 call!368623)))

(declare-fun b!5222261 () Bool)

(assert (=> b!5222261 (= e!3250418 (nullable!4982 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))))))

(declare-fun b!5222262 () Bool)

(assert (=> b!5222262 (= e!3250419 e!3250416)))

(assert (=> b!5222262 (= c!901301 ((_ is Concat!23658) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(assert (= (and d!1683510 c!901305) b!5222258))

(assert (= (and d!1683510 (not c!901305)) b!5222256))

(assert (= (and b!5222256 c!901303) b!5222259))

(assert (= (and b!5222256 (not c!901303)) b!5222252))

(assert (= (and b!5222252 res!2217383) b!5222261))

(assert (= (and b!5222252 c!901304) b!5222254))

(assert (= (and b!5222252 (not c!901304)) b!5222262))

(assert (= (and b!5222262 c!901301) b!5222255))

(assert (= (and b!5222262 (not c!901301)) b!5222260))

(assert (= (and b!5222260 c!901302) b!5222253))

(assert (= (and b!5222260 (not c!901302)) b!5222257))

(assert (= (or b!5222255 b!5222253) bm!368614))

(assert (= (or b!5222255 b!5222253) bm!368615))

(assert (= (or b!5222254 bm!368614) bm!368617))

(assert (= (or b!5222254 bm!368615) bm!368619))

(assert (= (or b!5222259 bm!368619) bm!368618))

(assert (= (or b!5222259 b!5222254) bm!368616))

(declare-fun m!6269522 () Bool)

(assert (=> bm!368618 m!6269522))

(declare-fun m!6269524 () Bool)

(assert (=> b!5222261 m!6269524))

(declare-fun m!6269526 () Bool)

(assert (=> bm!368617 m!6269526))

(declare-fun m!6269528 () Bool)

(assert (=> bm!368616 m!6269528))

(assert (=> b!5222258 m!6269398))

(assert (=> b!5221522 d!1683510))

(declare-fun d!1683512 () Bool)

(declare-fun nullableFct!1389 (Regex!14813) Bool)

(assert (=> d!1683512 (= (nullable!4982 (h!67062 (exprs!4697 (h!67063 zl!343)))) (nullableFct!1389 (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun bs!1212578 () Bool)

(assert (= bs!1212578 d!1683512))

(declare-fun m!6269530 () Bool)

(assert (=> bs!1212578 m!6269530))

(assert (=> b!5221522 d!1683512))

(declare-fun b!5222263 () Bool)

(declare-fun e!3250423 () (InoxSet Context!8394))

(declare-fun e!3250421 () (InoxSet Context!8394))

(assert (=> b!5222263 (= e!3250423 e!3250421)))

(declare-fun c!901306 () Bool)

(assert (=> b!5222263 (= c!901306 ((_ is Cons!60614) (exprs!4697 lt!2143761)))))

(declare-fun bm!368620 () Bool)

(declare-fun call!368625 () (InoxSet Context!8394))

(assert (=> bm!368620 (= call!368625 (derivationStepZipperDown!261 (h!67062 (exprs!4697 lt!2143761)) (Context!8395 (t!373909 (exprs!4697 lt!2143761))) (h!67064 s!2326)))))

(declare-fun d!1683514 () Bool)

(declare-fun c!901307 () Bool)

(declare-fun e!3250422 () Bool)

(assert (=> d!1683514 (= c!901307 e!3250422)))

(declare-fun res!2217384 () Bool)

(assert (=> d!1683514 (=> (not res!2217384) (not e!3250422))))

(assert (=> d!1683514 (= res!2217384 ((_ is Cons!60614) (exprs!4697 lt!2143761)))))

(assert (=> d!1683514 (= (derivationStepZipperUp!185 lt!2143761 (h!67064 s!2326)) e!3250423)))

(declare-fun b!5222264 () Bool)

(assert (=> b!5222264 (= e!3250421 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5222265 () Bool)

(assert (=> b!5222265 (= e!3250421 call!368625)))

(declare-fun b!5222266 () Bool)

(assert (=> b!5222266 (= e!3250423 ((_ map or) call!368625 (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 lt!2143761))) (h!67064 s!2326))))))

(declare-fun b!5222267 () Bool)

(assert (=> b!5222267 (= e!3250422 (nullable!4982 (h!67062 (exprs!4697 lt!2143761))))))

(assert (= (and d!1683514 res!2217384) b!5222267))

(assert (= (and d!1683514 c!901307) b!5222266))

(assert (= (and d!1683514 (not c!901307)) b!5222263))

(assert (= (and b!5222263 c!901306) b!5222265))

(assert (= (and b!5222263 (not c!901306)) b!5222264))

(assert (= (or b!5222266 b!5222265) bm!368620))

(declare-fun m!6269532 () Bool)

(assert (=> bm!368620 m!6269532))

(declare-fun m!6269534 () Bool)

(assert (=> b!5222266 m!6269534))

(declare-fun m!6269536 () Bool)

(assert (=> b!5222267 m!6269536))

(assert (=> b!5221522 d!1683514))

(declare-fun d!1683516 () Bool)

(assert (=> d!1683516 (= (nullable!4982 (regTwo!30139 (regOne!30138 r!7292))) (nullableFct!1389 (regTwo!30139 (regOne!30138 r!7292))))))

(declare-fun bs!1212579 () Bool)

(assert (= bs!1212579 d!1683516))

(declare-fun m!6269538 () Bool)

(assert (=> bs!1212579 m!6269538))

(assert (=> b!5221524 d!1683516))

(declare-fun d!1683518 () Bool)

(assert (=> d!1683518 (= (flatMap!540 lt!2143768 lambda!262071) (dynLambda!23949 lambda!262071 lt!2143763))))

(declare-fun lt!2143870 () Unit!152528)

(assert (=> d!1683518 (= lt!2143870 (choose!38842 lt!2143768 lt!2143763 lambda!262071))))

(assert (=> d!1683518 (= lt!2143768 (store ((as const (Array Context!8394 Bool)) false) lt!2143763 true))))

(assert (=> d!1683518 (= (lemmaFlatMapOnSingletonSet!72 lt!2143768 lt!2143763 lambda!262071) lt!2143870)))

(declare-fun b_lambda!201911 () Bool)

(assert (=> (not b_lambda!201911) (not d!1683518)))

(declare-fun bs!1212580 () Bool)

(assert (= bs!1212580 d!1683518))

(assert (=> bs!1212580 m!6269008))

(declare-fun m!6269540 () Bool)

(assert (=> bs!1212580 m!6269540))

(declare-fun m!6269542 () Bool)

(assert (=> bs!1212580 m!6269542))

(assert (=> bs!1212580 m!6268998))

(assert (=> b!5221524 d!1683518))

(declare-fun d!1683520 () Bool)

(assert (=> d!1683520 (= (flatMap!540 lt!2143768 lambda!262071) (choose!38843 lt!2143768 lambda!262071))))

(declare-fun bs!1212581 () Bool)

(assert (= bs!1212581 d!1683520))

(declare-fun m!6269544 () Bool)

(assert (=> bs!1212581 m!6269544))

(assert (=> b!5221524 d!1683520))

(declare-fun d!1683522 () Bool)

(assert (=> d!1683522 (= (flatMap!540 lt!2143772 lambda!262071) (dynLambda!23949 lambda!262071 lt!2143780))))

(declare-fun lt!2143871 () Unit!152528)

(assert (=> d!1683522 (= lt!2143871 (choose!38842 lt!2143772 lt!2143780 lambda!262071))))

(assert (=> d!1683522 (= lt!2143772 (store ((as const (Array Context!8394 Bool)) false) lt!2143780 true))))

(assert (=> d!1683522 (= (lemmaFlatMapOnSingletonSet!72 lt!2143772 lt!2143780 lambda!262071) lt!2143871)))

(declare-fun b_lambda!201913 () Bool)

(assert (=> (not b_lambda!201913) (not d!1683522)))

(declare-fun bs!1212582 () Bool)

(assert (= bs!1212582 d!1683522))

(assert (=> bs!1212582 m!6269010))

(declare-fun m!6269546 () Bool)

(assert (=> bs!1212582 m!6269546))

(declare-fun m!6269548 () Bool)

(assert (=> bs!1212582 m!6269548))

(assert (=> bs!1212582 m!6269006))

(assert (=> b!5221524 d!1683522))

(declare-fun d!1683524 () Bool)

(assert (=> d!1683524 (= (flatMap!540 lt!2143772 lambda!262071) (choose!38843 lt!2143772 lambda!262071))))

(declare-fun bs!1212583 () Bool)

(assert (= bs!1212583 d!1683524))

(declare-fun m!6269550 () Bool)

(assert (=> bs!1212583 m!6269550))

(assert (=> b!5221524 d!1683524))

(declare-fun b!5222268 () Bool)

(declare-fun e!3250426 () (InoxSet Context!8394))

(declare-fun e!3250424 () (InoxSet Context!8394))

(assert (=> b!5222268 (= e!3250426 e!3250424)))

(declare-fun c!901308 () Bool)

(assert (=> b!5222268 (= c!901308 ((_ is Cons!60614) (exprs!4697 lt!2143780)))))

(declare-fun bm!368621 () Bool)

(declare-fun call!368626 () (InoxSet Context!8394))

(assert (=> bm!368621 (= call!368626 (derivationStepZipperDown!261 (h!67062 (exprs!4697 lt!2143780)) (Context!8395 (t!373909 (exprs!4697 lt!2143780))) (h!67064 s!2326)))))

(declare-fun d!1683526 () Bool)

(declare-fun c!901309 () Bool)

(declare-fun e!3250425 () Bool)

(assert (=> d!1683526 (= c!901309 e!3250425)))

(declare-fun res!2217385 () Bool)

(assert (=> d!1683526 (=> (not res!2217385) (not e!3250425))))

(assert (=> d!1683526 (= res!2217385 ((_ is Cons!60614) (exprs!4697 lt!2143780)))))

(assert (=> d!1683526 (= (derivationStepZipperUp!185 lt!2143780 (h!67064 s!2326)) e!3250426)))

(declare-fun b!5222269 () Bool)

(assert (=> b!5222269 (= e!3250424 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5222270 () Bool)

(assert (=> b!5222270 (= e!3250424 call!368626)))

(declare-fun b!5222271 () Bool)

(assert (=> b!5222271 (= e!3250426 ((_ map or) call!368626 (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 lt!2143780))) (h!67064 s!2326))))))

(declare-fun b!5222272 () Bool)

(assert (=> b!5222272 (= e!3250425 (nullable!4982 (h!67062 (exprs!4697 lt!2143780))))))

(assert (= (and d!1683526 res!2217385) b!5222272))

(assert (= (and d!1683526 c!901309) b!5222271))

(assert (= (and d!1683526 (not c!901309)) b!5222268))

(assert (= (and b!5222268 c!901308) b!5222270))

(assert (= (and b!5222268 (not c!901308)) b!5222269))

(assert (= (or b!5222271 b!5222270) bm!368621))

(declare-fun m!6269552 () Bool)

(assert (=> bm!368621 m!6269552))

(declare-fun m!6269554 () Bool)

(assert (=> b!5222271 m!6269554))

(declare-fun m!6269556 () Bool)

(assert (=> b!5222272 m!6269556))

(assert (=> b!5221524 d!1683526))

(declare-fun d!1683528 () Bool)

(assert (=> d!1683528 (= (nullable!4982 (regOne!30139 (regOne!30138 r!7292))) (nullableFct!1389 (regOne!30139 (regOne!30138 r!7292))))))

(declare-fun bs!1212584 () Bool)

(assert (= bs!1212584 d!1683528))

(declare-fun m!6269558 () Bool)

(assert (=> bs!1212584 m!6269558))

(assert (=> b!5221524 d!1683528))

(declare-fun b!5222273 () Bool)

(declare-fun e!3250429 () (InoxSet Context!8394))

(declare-fun e!3250427 () (InoxSet Context!8394))

(assert (=> b!5222273 (= e!3250429 e!3250427)))

(declare-fun c!901310 () Bool)

(assert (=> b!5222273 (= c!901310 ((_ is Cons!60614) (exprs!4697 lt!2143763)))))

(declare-fun bm!368622 () Bool)

(declare-fun call!368627 () (InoxSet Context!8394))

(assert (=> bm!368622 (= call!368627 (derivationStepZipperDown!261 (h!67062 (exprs!4697 lt!2143763)) (Context!8395 (t!373909 (exprs!4697 lt!2143763))) (h!67064 s!2326)))))

(declare-fun d!1683530 () Bool)

(declare-fun c!901311 () Bool)

(declare-fun e!3250428 () Bool)

(assert (=> d!1683530 (= c!901311 e!3250428)))

(declare-fun res!2217386 () Bool)

(assert (=> d!1683530 (=> (not res!2217386) (not e!3250428))))

(assert (=> d!1683530 (= res!2217386 ((_ is Cons!60614) (exprs!4697 lt!2143763)))))

(assert (=> d!1683530 (= (derivationStepZipperUp!185 lt!2143763 (h!67064 s!2326)) e!3250429)))

(declare-fun b!5222274 () Bool)

(assert (=> b!5222274 (= e!3250427 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5222275 () Bool)

(assert (=> b!5222275 (= e!3250427 call!368627)))

(declare-fun b!5222276 () Bool)

(assert (=> b!5222276 (= e!3250429 ((_ map or) call!368627 (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 lt!2143763))) (h!67064 s!2326))))))

(declare-fun b!5222277 () Bool)

(assert (=> b!5222277 (= e!3250428 (nullable!4982 (h!67062 (exprs!4697 lt!2143763))))))

(assert (= (and d!1683530 res!2217386) b!5222277))

(assert (= (and d!1683530 c!901311) b!5222276))

(assert (= (and d!1683530 (not c!901311)) b!5222273))

(assert (= (and b!5222273 c!901310) b!5222275))

(assert (= (and b!5222273 (not c!901310)) b!5222274))

(assert (= (or b!5222276 b!5222275) bm!368622))

(declare-fun m!6269560 () Bool)

(assert (=> bm!368622 m!6269560))

(declare-fun m!6269562 () Bool)

(assert (=> b!5222276 m!6269562))

(declare-fun m!6269564 () Bool)

(assert (=> b!5222277 m!6269564))

(assert (=> b!5221524 d!1683530))

(declare-fun d!1683532 () Bool)

(declare-fun e!3250432 () Bool)

(assert (=> d!1683532 e!3250432))

(declare-fun res!2217389 () Bool)

(assert (=> d!1683532 (=> (not res!2217389) (not e!3250432))))

(declare-fun lt!2143874 () List!60739)

(declare-fun noDuplicate!1193 (List!60739) Bool)

(assert (=> d!1683532 (= res!2217389 (noDuplicate!1193 lt!2143874))))

(declare-fun choose!38844 ((InoxSet Context!8394)) List!60739)

(assert (=> d!1683532 (= lt!2143874 (choose!38844 z!1189))))

(assert (=> d!1683532 (= (toList!8597 z!1189) lt!2143874)))

(declare-fun b!5222280 () Bool)

(declare-fun content!10749 (List!60739) (InoxSet Context!8394))

(assert (=> b!5222280 (= e!3250432 (= (content!10749 lt!2143874) z!1189))))

(assert (= (and d!1683532 res!2217389) b!5222280))

(declare-fun m!6269566 () Bool)

(assert (=> d!1683532 m!6269566))

(declare-fun m!6269568 () Bool)

(assert (=> d!1683532 m!6269568))

(declare-fun m!6269570 () Bool)

(assert (=> b!5222280 m!6269570))

(assert (=> b!5221534 d!1683532))

(assert (=> b!5221535 d!1683488))

(declare-fun d!1683534 () Bool)

(declare-fun c!901312 () Bool)

(assert (=> d!1683534 (= c!901312 (isEmpty!32537 (t!373911 s!2326)))))

(declare-fun e!3250433 () Bool)

(assert (=> d!1683534 (= (matchZipper!1057 lt!2143769 (t!373911 s!2326)) e!3250433)))

(declare-fun b!5222281 () Bool)

(assert (=> b!5222281 (= e!3250433 (nullableZipper!1237 lt!2143769))))

(declare-fun b!5222282 () Bool)

(assert (=> b!5222282 (= e!3250433 (matchZipper!1057 (derivationStepZipper!1081 lt!2143769 (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))))))

(assert (= (and d!1683534 c!901312) b!5222281))

(assert (= (and d!1683534 (not c!901312)) b!5222282))

(assert (=> d!1683534 m!6269332))

(declare-fun m!6269572 () Bool)

(assert (=> b!5222281 m!6269572))

(assert (=> b!5222282 m!6269336))

(assert (=> b!5222282 m!6269336))

(declare-fun m!6269574 () Bool)

(assert (=> b!5222282 m!6269574))

(assert (=> b!5222282 m!6269340))

(assert (=> b!5222282 m!6269574))

(assert (=> b!5222282 m!6269340))

(declare-fun m!6269576 () Bool)

(assert (=> b!5222282 m!6269576))

(assert (=> b!5221535 d!1683534))

(declare-fun d!1683536 () Bool)

(declare-fun c!901313 () Bool)

(assert (=> d!1683536 (= c!901313 (isEmpty!32537 (t!373911 s!2326)))))

(declare-fun e!3250434 () Bool)

(assert (=> d!1683536 (= (matchZipper!1057 lt!2143782 (t!373911 s!2326)) e!3250434)))

(declare-fun b!5222283 () Bool)

(assert (=> b!5222283 (= e!3250434 (nullableZipper!1237 lt!2143782))))

(declare-fun b!5222284 () Bool)

(assert (=> b!5222284 (= e!3250434 (matchZipper!1057 (derivationStepZipper!1081 lt!2143782 (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))))))

(assert (= (and d!1683536 c!901313) b!5222283))

(assert (= (and d!1683536 (not c!901313)) b!5222284))

(assert (=> d!1683536 m!6269332))

(declare-fun m!6269578 () Bool)

(assert (=> b!5222283 m!6269578))

(assert (=> b!5222284 m!6269336))

(assert (=> b!5222284 m!6269336))

(declare-fun m!6269580 () Bool)

(assert (=> b!5222284 m!6269580))

(assert (=> b!5222284 m!6269340))

(assert (=> b!5222284 m!6269580))

(assert (=> b!5222284 m!6269340))

(declare-fun m!6269582 () Bool)

(assert (=> b!5222284 m!6269582))

(assert (=> b!5221535 d!1683536))

(declare-fun d!1683538 () Bool)

(declare-fun e!3250435 () Bool)

(assert (=> d!1683538 (= (matchZipper!1057 ((_ map or) lt!2143782 lt!2143781) (t!373911 s!2326)) e!3250435)))

(declare-fun res!2217390 () Bool)

(assert (=> d!1683538 (=> res!2217390 e!3250435)))

(assert (=> d!1683538 (= res!2217390 (matchZipper!1057 lt!2143782 (t!373911 s!2326)))))

(declare-fun lt!2143875 () Unit!152528)

(assert (=> d!1683538 (= lt!2143875 (choose!38837 lt!2143782 lt!2143781 (t!373911 s!2326)))))

(assert (=> d!1683538 (= (lemmaZipperConcatMatchesSameAsBothZippers!50 lt!2143782 lt!2143781 (t!373911 s!2326)) lt!2143875)))

(declare-fun b!5222285 () Bool)

(assert (=> b!5222285 (= e!3250435 (matchZipper!1057 lt!2143781 (t!373911 s!2326)))))

(assert (= (and d!1683538 (not res!2217390)) b!5222285))

(declare-fun m!6269584 () Bool)

(assert (=> d!1683538 m!6269584))

(assert (=> d!1683538 m!6269020))

(declare-fun m!6269586 () Bool)

(assert (=> d!1683538 m!6269586))

(assert (=> b!5222285 m!6268964))

(assert (=> b!5221535 d!1683538))

(declare-fun call!368629 () Bool)

(declare-fun c!901314 () Bool)

(declare-fun c!901315 () Bool)

(declare-fun bm!368623 () Bool)

(assert (=> bm!368623 (= call!368629 (validRegex!6549 (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292)))))))

(declare-fun b!5222286 () Bool)

(declare-fun e!3250442 () Bool)

(declare-fun e!3250441 () Bool)

(assert (=> b!5222286 (= e!3250442 e!3250441)))

(declare-fun res!2217394 () Bool)

(assert (=> b!5222286 (=> (not res!2217394) (not e!3250441))))

(declare-fun call!368628 () Bool)

(assert (=> b!5222286 (= res!2217394 call!368628)))

(declare-fun d!1683540 () Bool)

(declare-fun res!2217392 () Bool)

(declare-fun e!3250439 () Bool)

(assert (=> d!1683540 (=> res!2217392 e!3250439)))

(assert (=> d!1683540 (= res!2217392 ((_ is ElementMatch!14813) r!7292))))

(assert (=> d!1683540 (= (validRegex!6549 r!7292) e!3250439)))

(declare-fun b!5222287 () Bool)

(declare-fun e!3250437 () Bool)

(assert (=> b!5222287 (= e!3250437 call!368629)))

(declare-fun b!5222288 () Bool)

(declare-fun e!3250438 () Bool)

(declare-fun call!368630 () Bool)

(assert (=> b!5222288 (= e!3250438 call!368630)))

(declare-fun bm!368624 () Bool)

(assert (=> bm!368624 (= call!368630 (validRegex!6549 (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292))))))

(declare-fun bm!368625 () Bool)

(assert (=> bm!368625 (= call!368628 call!368629)))

(declare-fun b!5222289 () Bool)

(declare-fun e!3250436 () Bool)

(assert (=> b!5222289 (= e!3250439 e!3250436)))

(assert (=> b!5222289 (= c!901314 ((_ is Star!14813) r!7292))))

(declare-fun b!5222290 () Bool)

(declare-fun e!3250440 () Bool)

(assert (=> b!5222290 (= e!3250436 e!3250440)))

(assert (=> b!5222290 (= c!901315 ((_ is Union!14813) r!7292))))

(declare-fun b!5222291 () Bool)

(declare-fun res!2217393 () Bool)

(assert (=> b!5222291 (=> (not res!2217393) (not e!3250438))))

(assert (=> b!5222291 (= res!2217393 call!368628)))

(assert (=> b!5222291 (= e!3250440 e!3250438)))

(declare-fun b!5222292 () Bool)

(assert (=> b!5222292 (= e!3250441 call!368630)))

(declare-fun b!5222293 () Bool)

(declare-fun res!2217391 () Bool)

(assert (=> b!5222293 (=> res!2217391 e!3250442)))

(assert (=> b!5222293 (= res!2217391 (not ((_ is Concat!23658) r!7292)))))

(assert (=> b!5222293 (= e!3250440 e!3250442)))

(declare-fun b!5222294 () Bool)

(assert (=> b!5222294 (= e!3250436 e!3250437)))

(declare-fun res!2217395 () Bool)

(assert (=> b!5222294 (= res!2217395 (not (nullable!4982 (reg!15142 r!7292))))))

(assert (=> b!5222294 (=> (not res!2217395) (not e!3250437))))

(assert (= (and d!1683540 (not res!2217392)) b!5222289))

(assert (= (and b!5222289 c!901314) b!5222294))

(assert (= (and b!5222289 (not c!901314)) b!5222290))

(assert (= (and b!5222294 res!2217395) b!5222287))

(assert (= (and b!5222290 c!901315) b!5222291))

(assert (= (and b!5222290 (not c!901315)) b!5222293))

(assert (= (and b!5222291 res!2217393) b!5222288))

(assert (= (and b!5222293 (not res!2217391)) b!5222286))

(assert (= (and b!5222286 res!2217394) b!5222292))

(assert (= (or b!5222288 b!5222292) bm!368624))

(assert (= (or b!5222291 b!5222286) bm!368625))

(assert (= (or b!5222287 bm!368625) bm!368623))

(declare-fun m!6269588 () Bool)

(assert (=> bm!368623 m!6269588))

(declare-fun m!6269590 () Bool)

(assert (=> bm!368624 m!6269590))

(declare-fun m!6269592 () Bool)

(assert (=> b!5222294 m!6269592))

(assert (=> start!552256 d!1683540))

(declare-fun b!5222307 () Bool)

(declare-fun e!3250445 () Bool)

(declare-fun tp!1463874 () Bool)

(assert (=> b!5222307 (= e!3250445 tp!1463874)))

(declare-fun b!5222305 () Bool)

(assert (=> b!5222305 (= e!3250445 tp_is_empty!38879)))

(declare-fun b!5222306 () Bool)

(declare-fun tp!1463875 () Bool)

(declare-fun tp!1463873 () Bool)

(assert (=> b!5222306 (= e!3250445 (and tp!1463875 tp!1463873))))

(assert (=> b!5221536 (= tp!1463797 e!3250445)))

(declare-fun b!5222308 () Bool)

(declare-fun tp!1463876 () Bool)

(declare-fun tp!1463872 () Bool)

(assert (=> b!5222308 (= e!3250445 (and tp!1463876 tp!1463872))))

(assert (= (and b!5221536 ((_ is ElementMatch!14813) (regOne!30139 r!7292))) b!5222305))

(assert (= (and b!5221536 ((_ is Concat!23658) (regOne!30139 r!7292))) b!5222306))

(assert (= (and b!5221536 ((_ is Star!14813) (regOne!30139 r!7292))) b!5222307))

(assert (= (and b!5221536 ((_ is Union!14813) (regOne!30139 r!7292))) b!5222308))

(declare-fun b!5222311 () Bool)

(declare-fun e!3250446 () Bool)

(declare-fun tp!1463879 () Bool)

(assert (=> b!5222311 (= e!3250446 tp!1463879)))

(declare-fun b!5222309 () Bool)

(assert (=> b!5222309 (= e!3250446 tp_is_empty!38879)))

(declare-fun b!5222310 () Bool)

(declare-fun tp!1463880 () Bool)

(declare-fun tp!1463878 () Bool)

(assert (=> b!5222310 (= e!3250446 (and tp!1463880 tp!1463878))))

(assert (=> b!5221536 (= tp!1463802 e!3250446)))

(declare-fun b!5222312 () Bool)

(declare-fun tp!1463881 () Bool)

(declare-fun tp!1463877 () Bool)

(assert (=> b!5222312 (= e!3250446 (and tp!1463881 tp!1463877))))

(assert (= (and b!5221536 ((_ is ElementMatch!14813) (regTwo!30139 r!7292))) b!5222309))

(assert (= (and b!5221536 ((_ is Concat!23658) (regTwo!30139 r!7292))) b!5222310))

(assert (= (and b!5221536 ((_ is Star!14813) (regTwo!30139 r!7292))) b!5222311))

(assert (= (and b!5221536 ((_ is Union!14813) (regTwo!30139 r!7292))) b!5222312))

(declare-fun b!5222320 () Bool)

(declare-fun e!3250452 () Bool)

(declare-fun tp!1463886 () Bool)

(assert (=> b!5222320 (= e!3250452 tp!1463886)))

(declare-fun e!3250451 () Bool)

(declare-fun b!5222319 () Bool)

(declare-fun tp!1463887 () Bool)

(assert (=> b!5222319 (= e!3250451 (and (inv!80279 (h!67063 (t!373910 zl!343))) e!3250452 tp!1463887))))

(assert (=> b!5221521 (= tp!1463801 e!3250451)))

(assert (= b!5222319 b!5222320))

(assert (= (and b!5221521 ((_ is Cons!60615) (t!373910 zl!343))) b!5222319))

(declare-fun m!6269594 () Bool)

(assert (=> b!5222319 m!6269594))

(declare-fun b!5222325 () Bool)

(declare-fun e!3250455 () Bool)

(declare-fun tp!1463890 () Bool)

(assert (=> b!5222325 (= e!3250455 (and tp_is_empty!38879 tp!1463890))))

(assert (=> b!5221528 (= tp!1463795 e!3250455)))

(assert (= (and b!5221528 ((_ is Cons!60616) (t!373911 s!2326))) b!5222325))

(declare-fun b!5222328 () Bool)

(declare-fun e!3250456 () Bool)

(declare-fun tp!1463893 () Bool)

(assert (=> b!5222328 (= e!3250456 tp!1463893)))

(declare-fun b!5222326 () Bool)

(assert (=> b!5222326 (= e!3250456 tp_is_empty!38879)))

(declare-fun b!5222327 () Bool)

(declare-fun tp!1463894 () Bool)

(declare-fun tp!1463892 () Bool)

(assert (=> b!5222327 (= e!3250456 (and tp!1463894 tp!1463892))))

(assert (=> b!5221538 (= tp!1463798 e!3250456)))

(declare-fun b!5222329 () Bool)

(declare-fun tp!1463895 () Bool)

(declare-fun tp!1463891 () Bool)

(assert (=> b!5222329 (= e!3250456 (and tp!1463895 tp!1463891))))

(assert (= (and b!5221538 ((_ is ElementMatch!14813) (regOne!30138 r!7292))) b!5222326))

(assert (= (and b!5221538 ((_ is Concat!23658) (regOne!30138 r!7292))) b!5222327))

(assert (= (and b!5221538 ((_ is Star!14813) (regOne!30138 r!7292))) b!5222328))

(assert (= (and b!5221538 ((_ is Union!14813) (regOne!30138 r!7292))) b!5222329))

(declare-fun b!5222332 () Bool)

(declare-fun e!3250457 () Bool)

(declare-fun tp!1463898 () Bool)

(assert (=> b!5222332 (= e!3250457 tp!1463898)))

(declare-fun b!5222330 () Bool)

(assert (=> b!5222330 (= e!3250457 tp_is_empty!38879)))

(declare-fun b!5222331 () Bool)

(declare-fun tp!1463899 () Bool)

(declare-fun tp!1463897 () Bool)

(assert (=> b!5222331 (= e!3250457 (and tp!1463899 tp!1463897))))

(assert (=> b!5221538 (= tp!1463803 e!3250457)))

(declare-fun b!5222333 () Bool)

(declare-fun tp!1463900 () Bool)

(declare-fun tp!1463896 () Bool)

(assert (=> b!5222333 (= e!3250457 (and tp!1463900 tp!1463896))))

(assert (= (and b!5221538 ((_ is ElementMatch!14813) (regTwo!30138 r!7292))) b!5222330))

(assert (= (and b!5221538 ((_ is Concat!23658) (regTwo!30138 r!7292))) b!5222331))

(assert (= (and b!5221538 ((_ is Star!14813) (regTwo!30138 r!7292))) b!5222332))

(assert (= (and b!5221538 ((_ is Union!14813) (regTwo!30138 r!7292))) b!5222333))

(declare-fun b!5222336 () Bool)

(declare-fun e!3250458 () Bool)

(declare-fun tp!1463903 () Bool)

(assert (=> b!5222336 (= e!3250458 tp!1463903)))

(declare-fun b!5222334 () Bool)

(assert (=> b!5222334 (= e!3250458 tp_is_empty!38879)))

(declare-fun b!5222335 () Bool)

(declare-fun tp!1463904 () Bool)

(declare-fun tp!1463902 () Bool)

(assert (=> b!5222335 (= e!3250458 (and tp!1463904 tp!1463902))))

(assert (=> b!5221525 (= tp!1463800 e!3250458)))

(declare-fun b!5222337 () Bool)

(declare-fun tp!1463905 () Bool)

(declare-fun tp!1463901 () Bool)

(assert (=> b!5222337 (= e!3250458 (and tp!1463905 tp!1463901))))

(assert (= (and b!5221525 ((_ is ElementMatch!14813) (reg!15142 r!7292))) b!5222334))

(assert (= (and b!5221525 ((_ is Concat!23658) (reg!15142 r!7292))) b!5222335))

(assert (= (and b!5221525 ((_ is Star!14813) (reg!15142 r!7292))) b!5222336))

(assert (= (and b!5221525 ((_ is Union!14813) (reg!15142 r!7292))) b!5222337))

(declare-fun condSetEmpty!33223 () Bool)

(assert (=> setNonEmpty!33217 (= condSetEmpty!33223 (= setRest!33217 ((as const (Array Context!8394 Bool)) false)))))

(declare-fun setRes!33223 () Bool)

(assert (=> setNonEmpty!33217 (= tp!1463796 setRes!33223)))

(declare-fun setIsEmpty!33223 () Bool)

(assert (=> setIsEmpty!33223 setRes!33223))

(declare-fun setNonEmpty!33223 () Bool)

(declare-fun tp!1463911 () Bool)

(declare-fun e!3250461 () Bool)

(declare-fun setElem!33223 () Context!8394)

(assert (=> setNonEmpty!33223 (= setRes!33223 (and tp!1463911 (inv!80279 setElem!33223) e!3250461))))

(declare-fun setRest!33223 () (InoxSet Context!8394))

(assert (=> setNonEmpty!33223 (= setRest!33217 ((_ map or) (store ((as const (Array Context!8394 Bool)) false) setElem!33223 true) setRest!33223))))

(declare-fun b!5222342 () Bool)

(declare-fun tp!1463910 () Bool)

(assert (=> b!5222342 (= e!3250461 tp!1463910)))

(assert (= (and setNonEmpty!33217 condSetEmpty!33223) setIsEmpty!33223))

(assert (= (and setNonEmpty!33217 (not condSetEmpty!33223)) setNonEmpty!33223))

(assert (= setNonEmpty!33223 b!5222342))

(declare-fun m!6269596 () Bool)

(assert (=> setNonEmpty!33223 m!6269596))

(declare-fun b!5222347 () Bool)

(declare-fun e!3250464 () Bool)

(declare-fun tp!1463916 () Bool)

(declare-fun tp!1463917 () Bool)

(assert (=> b!5222347 (= e!3250464 (and tp!1463916 tp!1463917))))

(assert (=> b!5221550 (= tp!1463794 e!3250464)))

(assert (= (and b!5221550 ((_ is Cons!60614) (exprs!4697 setElem!33217))) b!5222347))

(declare-fun b!5222348 () Bool)

(declare-fun e!3250465 () Bool)

(declare-fun tp!1463918 () Bool)

(declare-fun tp!1463919 () Bool)

(assert (=> b!5222348 (= e!3250465 (and tp!1463918 tp!1463919))))

(assert (=> b!5221530 (= tp!1463799 e!3250465)))

(assert (= (and b!5221530 ((_ is Cons!60614) (exprs!4697 (h!67063 zl!343)))) b!5222348))

(declare-fun b_lambda!201915 () Bool)

(assert (= b_lambda!201913 (or b!5221522 b_lambda!201915)))

(declare-fun bs!1212585 () Bool)

(declare-fun d!1683542 () Bool)

(assert (= bs!1212585 (and d!1683542 b!5221522)))

(assert (=> bs!1212585 (= (dynLambda!23949 lambda!262071 lt!2143780) (derivationStepZipperUp!185 lt!2143780 (h!67064 s!2326)))))

(assert (=> bs!1212585 m!6269000))

(assert (=> d!1683522 d!1683542))

(declare-fun b_lambda!201917 () Bool)

(assert (= b_lambda!201911 (or b!5221522 b_lambda!201917)))

(declare-fun bs!1212586 () Bool)

(declare-fun d!1683544 () Bool)

(assert (= bs!1212586 (and d!1683544 b!5221522)))

(assert (=> bs!1212586 (= (dynLambda!23949 lambda!262071 lt!2143763) (derivationStepZipperUp!185 lt!2143763 (h!67064 s!2326)))))

(assert (=> bs!1212586 m!6269014))

(assert (=> d!1683518 d!1683544))

(declare-fun b_lambda!201919 () Bool)

(assert (= b_lambda!201909 (or b!5221522 b_lambda!201919)))

(declare-fun bs!1212587 () Bool)

(declare-fun d!1683546 () Bool)

(assert (= bs!1212587 (and d!1683546 b!5221522)))

(assert (=> bs!1212587 (= (dynLambda!23949 lambda!262071 (h!67063 zl!343)) (derivationStepZipperUp!185 (h!67063 zl!343) (h!67064 s!2326)))))

(assert (=> bs!1212587 m!6269044))

(assert (=> d!1683502 d!1683546))

(check-sat (not b!5222308) (not d!1683538) (not b!5222164) (not bs!1212587) (not b!5221955) (not d!1683464) (not bm!368607) (not bm!368620) (not d!1683482) (not d!1683502) (not bm!368612) (not b!5222285) (not bm!368596) (not d!1683476) (not d!1683456) (not d!1683532) (not bs!1212585) (not d!1683486) (not b!5222261) (not b!5222122) (not b!5222165) (not d!1683478) (not b!5222336) (not d!1683520) (not b!5222224) (not d!1683480) (not b!5222310) (not d!1683460) (not bm!368589) (not b!5222034) (not b!5221985) (not b!5222167) (not b!5222195) (not b!5222294) (not b!5222284) (not d!1683504) (not b!5222168) (not d!1683454) (not bm!368600) (not b!5222277) (not bm!368590) (not b!5222327) (not b!5222001) (not bm!368617) (not b!5222230) (not b!5222159) (not b!5221961) (not b!5221986) (not bm!368584) (not bm!368623) (not b!5222325) (not b!5222130) (not b!5222266) (not b_lambda!201919) (not b!5222342) (not b!5222276) (not bm!368583) (not b!5222160) (not b!5221982) (not b!5222348) (not b!5222283) (not bm!368613) (not b!5221960) (not bm!368624) (not bm!368616) (not d!1683458) (not b!5222163) (not b!5222319) (not b!5222045) (not b!5222282) (not d!1683498) (not bm!368597) (not b!5222048) (not b!5222335) (not b!5222337) (not d!1683472) (not d!1683536) (not b!5222217) (not b!5222216) (not b!5222219) (not b!5222129) (not b!5221987) (not b!5222002) (not b!5222088) (not b!5222162) (not b!5222218) (not b_lambda!201915) (not d!1683522) (not b!5222280) (not b!5222126) (not b_lambda!201917) (not bm!368582) (not d!1683490) (not bm!368618) (not d!1683484) (not bm!368608) tp_is_empty!38879 (not b!5222267) (not b!5222306) (not d!1683524) (not b!5222320) (not b!5222220) (not b!5222329) (not bm!368622) (not d!1683492) (not b!5222347) (not b!5222155) (not d!1683500) (not b!5222047) (not b!5222331) (not b!5222124) (not b!5222154) (not d!1683450) (not b!5222332) (not b!5222158) (not d!1683518) (not setNonEmpty!33223) (not b!5222328) (not b!5222281) (not d!1683448) (not b!5221981) (not d!1683528) (not d!1683516) (not b!5222307) (not b!5222333) (not b!5222312) (not b!5222246) (not b!5222245) (not bs!1212586) (not b!5222311) (not b!5222271) (not d!1683462) (not b!5222272) (not d!1683488) (not b!5221984) (not b!5222222) (not d!1683466) (not b!5222082) (not b!5222127) (not bm!368621) (not b!5222251) (not d!1683534) (not d!1683512) (not b!5222166) (not b!5222250) (not bm!368588))
(check-sat)
(get-model)

(assert (=> d!1683518 d!1683520))

(declare-fun d!1683816 () Bool)

(assert (=> d!1683816 (= (flatMap!540 lt!2143768 lambda!262071) (dynLambda!23949 lambda!262071 lt!2143763))))

(assert (=> d!1683816 true))

(declare-fun _$13!1728 () Unit!152528)

(assert (=> d!1683816 (= (choose!38842 lt!2143768 lt!2143763 lambda!262071) _$13!1728)))

(declare-fun b_lambda!201953 () Bool)

(assert (=> (not b_lambda!201953) (not d!1683816)))

(declare-fun bs!1212760 () Bool)

(assert (= bs!1212760 d!1683816))

(assert (=> bs!1212760 m!6269008))

(assert (=> bs!1212760 m!6269540))

(assert (=> d!1683518 d!1683816))

(declare-fun d!1683818 () Bool)

(assert (=> d!1683818 (= (nullable!4982 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))) (nullableFct!1389 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))

(declare-fun bs!1212761 () Bool)

(assert (= bs!1212761 d!1683818))

(declare-fun m!6270158 () Bool)

(assert (=> bs!1212761 m!6270158))

(assert (=> b!5222034 d!1683818))

(declare-fun d!1683820 () Bool)

(assert (=> d!1683820 (= (head!11194 (exprs!4697 (h!67063 zl!343))) (h!67062 (exprs!4697 (h!67063 zl!343))))))

(assert (=> b!5222160 d!1683820))

(declare-fun b!5222966 () Bool)

(declare-fun e!3250818 () (InoxSet Context!8394))

(declare-fun e!3250816 () (InoxSet Context!8394))

(assert (=> b!5222966 (= e!3250818 e!3250816)))

(declare-fun c!901471 () Bool)

(assert (=> b!5222966 (= c!901471 ((_ is Cons!60614) (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143780))))))))

(declare-fun bm!368752 () Bool)

(declare-fun call!368757 () (InoxSet Context!8394))

(assert (=> bm!368752 (= call!368757 (derivationStepZipperDown!261 (h!67062 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143780))))) (Context!8395 (t!373909 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143780)))))) (h!67064 s!2326)))))

(declare-fun d!1683822 () Bool)

(declare-fun c!901472 () Bool)

(declare-fun e!3250817 () Bool)

(assert (=> d!1683822 (= c!901472 e!3250817)))

(declare-fun res!2217594 () Bool)

(assert (=> d!1683822 (=> (not res!2217594) (not e!3250817))))

(assert (=> d!1683822 (= res!2217594 ((_ is Cons!60614) (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143780))))))))

(assert (=> d!1683822 (= (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 lt!2143780))) (h!67064 s!2326)) e!3250818)))

(declare-fun b!5222967 () Bool)

(assert (=> b!5222967 (= e!3250816 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5222968 () Bool)

(assert (=> b!5222968 (= e!3250816 call!368757)))

(declare-fun b!5222969 () Bool)

(assert (=> b!5222969 (= e!3250818 ((_ map or) call!368757 (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143780)))))) (h!67064 s!2326))))))

(declare-fun b!5222970 () Bool)

(assert (=> b!5222970 (= e!3250817 (nullable!4982 (h!67062 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143780)))))))))

(assert (= (and d!1683822 res!2217594) b!5222970))

(assert (= (and d!1683822 c!901472) b!5222969))

(assert (= (and d!1683822 (not c!901472)) b!5222966))

(assert (= (and b!5222966 c!901471) b!5222968))

(assert (= (and b!5222966 (not c!901471)) b!5222967))

(assert (= (or b!5222969 b!5222968) bm!368752))

(declare-fun m!6270160 () Bool)

(assert (=> bm!368752 m!6270160))

(declare-fun m!6270162 () Bool)

(assert (=> b!5222969 m!6270162))

(declare-fun m!6270164 () Bool)

(assert (=> b!5222970 m!6270164))

(assert (=> b!5222271 d!1683822))

(assert (=> bs!1212587 d!1683508))

(declare-fun d!1683824 () Bool)

(assert (=> d!1683824 true))

(assert (=> d!1683824 true))

(declare-fun res!2217597 () Bool)

(assert (=> d!1683824 (= (choose!38838 lambda!262069) res!2217597)))

(assert (=> d!1683464 d!1683824))

(declare-fun d!1683826 () Bool)

(assert (=> d!1683826 (= (isDefined!11627 lt!2143840) (not (isEmpty!32538 lt!2143840)))))

(declare-fun bs!1212762 () Bool)

(assert (= bs!1212762 d!1683826))

(declare-fun m!6270166 () Bool)

(assert (=> bs!1212762 m!6270166))

(assert (=> d!1683454 d!1683826))

(declare-fun b!5222971 () Bool)

(declare-fun e!3250825 () Bool)

(declare-fun lt!2143898 () Bool)

(assert (=> b!5222971 (= e!3250825 (not lt!2143898))))

(declare-fun b!5222972 () Bool)

(declare-fun e!3250819 () Bool)

(declare-fun e!3250823 () Bool)

(assert (=> b!5222972 (= e!3250819 e!3250823)))

(declare-fun res!2217599 () Bool)

(assert (=> b!5222972 (=> (not res!2217599) (not e!3250823))))

(assert (=> b!5222972 (= res!2217599 (not lt!2143898))))

(declare-fun bm!368753 () Bool)

(declare-fun call!368758 () Bool)

(assert (=> bm!368753 (= call!368758 (isEmpty!32537 Nil!60616))))

(declare-fun b!5222973 () Bool)

(declare-fun e!3250824 () Bool)

(assert (=> b!5222973 (= e!3250824 (matchR!6998 (derivativeStep!4059 (regOne!30138 r!7292) (head!11193 Nil!60616)) (tail!10290 Nil!60616)))))

(declare-fun b!5222974 () Bool)

(declare-fun e!3250822 () Bool)

(assert (=> b!5222974 (= e!3250823 e!3250822)))

(declare-fun res!2217604 () Bool)

(assert (=> b!5222974 (=> res!2217604 e!3250822)))

(assert (=> b!5222974 (= res!2217604 call!368758)))

(declare-fun b!5222975 () Bool)

(declare-fun e!3250820 () Bool)

(assert (=> b!5222975 (= e!3250820 (= (head!11193 Nil!60616) (c!901095 (regOne!30138 r!7292))))))

(declare-fun d!1683828 () Bool)

(declare-fun e!3250821 () Bool)

(assert (=> d!1683828 e!3250821))

(declare-fun c!901473 () Bool)

(assert (=> d!1683828 (= c!901473 ((_ is EmptyExpr!14813) (regOne!30138 r!7292)))))

(assert (=> d!1683828 (= lt!2143898 e!3250824)))

(declare-fun c!901475 () Bool)

(assert (=> d!1683828 (= c!901475 (isEmpty!32537 Nil!60616))))

(assert (=> d!1683828 (validRegex!6549 (regOne!30138 r!7292))))

(assert (=> d!1683828 (= (matchR!6998 (regOne!30138 r!7292) Nil!60616) lt!2143898)))

(declare-fun b!5222976 () Bool)

(assert (=> b!5222976 (= e!3250821 (= lt!2143898 call!368758))))

(declare-fun b!5222977 () Bool)

(assert (=> b!5222977 (= e!3250824 (nullable!4982 (regOne!30138 r!7292)))))

(declare-fun b!5222978 () Bool)

(declare-fun res!2217603 () Bool)

(assert (=> b!5222978 (=> (not res!2217603) (not e!3250820))))

(assert (=> b!5222978 (= res!2217603 (isEmpty!32537 (tail!10290 Nil!60616)))))

(declare-fun b!5222979 () Bool)

(declare-fun res!2217598 () Bool)

(assert (=> b!5222979 (=> (not res!2217598) (not e!3250820))))

(assert (=> b!5222979 (= res!2217598 (not call!368758))))

(declare-fun b!5222980 () Bool)

(declare-fun res!2217605 () Bool)

(assert (=> b!5222980 (=> res!2217605 e!3250822)))

(assert (=> b!5222980 (= res!2217605 (not (isEmpty!32537 (tail!10290 Nil!60616))))))

(declare-fun b!5222981 () Bool)

(assert (=> b!5222981 (= e!3250822 (not (= (head!11193 Nil!60616) (c!901095 (regOne!30138 r!7292)))))))

(declare-fun b!5222982 () Bool)

(declare-fun res!2217601 () Bool)

(assert (=> b!5222982 (=> res!2217601 e!3250819)))

(assert (=> b!5222982 (= res!2217601 (not ((_ is ElementMatch!14813) (regOne!30138 r!7292))))))

(assert (=> b!5222982 (= e!3250825 e!3250819)))

(declare-fun b!5222983 () Bool)

(declare-fun res!2217602 () Bool)

(assert (=> b!5222983 (=> res!2217602 e!3250819)))

(assert (=> b!5222983 (= res!2217602 e!3250820)))

(declare-fun res!2217600 () Bool)

(assert (=> b!5222983 (=> (not res!2217600) (not e!3250820))))

(assert (=> b!5222983 (= res!2217600 lt!2143898)))

(declare-fun b!5222984 () Bool)

(assert (=> b!5222984 (= e!3250821 e!3250825)))

(declare-fun c!901474 () Bool)

(assert (=> b!5222984 (= c!901474 ((_ is EmptyLang!14813) (regOne!30138 r!7292)))))

(assert (= (and d!1683828 c!901475) b!5222977))

(assert (= (and d!1683828 (not c!901475)) b!5222973))

(assert (= (and d!1683828 c!901473) b!5222976))

(assert (= (and d!1683828 (not c!901473)) b!5222984))

(assert (= (and b!5222984 c!901474) b!5222971))

(assert (= (and b!5222984 (not c!901474)) b!5222982))

(assert (= (and b!5222982 (not res!2217601)) b!5222983))

(assert (= (and b!5222983 res!2217600) b!5222979))

(assert (= (and b!5222979 res!2217598) b!5222978))

(assert (= (and b!5222978 res!2217603) b!5222975))

(assert (= (and b!5222983 (not res!2217602)) b!5222972))

(assert (= (and b!5222972 res!2217599) b!5222974))

(assert (= (and b!5222974 (not res!2217604)) b!5222980))

(assert (= (and b!5222980 (not res!2217605)) b!5222981))

(assert (= (or b!5222976 b!5222974 b!5222979) bm!368753))

(declare-fun m!6270168 () Bool)

(assert (=> b!5222975 m!6270168))

(declare-fun m!6270170 () Bool)

(assert (=> b!5222978 m!6270170))

(assert (=> b!5222978 m!6270170))

(declare-fun m!6270172 () Bool)

(assert (=> b!5222978 m!6270172))

(assert (=> b!5222981 m!6270168))

(assert (=> b!5222980 m!6270170))

(assert (=> b!5222980 m!6270170))

(assert (=> b!5222980 m!6270172))

(declare-fun m!6270174 () Bool)

(assert (=> bm!368753 m!6270174))

(assert (=> b!5222973 m!6270168))

(assert (=> b!5222973 m!6270168))

(declare-fun m!6270176 () Bool)

(assert (=> b!5222973 m!6270176))

(assert (=> b!5222973 m!6270170))

(assert (=> b!5222973 m!6270176))

(assert (=> b!5222973 m!6270170))

(declare-fun m!6270178 () Bool)

(assert (=> b!5222973 m!6270178))

(declare-fun m!6270180 () Bool)

(assert (=> b!5222977 m!6270180))

(assert (=> d!1683828 m!6270174))

(assert (=> d!1683828 m!6269354))

(assert (=> d!1683454 d!1683828))

(declare-fun bm!368754 () Bool)

(declare-fun c!901476 () Bool)

(declare-fun call!368760 () Bool)

(declare-fun c!901477 () Bool)

(assert (=> bm!368754 (= call!368760 (validRegex!6549 (ite c!901476 (reg!15142 (regOne!30138 r!7292)) (ite c!901477 (regOne!30139 (regOne!30138 r!7292)) (regOne!30138 (regOne!30138 r!7292))))))))

(declare-fun b!5222985 () Bool)

(declare-fun e!3250832 () Bool)

(declare-fun e!3250831 () Bool)

(assert (=> b!5222985 (= e!3250832 e!3250831)))

(declare-fun res!2217609 () Bool)

(assert (=> b!5222985 (=> (not res!2217609) (not e!3250831))))

(declare-fun call!368759 () Bool)

(assert (=> b!5222985 (= res!2217609 call!368759)))

(declare-fun d!1683830 () Bool)

(declare-fun res!2217607 () Bool)

(declare-fun e!3250829 () Bool)

(assert (=> d!1683830 (=> res!2217607 e!3250829)))

(assert (=> d!1683830 (= res!2217607 ((_ is ElementMatch!14813) (regOne!30138 r!7292)))))

(assert (=> d!1683830 (= (validRegex!6549 (regOne!30138 r!7292)) e!3250829)))

(declare-fun b!5222986 () Bool)

(declare-fun e!3250827 () Bool)

(assert (=> b!5222986 (= e!3250827 call!368760)))

(declare-fun b!5222987 () Bool)

(declare-fun e!3250828 () Bool)

(declare-fun call!368761 () Bool)

(assert (=> b!5222987 (= e!3250828 call!368761)))

(declare-fun bm!368755 () Bool)

(assert (=> bm!368755 (= call!368761 (validRegex!6549 (ite c!901477 (regTwo!30139 (regOne!30138 r!7292)) (regTwo!30138 (regOne!30138 r!7292)))))))

(declare-fun bm!368756 () Bool)

(assert (=> bm!368756 (= call!368759 call!368760)))

(declare-fun b!5222988 () Bool)

(declare-fun e!3250826 () Bool)

(assert (=> b!5222988 (= e!3250829 e!3250826)))

(assert (=> b!5222988 (= c!901476 ((_ is Star!14813) (regOne!30138 r!7292)))))

(declare-fun b!5222989 () Bool)

(declare-fun e!3250830 () Bool)

(assert (=> b!5222989 (= e!3250826 e!3250830)))

(assert (=> b!5222989 (= c!901477 ((_ is Union!14813) (regOne!30138 r!7292)))))

(declare-fun b!5222990 () Bool)

(declare-fun res!2217608 () Bool)

(assert (=> b!5222990 (=> (not res!2217608) (not e!3250828))))

(assert (=> b!5222990 (= res!2217608 call!368759)))

(assert (=> b!5222990 (= e!3250830 e!3250828)))

(declare-fun b!5222991 () Bool)

(assert (=> b!5222991 (= e!3250831 call!368761)))

(declare-fun b!5222992 () Bool)

(declare-fun res!2217606 () Bool)

(assert (=> b!5222992 (=> res!2217606 e!3250832)))

(assert (=> b!5222992 (= res!2217606 (not ((_ is Concat!23658) (regOne!30138 r!7292))))))

(assert (=> b!5222992 (= e!3250830 e!3250832)))

(declare-fun b!5222993 () Bool)

(assert (=> b!5222993 (= e!3250826 e!3250827)))

(declare-fun res!2217610 () Bool)

(assert (=> b!5222993 (= res!2217610 (not (nullable!4982 (reg!15142 (regOne!30138 r!7292)))))))

(assert (=> b!5222993 (=> (not res!2217610) (not e!3250827))))

(assert (= (and d!1683830 (not res!2217607)) b!5222988))

(assert (= (and b!5222988 c!901476) b!5222993))

(assert (= (and b!5222988 (not c!901476)) b!5222989))

(assert (= (and b!5222993 res!2217610) b!5222986))

(assert (= (and b!5222989 c!901477) b!5222990))

(assert (= (and b!5222989 (not c!901477)) b!5222992))

(assert (= (and b!5222990 res!2217608) b!5222987))

(assert (= (and b!5222992 (not res!2217606)) b!5222985))

(assert (= (and b!5222985 res!2217609) b!5222991))

(assert (= (or b!5222987 b!5222991) bm!368755))

(assert (= (or b!5222990 b!5222985) bm!368756))

(assert (= (or b!5222986 bm!368756) bm!368754))

(declare-fun m!6270182 () Bool)

(assert (=> bm!368754 m!6270182))

(declare-fun m!6270184 () Bool)

(assert (=> bm!368755 m!6270184))

(declare-fun m!6270186 () Bool)

(assert (=> b!5222993 m!6270186))

(assert (=> d!1683454 d!1683830))

(assert (=> b!5221955 d!1683472))

(declare-fun d!1683832 () Bool)

(assert (=> d!1683832 (= (isEmpty!32538 (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) Nil!60616 s!2326 s!2326)) (not ((_ is Some!14923) (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) Nil!60616 s!2326 s!2326))))))

(assert (=> d!1683462 d!1683832))

(declare-fun d!1683834 () Bool)

(assert (=> d!1683834 (= (isEmpty!32537 (tail!10290 s!2326)) ((_ is Nil!60616) (tail!10290 s!2326)))))

(assert (=> b!5222127 d!1683834))

(declare-fun d!1683836 () Bool)

(assert (=> d!1683836 (= (tail!10290 s!2326) (t!373911 s!2326))))

(assert (=> b!5222127 d!1683836))

(declare-fun c!901479 () Bool)

(declare-fun bm!368757 () Bool)

(declare-fun call!368763 () Bool)

(declare-fun c!901478 () Bool)

(assert (=> bm!368757 (= call!368763 (validRegex!6549 (ite c!901478 (reg!15142 (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))) (ite c!901479 (regOne!30139 (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))) (regOne!30138 (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))))))))))

(declare-fun b!5222994 () Bool)

(declare-fun e!3250839 () Bool)

(declare-fun e!3250838 () Bool)

(assert (=> b!5222994 (= e!3250839 e!3250838)))

(declare-fun res!2217614 () Bool)

(assert (=> b!5222994 (=> (not res!2217614) (not e!3250838))))

(declare-fun call!368762 () Bool)

(assert (=> b!5222994 (= res!2217614 call!368762)))

(declare-fun d!1683838 () Bool)

(declare-fun res!2217612 () Bool)

(declare-fun e!3250836 () Bool)

(assert (=> d!1683838 (=> res!2217612 e!3250836)))

(assert (=> d!1683838 (= res!2217612 ((_ is ElementMatch!14813) (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))))

(assert (=> d!1683838 (= (validRegex!6549 (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))) e!3250836)))

(declare-fun b!5222995 () Bool)

(declare-fun e!3250834 () Bool)

(assert (=> b!5222995 (= e!3250834 call!368763)))

(declare-fun b!5222996 () Bool)

(declare-fun e!3250835 () Bool)

(declare-fun call!368764 () Bool)

(assert (=> b!5222996 (= e!3250835 call!368764)))

(declare-fun bm!368758 () Bool)

(assert (=> bm!368758 (= call!368764 (validRegex!6549 (ite c!901479 (regTwo!30139 (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))) (regTwo!30138 (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))))))

(declare-fun bm!368759 () Bool)

(assert (=> bm!368759 (= call!368762 call!368763)))

(declare-fun b!5222997 () Bool)

(declare-fun e!3250833 () Bool)

(assert (=> b!5222997 (= e!3250836 e!3250833)))

(assert (=> b!5222997 (= c!901478 ((_ is Star!14813) (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))))

(declare-fun b!5222998 () Bool)

(declare-fun e!3250837 () Bool)

(assert (=> b!5222998 (= e!3250833 e!3250837)))

(assert (=> b!5222998 (= c!901479 ((_ is Union!14813) (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))))

(declare-fun b!5222999 () Bool)

(declare-fun res!2217613 () Bool)

(assert (=> b!5222999 (=> (not res!2217613) (not e!3250835))))

(assert (=> b!5222999 (= res!2217613 call!368762)))

(assert (=> b!5222999 (= e!3250837 e!3250835)))

(declare-fun b!5223000 () Bool)

(assert (=> b!5223000 (= e!3250838 call!368764)))

(declare-fun b!5223001 () Bool)

(declare-fun res!2217611 () Bool)

(assert (=> b!5223001 (=> res!2217611 e!3250839)))

(assert (=> b!5223001 (= res!2217611 (not ((_ is Concat!23658) (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))))))))

(assert (=> b!5223001 (= e!3250837 e!3250839)))

(declare-fun b!5223002 () Bool)

(assert (=> b!5223002 (= e!3250833 e!3250834)))

(declare-fun res!2217615 () Bool)

(assert (=> b!5223002 (= res!2217615 (not (nullable!4982 (reg!15142 (ite c!901276 (reg!15142 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901277 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))))))

(assert (=> b!5223002 (=> (not res!2217615) (not e!3250834))))

(assert (= (and d!1683838 (not res!2217612)) b!5222997))

(assert (= (and b!5222997 c!901478) b!5223002))

(assert (= (and b!5222997 (not c!901478)) b!5222998))

(assert (= (and b!5223002 res!2217615) b!5222995))

(assert (= (and b!5222998 c!901479) b!5222999))

(assert (= (and b!5222998 (not c!901479)) b!5223001))

(assert (= (and b!5222999 res!2217613) b!5222996))

(assert (= (and b!5223001 (not res!2217611)) b!5222994))

(assert (= (and b!5222994 res!2217614) b!5223000))

(assert (= (or b!5222996 b!5223000) bm!368758))

(assert (= (or b!5222999 b!5222994) bm!368759))

(assert (= (or b!5222995 bm!368759) bm!368757))

(declare-fun m!6270188 () Bool)

(assert (=> bm!368757 m!6270188))

(declare-fun m!6270190 () Bool)

(assert (=> bm!368758 m!6270190))

(declare-fun m!6270192 () Bool)

(assert (=> b!5223002 m!6270192))

(assert (=> bm!368607 d!1683838))

(declare-fun bm!368760 () Bool)

(declare-fun call!368765 () List!60738)

(declare-fun call!368766 () List!60738)

(assert (=> bm!368760 (= call!368765 call!368766)))

(declare-fun b!5223004 () Bool)

(declare-fun e!3250842 () (InoxSet Context!8394))

(declare-fun call!368770 () (InoxSet Context!8394))

(assert (=> b!5223004 (= e!3250842 call!368770)))

(declare-fun b!5223005 () Bool)

(declare-fun e!3250844 () (InoxSet Context!8394))

(declare-fun call!368767 () (InoxSet Context!8394))

(declare-fun call!368768 () (InoxSet Context!8394))

(assert (=> b!5223005 (= e!3250844 ((_ map or) call!368767 call!368768))))

(declare-fun b!5223006 () Bool)

(declare-fun e!3250841 () (InoxSet Context!8394))

(assert (=> b!5223006 (= e!3250841 call!368770)))

(declare-fun b!5223007 () Bool)

(declare-fun e!3250840 () (InoxSet Context!8394))

(declare-fun e!3250845 () (InoxSet Context!8394))

(assert (=> b!5223007 (= e!3250840 e!3250845)))

(declare-fun c!901482 () Bool)

(assert (=> b!5223007 (= c!901482 ((_ is Union!14813) (h!67062 (exprs!4697 lt!2143761))))))

(declare-fun bm!368761 () Bool)

(assert (=> bm!368761 (= call!368770 call!368768)))

(declare-fun bm!368762 () Bool)

(assert (=> bm!368762 (= call!368767 (derivationStepZipperDown!261 (ite c!901482 (regOne!30139 (h!67062 (exprs!4697 lt!2143761))) (regOne!30138 (h!67062 (exprs!4697 lt!2143761)))) (ite c!901482 (Context!8395 (t!373909 (exprs!4697 lt!2143761))) (Context!8395 call!368766)) (h!67064 s!2326)))))

(declare-fun bm!368763 () Bool)

(declare-fun c!901483 () Bool)

(declare-fun c!901480 () Bool)

(assert (=> bm!368763 (= call!368766 ($colon$colon!1287 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143761)))) (ite (or c!901483 c!901480) (regTwo!30138 (h!67062 (exprs!4697 lt!2143761))) (h!67062 (exprs!4697 lt!2143761)))))))

(declare-fun b!5223008 () Bool)

(assert (=> b!5223008 (= e!3250842 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223009 () Bool)

(assert (=> b!5223009 (= e!3250840 (store ((as const (Array Context!8394 Bool)) false) (Context!8395 (t!373909 (exprs!4697 lt!2143761))) true))))

(declare-fun b!5223010 () Bool)

(declare-fun call!368769 () (InoxSet Context!8394))

(assert (=> b!5223010 (= e!3250845 ((_ map or) call!368767 call!368769))))

(declare-fun b!5223011 () Bool)

(declare-fun c!901481 () Bool)

(assert (=> b!5223011 (= c!901481 ((_ is Star!14813) (h!67062 (exprs!4697 lt!2143761))))))

(assert (=> b!5223011 (= e!3250841 e!3250842)))

(declare-fun d!1683840 () Bool)

(declare-fun c!901484 () Bool)

(assert (=> d!1683840 (= c!901484 (and ((_ is ElementMatch!14813) (h!67062 (exprs!4697 lt!2143761))) (= (c!901095 (h!67062 (exprs!4697 lt!2143761))) (h!67064 s!2326))))))

(assert (=> d!1683840 (= (derivationStepZipperDown!261 (h!67062 (exprs!4697 lt!2143761)) (Context!8395 (t!373909 (exprs!4697 lt!2143761))) (h!67064 s!2326)) e!3250840)))

(declare-fun b!5223003 () Bool)

(declare-fun e!3250843 () Bool)

(assert (=> b!5223003 (= c!901483 e!3250843)))

(declare-fun res!2217616 () Bool)

(assert (=> b!5223003 (=> (not res!2217616) (not e!3250843))))

(assert (=> b!5223003 (= res!2217616 ((_ is Concat!23658) (h!67062 (exprs!4697 lt!2143761))))))

(assert (=> b!5223003 (= e!3250845 e!3250844)))

(declare-fun bm!368764 () Bool)

(assert (=> bm!368764 (= call!368769 (derivationStepZipperDown!261 (ite c!901482 (regTwo!30139 (h!67062 (exprs!4697 lt!2143761))) (ite c!901483 (regTwo!30138 (h!67062 (exprs!4697 lt!2143761))) (ite c!901480 (regOne!30138 (h!67062 (exprs!4697 lt!2143761))) (reg!15142 (h!67062 (exprs!4697 lt!2143761)))))) (ite (or c!901482 c!901483) (Context!8395 (t!373909 (exprs!4697 lt!2143761))) (Context!8395 call!368765)) (h!67064 s!2326)))))

(declare-fun bm!368765 () Bool)

(assert (=> bm!368765 (= call!368768 call!368769)))

(declare-fun b!5223012 () Bool)

(assert (=> b!5223012 (= e!3250843 (nullable!4982 (regOne!30138 (h!67062 (exprs!4697 lt!2143761)))))))

(declare-fun b!5223013 () Bool)

(assert (=> b!5223013 (= e!3250844 e!3250841)))

(assert (=> b!5223013 (= c!901480 ((_ is Concat!23658) (h!67062 (exprs!4697 lt!2143761))))))

(assert (= (and d!1683840 c!901484) b!5223009))

(assert (= (and d!1683840 (not c!901484)) b!5223007))

(assert (= (and b!5223007 c!901482) b!5223010))

(assert (= (and b!5223007 (not c!901482)) b!5223003))

(assert (= (and b!5223003 res!2217616) b!5223012))

(assert (= (and b!5223003 c!901483) b!5223005))

(assert (= (and b!5223003 (not c!901483)) b!5223013))

(assert (= (and b!5223013 c!901480) b!5223006))

(assert (= (and b!5223013 (not c!901480)) b!5223011))

(assert (= (and b!5223011 c!901481) b!5223004))

(assert (= (and b!5223011 (not c!901481)) b!5223008))

(assert (= (or b!5223006 b!5223004) bm!368760))

(assert (= (or b!5223006 b!5223004) bm!368761))

(assert (= (or b!5223005 bm!368760) bm!368763))

(assert (= (or b!5223005 bm!368761) bm!368765))

(assert (= (or b!5223010 bm!368765) bm!368764))

(assert (= (or b!5223010 b!5223005) bm!368762))

(declare-fun m!6270194 () Bool)

(assert (=> bm!368764 m!6270194))

(declare-fun m!6270196 () Bool)

(assert (=> b!5223012 m!6270196))

(declare-fun m!6270198 () Bool)

(assert (=> bm!368763 m!6270198))

(declare-fun m!6270200 () Bool)

(assert (=> bm!368762 m!6270200))

(declare-fun m!6270202 () Bool)

(assert (=> b!5223009 m!6270202))

(assert (=> bm!368620 d!1683840))

(declare-fun d!1683842 () Bool)

(assert (=> d!1683842 true))

(declare-fun setRes!33232 () Bool)

(assert (=> d!1683842 setRes!33232))

(declare-fun condSetEmpty!33232 () Bool)

(declare-fun res!2217619 () (InoxSet Context!8394))

(assert (=> d!1683842 (= condSetEmpty!33232 (= res!2217619 ((as const (Array Context!8394 Bool)) false)))))

(assert (=> d!1683842 (= (choose!38843 lt!2143772 lambda!262071) res!2217619)))

(declare-fun setIsEmpty!33232 () Bool)

(assert (=> setIsEmpty!33232 setRes!33232))

(declare-fun e!3250848 () Bool)

(declare-fun setNonEmpty!33232 () Bool)

(declare-fun tp!1464089 () Bool)

(declare-fun setElem!33232 () Context!8394)

(assert (=> setNonEmpty!33232 (= setRes!33232 (and tp!1464089 (inv!80279 setElem!33232) e!3250848))))

(declare-fun setRest!33232 () (InoxSet Context!8394))

(assert (=> setNonEmpty!33232 (= res!2217619 ((_ map or) (store ((as const (Array Context!8394 Bool)) false) setElem!33232 true) setRest!33232))))

(declare-fun b!5223016 () Bool)

(declare-fun tp!1464088 () Bool)

(assert (=> b!5223016 (= e!3250848 tp!1464088)))

(assert (= (and d!1683842 condSetEmpty!33232) setIsEmpty!33232))

(assert (= (and d!1683842 (not condSetEmpty!33232)) setNonEmpty!33232))

(assert (= setNonEmpty!33232 b!5223016))

(declare-fun m!6270204 () Bool)

(assert (=> setNonEmpty!33232 m!6270204))

(assert (=> d!1683524 d!1683842))

(declare-fun d!1683844 () Bool)

(declare-fun res!2217624 () Bool)

(declare-fun e!3250853 () Bool)

(assert (=> d!1683844 (=> res!2217624 e!3250853)))

(assert (=> d!1683844 (= res!2217624 ((_ is Nil!60614) lt!2143866))))

(assert (=> d!1683844 (= (forall!14245 lt!2143866 lambda!262127) e!3250853)))

(declare-fun b!5223021 () Bool)

(declare-fun e!3250854 () Bool)

(assert (=> b!5223021 (= e!3250853 e!3250854)))

(declare-fun res!2217625 () Bool)

(assert (=> b!5223021 (=> (not res!2217625) (not e!3250854))))

(declare-fun dynLambda!23951 (Int Regex!14813) Bool)

(assert (=> b!5223021 (= res!2217625 (dynLambda!23951 lambda!262127 (h!67062 lt!2143866)))))

(declare-fun b!5223022 () Bool)

(assert (=> b!5223022 (= e!3250854 (forall!14245 (t!373909 lt!2143866) lambda!262127))))

(assert (= (and d!1683844 (not res!2217624)) b!5223021))

(assert (= (and b!5223021 res!2217625) b!5223022))

(declare-fun b_lambda!201955 () Bool)

(assert (=> (not b_lambda!201955) (not b!5223021)))

(declare-fun m!6270206 () Bool)

(assert (=> b!5223021 m!6270206))

(declare-fun m!6270208 () Bool)

(assert (=> b!5223022 m!6270208))

(assert (=> d!1683500 d!1683844))

(declare-fun d!1683846 () Bool)

(declare-fun res!2217626 () Bool)

(declare-fun e!3250855 () Bool)

(assert (=> d!1683846 (=> res!2217626 e!3250855)))

(assert (=> d!1683846 (= res!2217626 ((_ is Nil!60614) (exprs!4697 (h!67063 zl!343))))))

(assert (=> d!1683846 (= (forall!14245 (exprs!4697 (h!67063 zl!343)) lambda!262121) e!3250855)))

(declare-fun b!5223023 () Bool)

(declare-fun e!3250856 () Bool)

(assert (=> b!5223023 (= e!3250855 e!3250856)))

(declare-fun res!2217627 () Bool)

(assert (=> b!5223023 (=> (not res!2217627) (not e!3250856))))

(assert (=> b!5223023 (= res!2217627 (dynLambda!23951 lambda!262121 (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun b!5223024 () Bool)

(assert (=> b!5223024 (= e!3250856 (forall!14245 (t!373909 (exprs!4697 (h!67063 zl!343))) lambda!262121))))

(assert (= (and d!1683846 (not res!2217626)) b!5223023))

(assert (= (and b!5223023 res!2217627) b!5223024))

(declare-fun b_lambda!201957 () Bool)

(assert (=> (not b_lambda!201957) (not b!5223023)))

(declare-fun m!6270210 () Bool)

(assert (=> b!5223023 m!6270210))

(declare-fun m!6270212 () Bool)

(assert (=> b!5223024 m!6270212))

(assert (=> d!1683484 d!1683846))

(assert (=> b!5222230 d!1683482))

(declare-fun bs!1212763 () Bool)

(declare-fun d!1683848 () Bool)

(assert (= bs!1212763 (and d!1683848 d!1683500)))

(declare-fun lambda!262164 () Int)

(assert (=> bs!1212763 (= lambda!262164 lambda!262127)))

(declare-fun bs!1212764 () Bool)

(assert (= bs!1212764 (and d!1683848 d!1683498)))

(assert (=> bs!1212764 (= lambda!262164 lambda!262124)))

(declare-fun bs!1212765 () Bool)

(assert (= bs!1212765 (and d!1683848 d!1683482)))

(assert (=> bs!1212765 (= lambda!262164 lambda!262120)))

(declare-fun bs!1212766 () Bool)

(assert (= bs!1212766 (and d!1683848 d!1683484)))

(assert (=> bs!1212766 (= lambda!262164 lambda!262121)))

(declare-fun bs!1212767 () Bool)

(assert (= bs!1212767 (and d!1683848 d!1683480)))

(assert (=> bs!1212767 (= lambda!262164 lambda!262117)))

(declare-fun lt!2143899 () List!60738)

(assert (=> d!1683848 (forall!14245 lt!2143899 lambda!262164)))

(declare-fun e!3250857 () List!60738)

(assert (=> d!1683848 (= lt!2143899 e!3250857)))

(declare-fun c!901485 () Bool)

(assert (=> d!1683848 (= c!901485 ((_ is Cons!60615) (t!373910 zl!343)))))

(assert (=> d!1683848 (= (unfocusZipperList!255 (t!373910 zl!343)) lt!2143899)))

(declare-fun b!5223025 () Bool)

(assert (=> b!5223025 (= e!3250857 (Cons!60614 (generalisedConcat!482 (exprs!4697 (h!67063 (t!373910 zl!343)))) (unfocusZipperList!255 (t!373910 (t!373910 zl!343)))))))

(declare-fun b!5223026 () Bool)

(assert (=> b!5223026 (= e!3250857 Nil!60614)))

(assert (= (and d!1683848 c!901485) b!5223025))

(assert (= (and d!1683848 (not c!901485)) b!5223026))

(declare-fun m!6270214 () Bool)

(assert (=> d!1683848 m!6270214))

(declare-fun m!6270216 () Bool)

(assert (=> b!5223025 m!6270216))

(declare-fun m!6270218 () Bool)

(assert (=> b!5223025 m!6270218))

(assert (=> b!5222230 d!1683848))

(declare-fun d!1683850 () Bool)

(assert (=> d!1683850 (= (isEmpty!32537 (t!373911 s!2326)) ((_ is Nil!60616) (t!373911 s!2326)))))

(assert (=> d!1683450 d!1683850))

(assert (=> d!1683448 d!1683450))

(assert (=> d!1683448 d!1683536))

(declare-fun e!3250860 () Bool)

(declare-fun d!1683852 () Bool)

(assert (=> d!1683852 (= (matchZipper!1057 ((_ map or) lt!2143782 lt!2143771) (t!373911 s!2326)) e!3250860)))

(declare-fun res!2217630 () Bool)

(assert (=> d!1683852 (=> res!2217630 e!3250860)))

(assert (=> d!1683852 (= res!2217630 (matchZipper!1057 lt!2143782 (t!373911 s!2326)))))

(assert (=> d!1683852 true))

(declare-fun _$48!837 () Unit!152528)

(assert (=> d!1683852 (= (choose!38837 lt!2143782 lt!2143771 (t!373911 s!2326)) _$48!837)))

(declare-fun b!5223029 () Bool)

(assert (=> b!5223029 (= e!3250860 (matchZipper!1057 lt!2143771 (t!373911 s!2326)))))

(assert (= (and d!1683852 (not res!2217630)) b!5223029))

(assert (=> d!1683852 m!6268986))

(assert (=> d!1683852 m!6269020))

(assert (=> b!5223029 m!6269032))

(assert (=> d!1683448 d!1683852))

(declare-fun d!1683854 () Bool)

(declare-fun c!901486 () Bool)

(assert (=> d!1683854 (= c!901486 (isEmpty!32537 (tail!10290 (t!373911 s!2326))))))

(declare-fun e!3250861 () Bool)

(assert (=> d!1683854 (= (matchZipper!1057 (derivationStepZipper!1081 lt!2143781 (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))) e!3250861)))

(declare-fun b!5223030 () Bool)

(assert (=> b!5223030 (= e!3250861 (nullableZipper!1237 (derivationStepZipper!1081 lt!2143781 (head!11193 (t!373911 s!2326)))))))

(declare-fun b!5223031 () Bool)

(assert (=> b!5223031 (= e!3250861 (matchZipper!1057 (derivationStepZipper!1081 (derivationStepZipper!1081 lt!2143781 (head!11193 (t!373911 s!2326))) (head!11193 (tail!10290 (t!373911 s!2326)))) (tail!10290 (tail!10290 (t!373911 s!2326)))))))

(assert (= (and d!1683854 c!901486) b!5223030))

(assert (= (and d!1683854 (not c!901486)) b!5223031))

(assert (=> d!1683854 m!6269340))

(declare-fun m!6270220 () Bool)

(assert (=> d!1683854 m!6270220))

(assert (=> b!5223030 m!6269386))

(declare-fun m!6270222 () Bool)

(assert (=> b!5223030 m!6270222))

(assert (=> b!5223031 m!6269340))

(declare-fun m!6270224 () Bool)

(assert (=> b!5223031 m!6270224))

(assert (=> b!5223031 m!6269386))

(assert (=> b!5223031 m!6270224))

(declare-fun m!6270226 () Bool)

(assert (=> b!5223031 m!6270226))

(assert (=> b!5223031 m!6269340))

(declare-fun m!6270228 () Bool)

(assert (=> b!5223031 m!6270228))

(assert (=> b!5223031 m!6270226))

(assert (=> b!5223031 m!6270228))

(declare-fun m!6270230 () Bool)

(assert (=> b!5223031 m!6270230))

(assert (=> b!5222002 d!1683854))

(declare-fun bs!1212768 () Bool)

(declare-fun d!1683856 () Bool)

(assert (= bs!1212768 (and d!1683856 b!5221522)))

(declare-fun lambda!262167 () Int)

(assert (=> bs!1212768 (= (= (head!11193 (t!373911 s!2326)) (h!67064 s!2326)) (= lambda!262167 lambda!262071))))

(assert (=> d!1683856 true))

(assert (=> d!1683856 (= (derivationStepZipper!1081 lt!2143781 (head!11193 (t!373911 s!2326))) (flatMap!540 lt!2143781 lambda!262167))))

(declare-fun bs!1212769 () Bool)

(assert (= bs!1212769 d!1683856))

(declare-fun m!6270232 () Bool)

(assert (=> bs!1212769 m!6270232))

(assert (=> b!5222002 d!1683856))

(declare-fun d!1683858 () Bool)

(assert (=> d!1683858 (= (head!11193 (t!373911 s!2326)) (h!67064 (t!373911 s!2326)))))

(assert (=> b!5222002 d!1683858))

(declare-fun d!1683860 () Bool)

(assert (=> d!1683860 (= (tail!10290 (t!373911 s!2326)) (t!373911 (t!373911 s!2326)))))

(assert (=> b!5222002 d!1683860))

(declare-fun d!1683862 () Bool)

(declare-fun res!2217642 () Bool)

(declare-fun e!3250874 () Bool)

(assert (=> d!1683862 (=> res!2217642 e!3250874)))

(assert (=> d!1683862 (= res!2217642 ((_ is EmptyExpr!14813) (regOne!30139 (regOne!30138 r!7292))))))

(assert (=> d!1683862 (= (nullableFct!1389 (regOne!30139 (regOne!30138 r!7292))) e!3250874)))

(declare-fun b!5223048 () Bool)

(declare-fun e!3250878 () Bool)

(declare-fun e!3250875 () Bool)

(assert (=> b!5223048 (= e!3250878 e!3250875)))

(declare-fun res!2217643 () Bool)

(declare-fun call!368776 () Bool)

(assert (=> b!5223048 (= res!2217643 call!368776)))

(assert (=> b!5223048 (=> res!2217643 e!3250875)))

(declare-fun b!5223049 () Bool)

(declare-fun e!3250879 () Bool)

(assert (=> b!5223049 (= e!3250874 e!3250879)))

(declare-fun res!2217644 () Bool)

(assert (=> b!5223049 (=> (not res!2217644) (not e!3250879))))

(assert (=> b!5223049 (= res!2217644 (and (not ((_ is EmptyLang!14813) (regOne!30139 (regOne!30138 r!7292)))) (not ((_ is ElementMatch!14813) (regOne!30139 (regOne!30138 r!7292))))))))

(declare-fun bm!368770 () Bool)

(declare-fun call!368775 () Bool)

(declare-fun c!901491 () Bool)

(assert (=> bm!368770 (= call!368775 (nullable!4982 (ite c!901491 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))))))))

(declare-fun b!5223050 () Bool)

(declare-fun e!3250877 () Bool)

(assert (=> b!5223050 (= e!3250878 e!3250877)))

(declare-fun res!2217641 () Bool)

(assert (=> b!5223050 (= res!2217641 call!368776)))

(assert (=> b!5223050 (=> (not res!2217641) (not e!3250877))))

(declare-fun b!5223051 () Bool)

(declare-fun e!3250876 () Bool)

(assert (=> b!5223051 (= e!3250879 e!3250876)))

(declare-fun res!2217645 () Bool)

(assert (=> b!5223051 (=> res!2217645 e!3250876)))

(assert (=> b!5223051 (= res!2217645 ((_ is Star!14813) (regOne!30139 (regOne!30138 r!7292))))))

(declare-fun b!5223052 () Bool)

(assert (=> b!5223052 (= e!3250875 call!368775)))

(declare-fun b!5223053 () Bool)

(assert (=> b!5223053 (= e!3250876 e!3250878)))

(assert (=> b!5223053 (= c!901491 ((_ is Union!14813) (regOne!30139 (regOne!30138 r!7292))))))

(declare-fun bm!368771 () Bool)

(assert (=> bm!368771 (= call!368776 (nullable!4982 (ite c!901491 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))))))

(declare-fun b!5223054 () Bool)

(assert (=> b!5223054 (= e!3250877 call!368775)))

(assert (= (and d!1683862 (not res!2217642)) b!5223049))

(assert (= (and b!5223049 res!2217644) b!5223051))

(assert (= (and b!5223051 (not res!2217645)) b!5223053))

(assert (= (and b!5223053 c!901491) b!5223048))

(assert (= (and b!5223053 (not c!901491)) b!5223050))

(assert (= (and b!5223048 (not res!2217643)) b!5223052))

(assert (= (and b!5223050 res!2217641) b!5223054))

(assert (= (or b!5223052 b!5223054) bm!368770))

(assert (= (or b!5223048 b!5223050) bm!368771))

(declare-fun m!6270234 () Bool)

(assert (=> bm!368770 m!6270234))

(declare-fun m!6270236 () Bool)

(assert (=> bm!368771 m!6270236))

(assert (=> d!1683528 d!1683862))

(declare-fun bm!368772 () Bool)

(declare-fun call!368777 () List!60738)

(declare-fun call!368778 () List!60738)

(assert (=> bm!368772 (= call!368777 call!368778)))

(declare-fun b!5223056 () Bool)

(declare-fun e!3250882 () (InoxSet Context!8394))

(declare-fun call!368782 () (InoxSet Context!8394))

(assert (=> b!5223056 (= e!3250882 call!368782)))

(declare-fun b!5223057 () Bool)

(declare-fun e!3250884 () (InoxSet Context!8394))

(declare-fun call!368779 () (InoxSet Context!8394))

(declare-fun call!368780 () (InoxSet Context!8394))

(assert (=> b!5223057 (= e!3250884 ((_ map or) call!368779 call!368780))))

(declare-fun b!5223058 () Bool)

(declare-fun e!3250881 () (InoxSet Context!8394))

(assert (=> b!5223058 (= e!3250881 call!368782)))

(declare-fun b!5223059 () Bool)

(declare-fun e!3250880 () (InoxSet Context!8394))

(declare-fun e!3250885 () (InoxSet Context!8394))

(assert (=> b!5223059 (= e!3250880 e!3250885)))

(declare-fun c!901494 () Bool)

(assert (=> b!5223059 (= c!901494 ((_ is Union!14813) (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))))))

(declare-fun bm!368773 () Bool)

(assert (=> bm!368773 (= call!368782 call!368780)))

(declare-fun bm!368774 () Bool)

(assert (=> bm!368774 (= call!368779 (derivationStepZipperDown!261 (ite c!901494 (regOne!30139 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))) (regOne!30138 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))) (ite c!901494 (ite c!901228 lt!2143761 (Context!8395 call!368586)) (Context!8395 call!368778)) (h!67064 s!2326)))))

(declare-fun c!901492 () Bool)

(declare-fun c!901495 () Bool)

(declare-fun bm!368775 () Bool)

(assert (=> bm!368775 (= call!368778 ($colon$colon!1287 (exprs!4697 (ite c!901228 lt!2143761 (Context!8395 call!368586))) (ite (or c!901495 c!901492) (regTwo!30138 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))) (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))))

(declare-fun b!5223060 () Bool)

(assert (=> b!5223060 (= e!3250882 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223061 () Bool)

(assert (=> b!5223061 (= e!3250880 (store ((as const (Array Context!8394 Bool)) false) (ite c!901228 lt!2143761 (Context!8395 call!368586)) true))))

(declare-fun b!5223062 () Bool)

(declare-fun call!368781 () (InoxSet Context!8394))

(assert (=> b!5223062 (= e!3250885 ((_ map or) call!368779 call!368781))))

(declare-fun b!5223063 () Bool)

(declare-fun c!901493 () Bool)

(assert (=> b!5223063 (= c!901493 ((_ is Star!14813) (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))))))

(assert (=> b!5223063 (= e!3250881 e!3250882)))

(declare-fun c!901496 () Bool)

(declare-fun d!1683864 () Bool)

(assert (=> d!1683864 (= c!901496 (and ((_ is ElementMatch!14813) (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))) (= (c!901095 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))) (h!67064 s!2326))))))

(assert (=> d!1683864 (= (derivationStepZipperDown!261 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))) (ite c!901228 lt!2143761 (Context!8395 call!368586)) (h!67064 s!2326)) e!3250880)))

(declare-fun b!5223055 () Bool)

(declare-fun e!3250883 () Bool)

(assert (=> b!5223055 (= c!901495 e!3250883)))

(declare-fun res!2217646 () Bool)

(assert (=> b!5223055 (=> (not res!2217646) (not e!3250883))))

(assert (=> b!5223055 (= res!2217646 ((_ is Concat!23658) (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))))))

(assert (=> b!5223055 (= e!3250885 e!3250884)))

(declare-fun bm!368776 () Bool)

(assert (=> bm!368776 (= call!368781 (derivationStepZipperDown!261 (ite c!901494 (regTwo!30139 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))) (ite c!901495 (regTwo!30138 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))) (ite c!901492 (regOne!30138 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))) (reg!15142 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))) (ite (or c!901494 c!901495) (ite c!901228 lt!2143761 (Context!8395 call!368586)) (Context!8395 call!368777)) (h!67064 s!2326)))))

(declare-fun bm!368777 () Bool)

(assert (=> bm!368777 (= call!368780 call!368781)))

(declare-fun b!5223064 () Bool)

(assert (=> b!5223064 (= e!3250883 (nullable!4982 (regOne!30138 (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292)))))))))

(declare-fun b!5223065 () Bool)

(assert (=> b!5223065 (= e!3250884 e!3250881)))

(assert (=> b!5223065 (= c!901492 ((_ is Concat!23658) (ite c!901228 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))))))

(assert (= (and d!1683864 c!901496) b!5223061))

(assert (= (and d!1683864 (not c!901496)) b!5223059))

(assert (= (and b!5223059 c!901494) b!5223062))

(assert (= (and b!5223059 (not c!901494)) b!5223055))

(assert (= (and b!5223055 res!2217646) b!5223064))

(assert (= (and b!5223055 c!901495) b!5223057))

(assert (= (and b!5223055 (not c!901495)) b!5223065))

(assert (= (and b!5223065 c!901492) b!5223058))

(assert (= (and b!5223065 (not c!901492)) b!5223063))

(assert (= (and b!5223063 c!901493) b!5223056))

(assert (= (and b!5223063 (not c!901493)) b!5223060))

(assert (= (or b!5223058 b!5223056) bm!368772))

(assert (= (or b!5223058 b!5223056) bm!368773))

(assert (= (or b!5223057 bm!368772) bm!368775))

(assert (= (or b!5223057 bm!368773) bm!368777))

(assert (= (or b!5223062 bm!368777) bm!368776))

(assert (= (or b!5223062 b!5223057) bm!368774))

(declare-fun m!6270238 () Bool)

(assert (=> bm!368776 m!6270238))

(declare-fun m!6270240 () Bool)

(assert (=> b!5223064 m!6270240))

(declare-fun m!6270242 () Bool)

(assert (=> bm!368775 m!6270242))

(declare-fun m!6270244 () Bool)

(assert (=> bm!368774 m!6270244))

(declare-fun m!6270246 () Bool)

(assert (=> b!5223061 m!6270246))

(assert (=> bm!368582 d!1683864))

(declare-fun b!5223066 () Bool)

(declare-fun e!3250892 () Bool)

(declare-fun lt!2143900 () Bool)

(assert (=> b!5223066 (= e!3250892 (not lt!2143900))))

(declare-fun b!5223067 () Bool)

(declare-fun e!3250886 () Bool)

(declare-fun e!3250890 () Bool)

(assert (=> b!5223067 (= e!3250886 e!3250890)))

(declare-fun res!2217648 () Bool)

(assert (=> b!5223067 (=> (not res!2217648) (not e!3250890))))

(assert (=> b!5223067 (= res!2217648 (not lt!2143900))))

(declare-fun bm!368778 () Bool)

(declare-fun call!368783 () Bool)

(assert (=> bm!368778 (= call!368783 (isEmpty!32537 (_2!35315 (get!20829 lt!2143840))))))

(declare-fun b!5223068 () Bool)

(declare-fun e!3250891 () Bool)

(assert (=> b!5223068 (= e!3250891 (matchR!6998 (derivativeStep!4059 (regTwo!30138 r!7292) (head!11193 (_2!35315 (get!20829 lt!2143840)))) (tail!10290 (_2!35315 (get!20829 lt!2143840)))))))

(declare-fun b!5223069 () Bool)

(declare-fun e!3250889 () Bool)

(assert (=> b!5223069 (= e!3250890 e!3250889)))

(declare-fun res!2217653 () Bool)

(assert (=> b!5223069 (=> res!2217653 e!3250889)))

(assert (=> b!5223069 (= res!2217653 call!368783)))

(declare-fun b!5223070 () Bool)

(declare-fun e!3250887 () Bool)

(assert (=> b!5223070 (= e!3250887 (= (head!11193 (_2!35315 (get!20829 lt!2143840))) (c!901095 (regTwo!30138 r!7292))))))

(declare-fun d!1683866 () Bool)

(declare-fun e!3250888 () Bool)

(assert (=> d!1683866 e!3250888))

(declare-fun c!901497 () Bool)

(assert (=> d!1683866 (= c!901497 ((_ is EmptyExpr!14813) (regTwo!30138 r!7292)))))

(assert (=> d!1683866 (= lt!2143900 e!3250891)))

(declare-fun c!901499 () Bool)

(assert (=> d!1683866 (= c!901499 (isEmpty!32537 (_2!35315 (get!20829 lt!2143840))))))

(assert (=> d!1683866 (validRegex!6549 (regTwo!30138 r!7292))))

(assert (=> d!1683866 (= (matchR!6998 (regTwo!30138 r!7292) (_2!35315 (get!20829 lt!2143840))) lt!2143900)))

(declare-fun b!5223071 () Bool)

(assert (=> b!5223071 (= e!3250888 (= lt!2143900 call!368783))))

(declare-fun b!5223072 () Bool)

(assert (=> b!5223072 (= e!3250891 (nullable!4982 (regTwo!30138 r!7292)))))

(declare-fun b!5223073 () Bool)

(declare-fun res!2217652 () Bool)

(assert (=> b!5223073 (=> (not res!2217652) (not e!3250887))))

(assert (=> b!5223073 (= res!2217652 (isEmpty!32537 (tail!10290 (_2!35315 (get!20829 lt!2143840)))))))

(declare-fun b!5223074 () Bool)

(declare-fun res!2217647 () Bool)

(assert (=> b!5223074 (=> (not res!2217647) (not e!3250887))))

(assert (=> b!5223074 (= res!2217647 (not call!368783))))

(declare-fun b!5223075 () Bool)

(declare-fun res!2217654 () Bool)

(assert (=> b!5223075 (=> res!2217654 e!3250889)))

(assert (=> b!5223075 (= res!2217654 (not (isEmpty!32537 (tail!10290 (_2!35315 (get!20829 lt!2143840))))))))

(declare-fun b!5223076 () Bool)

(assert (=> b!5223076 (= e!3250889 (not (= (head!11193 (_2!35315 (get!20829 lt!2143840))) (c!901095 (regTwo!30138 r!7292)))))))

(declare-fun b!5223077 () Bool)

(declare-fun res!2217650 () Bool)

(assert (=> b!5223077 (=> res!2217650 e!3250886)))

(assert (=> b!5223077 (= res!2217650 (not ((_ is ElementMatch!14813) (regTwo!30138 r!7292))))))

(assert (=> b!5223077 (= e!3250892 e!3250886)))

(declare-fun b!5223078 () Bool)

(declare-fun res!2217651 () Bool)

(assert (=> b!5223078 (=> res!2217651 e!3250886)))

(assert (=> b!5223078 (= res!2217651 e!3250887)))

(declare-fun res!2217649 () Bool)

(assert (=> b!5223078 (=> (not res!2217649) (not e!3250887))))

(assert (=> b!5223078 (= res!2217649 lt!2143900)))

(declare-fun b!5223079 () Bool)

(assert (=> b!5223079 (= e!3250888 e!3250892)))

(declare-fun c!901498 () Bool)

(assert (=> b!5223079 (= c!901498 ((_ is EmptyLang!14813) (regTwo!30138 r!7292)))))

(assert (= (and d!1683866 c!901499) b!5223072))

(assert (= (and d!1683866 (not c!901499)) b!5223068))

(assert (= (and d!1683866 c!901497) b!5223071))

(assert (= (and d!1683866 (not c!901497)) b!5223079))

(assert (= (and b!5223079 c!901498) b!5223066))

(assert (= (and b!5223079 (not c!901498)) b!5223077))

(assert (= (and b!5223077 (not res!2217650)) b!5223078))

(assert (= (and b!5223078 res!2217649) b!5223074))

(assert (= (and b!5223074 res!2217647) b!5223073))

(assert (= (and b!5223073 res!2217652) b!5223070))

(assert (= (and b!5223078 (not res!2217651)) b!5223067))

(assert (= (and b!5223067 res!2217648) b!5223069))

(assert (= (and b!5223069 (not res!2217653)) b!5223075))

(assert (= (and b!5223075 (not res!2217654)) b!5223076))

(assert (= (or b!5223071 b!5223069 b!5223074) bm!368778))

(declare-fun m!6270248 () Bool)

(assert (=> b!5223070 m!6270248))

(declare-fun m!6270250 () Bool)

(assert (=> b!5223073 m!6270250))

(assert (=> b!5223073 m!6270250))

(declare-fun m!6270252 () Bool)

(assert (=> b!5223073 m!6270252))

(assert (=> b!5223076 m!6270248))

(assert (=> b!5223075 m!6270250))

(assert (=> b!5223075 m!6270250))

(assert (=> b!5223075 m!6270252))

(declare-fun m!6270254 () Bool)

(assert (=> bm!368778 m!6270254))

(assert (=> b!5223068 m!6270248))

(assert (=> b!5223068 m!6270248))

(declare-fun m!6270256 () Bool)

(assert (=> b!5223068 m!6270256))

(assert (=> b!5223068 m!6270250))

(assert (=> b!5223068 m!6270256))

(assert (=> b!5223068 m!6270250))

(declare-fun m!6270258 () Bool)

(assert (=> b!5223068 m!6270258))

(declare-fun m!6270260 () Bool)

(assert (=> b!5223072 m!6270260))

(assert (=> d!1683866 m!6270254))

(declare-fun m!6270262 () Bool)

(assert (=> d!1683866 m!6270262))

(assert (=> b!5221987 d!1683866))

(declare-fun d!1683868 () Bool)

(assert (=> d!1683868 (= (get!20829 lt!2143840) (v!50952 lt!2143840))))

(assert (=> b!5221987 d!1683868))

(declare-fun call!368785 () Bool)

(declare-fun c!901500 () Bool)

(declare-fun c!901501 () Bool)

(declare-fun bm!368779 () Bool)

(assert (=> bm!368779 (= call!368785 (validRegex!6549 (ite c!901500 (reg!15142 (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292))) (ite c!901501 (regOne!30139 (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292))) (regOne!30138 (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292)))))))))

(declare-fun b!5223080 () Bool)

(declare-fun e!3250899 () Bool)

(declare-fun e!3250898 () Bool)

(assert (=> b!5223080 (= e!3250899 e!3250898)))

(declare-fun res!2217658 () Bool)

(assert (=> b!5223080 (=> (not res!2217658) (not e!3250898))))

(declare-fun call!368784 () Bool)

(assert (=> b!5223080 (= res!2217658 call!368784)))

(declare-fun d!1683870 () Bool)

(declare-fun res!2217656 () Bool)

(declare-fun e!3250896 () Bool)

(assert (=> d!1683870 (=> res!2217656 e!3250896)))

(assert (=> d!1683870 (= res!2217656 ((_ is ElementMatch!14813) (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292))))))

(assert (=> d!1683870 (= (validRegex!6549 (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292))) e!3250896)))

(declare-fun b!5223081 () Bool)

(declare-fun e!3250894 () Bool)

(assert (=> b!5223081 (= e!3250894 call!368785)))

(declare-fun b!5223082 () Bool)

(declare-fun e!3250895 () Bool)

(declare-fun call!368786 () Bool)

(assert (=> b!5223082 (= e!3250895 call!368786)))

(declare-fun bm!368780 () Bool)

(assert (=> bm!368780 (= call!368786 (validRegex!6549 (ite c!901501 (regTwo!30139 (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292))) (regTwo!30138 (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292))))))))

(declare-fun bm!368781 () Bool)

(assert (=> bm!368781 (= call!368784 call!368785)))

(declare-fun b!5223083 () Bool)

(declare-fun e!3250893 () Bool)

(assert (=> b!5223083 (= e!3250896 e!3250893)))

(assert (=> b!5223083 (= c!901500 ((_ is Star!14813) (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292))))))

(declare-fun b!5223084 () Bool)

(declare-fun e!3250897 () Bool)

(assert (=> b!5223084 (= e!3250893 e!3250897)))

(assert (=> b!5223084 (= c!901501 ((_ is Union!14813) (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292))))))

(declare-fun b!5223085 () Bool)

(declare-fun res!2217657 () Bool)

(assert (=> b!5223085 (=> (not res!2217657) (not e!3250895))))

(assert (=> b!5223085 (= res!2217657 call!368784)))

(assert (=> b!5223085 (= e!3250897 e!3250895)))

(declare-fun b!5223086 () Bool)

(assert (=> b!5223086 (= e!3250898 call!368786)))

(declare-fun b!5223087 () Bool)

(declare-fun res!2217655 () Bool)

(assert (=> b!5223087 (=> res!2217655 e!3250899)))

(assert (=> b!5223087 (= res!2217655 (not ((_ is Concat!23658) (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292)))))))

(assert (=> b!5223087 (= e!3250897 e!3250899)))

(declare-fun b!5223088 () Bool)

(assert (=> b!5223088 (= e!3250893 e!3250894)))

(declare-fun res!2217659 () Bool)

(assert (=> b!5223088 (= res!2217659 (not (nullable!4982 (reg!15142 (ite c!901315 (regTwo!30139 r!7292) (regTwo!30138 r!7292))))))))

(assert (=> b!5223088 (=> (not res!2217659) (not e!3250894))))

(assert (= (and d!1683870 (not res!2217656)) b!5223083))

(assert (= (and b!5223083 c!901500) b!5223088))

(assert (= (and b!5223083 (not c!901500)) b!5223084))

(assert (= (and b!5223088 res!2217659) b!5223081))

(assert (= (and b!5223084 c!901501) b!5223085))

(assert (= (and b!5223084 (not c!901501)) b!5223087))

(assert (= (and b!5223085 res!2217657) b!5223082))

(assert (= (and b!5223087 (not res!2217655)) b!5223080))

(assert (= (and b!5223080 res!2217658) b!5223086))

(assert (= (or b!5223082 b!5223086) bm!368780))

(assert (= (or b!5223085 b!5223080) bm!368781))

(assert (= (or b!5223081 bm!368781) bm!368779))

(declare-fun m!6270264 () Bool)

(assert (=> bm!368779 m!6270264))

(declare-fun m!6270266 () Bool)

(assert (=> bm!368780 m!6270266))

(declare-fun m!6270268 () Bool)

(assert (=> b!5223088 m!6270268))

(assert (=> bm!368624 d!1683870))

(declare-fun d!1683872 () Bool)

(assert (=> d!1683872 (= (isEmpty!32534 (tail!10291 (unfocusZipperList!255 zl!343))) ((_ is Nil!60614) (tail!10291 (unfocusZipperList!255 zl!343))))))

(assert (=> b!5222222 d!1683872))

(declare-fun d!1683874 () Bool)

(assert (=> d!1683874 (= (tail!10291 (unfocusZipperList!255 zl!343)) (t!373909 (unfocusZipperList!255 zl!343)))))

(assert (=> b!5222222 d!1683874))

(declare-fun d!1683876 () Bool)

(assert (=> d!1683876 (= (nullable!4982 (regOne!30138 (regOne!30139 (regOne!30138 r!7292)))) (nullableFct!1389 (regOne!30138 (regOne!30139 (regOne!30138 r!7292)))))))

(declare-fun bs!1212770 () Bool)

(assert (= bs!1212770 d!1683876))

(declare-fun m!6270270 () Bool)

(assert (=> bs!1212770 m!6270270))

(assert (=> b!5222045 d!1683876))

(declare-fun d!1683878 () Bool)

(assert (=> d!1683878 (= (Exists!1994 (ite c!901246 lambda!262113 lambda!262114)) (choose!38838 (ite c!901246 lambda!262113 lambda!262114)))))

(declare-fun bs!1212771 () Bool)

(assert (= bs!1212771 d!1683878))

(declare-fun m!6270272 () Bool)

(assert (=> bs!1212771 m!6270272))

(assert (=> bm!368597 d!1683878))

(assert (=> d!1683466 d!1683850))

(declare-fun d!1683880 () Bool)

(assert (=> d!1683880 (= (isEmpty!32534 (t!373909 (unfocusZipperList!255 zl!343))) ((_ is Nil!60614) (t!373909 (unfocusZipperList!255 zl!343))))))

(assert (=> b!5222218 d!1683880))

(declare-fun b!5223089 () Bool)

(declare-fun e!3250906 () Bool)

(declare-fun lt!2143901 () Bool)

(assert (=> b!5223089 (= e!3250906 (not lt!2143901))))

(declare-fun b!5223090 () Bool)

(declare-fun e!3250900 () Bool)

(declare-fun e!3250904 () Bool)

(assert (=> b!5223090 (= e!3250900 e!3250904)))

(declare-fun res!2217661 () Bool)

(assert (=> b!5223090 (=> (not res!2217661) (not e!3250904))))

(assert (=> b!5223090 (= res!2217661 (not lt!2143901))))

(declare-fun bm!368782 () Bool)

(declare-fun call!368787 () Bool)

(assert (=> bm!368782 (= call!368787 (isEmpty!32537 (tail!10290 s!2326)))))

(declare-fun b!5223091 () Bool)

(declare-fun e!3250905 () Bool)

(assert (=> b!5223091 (= e!3250905 (matchR!6998 (derivativeStep!4059 (derivativeStep!4059 r!7292 (head!11193 s!2326)) (head!11193 (tail!10290 s!2326))) (tail!10290 (tail!10290 s!2326))))))

(declare-fun b!5223092 () Bool)

(declare-fun e!3250903 () Bool)

(assert (=> b!5223092 (= e!3250904 e!3250903)))

(declare-fun res!2217666 () Bool)

(assert (=> b!5223092 (=> res!2217666 e!3250903)))

(assert (=> b!5223092 (= res!2217666 call!368787)))

(declare-fun b!5223093 () Bool)

(declare-fun e!3250901 () Bool)

(assert (=> b!5223093 (= e!3250901 (= (head!11193 (tail!10290 s!2326)) (c!901095 (derivativeStep!4059 r!7292 (head!11193 s!2326)))))))

(declare-fun d!1683882 () Bool)

(declare-fun e!3250902 () Bool)

(assert (=> d!1683882 e!3250902))

(declare-fun c!901502 () Bool)

(assert (=> d!1683882 (= c!901502 ((_ is EmptyExpr!14813) (derivativeStep!4059 r!7292 (head!11193 s!2326))))))

(assert (=> d!1683882 (= lt!2143901 e!3250905)))

(declare-fun c!901504 () Bool)

(assert (=> d!1683882 (= c!901504 (isEmpty!32537 (tail!10290 s!2326)))))

(assert (=> d!1683882 (validRegex!6549 (derivativeStep!4059 r!7292 (head!11193 s!2326)))))

(assert (=> d!1683882 (= (matchR!6998 (derivativeStep!4059 r!7292 (head!11193 s!2326)) (tail!10290 s!2326)) lt!2143901)))

(declare-fun b!5223094 () Bool)

(assert (=> b!5223094 (= e!3250902 (= lt!2143901 call!368787))))

(declare-fun b!5223095 () Bool)

(assert (=> b!5223095 (= e!3250905 (nullable!4982 (derivativeStep!4059 r!7292 (head!11193 s!2326))))))

(declare-fun b!5223096 () Bool)

(declare-fun res!2217665 () Bool)

(assert (=> b!5223096 (=> (not res!2217665) (not e!3250901))))

(assert (=> b!5223096 (= res!2217665 (isEmpty!32537 (tail!10290 (tail!10290 s!2326))))))

(declare-fun b!5223097 () Bool)

(declare-fun res!2217660 () Bool)

(assert (=> b!5223097 (=> (not res!2217660) (not e!3250901))))

(assert (=> b!5223097 (= res!2217660 (not call!368787))))

(declare-fun b!5223098 () Bool)

(declare-fun res!2217667 () Bool)

(assert (=> b!5223098 (=> res!2217667 e!3250903)))

(assert (=> b!5223098 (= res!2217667 (not (isEmpty!32537 (tail!10290 (tail!10290 s!2326)))))))

(declare-fun b!5223099 () Bool)

(assert (=> b!5223099 (= e!3250903 (not (= (head!11193 (tail!10290 s!2326)) (c!901095 (derivativeStep!4059 r!7292 (head!11193 s!2326))))))))

(declare-fun b!5223100 () Bool)

(declare-fun res!2217663 () Bool)

(assert (=> b!5223100 (=> res!2217663 e!3250900)))

(assert (=> b!5223100 (= res!2217663 (not ((_ is ElementMatch!14813) (derivativeStep!4059 r!7292 (head!11193 s!2326)))))))

(assert (=> b!5223100 (= e!3250906 e!3250900)))

(declare-fun b!5223101 () Bool)

(declare-fun res!2217664 () Bool)

(assert (=> b!5223101 (=> res!2217664 e!3250900)))

(assert (=> b!5223101 (= res!2217664 e!3250901)))

(declare-fun res!2217662 () Bool)

(assert (=> b!5223101 (=> (not res!2217662) (not e!3250901))))

(assert (=> b!5223101 (= res!2217662 lt!2143901)))

(declare-fun b!5223102 () Bool)

(assert (=> b!5223102 (= e!3250902 e!3250906)))

(declare-fun c!901503 () Bool)

(assert (=> b!5223102 (= c!901503 ((_ is EmptyLang!14813) (derivativeStep!4059 r!7292 (head!11193 s!2326))))))

(assert (= (and d!1683882 c!901504) b!5223095))

(assert (= (and d!1683882 (not c!901504)) b!5223091))

(assert (= (and d!1683882 c!901502) b!5223094))

(assert (= (and d!1683882 (not c!901502)) b!5223102))

(assert (= (and b!5223102 c!901503) b!5223089))

(assert (= (and b!5223102 (not c!901503)) b!5223100))

(assert (= (and b!5223100 (not res!2217663)) b!5223101))

(assert (= (and b!5223101 res!2217662) b!5223097))

(assert (= (and b!5223097 res!2217660) b!5223096))

(assert (= (and b!5223096 res!2217665) b!5223093))

(assert (= (and b!5223101 (not res!2217664)) b!5223090))

(assert (= (and b!5223090 res!2217661) b!5223092))

(assert (= (and b!5223092 (not res!2217666)) b!5223098))

(assert (= (and b!5223098 (not res!2217667)) b!5223099))

(assert (= (or b!5223094 b!5223092 b!5223097) bm!368782))

(assert (=> b!5223093 m!6269424))

(declare-fun m!6270274 () Bool)

(assert (=> b!5223093 m!6270274))

(assert (=> b!5223096 m!6269424))

(declare-fun m!6270276 () Bool)

(assert (=> b!5223096 m!6270276))

(assert (=> b!5223096 m!6270276))

(declare-fun m!6270278 () Bool)

(assert (=> b!5223096 m!6270278))

(assert (=> b!5223099 m!6269424))

(assert (=> b!5223099 m!6270274))

(assert (=> b!5223098 m!6269424))

(assert (=> b!5223098 m!6270276))

(assert (=> b!5223098 m!6270276))

(assert (=> b!5223098 m!6270278))

(assert (=> bm!368782 m!6269424))

(assert (=> bm!368782 m!6269426))

(assert (=> b!5223091 m!6269424))

(assert (=> b!5223091 m!6270274))

(assert (=> b!5223091 m!6269428))

(assert (=> b!5223091 m!6270274))

(declare-fun m!6270280 () Bool)

(assert (=> b!5223091 m!6270280))

(assert (=> b!5223091 m!6269424))

(assert (=> b!5223091 m!6270276))

(assert (=> b!5223091 m!6270280))

(assert (=> b!5223091 m!6270276))

(declare-fun m!6270282 () Bool)

(assert (=> b!5223091 m!6270282))

(assert (=> b!5223095 m!6269428))

(declare-fun m!6270284 () Bool)

(assert (=> b!5223095 m!6270284))

(assert (=> d!1683882 m!6269424))

(assert (=> d!1683882 m!6269426))

(assert (=> d!1683882 m!6269428))

(declare-fun m!6270286 () Bool)

(assert (=> d!1683882 m!6270286))

(assert (=> b!5222122 d!1683882))

(declare-fun b!5223123 () Bool)

(declare-fun c!901517 () Bool)

(assert (=> b!5223123 (= c!901517 (nullable!4982 (regOne!30138 r!7292)))))

(declare-fun e!3250920 () Regex!14813)

(declare-fun e!3250919 () Regex!14813)

(assert (=> b!5223123 (= e!3250920 e!3250919)))

(declare-fun b!5223124 () Bool)

(declare-fun c!901519 () Bool)

(assert (=> b!5223124 (= c!901519 ((_ is Union!14813) r!7292))))

(declare-fun e!3250917 () Regex!14813)

(declare-fun e!3250918 () Regex!14813)

(assert (=> b!5223124 (= e!3250917 e!3250918)))

(declare-fun call!368798 () Regex!14813)

(declare-fun b!5223125 () Bool)

(declare-fun call!368797 () Regex!14813)

(assert (=> b!5223125 (= e!3250919 (Union!14813 (Concat!23658 call!368797 (regTwo!30138 r!7292)) call!368798))))

(declare-fun bm!368791 () Bool)

(assert (=> bm!368791 (= call!368797 (derivativeStep!4059 (ite c!901519 (regTwo!30139 r!7292) (regOne!30138 r!7292)) (head!11193 s!2326)))))

(declare-fun b!5223126 () Bool)

(declare-fun call!368796 () Regex!14813)

(assert (=> b!5223126 (= e!3250920 (Concat!23658 call!368796 r!7292))))

(declare-fun d!1683884 () Bool)

(declare-fun lt!2143904 () Regex!14813)

(assert (=> d!1683884 (validRegex!6549 lt!2143904)))

(declare-fun e!3250921 () Regex!14813)

(assert (=> d!1683884 (= lt!2143904 e!3250921)))

(declare-fun c!901516 () Bool)

(assert (=> d!1683884 (= c!901516 (or ((_ is EmptyExpr!14813) r!7292) ((_ is EmptyLang!14813) r!7292)))))

(assert (=> d!1683884 (validRegex!6549 r!7292)))

(assert (=> d!1683884 (= (derivativeStep!4059 r!7292 (head!11193 s!2326)) lt!2143904)))

(declare-fun call!368799 () Regex!14813)

(declare-fun c!901515 () Bool)

(declare-fun bm!368792 () Bool)

(assert (=> bm!368792 (= call!368799 (derivativeStep!4059 (ite c!901519 (regOne!30139 r!7292) (ite c!901515 (reg!15142 r!7292) (ite c!901517 (regTwo!30138 r!7292) (regOne!30138 r!7292)))) (head!11193 s!2326)))))

(declare-fun b!5223127 () Bool)

(assert (=> b!5223127 (= e!3250919 (Union!14813 (Concat!23658 call!368798 (regTwo!30138 r!7292)) EmptyLang!14813))))

(declare-fun b!5223128 () Bool)

(assert (=> b!5223128 (= e!3250918 e!3250920)))

(assert (=> b!5223128 (= c!901515 ((_ is Star!14813) r!7292))))

(declare-fun b!5223129 () Bool)

(assert (=> b!5223129 (= e!3250921 e!3250917)))

(declare-fun c!901518 () Bool)

(assert (=> b!5223129 (= c!901518 ((_ is ElementMatch!14813) r!7292))))

(declare-fun bm!368793 () Bool)

(assert (=> bm!368793 (= call!368798 call!368796)))

(declare-fun b!5223130 () Bool)

(assert (=> b!5223130 (= e!3250918 (Union!14813 call!368799 call!368797))))

(declare-fun b!5223131 () Bool)

(assert (=> b!5223131 (= e!3250917 (ite (= (head!11193 s!2326) (c!901095 r!7292)) EmptyExpr!14813 EmptyLang!14813))))

(declare-fun bm!368794 () Bool)

(assert (=> bm!368794 (= call!368796 call!368799)))

(declare-fun b!5223132 () Bool)

(assert (=> b!5223132 (= e!3250921 EmptyLang!14813)))

(assert (= (and d!1683884 c!901516) b!5223132))

(assert (= (and d!1683884 (not c!901516)) b!5223129))

(assert (= (and b!5223129 c!901518) b!5223131))

(assert (= (and b!5223129 (not c!901518)) b!5223124))

(assert (= (and b!5223124 c!901519) b!5223130))

(assert (= (and b!5223124 (not c!901519)) b!5223128))

(assert (= (and b!5223128 c!901515) b!5223126))

(assert (= (and b!5223128 (not c!901515)) b!5223123))

(assert (= (and b!5223123 c!901517) b!5223125))

(assert (= (and b!5223123 (not c!901517)) b!5223127))

(assert (= (or b!5223125 b!5223127) bm!368793))

(assert (= (or b!5223126 bm!368793) bm!368794))

(assert (= (or b!5223130 b!5223125) bm!368791))

(assert (= (or b!5223130 bm!368794) bm!368792))

(assert (=> b!5223123 m!6270180))

(assert (=> bm!368791 m!6269422))

(declare-fun m!6270288 () Bool)

(assert (=> bm!368791 m!6270288))

(declare-fun m!6270290 () Bool)

(assert (=> d!1683884 m!6270290))

(assert (=> d!1683884 m!6268966))

(assert (=> bm!368792 m!6269422))

(declare-fun m!6270292 () Bool)

(assert (=> bm!368792 m!6270292))

(assert (=> b!5222122 d!1683884))

(declare-fun d!1683886 () Bool)

(assert (=> d!1683886 (= (head!11193 s!2326) (h!67064 s!2326))))

(assert (=> b!5222122 d!1683886))

(assert (=> b!5222122 d!1683836))

(declare-fun d!1683888 () Bool)

(assert (=> d!1683888 (= (nullable!4982 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (nullableFct!1389 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))))))

(declare-fun bs!1212772 () Bool)

(assert (= bs!1212772 d!1683888))

(declare-fun m!6270294 () Bool)

(assert (=> bs!1212772 m!6270294))

(assert (=> b!5222246 d!1683888))

(assert (=> b!5222251 d!1683512))

(declare-fun d!1683890 () Bool)

(assert (=> d!1683890 (= (isEmpty!32537 s!2326) ((_ is Nil!60616) s!2326))))

(assert (=> bm!368596 d!1683890))

(declare-fun d!1683892 () Bool)

(assert (=> d!1683892 (= (isConcat!296 lt!2143856) ((_ is Concat!23658) lt!2143856))))

(assert (=> b!5222159 d!1683892))

(assert (=> d!1683488 d!1683850))

(declare-fun bm!368795 () Bool)

(declare-fun call!368800 () List!60738)

(declare-fun call!368801 () List!60738)

(assert (=> bm!368795 (= call!368800 call!368801)))

(declare-fun b!5223134 () Bool)

(declare-fun e!3250924 () (InoxSet Context!8394))

(declare-fun call!368805 () (InoxSet Context!8394))

(assert (=> b!5223134 (= e!3250924 call!368805)))

(declare-fun b!5223135 () Bool)

(declare-fun e!3250926 () (InoxSet Context!8394))

(declare-fun call!368802 () (InoxSet Context!8394))

(declare-fun call!368803 () (InoxSet Context!8394))

(assert (=> b!5223135 (= e!3250926 ((_ map or) call!368802 call!368803))))

(declare-fun b!5223136 () Bool)

(declare-fun e!3250923 () (InoxSet Context!8394))

(assert (=> b!5223136 (= e!3250923 call!368805)))

(declare-fun b!5223137 () Bool)

(declare-fun e!3250922 () (InoxSet Context!8394))

(declare-fun e!3250927 () (InoxSet Context!8394))

(assert (=> b!5223137 (= e!3250922 e!3250927)))

(declare-fun c!901522 () Bool)

(assert (=> b!5223137 (= c!901522 ((_ is Union!14813) (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))))))

(declare-fun bm!368796 () Bool)

(assert (=> bm!368796 (= call!368805 call!368803)))

(declare-fun bm!368797 () Bool)

(assert (=> bm!368797 (= call!368802 (derivationStepZipperDown!261 (ite c!901522 (regOne!30139 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))) (regOne!30138 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292)))))))) (ite c!901522 (ite (or c!901233 c!901234) lt!2143761 (Context!8395 call!368591)) (Context!8395 call!368801)) (h!67064 s!2326)))))

(declare-fun c!901520 () Bool)

(declare-fun c!901523 () Bool)

(declare-fun bm!368798 () Bool)

(assert (=> bm!368798 (= call!368801 ($colon$colon!1287 (exprs!4697 (ite (or c!901233 c!901234) lt!2143761 (Context!8395 call!368591))) (ite (or c!901523 c!901520) (regTwo!30138 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))) (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292)))))))))))

(declare-fun b!5223138 () Bool)

(assert (=> b!5223138 (= e!3250924 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223139 () Bool)

(assert (=> b!5223139 (= e!3250922 (store ((as const (Array Context!8394 Bool)) false) (ite (or c!901233 c!901234) lt!2143761 (Context!8395 call!368591)) true))))

(declare-fun b!5223140 () Bool)

(declare-fun call!368804 () (InoxSet Context!8394))

(assert (=> b!5223140 (= e!3250927 ((_ map or) call!368802 call!368804))))

(declare-fun b!5223141 () Bool)

(declare-fun c!901521 () Bool)

(assert (=> b!5223141 (= c!901521 ((_ is Star!14813) (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))))))

(assert (=> b!5223141 (= e!3250923 e!3250924)))

(declare-fun c!901524 () Bool)

(declare-fun d!1683894 () Bool)

(assert (=> d!1683894 (= c!901524 (and ((_ is ElementMatch!14813) (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))) (= (c!901095 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))) (h!67064 s!2326))))))

(assert (=> d!1683894 (= (derivationStepZipperDown!261 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292)))))) (ite (or c!901233 c!901234) lt!2143761 (Context!8395 call!368591)) (h!67064 s!2326)) e!3250922)))

(declare-fun b!5223133 () Bool)

(declare-fun e!3250925 () Bool)

(assert (=> b!5223133 (= c!901523 e!3250925)))

(declare-fun res!2217668 () Bool)

(assert (=> b!5223133 (=> (not res!2217668) (not e!3250925))))

(assert (=> b!5223133 (= res!2217668 ((_ is Concat!23658) (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))))))

(assert (=> b!5223133 (= e!3250927 e!3250926)))

(declare-fun bm!368799 () Bool)

(assert (=> bm!368799 (= call!368804 (derivationStepZipperDown!261 (ite c!901522 (regTwo!30139 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))) (ite c!901523 (regTwo!30138 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))) (ite c!901520 (regOne!30138 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))) (reg!15142 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292)))))))))) (ite (or c!901522 c!901523) (ite (or c!901233 c!901234) lt!2143761 (Context!8395 call!368591)) (Context!8395 call!368800)) (h!67064 s!2326)))))

(declare-fun bm!368800 () Bool)

(assert (=> bm!368800 (= call!368803 call!368804)))

(declare-fun b!5223142 () Bool)

(assert (=> b!5223142 (= e!3250925 (nullable!4982 (regOne!30138 (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292)))))))))))

(declare-fun b!5223143 () Bool)

(assert (=> b!5223143 (= e!3250926 e!3250923)))

(assert (=> b!5223143 (= c!901520 ((_ is Concat!23658) (ite c!901233 (regTwo!30139 (regOne!30139 (regOne!30138 r!7292))) (ite c!901234 (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (ite c!901231 (regOne!30138 (regOne!30139 (regOne!30138 r!7292))) (reg!15142 (regOne!30139 (regOne!30138 r!7292))))))))))

(assert (= (and d!1683894 c!901524) b!5223139))

(assert (= (and d!1683894 (not c!901524)) b!5223137))

(assert (= (and b!5223137 c!901522) b!5223140))

(assert (= (and b!5223137 (not c!901522)) b!5223133))

(assert (= (and b!5223133 res!2217668) b!5223142))

(assert (= (and b!5223133 c!901523) b!5223135))

(assert (= (and b!5223133 (not c!901523)) b!5223143))

(assert (= (and b!5223143 c!901520) b!5223136))

(assert (= (and b!5223143 (not c!901520)) b!5223141))

(assert (= (and b!5223141 c!901521) b!5223134))

(assert (= (and b!5223141 (not c!901521)) b!5223138))

(assert (= (or b!5223136 b!5223134) bm!368795))

(assert (= (or b!5223136 b!5223134) bm!368796))

(assert (= (or b!5223135 bm!368795) bm!368798))

(assert (= (or b!5223135 bm!368796) bm!368800))

(assert (= (or b!5223140 bm!368800) bm!368799))

(assert (= (or b!5223140 b!5223135) bm!368797))

(declare-fun m!6270296 () Bool)

(assert (=> bm!368799 m!6270296))

(declare-fun m!6270298 () Bool)

(assert (=> b!5223142 m!6270298))

(declare-fun m!6270300 () Bool)

(assert (=> bm!368798 m!6270300))

(declare-fun m!6270302 () Bool)

(assert (=> bm!368797 m!6270302))

(declare-fun m!6270304 () Bool)

(assert (=> b!5223139 m!6270304))

(assert (=> bm!368590 d!1683894))

(declare-fun d!1683896 () Bool)

(declare-fun c!901525 () Bool)

(assert (=> d!1683896 (= c!901525 (isEmpty!32537 (tail!10290 (t!373911 s!2326))))))

(declare-fun e!3250928 () Bool)

(assert (=> d!1683896 (= (matchZipper!1057 (derivationStepZipper!1081 lt!2143769 (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))) e!3250928)))

(declare-fun b!5223144 () Bool)

(assert (=> b!5223144 (= e!3250928 (nullableZipper!1237 (derivationStepZipper!1081 lt!2143769 (head!11193 (t!373911 s!2326)))))))

(declare-fun b!5223145 () Bool)

(assert (=> b!5223145 (= e!3250928 (matchZipper!1057 (derivationStepZipper!1081 (derivationStepZipper!1081 lt!2143769 (head!11193 (t!373911 s!2326))) (head!11193 (tail!10290 (t!373911 s!2326)))) (tail!10290 (tail!10290 (t!373911 s!2326)))))))

(assert (= (and d!1683896 c!901525) b!5223144))

(assert (= (and d!1683896 (not c!901525)) b!5223145))

(assert (=> d!1683896 m!6269340))

(assert (=> d!1683896 m!6270220))

(assert (=> b!5223144 m!6269574))

(declare-fun m!6270306 () Bool)

(assert (=> b!5223144 m!6270306))

(assert (=> b!5223145 m!6269340))

(assert (=> b!5223145 m!6270224))

(assert (=> b!5223145 m!6269574))

(assert (=> b!5223145 m!6270224))

(declare-fun m!6270308 () Bool)

(assert (=> b!5223145 m!6270308))

(assert (=> b!5223145 m!6269340))

(assert (=> b!5223145 m!6270228))

(assert (=> b!5223145 m!6270308))

(assert (=> b!5223145 m!6270228))

(declare-fun m!6270310 () Bool)

(assert (=> b!5223145 m!6270310))

(assert (=> b!5222282 d!1683896))

(declare-fun bs!1212773 () Bool)

(declare-fun d!1683898 () Bool)

(assert (= bs!1212773 (and d!1683898 b!5221522)))

(declare-fun lambda!262168 () Int)

(assert (=> bs!1212773 (= (= (head!11193 (t!373911 s!2326)) (h!67064 s!2326)) (= lambda!262168 lambda!262071))))

(declare-fun bs!1212774 () Bool)

(assert (= bs!1212774 (and d!1683898 d!1683856)))

(assert (=> bs!1212774 (= lambda!262168 lambda!262167)))

(assert (=> d!1683898 true))

(assert (=> d!1683898 (= (derivationStepZipper!1081 lt!2143769 (head!11193 (t!373911 s!2326))) (flatMap!540 lt!2143769 lambda!262168))))

(declare-fun bs!1212775 () Bool)

(assert (= bs!1212775 d!1683898))

(declare-fun m!6270312 () Bool)

(assert (=> bs!1212775 m!6270312))

(assert (=> b!5222282 d!1683898))

(assert (=> b!5222282 d!1683858))

(assert (=> b!5222282 d!1683860))

(declare-fun bm!368801 () Bool)

(declare-fun call!368806 () List!60738)

(declare-fun call!368807 () List!60738)

(assert (=> bm!368801 (= call!368806 call!368807)))

(declare-fun b!5223147 () Bool)

(declare-fun e!3250931 () (InoxSet Context!8394))

(declare-fun call!368811 () (InoxSet Context!8394))

(assert (=> b!5223147 (= e!3250931 call!368811)))

(declare-fun b!5223148 () Bool)

(declare-fun e!3250933 () (InoxSet Context!8394))

(declare-fun call!368808 () (InoxSet Context!8394))

(declare-fun call!368809 () (InoxSet Context!8394))

(assert (=> b!5223148 (= e!3250933 ((_ map or) call!368808 call!368809))))

(declare-fun b!5223149 () Bool)

(declare-fun e!3250930 () (InoxSet Context!8394))

(assert (=> b!5223149 (= e!3250930 call!368811)))

(declare-fun b!5223150 () Bool)

(declare-fun e!3250929 () (InoxSet Context!8394))

(declare-fun e!3250934 () (InoxSet Context!8394))

(assert (=> b!5223150 (= e!3250929 e!3250934)))

(declare-fun c!901528 () Bool)

(assert (=> b!5223150 (= c!901528 ((_ is Union!14813) (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))))))

(declare-fun bm!368802 () Bool)

(assert (=> bm!368802 (= call!368811 call!368809)))

(declare-fun bm!368803 () Bool)

(assert (=> bm!368803 (= call!368808 (derivationStepZipperDown!261 (ite c!901528 (regOne!30139 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (regOne!30138 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))))) (ite c!901528 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (Context!8395 call!368807)) (h!67064 s!2326)))))

(declare-fun c!901526 () Bool)

(declare-fun bm!368804 () Bool)

(declare-fun c!901529 () Bool)

(assert (=> bm!368804 (= call!368807 ($colon$colon!1287 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))))) (ite (or c!901529 c!901526) (regTwo!30138 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))))))))

(declare-fun b!5223151 () Bool)

(assert (=> b!5223151 (= e!3250931 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223152 () Bool)

(assert (=> b!5223152 (= e!3250929 (store ((as const (Array Context!8394 Bool)) false) (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) true))))

(declare-fun b!5223153 () Bool)

(declare-fun call!368810 () (InoxSet Context!8394))

(assert (=> b!5223153 (= e!3250934 ((_ map or) call!368808 call!368810))))

(declare-fun b!5223154 () Bool)

(declare-fun c!901527 () Bool)

(assert (=> b!5223154 (= c!901527 ((_ is Star!14813) (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))))))

(assert (=> b!5223154 (= e!3250930 e!3250931)))

(declare-fun d!1683900 () Bool)

(declare-fun c!901530 () Bool)

(assert (=> d!1683900 (= c!901530 (and ((_ is ElementMatch!14813) (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (= (c!901095 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (h!67064 s!2326))))))

(assert (=> d!1683900 (= (derivationStepZipperDown!261 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))) (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (h!67064 s!2326)) e!3250929)))

(declare-fun b!5223146 () Bool)

(declare-fun e!3250932 () Bool)

(assert (=> b!5223146 (= c!901529 e!3250932)))

(declare-fun res!2217669 () Bool)

(assert (=> b!5223146 (=> (not res!2217669) (not e!3250932))))

(assert (=> b!5223146 (= res!2217669 ((_ is Concat!23658) (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))))))

(assert (=> b!5223146 (= e!3250934 e!3250933)))

(declare-fun bm!368805 () Bool)

(assert (=> bm!368805 (= call!368810 (derivationStepZipperDown!261 (ite c!901528 (regTwo!30139 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (ite c!901529 (regTwo!30138 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (ite c!901526 (regOne!30138 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (reg!15142 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))))))) (ite (or c!901528 c!901529) (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (Context!8395 call!368806)) (h!67064 s!2326)))))

(declare-fun bm!368806 () Bool)

(assert (=> bm!368806 (= call!368809 call!368810)))

(declare-fun b!5223155 () Bool)

(assert (=> b!5223155 (= e!3250932 (nullable!4982 (regOne!30138 (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))))))))

(declare-fun b!5223156 () Bool)

(assert (=> b!5223156 (= e!3250933 e!3250930)))

(assert (=> b!5223156 (= c!901526 ((_ is Concat!23658) (h!67062 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))))))

(assert (= (and d!1683900 c!901530) b!5223152))

(assert (= (and d!1683900 (not c!901530)) b!5223150))

(assert (= (and b!5223150 c!901528) b!5223153))

(assert (= (and b!5223150 (not c!901528)) b!5223146))

(assert (= (and b!5223146 res!2217669) b!5223155))

(assert (= (and b!5223146 c!901529) b!5223148))

(assert (= (and b!5223146 (not c!901529)) b!5223156))

(assert (= (and b!5223156 c!901526) b!5223149))

(assert (= (and b!5223156 (not c!901526)) b!5223154))

(assert (= (and b!5223154 c!901527) b!5223147))

(assert (= (and b!5223154 (not c!901527)) b!5223151))

(assert (= (or b!5223149 b!5223147) bm!368801))

(assert (= (or b!5223149 b!5223147) bm!368802))

(assert (= (or b!5223148 bm!368801) bm!368804))

(assert (= (or b!5223148 bm!368802) bm!368806))

(assert (= (or b!5223153 bm!368806) bm!368805))

(assert (= (or b!5223153 b!5223148) bm!368803))

(declare-fun m!6270314 () Bool)

(assert (=> bm!368805 m!6270314))

(declare-fun m!6270316 () Bool)

(assert (=> b!5223155 m!6270316))

(declare-fun m!6270318 () Bool)

(assert (=> bm!368804 m!6270318))

(declare-fun m!6270320 () Bool)

(assert (=> bm!368803 m!6270320))

(declare-fun m!6270322 () Bool)

(assert (=> b!5223152 m!6270322))

(assert (=> bm!368612 d!1683900))

(declare-fun bm!368807 () Bool)

(declare-fun call!368812 () List!60738)

(declare-fun call!368813 () List!60738)

(assert (=> bm!368807 (= call!368812 call!368813)))

(declare-fun b!5223158 () Bool)

(declare-fun e!3250937 () (InoxSet Context!8394))

(declare-fun call!368817 () (InoxSet Context!8394))

(assert (=> b!5223158 (= e!3250937 call!368817)))

(declare-fun b!5223159 () Bool)

(declare-fun e!3250939 () (InoxSet Context!8394))

(declare-fun call!368814 () (InoxSet Context!8394))

(declare-fun call!368815 () (InoxSet Context!8394))

(assert (=> b!5223159 (= e!3250939 ((_ map or) call!368814 call!368815))))

(declare-fun b!5223160 () Bool)

(declare-fun e!3250936 () (InoxSet Context!8394))

(assert (=> b!5223160 (= e!3250936 call!368817)))

(declare-fun b!5223161 () Bool)

(declare-fun e!3250935 () (InoxSet Context!8394))

(declare-fun e!3250940 () (InoxSet Context!8394))

(assert (=> b!5223161 (= e!3250935 e!3250940)))

(declare-fun c!901533 () Bool)

(assert (=> b!5223161 (= c!901533 ((_ is Union!14813) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun bm!368808 () Bool)

(assert (=> bm!368808 (= call!368817 call!368815)))

(declare-fun bm!368809 () Bool)

(assert (=> bm!368809 (= call!368814 (derivationStepZipperDown!261 (ite c!901533 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))) (ite c!901533 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))) (Context!8395 call!368813)) (h!67064 s!2326)))))

(declare-fun bm!368810 () Bool)

(declare-fun c!901534 () Bool)

(declare-fun c!901531 () Bool)

(assert (=> bm!368810 (= call!368813 ($colon$colon!1287 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343))))) (ite (or c!901534 c!901531) (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (h!67062 (exprs!4697 (h!67063 zl!343))))))))

(declare-fun b!5223162 () Bool)

(assert (=> b!5223162 (= e!3250937 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223163 () Bool)

(assert (=> b!5223163 (= e!3250935 (store ((as const (Array Context!8394 Bool)) false) (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))) true))))

(declare-fun b!5223164 () Bool)

(declare-fun call!368816 () (InoxSet Context!8394))

(assert (=> b!5223164 (= e!3250940 ((_ map or) call!368814 call!368816))))

(declare-fun b!5223165 () Bool)

(declare-fun c!901532 () Bool)

(assert (=> b!5223165 (= c!901532 ((_ is Star!14813) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(assert (=> b!5223165 (= e!3250936 e!3250937)))

(declare-fun d!1683902 () Bool)

(declare-fun c!901535 () Bool)

(assert (=> d!1683902 (= c!901535 (and ((_ is ElementMatch!14813) (h!67062 (exprs!4697 (h!67063 zl!343)))) (= (c!901095 (h!67062 (exprs!4697 (h!67063 zl!343)))) (h!67064 s!2326))))))

(assert (=> d!1683902 (= (derivationStepZipperDown!261 (h!67062 (exprs!4697 (h!67063 zl!343))) (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))) (h!67064 s!2326)) e!3250935)))

(declare-fun b!5223157 () Bool)

(declare-fun e!3250938 () Bool)

(assert (=> b!5223157 (= c!901534 e!3250938)))

(declare-fun res!2217670 () Bool)

(assert (=> b!5223157 (=> (not res!2217670) (not e!3250938))))

(assert (=> b!5223157 (= res!2217670 ((_ is Concat!23658) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(assert (=> b!5223157 (= e!3250940 e!3250939)))

(declare-fun bm!368811 () Bool)

(assert (=> bm!368811 (= call!368816 (derivationStepZipperDown!261 (ite c!901533 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901534 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901531 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343))))))) (ite (or c!901533 c!901534) (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))) (Context!8395 call!368812)) (h!67064 s!2326)))))

(declare-fun bm!368812 () Bool)

(assert (=> bm!368812 (= call!368815 call!368816)))

(declare-fun b!5223166 () Bool)

(assert (=> b!5223166 (= e!3250938 (nullable!4982 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))))))

(declare-fun b!5223167 () Bool)

(assert (=> b!5223167 (= e!3250939 e!3250936)))

(assert (=> b!5223167 (= c!901531 ((_ is Concat!23658) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(assert (= (and d!1683902 c!901535) b!5223163))

(assert (= (and d!1683902 (not c!901535)) b!5223161))

(assert (= (and b!5223161 c!901533) b!5223164))

(assert (= (and b!5223161 (not c!901533)) b!5223157))

(assert (= (and b!5223157 res!2217670) b!5223166))

(assert (= (and b!5223157 c!901534) b!5223159))

(assert (= (and b!5223157 (not c!901534)) b!5223167))

(assert (= (and b!5223167 c!901531) b!5223160))

(assert (= (and b!5223167 (not c!901531)) b!5223165))

(assert (= (and b!5223165 c!901532) b!5223158))

(assert (= (and b!5223165 (not c!901532)) b!5223162))

(assert (= (or b!5223160 b!5223158) bm!368807))

(assert (= (or b!5223160 b!5223158) bm!368808))

(assert (= (or b!5223159 bm!368807) bm!368810))

(assert (= (or b!5223159 bm!368808) bm!368812))

(assert (= (or b!5223164 bm!368812) bm!368811))

(assert (= (or b!5223164 b!5223159) bm!368809))

(declare-fun m!6270324 () Bool)

(assert (=> bm!368811 m!6270324))

(assert (=> b!5223166 m!6269524))

(declare-fun m!6270326 () Bool)

(assert (=> bm!368810 m!6270326))

(declare-fun m!6270328 () Bool)

(assert (=> bm!368809 m!6270328))

(declare-fun m!6270330 () Bool)

(assert (=> b!5223163 m!6270330))

(assert (=> bm!368613 d!1683902))

(assert (=> d!1683472 d!1683850))

(assert (=> d!1683536 d!1683850))

(declare-fun d!1683904 () Bool)

(assert (=> d!1683904 (= (nullable!4982 r!7292) (nullableFct!1389 r!7292))))

(declare-fun bs!1212776 () Bool)

(assert (= bs!1212776 d!1683904))

(declare-fun m!6270332 () Bool)

(assert (=> bs!1212776 m!6270332))

(assert (=> b!5222126 d!1683904))

(assert (=> d!1683478 d!1683476))

(assert (=> d!1683478 d!1683474))

(declare-fun d!1683906 () Bool)

(assert (=> d!1683906 (= (matchR!6998 r!7292 s!2326) (matchRSpec!1916 r!7292 s!2326))))

(assert (=> d!1683906 true))

(declare-fun _$88!3492 () Unit!152528)

(assert (=> d!1683906 (= (choose!38841 r!7292 s!2326) _$88!3492)))

(declare-fun bs!1212777 () Bool)

(assert (= bs!1212777 d!1683906))

(assert (=> bs!1212777 m!6269028))

(assert (=> bs!1212777 m!6269026))

(assert (=> d!1683478 d!1683906))

(assert (=> d!1683478 d!1683540))

(declare-fun bs!1212778 () Bool)

(declare-fun d!1683908 () Bool)

(assert (= bs!1212778 (and d!1683908 d!1683500)))

(declare-fun lambda!262169 () Int)

(assert (=> bs!1212778 (= lambda!262169 lambda!262127)))

(declare-fun bs!1212779 () Bool)

(assert (= bs!1212779 (and d!1683908 d!1683498)))

(assert (=> bs!1212779 (= lambda!262169 lambda!262124)))

(declare-fun bs!1212780 () Bool)

(assert (= bs!1212780 (and d!1683908 d!1683848)))

(assert (=> bs!1212780 (= lambda!262169 lambda!262164)))

(declare-fun bs!1212781 () Bool)

(assert (= bs!1212781 (and d!1683908 d!1683482)))

(assert (=> bs!1212781 (= lambda!262169 lambda!262120)))

(declare-fun bs!1212782 () Bool)

(assert (= bs!1212782 (and d!1683908 d!1683484)))

(assert (=> bs!1212782 (= lambda!262169 lambda!262121)))

(declare-fun bs!1212783 () Bool)

(assert (= bs!1212783 (and d!1683908 d!1683480)))

(assert (=> bs!1212783 (= lambda!262169 lambda!262117)))

(assert (=> d!1683908 (= (inv!80279 (h!67063 (t!373910 zl!343))) (forall!14245 (exprs!4697 (h!67063 (t!373910 zl!343))) lambda!262169))))

(declare-fun bs!1212784 () Bool)

(assert (= bs!1212784 d!1683908))

(declare-fun m!6270334 () Bool)

(assert (=> bs!1212784 m!6270334))

(assert (=> b!5222319 d!1683908))

(declare-fun bs!1212785 () Bool)

(declare-fun d!1683910 () Bool)

(assert (= bs!1212785 (and d!1683910 d!1683498)))

(declare-fun lambda!262170 () Int)

(assert (=> bs!1212785 (= lambda!262170 lambda!262124)))

(declare-fun bs!1212786 () Bool)

(assert (= bs!1212786 (and d!1683910 d!1683848)))

(assert (=> bs!1212786 (= lambda!262170 lambda!262164)))

(declare-fun bs!1212787 () Bool)

(assert (= bs!1212787 (and d!1683910 d!1683482)))

(assert (=> bs!1212787 (= lambda!262170 lambda!262120)))

(declare-fun bs!1212788 () Bool)

(assert (= bs!1212788 (and d!1683910 d!1683484)))

(assert (=> bs!1212788 (= lambda!262170 lambda!262121)))

(declare-fun bs!1212789 () Bool)

(assert (= bs!1212789 (and d!1683910 d!1683480)))

(assert (=> bs!1212789 (= lambda!262170 lambda!262117)))

(declare-fun bs!1212790 () Bool)

(assert (= bs!1212790 (and d!1683910 d!1683908)))

(assert (=> bs!1212790 (= lambda!262170 lambda!262169)))

(declare-fun bs!1212791 () Bool)

(assert (= bs!1212791 (and d!1683910 d!1683500)))

(assert (=> bs!1212791 (= lambda!262170 lambda!262127)))

(declare-fun b!5223168 () Bool)

(declare-fun e!3250943 () Bool)

(declare-fun e!3250941 () Bool)

(assert (=> b!5223168 (= e!3250943 e!3250941)))

(declare-fun c!901539 () Bool)

(assert (=> b!5223168 (= c!901539 (isEmpty!32534 (tail!10291 (t!373909 (exprs!4697 (h!67063 zl!343))))))))

(declare-fun b!5223169 () Bool)

(declare-fun e!3250945 () Bool)

(assert (=> b!5223169 (= e!3250945 (isEmpty!32534 (t!373909 (t!373909 (exprs!4697 (h!67063 zl!343))))))))

(declare-fun b!5223170 () Bool)

(declare-fun e!3250942 () Regex!14813)

(assert (=> b!5223170 (= e!3250942 (h!67062 (t!373909 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun b!5223171 () Bool)

(declare-fun e!3250944 () Regex!14813)

(assert (=> b!5223171 (= e!3250942 e!3250944)))

(declare-fun c!901537 () Bool)

(assert (=> b!5223171 (= c!901537 ((_ is Cons!60614) (t!373909 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun b!5223172 () Bool)

(declare-fun lt!2143905 () Regex!14813)

(assert (=> b!5223172 (= e!3250943 (isEmptyExpr!773 lt!2143905))))

(declare-fun b!5223173 () Bool)

(assert (=> b!5223173 (= e!3250941 (isConcat!296 lt!2143905))))

(declare-fun b!5223174 () Bool)

(assert (=> b!5223174 (= e!3250941 (= lt!2143905 (head!11194 (t!373909 (exprs!4697 (h!67063 zl!343))))))))

(declare-fun e!3250946 () Bool)

(assert (=> d!1683910 e!3250946))

(declare-fun res!2217672 () Bool)

(assert (=> d!1683910 (=> (not res!2217672) (not e!3250946))))

(assert (=> d!1683910 (= res!2217672 (validRegex!6549 lt!2143905))))

(assert (=> d!1683910 (= lt!2143905 e!3250942)))

(declare-fun c!901536 () Bool)

(assert (=> d!1683910 (= c!901536 e!3250945)))

(declare-fun res!2217671 () Bool)

(assert (=> d!1683910 (=> (not res!2217671) (not e!3250945))))

(assert (=> d!1683910 (= res!2217671 ((_ is Cons!60614) (t!373909 (exprs!4697 (h!67063 zl!343)))))))

(assert (=> d!1683910 (forall!14245 (t!373909 (exprs!4697 (h!67063 zl!343))) lambda!262170)))

(assert (=> d!1683910 (= (generalisedConcat!482 (t!373909 (exprs!4697 (h!67063 zl!343)))) lt!2143905)))

(declare-fun b!5223175 () Bool)

(assert (=> b!5223175 (= e!3250944 EmptyExpr!14813)))

(declare-fun b!5223176 () Bool)

(assert (=> b!5223176 (= e!3250946 e!3250943)))

(declare-fun c!901538 () Bool)

(assert (=> b!5223176 (= c!901538 (isEmpty!32534 (t!373909 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun b!5223177 () Bool)

(assert (=> b!5223177 (= e!3250944 (Concat!23658 (h!67062 (t!373909 (exprs!4697 (h!67063 zl!343)))) (generalisedConcat!482 (t!373909 (t!373909 (exprs!4697 (h!67063 zl!343)))))))))

(assert (= (and d!1683910 res!2217671) b!5223169))

(assert (= (and d!1683910 c!901536) b!5223170))

(assert (= (and d!1683910 (not c!901536)) b!5223171))

(assert (= (and b!5223171 c!901537) b!5223177))

(assert (= (and b!5223171 (not c!901537)) b!5223175))

(assert (= (and d!1683910 res!2217672) b!5223176))

(assert (= (and b!5223176 c!901538) b!5223172))

(assert (= (and b!5223176 (not c!901538)) b!5223168))

(assert (= (and b!5223168 c!901539) b!5223174))

(assert (= (and b!5223168 (not c!901539)) b!5223173))

(declare-fun m!6270336 () Bool)

(assert (=> b!5223173 m!6270336))

(declare-fun m!6270338 () Bool)

(assert (=> b!5223177 m!6270338))

(declare-fun m!6270340 () Bool)

(assert (=> d!1683910 m!6270340))

(declare-fun m!6270342 () Bool)

(assert (=> d!1683910 m!6270342))

(declare-fun m!6270344 () Bool)

(assert (=> b!5223172 m!6270344))

(declare-fun m!6270346 () Bool)

(assert (=> b!5223168 m!6270346))

(assert (=> b!5223168 m!6270346))

(declare-fun m!6270348 () Bool)

(assert (=> b!5223168 m!6270348))

(declare-fun m!6270350 () Bool)

(assert (=> b!5223169 m!6270350))

(declare-fun m!6270352 () Bool)

(assert (=> b!5223174 m!6270352))

(assert (=> b!5223176 m!6269060))

(assert (=> b!5222163 d!1683910))

(declare-fun d!1683912 () Bool)

(declare-fun c!901540 () Bool)

(assert (=> d!1683912 (= c!901540 (isEmpty!32537 (tail!10290 (t!373911 s!2326))))))

(declare-fun e!3250947 () Bool)

(assert (=> d!1683912 (= (matchZipper!1057 (derivationStepZipper!1081 lt!2143779 (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))) e!3250947)))

(declare-fun b!5223178 () Bool)

(assert (=> b!5223178 (= e!3250947 (nullableZipper!1237 (derivationStepZipper!1081 lt!2143779 (head!11193 (t!373911 s!2326)))))))

(declare-fun b!5223179 () Bool)

(assert (=> b!5223179 (= e!3250947 (matchZipper!1057 (derivationStepZipper!1081 (derivationStepZipper!1081 lt!2143779 (head!11193 (t!373911 s!2326))) (head!11193 (tail!10290 (t!373911 s!2326)))) (tail!10290 (tail!10290 (t!373911 s!2326)))))))

(assert (= (and d!1683912 c!901540) b!5223178))

(assert (= (and d!1683912 (not c!901540)) b!5223179))

(assert (=> d!1683912 m!6269340))

(assert (=> d!1683912 m!6270220))

(assert (=> b!5223178 m!6269462))

(declare-fun m!6270354 () Bool)

(assert (=> b!5223178 m!6270354))

(assert (=> b!5223179 m!6269340))

(assert (=> b!5223179 m!6270224))

(assert (=> b!5223179 m!6269462))

(assert (=> b!5223179 m!6270224))

(declare-fun m!6270356 () Bool)

(assert (=> b!5223179 m!6270356))

(assert (=> b!5223179 m!6269340))

(assert (=> b!5223179 m!6270228))

(assert (=> b!5223179 m!6270356))

(assert (=> b!5223179 m!6270228))

(declare-fun m!6270358 () Bool)

(assert (=> b!5223179 m!6270358))

(assert (=> b!5222166 d!1683912))

(declare-fun bs!1212792 () Bool)

(declare-fun d!1683914 () Bool)

(assert (= bs!1212792 (and d!1683914 b!5221522)))

(declare-fun lambda!262171 () Int)

(assert (=> bs!1212792 (= (= (head!11193 (t!373911 s!2326)) (h!67064 s!2326)) (= lambda!262171 lambda!262071))))

(declare-fun bs!1212793 () Bool)

(assert (= bs!1212793 (and d!1683914 d!1683856)))

(assert (=> bs!1212793 (= lambda!262171 lambda!262167)))

(declare-fun bs!1212794 () Bool)

(assert (= bs!1212794 (and d!1683914 d!1683898)))

(assert (=> bs!1212794 (= lambda!262171 lambda!262168)))

(assert (=> d!1683914 true))

(assert (=> d!1683914 (= (derivationStepZipper!1081 lt!2143779 (head!11193 (t!373911 s!2326))) (flatMap!540 lt!2143779 lambda!262171))))

(declare-fun bs!1212795 () Bool)

(assert (= bs!1212795 d!1683914))

(declare-fun m!6270360 () Bool)

(assert (=> bs!1212795 m!6270360))

(assert (=> b!5222166 d!1683914))

(assert (=> b!5222166 d!1683858))

(assert (=> b!5222166 d!1683860))

(declare-fun d!1683916 () Bool)

(declare-fun c!901541 () Bool)

(assert (=> d!1683916 (= c!901541 (isEmpty!32537 (tail!10290 (t!373911 s!2326))))))

(declare-fun e!3250948 () Bool)

(assert (=> d!1683916 (= (matchZipper!1057 (derivationStepZipper!1081 lt!2143771 (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))) e!3250948)))

(declare-fun b!5223180 () Bool)

(assert (=> b!5223180 (= e!3250948 (nullableZipper!1237 (derivationStepZipper!1081 lt!2143771 (head!11193 (t!373911 s!2326)))))))

(declare-fun b!5223181 () Bool)

(assert (=> b!5223181 (= e!3250948 (matchZipper!1057 (derivationStepZipper!1081 (derivationStepZipper!1081 lt!2143771 (head!11193 (t!373911 s!2326))) (head!11193 (tail!10290 (t!373911 s!2326)))) (tail!10290 (tail!10290 (t!373911 s!2326)))))))

(assert (= (and d!1683916 c!901541) b!5223180))

(assert (= (and d!1683916 (not c!901541)) b!5223181))

(assert (=> d!1683916 m!6269340))

(assert (=> d!1683916 m!6270220))

(assert (=> b!5223180 m!6269410))

(declare-fun m!6270362 () Bool)

(assert (=> b!5223180 m!6270362))

(assert (=> b!5223181 m!6269340))

(assert (=> b!5223181 m!6270224))

(assert (=> b!5223181 m!6269410))

(assert (=> b!5223181 m!6270224))

(declare-fun m!6270364 () Bool)

(assert (=> b!5223181 m!6270364))

(assert (=> b!5223181 m!6269340))

(assert (=> b!5223181 m!6270228))

(assert (=> b!5223181 m!6270364))

(assert (=> b!5223181 m!6270228))

(declare-fun m!6270366 () Bool)

(assert (=> b!5223181 m!6270366))

(assert (=> b!5222048 d!1683916))

(declare-fun bs!1212796 () Bool)

(declare-fun d!1683918 () Bool)

(assert (= bs!1212796 (and d!1683918 b!5221522)))

(declare-fun lambda!262172 () Int)

(assert (=> bs!1212796 (= (= (head!11193 (t!373911 s!2326)) (h!67064 s!2326)) (= lambda!262172 lambda!262071))))

(declare-fun bs!1212797 () Bool)

(assert (= bs!1212797 (and d!1683918 d!1683856)))

(assert (=> bs!1212797 (= lambda!262172 lambda!262167)))

(declare-fun bs!1212798 () Bool)

(assert (= bs!1212798 (and d!1683918 d!1683898)))

(assert (=> bs!1212798 (= lambda!262172 lambda!262168)))

(declare-fun bs!1212799 () Bool)

(assert (= bs!1212799 (and d!1683918 d!1683914)))

(assert (=> bs!1212799 (= lambda!262172 lambda!262171)))

(assert (=> d!1683918 true))

(assert (=> d!1683918 (= (derivationStepZipper!1081 lt!2143771 (head!11193 (t!373911 s!2326))) (flatMap!540 lt!2143771 lambda!262172))))

(declare-fun bs!1212800 () Bool)

(assert (= bs!1212800 d!1683918))

(declare-fun m!6270368 () Bool)

(assert (=> bs!1212800 m!6270368))

(assert (=> b!5222048 d!1683918))

(assert (=> b!5222048 d!1683858))

(assert (=> b!5222048 d!1683860))

(assert (=> d!1683486 d!1683490))

(assert (=> d!1683486 d!1683488))

(declare-fun d!1683920 () Bool)

(declare-fun e!3250949 () Bool)

(assert (=> d!1683920 (= (matchZipper!1057 ((_ map or) lt!2143779 lt!2143771) (t!373911 s!2326)) e!3250949)))

(declare-fun res!2217673 () Bool)

(assert (=> d!1683920 (=> res!2217673 e!3250949)))

(assert (=> d!1683920 (= res!2217673 (matchZipper!1057 lt!2143779 (t!373911 s!2326)))))

(assert (=> d!1683920 true))

(declare-fun _$48!838 () Unit!152528)

(assert (=> d!1683920 (= (choose!38837 lt!2143779 lt!2143771 (t!373911 s!2326)) _$48!838)))

(declare-fun b!5223182 () Bool)

(assert (=> b!5223182 (= e!3250949 (matchZipper!1057 lt!2143771 (t!373911 s!2326)))))

(assert (= (and d!1683920 (not res!2217673)) b!5223182))

(assert (=> d!1683920 m!6268992))

(assert (=> d!1683920 m!6268990))

(assert (=> b!5223182 m!6269032))

(assert (=> d!1683486 d!1683920))

(declare-fun d!1683922 () Bool)

(declare-fun lambda!262175 () Int)

(declare-fun exists!1972 ((InoxSet Context!8394) Int) Bool)

(assert (=> d!1683922 (= (nullableZipper!1237 lt!2143781) (exists!1972 lt!2143781 lambda!262175))))

(declare-fun bs!1212801 () Bool)

(assert (= bs!1212801 d!1683922))

(declare-fun m!6270370 () Bool)

(assert (=> bs!1212801 m!6270370))

(assert (=> b!5222001 d!1683922))

(declare-fun c!901544 () Bool)

(declare-fun c!901545 () Bool)

(declare-fun bm!368813 () Bool)

(declare-fun call!368819 () Bool)

(assert (=> bm!368813 (= call!368819 (validRegex!6549 (ite c!901544 (reg!15142 (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))) (ite c!901545 (regOne!30139 (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))) (regOne!30138 (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292)))))))))))

(declare-fun b!5223183 () Bool)

(declare-fun e!3250956 () Bool)

(declare-fun e!3250955 () Bool)

(assert (=> b!5223183 (= e!3250956 e!3250955)))

(declare-fun res!2217677 () Bool)

(assert (=> b!5223183 (=> (not res!2217677) (not e!3250955))))

(declare-fun call!368818 () Bool)

(assert (=> b!5223183 (= res!2217677 call!368818)))

(declare-fun d!1683924 () Bool)

(declare-fun res!2217675 () Bool)

(declare-fun e!3250953 () Bool)

(assert (=> d!1683924 (=> res!2217675 e!3250953)))

(assert (=> d!1683924 (= res!2217675 ((_ is ElementMatch!14813) (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))))))

(assert (=> d!1683924 (= (validRegex!6549 (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))) e!3250953)))

(declare-fun b!5223184 () Bool)

(declare-fun e!3250951 () Bool)

(assert (=> b!5223184 (= e!3250951 call!368819)))

(declare-fun b!5223185 () Bool)

(declare-fun e!3250952 () Bool)

(declare-fun call!368820 () Bool)

(assert (=> b!5223185 (= e!3250952 call!368820)))

(declare-fun bm!368814 () Bool)

(assert (=> bm!368814 (= call!368820 (validRegex!6549 (ite c!901545 (regTwo!30139 (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))) (regTwo!30138 (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))))))))

(declare-fun bm!368815 () Bool)

(assert (=> bm!368815 (= call!368818 call!368819)))

(declare-fun b!5223186 () Bool)

(declare-fun e!3250950 () Bool)

(assert (=> b!5223186 (= e!3250953 e!3250950)))

(assert (=> b!5223186 (= c!901544 ((_ is Star!14813) (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))))))

(declare-fun b!5223187 () Bool)

(declare-fun e!3250954 () Bool)

(assert (=> b!5223187 (= e!3250950 e!3250954)))

(assert (=> b!5223187 (= c!901545 ((_ is Union!14813) (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))))))

(declare-fun b!5223188 () Bool)

(declare-fun res!2217676 () Bool)

(assert (=> b!5223188 (=> (not res!2217676) (not e!3250952))))

(assert (=> b!5223188 (= res!2217676 call!368818)))

(assert (=> b!5223188 (= e!3250954 e!3250952)))

(declare-fun b!5223189 () Bool)

(assert (=> b!5223189 (= e!3250955 call!368820)))

(declare-fun b!5223190 () Bool)

(declare-fun res!2217674 () Bool)

(assert (=> b!5223190 (=> res!2217674 e!3250956)))

(assert (=> b!5223190 (= res!2217674 (not ((_ is Concat!23658) (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292)))))))))

(assert (=> b!5223190 (= e!3250954 e!3250956)))

(declare-fun b!5223191 () Bool)

(assert (=> b!5223191 (= e!3250950 e!3250951)))

(declare-fun res!2217678 () Bool)

(assert (=> b!5223191 (= res!2217678 (not (nullable!4982 (reg!15142 (ite c!901277 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))))))))

(assert (=> b!5223191 (=> (not res!2217678) (not e!3250951))))

(assert (= (and d!1683924 (not res!2217675)) b!5223186))

(assert (= (and b!5223186 c!901544) b!5223191))

(assert (= (and b!5223186 (not c!901544)) b!5223187))

(assert (= (and b!5223191 res!2217678) b!5223184))

(assert (= (and b!5223187 c!901545) b!5223188))

(assert (= (and b!5223187 (not c!901545)) b!5223190))

(assert (= (and b!5223188 res!2217676) b!5223185))

(assert (= (and b!5223190 (not res!2217674)) b!5223183))

(assert (= (and b!5223183 res!2217677) b!5223189))

(assert (= (or b!5223185 b!5223189) bm!368814))

(assert (= (or b!5223188 b!5223183) bm!368815))

(assert (= (or b!5223184 bm!368815) bm!368813))

(declare-fun m!6270372 () Bool)

(assert (=> bm!368813 m!6270372))

(declare-fun m!6270374 () Bool)

(assert (=> bm!368814 m!6270374))

(declare-fun m!6270376 () Bool)

(assert (=> b!5223191 m!6270376))

(assert (=> bm!368608 d!1683924))

(declare-fun b!5223192 () Bool)

(declare-fun e!3250963 () Bool)

(declare-fun lt!2143906 () Bool)

(assert (=> b!5223192 (= e!3250963 (not lt!2143906))))

(declare-fun b!5223193 () Bool)

(declare-fun e!3250957 () Bool)

(declare-fun e!3250961 () Bool)

(assert (=> b!5223193 (= e!3250957 e!3250961)))

(declare-fun res!2217680 () Bool)

(assert (=> b!5223193 (=> (not res!2217680) (not e!3250961))))

(assert (=> b!5223193 (= res!2217680 (not lt!2143906))))

(declare-fun bm!368816 () Bool)

(declare-fun call!368821 () Bool)

(assert (=> bm!368816 (= call!368821 (isEmpty!32537 (_1!35315 (get!20829 lt!2143840))))))

(declare-fun b!5223194 () Bool)

(declare-fun e!3250962 () Bool)

(assert (=> b!5223194 (= e!3250962 (matchR!6998 (derivativeStep!4059 (regOne!30138 r!7292) (head!11193 (_1!35315 (get!20829 lt!2143840)))) (tail!10290 (_1!35315 (get!20829 lt!2143840)))))))

(declare-fun b!5223195 () Bool)

(declare-fun e!3250960 () Bool)

(assert (=> b!5223195 (= e!3250961 e!3250960)))

(declare-fun res!2217685 () Bool)

(assert (=> b!5223195 (=> res!2217685 e!3250960)))

(assert (=> b!5223195 (= res!2217685 call!368821)))

(declare-fun b!5223196 () Bool)

(declare-fun e!3250958 () Bool)

(assert (=> b!5223196 (= e!3250958 (= (head!11193 (_1!35315 (get!20829 lt!2143840))) (c!901095 (regOne!30138 r!7292))))))

(declare-fun d!1683926 () Bool)

(declare-fun e!3250959 () Bool)

(assert (=> d!1683926 e!3250959))

(declare-fun c!901546 () Bool)

(assert (=> d!1683926 (= c!901546 ((_ is EmptyExpr!14813) (regOne!30138 r!7292)))))

(assert (=> d!1683926 (= lt!2143906 e!3250962)))

(declare-fun c!901548 () Bool)

(assert (=> d!1683926 (= c!901548 (isEmpty!32537 (_1!35315 (get!20829 lt!2143840))))))

(assert (=> d!1683926 (validRegex!6549 (regOne!30138 r!7292))))

(assert (=> d!1683926 (= (matchR!6998 (regOne!30138 r!7292) (_1!35315 (get!20829 lt!2143840))) lt!2143906)))

(declare-fun b!5223197 () Bool)

(assert (=> b!5223197 (= e!3250959 (= lt!2143906 call!368821))))

(declare-fun b!5223198 () Bool)

(assert (=> b!5223198 (= e!3250962 (nullable!4982 (regOne!30138 r!7292)))))

(declare-fun b!5223199 () Bool)

(declare-fun res!2217684 () Bool)

(assert (=> b!5223199 (=> (not res!2217684) (not e!3250958))))

(assert (=> b!5223199 (= res!2217684 (isEmpty!32537 (tail!10290 (_1!35315 (get!20829 lt!2143840)))))))

(declare-fun b!5223200 () Bool)

(declare-fun res!2217679 () Bool)

(assert (=> b!5223200 (=> (not res!2217679) (not e!3250958))))

(assert (=> b!5223200 (= res!2217679 (not call!368821))))

(declare-fun b!5223201 () Bool)

(declare-fun res!2217686 () Bool)

(assert (=> b!5223201 (=> res!2217686 e!3250960)))

(assert (=> b!5223201 (= res!2217686 (not (isEmpty!32537 (tail!10290 (_1!35315 (get!20829 lt!2143840))))))))

(declare-fun b!5223202 () Bool)

(assert (=> b!5223202 (= e!3250960 (not (= (head!11193 (_1!35315 (get!20829 lt!2143840))) (c!901095 (regOne!30138 r!7292)))))))

(declare-fun b!5223203 () Bool)

(declare-fun res!2217682 () Bool)

(assert (=> b!5223203 (=> res!2217682 e!3250957)))

(assert (=> b!5223203 (= res!2217682 (not ((_ is ElementMatch!14813) (regOne!30138 r!7292))))))

(assert (=> b!5223203 (= e!3250963 e!3250957)))

(declare-fun b!5223204 () Bool)

(declare-fun res!2217683 () Bool)

(assert (=> b!5223204 (=> res!2217683 e!3250957)))

(assert (=> b!5223204 (= res!2217683 e!3250958)))

(declare-fun res!2217681 () Bool)

(assert (=> b!5223204 (=> (not res!2217681) (not e!3250958))))

(assert (=> b!5223204 (= res!2217681 lt!2143906)))

(declare-fun b!5223205 () Bool)

(assert (=> b!5223205 (= e!3250959 e!3250963)))

(declare-fun c!901547 () Bool)

(assert (=> b!5223205 (= c!901547 ((_ is EmptyLang!14813) (regOne!30138 r!7292)))))

(assert (= (and d!1683926 c!901548) b!5223198))

(assert (= (and d!1683926 (not c!901548)) b!5223194))

(assert (= (and d!1683926 c!901546) b!5223197))

(assert (= (and d!1683926 (not c!901546)) b!5223205))

(assert (= (and b!5223205 c!901547) b!5223192))

(assert (= (and b!5223205 (not c!901547)) b!5223203))

(assert (= (and b!5223203 (not res!2217682)) b!5223204))

(assert (= (and b!5223204 res!2217681) b!5223200))

(assert (= (and b!5223200 res!2217679) b!5223199))

(assert (= (and b!5223199 res!2217684) b!5223196))

(assert (= (and b!5223204 (not res!2217683)) b!5223193))

(assert (= (and b!5223193 res!2217680) b!5223195))

(assert (= (and b!5223195 (not res!2217685)) b!5223201))

(assert (= (and b!5223201 (not res!2217686)) b!5223202))

(assert (= (or b!5223197 b!5223195 b!5223200) bm!368816))

(declare-fun m!6270378 () Bool)

(assert (=> b!5223196 m!6270378))

(declare-fun m!6270380 () Bool)

(assert (=> b!5223199 m!6270380))

(assert (=> b!5223199 m!6270380))

(declare-fun m!6270382 () Bool)

(assert (=> b!5223199 m!6270382))

(assert (=> b!5223202 m!6270378))

(assert (=> b!5223201 m!6270380))

(assert (=> b!5223201 m!6270380))

(assert (=> b!5223201 m!6270382))

(declare-fun m!6270384 () Bool)

(assert (=> bm!368816 m!6270384))

(assert (=> b!5223194 m!6270378))

(assert (=> b!5223194 m!6270378))

(declare-fun m!6270386 () Bool)

(assert (=> b!5223194 m!6270386))

(assert (=> b!5223194 m!6270380))

(assert (=> b!5223194 m!6270386))

(assert (=> b!5223194 m!6270380))

(declare-fun m!6270388 () Bool)

(assert (=> b!5223194 m!6270388))

(assert (=> b!5223198 m!6270180))

(assert (=> d!1683926 m!6270384))

(assert (=> d!1683926 m!6269354))

(assert (=> b!5221986 d!1683926))

(assert (=> b!5221986 d!1683868))

(declare-fun d!1683928 () Bool)

(declare-fun res!2217688 () Bool)

(declare-fun e!3250964 () Bool)

(assert (=> d!1683928 (=> res!2217688 e!3250964)))

(assert (=> d!1683928 (= res!2217688 ((_ is EmptyExpr!14813) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(assert (=> d!1683928 (= (nullableFct!1389 (h!67062 (exprs!4697 (h!67063 zl!343)))) e!3250964)))

(declare-fun b!5223206 () Bool)

(declare-fun e!3250968 () Bool)

(declare-fun e!3250965 () Bool)

(assert (=> b!5223206 (= e!3250968 e!3250965)))

(declare-fun res!2217689 () Bool)

(declare-fun call!368823 () Bool)

(assert (=> b!5223206 (= res!2217689 call!368823)))

(assert (=> b!5223206 (=> res!2217689 e!3250965)))

(declare-fun b!5223207 () Bool)

(declare-fun e!3250969 () Bool)

(assert (=> b!5223207 (= e!3250964 e!3250969)))

(declare-fun res!2217690 () Bool)

(assert (=> b!5223207 (=> (not res!2217690) (not e!3250969))))

(assert (=> b!5223207 (= res!2217690 (and (not ((_ is EmptyLang!14813) (h!67062 (exprs!4697 (h!67063 zl!343))))) (not ((_ is ElementMatch!14813) (h!67062 (exprs!4697 (h!67063 zl!343)))))))))

(declare-fun bm!368817 () Bool)

(declare-fun call!368822 () Bool)

(declare-fun c!901549 () Bool)

(assert (=> bm!368817 (= call!368822 (nullable!4982 (ite c!901549 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))))))

(declare-fun b!5223208 () Bool)

(declare-fun e!3250967 () Bool)

(assert (=> b!5223208 (= e!3250968 e!3250967)))

(declare-fun res!2217687 () Bool)

(assert (=> b!5223208 (= res!2217687 call!368823)))

(assert (=> b!5223208 (=> (not res!2217687) (not e!3250967))))

(declare-fun b!5223209 () Bool)

(declare-fun e!3250966 () Bool)

(assert (=> b!5223209 (= e!3250969 e!3250966)))

(declare-fun res!2217691 () Bool)

(assert (=> b!5223209 (=> res!2217691 e!3250966)))

(assert (=> b!5223209 (= res!2217691 ((_ is Star!14813) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun b!5223210 () Bool)

(assert (=> b!5223210 (= e!3250965 call!368822)))

(declare-fun b!5223211 () Bool)

(assert (=> b!5223211 (= e!3250966 e!3250968)))

(assert (=> b!5223211 (= c!901549 ((_ is Union!14813) (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun bm!368818 () Bool)

(assert (=> bm!368818 (= call!368823 (nullable!4982 (ite c!901549 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))))))

(declare-fun b!5223212 () Bool)

(assert (=> b!5223212 (= e!3250967 call!368822)))

(assert (= (and d!1683928 (not res!2217688)) b!5223207))

(assert (= (and b!5223207 res!2217690) b!5223209))

(assert (= (and b!5223209 (not res!2217691)) b!5223211))

(assert (= (and b!5223211 c!901549) b!5223206))

(assert (= (and b!5223211 (not c!901549)) b!5223208))

(assert (= (and b!5223206 (not res!2217689)) b!5223210))

(assert (= (and b!5223208 res!2217687) b!5223212))

(assert (= (or b!5223210 b!5223212) bm!368817))

(assert (= (or b!5223206 b!5223208) bm!368818))

(declare-fun m!6270390 () Bool)

(assert (=> bm!368817 m!6270390))

(declare-fun m!6270392 () Bool)

(assert (=> bm!368818 m!6270392))

(assert (=> d!1683512 d!1683928))

(declare-fun d!1683930 () Bool)

(assert (=> d!1683930 (= (nullable!4982 (h!67062 (exprs!4697 lt!2143761))) (nullableFct!1389 (h!67062 (exprs!4697 lt!2143761))))))

(declare-fun bs!1212802 () Bool)

(assert (= bs!1212802 d!1683930))

(declare-fun m!6270394 () Bool)

(assert (=> bs!1212802 m!6270394))

(assert (=> b!5222267 d!1683930))

(declare-fun d!1683932 () Bool)

(declare-fun c!901552 () Bool)

(assert (=> d!1683932 (= c!901552 ((_ is Nil!60615) lt!2143874))))

(declare-fun e!3250972 () (InoxSet Context!8394))

(assert (=> d!1683932 (= (content!10749 lt!2143874) e!3250972)))

(declare-fun b!5223217 () Bool)

(assert (=> b!5223217 (= e!3250972 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223218 () Bool)

(assert (=> b!5223218 (= e!3250972 ((_ map or) (store ((as const (Array Context!8394 Bool)) false) (h!67063 lt!2143874) true) (content!10749 (t!373910 lt!2143874))))))

(assert (= (and d!1683932 c!901552) b!5223217))

(assert (= (and d!1683932 (not c!901552)) b!5223218))

(declare-fun m!6270396 () Bool)

(assert (=> b!5223218 m!6270396))

(declare-fun m!6270398 () Bool)

(assert (=> b!5223218 m!6270398))

(assert (=> b!5222280 d!1683932))

(declare-fun bm!368819 () Bool)

(declare-fun call!368824 () List!60738)

(declare-fun call!368825 () List!60738)

(assert (=> bm!368819 (= call!368824 call!368825)))

(declare-fun b!5223220 () Bool)

(declare-fun e!3250975 () (InoxSet Context!8394))

(declare-fun call!368829 () (InoxSet Context!8394))

(assert (=> b!5223220 (= e!3250975 call!368829)))

(declare-fun b!5223221 () Bool)

(declare-fun e!3250977 () (InoxSet Context!8394))

(declare-fun call!368826 () (InoxSet Context!8394))

(declare-fun call!368827 () (InoxSet Context!8394))

(assert (=> b!5223221 (= e!3250977 ((_ map or) call!368826 call!368827))))

(declare-fun b!5223222 () Bool)

(declare-fun e!3250974 () (InoxSet Context!8394))

(assert (=> b!5223222 (= e!3250974 call!368829)))

(declare-fun b!5223223 () Bool)

(declare-fun e!3250973 () (InoxSet Context!8394))

(declare-fun e!3250978 () (InoxSet Context!8394))

(assert (=> b!5223223 (= e!3250973 e!3250978)))

(declare-fun c!901555 () Bool)

(assert (=> b!5223223 (= c!901555 ((_ is Union!14813) (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))))))

(declare-fun bm!368820 () Bool)

(assert (=> bm!368820 (= call!368829 call!368827)))

(declare-fun bm!368821 () Bool)

(assert (=> bm!368821 (= call!368826 (derivationStepZipperDown!261 (ite c!901555 (regOne!30139 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))) (regOne!30138 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343))))))))) (ite c!901555 (ite (or c!901303 c!901304) lt!2143761 (Context!8395 call!368619)) (Context!8395 call!368825)) (h!67064 s!2326)))))

(declare-fun bm!368822 () Bool)

(declare-fun c!901556 () Bool)

(declare-fun c!901553 () Bool)

(assert (=> bm!368822 (= call!368825 ($colon$colon!1287 (exprs!4697 (ite (or c!901303 c!901304) lt!2143761 (Context!8395 call!368619))) (ite (or c!901556 c!901553) (regTwo!30138 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))) (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343))))))))))))

(declare-fun b!5223224 () Bool)

(assert (=> b!5223224 (= e!3250975 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223225 () Bool)

(assert (=> b!5223225 (= e!3250973 (store ((as const (Array Context!8394 Bool)) false) (ite (or c!901303 c!901304) lt!2143761 (Context!8395 call!368619)) true))))

(declare-fun b!5223226 () Bool)

(declare-fun call!368828 () (InoxSet Context!8394))

(assert (=> b!5223226 (= e!3250978 ((_ map or) call!368826 call!368828))))

(declare-fun c!901554 () Bool)

(declare-fun b!5223227 () Bool)

(assert (=> b!5223227 (= c!901554 ((_ is Star!14813) (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))))))

(assert (=> b!5223227 (= e!3250974 e!3250975)))

(declare-fun d!1683934 () Bool)

(declare-fun c!901557 () Bool)

(assert (=> d!1683934 (= c!901557 (and ((_ is ElementMatch!14813) (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))) (= (c!901095 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))) (h!67064 s!2326))))))

(assert (=> d!1683934 (= (derivationStepZipperDown!261 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343))))))) (ite (or c!901303 c!901304) lt!2143761 (Context!8395 call!368619)) (h!67064 s!2326)) e!3250973)))

(declare-fun b!5223219 () Bool)

(declare-fun e!3250976 () Bool)

(assert (=> b!5223219 (= c!901556 e!3250976)))

(declare-fun res!2217692 () Bool)

(assert (=> b!5223219 (=> (not res!2217692) (not e!3250976))))

(assert (=> b!5223219 (= res!2217692 ((_ is Concat!23658) (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))))))

(assert (=> b!5223219 (= e!3250978 e!3250977)))

(declare-fun bm!368823 () Bool)

(assert (=> bm!368823 (= call!368828 (derivationStepZipperDown!261 (ite c!901555 (regTwo!30139 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))) (ite c!901556 (regTwo!30138 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))) (ite c!901553 (regOne!30138 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))) (reg!15142 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343))))))))))) (ite (or c!901555 c!901556) (ite (or c!901303 c!901304) lt!2143761 (Context!8395 call!368619)) (Context!8395 call!368824)) (h!67064 s!2326)))))

(declare-fun bm!368824 () Bool)

(assert (=> bm!368824 (= call!368827 call!368828)))

(declare-fun b!5223228 () Bool)

(assert (=> b!5223228 (= e!3250976 (nullable!4982 (regOne!30138 (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343))))))))))))

(declare-fun b!5223229 () Bool)

(assert (=> b!5223229 (= e!3250977 e!3250974)))

(assert (=> b!5223229 (= c!901553 ((_ is Concat!23658) (ite c!901303 (regTwo!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901304 (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (ite c!901301 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (reg!15142 (h!67062 (exprs!4697 (h!67063 zl!343)))))))))))

(assert (= (and d!1683934 c!901557) b!5223225))

(assert (= (and d!1683934 (not c!901557)) b!5223223))

(assert (= (and b!5223223 c!901555) b!5223226))

(assert (= (and b!5223223 (not c!901555)) b!5223219))

(assert (= (and b!5223219 res!2217692) b!5223228))

(assert (= (and b!5223219 c!901556) b!5223221))

(assert (= (and b!5223219 (not c!901556)) b!5223229))

(assert (= (and b!5223229 c!901553) b!5223222))

(assert (= (and b!5223229 (not c!901553)) b!5223227))

(assert (= (and b!5223227 c!901554) b!5223220))

(assert (= (and b!5223227 (not c!901554)) b!5223224))

(assert (= (or b!5223222 b!5223220) bm!368819))

(assert (= (or b!5223222 b!5223220) bm!368820))

(assert (= (or b!5223221 bm!368819) bm!368822))

(assert (= (or b!5223221 bm!368820) bm!368824))

(assert (= (or b!5223226 bm!368824) bm!368823))

(assert (= (or b!5223226 b!5223221) bm!368821))

(declare-fun m!6270400 () Bool)

(assert (=> bm!368823 m!6270400))

(declare-fun m!6270402 () Bool)

(assert (=> b!5223228 m!6270402))

(declare-fun m!6270404 () Bool)

(assert (=> bm!368822 m!6270404))

(declare-fun m!6270406 () Bool)

(assert (=> bm!368821 m!6270406))

(declare-fun m!6270408 () Bool)

(assert (=> b!5223225 m!6270408))

(assert (=> bm!368618 d!1683934))

(declare-fun d!1683936 () Bool)

(declare-fun res!2217694 () Bool)

(declare-fun e!3250979 () Bool)

(assert (=> d!1683936 (=> res!2217694 e!3250979)))

(assert (=> d!1683936 (= res!2217694 ((_ is EmptyExpr!14813) (regTwo!30139 (regOne!30138 r!7292))))))

(assert (=> d!1683936 (= (nullableFct!1389 (regTwo!30139 (regOne!30138 r!7292))) e!3250979)))

(declare-fun b!5223230 () Bool)

(declare-fun e!3250983 () Bool)

(declare-fun e!3250980 () Bool)

(assert (=> b!5223230 (= e!3250983 e!3250980)))

(declare-fun res!2217695 () Bool)

(declare-fun call!368831 () Bool)

(assert (=> b!5223230 (= res!2217695 call!368831)))

(assert (=> b!5223230 (=> res!2217695 e!3250980)))

(declare-fun b!5223231 () Bool)

(declare-fun e!3250984 () Bool)

(assert (=> b!5223231 (= e!3250979 e!3250984)))

(declare-fun res!2217696 () Bool)

(assert (=> b!5223231 (=> (not res!2217696) (not e!3250984))))

(assert (=> b!5223231 (= res!2217696 (and (not ((_ is EmptyLang!14813) (regTwo!30139 (regOne!30138 r!7292)))) (not ((_ is ElementMatch!14813) (regTwo!30139 (regOne!30138 r!7292))))))))

(declare-fun bm!368825 () Bool)

(declare-fun call!368830 () Bool)

(declare-fun c!901558 () Bool)

(assert (=> bm!368825 (= call!368830 (nullable!4982 (ite c!901558 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))))))))

(declare-fun b!5223232 () Bool)

(declare-fun e!3250982 () Bool)

(assert (=> b!5223232 (= e!3250983 e!3250982)))

(declare-fun res!2217693 () Bool)

(assert (=> b!5223232 (= res!2217693 call!368831)))

(assert (=> b!5223232 (=> (not res!2217693) (not e!3250982))))

(declare-fun b!5223233 () Bool)

(declare-fun e!3250981 () Bool)

(assert (=> b!5223233 (= e!3250984 e!3250981)))

(declare-fun res!2217697 () Bool)

(assert (=> b!5223233 (=> res!2217697 e!3250981)))

(assert (=> b!5223233 (= res!2217697 ((_ is Star!14813) (regTwo!30139 (regOne!30138 r!7292))))))

(declare-fun b!5223234 () Bool)

(assert (=> b!5223234 (= e!3250980 call!368830)))

(declare-fun b!5223235 () Bool)

(assert (=> b!5223235 (= e!3250981 e!3250983)))

(assert (=> b!5223235 (= c!901558 ((_ is Union!14813) (regTwo!30139 (regOne!30138 r!7292))))))

(declare-fun bm!368826 () Bool)

(assert (=> bm!368826 (= call!368831 (nullable!4982 (ite c!901558 (regOne!30139 (regTwo!30139 (regOne!30138 r!7292))) (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))))))))

(declare-fun b!5223236 () Bool)

(assert (=> b!5223236 (= e!3250982 call!368830)))

(assert (= (and d!1683936 (not res!2217694)) b!5223231))

(assert (= (and b!5223231 res!2217696) b!5223233))

(assert (= (and b!5223233 (not res!2217697)) b!5223235))

(assert (= (and b!5223235 c!901558) b!5223230))

(assert (= (and b!5223235 (not c!901558)) b!5223232))

(assert (= (and b!5223230 (not res!2217695)) b!5223234))

(assert (= (and b!5223232 res!2217693) b!5223236))

(assert (= (or b!5223234 b!5223236) bm!368825))

(assert (= (or b!5223230 b!5223232) bm!368826))

(declare-fun m!6270410 () Bool)

(assert (=> bm!368825 m!6270410))

(declare-fun m!6270412 () Bool)

(assert (=> bm!368826 m!6270412))

(assert (=> d!1683516 d!1683936))

(declare-fun bs!1212803 () Bool)

(declare-fun b!5223237 () Bool)

(assert (= bs!1212803 (and b!5223237 b!5221526)))

(declare-fun lambda!262176 () Int)

(assert (=> bs!1212803 (not (= lambda!262176 lambda!262069))))

(declare-fun bs!1212804 () Bool)

(assert (= bs!1212804 (and b!5223237 b!5222081)))

(assert (=> bs!1212804 (= (and (= (reg!15142 (regTwo!30139 r!7292)) (reg!15142 r!7292)) (= (regTwo!30139 r!7292) r!7292)) (= lambda!262176 lambda!262113))))

(declare-fun bs!1212805 () Bool)

(assert (= bs!1212805 (and b!5223237 d!1683460)))

(assert (=> bs!1212805 (not (= lambda!262176 lambda!262108))))

(assert (=> bs!1212803 (not (= lambda!262176 lambda!262070))))

(declare-fun bs!1212806 () Bool)

(assert (= bs!1212806 (and b!5223237 b!5222085)))

(assert (=> bs!1212806 (not (= lambda!262176 lambda!262114))))

(declare-fun bs!1212807 () Bool)

(assert (= bs!1212807 (and b!5223237 d!1683458)))

(assert (=> bs!1212807 (not (= lambda!262176 lambda!262102))))

(assert (=> bs!1212805 (not (= lambda!262176 lambda!262107))))

(assert (=> b!5223237 true))

(assert (=> b!5223237 true))

(declare-fun bs!1212808 () Bool)

(declare-fun b!5223241 () Bool)

(assert (= bs!1212808 (and b!5223241 b!5221526)))

(declare-fun lambda!262177 () Int)

(assert (=> bs!1212808 (not (= lambda!262177 lambda!262069))))

(declare-fun bs!1212809 () Bool)

(assert (= bs!1212809 (and b!5223241 b!5223237)))

(assert (=> bs!1212809 (not (= lambda!262177 lambda!262176))))

(declare-fun bs!1212810 () Bool)

(assert (= bs!1212810 (and b!5223241 b!5222081)))

(assert (=> bs!1212810 (not (= lambda!262177 lambda!262113))))

(declare-fun bs!1212811 () Bool)

(assert (= bs!1212811 (and b!5223241 d!1683460)))

(assert (=> bs!1212811 (= (and (= (regOne!30138 (regTwo!30139 r!7292)) (regOne!30138 r!7292)) (= (regTwo!30138 (regTwo!30139 r!7292)) (regTwo!30138 r!7292))) (= lambda!262177 lambda!262108))))

(assert (=> bs!1212808 (= (and (= (regOne!30138 (regTwo!30139 r!7292)) (regOne!30138 r!7292)) (= (regTwo!30138 (regTwo!30139 r!7292)) (regTwo!30138 r!7292))) (= lambda!262177 lambda!262070))))

(declare-fun bs!1212812 () Bool)

(assert (= bs!1212812 (and b!5223241 b!5222085)))

(assert (=> bs!1212812 (= (and (= (regOne!30138 (regTwo!30139 r!7292)) (regOne!30138 r!7292)) (= (regTwo!30138 (regTwo!30139 r!7292)) (regTwo!30138 r!7292))) (= lambda!262177 lambda!262114))))

(declare-fun bs!1212813 () Bool)

(assert (= bs!1212813 (and b!5223241 d!1683458)))

(assert (=> bs!1212813 (not (= lambda!262177 lambda!262102))))

(assert (=> bs!1212811 (not (= lambda!262177 lambda!262107))))

(assert (=> b!5223241 true))

(assert (=> b!5223241 true))

(declare-fun e!3250988 () Bool)

(declare-fun call!368832 () Bool)

(assert (=> b!5223237 (= e!3250988 call!368832)))

(declare-fun b!5223238 () Bool)

(declare-fun e!3250987 () Bool)

(declare-fun e!3250991 () Bool)

(assert (=> b!5223238 (= e!3250987 e!3250991)))

(declare-fun res!2217699 () Bool)

(assert (=> b!5223238 (= res!2217699 (matchRSpec!1916 (regOne!30139 (regTwo!30139 r!7292)) s!2326))))

(assert (=> b!5223238 (=> res!2217699 e!3250991)))

(declare-fun d!1683938 () Bool)

(declare-fun c!901559 () Bool)

(assert (=> d!1683938 (= c!901559 ((_ is EmptyExpr!14813) (regTwo!30139 r!7292)))))

(declare-fun e!3250989 () Bool)

(assert (=> d!1683938 (= (matchRSpec!1916 (regTwo!30139 r!7292) s!2326) e!3250989)))

(declare-fun b!5223239 () Bool)

(declare-fun e!3250985 () Bool)

(assert (=> b!5223239 (= e!3250985 (= s!2326 (Cons!60616 (c!901095 (regTwo!30139 r!7292)) Nil!60616)))))

(declare-fun bm!368827 () Bool)

(declare-fun call!368833 () Bool)

(assert (=> bm!368827 (= call!368833 (isEmpty!32537 s!2326))))

(declare-fun b!5223240 () Bool)

(assert (=> b!5223240 (= e!3250989 call!368833)))

(declare-fun e!3250986 () Bool)

(assert (=> b!5223241 (= e!3250986 call!368832)))

(declare-fun b!5223242 () Bool)

(declare-fun c!901562 () Bool)

(assert (=> b!5223242 (= c!901562 ((_ is ElementMatch!14813) (regTwo!30139 r!7292)))))

(declare-fun e!3250990 () Bool)

(assert (=> b!5223242 (= e!3250990 e!3250985)))

(declare-fun b!5223243 () Bool)

(assert (=> b!5223243 (= e!3250989 e!3250990)))

(declare-fun res!2217698 () Bool)

(assert (=> b!5223243 (= res!2217698 (not ((_ is EmptyLang!14813) (regTwo!30139 r!7292))))))

(assert (=> b!5223243 (=> (not res!2217698) (not e!3250990))))

(declare-fun b!5223244 () Bool)

(assert (=> b!5223244 (= e!3250991 (matchRSpec!1916 (regTwo!30139 (regTwo!30139 r!7292)) s!2326))))

(declare-fun c!901560 () Bool)

(declare-fun bm!368828 () Bool)

(assert (=> bm!368828 (= call!368832 (Exists!1994 (ite c!901560 lambda!262176 lambda!262177)))))

(declare-fun b!5223245 () Bool)

(declare-fun res!2217700 () Bool)

(assert (=> b!5223245 (=> res!2217700 e!3250988)))

(assert (=> b!5223245 (= res!2217700 call!368833)))

(assert (=> b!5223245 (= e!3250986 e!3250988)))

(declare-fun b!5223246 () Bool)

(declare-fun c!901561 () Bool)

(assert (=> b!5223246 (= c!901561 ((_ is Union!14813) (regTwo!30139 r!7292)))))

(assert (=> b!5223246 (= e!3250985 e!3250987)))

(declare-fun b!5223247 () Bool)

(assert (=> b!5223247 (= e!3250987 e!3250986)))

(assert (=> b!5223247 (= c!901560 ((_ is Star!14813) (regTwo!30139 r!7292)))))

(assert (= (and d!1683938 c!901559) b!5223240))

(assert (= (and d!1683938 (not c!901559)) b!5223243))

(assert (= (and b!5223243 res!2217698) b!5223242))

(assert (= (and b!5223242 c!901562) b!5223239))

(assert (= (and b!5223242 (not c!901562)) b!5223246))

(assert (= (and b!5223246 c!901561) b!5223238))

(assert (= (and b!5223246 (not c!901561)) b!5223247))

(assert (= (and b!5223238 (not res!2217699)) b!5223244))

(assert (= (and b!5223247 c!901560) b!5223245))

(assert (= (and b!5223247 (not c!901560)) b!5223241))

(assert (= (and b!5223245 (not res!2217700)) b!5223237))

(assert (= (or b!5223237 b!5223241) bm!368828))

(assert (= (or b!5223240 b!5223245) bm!368827))

(declare-fun m!6270414 () Bool)

(assert (=> b!5223238 m!6270414))

(assert (=> bm!368827 m!6269416))

(declare-fun m!6270416 () Bool)

(assert (=> b!5223244 m!6270416))

(declare-fun m!6270418 () Bool)

(assert (=> bm!368828 m!6270418))

(assert (=> b!5222088 d!1683938))

(assert (=> b!5222155 d!1683452))

(assert (=> b!5222164 d!1683472))

(assert (=> d!1683502 d!1683504))

(declare-fun d!1683940 () Bool)

(assert (=> d!1683940 (= (flatMap!540 z!1189 lambda!262071) (dynLambda!23949 lambda!262071 (h!67063 zl!343)))))

(assert (=> d!1683940 true))

(declare-fun _$13!1729 () Unit!152528)

(assert (=> d!1683940 (= (choose!38842 z!1189 (h!67063 zl!343) lambda!262071) _$13!1729)))

(declare-fun b_lambda!201959 () Bool)

(assert (=> (not b_lambda!201959) (not d!1683940)))

(declare-fun bs!1212814 () Bool)

(assert (= bs!1212814 d!1683940))

(assert (=> bs!1212814 m!6269052))

(assert (=> bs!1212814 m!6269504))

(assert (=> d!1683502 d!1683940))

(assert (=> d!1683534 d!1683850))

(declare-fun d!1683942 () Bool)

(assert (=> d!1683942 (= (nullable!4982 (reg!15142 r!7292)) (nullableFct!1389 (reg!15142 r!7292)))))

(declare-fun bs!1212815 () Bool)

(assert (= bs!1212815 d!1683942))

(declare-fun m!6270420 () Bool)

(assert (=> bs!1212815 m!6270420))

(assert (=> b!5222294 d!1683942))

(declare-fun d!1683944 () Bool)

(declare-fun e!3250996 () Bool)

(assert (=> d!1683944 e!3250996))

(declare-fun res!2217705 () Bool)

(assert (=> d!1683944 (=> (not res!2217705) (not e!3250996))))

(declare-fun lt!2143909 () List!60740)

(declare-fun content!10751 (List!60740) (InoxSet C!29896))

(assert (=> d!1683944 (= res!2217705 (= (content!10751 lt!2143909) ((_ map or) (content!10751 (_1!35315 (get!20829 lt!2143840))) (content!10751 (_2!35315 (get!20829 lt!2143840))))))))

(declare-fun e!3250997 () List!60740)

(assert (=> d!1683944 (= lt!2143909 e!3250997)))

(declare-fun c!901565 () Bool)

(assert (=> d!1683944 (= c!901565 ((_ is Nil!60616) (_1!35315 (get!20829 lt!2143840))))))

(assert (=> d!1683944 (= (++!13217 (_1!35315 (get!20829 lt!2143840)) (_2!35315 (get!20829 lt!2143840))) lt!2143909)))

(declare-fun b!5223256 () Bool)

(assert (=> b!5223256 (= e!3250997 (_2!35315 (get!20829 lt!2143840)))))

(declare-fun b!5223257 () Bool)

(assert (=> b!5223257 (= e!3250997 (Cons!60616 (h!67064 (_1!35315 (get!20829 lt!2143840))) (++!13217 (t!373911 (_1!35315 (get!20829 lt!2143840))) (_2!35315 (get!20829 lt!2143840)))))))

(declare-fun b!5223259 () Bool)

(assert (=> b!5223259 (= e!3250996 (or (not (= (_2!35315 (get!20829 lt!2143840)) Nil!60616)) (= lt!2143909 (_1!35315 (get!20829 lt!2143840)))))))

(declare-fun b!5223258 () Bool)

(declare-fun res!2217706 () Bool)

(assert (=> b!5223258 (=> (not res!2217706) (not e!3250996))))

(declare-fun size!39727 (List!60740) Int)

(assert (=> b!5223258 (= res!2217706 (= (size!39727 lt!2143909) (+ (size!39727 (_1!35315 (get!20829 lt!2143840))) (size!39727 (_2!35315 (get!20829 lt!2143840))))))))

(assert (= (and d!1683944 c!901565) b!5223256))

(assert (= (and d!1683944 (not c!901565)) b!5223257))

(assert (= (and d!1683944 res!2217705) b!5223258))

(assert (= (and b!5223258 res!2217706) b!5223259))

(declare-fun m!6270422 () Bool)

(assert (=> d!1683944 m!6270422))

(declare-fun m!6270424 () Bool)

(assert (=> d!1683944 m!6270424))

(declare-fun m!6270426 () Bool)

(assert (=> d!1683944 m!6270426))

(declare-fun m!6270428 () Bool)

(assert (=> b!5223257 m!6270428))

(declare-fun m!6270430 () Bool)

(assert (=> b!5223258 m!6270430))

(declare-fun m!6270432 () Bool)

(assert (=> b!5223258 m!6270432))

(declare-fun m!6270434 () Bool)

(assert (=> b!5223258 m!6270434))

(assert (=> b!5221982 d!1683944))

(assert (=> b!5221982 d!1683868))

(declare-fun d!1683946 () Bool)

(assert (=> d!1683946 (= (isUnion!214 lt!2143863) ((_ is Union!14813) lt!2143863))))

(assert (=> b!5222217 d!1683946))

(declare-fun bs!1212816 () Bool)

(declare-fun d!1683948 () Bool)

(assert (= bs!1212816 (and d!1683948 d!1683922)))

(declare-fun lambda!262178 () Int)

(assert (=> bs!1212816 (= lambda!262178 lambda!262175)))

(assert (=> d!1683948 (= (nullableZipper!1237 lt!2143779) (exists!1972 lt!2143779 lambda!262178))))

(declare-fun bs!1212817 () Bool)

(assert (= bs!1212817 d!1683948))

(declare-fun m!6270436 () Bool)

(assert (=> bs!1212817 m!6270436))

(assert (=> b!5222165 d!1683948))

(declare-fun bs!1212818 () Bool)

(declare-fun d!1683950 () Bool)

(assert (= bs!1212818 (and d!1683950 d!1683498)))

(declare-fun lambda!262179 () Int)

(assert (=> bs!1212818 (= lambda!262179 lambda!262124)))

(declare-fun bs!1212819 () Bool)

(assert (= bs!1212819 (and d!1683950 d!1683848)))

(assert (=> bs!1212819 (= lambda!262179 lambda!262164)))

(declare-fun bs!1212820 () Bool)

(assert (= bs!1212820 (and d!1683950 d!1683482)))

(assert (=> bs!1212820 (= lambda!262179 lambda!262120)))

(declare-fun bs!1212821 () Bool)

(assert (= bs!1212821 (and d!1683950 d!1683910)))

(assert (=> bs!1212821 (= lambda!262179 lambda!262170)))

(declare-fun bs!1212822 () Bool)

(assert (= bs!1212822 (and d!1683950 d!1683484)))

(assert (=> bs!1212822 (= lambda!262179 lambda!262121)))

(declare-fun bs!1212823 () Bool)

(assert (= bs!1212823 (and d!1683950 d!1683480)))

(assert (=> bs!1212823 (= lambda!262179 lambda!262117)))

(declare-fun bs!1212824 () Bool)

(assert (= bs!1212824 (and d!1683950 d!1683908)))

(assert (=> bs!1212824 (= lambda!262179 lambda!262169)))

(declare-fun bs!1212825 () Bool)

(assert (= bs!1212825 (and d!1683950 d!1683500)))

(assert (=> bs!1212825 (= lambda!262179 lambda!262127)))

(assert (=> d!1683950 (= (inv!80279 setElem!33223) (forall!14245 (exprs!4697 setElem!33223) lambda!262179))))

(declare-fun bs!1212826 () Bool)

(assert (= bs!1212826 d!1683950))

(declare-fun m!6270438 () Bool)

(assert (=> bs!1212826 m!6270438))

(assert (=> setNonEmpty!33223 d!1683950))

(declare-fun bm!368829 () Bool)

(declare-fun call!368834 () List!60738)

(declare-fun call!368835 () List!60738)

(assert (=> bm!368829 (= call!368834 call!368835)))

(declare-fun b!5223261 () Bool)

(declare-fun e!3251000 () (InoxSet Context!8394))

(declare-fun call!368839 () (InoxSet Context!8394))

(assert (=> b!5223261 (= e!3251000 call!368839)))

(declare-fun b!5223262 () Bool)

(declare-fun e!3251002 () (InoxSet Context!8394))

(declare-fun call!368836 () (InoxSet Context!8394))

(declare-fun call!368837 () (InoxSet Context!8394))

(assert (=> b!5223262 (= e!3251002 ((_ map or) call!368836 call!368837))))

(declare-fun b!5223263 () Bool)

(declare-fun e!3250999 () (InoxSet Context!8394))

(assert (=> b!5223263 (= e!3250999 call!368839)))

(declare-fun b!5223264 () Bool)

(declare-fun e!3250998 () (InoxSet Context!8394))

(declare-fun e!3251003 () (InoxSet Context!8394))

(assert (=> b!5223264 (= e!3250998 e!3251003)))

(declare-fun c!901568 () Bool)

(assert (=> b!5223264 (= c!901568 ((_ is Union!14813) (h!67062 (exprs!4697 lt!2143763))))))

(declare-fun bm!368830 () Bool)

(assert (=> bm!368830 (= call!368839 call!368837)))

(declare-fun bm!368831 () Bool)

(assert (=> bm!368831 (= call!368836 (derivationStepZipperDown!261 (ite c!901568 (regOne!30139 (h!67062 (exprs!4697 lt!2143763))) (regOne!30138 (h!67062 (exprs!4697 lt!2143763)))) (ite c!901568 (Context!8395 (t!373909 (exprs!4697 lt!2143763))) (Context!8395 call!368835)) (h!67064 s!2326)))))

(declare-fun bm!368832 () Bool)

(declare-fun c!901569 () Bool)

(declare-fun c!901566 () Bool)

(assert (=> bm!368832 (= call!368835 ($colon$colon!1287 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143763)))) (ite (or c!901569 c!901566) (regTwo!30138 (h!67062 (exprs!4697 lt!2143763))) (h!67062 (exprs!4697 lt!2143763)))))))

(declare-fun b!5223265 () Bool)

(assert (=> b!5223265 (= e!3251000 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223266 () Bool)

(assert (=> b!5223266 (= e!3250998 (store ((as const (Array Context!8394 Bool)) false) (Context!8395 (t!373909 (exprs!4697 lt!2143763))) true))))

(declare-fun b!5223267 () Bool)

(declare-fun call!368838 () (InoxSet Context!8394))

(assert (=> b!5223267 (= e!3251003 ((_ map or) call!368836 call!368838))))

(declare-fun b!5223268 () Bool)

(declare-fun c!901567 () Bool)

(assert (=> b!5223268 (= c!901567 ((_ is Star!14813) (h!67062 (exprs!4697 lt!2143763))))))

(assert (=> b!5223268 (= e!3250999 e!3251000)))

(declare-fun d!1683952 () Bool)

(declare-fun c!901570 () Bool)

(assert (=> d!1683952 (= c!901570 (and ((_ is ElementMatch!14813) (h!67062 (exprs!4697 lt!2143763))) (= (c!901095 (h!67062 (exprs!4697 lt!2143763))) (h!67064 s!2326))))))

(assert (=> d!1683952 (= (derivationStepZipperDown!261 (h!67062 (exprs!4697 lt!2143763)) (Context!8395 (t!373909 (exprs!4697 lt!2143763))) (h!67064 s!2326)) e!3250998)))

(declare-fun b!5223260 () Bool)

(declare-fun e!3251001 () Bool)

(assert (=> b!5223260 (= c!901569 e!3251001)))

(declare-fun res!2217707 () Bool)

(assert (=> b!5223260 (=> (not res!2217707) (not e!3251001))))

(assert (=> b!5223260 (= res!2217707 ((_ is Concat!23658) (h!67062 (exprs!4697 lt!2143763))))))

(assert (=> b!5223260 (= e!3251003 e!3251002)))

(declare-fun bm!368833 () Bool)

(assert (=> bm!368833 (= call!368838 (derivationStepZipperDown!261 (ite c!901568 (regTwo!30139 (h!67062 (exprs!4697 lt!2143763))) (ite c!901569 (regTwo!30138 (h!67062 (exprs!4697 lt!2143763))) (ite c!901566 (regOne!30138 (h!67062 (exprs!4697 lt!2143763))) (reg!15142 (h!67062 (exprs!4697 lt!2143763)))))) (ite (or c!901568 c!901569) (Context!8395 (t!373909 (exprs!4697 lt!2143763))) (Context!8395 call!368834)) (h!67064 s!2326)))))

(declare-fun bm!368834 () Bool)

(assert (=> bm!368834 (= call!368837 call!368838)))

(declare-fun b!5223269 () Bool)

(assert (=> b!5223269 (= e!3251001 (nullable!4982 (regOne!30138 (h!67062 (exprs!4697 lt!2143763)))))))

(declare-fun b!5223270 () Bool)

(assert (=> b!5223270 (= e!3251002 e!3250999)))

(assert (=> b!5223270 (= c!901566 ((_ is Concat!23658) (h!67062 (exprs!4697 lt!2143763))))))

(assert (= (and d!1683952 c!901570) b!5223266))

(assert (= (and d!1683952 (not c!901570)) b!5223264))

(assert (= (and b!5223264 c!901568) b!5223267))

(assert (= (and b!5223264 (not c!901568)) b!5223260))

(assert (= (and b!5223260 res!2217707) b!5223269))

(assert (= (and b!5223260 c!901569) b!5223262))

(assert (= (and b!5223260 (not c!901569)) b!5223270))

(assert (= (and b!5223270 c!901566) b!5223263))

(assert (= (and b!5223270 (not c!901566)) b!5223268))

(assert (= (and b!5223268 c!901567) b!5223261))

(assert (= (and b!5223268 (not c!901567)) b!5223265))

(assert (= (or b!5223263 b!5223261) bm!368829))

(assert (= (or b!5223263 b!5223261) bm!368830))

(assert (= (or b!5223262 bm!368829) bm!368832))

(assert (= (or b!5223262 bm!368830) bm!368834))

(assert (= (or b!5223267 bm!368834) bm!368833))

(assert (= (or b!5223267 b!5223262) bm!368831))

(declare-fun m!6270440 () Bool)

(assert (=> bm!368833 m!6270440))

(declare-fun m!6270442 () Bool)

(assert (=> b!5223269 m!6270442))

(declare-fun m!6270444 () Bool)

(assert (=> bm!368832 m!6270444))

(declare-fun m!6270446 () Bool)

(assert (=> bm!368831 m!6270446))

(declare-fun m!6270448 () Bool)

(assert (=> b!5223266 m!6270448))

(assert (=> bm!368622 d!1683952))

(declare-fun bm!368835 () Bool)

(declare-fun c!901571 () Bool)

(declare-fun call!368841 () Bool)

(declare-fun c!901572 () Bool)

(assert (=> bm!368835 (= call!368841 (validRegex!6549 (ite c!901571 (reg!15142 lt!2143860) (ite c!901572 (regOne!30139 lt!2143860) (regOne!30138 lt!2143860)))))))

(declare-fun b!5223271 () Bool)

(declare-fun e!3251010 () Bool)

(declare-fun e!3251009 () Bool)

(assert (=> b!5223271 (= e!3251010 e!3251009)))

(declare-fun res!2217711 () Bool)

(assert (=> b!5223271 (=> (not res!2217711) (not e!3251009))))

(declare-fun call!368840 () Bool)

(assert (=> b!5223271 (= res!2217711 call!368840)))

(declare-fun d!1683954 () Bool)

(declare-fun res!2217709 () Bool)

(declare-fun e!3251007 () Bool)

(assert (=> d!1683954 (=> res!2217709 e!3251007)))

(assert (=> d!1683954 (= res!2217709 ((_ is ElementMatch!14813) lt!2143860))))

(assert (=> d!1683954 (= (validRegex!6549 lt!2143860) e!3251007)))

(declare-fun b!5223272 () Bool)

(declare-fun e!3251005 () Bool)

(assert (=> b!5223272 (= e!3251005 call!368841)))

(declare-fun b!5223273 () Bool)

(declare-fun e!3251006 () Bool)

(declare-fun call!368842 () Bool)

(assert (=> b!5223273 (= e!3251006 call!368842)))

(declare-fun bm!368836 () Bool)

(assert (=> bm!368836 (= call!368842 (validRegex!6549 (ite c!901572 (regTwo!30139 lt!2143860) (regTwo!30138 lt!2143860))))))

(declare-fun bm!368837 () Bool)

(assert (=> bm!368837 (= call!368840 call!368841)))

(declare-fun b!5223274 () Bool)

(declare-fun e!3251004 () Bool)

(assert (=> b!5223274 (= e!3251007 e!3251004)))

(assert (=> b!5223274 (= c!901571 ((_ is Star!14813) lt!2143860))))

(declare-fun b!5223275 () Bool)

(declare-fun e!3251008 () Bool)

(assert (=> b!5223275 (= e!3251004 e!3251008)))

(assert (=> b!5223275 (= c!901572 ((_ is Union!14813) lt!2143860))))

(declare-fun b!5223276 () Bool)

(declare-fun res!2217710 () Bool)

(assert (=> b!5223276 (=> (not res!2217710) (not e!3251006))))

(assert (=> b!5223276 (= res!2217710 call!368840)))

(assert (=> b!5223276 (= e!3251008 e!3251006)))

(declare-fun b!5223277 () Bool)

(assert (=> b!5223277 (= e!3251009 call!368842)))

(declare-fun b!5223278 () Bool)

(declare-fun res!2217708 () Bool)

(assert (=> b!5223278 (=> res!2217708 e!3251010)))

(assert (=> b!5223278 (= res!2217708 (not ((_ is Concat!23658) lt!2143860)))))

(assert (=> b!5223278 (= e!3251008 e!3251010)))

(declare-fun b!5223279 () Bool)

(assert (=> b!5223279 (= e!3251004 e!3251005)))

(declare-fun res!2217712 () Bool)

(assert (=> b!5223279 (= res!2217712 (not (nullable!4982 (reg!15142 lt!2143860))))))

(assert (=> b!5223279 (=> (not res!2217712) (not e!3251005))))

(assert (= (and d!1683954 (not res!2217709)) b!5223274))

(assert (= (and b!5223274 c!901571) b!5223279))

(assert (= (and b!5223274 (not c!901571)) b!5223275))

(assert (= (and b!5223279 res!2217712) b!5223272))

(assert (= (and b!5223275 c!901572) b!5223276))

(assert (= (and b!5223275 (not c!901572)) b!5223278))

(assert (= (and b!5223276 res!2217710) b!5223273))

(assert (= (and b!5223278 (not res!2217708)) b!5223271))

(assert (= (and b!5223271 res!2217711) b!5223277))

(assert (= (or b!5223273 b!5223277) bm!368836))

(assert (= (or b!5223276 b!5223271) bm!368837))

(assert (= (or b!5223272 bm!368837) bm!368835))

(declare-fun m!6270450 () Bool)

(assert (=> bm!368835 m!6270450))

(declare-fun m!6270452 () Bool)

(assert (=> bm!368836 m!6270452))

(declare-fun m!6270454 () Bool)

(assert (=> b!5223279 m!6270454))

(assert (=> d!1683492 d!1683954))

(assert (=> d!1683492 d!1683498))

(assert (=> d!1683492 d!1683500))

(assert (=> b!5222285 d!1683466))

(assert (=> bm!368600 d!1683890))

(declare-fun b!5223280 () Bool)

(declare-fun e!3251013 () (InoxSet Context!8394))

(declare-fun e!3251011 () (InoxSet Context!8394))

(assert (=> b!5223280 (= e!3251013 e!3251011)))

(declare-fun c!901573 () Bool)

(assert (=> b!5223280 (= c!901573 ((_ is Cons!60614) (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))))))))

(declare-fun bm!368838 () Bool)

(declare-fun call!368843 () (InoxSet Context!8394))

(assert (=> bm!368838 (= call!368843 (derivationStepZipperDown!261 (h!67062 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))))) (Context!8395 (t!373909 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))))))) (h!67064 s!2326)))))

(declare-fun d!1683956 () Bool)

(declare-fun c!901574 () Bool)

(declare-fun e!3251012 () Bool)

(assert (=> d!1683956 (= c!901574 e!3251012)))

(declare-fun res!2217713 () Bool)

(assert (=> d!1683956 (=> (not res!2217713) (not e!3251012))))

(assert (=> d!1683956 (= res!2217713 ((_ is Cons!60614) (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))))))))

(assert (=> d!1683956 (= (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343)))))))) (h!67064 s!2326)) e!3251013)))

(declare-fun b!5223281 () Bool)

(assert (=> b!5223281 (= e!3251011 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223282 () Bool)

(assert (=> b!5223282 (= e!3251011 call!368843)))

(declare-fun b!5223283 () Bool)

(assert (=> b!5223283 (= e!3251013 ((_ map or) call!368843 (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))))))) (h!67064 s!2326))))))

(declare-fun b!5223284 () Bool)

(assert (=> b!5223284 (= e!3251012 (nullable!4982 (h!67062 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (Cons!60614 (h!67062 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))))))))))

(assert (= (and d!1683956 res!2217713) b!5223284))

(assert (= (and d!1683956 c!901574) b!5223283))

(assert (= (and d!1683956 (not c!901574)) b!5223280))

(assert (= (and b!5223280 c!901573) b!5223282))

(assert (= (and b!5223280 (not c!901573)) b!5223281))

(assert (= (or b!5223283 b!5223282) bm!368838))

(declare-fun m!6270456 () Bool)

(assert (=> bm!368838 m!6270456))

(declare-fun m!6270458 () Bool)

(assert (=> b!5223283 m!6270458))

(declare-fun m!6270460 () Bool)

(assert (=> b!5223284 m!6270460))

(assert (=> b!5222245 d!1683956))

(declare-fun b!5223285 () Bool)

(declare-fun e!3251016 () (InoxSet Context!8394))

(declare-fun e!3251014 () (InoxSet Context!8394))

(assert (=> b!5223285 (= e!3251016 e!3251014)))

(declare-fun c!901575 () Bool)

(assert (=> b!5223285 (= c!901575 ((_ is Cons!60614) (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))))))))

(declare-fun bm!368839 () Bool)

(declare-fun call!368844 () (InoxSet Context!8394))

(assert (=> bm!368839 (= call!368844 (derivationStepZipperDown!261 (h!67062 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))))) (Context!8395 (t!373909 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343))))))) (h!67064 s!2326)))))

(declare-fun d!1683958 () Bool)

(declare-fun c!901576 () Bool)

(declare-fun e!3251015 () Bool)

(assert (=> d!1683958 (= c!901576 e!3251015)))

(declare-fun res!2217714 () Bool)

(assert (=> d!1683958 (=> (not res!2217714) (not e!3251015))))

(assert (=> d!1683958 (= res!2217714 ((_ is Cons!60614) (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))))))))

(assert (=> d!1683958 (= (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343)))) (h!67064 s!2326)) e!3251016)))

(declare-fun b!5223286 () Bool)

(assert (=> b!5223286 (= e!3251014 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223287 () Bool)

(assert (=> b!5223287 (= e!3251014 call!368844)))

(declare-fun b!5223288 () Bool)

(assert (=> b!5223288 (= e!3251016 ((_ map or) call!368844 (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343))))))) (h!67064 s!2326))))))

(declare-fun b!5223289 () Bool)

(assert (=> b!5223289 (= e!3251015 (nullable!4982 (h!67062 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 (h!67063 zl!343))))))))))

(assert (= (and d!1683958 res!2217714) b!5223289))

(assert (= (and d!1683958 c!901576) b!5223288))

(assert (= (and d!1683958 (not c!901576)) b!5223285))

(assert (= (and b!5223285 c!901575) b!5223287))

(assert (= (and b!5223285 (not c!901575)) b!5223286))

(assert (= (or b!5223288 b!5223287) bm!368839))

(declare-fun m!6270462 () Bool)

(assert (=> bm!368839 m!6270462))

(declare-fun m!6270464 () Bool)

(assert (=> b!5223288 m!6270464))

(declare-fun m!6270466 () Bool)

(assert (=> b!5223289 m!6270466))

(assert (=> b!5222250 d!1683958))

(declare-fun bs!1212827 () Bool)

(declare-fun d!1683960 () Bool)

(assert (= bs!1212827 (and d!1683960 d!1683950)))

(declare-fun lambda!262180 () Int)

(assert (=> bs!1212827 (= lambda!262180 lambda!262179)))

(declare-fun bs!1212828 () Bool)

(assert (= bs!1212828 (and d!1683960 d!1683498)))

(assert (=> bs!1212828 (= lambda!262180 lambda!262124)))

(declare-fun bs!1212829 () Bool)

(assert (= bs!1212829 (and d!1683960 d!1683848)))

(assert (=> bs!1212829 (= lambda!262180 lambda!262164)))

(declare-fun bs!1212830 () Bool)

(assert (= bs!1212830 (and d!1683960 d!1683482)))

(assert (=> bs!1212830 (= lambda!262180 lambda!262120)))

(declare-fun bs!1212831 () Bool)

(assert (= bs!1212831 (and d!1683960 d!1683910)))

(assert (=> bs!1212831 (= lambda!262180 lambda!262170)))

(declare-fun bs!1212832 () Bool)

(assert (= bs!1212832 (and d!1683960 d!1683484)))

(assert (=> bs!1212832 (= lambda!262180 lambda!262121)))

(declare-fun bs!1212833 () Bool)

(assert (= bs!1212833 (and d!1683960 d!1683480)))

(assert (=> bs!1212833 (= lambda!262180 lambda!262117)))

(declare-fun bs!1212834 () Bool)

(assert (= bs!1212834 (and d!1683960 d!1683908)))

(assert (=> bs!1212834 (= lambda!262180 lambda!262169)))

(declare-fun bs!1212835 () Bool)

(assert (= bs!1212835 (and d!1683960 d!1683500)))

(assert (=> bs!1212835 (= lambda!262180 lambda!262127)))

(declare-fun b!5223290 () Bool)

(declare-fun e!3251019 () Bool)

(declare-fun lt!2143910 () Regex!14813)

(assert (=> b!5223290 (= e!3251019 (isEmptyLang!782 lt!2143910))))

(declare-fun b!5223291 () Bool)

(declare-fun e!3251021 () Bool)

(assert (=> b!5223291 (= e!3251021 (isUnion!214 lt!2143910))))

(declare-fun b!5223292 () Bool)

(declare-fun e!3251017 () Bool)

(assert (=> b!5223292 (= e!3251017 (isEmpty!32534 (t!373909 (t!373909 (unfocusZipperList!255 zl!343)))))))

(declare-fun b!5223293 () Bool)

(declare-fun e!3251022 () Bool)

(assert (=> b!5223293 (= e!3251022 e!3251019)))

(declare-fun c!901580 () Bool)

(assert (=> b!5223293 (= c!901580 (isEmpty!32534 (t!373909 (unfocusZipperList!255 zl!343))))))

(declare-fun b!5223294 () Bool)

(assert (=> b!5223294 (= e!3251021 (= lt!2143910 (head!11194 (t!373909 (unfocusZipperList!255 zl!343)))))))

(declare-fun b!5223295 () Bool)

(declare-fun e!3251020 () Regex!14813)

(assert (=> b!5223295 (= e!3251020 (h!67062 (t!373909 (unfocusZipperList!255 zl!343))))))

(declare-fun b!5223297 () Bool)

(declare-fun e!3251018 () Regex!14813)

(assert (=> b!5223297 (= e!3251018 EmptyLang!14813)))

(declare-fun b!5223298 () Bool)

(assert (=> b!5223298 (= e!3251018 (Union!14813 (h!67062 (t!373909 (unfocusZipperList!255 zl!343))) (generalisedUnion!742 (t!373909 (t!373909 (unfocusZipperList!255 zl!343))))))))

(declare-fun b!5223299 () Bool)

(assert (=> b!5223299 (= e!3251020 e!3251018)))

(declare-fun c!901579 () Bool)

(assert (=> b!5223299 (= c!901579 ((_ is Cons!60614) (t!373909 (unfocusZipperList!255 zl!343))))))

(assert (=> d!1683960 e!3251022))

(declare-fun res!2217715 () Bool)

(assert (=> d!1683960 (=> (not res!2217715) (not e!3251022))))

(assert (=> d!1683960 (= res!2217715 (validRegex!6549 lt!2143910))))

(assert (=> d!1683960 (= lt!2143910 e!3251020)))

(declare-fun c!901578 () Bool)

(assert (=> d!1683960 (= c!901578 e!3251017)))

(declare-fun res!2217716 () Bool)

(assert (=> d!1683960 (=> (not res!2217716) (not e!3251017))))

(assert (=> d!1683960 (= res!2217716 ((_ is Cons!60614) (t!373909 (unfocusZipperList!255 zl!343))))))

(assert (=> d!1683960 (forall!14245 (t!373909 (unfocusZipperList!255 zl!343)) lambda!262180)))

(assert (=> d!1683960 (= (generalisedUnion!742 (t!373909 (unfocusZipperList!255 zl!343))) lt!2143910)))

(declare-fun b!5223296 () Bool)

(assert (=> b!5223296 (= e!3251019 e!3251021)))

(declare-fun c!901577 () Bool)

(assert (=> b!5223296 (= c!901577 (isEmpty!32534 (tail!10291 (t!373909 (unfocusZipperList!255 zl!343)))))))

(assert (= (and d!1683960 res!2217716) b!5223292))

(assert (= (and d!1683960 c!901578) b!5223295))

(assert (= (and d!1683960 (not c!901578)) b!5223299))

(assert (= (and b!5223299 c!901579) b!5223298))

(assert (= (and b!5223299 (not c!901579)) b!5223297))

(assert (= (and d!1683960 res!2217715) b!5223293))

(assert (= (and b!5223293 c!901580) b!5223290))

(assert (= (and b!5223293 (not c!901580)) b!5223296))

(assert (= (and b!5223296 c!901577) b!5223294))

(assert (= (and b!5223296 (not c!901577)) b!5223291))

(assert (=> b!5223293 m!6269486))

(declare-fun m!6270468 () Bool)

(assert (=> b!5223296 m!6270468))

(assert (=> b!5223296 m!6270468))

(declare-fun m!6270470 () Bool)

(assert (=> b!5223296 m!6270470))

(declare-fun m!6270472 () Bool)

(assert (=> b!5223292 m!6270472))

(declare-fun m!6270474 () Bool)

(assert (=> b!5223291 m!6270474))

(declare-fun m!6270476 () Bool)

(assert (=> d!1683960 m!6270476))

(declare-fun m!6270478 () Bool)

(assert (=> d!1683960 m!6270478))

(declare-fun m!6270480 () Bool)

(assert (=> b!5223298 m!6270480))

(declare-fun m!6270482 () Bool)

(assert (=> b!5223290 m!6270482))

(declare-fun m!6270484 () Bool)

(assert (=> b!5223294 m!6270484))

(assert (=> b!5222224 d!1683960))

(declare-fun d!1683962 () Bool)

(assert (=> d!1683962 (= (isEmptyExpr!773 lt!2143856) ((_ is EmptyExpr!14813) lt!2143856))))

(assert (=> b!5222158 d!1683962))

(declare-fun bs!1212836 () Bool)

(declare-fun d!1683964 () Bool)

(assert (= bs!1212836 (and d!1683964 d!1683922)))

(declare-fun lambda!262181 () Int)

(assert (=> bs!1212836 (= lambda!262181 lambda!262175)))

(declare-fun bs!1212837 () Bool)

(assert (= bs!1212837 (and d!1683964 d!1683948)))

(assert (=> bs!1212837 (= lambda!262181 lambda!262178)))

(assert (=> d!1683964 (= (nullableZipper!1237 lt!2143769) (exists!1972 lt!2143769 lambda!262181))))

(declare-fun bs!1212838 () Bool)

(assert (= bs!1212838 d!1683964))

(declare-fun m!6270486 () Bool)

(assert (=> bs!1212838 m!6270486))

(assert (=> b!5222281 d!1683964))

(declare-fun d!1683966 () Bool)

(declare-fun c!901581 () Bool)

(assert (=> d!1683966 (= c!901581 (isEmpty!32537 (t!373911 s!2326)))))

(declare-fun e!3251023 () Bool)

(assert (=> d!1683966 (= (matchZipper!1057 ((_ map or) lt!2143782 lt!2143781) (t!373911 s!2326)) e!3251023)))

(declare-fun b!5223300 () Bool)

(assert (=> b!5223300 (= e!3251023 (nullableZipper!1237 ((_ map or) lt!2143782 lt!2143781)))))

(declare-fun b!5223301 () Bool)

(assert (=> b!5223301 (= e!3251023 (matchZipper!1057 (derivationStepZipper!1081 ((_ map or) lt!2143782 lt!2143781) (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))))))

(assert (= (and d!1683966 c!901581) b!5223300))

(assert (= (and d!1683966 (not c!901581)) b!5223301))

(assert (=> d!1683966 m!6269332))

(declare-fun m!6270488 () Bool)

(assert (=> b!5223300 m!6270488))

(assert (=> b!5223301 m!6269336))

(assert (=> b!5223301 m!6269336))

(declare-fun m!6270490 () Bool)

(assert (=> b!5223301 m!6270490))

(assert (=> b!5223301 m!6269340))

(assert (=> b!5223301 m!6270490))

(assert (=> b!5223301 m!6269340))

(declare-fun m!6270492 () Bool)

(assert (=> b!5223301 m!6270492))

(assert (=> d!1683538 d!1683966))

(assert (=> d!1683538 d!1683536))

(declare-fun d!1683968 () Bool)

(declare-fun e!3251024 () Bool)

(assert (=> d!1683968 (= (matchZipper!1057 ((_ map or) lt!2143782 lt!2143781) (t!373911 s!2326)) e!3251024)))

(declare-fun res!2217717 () Bool)

(assert (=> d!1683968 (=> res!2217717 e!3251024)))

(assert (=> d!1683968 (= res!2217717 (matchZipper!1057 lt!2143782 (t!373911 s!2326)))))

(assert (=> d!1683968 true))

(declare-fun _$48!839 () Unit!152528)

(assert (=> d!1683968 (= (choose!38837 lt!2143782 lt!2143781 (t!373911 s!2326)) _$48!839)))

(declare-fun b!5223302 () Bool)

(assert (=> b!5223302 (= e!3251024 (matchZipper!1057 lt!2143781 (t!373911 s!2326)))))

(assert (= (and d!1683968 (not res!2217717)) b!5223302))

(assert (=> d!1683968 m!6269584))

(assert (=> d!1683968 m!6269020))

(assert (=> b!5223302 m!6268964))

(assert (=> d!1683538 d!1683968))

(declare-fun d!1683970 () Bool)

(assert (=> d!1683970 (= (nullable!4982 (h!67062 (exprs!4697 lt!2143763))) (nullableFct!1389 (h!67062 (exprs!4697 lt!2143763))))))

(declare-fun bs!1212839 () Bool)

(assert (= bs!1212839 d!1683970))

(declare-fun m!6270494 () Bool)

(assert (=> bs!1212839 m!6270494))

(assert (=> b!5222277 d!1683970))

(declare-fun d!1683972 () Bool)

(declare-fun c!901582 () Bool)

(assert (=> d!1683972 (= c!901582 (isEmpty!32537 (tail!10290 (t!373911 s!2326))))))

(declare-fun e!3251025 () Bool)

(assert (=> d!1683972 (= (matchZipper!1057 (derivationStepZipper!1081 ((_ map or) lt!2143782 lt!2143771) (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))) e!3251025)))

(declare-fun b!5223303 () Bool)

(assert (=> b!5223303 (= e!3251025 (nullableZipper!1237 (derivationStepZipper!1081 ((_ map or) lt!2143782 lt!2143771) (head!11193 (t!373911 s!2326)))))))

(declare-fun b!5223304 () Bool)

(assert (=> b!5223304 (= e!3251025 (matchZipper!1057 (derivationStepZipper!1081 (derivationStepZipper!1081 ((_ map or) lt!2143782 lt!2143771) (head!11193 (t!373911 s!2326))) (head!11193 (tail!10290 (t!373911 s!2326)))) (tail!10290 (tail!10290 (t!373911 s!2326)))))))

(assert (= (and d!1683972 c!901582) b!5223303))

(assert (= (and d!1683972 (not c!901582)) b!5223304))

(assert (=> d!1683972 m!6269340))

(assert (=> d!1683972 m!6270220))

(assert (=> b!5223303 m!6269338))

(declare-fun m!6270496 () Bool)

(assert (=> b!5223303 m!6270496))

(assert (=> b!5223304 m!6269340))

(assert (=> b!5223304 m!6270224))

(assert (=> b!5223304 m!6269338))

(assert (=> b!5223304 m!6270224))

(declare-fun m!6270498 () Bool)

(assert (=> b!5223304 m!6270498))

(assert (=> b!5223304 m!6269340))

(assert (=> b!5223304 m!6270228))

(assert (=> b!5223304 m!6270498))

(assert (=> b!5223304 m!6270228))

(declare-fun m!6270500 () Bool)

(assert (=> b!5223304 m!6270500))

(assert (=> b!5221961 d!1683972))

(declare-fun bs!1212840 () Bool)

(declare-fun d!1683974 () Bool)

(assert (= bs!1212840 (and d!1683974 d!1683856)))

(declare-fun lambda!262182 () Int)

(assert (=> bs!1212840 (= lambda!262182 lambda!262167)))

(declare-fun bs!1212841 () Bool)

(assert (= bs!1212841 (and d!1683974 d!1683918)))

(assert (=> bs!1212841 (= lambda!262182 lambda!262172)))

(declare-fun bs!1212842 () Bool)

(assert (= bs!1212842 (and d!1683974 b!5221522)))

(assert (=> bs!1212842 (= (= (head!11193 (t!373911 s!2326)) (h!67064 s!2326)) (= lambda!262182 lambda!262071))))

(declare-fun bs!1212843 () Bool)

(assert (= bs!1212843 (and d!1683974 d!1683898)))

(assert (=> bs!1212843 (= lambda!262182 lambda!262168)))

(declare-fun bs!1212844 () Bool)

(assert (= bs!1212844 (and d!1683974 d!1683914)))

(assert (=> bs!1212844 (= lambda!262182 lambda!262171)))

(assert (=> d!1683974 true))

(assert (=> d!1683974 (= (derivationStepZipper!1081 ((_ map or) lt!2143782 lt!2143771) (head!11193 (t!373911 s!2326))) (flatMap!540 ((_ map or) lt!2143782 lt!2143771) lambda!262182))))

(declare-fun bs!1212845 () Bool)

(assert (= bs!1212845 d!1683974))

(declare-fun m!6270502 () Bool)

(assert (=> bs!1212845 m!6270502))

(assert (=> b!5221961 d!1683974))

(assert (=> b!5221961 d!1683858))

(assert (=> b!5221961 d!1683860))

(declare-fun bs!1212846 () Bool)

(declare-fun d!1683976 () Bool)

(assert (= bs!1212846 (and d!1683976 d!1683922)))

(declare-fun lambda!262183 () Int)

(assert (=> bs!1212846 (= lambda!262183 lambda!262175)))

(declare-fun bs!1212847 () Bool)

(assert (= bs!1212847 (and d!1683976 d!1683948)))

(assert (=> bs!1212847 (= lambda!262183 lambda!262178)))

(declare-fun bs!1212848 () Bool)

(assert (= bs!1212848 (and d!1683976 d!1683964)))

(assert (=> bs!1212848 (= lambda!262183 lambda!262181)))

(assert (=> d!1683976 (= (nullableZipper!1237 lt!2143771) (exists!1972 lt!2143771 lambda!262183))))

(declare-fun bs!1212849 () Bool)

(assert (= bs!1212849 d!1683976))

(declare-fun m!6270504 () Bool)

(assert (=> bs!1212849 m!6270504))

(assert (=> b!5222047 d!1683976))

(declare-fun d!1683978 () Bool)

(assert (=> d!1683978 (= (Exists!1994 lambda!262107) (choose!38838 lambda!262107))))

(declare-fun bs!1212850 () Bool)

(assert (= bs!1212850 d!1683978))

(declare-fun m!6270506 () Bool)

(assert (=> bs!1212850 m!6270506))

(assert (=> d!1683460 d!1683978))

(declare-fun d!1683980 () Bool)

(assert (=> d!1683980 (= (Exists!1994 lambda!262108) (choose!38838 lambda!262108))))

(declare-fun bs!1212851 () Bool)

(assert (= bs!1212851 d!1683980))

(declare-fun m!6270508 () Bool)

(assert (=> bs!1212851 m!6270508))

(assert (=> d!1683460 d!1683980))

(declare-fun bs!1212852 () Bool)

(declare-fun d!1683982 () Bool)

(assert (= bs!1212852 (and d!1683982 b!5221526)))

(declare-fun lambda!262188 () Int)

(assert (=> bs!1212852 (= lambda!262188 lambda!262069)))

(declare-fun bs!1212853 () Bool)

(assert (= bs!1212853 (and d!1683982 b!5223237)))

(assert (=> bs!1212853 (not (= lambda!262188 lambda!262176))))

(declare-fun bs!1212854 () Bool)

(assert (= bs!1212854 (and d!1683982 b!5222081)))

(assert (=> bs!1212854 (not (= lambda!262188 lambda!262113))))

(assert (=> bs!1212852 (not (= lambda!262188 lambda!262070))))

(declare-fun bs!1212855 () Bool)

(assert (= bs!1212855 (and d!1683982 b!5222085)))

(assert (=> bs!1212855 (not (= lambda!262188 lambda!262114))))

(declare-fun bs!1212856 () Bool)

(assert (= bs!1212856 (and d!1683982 d!1683458)))

(assert (=> bs!1212856 (= lambda!262188 lambda!262102)))

(declare-fun bs!1212857 () Bool)

(assert (= bs!1212857 (and d!1683982 d!1683460)))

(assert (=> bs!1212857 (= lambda!262188 lambda!262107)))

(declare-fun bs!1212858 () Bool)

(assert (= bs!1212858 (and d!1683982 b!5223241)))

(assert (=> bs!1212858 (not (= lambda!262188 lambda!262177))))

(assert (=> bs!1212857 (not (= lambda!262188 lambda!262108))))

(assert (=> d!1683982 true))

(assert (=> d!1683982 true))

(assert (=> d!1683982 true))

(declare-fun lambda!262189 () Int)

(assert (=> bs!1212852 (not (= lambda!262189 lambda!262069))))

(assert (=> bs!1212853 (not (= lambda!262189 lambda!262176))))

(assert (=> bs!1212854 (not (= lambda!262189 lambda!262113))))

(assert (=> bs!1212855 (= lambda!262189 lambda!262114)))

(assert (=> bs!1212856 (not (= lambda!262189 lambda!262102))))

(assert (=> bs!1212857 (not (= lambda!262189 lambda!262107))))

(assert (=> bs!1212858 (= (and (= (regOne!30138 r!7292) (regOne!30138 (regTwo!30139 r!7292))) (= (regTwo!30138 r!7292) (regTwo!30138 (regTwo!30139 r!7292)))) (= lambda!262189 lambda!262177))))

(assert (=> bs!1212857 (= lambda!262189 lambda!262108)))

(declare-fun bs!1212859 () Bool)

(assert (= bs!1212859 d!1683982))

(assert (=> bs!1212859 (not (= lambda!262189 lambda!262188))))

(assert (=> bs!1212852 (= lambda!262189 lambda!262070)))

(assert (=> d!1683982 true))

(assert (=> d!1683982 true))

(assert (=> d!1683982 true))

(assert (=> d!1683982 (= (Exists!1994 lambda!262188) (Exists!1994 lambda!262189))))

(assert (=> d!1683982 true))

(declare-fun _$90!1024 () Unit!152528)

(assert (=> d!1683982 (= (choose!38840 (regOne!30138 r!7292) (regTwo!30138 r!7292) s!2326) _$90!1024)))

(declare-fun m!6270510 () Bool)

(assert (=> bs!1212859 m!6270510))

(declare-fun m!6270512 () Bool)

(assert (=> bs!1212859 m!6270512))

(assert (=> d!1683460 d!1683982))

(assert (=> d!1683460 d!1683830))

(declare-fun d!1683984 () Bool)

(assert (=> d!1683984 (= ($colon$colon!1287 (exprs!4697 lt!2143761) (ite (or c!901234 c!901231) (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (regOne!30139 (regOne!30138 r!7292)))) (Cons!60614 (ite (or c!901234 c!901231) (regTwo!30138 (regOne!30139 (regOne!30138 r!7292))) (regOne!30139 (regOne!30138 r!7292))) (exprs!4697 lt!2143761)))))

(assert (=> bm!368589 d!1683984))

(declare-fun d!1683986 () Bool)

(assert (=> d!1683986 true))

(assert (=> d!1683986 true))

(declare-fun res!2217726 () Bool)

(assert (=> d!1683986 (= (choose!38838 lambda!262070) res!2217726)))

(assert (=> d!1683456 d!1683986))

(declare-fun bm!368840 () Bool)

(declare-fun call!368845 () List!60738)

(declare-fun call!368846 () List!60738)

(assert (=> bm!368840 (= call!368845 call!368846)))

(declare-fun b!5223314 () Bool)

(declare-fun e!3251032 () (InoxSet Context!8394))

(declare-fun call!368850 () (InoxSet Context!8394))

(assert (=> b!5223314 (= e!3251032 call!368850)))

(declare-fun b!5223315 () Bool)

(declare-fun e!3251034 () (InoxSet Context!8394))

(declare-fun call!368847 () (InoxSet Context!8394))

(declare-fun call!368848 () (InoxSet Context!8394))

(assert (=> b!5223315 (= e!3251034 ((_ map or) call!368847 call!368848))))

(declare-fun b!5223316 () Bool)

(declare-fun e!3251031 () (InoxSet Context!8394))

(assert (=> b!5223316 (= e!3251031 call!368850)))

(declare-fun b!5223317 () Bool)

(declare-fun e!3251030 () (InoxSet Context!8394))

(declare-fun e!3251035 () (InoxSet Context!8394))

(assert (=> b!5223317 (= e!3251030 e!3251035)))

(declare-fun c!901585 () Bool)

(assert (=> b!5223317 (= c!901585 ((_ is Union!14813) (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))))))

(declare-fun bm!368841 () Bool)

(assert (=> bm!368841 (= call!368850 call!368848)))

(declare-fun bm!368842 () Bool)

(assert (=> bm!368842 (= call!368847 (derivationStepZipperDown!261 (ite c!901585 (regOne!30139 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))) (regOne!30138 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292)))))))) (ite c!901585 (ite (or c!901228 c!901229) lt!2143761 (Context!8395 call!368585)) (Context!8395 call!368846)) (h!67064 s!2326)))))

(declare-fun bm!368843 () Bool)

(declare-fun c!901583 () Bool)

(declare-fun c!901586 () Bool)

(assert (=> bm!368843 (= call!368846 ($colon$colon!1287 (exprs!4697 (ite (or c!901228 c!901229) lt!2143761 (Context!8395 call!368585))) (ite (or c!901586 c!901583) (regTwo!30138 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))) (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292)))))))))))

(declare-fun b!5223318 () Bool)

(assert (=> b!5223318 (= e!3251032 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223319 () Bool)

(assert (=> b!5223319 (= e!3251030 (store ((as const (Array Context!8394 Bool)) false) (ite (or c!901228 c!901229) lt!2143761 (Context!8395 call!368585)) true))))

(declare-fun b!5223320 () Bool)

(declare-fun call!368849 () (InoxSet Context!8394))

(assert (=> b!5223320 (= e!3251035 ((_ map or) call!368847 call!368849))))

(declare-fun b!5223321 () Bool)

(declare-fun c!901584 () Bool)

(assert (=> b!5223321 (= c!901584 ((_ is Star!14813) (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))))))

(assert (=> b!5223321 (= e!3251031 e!3251032)))

(declare-fun d!1683988 () Bool)

(declare-fun c!901587 () Bool)

(assert (=> d!1683988 (= c!901587 (and ((_ is ElementMatch!14813) (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))) (= (c!901095 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))) (h!67064 s!2326))))))

(assert (=> d!1683988 (= (derivationStepZipperDown!261 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292)))))) (ite (or c!901228 c!901229) lt!2143761 (Context!8395 call!368585)) (h!67064 s!2326)) e!3251030)))

(declare-fun b!5223313 () Bool)

(declare-fun e!3251033 () Bool)

(assert (=> b!5223313 (= c!901586 e!3251033)))

(declare-fun res!2217727 () Bool)

(assert (=> b!5223313 (=> (not res!2217727) (not e!3251033))))

(assert (=> b!5223313 (= res!2217727 ((_ is Concat!23658) (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))))))

(assert (=> b!5223313 (= e!3251035 e!3251034)))

(declare-fun bm!368844 () Bool)

(assert (=> bm!368844 (= call!368849 (derivationStepZipperDown!261 (ite c!901585 (regTwo!30139 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))) (ite c!901586 (regTwo!30138 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))) (ite c!901583 (regOne!30138 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))) (reg!15142 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292)))))))))) (ite (or c!901585 c!901586) (ite (or c!901228 c!901229) lt!2143761 (Context!8395 call!368585)) (Context!8395 call!368845)) (h!67064 s!2326)))))

(declare-fun bm!368845 () Bool)

(assert (=> bm!368845 (= call!368848 call!368849)))

(declare-fun b!5223322 () Bool)

(assert (=> b!5223322 (= e!3251033 (nullable!4982 (regOne!30138 (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292)))))))))))

(declare-fun b!5223323 () Bool)

(assert (=> b!5223323 (= e!3251034 e!3251031)))

(assert (=> b!5223323 (= c!901583 ((_ is Concat!23658) (ite c!901228 (regTwo!30139 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901229 (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (ite c!901226 (regOne!30138 (regTwo!30139 (regOne!30138 r!7292))) (reg!15142 (regTwo!30139 (regOne!30138 r!7292))))))))))

(assert (= (and d!1683988 c!901587) b!5223319))

(assert (= (and d!1683988 (not c!901587)) b!5223317))

(assert (= (and b!5223317 c!901585) b!5223320))

(assert (= (and b!5223317 (not c!901585)) b!5223313))

(assert (= (and b!5223313 res!2217727) b!5223322))

(assert (= (and b!5223313 c!901586) b!5223315))

(assert (= (and b!5223313 (not c!901586)) b!5223323))

(assert (= (and b!5223323 c!901583) b!5223316))

(assert (= (and b!5223323 (not c!901583)) b!5223321))

(assert (= (and b!5223321 c!901584) b!5223314))

(assert (= (and b!5223321 (not c!901584)) b!5223318))

(assert (= (or b!5223316 b!5223314) bm!368840))

(assert (= (or b!5223316 b!5223314) bm!368841))

(assert (= (or b!5223315 bm!368840) bm!368843))

(assert (= (or b!5223315 bm!368841) bm!368845))

(assert (= (or b!5223320 bm!368845) bm!368844))

(assert (= (or b!5223320 b!5223315) bm!368842))

(declare-fun m!6270514 () Bool)

(assert (=> bm!368844 m!6270514))

(declare-fun m!6270516 () Bool)

(assert (=> b!5223322 m!6270516))

(declare-fun m!6270518 () Bool)

(assert (=> bm!368843 m!6270518))

(declare-fun m!6270520 () Bool)

(assert (=> bm!368842 m!6270520))

(declare-fun m!6270522 () Bool)

(assert (=> b!5223319 m!6270522))

(assert (=> bm!368584 d!1683988))

(declare-fun d!1683990 () Bool)

(assert (=> d!1683990 (= (isEmpty!32534 (exprs!4697 (h!67063 zl!343))) ((_ is Nil!60614) (exprs!4697 (h!67063 zl!343))))))

(assert (=> b!5222162 d!1683990))

(declare-fun d!1683992 () Bool)

(assert (=> d!1683992 (= (isEmptyLang!782 lt!2143863) ((_ is EmptyLang!14813) lt!2143863))))

(assert (=> b!5222216 d!1683992))

(assert (=> d!1683490 d!1683850))

(assert (=> b!5221985 d!1683826))

(declare-fun d!1683994 () Bool)

(declare-fun c!901588 () Bool)

(assert (=> d!1683994 (= c!901588 (isEmpty!32537 (tail!10290 (t!373911 s!2326))))))

(declare-fun e!3251036 () Bool)

(assert (=> d!1683994 (= (matchZipper!1057 (derivationStepZipper!1081 lt!2143782 (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))) e!3251036)))

(declare-fun b!5223324 () Bool)

(assert (=> b!5223324 (= e!3251036 (nullableZipper!1237 (derivationStepZipper!1081 lt!2143782 (head!11193 (t!373911 s!2326)))))))

(declare-fun b!5223325 () Bool)

(assert (=> b!5223325 (= e!3251036 (matchZipper!1057 (derivationStepZipper!1081 (derivationStepZipper!1081 lt!2143782 (head!11193 (t!373911 s!2326))) (head!11193 (tail!10290 (t!373911 s!2326)))) (tail!10290 (tail!10290 (t!373911 s!2326)))))))

(assert (= (and d!1683994 c!901588) b!5223324))

(assert (= (and d!1683994 (not c!901588)) b!5223325))

(assert (=> d!1683994 m!6269340))

(assert (=> d!1683994 m!6270220))

(assert (=> b!5223324 m!6269580))

(declare-fun m!6270524 () Bool)

(assert (=> b!5223324 m!6270524))

(assert (=> b!5223325 m!6269340))

(assert (=> b!5223325 m!6270224))

(assert (=> b!5223325 m!6269580))

(assert (=> b!5223325 m!6270224))

(declare-fun m!6270526 () Bool)

(assert (=> b!5223325 m!6270526))

(assert (=> b!5223325 m!6269340))

(assert (=> b!5223325 m!6270228))

(assert (=> b!5223325 m!6270526))

(assert (=> b!5223325 m!6270228))

(declare-fun m!6270528 () Bool)

(assert (=> b!5223325 m!6270528))

(assert (=> b!5222284 d!1683994))

(declare-fun bs!1212860 () Bool)

(declare-fun d!1683996 () Bool)

(assert (= bs!1212860 (and d!1683996 d!1683856)))

(declare-fun lambda!262190 () Int)

(assert (=> bs!1212860 (= lambda!262190 lambda!262167)))

(declare-fun bs!1212861 () Bool)

(assert (= bs!1212861 (and d!1683996 d!1683918)))

(assert (=> bs!1212861 (= lambda!262190 lambda!262172)))

(declare-fun bs!1212862 () Bool)

(assert (= bs!1212862 (and d!1683996 b!5221522)))

(assert (=> bs!1212862 (= (= (head!11193 (t!373911 s!2326)) (h!67064 s!2326)) (= lambda!262190 lambda!262071))))

(declare-fun bs!1212863 () Bool)

(assert (= bs!1212863 (and d!1683996 d!1683898)))

(assert (=> bs!1212863 (= lambda!262190 lambda!262168)))

(declare-fun bs!1212864 () Bool)

(assert (= bs!1212864 (and d!1683996 d!1683914)))

(assert (=> bs!1212864 (= lambda!262190 lambda!262171)))

(declare-fun bs!1212865 () Bool)

(assert (= bs!1212865 (and d!1683996 d!1683974)))

(assert (=> bs!1212865 (= lambda!262190 lambda!262182)))

(assert (=> d!1683996 true))

(assert (=> d!1683996 (= (derivationStepZipper!1081 lt!2143782 (head!11193 (t!373911 s!2326))) (flatMap!540 lt!2143782 lambda!262190))))

(declare-fun bs!1212866 () Bool)

(assert (= bs!1212866 d!1683996))

(declare-fun m!6270530 () Bool)

(assert (=> bs!1212866 m!6270530))

(assert (=> b!5222284 d!1683996))

(assert (=> b!5222284 d!1683858))

(assert (=> b!5222284 d!1683860))

(assert (=> b!5222130 d!1683886))

(declare-fun c!901589 () Bool)

(declare-fun c!901590 () Bool)

(declare-fun bm!368846 () Bool)

(declare-fun call!368852 () Bool)

(assert (=> bm!368846 (= call!368852 (validRegex!6549 (ite c!901589 (reg!15142 lt!2143863) (ite c!901590 (regOne!30139 lt!2143863) (regOne!30138 lt!2143863)))))))

(declare-fun b!5223326 () Bool)

(declare-fun e!3251043 () Bool)

(declare-fun e!3251042 () Bool)

(assert (=> b!5223326 (= e!3251043 e!3251042)))

(declare-fun res!2217731 () Bool)

(assert (=> b!5223326 (=> (not res!2217731) (not e!3251042))))

(declare-fun call!368851 () Bool)

(assert (=> b!5223326 (= res!2217731 call!368851)))

(declare-fun d!1683998 () Bool)

(declare-fun res!2217729 () Bool)

(declare-fun e!3251040 () Bool)

(assert (=> d!1683998 (=> res!2217729 e!3251040)))

(assert (=> d!1683998 (= res!2217729 ((_ is ElementMatch!14813) lt!2143863))))

(assert (=> d!1683998 (= (validRegex!6549 lt!2143863) e!3251040)))

(declare-fun b!5223327 () Bool)

(declare-fun e!3251038 () Bool)

(assert (=> b!5223327 (= e!3251038 call!368852)))

(declare-fun b!5223328 () Bool)

(declare-fun e!3251039 () Bool)

(declare-fun call!368853 () Bool)

(assert (=> b!5223328 (= e!3251039 call!368853)))

(declare-fun bm!368847 () Bool)

(assert (=> bm!368847 (= call!368853 (validRegex!6549 (ite c!901590 (regTwo!30139 lt!2143863) (regTwo!30138 lt!2143863))))))

(declare-fun bm!368848 () Bool)

(assert (=> bm!368848 (= call!368851 call!368852)))

(declare-fun b!5223329 () Bool)

(declare-fun e!3251037 () Bool)

(assert (=> b!5223329 (= e!3251040 e!3251037)))

(assert (=> b!5223329 (= c!901589 ((_ is Star!14813) lt!2143863))))

(declare-fun b!5223330 () Bool)

(declare-fun e!3251041 () Bool)

(assert (=> b!5223330 (= e!3251037 e!3251041)))

(assert (=> b!5223330 (= c!901590 ((_ is Union!14813) lt!2143863))))

(declare-fun b!5223331 () Bool)

(declare-fun res!2217730 () Bool)

(assert (=> b!5223331 (=> (not res!2217730) (not e!3251039))))

(assert (=> b!5223331 (= res!2217730 call!368851)))

(assert (=> b!5223331 (= e!3251041 e!3251039)))

(declare-fun b!5223332 () Bool)

(assert (=> b!5223332 (= e!3251042 call!368853)))

(declare-fun b!5223333 () Bool)

(declare-fun res!2217728 () Bool)

(assert (=> b!5223333 (=> res!2217728 e!3251043)))

(assert (=> b!5223333 (= res!2217728 (not ((_ is Concat!23658) lt!2143863)))))

(assert (=> b!5223333 (= e!3251041 e!3251043)))

(declare-fun b!5223334 () Bool)

(assert (=> b!5223334 (= e!3251037 e!3251038)))

(declare-fun res!2217732 () Bool)

(assert (=> b!5223334 (= res!2217732 (not (nullable!4982 (reg!15142 lt!2143863))))))

(assert (=> b!5223334 (=> (not res!2217732) (not e!3251038))))

(assert (= (and d!1683998 (not res!2217729)) b!5223329))

(assert (= (and b!5223329 c!901589) b!5223334))

(assert (= (and b!5223329 (not c!901589)) b!5223330))

(assert (= (and b!5223334 res!2217732) b!5223327))

(assert (= (and b!5223330 c!901590) b!5223331))

(assert (= (and b!5223330 (not c!901590)) b!5223333))

(assert (= (and b!5223331 res!2217730) b!5223328))

(assert (= (and b!5223333 (not res!2217728)) b!5223326))

(assert (= (and b!5223326 res!2217731) b!5223332))

(assert (= (or b!5223328 b!5223332) bm!368847))

(assert (= (or b!5223331 b!5223326) bm!368848))

(assert (= (or b!5223327 bm!368848) bm!368846))

(declare-fun m!6270532 () Bool)

(assert (=> bm!368846 m!6270532))

(declare-fun m!6270534 () Bool)

(assert (=> bm!368847 m!6270534))

(declare-fun m!6270536 () Bool)

(assert (=> b!5223334 m!6270536))

(assert (=> d!1683498 d!1683998))

(declare-fun d!1684000 () Bool)

(declare-fun res!2217733 () Bool)

(declare-fun e!3251044 () Bool)

(assert (=> d!1684000 (=> res!2217733 e!3251044)))

(assert (=> d!1684000 (= res!2217733 ((_ is Nil!60614) (unfocusZipperList!255 zl!343)))))

(assert (=> d!1684000 (= (forall!14245 (unfocusZipperList!255 zl!343) lambda!262124) e!3251044)))

(declare-fun b!5223335 () Bool)

(declare-fun e!3251045 () Bool)

(assert (=> b!5223335 (= e!3251044 e!3251045)))

(declare-fun res!2217734 () Bool)

(assert (=> b!5223335 (=> (not res!2217734) (not e!3251045))))

(assert (=> b!5223335 (= res!2217734 (dynLambda!23951 lambda!262124 (h!67062 (unfocusZipperList!255 zl!343))))))

(declare-fun b!5223336 () Bool)

(assert (=> b!5223336 (= e!3251045 (forall!14245 (t!373909 (unfocusZipperList!255 zl!343)) lambda!262124))))

(assert (= (and d!1684000 (not res!2217733)) b!5223335))

(assert (= (and b!5223335 res!2217734) b!5223336))

(declare-fun b_lambda!201961 () Bool)

(assert (=> (not b_lambda!201961) (not b!5223335)))

(declare-fun m!6270538 () Bool)

(assert (=> b!5223335 m!6270538))

(declare-fun m!6270540 () Bool)

(assert (=> b!5223336 m!6270540))

(assert (=> d!1683498 d!1684000))

(declare-fun b!5223337 () Bool)

(declare-fun e!3251048 () (InoxSet Context!8394))

(declare-fun e!3251046 () (InoxSet Context!8394))

(assert (=> b!5223337 (= e!3251048 e!3251046)))

(declare-fun c!901591 () Bool)

(assert (=> b!5223337 (= c!901591 ((_ is Cons!60614) (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143761))))))))

(declare-fun bm!368849 () Bool)

(declare-fun call!368854 () (InoxSet Context!8394))

(assert (=> bm!368849 (= call!368854 (derivationStepZipperDown!261 (h!67062 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143761))))) (Context!8395 (t!373909 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143761)))))) (h!67064 s!2326)))))

(declare-fun d!1684002 () Bool)

(declare-fun c!901592 () Bool)

(declare-fun e!3251047 () Bool)

(assert (=> d!1684002 (= c!901592 e!3251047)))

(declare-fun res!2217735 () Bool)

(assert (=> d!1684002 (=> (not res!2217735) (not e!3251047))))

(assert (=> d!1684002 (= res!2217735 ((_ is Cons!60614) (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143761))))))))

(assert (=> d!1684002 (= (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 lt!2143761))) (h!67064 s!2326)) e!3251048)))

(declare-fun b!5223338 () Bool)

(assert (=> b!5223338 (= e!3251046 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223339 () Bool)

(assert (=> b!5223339 (= e!3251046 call!368854)))

(declare-fun b!5223340 () Bool)

(assert (=> b!5223340 (= e!3251048 ((_ map or) call!368854 (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143761)))))) (h!67064 s!2326))))))

(declare-fun b!5223341 () Bool)

(assert (=> b!5223341 (= e!3251047 (nullable!4982 (h!67062 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143761)))))))))

(assert (= (and d!1684002 res!2217735) b!5223341))

(assert (= (and d!1684002 c!901592) b!5223340))

(assert (= (and d!1684002 (not c!901592)) b!5223337))

(assert (= (and b!5223337 c!901591) b!5223339))

(assert (= (and b!5223337 (not c!901591)) b!5223338))

(assert (= (or b!5223340 b!5223339) bm!368849))

(declare-fun m!6270542 () Bool)

(assert (=> bm!368849 m!6270542))

(declare-fun m!6270544 () Bool)

(assert (=> b!5223340 m!6270544))

(declare-fun m!6270546 () Bool)

(assert (=> b!5223341 m!6270546))

(assert (=> b!5222266 d!1684002))

(declare-fun d!1684004 () Bool)

(assert (=> d!1684004 (= (nullable!4982 (reg!15142 (regTwo!30139 (regOne!30138 r!7292)))) (nullableFct!1389 (reg!15142 (regTwo!30139 (regOne!30138 r!7292)))))))

(declare-fun bs!1212867 () Bool)

(assert (= bs!1212867 d!1684004))

(declare-fun m!6270548 () Bool)

(assert (=> bs!1212867 m!6270548))

(assert (=> b!5222195 d!1684004))

(declare-fun d!1684006 () Bool)

(declare-fun res!2217736 () Bool)

(declare-fun e!3251049 () Bool)

(assert (=> d!1684006 (=> res!2217736 e!3251049)))

(assert (=> d!1684006 (= res!2217736 ((_ is Nil!60614) (exprs!4697 setElem!33217)))))

(assert (=> d!1684006 (= (forall!14245 (exprs!4697 setElem!33217) lambda!262117) e!3251049)))

(declare-fun b!5223342 () Bool)

(declare-fun e!3251050 () Bool)

(assert (=> b!5223342 (= e!3251049 e!3251050)))

(declare-fun res!2217737 () Bool)

(assert (=> b!5223342 (=> (not res!2217737) (not e!3251050))))

(assert (=> b!5223342 (= res!2217737 (dynLambda!23951 lambda!262117 (h!67062 (exprs!4697 setElem!33217))))))

(declare-fun b!5223343 () Bool)

(assert (=> b!5223343 (= e!3251050 (forall!14245 (t!373909 (exprs!4697 setElem!33217)) lambda!262117))))

(assert (= (and d!1684006 (not res!2217736)) b!5223342))

(assert (= (and b!5223342 res!2217737) b!5223343))

(declare-fun b_lambda!201963 () Bool)

(assert (=> (not b_lambda!201963) (not b!5223342)))

(declare-fun m!6270550 () Bool)

(assert (=> b!5223342 m!6270550))

(declare-fun m!6270552 () Bool)

(assert (=> b!5223343 m!6270552))

(assert (=> d!1683480 d!1684006))

(declare-fun d!1684008 () Bool)

(assert (=> d!1684008 (= (head!11194 (unfocusZipperList!255 zl!343)) (h!67062 (unfocusZipperList!255 zl!343)))))

(assert (=> b!5222220 d!1684008))

(declare-fun d!1684010 () Bool)

(assert (=> d!1684010 (= (isEmpty!32534 (tail!10291 (exprs!4697 (h!67063 zl!343)))) ((_ is Nil!60614) (tail!10291 (exprs!4697 (h!67063 zl!343)))))))

(assert (=> b!5222154 d!1684010))

(declare-fun d!1684012 () Bool)

(assert (=> d!1684012 (= (tail!10291 (exprs!4697 (h!67063 zl!343))) (t!373909 (exprs!4697 (h!67063 zl!343))))))

(assert (=> b!5222154 d!1684012))

(assert (=> d!1683522 d!1683524))

(declare-fun d!1684014 () Bool)

(assert (=> d!1684014 (= (flatMap!540 lt!2143772 lambda!262071) (dynLambda!23949 lambda!262071 lt!2143780))))

(assert (=> d!1684014 true))

(declare-fun _$13!1730 () Unit!152528)

(assert (=> d!1684014 (= (choose!38842 lt!2143772 lt!2143780 lambda!262071) _$13!1730)))

(declare-fun b_lambda!201965 () Bool)

(assert (=> (not b_lambda!201965) (not d!1684014)))

(declare-fun bs!1212868 () Bool)

(assert (= bs!1212868 d!1684014))

(assert (=> bs!1212868 m!6269010))

(assert (=> bs!1212868 m!6269546))

(assert (=> d!1683522 d!1684014))

(declare-fun d!1684016 () Bool)

(declare-fun c!901593 () Bool)

(assert (=> d!1684016 (= c!901593 (isEmpty!32537 (tail!10290 (t!373911 s!2326))))))

(declare-fun e!3251051 () Bool)

(assert (=> d!1684016 (= (matchZipper!1057 (derivationStepZipper!1081 ((_ map or) lt!2143779 lt!2143771) (head!11193 (t!373911 s!2326))) (tail!10290 (t!373911 s!2326))) e!3251051)))

(declare-fun b!5223344 () Bool)

(assert (=> b!5223344 (= e!3251051 (nullableZipper!1237 (derivationStepZipper!1081 ((_ map or) lt!2143779 lt!2143771) (head!11193 (t!373911 s!2326)))))))

(declare-fun b!5223345 () Bool)

(assert (=> b!5223345 (= e!3251051 (matchZipper!1057 (derivationStepZipper!1081 (derivationStepZipper!1081 ((_ map or) lt!2143779 lt!2143771) (head!11193 (t!373911 s!2326))) (head!11193 (tail!10290 (t!373911 s!2326)))) (tail!10290 (tail!10290 (t!373911 s!2326)))))))

(assert (= (and d!1684016 c!901593) b!5223344))

(assert (= (and d!1684016 (not c!901593)) b!5223345))

(assert (=> d!1684016 m!6269340))

(assert (=> d!1684016 m!6270220))

(assert (=> b!5223344 m!6269468))

(declare-fun m!6270554 () Bool)

(assert (=> b!5223344 m!6270554))

(assert (=> b!5223345 m!6269340))

(assert (=> b!5223345 m!6270224))

(assert (=> b!5223345 m!6269468))

(assert (=> b!5223345 m!6270224))

(declare-fun m!6270556 () Bool)

(assert (=> b!5223345 m!6270556))

(assert (=> b!5223345 m!6269340))

(assert (=> b!5223345 m!6270228))

(assert (=> b!5223345 m!6270556))

(assert (=> b!5223345 m!6270228))

(declare-fun m!6270558 () Bool)

(assert (=> b!5223345 m!6270558))

(assert (=> b!5222168 d!1684016))

(declare-fun bs!1212869 () Bool)

(declare-fun d!1684018 () Bool)

(assert (= bs!1212869 (and d!1684018 d!1683856)))

(declare-fun lambda!262191 () Int)

(assert (=> bs!1212869 (= lambda!262191 lambda!262167)))

(declare-fun bs!1212870 () Bool)

(assert (= bs!1212870 (and d!1684018 d!1683996)))

(assert (=> bs!1212870 (= lambda!262191 lambda!262190)))

(declare-fun bs!1212871 () Bool)

(assert (= bs!1212871 (and d!1684018 d!1683918)))

(assert (=> bs!1212871 (= lambda!262191 lambda!262172)))

(declare-fun bs!1212872 () Bool)

(assert (= bs!1212872 (and d!1684018 b!5221522)))

(assert (=> bs!1212872 (= (= (head!11193 (t!373911 s!2326)) (h!67064 s!2326)) (= lambda!262191 lambda!262071))))

(declare-fun bs!1212873 () Bool)

(assert (= bs!1212873 (and d!1684018 d!1683898)))

(assert (=> bs!1212873 (= lambda!262191 lambda!262168)))

(declare-fun bs!1212874 () Bool)

(assert (= bs!1212874 (and d!1684018 d!1683914)))

(assert (=> bs!1212874 (= lambda!262191 lambda!262171)))

(declare-fun bs!1212875 () Bool)

(assert (= bs!1212875 (and d!1684018 d!1683974)))

(assert (=> bs!1212875 (= lambda!262191 lambda!262182)))

(assert (=> d!1684018 true))

(assert (=> d!1684018 (= (derivationStepZipper!1081 ((_ map or) lt!2143779 lt!2143771) (head!11193 (t!373911 s!2326))) (flatMap!540 ((_ map or) lt!2143779 lt!2143771) lambda!262191))))

(declare-fun bs!1212876 () Bool)

(assert (= bs!1212876 d!1684018))

(declare-fun m!6270560 () Bool)

(assert (=> bs!1212876 m!6270560))

(assert (=> b!5222168 d!1684018))

(assert (=> b!5222168 d!1683858))

(assert (=> b!5222168 d!1683860))

(declare-fun d!1684020 () Bool)

(declare-fun e!3251052 () Bool)

(assert (=> d!1684020 e!3251052))

(declare-fun res!2217738 () Bool)

(assert (=> d!1684020 (=> (not res!2217738) (not e!3251052))))

(declare-fun lt!2143911 () List!60740)

(assert (=> d!1684020 (= res!2217738 (= (content!10751 lt!2143911) ((_ map or) (content!10751 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616))) (content!10751 (t!373911 s!2326)))))))

(declare-fun e!3251053 () List!60740)

(assert (=> d!1684020 (= lt!2143911 e!3251053)))

(declare-fun c!901594 () Bool)

(assert (=> d!1684020 (= c!901594 ((_ is Nil!60616) (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616))))))

(assert (=> d!1684020 (= (++!13217 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)) (t!373911 s!2326)) lt!2143911)))

(declare-fun b!5223346 () Bool)

(assert (=> b!5223346 (= e!3251053 (t!373911 s!2326))))

(declare-fun b!5223347 () Bool)

(assert (=> b!5223347 (= e!3251053 (Cons!60616 (h!67064 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616))) (++!13217 (t!373911 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616))) (t!373911 s!2326))))))

(declare-fun b!5223349 () Bool)

(assert (=> b!5223349 (= e!3251052 (or (not (= (t!373911 s!2326) Nil!60616)) (= lt!2143911 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)))))))

(declare-fun b!5223348 () Bool)

(declare-fun res!2217739 () Bool)

(assert (=> b!5223348 (=> (not res!2217739) (not e!3251052))))

(assert (=> b!5223348 (= res!2217739 (= (size!39727 lt!2143911) (+ (size!39727 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616))) (size!39727 (t!373911 s!2326)))))))

(assert (= (and d!1684020 c!901594) b!5223346))

(assert (= (and d!1684020 (not c!901594)) b!5223347))

(assert (= (and d!1684020 res!2217738) b!5223348))

(assert (= (and b!5223348 res!2217739) b!5223349))

(declare-fun m!6270562 () Bool)

(assert (=> d!1684020 m!6270562))

(assert (=> d!1684020 m!6269358))

(declare-fun m!6270564 () Bool)

(assert (=> d!1684020 m!6270564))

(declare-fun m!6270566 () Bool)

(assert (=> d!1684020 m!6270566))

(declare-fun m!6270568 () Bool)

(assert (=> b!5223347 m!6270568))

(declare-fun m!6270570 () Bool)

(assert (=> b!5223348 m!6270570))

(assert (=> b!5223348 m!6269358))

(declare-fun m!6270572 () Bool)

(assert (=> b!5223348 m!6270572))

(declare-fun m!6270574 () Bool)

(assert (=> b!5223348 m!6270574))

(assert (=> b!5221981 d!1684020))

(declare-fun d!1684022 () Bool)

(declare-fun e!3251054 () Bool)

(assert (=> d!1684022 e!3251054))

(declare-fun res!2217740 () Bool)

(assert (=> d!1684022 (=> (not res!2217740) (not e!3251054))))

(declare-fun lt!2143912 () List!60740)

(assert (=> d!1684022 (= res!2217740 (= (content!10751 lt!2143912) ((_ map or) (content!10751 Nil!60616) (content!10751 (Cons!60616 (h!67064 s!2326) Nil!60616)))))))

(declare-fun e!3251055 () List!60740)

(assert (=> d!1684022 (= lt!2143912 e!3251055)))

(declare-fun c!901595 () Bool)

(assert (=> d!1684022 (= c!901595 ((_ is Nil!60616) Nil!60616))))

(assert (=> d!1684022 (= (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)) lt!2143912)))

(declare-fun b!5223350 () Bool)

(assert (=> b!5223350 (= e!3251055 (Cons!60616 (h!67064 s!2326) Nil!60616))))

(declare-fun b!5223351 () Bool)

(assert (=> b!5223351 (= e!3251055 (Cons!60616 (h!67064 Nil!60616) (++!13217 (t!373911 Nil!60616) (Cons!60616 (h!67064 s!2326) Nil!60616))))))

(declare-fun b!5223353 () Bool)

(assert (=> b!5223353 (= e!3251054 (or (not (= (Cons!60616 (h!67064 s!2326) Nil!60616) Nil!60616)) (= lt!2143912 Nil!60616)))))

(declare-fun b!5223352 () Bool)

(declare-fun res!2217741 () Bool)

(assert (=> b!5223352 (=> (not res!2217741) (not e!3251054))))

(assert (=> b!5223352 (= res!2217741 (= (size!39727 lt!2143912) (+ (size!39727 Nil!60616) (size!39727 (Cons!60616 (h!67064 s!2326) Nil!60616)))))))

(assert (= (and d!1684022 c!901595) b!5223350))

(assert (= (and d!1684022 (not c!901595)) b!5223351))

(assert (= (and d!1684022 res!2217740) b!5223352))

(assert (= (and b!5223352 res!2217741) b!5223353))

(declare-fun m!6270576 () Bool)

(assert (=> d!1684022 m!6270576))

(declare-fun m!6270578 () Bool)

(assert (=> d!1684022 m!6270578))

(declare-fun m!6270580 () Bool)

(assert (=> d!1684022 m!6270580))

(declare-fun m!6270582 () Bool)

(assert (=> b!5223351 m!6270582))

(declare-fun m!6270584 () Bool)

(assert (=> b!5223352 m!6270584))

(declare-fun m!6270586 () Bool)

(assert (=> b!5223352 m!6270586))

(declare-fun m!6270588 () Bool)

(assert (=> b!5223352 m!6270588))

(assert (=> b!5221981 d!1684022))

(declare-fun d!1684024 () Bool)

(assert (=> d!1684024 (= (++!13217 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)) (t!373911 s!2326)) s!2326)))

(declare-fun lt!2143915 () Unit!152528)

(declare-fun choose!38846 (List!60740 C!29896 List!60740 List!60740) Unit!152528)

(assert (=> d!1684024 (= lt!2143915 (choose!38846 Nil!60616 (h!67064 s!2326) (t!373911 s!2326) s!2326))))

(assert (=> d!1684024 (= (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) (t!373911 s!2326))) s!2326)))

(assert (=> d!1684024 (= (lemmaMoveElementToOtherListKeepsConcatEq!1632 Nil!60616 (h!67064 s!2326) (t!373911 s!2326) s!2326) lt!2143915)))

(declare-fun bs!1212877 () Bool)

(assert (= bs!1212877 d!1684024))

(assert (=> bs!1212877 m!6269358))

(assert (=> bs!1212877 m!6269358))

(assert (=> bs!1212877 m!6269360))

(declare-fun m!6270590 () Bool)

(assert (=> bs!1212877 m!6270590))

(declare-fun m!6270592 () Bool)

(assert (=> bs!1212877 m!6270592))

(assert (=> b!5221981 d!1684024))

(declare-fun b!5223354 () Bool)

(declare-fun e!3251059 () Option!14924)

(declare-fun e!3251057 () Option!14924)

(assert (=> b!5223354 (= e!3251059 e!3251057)))

(declare-fun c!901596 () Bool)

(assert (=> b!5223354 (= c!901596 ((_ is Nil!60616) (t!373911 s!2326)))))

(declare-fun b!5223355 () Bool)

(declare-fun lt!2143918 () Unit!152528)

(declare-fun lt!2143916 () Unit!152528)

(assert (=> b!5223355 (= lt!2143918 lt!2143916)))

(assert (=> b!5223355 (= (++!13217 (++!13217 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)) (Cons!60616 (h!67064 (t!373911 s!2326)) Nil!60616)) (t!373911 (t!373911 s!2326))) s!2326)))

(assert (=> b!5223355 (= lt!2143916 (lemmaMoveElementToOtherListKeepsConcatEq!1632 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)) (h!67064 (t!373911 s!2326)) (t!373911 (t!373911 s!2326)) s!2326))))

(assert (=> b!5223355 (= e!3251057 (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) (++!13217 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)) (Cons!60616 (h!67064 (t!373911 s!2326)) Nil!60616)) (t!373911 (t!373911 s!2326)) s!2326))))

(declare-fun b!5223357 () Bool)

(assert (=> b!5223357 (= e!3251057 None!14923)))

(declare-fun b!5223358 () Bool)

(declare-fun e!3251058 () Bool)

(assert (=> b!5223358 (= e!3251058 (matchR!6998 (regTwo!30138 r!7292) (t!373911 s!2326)))))

(declare-fun b!5223359 () Bool)

(declare-fun e!3251056 () Bool)

(declare-fun lt!2143917 () Option!14924)

(assert (=> b!5223359 (= e!3251056 (not (isDefined!11627 lt!2143917)))))

(declare-fun b!5223360 () Bool)

(declare-fun res!2217746 () Bool)

(declare-fun e!3251060 () Bool)

(assert (=> b!5223360 (=> (not res!2217746) (not e!3251060))))

(assert (=> b!5223360 (= res!2217746 (matchR!6998 (regOne!30138 r!7292) (_1!35315 (get!20829 lt!2143917))))))

(declare-fun b!5223356 () Bool)

(assert (=> b!5223356 (= e!3251060 (= (++!13217 (_1!35315 (get!20829 lt!2143917)) (_2!35315 (get!20829 lt!2143917))) s!2326))))

(declare-fun d!1684026 () Bool)

(assert (=> d!1684026 e!3251056))

(declare-fun res!2217743 () Bool)

(assert (=> d!1684026 (=> res!2217743 e!3251056)))

(assert (=> d!1684026 (= res!2217743 e!3251060)))

(declare-fun res!2217745 () Bool)

(assert (=> d!1684026 (=> (not res!2217745) (not e!3251060))))

(assert (=> d!1684026 (= res!2217745 (isDefined!11627 lt!2143917))))

(assert (=> d!1684026 (= lt!2143917 e!3251059)))

(declare-fun c!901597 () Bool)

(assert (=> d!1684026 (= c!901597 e!3251058)))

(declare-fun res!2217742 () Bool)

(assert (=> d!1684026 (=> (not res!2217742) (not e!3251058))))

(assert (=> d!1684026 (= res!2217742 (matchR!6998 (regOne!30138 r!7292) (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616))))))

(assert (=> d!1684026 (validRegex!6549 (regOne!30138 r!7292))))

(assert (=> d!1684026 (= (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)) (t!373911 s!2326) s!2326) lt!2143917)))

(declare-fun b!5223361 () Bool)

(declare-fun res!2217744 () Bool)

(assert (=> b!5223361 (=> (not res!2217744) (not e!3251060))))

(assert (=> b!5223361 (= res!2217744 (matchR!6998 (regTwo!30138 r!7292) (_2!35315 (get!20829 lt!2143917))))))

(declare-fun b!5223362 () Bool)

(assert (=> b!5223362 (= e!3251059 (Some!14923 (tuple2!64025 (++!13217 Nil!60616 (Cons!60616 (h!67064 s!2326) Nil!60616)) (t!373911 s!2326))))))

(assert (= (and d!1684026 res!2217742) b!5223358))

(assert (= (and d!1684026 c!901597) b!5223362))

(assert (= (and d!1684026 (not c!901597)) b!5223354))

(assert (= (and b!5223354 c!901596) b!5223357))

(assert (= (and b!5223354 (not c!901596)) b!5223355))

(assert (= (and d!1684026 res!2217745) b!5223360))

(assert (= (and b!5223360 res!2217746) b!5223361))

(assert (= (and b!5223361 res!2217744) b!5223356))

(assert (= (and d!1684026 (not res!2217743)) b!5223359))

(declare-fun m!6270594 () Bool)

(assert (=> b!5223358 m!6270594))

(declare-fun m!6270596 () Bool)

(assert (=> b!5223359 m!6270596))

(declare-fun m!6270598 () Bool)

(assert (=> b!5223360 m!6270598))

(declare-fun m!6270600 () Bool)

(assert (=> b!5223360 m!6270600))

(assert (=> d!1684026 m!6270596))

(assert (=> d!1684026 m!6269358))

(declare-fun m!6270602 () Bool)

(assert (=> d!1684026 m!6270602))

(assert (=> d!1684026 m!6269354))

(assert (=> b!5223356 m!6270598))

(declare-fun m!6270604 () Bool)

(assert (=> b!5223356 m!6270604))

(assert (=> b!5223355 m!6269358))

(declare-fun m!6270606 () Bool)

(assert (=> b!5223355 m!6270606))

(assert (=> b!5223355 m!6270606))

(declare-fun m!6270608 () Bool)

(assert (=> b!5223355 m!6270608))

(assert (=> b!5223355 m!6269358))

(declare-fun m!6270610 () Bool)

(assert (=> b!5223355 m!6270610))

(assert (=> b!5223355 m!6270606))

(declare-fun m!6270612 () Bool)

(assert (=> b!5223355 m!6270612))

(assert (=> b!5223361 m!6270598))

(declare-fun m!6270614 () Bool)

(assert (=> b!5223361 m!6270614))

(assert (=> b!5221981 d!1684026))

(assert (=> bs!1212585 d!1683526))

(declare-fun call!368856 () Bool)

(declare-fun bm!368850 () Bool)

(declare-fun c!901599 () Bool)

(declare-fun c!901598 () Bool)

(assert (=> bm!368850 (= call!368856 (validRegex!6549 (ite c!901598 (reg!15142 lt!2143856) (ite c!901599 (regOne!30139 lt!2143856) (regOne!30138 lt!2143856)))))))

(declare-fun b!5223363 () Bool)

(declare-fun e!3251067 () Bool)

(declare-fun e!3251066 () Bool)

(assert (=> b!5223363 (= e!3251067 e!3251066)))

(declare-fun res!2217750 () Bool)

(assert (=> b!5223363 (=> (not res!2217750) (not e!3251066))))

(declare-fun call!368855 () Bool)

(assert (=> b!5223363 (= res!2217750 call!368855)))

(declare-fun d!1684028 () Bool)

(declare-fun res!2217748 () Bool)

(declare-fun e!3251064 () Bool)

(assert (=> d!1684028 (=> res!2217748 e!3251064)))

(assert (=> d!1684028 (= res!2217748 ((_ is ElementMatch!14813) lt!2143856))))

(assert (=> d!1684028 (= (validRegex!6549 lt!2143856) e!3251064)))

(declare-fun b!5223364 () Bool)

(declare-fun e!3251062 () Bool)

(assert (=> b!5223364 (= e!3251062 call!368856)))

(declare-fun b!5223365 () Bool)

(declare-fun e!3251063 () Bool)

(declare-fun call!368857 () Bool)

(assert (=> b!5223365 (= e!3251063 call!368857)))

(declare-fun bm!368851 () Bool)

(assert (=> bm!368851 (= call!368857 (validRegex!6549 (ite c!901599 (regTwo!30139 lt!2143856) (regTwo!30138 lt!2143856))))))

(declare-fun bm!368852 () Bool)

(assert (=> bm!368852 (= call!368855 call!368856)))

(declare-fun b!5223366 () Bool)

(declare-fun e!3251061 () Bool)

(assert (=> b!5223366 (= e!3251064 e!3251061)))

(assert (=> b!5223366 (= c!901598 ((_ is Star!14813) lt!2143856))))

(declare-fun b!5223367 () Bool)

(declare-fun e!3251065 () Bool)

(assert (=> b!5223367 (= e!3251061 e!3251065)))

(assert (=> b!5223367 (= c!901599 ((_ is Union!14813) lt!2143856))))

(declare-fun b!5223368 () Bool)

(declare-fun res!2217749 () Bool)

(assert (=> b!5223368 (=> (not res!2217749) (not e!3251063))))

(assert (=> b!5223368 (= res!2217749 call!368855)))

(assert (=> b!5223368 (= e!3251065 e!3251063)))

(declare-fun b!5223369 () Bool)

(assert (=> b!5223369 (= e!3251066 call!368857)))

(declare-fun b!5223370 () Bool)

(declare-fun res!2217747 () Bool)

(assert (=> b!5223370 (=> res!2217747 e!3251067)))

(assert (=> b!5223370 (= res!2217747 (not ((_ is Concat!23658) lt!2143856)))))

(assert (=> b!5223370 (= e!3251065 e!3251067)))

(declare-fun b!5223371 () Bool)

(assert (=> b!5223371 (= e!3251061 e!3251062)))

(declare-fun res!2217751 () Bool)

(assert (=> b!5223371 (= res!2217751 (not (nullable!4982 (reg!15142 lt!2143856))))))

(assert (=> b!5223371 (=> (not res!2217751) (not e!3251062))))

(assert (= (and d!1684028 (not res!2217748)) b!5223366))

(assert (= (and b!5223366 c!901598) b!5223371))

(assert (= (and b!5223366 (not c!901598)) b!5223367))

(assert (= (and b!5223371 res!2217751) b!5223364))

(assert (= (and b!5223367 c!901599) b!5223368))

(assert (= (and b!5223367 (not c!901599)) b!5223370))

(assert (= (and b!5223368 res!2217749) b!5223365))

(assert (= (and b!5223370 (not res!2217747)) b!5223363))

(assert (= (and b!5223363 res!2217750) b!5223369))

(assert (= (or b!5223365 b!5223369) bm!368851))

(assert (= (or b!5223368 b!5223363) bm!368852))

(assert (= (or b!5223364 bm!368852) bm!368850))

(declare-fun m!6270616 () Bool)

(assert (=> bm!368850 m!6270616))

(declare-fun m!6270618 () Bool)

(assert (=> bm!368851 m!6270618))

(declare-fun m!6270620 () Bool)

(assert (=> b!5223371 m!6270620))

(assert (=> d!1683482 d!1684028))

(declare-fun d!1684030 () Bool)

(declare-fun res!2217752 () Bool)

(declare-fun e!3251068 () Bool)

(assert (=> d!1684030 (=> res!2217752 e!3251068)))

(assert (=> d!1684030 (= res!2217752 ((_ is Nil!60614) (exprs!4697 (h!67063 zl!343))))))

(assert (=> d!1684030 (= (forall!14245 (exprs!4697 (h!67063 zl!343)) lambda!262120) e!3251068)))

(declare-fun b!5223372 () Bool)

(declare-fun e!3251069 () Bool)

(assert (=> b!5223372 (= e!3251068 e!3251069)))

(declare-fun res!2217753 () Bool)

(assert (=> b!5223372 (=> (not res!2217753) (not e!3251069))))

(assert (=> b!5223372 (= res!2217753 (dynLambda!23951 lambda!262120 (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun b!5223373 () Bool)

(assert (=> b!5223373 (= e!3251069 (forall!14245 (t!373909 (exprs!4697 (h!67063 zl!343))) lambda!262120))))

(assert (= (and d!1684030 (not res!2217752)) b!5223372))

(assert (= (and b!5223372 res!2217753) b!5223373))

(declare-fun b_lambda!201967 () Bool)

(assert (=> (not b_lambda!201967) (not b!5223372)))

(declare-fun m!6270622 () Bool)

(assert (=> b!5223372 m!6270622))

(declare-fun m!6270624 () Bool)

(assert (=> b!5223373 m!6270624))

(assert (=> d!1683482 d!1684030))

(declare-fun d!1684032 () Bool)

(assert (=> d!1684032 (= ($colon$colon!1287 (exprs!4697 lt!2143761) (ite (or c!901304 c!901301) (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (h!67062 (exprs!4697 (h!67063 zl!343))))) (Cons!60614 (ite (or c!901304 c!901301) (regTwo!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))) (h!67062 (exprs!4697 (h!67063 zl!343)))) (exprs!4697 lt!2143761)))))

(assert (=> bm!368617 d!1684032))

(declare-fun d!1684034 () Bool)

(assert (=> d!1684034 (= (nullable!4982 (h!67062 (exprs!4697 lt!2143780))) (nullableFct!1389 (h!67062 (exprs!4697 lt!2143780))))))

(declare-fun bs!1212878 () Bool)

(assert (= bs!1212878 d!1684034))

(declare-fun m!6270626 () Bool)

(assert (=> bs!1212878 m!6270626))

(assert (=> b!5222272 d!1684034))

(declare-fun d!1684036 () Bool)

(assert (=> d!1684036 (= (nullable!4982 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))) (nullableFct!1389 (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))))))

(declare-fun bs!1212879 () Bool)

(assert (= bs!1212879 d!1684036))

(declare-fun m!6270628 () Bool)

(assert (=> bs!1212879 m!6270628))

(assert (=> b!5222261 d!1684036))

(declare-fun bm!368853 () Bool)

(declare-fun call!368858 () List!60738)

(declare-fun call!368859 () List!60738)

(assert (=> bm!368853 (= call!368858 call!368859)))

(declare-fun b!5223375 () Bool)

(declare-fun e!3251072 () (InoxSet Context!8394))

(declare-fun call!368863 () (InoxSet Context!8394))

(assert (=> b!5223375 (= e!3251072 call!368863)))

(declare-fun b!5223376 () Bool)

(declare-fun e!3251074 () (InoxSet Context!8394))

(declare-fun call!368860 () (InoxSet Context!8394))

(declare-fun call!368861 () (InoxSet Context!8394))

(assert (=> b!5223376 (= e!3251074 ((_ map or) call!368860 call!368861))))

(declare-fun b!5223377 () Bool)

(declare-fun e!3251071 () (InoxSet Context!8394))

(assert (=> b!5223377 (= e!3251071 call!368863)))

(declare-fun b!5223378 () Bool)

(declare-fun e!3251070 () (InoxSet Context!8394))

(declare-fun e!3251075 () (InoxSet Context!8394))

(assert (=> b!5223378 (= e!3251070 e!3251075)))

(declare-fun c!901602 () Bool)

(assert (=> b!5223378 (= c!901602 ((_ is Union!14813) (h!67062 (exprs!4697 lt!2143780))))))

(declare-fun bm!368854 () Bool)

(assert (=> bm!368854 (= call!368863 call!368861)))

(declare-fun bm!368855 () Bool)

(assert (=> bm!368855 (= call!368860 (derivationStepZipperDown!261 (ite c!901602 (regOne!30139 (h!67062 (exprs!4697 lt!2143780))) (regOne!30138 (h!67062 (exprs!4697 lt!2143780)))) (ite c!901602 (Context!8395 (t!373909 (exprs!4697 lt!2143780))) (Context!8395 call!368859)) (h!67064 s!2326)))))

(declare-fun bm!368856 () Bool)

(declare-fun c!901603 () Bool)

(declare-fun c!901600 () Bool)

(assert (=> bm!368856 (= call!368859 ($colon$colon!1287 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143780)))) (ite (or c!901603 c!901600) (regTwo!30138 (h!67062 (exprs!4697 lt!2143780))) (h!67062 (exprs!4697 lt!2143780)))))))

(declare-fun b!5223379 () Bool)

(assert (=> b!5223379 (= e!3251072 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223380 () Bool)

(assert (=> b!5223380 (= e!3251070 (store ((as const (Array Context!8394 Bool)) false) (Context!8395 (t!373909 (exprs!4697 lt!2143780))) true))))

(declare-fun b!5223381 () Bool)

(declare-fun call!368862 () (InoxSet Context!8394))

(assert (=> b!5223381 (= e!3251075 ((_ map or) call!368860 call!368862))))

(declare-fun b!5223382 () Bool)

(declare-fun c!901601 () Bool)

(assert (=> b!5223382 (= c!901601 ((_ is Star!14813) (h!67062 (exprs!4697 lt!2143780))))))

(assert (=> b!5223382 (= e!3251071 e!3251072)))

(declare-fun d!1684038 () Bool)

(declare-fun c!901604 () Bool)

(assert (=> d!1684038 (= c!901604 (and ((_ is ElementMatch!14813) (h!67062 (exprs!4697 lt!2143780))) (= (c!901095 (h!67062 (exprs!4697 lt!2143780))) (h!67064 s!2326))))))

(assert (=> d!1684038 (= (derivationStepZipperDown!261 (h!67062 (exprs!4697 lt!2143780)) (Context!8395 (t!373909 (exprs!4697 lt!2143780))) (h!67064 s!2326)) e!3251070)))

(declare-fun b!5223374 () Bool)

(declare-fun e!3251073 () Bool)

(assert (=> b!5223374 (= c!901603 e!3251073)))

(declare-fun res!2217754 () Bool)

(assert (=> b!5223374 (=> (not res!2217754) (not e!3251073))))

(assert (=> b!5223374 (= res!2217754 ((_ is Concat!23658) (h!67062 (exprs!4697 lt!2143780))))))

(assert (=> b!5223374 (= e!3251075 e!3251074)))

(declare-fun bm!368857 () Bool)

(assert (=> bm!368857 (= call!368862 (derivationStepZipperDown!261 (ite c!901602 (regTwo!30139 (h!67062 (exprs!4697 lt!2143780))) (ite c!901603 (regTwo!30138 (h!67062 (exprs!4697 lt!2143780))) (ite c!901600 (regOne!30138 (h!67062 (exprs!4697 lt!2143780))) (reg!15142 (h!67062 (exprs!4697 lt!2143780)))))) (ite (or c!901602 c!901603) (Context!8395 (t!373909 (exprs!4697 lt!2143780))) (Context!8395 call!368858)) (h!67064 s!2326)))))

(declare-fun bm!368858 () Bool)

(assert (=> bm!368858 (= call!368861 call!368862)))

(declare-fun b!5223383 () Bool)

(assert (=> b!5223383 (= e!3251073 (nullable!4982 (regOne!30138 (h!67062 (exprs!4697 lt!2143780)))))))

(declare-fun b!5223384 () Bool)

(assert (=> b!5223384 (= e!3251074 e!3251071)))

(assert (=> b!5223384 (= c!901600 ((_ is Concat!23658) (h!67062 (exprs!4697 lt!2143780))))))

(assert (= (and d!1684038 c!901604) b!5223380))

(assert (= (and d!1684038 (not c!901604)) b!5223378))

(assert (= (and b!5223378 c!901602) b!5223381))

(assert (= (and b!5223378 (not c!901602)) b!5223374))

(assert (= (and b!5223374 res!2217754) b!5223383))

(assert (= (and b!5223374 c!901603) b!5223376))

(assert (= (and b!5223374 (not c!901603)) b!5223384))

(assert (= (and b!5223384 c!901600) b!5223377))

(assert (= (and b!5223384 (not c!901600)) b!5223382))

(assert (= (and b!5223382 c!901601) b!5223375))

(assert (= (and b!5223382 (not c!901601)) b!5223379))

(assert (= (or b!5223377 b!5223375) bm!368853))

(assert (= (or b!5223377 b!5223375) bm!368854))

(assert (= (or b!5223376 bm!368853) bm!368856))

(assert (= (or b!5223376 bm!368854) bm!368858))

(assert (= (or b!5223381 bm!368858) bm!368857))

(assert (= (or b!5223381 b!5223376) bm!368855))

(declare-fun m!6270630 () Bool)

(assert (=> bm!368857 m!6270630))

(declare-fun m!6270632 () Bool)

(assert (=> b!5223383 m!6270632))

(declare-fun m!6270634 () Bool)

(assert (=> bm!368856 m!6270634))

(declare-fun m!6270636 () Bool)

(assert (=> bm!368855 m!6270636))

(declare-fun m!6270638 () Bool)

(assert (=> b!5223380 m!6270638))

(assert (=> bm!368621 d!1684038))

(declare-fun bs!1212880 () Bool)

(declare-fun d!1684040 () Bool)

(assert (= bs!1212880 (and d!1684040 d!1683922)))

(declare-fun lambda!262192 () Int)

(assert (=> bs!1212880 (= lambda!262192 lambda!262175)))

(declare-fun bs!1212881 () Bool)

(assert (= bs!1212881 (and d!1684040 d!1683948)))

(assert (=> bs!1212881 (= lambda!262192 lambda!262178)))

(declare-fun bs!1212882 () Bool)

(assert (= bs!1212882 (and d!1684040 d!1683964)))

(assert (=> bs!1212882 (= lambda!262192 lambda!262181)))

(declare-fun bs!1212883 () Bool)

(assert (= bs!1212883 (and d!1684040 d!1683976)))

(assert (=> bs!1212883 (= lambda!262192 lambda!262183)))

(assert (=> d!1684040 (= (nullableZipper!1237 ((_ map or) lt!2143782 lt!2143771)) (exists!1972 ((_ map or) lt!2143782 lt!2143771) lambda!262192))))

(declare-fun bs!1212884 () Bool)

(assert (= bs!1212884 d!1684040))

(declare-fun m!6270640 () Bool)

(assert (=> bs!1212884 m!6270640))

(assert (=> b!5221960 d!1684040))

(declare-fun b!5223385 () Bool)

(declare-fun e!3251078 () (InoxSet Context!8394))

(declare-fun e!3251076 () (InoxSet Context!8394))

(assert (=> b!5223385 (= e!3251078 e!3251076)))

(declare-fun c!901605 () Bool)

(assert (=> b!5223385 (= c!901605 ((_ is Cons!60614) (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143763))))))))

(declare-fun bm!368859 () Bool)

(declare-fun call!368864 () (InoxSet Context!8394))

(assert (=> bm!368859 (= call!368864 (derivationStepZipperDown!261 (h!67062 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143763))))) (Context!8395 (t!373909 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143763)))))) (h!67064 s!2326)))))

(declare-fun d!1684042 () Bool)

(declare-fun c!901606 () Bool)

(declare-fun e!3251077 () Bool)

(assert (=> d!1684042 (= c!901606 e!3251077)))

(declare-fun res!2217755 () Bool)

(assert (=> d!1684042 (=> (not res!2217755) (not e!3251077))))

(assert (=> d!1684042 (= res!2217755 ((_ is Cons!60614) (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143763))))))))

(assert (=> d!1684042 (= (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 lt!2143763))) (h!67064 s!2326)) e!3251078)))

(declare-fun b!5223386 () Bool)

(assert (=> b!5223386 (= e!3251076 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223387 () Bool)

(assert (=> b!5223387 (= e!3251076 call!368864)))

(declare-fun b!5223388 () Bool)

(assert (=> b!5223388 (= e!3251078 ((_ map or) call!368864 (derivationStepZipperUp!185 (Context!8395 (t!373909 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143763)))))) (h!67064 s!2326))))))

(declare-fun b!5223389 () Bool)

(assert (=> b!5223389 (= e!3251077 (nullable!4982 (h!67062 (exprs!4697 (Context!8395 (t!373909 (exprs!4697 lt!2143763)))))))))

(assert (= (and d!1684042 res!2217755) b!5223389))

(assert (= (and d!1684042 c!901606) b!5223388))

(assert (= (and d!1684042 (not c!901606)) b!5223385))

(assert (= (and b!5223385 c!901605) b!5223387))

(assert (= (and b!5223385 (not c!901605)) b!5223386))

(assert (= (or b!5223388 b!5223387) bm!368859))

(declare-fun m!6270642 () Bool)

(assert (=> bm!368859 m!6270642))

(declare-fun m!6270644 () Bool)

(assert (=> b!5223388 m!6270644))

(declare-fun m!6270646 () Bool)

(assert (=> b!5223389 m!6270646))

(assert (=> b!5222276 d!1684042))

(declare-fun bm!368860 () Bool)

(declare-fun call!368865 () List!60738)

(declare-fun call!368866 () List!60738)

(assert (=> bm!368860 (= call!368865 call!368866)))

(declare-fun b!5223391 () Bool)

(declare-fun e!3251081 () (InoxSet Context!8394))

(declare-fun call!368870 () (InoxSet Context!8394))

(assert (=> b!5223391 (= e!3251081 call!368870)))

(declare-fun b!5223392 () Bool)

(declare-fun e!3251083 () (InoxSet Context!8394))

(declare-fun call!368867 () (InoxSet Context!8394))

(declare-fun call!368868 () (InoxSet Context!8394))

(assert (=> b!5223392 (= e!3251083 ((_ map or) call!368867 call!368868))))

(declare-fun b!5223393 () Bool)

(declare-fun e!3251080 () (InoxSet Context!8394))

(assert (=> b!5223393 (= e!3251080 call!368870)))

(declare-fun b!5223394 () Bool)

(declare-fun e!3251079 () (InoxSet Context!8394))

(declare-fun e!3251084 () (InoxSet Context!8394))

(assert (=> b!5223394 (= e!3251079 e!3251084)))

(declare-fun c!901609 () Bool)

(assert (=> b!5223394 (= c!901609 ((_ is Union!14813) (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))))))

(declare-fun bm!368861 () Bool)

(assert (=> bm!368861 (= call!368870 call!368868)))

(declare-fun bm!368862 () Bool)

(assert (=> bm!368862 (= call!368867 (derivationStepZipperDown!261 (ite c!901609 (regOne!30139 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))) (regOne!30138 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292)))))) (ite c!901609 (ite c!901233 lt!2143761 (Context!8395 call!368592)) (Context!8395 call!368866)) (h!67064 s!2326)))))

(declare-fun c!901610 () Bool)

(declare-fun bm!368863 () Bool)

(declare-fun c!901607 () Bool)

(assert (=> bm!368863 (= call!368866 ($colon$colon!1287 (exprs!4697 (ite c!901233 lt!2143761 (Context!8395 call!368592))) (ite (or c!901610 c!901607) (regTwo!30138 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))) (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292)))))))))

(declare-fun b!5223395 () Bool)

(assert (=> b!5223395 (= e!3251081 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223396 () Bool)

(assert (=> b!5223396 (= e!3251079 (store ((as const (Array Context!8394 Bool)) false) (ite c!901233 lt!2143761 (Context!8395 call!368592)) true))))

(declare-fun b!5223397 () Bool)

(declare-fun call!368869 () (InoxSet Context!8394))

(assert (=> b!5223397 (= e!3251084 ((_ map or) call!368867 call!368869))))

(declare-fun b!5223398 () Bool)

(declare-fun c!901608 () Bool)

(assert (=> b!5223398 (= c!901608 ((_ is Star!14813) (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))))))

(assert (=> b!5223398 (= e!3251080 e!3251081)))

(declare-fun d!1684044 () Bool)

(declare-fun c!901611 () Bool)

(assert (=> d!1684044 (= c!901611 (and ((_ is ElementMatch!14813) (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))) (= (c!901095 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))) (h!67064 s!2326))))))

(assert (=> d!1684044 (= (derivationStepZipperDown!261 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292)))) (ite c!901233 lt!2143761 (Context!8395 call!368592)) (h!67064 s!2326)) e!3251079)))

(declare-fun b!5223390 () Bool)

(declare-fun e!3251082 () Bool)

(assert (=> b!5223390 (= c!901610 e!3251082)))

(declare-fun res!2217756 () Bool)

(assert (=> b!5223390 (=> (not res!2217756) (not e!3251082))))

(assert (=> b!5223390 (= res!2217756 ((_ is Concat!23658) (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))))))

(assert (=> b!5223390 (= e!3251084 e!3251083)))

(declare-fun bm!368864 () Bool)

(assert (=> bm!368864 (= call!368869 (derivationStepZipperDown!261 (ite c!901609 (regTwo!30139 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))) (ite c!901610 (regTwo!30138 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))) (ite c!901607 (regOne!30138 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))) (reg!15142 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292)))))))) (ite (or c!901609 c!901610) (ite c!901233 lt!2143761 (Context!8395 call!368592)) (Context!8395 call!368865)) (h!67064 s!2326)))))

(declare-fun bm!368865 () Bool)

(assert (=> bm!368865 (= call!368868 call!368869)))

(declare-fun b!5223399 () Bool)

(assert (=> b!5223399 (= e!3251082 (nullable!4982 (regOne!30138 (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292)))))))))

(declare-fun b!5223400 () Bool)

(assert (=> b!5223400 (= e!3251083 e!3251080)))

(assert (=> b!5223400 (= c!901607 ((_ is Concat!23658) (ite c!901233 (regOne!30139 (regOne!30139 (regOne!30138 r!7292))) (regOne!30138 (regOne!30139 (regOne!30138 r!7292))))))))

(assert (= (and d!1684044 c!901611) b!5223396))

(assert (= (and d!1684044 (not c!901611)) b!5223394))

(assert (= (and b!5223394 c!901609) b!5223397))

(assert (= (and b!5223394 (not c!901609)) b!5223390))

(assert (= (and b!5223390 res!2217756) b!5223399))

(assert (= (and b!5223390 c!901610) b!5223392))

(assert (= (and b!5223390 (not c!901610)) b!5223400))

(assert (= (and b!5223400 c!901607) b!5223393))

(assert (= (and b!5223400 (not c!901607)) b!5223398))

(assert (= (and b!5223398 c!901608) b!5223391))

(assert (= (and b!5223398 (not c!901608)) b!5223395))

(assert (= (or b!5223393 b!5223391) bm!368860))

(assert (= (or b!5223393 b!5223391) bm!368861))

(assert (= (or b!5223392 bm!368860) bm!368863))

(assert (= (or b!5223392 bm!368861) bm!368865))

(assert (= (or b!5223397 bm!368865) bm!368864))

(assert (= (or b!5223397 b!5223392) bm!368862))

(declare-fun m!6270648 () Bool)

(assert (=> bm!368864 m!6270648))

(declare-fun m!6270650 () Bool)

(assert (=> b!5223399 m!6270650))

(declare-fun m!6270652 () Bool)

(assert (=> bm!368863 m!6270652))

(declare-fun m!6270654 () Bool)

(assert (=> bm!368862 m!6270654))

(declare-fun m!6270656 () Bool)

(assert (=> b!5223396 m!6270656))

(assert (=> bm!368588 d!1684044))

(assert (=> b!5222124 d!1683886))

(declare-fun bm!368866 () Bool)

(declare-fun call!368872 () Bool)

(declare-fun c!901613 () Bool)

(declare-fun c!901612 () Bool)

(assert (=> bm!368866 (= call!368872 (validRegex!6549 (ite c!901612 (reg!15142 (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292)))) (ite c!901613 (regOne!30139 (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292)))) (regOne!30138 (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292))))))))))

(declare-fun b!5223401 () Bool)

(declare-fun e!3251091 () Bool)

(declare-fun e!3251090 () Bool)

(assert (=> b!5223401 (= e!3251091 e!3251090)))

(declare-fun res!2217760 () Bool)

(assert (=> b!5223401 (=> (not res!2217760) (not e!3251090))))

(declare-fun call!368871 () Bool)

(assert (=> b!5223401 (= res!2217760 call!368871)))

(declare-fun d!1684046 () Bool)

(declare-fun res!2217758 () Bool)

(declare-fun e!3251088 () Bool)

(assert (=> d!1684046 (=> res!2217758 e!3251088)))

(assert (=> d!1684046 (= res!2217758 ((_ is ElementMatch!14813) (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292)))))))

(assert (=> d!1684046 (= (validRegex!6549 (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292)))) e!3251088)))

(declare-fun b!5223402 () Bool)

(declare-fun e!3251086 () Bool)

(assert (=> b!5223402 (= e!3251086 call!368872)))

(declare-fun b!5223403 () Bool)

(declare-fun e!3251087 () Bool)

(declare-fun call!368873 () Bool)

(assert (=> b!5223403 (= e!3251087 call!368873)))

(declare-fun bm!368867 () Bool)

(assert (=> bm!368867 (= call!368873 (validRegex!6549 (ite c!901613 (regTwo!30139 (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292)))) (regTwo!30138 (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292)))))))))

(declare-fun bm!368868 () Bool)

(assert (=> bm!368868 (= call!368871 call!368872)))

(declare-fun b!5223404 () Bool)

(declare-fun e!3251085 () Bool)

(assert (=> b!5223404 (= e!3251088 e!3251085)))

(assert (=> b!5223404 (= c!901612 ((_ is Star!14813) (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292)))))))

(declare-fun b!5223405 () Bool)

(declare-fun e!3251089 () Bool)

(assert (=> b!5223405 (= e!3251085 e!3251089)))

(assert (=> b!5223405 (= c!901613 ((_ is Union!14813) (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292)))))))

(declare-fun b!5223406 () Bool)

(declare-fun res!2217759 () Bool)

(assert (=> b!5223406 (=> (not res!2217759) (not e!3251087))))

(assert (=> b!5223406 (= res!2217759 call!368871)))

(assert (=> b!5223406 (= e!3251089 e!3251087)))

(declare-fun b!5223407 () Bool)

(assert (=> b!5223407 (= e!3251090 call!368873)))

(declare-fun b!5223408 () Bool)

(declare-fun res!2217757 () Bool)

(assert (=> b!5223408 (=> res!2217757 e!3251091)))

(assert (=> b!5223408 (= res!2217757 (not ((_ is Concat!23658) (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292))))))))

(assert (=> b!5223408 (= e!3251089 e!3251091)))

(declare-fun b!5223409 () Bool)

(assert (=> b!5223409 (= e!3251085 e!3251086)))

(declare-fun res!2217761 () Bool)

(assert (=> b!5223409 (= res!2217761 (not (nullable!4982 (reg!15142 (ite c!901314 (reg!15142 r!7292) (ite c!901315 (regOne!30139 r!7292) (regOne!30138 r!7292)))))))))

(assert (=> b!5223409 (=> (not res!2217761) (not e!3251086))))

(assert (= (and d!1684046 (not res!2217758)) b!5223404))

(assert (= (and b!5223404 c!901612) b!5223409))

(assert (= (and b!5223404 (not c!901612)) b!5223405))

(assert (= (and b!5223409 res!2217761) b!5223402))

(assert (= (and b!5223405 c!901613) b!5223406))

(assert (= (and b!5223405 (not c!901613)) b!5223408))

(assert (= (and b!5223406 res!2217759) b!5223403))

(assert (= (and b!5223408 (not res!2217757)) b!5223401))

(assert (= (and b!5223401 res!2217760) b!5223407))

(assert (= (or b!5223403 b!5223407) bm!368867))

(assert (= (or b!5223406 b!5223401) bm!368868))

(assert (= (or b!5223402 bm!368868) bm!368866))

(declare-fun m!6270658 () Bool)

(assert (=> bm!368866 m!6270658))

(declare-fun m!6270660 () Bool)

(assert (=> bm!368867 m!6270660))

(declare-fun m!6270662 () Bool)

(assert (=> b!5223409 m!6270662))

(assert (=> bm!368623 d!1684046))

(declare-fun bs!1212885 () Bool)

(declare-fun b!5223410 () Bool)

(assert (= bs!1212885 (and b!5223410 b!5221526)))

(declare-fun lambda!262193 () Int)

(assert (=> bs!1212885 (not (= lambda!262193 lambda!262069))))

(declare-fun bs!1212886 () Bool)

(assert (= bs!1212886 (and b!5223410 b!5223237)))

(assert (=> bs!1212886 (= (and (= (reg!15142 (regOne!30139 r!7292)) (reg!15142 (regTwo!30139 r!7292))) (= (regOne!30139 r!7292) (regTwo!30139 r!7292))) (= lambda!262193 lambda!262176))))

(declare-fun bs!1212887 () Bool)

(assert (= bs!1212887 (and b!5223410 b!5222081)))

(assert (=> bs!1212887 (= (and (= (reg!15142 (regOne!30139 r!7292)) (reg!15142 r!7292)) (= (regOne!30139 r!7292) r!7292)) (= lambda!262193 lambda!262113))))

(declare-fun bs!1212888 () Bool)

(assert (= bs!1212888 (and b!5223410 d!1683982)))

(assert (=> bs!1212888 (not (= lambda!262193 lambda!262189))))

(declare-fun bs!1212889 () Bool)

(assert (= bs!1212889 (and b!5223410 b!5222085)))

(assert (=> bs!1212889 (not (= lambda!262193 lambda!262114))))

(declare-fun bs!1212890 () Bool)

(assert (= bs!1212890 (and b!5223410 d!1683458)))

(assert (=> bs!1212890 (not (= lambda!262193 lambda!262102))))

(declare-fun bs!1212891 () Bool)

(assert (= bs!1212891 (and b!5223410 d!1683460)))

(assert (=> bs!1212891 (not (= lambda!262193 lambda!262107))))

(declare-fun bs!1212892 () Bool)

(assert (= bs!1212892 (and b!5223410 b!5223241)))

(assert (=> bs!1212892 (not (= lambda!262193 lambda!262177))))

(assert (=> bs!1212891 (not (= lambda!262193 lambda!262108))))

(assert (=> bs!1212888 (not (= lambda!262193 lambda!262188))))

(assert (=> bs!1212885 (not (= lambda!262193 lambda!262070))))

(assert (=> b!5223410 true))

(assert (=> b!5223410 true))

(declare-fun bs!1212893 () Bool)

(declare-fun b!5223414 () Bool)

(assert (= bs!1212893 (and b!5223414 b!5221526)))

(declare-fun lambda!262194 () Int)

(assert (=> bs!1212893 (not (= lambda!262194 lambda!262069))))

(declare-fun bs!1212894 () Bool)

(assert (= bs!1212894 (and b!5223414 b!5223237)))

(assert (=> bs!1212894 (not (= lambda!262194 lambda!262176))))

(declare-fun bs!1212895 () Bool)

(assert (= bs!1212895 (and b!5223414 b!5222081)))

(assert (=> bs!1212895 (not (= lambda!262194 lambda!262113))))

(declare-fun bs!1212896 () Bool)

(assert (= bs!1212896 (and b!5223414 d!1683982)))

(assert (=> bs!1212896 (= (and (= (regOne!30138 (regOne!30139 r!7292)) (regOne!30138 r!7292)) (= (regTwo!30138 (regOne!30139 r!7292)) (regTwo!30138 r!7292))) (= lambda!262194 lambda!262189))))

(declare-fun bs!1212897 () Bool)

(assert (= bs!1212897 (and b!5223414 b!5222085)))

(assert (=> bs!1212897 (= (and (= (regOne!30138 (regOne!30139 r!7292)) (regOne!30138 r!7292)) (= (regTwo!30138 (regOne!30139 r!7292)) (regTwo!30138 r!7292))) (= lambda!262194 lambda!262114))))

(declare-fun bs!1212898 () Bool)

(assert (= bs!1212898 (and b!5223414 d!1683458)))

(assert (=> bs!1212898 (not (= lambda!262194 lambda!262102))))

(declare-fun bs!1212899 () Bool)

(assert (= bs!1212899 (and b!5223414 d!1683460)))

(assert (=> bs!1212899 (not (= lambda!262194 lambda!262107))))

(declare-fun bs!1212900 () Bool)

(assert (= bs!1212900 (and b!5223414 b!5223241)))

(assert (=> bs!1212900 (= (and (= (regOne!30138 (regOne!30139 r!7292)) (regOne!30138 (regTwo!30139 r!7292))) (= (regTwo!30138 (regOne!30139 r!7292)) (regTwo!30138 (regTwo!30139 r!7292)))) (= lambda!262194 lambda!262177))))

(declare-fun bs!1212901 () Bool)

(assert (= bs!1212901 (and b!5223414 b!5223410)))

(assert (=> bs!1212901 (not (= lambda!262194 lambda!262193))))

(assert (=> bs!1212899 (= (and (= (regOne!30138 (regOne!30139 r!7292)) (regOne!30138 r!7292)) (= (regTwo!30138 (regOne!30139 r!7292)) (regTwo!30138 r!7292))) (= lambda!262194 lambda!262108))))

(assert (=> bs!1212896 (not (= lambda!262194 lambda!262188))))

(assert (=> bs!1212893 (= (and (= (regOne!30138 (regOne!30139 r!7292)) (regOne!30138 r!7292)) (= (regTwo!30138 (regOne!30139 r!7292)) (regTwo!30138 r!7292))) (= lambda!262194 lambda!262070))))

(assert (=> b!5223414 true))

(assert (=> b!5223414 true))

(declare-fun e!3251095 () Bool)

(declare-fun call!368874 () Bool)

(assert (=> b!5223410 (= e!3251095 call!368874)))

(declare-fun b!5223411 () Bool)

(declare-fun e!3251094 () Bool)

(declare-fun e!3251098 () Bool)

(assert (=> b!5223411 (= e!3251094 e!3251098)))

(declare-fun res!2217763 () Bool)

(assert (=> b!5223411 (= res!2217763 (matchRSpec!1916 (regOne!30139 (regOne!30139 r!7292)) s!2326))))

(assert (=> b!5223411 (=> res!2217763 e!3251098)))

(declare-fun d!1684048 () Bool)

(declare-fun c!901614 () Bool)

(assert (=> d!1684048 (= c!901614 ((_ is EmptyExpr!14813) (regOne!30139 r!7292)))))

(declare-fun e!3251096 () Bool)

(assert (=> d!1684048 (= (matchRSpec!1916 (regOne!30139 r!7292) s!2326) e!3251096)))

(declare-fun b!5223412 () Bool)

(declare-fun e!3251092 () Bool)

(assert (=> b!5223412 (= e!3251092 (= s!2326 (Cons!60616 (c!901095 (regOne!30139 r!7292)) Nil!60616)))))

(declare-fun bm!368869 () Bool)

(declare-fun call!368875 () Bool)

(assert (=> bm!368869 (= call!368875 (isEmpty!32537 s!2326))))

(declare-fun b!5223413 () Bool)

(assert (=> b!5223413 (= e!3251096 call!368875)))

(declare-fun e!3251093 () Bool)

(assert (=> b!5223414 (= e!3251093 call!368874)))

(declare-fun b!5223415 () Bool)

(declare-fun c!901617 () Bool)

(assert (=> b!5223415 (= c!901617 ((_ is ElementMatch!14813) (regOne!30139 r!7292)))))

(declare-fun e!3251097 () Bool)

(assert (=> b!5223415 (= e!3251097 e!3251092)))

(declare-fun b!5223416 () Bool)

(assert (=> b!5223416 (= e!3251096 e!3251097)))

(declare-fun res!2217762 () Bool)

(assert (=> b!5223416 (= res!2217762 (not ((_ is EmptyLang!14813) (regOne!30139 r!7292))))))

(assert (=> b!5223416 (=> (not res!2217762) (not e!3251097))))

(declare-fun b!5223417 () Bool)

(assert (=> b!5223417 (= e!3251098 (matchRSpec!1916 (regTwo!30139 (regOne!30139 r!7292)) s!2326))))

(declare-fun bm!368870 () Bool)

(declare-fun c!901615 () Bool)

(assert (=> bm!368870 (= call!368874 (Exists!1994 (ite c!901615 lambda!262193 lambda!262194)))))

(declare-fun b!5223418 () Bool)

(declare-fun res!2217764 () Bool)

(assert (=> b!5223418 (=> res!2217764 e!3251095)))

(assert (=> b!5223418 (= res!2217764 call!368875)))

(assert (=> b!5223418 (= e!3251093 e!3251095)))

(declare-fun b!5223419 () Bool)

(declare-fun c!901616 () Bool)

(assert (=> b!5223419 (= c!901616 ((_ is Union!14813) (regOne!30139 r!7292)))))

(assert (=> b!5223419 (= e!3251092 e!3251094)))

(declare-fun b!5223420 () Bool)

(assert (=> b!5223420 (= e!3251094 e!3251093)))

(assert (=> b!5223420 (= c!901615 ((_ is Star!14813) (regOne!30139 r!7292)))))

(assert (= (and d!1684048 c!901614) b!5223413))

(assert (= (and d!1684048 (not c!901614)) b!5223416))

(assert (= (and b!5223416 res!2217762) b!5223415))

(assert (= (and b!5223415 c!901617) b!5223412))

(assert (= (and b!5223415 (not c!901617)) b!5223419))

(assert (= (and b!5223419 c!901616) b!5223411))

(assert (= (and b!5223419 (not c!901616)) b!5223420))

(assert (= (and b!5223411 (not res!2217763)) b!5223417))

(assert (= (and b!5223420 c!901615) b!5223418))

(assert (= (and b!5223420 (not c!901615)) b!5223414))

(assert (= (and b!5223418 (not res!2217764)) b!5223410))

(assert (= (or b!5223410 b!5223414) bm!368870))

(assert (= (or b!5223413 b!5223418) bm!368869))

(declare-fun m!6270664 () Bool)

(assert (=> b!5223411 m!6270664))

(assert (=> bm!368869 m!6269416))

(declare-fun m!6270666 () Bool)

(assert (=> b!5223417 m!6270666))

(declare-fun m!6270668 () Bool)

(assert (=> bm!368870 m!6270668))

(assert (=> b!5222082 d!1684048))

(declare-fun bm!368871 () Bool)

(declare-fun call!368876 () List!60738)

(declare-fun call!368877 () List!60738)

(assert (=> bm!368871 (= call!368876 call!368877)))

(declare-fun b!5223422 () Bool)

(declare-fun e!3251101 () (InoxSet Context!8394))

(declare-fun call!368881 () (InoxSet Context!8394))

(assert (=> b!5223422 (= e!3251101 call!368881)))

(declare-fun b!5223423 () Bool)

(declare-fun e!3251103 () (InoxSet Context!8394))

(declare-fun call!368878 () (InoxSet Context!8394))

(declare-fun call!368879 () (InoxSet Context!8394))

(assert (=> b!5223423 (= e!3251103 ((_ map or) call!368878 call!368879))))

(declare-fun b!5223424 () Bool)

(declare-fun e!3251100 () (InoxSet Context!8394))

(assert (=> b!5223424 (= e!3251100 call!368881)))

(declare-fun b!5223425 () Bool)

(declare-fun e!3251099 () (InoxSet Context!8394))

(declare-fun e!3251104 () (InoxSet Context!8394))

(assert (=> b!5223425 (= e!3251099 e!3251104)))

(declare-fun c!901620 () Bool)

(assert (=> b!5223425 (= c!901620 ((_ is Union!14813) (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))))))

(declare-fun bm!368872 () Bool)

(assert (=> bm!368872 (= call!368881 call!368879)))

(declare-fun bm!368873 () Bool)

(assert (=> bm!368873 (= call!368878 (derivationStepZipperDown!261 (ite c!901620 (regOne!30139 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))) (regOne!30138 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))))) (ite c!901620 (ite c!901303 lt!2143761 (Context!8395 call!368620)) (Context!8395 call!368877)) (h!67064 s!2326)))))

(declare-fun c!901618 () Bool)

(declare-fun c!901621 () Bool)

(declare-fun bm!368874 () Bool)

(assert (=> bm!368874 (= call!368877 ($colon$colon!1287 (exprs!4697 (ite c!901303 lt!2143761 (Context!8395 call!368620))) (ite (or c!901621 c!901618) (regTwo!30138 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))) (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))))))))

(declare-fun b!5223426 () Bool)

(assert (=> b!5223426 (= e!3251101 ((as const (Array Context!8394 Bool)) false))))

(declare-fun b!5223427 () Bool)

(assert (=> b!5223427 (= e!3251099 (store ((as const (Array Context!8394 Bool)) false) (ite c!901303 lt!2143761 (Context!8395 call!368620)) true))))

(declare-fun b!5223428 () Bool)

(declare-fun call!368880 () (InoxSet Context!8394))

(assert (=> b!5223428 (= e!3251104 ((_ map or) call!368878 call!368880))))

(declare-fun b!5223429 () Bool)

(declare-fun c!901619 () Bool)

(assert (=> b!5223429 (= c!901619 ((_ is Star!14813) (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))))))

(assert (=> b!5223429 (= e!3251100 e!3251101)))

(declare-fun c!901622 () Bool)

(declare-fun d!1684050 () Bool)

(assert (=> d!1684050 (= c!901622 (and ((_ is ElementMatch!14813) (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))) (= (c!901095 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))) (h!67064 s!2326))))))

(assert (=> d!1684050 (= (derivationStepZipperDown!261 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))) (ite c!901303 lt!2143761 (Context!8395 call!368620)) (h!67064 s!2326)) e!3251099)))

(declare-fun b!5223421 () Bool)

(declare-fun e!3251102 () Bool)

(assert (=> b!5223421 (= c!901621 e!3251102)))

(declare-fun res!2217765 () Bool)

(assert (=> b!5223421 (=> (not res!2217765) (not e!3251102))))

(assert (=> b!5223421 (= res!2217765 ((_ is Concat!23658) (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))))))

(assert (=> b!5223421 (= e!3251104 e!3251103)))

(declare-fun bm!368875 () Bool)

(assert (=> bm!368875 (= call!368880 (derivationStepZipperDown!261 (ite c!901620 (regTwo!30139 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))) (ite c!901621 (regTwo!30138 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))) (ite c!901618 (regOne!30138 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))) (reg!15142 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))))))) (ite (or c!901620 c!901621) (ite c!901303 lt!2143761 (Context!8395 call!368620)) (Context!8395 call!368876)) (h!67064 s!2326)))))

(declare-fun bm!368876 () Bool)

(assert (=> bm!368876 (= call!368879 call!368880)))

(declare-fun b!5223430 () Bool)

(assert (=> b!5223430 (= e!3251102 (nullable!4982 (regOne!30138 (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343))))))))))

(declare-fun b!5223431 () Bool)

(assert (=> b!5223431 (= e!3251103 e!3251100)))

(assert (=> b!5223431 (= c!901618 ((_ is Concat!23658) (ite c!901303 (regOne!30139 (h!67062 (exprs!4697 (h!67063 zl!343)))) (regOne!30138 (h!67062 (exprs!4697 (h!67063 zl!343)))))))))

(assert (= (and d!1684050 c!901622) b!5223427))

(assert (= (and d!1684050 (not c!901622)) b!5223425))

(assert (= (and b!5223425 c!901620) b!5223428))

(assert (= (and b!5223425 (not c!901620)) b!5223421))

(assert (= (and b!5223421 res!2217765) b!5223430))

(assert (= (and b!5223421 c!901621) b!5223423))

(assert (= (and b!5223421 (not c!901621)) b!5223431))

(assert (= (and b!5223431 c!901618) b!5223424))

(assert (= (and b!5223431 (not c!901618)) b!5223429))

(assert (= (and b!5223429 c!901619) b!5223422))

(assert (= (and b!5223429 (not c!901619)) b!5223426))

(assert (= (or b!5223424 b!5223422) bm!368871))

(assert (= (or b!5223424 b!5223422) bm!368872))

(assert (= (or b!5223423 bm!368871) bm!368874))

(assert (= (or b!5223423 bm!368872) bm!368876))

(assert (= (or b!5223428 bm!368876) bm!368875))

(assert (= (or b!5223428 b!5223423) bm!368873))

(declare-fun m!6270670 () Bool)

(assert (=> bm!368875 m!6270670))

(declare-fun m!6270672 () Bool)

(assert (=> b!5223430 m!6270672))

(declare-fun m!6270674 () Bool)

(assert (=> bm!368874 m!6270674))

(declare-fun m!6270676 () Bool)

(assert (=> bm!368873 m!6270676))

(declare-fun m!6270678 () Bool)

(assert (=> b!5223427 m!6270678))

(assert (=> bm!368616 d!1684050))

(declare-fun b!5223432 () Bool)

(declare-fun e!3251111 () Bool)

(declare-fun lt!2143919 () Bool)

(assert (=> b!5223432 (= e!3251111 (not lt!2143919))))

(declare-fun b!5223433 () Bool)

(declare-fun e!3251105 () Bool)

(declare-fun e!3251109 () Bool)

(assert (=> b!5223433 (= e!3251105 e!3251109)))

(declare-fun res!2217767 () Bool)

(assert (=> b!5223433 (=> (not res!2217767) (not e!3251109))))

(assert (=> b!5223433 (= res!2217767 (not lt!2143919))))

(declare-fun bm!368877 () Bool)

(declare-fun call!368882 () Bool)

(assert (=> bm!368877 (= call!368882 (isEmpty!32537 s!2326))))

(declare-fun b!5223434 () Bool)

(declare-fun e!3251110 () Bool)

(assert (=> b!5223434 (= e!3251110 (matchR!6998 (derivativeStep!4059 (regTwo!30138 r!7292) (head!11193 s!2326)) (tail!10290 s!2326)))))

(declare-fun b!5223435 () Bool)

(declare-fun e!3251108 () Bool)

(assert (=> b!5223435 (= e!3251109 e!3251108)))

(declare-fun res!2217772 () Bool)

(assert (=> b!5223435 (=> res!2217772 e!3251108)))

(assert (=> b!5223435 (= res!2217772 call!368882)))

(declare-fun b!5223436 () Bool)

(declare-fun e!3251106 () Bool)

(assert (=> b!5223436 (= e!3251106 (= (head!11193 s!2326) (c!901095 (regTwo!30138 r!7292))))))

(declare-fun d!1684052 () Bool)

(declare-fun e!3251107 () Bool)

(assert (=> d!1684052 e!3251107))

(declare-fun c!901623 () Bool)

(assert (=> d!1684052 (= c!901623 ((_ is EmptyExpr!14813) (regTwo!30138 r!7292)))))

(assert (=> d!1684052 (= lt!2143919 e!3251110)))

(declare-fun c!901625 () Bool)

(assert (=> d!1684052 (= c!901625 (isEmpty!32537 s!2326))))

(assert (=> d!1684052 (validRegex!6549 (regTwo!30138 r!7292))))

(assert (=> d!1684052 (= (matchR!6998 (regTwo!30138 r!7292) s!2326) lt!2143919)))

(declare-fun b!5223437 () Bool)

(assert (=> b!5223437 (= e!3251107 (= lt!2143919 call!368882))))

(declare-fun b!5223438 () Bool)

(assert (=> b!5223438 (= e!3251110 (nullable!4982 (regTwo!30138 r!7292)))))

(declare-fun b!5223439 () Bool)

(declare-fun res!2217771 () Bool)

(assert (=> b!5223439 (=> (not res!2217771) (not e!3251106))))

(assert (=> b!5223439 (= res!2217771 (isEmpty!32537 (tail!10290 s!2326)))))

(declare-fun b!5223440 () Bool)

(declare-fun res!2217766 () Bool)

(assert (=> b!5223440 (=> (not res!2217766) (not e!3251106))))

(assert (=> b!5223440 (= res!2217766 (not call!368882))))

(declare-fun b!5223441 () Bool)

(declare-fun res!2217773 () Bool)

(assert (=> b!5223441 (=> res!2217773 e!3251108)))

(assert (=> b!5223441 (= res!2217773 (not (isEmpty!32537 (tail!10290 s!2326))))))

(declare-fun b!5223442 () Bool)

(assert (=> b!5223442 (= e!3251108 (not (= (head!11193 s!2326) (c!901095 (regTwo!30138 r!7292)))))))

(declare-fun b!5223443 () Bool)

(declare-fun res!2217769 () Bool)

(assert (=> b!5223443 (=> res!2217769 e!3251105)))

(assert (=> b!5223443 (= res!2217769 (not ((_ is ElementMatch!14813) (regTwo!30138 r!7292))))))

(assert (=> b!5223443 (= e!3251111 e!3251105)))

(declare-fun b!5223444 () Bool)

(declare-fun res!2217770 () Bool)

(assert (=> b!5223444 (=> res!2217770 e!3251105)))

(assert (=> b!5223444 (= res!2217770 e!3251106)))

(declare-fun res!2217768 () Bool)

(assert (=> b!5223444 (=> (not res!2217768) (not e!3251106))))

(assert (=> b!5223444 (= res!2217768 lt!2143919)))

(declare-fun b!5223445 () Bool)

(assert (=> b!5223445 (= e!3251107 e!3251111)))

(declare-fun c!901624 () Bool)

(assert (=> b!5223445 (= c!901624 ((_ is EmptyLang!14813) (regTwo!30138 r!7292)))))

(assert (= (and d!1684052 c!901625) b!5223438))

(assert (= (and d!1684052 (not c!901625)) b!5223434))

(assert (= (and d!1684052 c!901623) b!5223437))

(assert (= (and d!1684052 (not c!901623)) b!5223445))

(assert (= (and b!5223445 c!901624) b!5223432))

(assert (= (and b!5223445 (not c!901624)) b!5223443))

(assert (= (and b!5223443 (not res!2217769)) b!5223444))

(assert (= (and b!5223444 res!2217768) b!5223440))

(assert (= (and b!5223440 res!2217766) b!5223439))

(assert (= (and b!5223439 res!2217771) b!5223436))

(assert (= (and b!5223444 (not res!2217770)) b!5223433))

(assert (= (and b!5223433 res!2217767) b!5223435))

(assert (= (and b!5223435 (not res!2217772)) b!5223441))

(assert (= (and b!5223441 (not res!2217773)) b!5223442))

(assert (= (or b!5223437 b!5223435 b!5223440) bm!368877))

(assert (=> b!5223436 m!6269422))

(assert (=> b!5223439 m!6269424))

(assert (=> b!5223439 m!6269424))

(assert (=> b!5223439 m!6269426))

(assert (=> b!5223442 m!6269422))

(assert (=> b!5223441 m!6269424))

(assert (=> b!5223441 m!6269424))

(assert (=> b!5223441 m!6269426))

(assert (=> bm!368877 m!6269416))

(assert (=> b!5223434 m!6269422))

(assert (=> b!5223434 m!6269422))

(declare-fun m!6270680 () Bool)

(assert (=> b!5223434 m!6270680))

(assert (=> b!5223434 m!6269424))

(assert (=> b!5223434 m!6270680))

(assert (=> b!5223434 m!6269424))

(declare-fun m!6270682 () Bool)

(assert (=> b!5223434 m!6270682))

(assert (=> b!5223438 m!6270260))

(assert (=> d!1684052 m!6269416))

(assert (=> d!1684052 m!6270262))

(assert (=> b!5221984 d!1684052))

(declare-fun d!1684054 () Bool)

(assert (=> d!1684054 true))

(declare-fun setRes!33233 () Bool)

(assert (=> d!1684054 setRes!33233))

(declare-fun condSetEmpty!33233 () Bool)

(declare-fun res!2217774 () (InoxSet Context!8394))

(assert (=> d!1684054 (= condSetEmpty!33233 (= res!2217774 ((as const (Array Context!8394 Bool)) false)))))

(assert (=> d!1684054 (= (choose!38843 lt!2143768 lambda!262071) res!2217774)))

(declare-fun setIsEmpty!33233 () Bool)

(assert (=> setIsEmpty!33233 setRes!33233))

(declare-fun setNonEmpty!33233 () Bool)

(declare-fun e!3251112 () Bool)

(declare-fun setElem!33233 () Context!8394)

(declare-fun tp!1464091 () Bool)

(assert (=> setNonEmpty!33233 (= setRes!33233 (and tp!1464091 (inv!80279 setElem!33233) e!3251112))))

(declare-fun setRest!33233 () (InoxSet Context!8394))

(assert (=> setNonEmpty!33233 (= res!2217774 ((_ map or) (store ((as const (Array Context!8394 Bool)) false) setElem!33233 true) setRest!33233))))

(declare-fun b!5223446 () Bool)

(declare-fun tp!1464090 () Bool)

(assert (=> b!5223446 (= e!3251112 tp!1464090)))

(assert (= (and d!1684054 condSetEmpty!33233) setIsEmpty!33233))

(assert (= (and d!1684054 (not condSetEmpty!33233)) setNonEmpty!33233))

(assert (= setNonEmpty!33233 b!5223446))

(declare-fun m!6270684 () Bool)

(assert (=> setNonEmpty!33233 m!6270684))

(assert (=> d!1683520 d!1684054))

(declare-fun bs!1212902 () Bool)

(declare-fun d!1684056 () Bool)

(assert (= bs!1212902 (and d!1684056 d!1683964)))

(declare-fun lambda!262195 () Int)

(assert (=> bs!1212902 (= lambda!262195 lambda!262181)))

(declare-fun bs!1212903 () Bool)

(assert (= bs!1212903 (and d!1684056 d!1683948)))

(assert (=> bs!1212903 (= lambda!262195 lambda!262178)))

(declare-fun bs!1212904 () Bool)

(assert (= bs!1212904 (and d!1684056 d!1684040)))

(assert (=> bs!1212904 (= lambda!262195 lambda!262192)))

(declare-fun bs!1212905 () Bool)

(assert (= bs!1212905 (and d!1684056 d!1683922)))

(assert (=> bs!1212905 (= lambda!262195 lambda!262175)))

(declare-fun bs!1212906 () Bool)

(assert (= bs!1212906 (and d!1684056 d!1683976)))

(assert (=> bs!1212906 (= lambda!262195 lambda!262183)))

(assert (=> d!1684056 (= (nullableZipper!1237 lt!2143782) (exists!1972 lt!2143782 lambda!262195))))

(declare-fun bs!1212907 () Bool)

(assert (= bs!1212907 d!1684056))

(declare-fun m!6270686 () Bool)

(assert (=> bs!1212907 m!6270686))

(assert (=> b!5222283 d!1684056))

(assert (=> b!5222129 d!1683834))

(assert (=> b!5222129 d!1683836))

(declare-fun d!1684058 () Bool)

(assert (=> d!1684058 (= ($colon$colon!1287 (exprs!4697 lt!2143761) (ite (or c!901229 c!901226) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30139 (regOne!30138 r!7292)))) (Cons!60614 (ite (or c!901229 c!901226) (regTwo!30138 (regTwo!30139 (regOne!30138 r!7292))) (regTwo!30139 (regOne!30138 r!7292))) (exprs!4697 lt!2143761)))))

(assert (=> bm!368583 d!1684058))

(assert (=> bs!1212586 d!1683530))

(assert (=> d!1683458 d!1683454))

(assert (=> d!1683458 d!1683830))

(declare-fun bs!1212908 () Bool)

(declare-fun d!1684060 () Bool)

(assert (= bs!1212908 (and d!1684060 b!5221526)))

(declare-fun lambda!262198 () Int)

(assert (=> bs!1212908 (= lambda!262198 lambda!262069)))

(declare-fun bs!1212909 () Bool)

(assert (= bs!1212909 (and d!1684060 b!5223237)))

(assert (=> bs!1212909 (not (= lambda!262198 lambda!262176))))

(declare-fun bs!1212910 () Bool)

(assert (= bs!1212910 (and d!1684060 b!5222081)))

(assert (=> bs!1212910 (not (= lambda!262198 lambda!262113))))

(declare-fun bs!1212911 () Bool)

(assert (= bs!1212911 (and d!1684060 d!1683982)))

(assert (=> bs!1212911 (not (= lambda!262198 lambda!262189))))

(declare-fun bs!1212912 () Bool)

(assert (= bs!1212912 (and d!1684060 b!5223414)))

(assert (=> bs!1212912 (not (= lambda!262198 lambda!262194))))

(declare-fun bs!1212913 () Bool)

(assert (= bs!1212913 (and d!1684060 b!5222085)))

(assert (=> bs!1212913 (not (= lambda!262198 lambda!262114))))

(declare-fun bs!1212914 () Bool)

(assert (= bs!1212914 (and d!1684060 d!1683458)))

(assert (=> bs!1212914 (= lambda!262198 lambda!262102)))

(declare-fun bs!1212915 () Bool)

(assert (= bs!1212915 (and d!1684060 d!1683460)))

(assert (=> bs!1212915 (= lambda!262198 lambda!262107)))

(declare-fun bs!1212916 () Bool)

(assert (= bs!1212916 (and d!1684060 b!5223241)))

(assert (=> bs!1212916 (not (= lambda!262198 lambda!262177))))

(declare-fun bs!1212917 () Bool)

(assert (= bs!1212917 (and d!1684060 b!5223410)))

(assert (=> bs!1212917 (not (= lambda!262198 lambda!262193))))

(assert (=> bs!1212915 (not (= lambda!262198 lambda!262108))))

(assert (=> bs!1212911 (= lambda!262198 lambda!262188)))

(assert (=> bs!1212908 (not (= lambda!262198 lambda!262070))))

(assert (=> d!1684060 true))

(assert (=> d!1684060 true))

(assert (=> d!1684060 true))

(assert (=> d!1684060 (= (isDefined!11627 (findConcatSeparation!1338 (regOne!30138 r!7292) (regTwo!30138 r!7292) Nil!60616 s!2326 s!2326)) (Exists!1994 lambda!262198))))

(assert (=> d!1684060 true))

(declare-fun _$89!1400 () Unit!152528)

(assert (=> d!1684060 (= (choose!38839 (regOne!30138 r!7292) (regTwo!30138 r!7292) s!2326) _$89!1400)))

(declare-fun bs!1212918 () Bool)

(assert (= bs!1212918 d!1684060))

(assert (=> bs!1212918 m!6268974))

(assert (=> bs!1212918 m!6268974))

(assert (=> bs!1212918 m!6268976))

(declare-fun m!6270688 () Bool)

(assert (=> bs!1212918 m!6270688))

(assert (=> d!1683458 d!1684060))

(assert (=> d!1683458 d!1683462))

(declare-fun d!1684062 () Bool)

(assert (=> d!1684062 (= (Exists!1994 lambda!262102) (choose!38838 lambda!262102))))

(declare-fun bs!1212919 () Bool)

(assert (= bs!1212919 d!1684062))

(declare-fun m!6270690 () Bool)

(assert (=> bs!1212919 m!6270690))

(assert (=> d!1683458 d!1684062))

(assert (=> d!1683476 d!1683890))

(assert (=> d!1683476 d!1683540))

(declare-fun d!1684064 () Bool)

(assert (=> d!1684064 (= (isEmpty!32534 (unfocusZipperList!255 zl!343)) ((_ is Nil!60614) (unfocusZipperList!255 zl!343)))))

(assert (=> b!5222219 d!1684064))

(declare-fun bs!1212920 () Bool)

(declare-fun d!1684066 () Bool)

(assert (= bs!1212920 (and d!1684066 d!1683964)))

(declare-fun lambda!262199 () Int)

(assert (=> bs!1212920 (= lambda!262199 lambda!262181)))

(declare-fun bs!1212921 () Bool)

(assert (= bs!1212921 (and d!1684066 d!1683948)))

(assert (=> bs!1212921 (= lambda!262199 lambda!262178)))

(declare-fun bs!1212922 () Bool)

(assert (= bs!1212922 (and d!1684066 d!1684040)))

(assert (=> bs!1212922 (= lambda!262199 lambda!262192)))

(declare-fun bs!1212923 () Bool)

(assert (= bs!1212923 (and d!1684066 d!1683922)))

(assert (=> bs!1212923 (= lambda!262199 lambda!262175)))

(declare-fun bs!1212924 () Bool)

(assert (= bs!1212924 (and d!1684066 d!1683976)))

(assert (=> bs!1212924 (= lambda!262199 lambda!262183)))

(declare-fun bs!1212925 () Bool)

(assert (= bs!1212925 (and d!1684066 d!1684056)))

(assert (=> bs!1212925 (= lambda!262199 lambda!262195)))

(assert (=> d!1684066 (= (nullableZipper!1237 ((_ map or) lt!2143779 lt!2143771)) (exists!1972 ((_ map or) lt!2143779 lt!2143771) lambda!262199))))

(declare-fun bs!1212926 () Bool)

(assert (= bs!1212926 d!1684066))

(declare-fun m!6270692 () Bool)

(assert (=> bs!1212926 m!6270692))

(assert (=> b!5222167 d!1684066))

(declare-fun d!1684068 () Bool)

(declare-fun res!2217783 () Bool)

(declare-fun e!3251119 () Bool)

(assert (=> d!1684068 (=> res!2217783 e!3251119)))

(assert (=> d!1684068 (= res!2217783 ((_ is Nil!60615) lt!2143874))))

(assert (=> d!1684068 (= (noDuplicate!1193 lt!2143874) e!3251119)))

(declare-fun b!5223455 () Bool)

(declare-fun e!3251120 () Bool)

(assert (=> b!5223455 (= e!3251119 e!3251120)))

(declare-fun res!2217784 () Bool)

(assert (=> b!5223455 (=> (not res!2217784) (not e!3251120))))

(declare-fun contains!19674 (List!60739 Context!8394) Bool)

(assert (=> b!5223455 (= res!2217784 (not (contains!19674 (t!373910 lt!2143874) (h!67063 lt!2143874))))))

(declare-fun b!5223456 () Bool)

(assert (=> b!5223456 (= e!3251120 (noDuplicate!1193 (t!373910 lt!2143874)))))

(assert (= (and d!1684068 (not res!2217783)) b!5223455))

(assert (= (and b!5223455 res!2217784) b!5223456))

(declare-fun m!6270694 () Bool)

(assert (=> b!5223455 m!6270694))

(declare-fun m!6270696 () Bool)

(assert (=> b!5223456 m!6270696))

(assert (=> d!1683532 d!1684068))

(declare-fun d!1684070 () Bool)

(declare-fun e!3251128 () Bool)

(assert (=> d!1684070 e!3251128))

(declare-fun res!2217789 () Bool)

(assert (=> d!1684070 (=> (not res!2217789) (not e!3251128))))

(declare-fun res!2217790 () List!60739)

(assert (=> d!1684070 (= res!2217789 (noDuplicate!1193 res!2217790))))

(declare-fun e!3251129 () Bool)

(assert (=> d!1684070 e!3251129))

(assert (=> d!1684070 (= (choose!38844 z!1189) res!2217790)))

(declare-fun b!5223464 () Bool)

(declare-fun e!3251127 () Bool)

(declare-fun tp!1464097 () Bool)

(assert (=> b!5223464 (= e!3251127 tp!1464097)))

(declare-fun b!5223463 () Bool)

(declare-fun tp!1464096 () Bool)

(assert (=> b!5223463 (= e!3251129 (and (inv!80279 (h!67063 res!2217790)) e!3251127 tp!1464096))))

(declare-fun b!5223465 () Bool)

(assert (=> b!5223465 (= e!3251128 (= (content!10749 res!2217790) z!1189))))

(assert (= b!5223463 b!5223464))

(assert (= (and d!1684070 ((_ is Cons!60615) res!2217790)) b!5223463))

(assert (= (and d!1684070 res!2217789) b!5223465))

(declare-fun m!6270698 () Bool)

(assert (=> d!1684070 m!6270698))

(declare-fun m!6270700 () Bool)

(assert (=> b!5223463 m!6270700))

(declare-fun m!6270702 () Bool)

(assert (=> b!5223465 m!6270702))

(assert (=> d!1683532 d!1684070))

(declare-fun d!1684072 () Bool)

(assert (=> d!1684072 true))

(declare-fun setRes!33234 () Bool)

(assert (=> d!1684072 setRes!33234))

(declare-fun condSetEmpty!33234 () Bool)

(declare-fun res!2217791 () (InoxSet Context!8394))

(assert (=> d!1684072 (= condSetEmpty!33234 (= res!2217791 ((as const (Array Context!8394 Bool)) false)))))

(assert (=> d!1684072 (= (choose!38843 z!1189 lambda!262071) res!2217791)))

(declare-fun setIsEmpty!33234 () Bool)

(assert (=> setIsEmpty!33234 setRes!33234))

(declare-fun e!3251130 () Bool)

(declare-fun setNonEmpty!33234 () Bool)

(declare-fun tp!1464099 () Bool)

(declare-fun setElem!33234 () Context!8394)

(assert (=> setNonEmpty!33234 (= setRes!33234 (and tp!1464099 (inv!80279 setElem!33234) e!3251130))))

(declare-fun setRest!33234 () (InoxSet Context!8394))

(assert (=> setNonEmpty!33234 (= res!2217791 ((_ map or) (store ((as const (Array Context!8394 Bool)) false) setElem!33234 true) setRest!33234))))

(declare-fun b!5223466 () Bool)

(declare-fun tp!1464098 () Bool)

(assert (=> b!5223466 (= e!3251130 tp!1464098)))

(assert (= (and d!1684072 condSetEmpty!33234) setIsEmpty!33234))

(assert (= (and d!1684072 (not condSetEmpty!33234)) setNonEmpty!33234))

(assert (= setNonEmpty!33234 b!5223466))

(declare-fun m!6270704 () Bool)

(assert (=> setNonEmpty!33234 m!6270704))

(assert (=> d!1683504 d!1684072))

(declare-fun condSetEmpty!33235 () Bool)

(assert (=> setNonEmpty!33223 (= condSetEmpty!33235 (= setRest!33223 ((as const (Array Context!8394 Bool)) false)))))

(declare-fun setRes!33235 () Bool)

(assert (=> setNonEmpty!33223 (= tp!1463911 setRes!33235)))

(declare-fun setIsEmpty!33235 () Bool)

(assert (=> setIsEmpty!33235 setRes!33235))

(declare-fun setElem!33235 () Context!8394)

(declare-fun e!3251131 () Bool)

(declare-fun tp!1464101 () Bool)

(declare-fun setNonEmpty!33235 () Bool)

(assert (=> setNonEmpty!33235 (= setRes!33235 (and tp!1464101 (inv!80279 setElem!33235) e!3251131))))

(declare-fun setRest!33235 () (InoxSet Context!8394))

(assert (=> setNonEmpty!33235 (= setRest!33223 ((_ map or) (store ((as const (Array Context!8394 Bool)) false) setElem!33235 true) setRest!33235))))

(declare-fun b!5223467 () Bool)

(declare-fun tp!1464100 () Bool)

(assert (=> b!5223467 (= e!3251131 tp!1464100)))

(assert (= (and setNonEmpty!33223 condSetEmpty!33235) setIsEmpty!33235))

(assert (= (and setNonEmpty!33223 (not condSetEmpty!33235)) setNonEmpty!33235))

(assert (= setNonEmpty!33235 b!5223467))

(declare-fun m!6270706 () Bool)

(assert (=> setNonEmpty!33235 m!6270706))

(declare-fun b!5223470 () Bool)

(declare-fun e!3251132 () Bool)

(declare-fun tp!1464104 () Bool)

(assert (=> b!5223470 (= e!3251132 tp!1464104)))

(declare-fun b!5223468 () Bool)

(assert (=> b!5223468 (= e!3251132 tp_is_empty!38879)))

(declare-fun b!5223469 () Bool)

(declare-fun tp!1464105 () Bool)

(declare-fun tp!1464103 () Bool)

(assert (=> b!5223469 (= e!3251132 (and tp!1464105 tp!1464103))))

(assert (=> b!5222347 (= tp!1463916 e!3251132)))

(declare-fun b!5223471 () Bool)

(declare-fun tp!1464106 () Bool)

(declare-fun tp!1464102 () Bool)

(assert (=> b!5223471 (= e!3251132 (and tp!1464106 tp!1464102))))

(assert (= (and b!5222347 ((_ is ElementMatch!14813) (h!67062 (exprs!4697 setElem!33217)))) b!5223468))

(assert (= (and b!5222347 ((_ is Concat!23658) (h!67062 (exprs!4697 setElem!33217)))) b!5223469))

(assert (= (and b!5222347 ((_ is Star!14813) (h!67062 (exprs!4697 setElem!33217)))) b!5223470))

(assert (= (and b!5222347 ((_ is Union!14813) (h!67062 (exprs!4697 setElem!33217)))) b!5223471))

(declare-fun b!5223472 () Bool)

(declare-fun e!3251133 () Bool)

(declare-fun tp!1464107 () Bool)

(declare-fun tp!1464108 () Bool)

(assert (=> b!5223472 (= e!3251133 (and tp!1464107 tp!1464108))))

(assert (=> b!5222347 (= tp!1463917 e!3251133)))

(assert (= (and b!5222347 ((_ is Cons!60614) (t!373909 (exprs!4697 setElem!33217)))) b!5223472))

(declare-fun b!5223475 () Bool)

(declare-fun e!3251134 () Bool)

(declare-fun tp!1464111 () Bool)

(assert (=> b!5223475 (= e!3251134 tp!1464111)))

(declare-fun b!5223473 () Bool)

(assert (=> b!5223473 (= e!3251134 tp_is_empty!38879)))

(declare-fun b!5223474 () Bool)

(declare-fun tp!1464112 () Bool)

(declare-fun tp!1464110 () Bool)

(assert (=> b!5223474 (= e!3251134 (and tp!1464112 tp!1464110))))

(assert (=> b!5222311 (= tp!1463879 e!3251134)))

(declare-fun b!5223476 () Bool)

(declare-fun tp!1464113 () Bool)

(declare-fun tp!1464109 () Bool)

(assert (=> b!5223476 (= e!3251134 (and tp!1464113 tp!1464109))))

(assert (= (and b!5222311 ((_ is ElementMatch!14813) (reg!15142 (regTwo!30139 r!7292)))) b!5223473))

(assert (= (and b!5222311 ((_ is Concat!23658) (reg!15142 (regTwo!30139 r!7292)))) b!5223474))

(assert (= (and b!5222311 ((_ is Star!14813) (reg!15142 (regTwo!30139 r!7292)))) b!5223475))

(assert (= (and b!5222311 ((_ is Union!14813) (reg!15142 (regTwo!30139 r!7292)))) b!5223476))

(declare-fun b!5223477 () Bool)

(declare-fun e!3251135 () Bool)

(declare-fun tp!1464114 () Bool)

(assert (=> b!5223477 (= e!3251135 (and tp_is_empty!38879 tp!1464114))))

(assert (=> b!5222325 (= tp!1463890 e!3251135)))

(assert (= (and b!5222325 ((_ is Cons!60616) (t!373911 (t!373911 s!2326)))) b!5223477))

(declare-fun b!5223480 () Bool)

(declare-fun e!3251136 () Bool)

(declare-fun tp!1464117 () Bool)

(assert (=> b!5223480 (= e!3251136 tp!1464117)))

(declare-fun b!5223478 () Bool)

(assert (=> b!5223478 (= e!3251136 tp_is_empty!38879)))

(declare-fun b!5223479 () Bool)

(declare-fun tp!1464118 () Bool)

(declare-fun tp!1464116 () Bool)

(assert (=> b!5223479 (= e!3251136 (and tp!1464118 tp!1464116))))

(assert (=> b!5222310 (= tp!1463880 e!3251136)))

(declare-fun b!5223481 () Bool)

(declare-fun tp!1464119 () Bool)

(declare-fun tp!1464115 () Bool)

(assert (=> b!5223481 (= e!3251136 (and tp!1464119 tp!1464115))))

(assert (= (and b!5222310 ((_ is ElementMatch!14813) (regOne!30138 (regTwo!30139 r!7292)))) b!5223478))

(assert (= (and b!5222310 ((_ is Concat!23658) (regOne!30138 (regTwo!30139 r!7292)))) b!5223479))

(assert (= (and b!5222310 ((_ is Star!14813) (regOne!30138 (regTwo!30139 r!7292)))) b!5223480))

(assert (= (and b!5222310 ((_ is Union!14813) (regOne!30138 (regTwo!30139 r!7292)))) b!5223481))

(declare-fun b!5223484 () Bool)

(declare-fun e!3251137 () Bool)

(declare-fun tp!1464122 () Bool)

(assert (=> b!5223484 (= e!3251137 tp!1464122)))

(declare-fun b!5223482 () Bool)

(assert (=> b!5223482 (= e!3251137 tp_is_empty!38879)))

(declare-fun b!5223483 () Bool)

(declare-fun tp!1464123 () Bool)

(declare-fun tp!1464121 () Bool)

(assert (=> b!5223483 (= e!3251137 (and tp!1464123 tp!1464121))))

(assert (=> b!5222310 (= tp!1463878 e!3251137)))

(declare-fun b!5223485 () Bool)

(declare-fun tp!1464124 () Bool)

(declare-fun tp!1464120 () Bool)

(assert (=> b!5223485 (= e!3251137 (and tp!1464124 tp!1464120))))

(assert (= (and b!5222310 ((_ is ElementMatch!14813) (regTwo!30138 (regTwo!30139 r!7292)))) b!5223482))

(assert (= (and b!5222310 ((_ is Concat!23658) (regTwo!30138 (regTwo!30139 r!7292)))) b!5223483))

(assert (= (and b!5222310 ((_ is Star!14813) (regTwo!30138 (regTwo!30139 r!7292)))) b!5223484))

(assert (= (and b!5222310 ((_ is Union!14813) (regTwo!30138 (regTwo!30139 r!7292)))) b!5223485))

(declare-fun b!5223488 () Bool)

(declare-fun e!3251138 () Bool)

(declare-fun tp!1464127 () Bool)

(assert (=> b!5223488 (= e!3251138 tp!1464127)))

(declare-fun b!5223486 () Bool)

(assert (=> b!5223486 (= e!3251138 tp_is_empty!38879)))

(declare-fun b!5223487 () Bool)

(declare-fun tp!1464128 () Bool)

(declare-fun tp!1464126 () Bool)

(assert (=> b!5223487 (= e!3251138 (and tp!1464128 tp!1464126))))

(assert (=> b!5222333 (= tp!1463900 e!3251138)))

(declare-fun b!5223489 () Bool)

(declare-fun tp!1464129 () Bool)

(declare-fun tp!1464125 () Bool)

(assert (=> b!5223489 (= e!3251138 (and tp!1464129 tp!1464125))))

(assert (= (and b!5222333 ((_ is ElementMatch!14813) (regOne!30139 (regTwo!30138 r!7292)))) b!5223486))

(assert (= (and b!5222333 ((_ is Concat!23658) (regOne!30139 (regTwo!30138 r!7292)))) b!5223487))

(assert (= (and b!5222333 ((_ is Star!14813) (regOne!30139 (regTwo!30138 r!7292)))) b!5223488))

(assert (= (and b!5222333 ((_ is Union!14813) (regOne!30139 (regTwo!30138 r!7292)))) b!5223489))

(declare-fun b!5223492 () Bool)

(declare-fun e!3251139 () Bool)

(declare-fun tp!1464132 () Bool)

(assert (=> b!5223492 (= e!3251139 tp!1464132)))

(declare-fun b!5223490 () Bool)

(assert (=> b!5223490 (= e!3251139 tp_is_empty!38879)))

(declare-fun b!5223491 () Bool)

(declare-fun tp!1464133 () Bool)

(declare-fun tp!1464131 () Bool)

(assert (=> b!5223491 (= e!3251139 (and tp!1464133 tp!1464131))))

(assert (=> b!5222333 (= tp!1463896 e!3251139)))

(declare-fun b!5223493 () Bool)

(declare-fun tp!1464134 () Bool)

(declare-fun tp!1464130 () Bool)

(assert (=> b!5223493 (= e!3251139 (and tp!1464134 tp!1464130))))

(assert (= (and b!5222333 ((_ is ElementMatch!14813) (regTwo!30139 (regTwo!30138 r!7292)))) b!5223490))

(assert (= (and b!5222333 ((_ is Concat!23658) (regTwo!30139 (regTwo!30138 r!7292)))) b!5223491))

(assert (= (and b!5222333 ((_ is Star!14813) (regTwo!30139 (regTwo!30138 r!7292)))) b!5223492))

(assert (= (and b!5222333 ((_ is Union!14813) (regTwo!30139 (regTwo!30138 r!7292)))) b!5223493))

(declare-fun b!5223496 () Bool)

(declare-fun e!3251140 () Bool)

(declare-fun tp!1464137 () Bool)

(assert (=> b!5223496 (= e!3251140 tp!1464137)))

(declare-fun b!5223494 () Bool)

(assert (=> b!5223494 (= e!3251140 tp_is_empty!38879)))

(declare-fun b!5223495 () Bool)

(declare-fun tp!1464138 () Bool)

(declare-fun tp!1464136 () Bool)

(assert (=> b!5223495 (= e!3251140 (and tp!1464138 tp!1464136))))

(assert (=> b!5222332 (= tp!1463898 e!3251140)))

(declare-fun b!5223497 () Bool)

(declare-fun tp!1464139 () Bool)

(declare-fun tp!1464135 () Bool)

(assert (=> b!5223497 (= e!3251140 (and tp!1464139 tp!1464135))))

(assert (= (and b!5222332 ((_ is ElementMatch!14813) (reg!15142 (regTwo!30138 r!7292)))) b!5223494))

(assert (= (and b!5222332 ((_ is Concat!23658) (reg!15142 (regTwo!30138 r!7292)))) b!5223495))

(assert (= (and b!5222332 ((_ is Star!14813) (reg!15142 (regTwo!30138 r!7292)))) b!5223496))

(assert (= (and b!5222332 ((_ is Union!14813) (reg!15142 (regTwo!30138 r!7292)))) b!5223497))

(declare-fun b!5223500 () Bool)

(declare-fun e!3251141 () Bool)

(declare-fun tp!1464142 () Bool)

(assert (=> b!5223500 (= e!3251141 tp!1464142)))

(declare-fun b!5223498 () Bool)

(assert (=> b!5223498 (= e!3251141 tp_is_empty!38879)))

(declare-fun b!5223499 () Bool)

(declare-fun tp!1464143 () Bool)

(declare-fun tp!1464141 () Bool)

(assert (=> b!5223499 (= e!3251141 (and tp!1464143 tp!1464141))))

(assert (=> b!5222331 (= tp!1463899 e!3251141)))

(declare-fun b!5223501 () Bool)

(declare-fun tp!1464144 () Bool)

(declare-fun tp!1464140 () Bool)

(assert (=> b!5223501 (= e!3251141 (and tp!1464144 tp!1464140))))

(assert (= (and b!5222331 ((_ is ElementMatch!14813) (regOne!30138 (regTwo!30138 r!7292)))) b!5223498))

(assert (= (and b!5222331 ((_ is Concat!23658) (regOne!30138 (regTwo!30138 r!7292)))) b!5223499))

(assert (= (and b!5222331 ((_ is Star!14813) (regOne!30138 (regTwo!30138 r!7292)))) b!5223500))

(assert (= (and b!5222331 ((_ is Union!14813) (regOne!30138 (regTwo!30138 r!7292)))) b!5223501))

(declare-fun b!5223504 () Bool)

(declare-fun e!3251142 () Bool)

(declare-fun tp!1464147 () Bool)

(assert (=> b!5223504 (= e!3251142 tp!1464147)))

(declare-fun b!5223502 () Bool)

(assert (=> b!5223502 (= e!3251142 tp_is_empty!38879)))

(declare-fun b!5223503 () Bool)

(declare-fun tp!1464148 () Bool)

(declare-fun tp!1464146 () Bool)

(assert (=> b!5223503 (= e!3251142 (and tp!1464148 tp!1464146))))

(assert (=> b!5222331 (= tp!1463897 e!3251142)))

(declare-fun b!5223505 () Bool)

(declare-fun tp!1464149 () Bool)

(declare-fun tp!1464145 () Bool)

(assert (=> b!5223505 (= e!3251142 (and tp!1464149 tp!1464145))))

(assert (= (and b!5222331 ((_ is ElementMatch!14813) (regTwo!30138 (regTwo!30138 r!7292)))) b!5223502))

(assert (= (and b!5222331 ((_ is Concat!23658) (regTwo!30138 (regTwo!30138 r!7292)))) b!5223503))

(assert (= (and b!5222331 ((_ is Star!14813) (regTwo!30138 (regTwo!30138 r!7292)))) b!5223504))

(assert (= (and b!5222331 ((_ is Union!14813) (regTwo!30138 (regTwo!30138 r!7292)))) b!5223505))

(declare-fun b!5223508 () Bool)

(declare-fun e!3251143 () Bool)

(declare-fun tp!1464152 () Bool)

(assert (=> b!5223508 (= e!3251143 tp!1464152)))

(declare-fun b!5223506 () Bool)

(assert (=> b!5223506 (= e!3251143 tp_is_empty!38879)))

(declare-fun b!5223507 () Bool)

(declare-fun tp!1464153 () Bool)

(declare-fun tp!1464151 () Bool)

(assert (=> b!5223507 (= e!3251143 (and tp!1464153 tp!1464151))))

(assert (=> b!5222348 (= tp!1463918 e!3251143)))

(declare-fun b!5223509 () Bool)

(declare-fun tp!1464154 () Bool)

(declare-fun tp!1464150 () Bool)

(assert (=> b!5223509 (= e!3251143 (and tp!1464154 tp!1464150))))

(assert (= (and b!5222348 ((_ is ElementMatch!14813) (h!67062 (exprs!4697 (h!67063 zl!343))))) b!5223506))

(assert (= (and b!5222348 ((_ is Concat!23658) (h!67062 (exprs!4697 (h!67063 zl!343))))) b!5223507))

(assert (= (and b!5222348 ((_ is Star!14813) (h!67062 (exprs!4697 (h!67063 zl!343))))) b!5223508))

(assert (= (and b!5222348 ((_ is Union!14813) (h!67062 (exprs!4697 (h!67063 zl!343))))) b!5223509))

(declare-fun b!5223510 () Bool)

(declare-fun e!3251144 () Bool)

(declare-fun tp!1464155 () Bool)

(declare-fun tp!1464156 () Bool)

(assert (=> b!5223510 (= e!3251144 (and tp!1464155 tp!1464156))))

(assert (=> b!5222348 (= tp!1463919 e!3251144)))

(assert (= (and b!5222348 ((_ is Cons!60614) (t!373909 (exprs!4697 (h!67063 zl!343))))) b!5223510))

(declare-fun b!5223511 () Bool)

(declare-fun e!3251145 () Bool)

(declare-fun tp!1464157 () Bool)

(declare-fun tp!1464158 () Bool)

(assert (=> b!5223511 (= e!3251145 (and tp!1464157 tp!1464158))))

(assert (=> b!5222320 (= tp!1463886 e!3251145)))

(assert (= (and b!5222320 ((_ is Cons!60614) (exprs!4697 (h!67063 (t!373910 zl!343))))) b!5223511))

(declare-fun b!5223513 () Bool)

(declare-fun e!3251147 () Bool)

(declare-fun tp!1464159 () Bool)

(assert (=> b!5223513 (= e!3251147 tp!1464159)))

(declare-fun b!5223512 () Bool)

(declare-fun e!3251146 () Bool)

(declare-fun tp!1464160 () Bool)

(assert (=> b!5223512 (= e!3251146 (and (inv!80279 (h!67063 (t!373910 (t!373910 zl!343)))) e!3251147 tp!1464160))))

(assert (=> b!5222319 (= tp!1463887 e!3251146)))

(assert (= b!5223512 b!5223513))

(assert (= (and b!5222319 ((_ is Cons!60615) (t!373910 (t!373910 zl!343)))) b!5223512))

(declare-fun m!6270708 () Bool)

(assert (=> b!5223512 m!6270708))

(declare-fun b!5223514 () Bool)

(declare-fun e!3251148 () Bool)

(declare-fun tp!1464161 () Bool)

(declare-fun tp!1464162 () Bool)

(assert (=> b!5223514 (= e!3251148 (and tp!1464161 tp!1464162))))

(assert (=> b!5222342 (= tp!1463910 e!3251148)))

(assert (= (and b!5222342 ((_ is Cons!60614) (exprs!4697 setElem!33223))) b!5223514))

(declare-fun b!5223517 () Bool)

(declare-fun e!3251149 () Bool)

(declare-fun tp!1464165 () Bool)

(assert (=> b!5223517 (= e!3251149 tp!1464165)))

(declare-fun b!5223515 () Bool)

(assert (=> b!5223515 (= e!3251149 tp_is_empty!38879)))

(declare-fun b!5223516 () Bool)

(declare-fun tp!1464166 () Bool)

(declare-fun tp!1464164 () Bool)

(assert (=> b!5223516 (= e!3251149 (and tp!1464166 tp!1464164))))

(assert (=> b!5222312 (= tp!1463881 e!3251149)))

(declare-fun b!5223518 () Bool)

(declare-fun tp!1464167 () Bool)

(declare-fun tp!1464163 () Bool)

(assert (=> b!5223518 (= e!3251149 (and tp!1464167 tp!1464163))))

(assert (= (and b!5222312 ((_ is ElementMatch!14813) (regOne!30139 (regTwo!30139 r!7292)))) b!5223515))

(assert (= (and b!5222312 ((_ is Concat!23658) (regOne!30139 (regTwo!30139 r!7292)))) b!5223516))

(assert (= (and b!5222312 ((_ is Star!14813) (regOne!30139 (regTwo!30139 r!7292)))) b!5223517))

(assert (= (and b!5222312 ((_ is Union!14813) (regOne!30139 (regTwo!30139 r!7292)))) b!5223518))

(declare-fun b!5223521 () Bool)

(declare-fun e!3251150 () Bool)

(declare-fun tp!1464170 () Bool)

(assert (=> b!5223521 (= e!3251150 tp!1464170)))

(declare-fun b!5223519 () Bool)

(assert (=> b!5223519 (= e!3251150 tp_is_empty!38879)))

(declare-fun b!5223520 () Bool)

(declare-fun tp!1464171 () Bool)

(declare-fun tp!1464169 () Bool)

(assert (=> b!5223520 (= e!3251150 (and tp!1464171 tp!1464169))))

(assert (=> b!5222312 (= tp!1463877 e!3251150)))

(declare-fun b!5223522 () Bool)

(declare-fun tp!1464172 () Bool)

(declare-fun tp!1464168 () Bool)

(assert (=> b!5223522 (= e!3251150 (and tp!1464172 tp!1464168))))

(assert (= (and b!5222312 ((_ is ElementMatch!14813) (regTwo!30139 (regTwo!30139 r!7292)))) b!5223519))

(assert (= (and b!5222312 ((_ is Concat!23658) (regTwo!30139 (regTwo!30139 r!7292)))) b!5223520))

(assert (= (and b!5222312 ((_ is Star!14813) (regTwo!30139 (regTwo!30139 r!7292)))) b!5223521))

(assert (= (and b!5222312 ((_ is Union!14813) (regTwo!30139 (regTwo!30139 r!7292)))) b!5223522))

(declare-fun b!5223525 () Bool)

(declare-fun e!3251151 () Bool)

(declare-fun tp!1464175 () Bool)

(assert (=> b!5223525 (= e!3251151 tp!1464175)))

(declare-fun b!5223523 () Bool)

(assert (=> b!5223523 (= e!3251151 tp_is_empty!38879)))

(declare-fun b!5223524 () Bool)

(declare-fun tp!1464176 () Bool)

(declare-fun tp!1464174 () Bool)

(assert (=> b!5223524 (= e!3251151 (and tp!1464176 tp!1464174))))

(assert (=> b!5222306 (= tp!1463875 e!3251151)))

(declare-fun b!5223526 () Bool)

(declare-fun tp!1464177 () Bool)

(declare-fun tp!1464173 () Bool)

(assert (=> b!5223526 (= e!3251151 (and tp!1464177 tp!1464173))))

(assert (= (and b!5222306 ((_ is ElementMatch!14813) (regOne!30138 (regOne!30139 r!7292)))) b!5223523))

(assert (= (and b!5222306 ((_ is Concat!23658) (regOne!30138 (regOne!30139 r!7292)))) b!5223524))

(assert (= (and b!5222306 ((_ is Star!14813) (regOne!30138 (regOne!30139 r!7292)))) b!5223525))

(assert (= (and b!5222306 ((_ is Union!14813) (regOne!30138 (regOne!30139 r!7292)))) b!5223526))

(declare-fun b!5223529 () Bool)

(declare-fun e!3251152 () Bool)

(declare-fun tp!1464180 () Bool)

(assert (=> b!5223529 (= e!3251152 tp!1464180)))

(declare-fun b!5223527 () Bool)

(assert (=> b!5223527 (= e!3251152 tp_is_empty!38879)))

(declare-fun b!5223528 () Bool)

(declare-fun tp!1464181 () Bool)

(declare-fun tp!1464179 () Bool)

(assert (=> b!5223528 (= e!3251152 (and tp!1464181 tp!1464179))))

(assert (=> b!5222306 (= tp!1463873 e!3251152)))

(declare-fun b!5223530 () Bool)

(declare-fun tp!1464182 () Bool)

(declare-fun tp!1464178 () Bool)

(assert (=> b!5223530 (= e!3251152 (and tp!1464182 tp!1464178))))

(assert (= (and b!5222306 ((_ is ElementMatch!14813) (regTwo!30138 (regOne!30139 r!7292)))) b!5223527))

(assert (= (and b!5222306 ((_ is Concat!23658) (regTwo!30138 (regOne!30139 r!7292)))) b!5223528))

(assert (= (and b!5222306 ((_ is Star!14813) (regTwo!30138 (regOne!30139 r!7292)))) b!5223529))

(assert (= (and b!5222306 ((_ is Union!14813) (regTwo!30138 (regOne!30139 r!7292)))) b!5223530))

(declare-fun b!5223533 () Bool)

(declare-fun e!3251153 () Bool)

(declare-fun tp!1464185 () Bool)

(assert (=> b!5223533 (= e!3251153 tp!1464185)))

(declare-fun b!5223531 () Bool)

(assert (=> b!5223531 (= e!3251153 tp_is_empty!38879)))

(declare-fun b!5223532 () Bool)

(declare-fun tp!1464186 () Bool)

(declare-fun tp!1464184 () Bool)

(assert (=> b!5223532 (= e!3251153 (and tp!1464186 tp!1464184))))

(assert (=> b!5222329 (= tp!1463895 e!3251153)))

(declare-fun b!5223534 () Bool)

(declare-fun tp!1464187 () Bool)

(declare-fun tp!1464183 () Bool)

(assert (=> b!5223534 (= e!3251153 (and tp!1464187 tp!1464183))))

(assert (= (and b!5222329 ((_ is ElementMatch!14813) (regOne!30139 (regOne!30138 r!7292)))) b!5223531))

(assert (= (and b!5222329 ((_ is Concat!23658) (regOne!30139 (regOne!30138 r!7292)))) b!5223532))

(assert (= (and b!5222329 ((_ is Star!14813) (regOne!30139 (regOne!30138 r!7292)))) b!5223533))

(assert (= (and b!5222329 ((_ is Union!14813) (regOne!30139 (regOne!30138 r!7292)))) b!5223534))

(declare-fun b!5223537 () Bool)

(declare-fun e!3251154 () Bool)

(declare-fun tp!1464190 () Bool)

(assert (=> b!5223537 (= e!3251154 tp!1464190)))

(declare-fun b!5223535 () Bool)

(assert (=> b!5223535 (= e!3251154 tp_is_empty!38879)))

(declare-fun b!5223536 () Bool)

(declare-fun tp!1464191 () Bool)

(declare-fun tp!1464189 () Bool)

(assert (=> b!5223536 (= e!3251154 (and tp!1464191 tp!1464189))))

(assert (=> b!5222329 (= tp!1463891 e!3251154)))

(declare-fun b!5223538 () Bool)

(declare-fun tp!1464192 () Bool)

(declare-fun tp!1464188 () Bool)

(assert (=> b!5223538 (= e!3251154 (and tp!1464192 tp!1464188))))

(assert (= (and b!5222329 ((_ is ElementMatch!14813) (regTwo!30139 (regOne!30138 r!7292)))) b!5223535))

(assert (= (and b!5222329 ((_ is Concat!23658) (regTwo!30139 (regOne!30138 r!7292)))) b!5223536))

(assert (= (and b!5222329 ((_ is Star!14813) (regTwo!30139 (regOne!30138 r!7292)))) b!5223537))

(assert (= (and b!5222329 ((_ is Union!14813) (regTwo!30139 (regOne!30138 r!7292)))) b!5223538))

(declare-fun b!5223541 () Bool)

(declare-fun e!3251155 () Bool)

(declare-fun tp!1464195 () Bool)

(assert (=> b!5223541 (= e!3251155 tp!1464195)))

(declare-fun b!5223539 () Bool)

(assert (=> b!5223539 (= e!3251155 tp_is_empty!38879)))

(declare-fun b!5223540 () Bool)

(declare-fun tp!1464196 () Bool)

(declare-fun tp!1464194 () Bool)

(assert (=> b!5223540 (= e!3251155 (and tp!1464196 tp!1464194))))

(assert (=> b!5222328 (= tp!1463893 e!3251155)))

(declare-fun b!5223542 () Bool)

(declare-fun tp!1464197 () Bool)

(declare-fun tp!1464193 () Bool)

(assert (=> b!5223542 (= e!3251155 (and tp!1464197 tp!1464193))))

(assert (= (and b!5222328 ((_ is ElementMatch!14813) (reg!15142 (regOne!30138 r!7292)))) b!5223539))

(assert (= (and b!5222328 ((_ is Concat!23658) (reg!15142 (regOne!30138 r!7292)))) b!5223540))

(assert (= (and b!5222328 ((_ is Star!14813) (reg!15142 (regOne!30138 r!7292)))) b!5223541))

(assert (= (and b!5222328 ((_ is Union!14813) (reg!15142 (regOne!30138 r!7292)))) b!5223542))

(declare-fun b!5223545 () Bool)

(declare-fun e!3251156 () Bool)

(declare-fun tp!1464200 () Bool)

(assert (=> b!5223545 (= e!3251156 tp!1464200)))

(declare-fun b!5223543 () Bool)

(assert (=> b!5223543 (= e!3251156 tp_is_empty!38879)))

(declare-fun b!5223544 () Bool)

(declare-fun tp!1464201 () Bool)

(declare-fun tp!1464199 () Bool)

(assert (=> b!5223544 (= e!3251156 (and tp!1464201 tp!1464199))))

(assert (=> b!5222337 (= tp!1463905 e!3251156)))

(declare-fun b!5223546 () Bool)

(declare-fun tp!1464202 () Bool)

(declare-fun tp!1464198 () Bool)

(assert (=> b!5223546 (= e!3251156 (and tp!1464202 tp!1464198))))

(assert (= (and b!5222337 ((_ is ElementMatch!14813) (regOne!30139 (reg!15142 r!7292)))) b!5223543))

(assert (= (and b!5222337 ((_ is Concat!23658) (regOne!30139 (reg!15142 r!7292)))) b!5223544))

(assert (= (and b!5222337 ((_ is Star!14813) (regOne!30139 (reg!15142 r!7292)))) b!5223545))

(assert (= (and b!5222337 ((_ is Union!14813) (regOne!30139 (reg!15142 r!7292)))) b!5223546))

(declare-fun b!5223549 () Bool)

(declare-fun e!3251157 () Bool)

(declare-fun tp!1464205 () Bool)

(assert (=> b!5223549 (= e!3251157 tp!1464205)))

(declare-fun b!5223547 () Bool)

(assert (=> b!5223547 (= e!3251157 tp_is_empty!38879)))

(declare-fun b!5223548 () Bool)

(declare-fun tp!1464206 () Bool)

(declare-fun tp!1464204 () Bool)

(assert (=> b!5223548 (= e!3251157 (and tp!1464206 tp!1464204))))

(assert (=> b!5222337 (= tp!1463901 e!3251157)))

(declare-fun b!5223550 () Bool)

(declare-fun tp!1464207 () Bool)

(declare-fun tp!1464203 () Bool)

(assert (=> b!5223550 (= e!3251157 (and tp!1464207 tp!1464203))))

(assert (= (and b!5222337 ((_ is ElementMatch!14813) (regTwo!30139 (reg!15142 r!7292)))) b!5223547))

(assert (= (and b!5222337 ((_ is Concat!23658) (regTwo!30139 (reg!15142 r!7292)))) b!5223548))

(assert (= (and b!5222337 ((_ is Star!14813) (regTwo!30139 (reg!15142 r!7292)))) b!5223549))

(assert (= (and b!5222337 ((_ is Union!14813) (regTwo!30139 (reg!15142 r!7292)))) b!5223550))

(declare-fun b!5223553 () Bool)

(declare-fun e!3251158 () Bool)

(declare-fun tp!1464210 () Bool)

(assert (=> b!5223553 (= e!3251158 tp!1464210)))

(declare-fun b!5223551 () Bool)

(assert (=> b!5223551 (= e!3251158 tp_is_empty!38879)))

(declare-fun b!5223552 () Bool)

(declare-fun tp!1464211 () Bool)

(declare-fun tp!1464209 () Bool)

(assert (=> b!5223552 (= e!3251158 (and tp!1464211 tp!1464209))))

(assert (=> b!5222327 (= tp!1463894 e!3251158)))

(declare-fun b!5223554 () Bool)

(declare-fun tp!1464212 () Bool)

(declare-fun tp!1464208 () Bool)

(assert (=> b!5223554 (= e!3251158 (and tp!1464212 tp!1464208))))

(assert (= (and b!5222327 ((_ is ElementMatch!14813) (regOne!30138 (regOne!30138 r!7292)))) b!5223551))

(assert (= (and b!5222327 ((_ is Concat!23658) (regOne!30138 (regOne!30138 r!7292)))) b!5223552))

(assert (= (and b!5222327 ((_ is Star!14813) (regOne!30138 (regOne!30138 r!7292)))) b!5223553))

(assert (= (and b!5222327 ((_ is Union!14813) (regOne!30138 (regOne!30138 r!7292)))) b!5223554))

(declare-fun b!5223557 () Bool)

(declare-fun e!3251159 () Bool)

(declare-fun tp!1464215 () Bool)

(assert (=> b!5223557 (= e!3251159 tp!1464215)))

(declare-fun b!5223555 () Bool)

(assert (=> b!5223555 (= e!3251159 tp_is_empty!38879)))

(declare-fun b!5223556 () Bool)

(declare-fun tp!1464216 () Bool)

(declare-fun tp!1464214 () Bool)

(assert (=> b!5223556 (= e!3251159 (and tp!1464216 tp!1464214))))

(assert (=> b!5222327 (= tp!1463892 e!3251159)))

(declare-fun b!5223558 () Bool)

(declare-fun tp!1464217 () Bool)

(declare-fun tp!1464213 () Bool)

(assert (=> b!5223558 (= e!3251159 (and tp!1464217 tp!1464213))))

(assert (= (and b!5222327 ((_ is ElementMatch!14813) (regTwo!30138 (regOne!30138 r!7292)))) b!5223555))

(assert (= (and b!5222327 ((_ is Concat!23658) (regTwo!30138 (regOne!30138 r!7292)))) b!5223556))

(assert (= (and b!5222327 ((_ is Star!14813) (regTwo!30138 (regOne!30138 r!7292)))) b!5223557))

(assert (= (and b!5222327 ((_ is Union!14813) (regTwo!30138 (regOne!30138 r!7292)))) b!5223558))

(declare-fun b!5223561 () Bool)

(declare-fun e!3251160 () Bool)

(declare-fun tp!1464220 () Bool)

(assert (=> b!5223561 (= e!3251160 tp!1464220)))

(declare-fun b!5223559 () Bool)

(assert (=> b!5223559 (= e!3251160 tp_is_empty!38879)))

(declare-fun b!5223560 () Bool)

(declare-fun tp!1464221 () Bool)

(declare-fun tp!1464219 () Bool)

(assert (=> b!5223560 (= e!3251160 (and tp!1464221 tp!1464219))))

(assert (=> b!5222336 (= tp!1463903 e!3251160)))

(declare-fun b!5223562 () Bool)

(declare-fun tp!1464222 () Bool)

(declare-fun tp!1464218 () Bool)

(assert (=> b!5223562 (= e!3251160 (and tp!1464222 tp!1464218))))

(assert (= (and b!5222336 ((_ is ElementMatch!14813) (reg!15142 (reg!15142 r!7292)))) b!5223559))

(assert (= (and b!5222336 ((_ is Concat!23658) (reg!15142 (reg!15142 r!7292)))) b!5223560))

(assert (= (and b!5222336 ((_ is Star!14813) (reg!15142 (reg!15142 r!7292)))) b!5223561))

(assert (= (and b!5222336 ((_ is Union!14813) (reg!15142 (reg!15142 r!7292)))) b!5223562))

(declare-fun b!5223565 () Bool)

(declare-fun e!3251161 () Bool)

(declare-fun tp!1464225 () Bool)

(assert (=> b!5223565 (= e!3251161 tp!1464225)))

(declare-fun b!5223563 () Bool)

(assert (=> b!5223563 (= e!3251161 tp_is_empty!38879)))

(declare-fun b!5223564 () Bool)

(declare-fun tp!1464226 () Bool)

(declare-fun tp!1464224 () Bool)

(assert (=> b!5223564 (= e!3251161 (and tp!1464226 tp!1464224))))

(assert (=> b!5222335 (= tp!1463904 e!3251161)))

(declare-fun b!5223566 () Bool)

(declare-fun tp!1464227 () Bool)

(declare-fun tp!1464223 () Bool)

(assert (=> b!5223566 (= e!3251161 (and tp!1464227 tp!1464223))))

(assert (= (and b!5222335 ((_ is ElementMatch!14813) (regOne!30138 (reg!15142 r!7292)))) b!5223563))

(assert (= (and b!5222335 ((_ is Concat!23658) (regOne!30138 (reg!15142 r!7292)))) b!5223564))

(assert (= (and b!5222335 ((_ is Star!14813) (regOne!30138 (reg!15142 r!7292)))) b!5223565))

(assert (= (and b!5222335 ((_ is Union!14813) (regOne!30138 (reg!15142 r!7292)))) b!5223566))

(declare-fun b!5223569 () Bool)

(declare-fun e!3251162 () Bool)

(declare-fun tp!1464230 () Bool)

(assert (=> b!5223569 (= e!3251162 tp!1464230)))

(declare-fun b!5223567 () Bool)

(assert (=> b!5223567 (= e!3251162 tp_is_empty!38879)))

(declare-fun b!5223568 () Bool)

(declare-fun tp!1464231 () Bool)

(declare-fun tp!1464229 () Bool)

(assert (=> b!5223568 (= e!3251162 (and tp!1464231 tp!1464229))))

(assert (=> b!5222335 (= tp!1463902 e!3251162)))

(declare-fun b!5223570 () Bool)

(declare-fun tp!1464232 () Bool)

(declare-fun tp!1464228 () Bool)

(assert (=> b!5223570 (= e!3251162 (and tp!1464232 tp!1464228))))

(assert (= (and b!5222335 ((_ is ElementMatch!14813) (regTwo!30138 (reg!15142 r!7292)))) b!5223567))

(assert (= (and b!5222335 ((_ is Concat!23658) (regTwo!30138 (reg!15142 r!7292)))) b!5223568))

(assert (= (and b!5222335 ((_ is Star!14813) (regTwo!30138 (reg!15142 r!7292)))) b!5223569))

(assert (= (and b!5222335 ((_ is Union!14813) (regTwo!30138 (reg!15142 r!7292)))) b!5223570))

(declare-fun b!5223573 () Bool)

(declare-fun e!3251163 () Bool)

(declare-fun tp!1464235 () Bool)

(assert (=> b!5223573 (= e!3251163 tp!1464235)))

(declare-fun b!5223571 () Bool)

(assert (=> b!5223571 (= e!3251163 tp_is_empty!38879)))

(declare-fun b!5223572 () Bool)

(declare-fun tp!1464236 () Bool)

(declare-fun tp!1464234 () Bool)

(assert (=> b!5223572 (= e!3251163 (and tp!1464236 tp!1464234))))

(assert (=> b!5222308 (= tp!1463876 e!3251163)))

(declare-fun b!5223574 () Bool)

(declare-fun tp!1464237 () Bool)

(declare-fun tp!1464233 () Bool)

(assert (=> b!5223574 (= e!3251163 (and tp!1464237 tp!1464233))))

(assert (= (and b!5222308 ((_ is ElementMatch!14813) (regOne!30139 (regOne!30139 r!7292)))) b!5223571))

(assert (= (and b!5222308 ((_ is Concat!23658) (regOne!30139 (regOne!30139 r!7292)))) b!5223572))

(assert (= (and b!5222308 ((_ is Star!14813) (regOne!30139 (regOne!30139 r!7292)))) b!5223573))

(assert (= (and b!5222308 ((_ is Union!14813) (regOne!30139 (regOne!30139 r!7292)))) b!5223574))

(declare-fun b!5223577 () Bool)

(declare-fun e!3251164 () Bool)

(declare-fun tp!1464240 () Bool)

(assert (=> b!5223577 (= e!3251164 tp!1464240)))

(declare-fun b!5223575 () Bool)

(assert (=> b!5223575 (= e!3251164 tp_is_empty!38879)))

(declare-fun b!5223576 () Bool)

(declare-fun tp!1464241 () Bool)

(declare-fun tp!1464239 () Bool)

(assert (=> b!5223576 (= e!3251164 (and tp!1464241 tp!1464239))))

(assert (=> b!5222308 (= tp!1463872 e!3251164)))

(declare-fun b!5223578 () Bool)

(declare-fun tp!1464242 () Bool)

(declare-fun tp!1464238 () Bool)

(assert (=> b!5223578 (= e!3251164 (and tp!1464242 tp!1464238))))

(assert (= (and b!5222308 ((_ is ElementMatch!14813) (regTwo!30139 (regOne!30139 r!7292)))) b!5223575))

(assert (= (and b!5222308 ((_ is Concat!23658) (regTwo!30139 (regOne!30139 r!7292)))) b!5223576))

(assert (= (and b!5222308 ((_ is Star!14813) (regTwo!30139 (regOne!30139 r!7292)))) b!5223577))

(assert (= (and b!5222308 ((_ is Union!14813) (regTwo!30139 (regOne!30139 r!7292)))) b!5223578))

(declare-fun b!5223581 () Bool)

(declare-fun e!3251165 () Bool)

(declare-fun tp!1464245 () Bool)

(assert (=> b!5223581 (= e!3251165 tp!1464245)))

(declare-fun b!5223579 () Bool)

(assert (=> b!5223579 (= e!3251165 tp_is_empty!38879)))

(declare-fun b!5223580 () Bool)

(declare-fun tp!1464246 () Bool)

(declare-fun tp!1464244 () Bool)

(assert (=> b!5223580 (= e!3251165 (and tp!1464246 tp!1464244))))

(assert (=> b!5222307 (= tp!1463874 e!3251165)))

(declare-fun b!5223582 () Bool)

(declare-fun tp!1464247 () Bool)

(declare-fun tp!1464243 () Bool)

(assert (=> b!5223582 (= e!3251165 (and tp!1464247 tp!1464243))))

(assert (= (and b!5222307 ((_ is ElementMatch!14813) (reg!15142 (regOne!30139 r!7292)))) b!5223579))

(assert (= (and b!5222307 ((_ is Concat!23658) (reg!15142 (regOne!30139 r!7292)))) b!5223580))

(assert (= (and b!5222307 ((_ is Star!14813) (reg!15142 (regOne!30139 r!7292)))) b!5223581))

(assert (= (and b!5222307 ((_ is Union!14813) (reg!15142 (regOne!30139 r!7292)))) b!5223582))

(declare-fun b_lambda!201969 () Bool)

(assert (= b_lambda!201967 (or d!1683482 b_lambda!201969)))

(declare-fun bs!1212927 () Bool)

(declare-fun d!1684074 () Bool)

(assert (= bs!1212927 (and d!1684074 d!1683482)))

(assert (=> bs!1212927 (= (dynLambda!23951 lambda!262120 (h!67062 (exprs!4697 (h!67063 zl!343)))) (validRegex!6549 (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(declare-fun m!6270710 () Bool)

(assert (=> bs!1212927 m!6270710))

(assert (=> b!5223372 d!1684074))

(declare-fun b_lambda!201971 () Bool)

(assert (= b_lambda!201959 (or b!5221522 b_lambda!201971)))

(assert (=> d!1683940 d!1683546))

(declare-fun b_lambda!201973 () Bool)

(assert (= b_lambda!201957 (or d!1683484 b_lambda!201973)))

(declare-fun bs!1212928 () Bool)

(declare-fun d!1684076 () Bool)

(assert (= bs!1212928 (and d!1684076 d!1683484)))

(assert (=> bs!1212928 (= (dynLambda!23951 lambda!262121 (h!67062 (exprs!4697 (h!67063 zl!343)))) (validRegex!6549 (h!67062 (exprs!4697 (h!67063 zl!343)))))))

(assert (=> bs!1212928 m!6270710))

(assert (=> b!5223023 d!1684076))

(declare-fun b_lambda!201975 () Bool)

(assert (= b_lambda!201955 (or d!1683500 b_lambda!201975)))

(declare-fun bs!1212929 () Bool)

(declare-fun d!1684078 () Bool)

(assert (= bs!1212929 (and d!1684078 d!1683500)))

(assert (=> bs!1212929 (= (dynLambda!23951 lambda!262127 (h!67062 lt!2143866)) (validRegex!6549 (h!67062 lt!2143866)))))

(declare-fun m!6270712 () Bool)

(assert (=> bs!1212929 m!6270712))

(assert (=> b!5223021 d!1684078))

(declare-fun b_lambda!201977 () Bool)

(assert (= b_lambda!201963 (or d!1683480 b_lambda!201977)))

(declare-fun bs!1212930 () Bool)

(declare-fun d!1684080 () Bool)

(assert (= bs!1212930 (and d!1684080 d!1683480)))

(assert (=> bs!1212930 (= (dynLambda!23951 lambda!262117 (h!67062 (exprs!4697 setElem!33217))) (validRegex!6549 (h!67062 (exprs!4697 setElem!33217))))))

(declare-fun m!6270714 () Bool)

(assert (=> bs!1212930 m!6270714))

(assert (=> b!5223342 d!1684080))

(declare-fun b_lambda!201979 () Bool)

(assert (= b_lambda!201953 (or b!5221522 b_lambda!201979)))

(assert (=> d!1683816 d!1683544))

(declare-fun b_lambda!201981 () Bool)

(assert (= b_lambda!201961 (or d!1683498 b_lambda!201981)))

(declare-fun bs!1212931 () Bool)

(declare-fun d!1684082 () Bool)

(assert (= bs!1212931 (and d!1684082 d!1683498)))

(assert (=> bs!1212931 (= (dynLambda!23951 lambda!262124 (h!67062 (unfocusZipperList!255 zl!343))) (validRegex!6549 (h!67062 (unfocusZipperList!255 zl!343))))))

(declare-fun m!6270716 () Bool)

(assert (=> bs!1212931 m!6270716))

(assert (=> b!5223335 d!1684082))

(declare-fun b_lambda!201983 () Bool)

(assert (= b_lambda!201965 (or b!5221522 b_lambda!201983)))

(assert (=> d!1684014 d!1683542))

(check-sat (not b!5223562) (not b!5223549) (not b!5223096) (not b!5222981) (not bm!368753) (not d!1684018) (not bm!368874) (not bm!368832) (not d!1683950) (not d!1684060) (not b!5223145) (not b!5222970) (not b!5223030) (not b!5223493) (not b!5223507) (not setNonEmpty!33234) (not d!1683896) (not b!5223475) (not d!1683942) (not b!5223322) (not b_lambda!201981) (not b!5223302) (not b!5223552) (not b!5223497) (not b!5223529) (not d!1683930) (not b!5223072) (not b!5223244) (not b!5223283) (not b!5223174) (not b!5223470) (not bm!368866) (not b!5223360) (not b!5223075) (not b!5223180) (not b!5223533) (not b!5223503) (not b!5223532) (not bm!368843) (not d!1684056) (not b!5223194) (not d!1683996) (not b!5223492) (not d!1683966) (not b!5223456) (not bm!368804) (not b!5223553) (not bm!368809) (not b!5223325) (not bm!368779) (not d!1683912) (not b!5223257) (not bm!368842) (not b!5223466) (not b!5223530) (not b!5223288) (not b!5223479) (not bm!368775) (not bm!368774) (not d!1683866) (not b!5223411) (not b!5223469) (not b!5223344) (not b!5223464) (not bm!368857) (not b!5223500) (not b!5223581) (not b!5223417) (not b!5223064) (not bm!368803) (not b_lambda!201983) (not d!1683882) (not b!5223358) (not bm!368827) (not b!5223340) (not setNonEmpty!33233) (not b!5223179) (not bm!368877) (not b!5223022) (not b!5223198) (not bm!368770) (not b!5223556) (not bm!368838) (not b!5223352) (not d!1684066) (not bm!368780) (not d!1683906) (not b!5223298) (not b!5223525) (not b!5223291) (not b!5223582) (not b!5223269) (not b!5223487) (not d!1683922) (not b!5223303) (not b!5223471) (not b!5223465) (not b!5223558) (not b!5223577) (not d!1683974) (not b_lambda!201975) (not b!5223341) (not b!5222973) (not b!5223351) (not d!1683852) (not b!5223477) (not b!5223361) (not b!5223574) (not b_lambda!201979) (not bm!368859) (not bm!368847) (not d!1683920) (not d!1683910) (not b!5223550) (not b!5223002) (not b!5223505) (not b!5223488) (not b!5223172) (not b!5223076) (not d!1684014) (not b!5223296) (not bm!368867) (not b!5223290) (not d!1683908) (not b!5223371) (not b!5223383) (not b!5223279) (not b!5223557) (not b!5223088) (not bm!368757) (not b!5223409) (not bm!368778) (not b!5223542) (not b!5222978) (not d!1683884) (not b!5223300) (not b!5223561) (not b!5223548) (not d!1684004) (not b!5223294) (not b!5223499) (not bs!1212928) (not d!1683856) (not b!5223537) (not bs!1212927) (not b!5223528) (not b!5223446) (not bm!368755) (not b!5223434) (not bm!368846) (not bm!368821) (not bm!368764) (not b!5223439) (not bm!368844) (not b!5223181) (not setNonEmpty!33232) (not b_lambda!201919) (not d!1683972) (not b!5223526) (not d!1684026) (not b!5223258) (not b!5223436) (not bs!1212929) (not b!5223476) (not b!5223541) (not b!5223343) (not b!5223292) (not b!5223144) (not bm!368836) (not b!5223474) (not b!5223098) (not b!5223182) (not b!5223345) (not b!5223491) (not d!1683888) (not b!5223546) (not b!5223524) (not b!5223336) (not bm!368849) (not bm!368771) (not b!5223123) (not b!5223566) (not bm!368864) (not bm!368810) (not b!5223578) (not b!5223012) (not b!5223173) (not bm!368855) (not d!1683818) (not b!5223373) (not b!5223389) (not d!1683960) (not d!1683926) (not b!5223463) (not b!5223538) (not d!1683948) (not b!5223480) (not b!5223483) (not b!5223142) (not b_lambda!201973) (not d!1683826) (not bm!368811) (not b!5223202) (not bm!368798) (not b!5223095) (not bm!368814) (not b!5223544) (not d!1683916) (not b!5223514) (not d!1683854) (not d!1684062) (not bm!368799) (not b!5223155) (not d!1683980) (not d!1683904) (not b!5223334) (not b!5223356) (not d!1683982) (not b!5223025) (not b!5223520) (not bm!368828) (not b!5223218) (not b!5223495) (not b!5223016) (not bm!368825) (not b!5223091) (not b!5223580) (not d!1683848) (not b!5223511) (not b!5223301) (not b!5223521) (not d!1684034) (not b!5223168) (not bm!368813) (not b!5223388) (not d!1683968) (not bm!368850) (not bs!1212931) (not b!5222975) (not b_lambda!201969) (not bm!368851) (not bm!368791) (not bm!368817) (not d!1683914) (not b_lambda!201915) (not b!5223441) (not b!5223572) (not b!5223455) (not b!5223178) (not b!5223293) (not bm!368839) (not bm!368822) (not b!5223169) (not bm!368797) (not b!5223570) (not d!1683878) (not b!5223472) (not b!5223467) (not b!5223031) (not d!1683964) (not b!5222969) (not b!5223324) (not d!1684036) (not bm!368792) (not b_lambda!201917) (not b!5223238) (not b!5223442) (not bm!368862) (not d!1683918) (not b!5223560) (not bm!368782) (not b!5223534) (not b!5223540) (not bm!368863) (not b!5223347) tp_is_empty!38879 (not bm!368823) (not b!5223201) (not b!5223438) (not b!5223177) (not d!1684016) (not b!5223068) (not b!5223304) (not bm!368805) (not b!5223199) (not b!5223568) (not b!5223510) (not b!5223228) (not setNonEmpty!33235) (not b!5223073) (not d!1683994) (not b!5223545) (not b!5222980) (not bm!368875) (not bm!368758) (not bm!368818) (not b!5223024) (not d!1684040) (not b!5223484) (not bm!368826) (not b!5223496) (not b!5223359) (not b!5223508) (not b!5223284) (not bs!1212930) (not d!1683978) (not bm!368776) (not bm!368869) (not bm!368763) (not d!1684020) (not b!5223489) (not b!5223485) (not b!5223355) (not b!5223569) (not b!5223166) (not bm!368762) (not b!5223501) (not b_lambda!201977) (not b!5223289) (not b!5223576) (not b!5223099) (not b!5223430) (not b!5222993) (not b!5223348) (not b!5223196) (not b!5223512) (not b!5223509) (not b!5223029) (not d!1683876) (not bm!368816) (not b!5223573) (not b!5223481) (not b_lambda!201971) (not b!5222977) (not d!1683828) (not d!1683970) (not d!1684052) (not b!5223191) (not d!1684070) (not b!5223554) (not b!5223070) (not bm!368752) (not b!5223518) (not d!1683898) (not b!5223522) (not bm!368833) (not b!5223516) (not bm!368856) (not d!1683816) (not b!5223513) (not b!5223399) (not b!5223504) (not d!1683944) (not b!5223517) (not bm!368870) (not bm!368831) (not d!1684022) (not bm!368835) (not b!5223176) (not b!5223564) (not b!5223093) (not bm!368754) (not d!1683940) (not d!1684024) (not b!5223565) (not b!5223536) (not bm!368873) (not d!1683976))
(check-sat)
