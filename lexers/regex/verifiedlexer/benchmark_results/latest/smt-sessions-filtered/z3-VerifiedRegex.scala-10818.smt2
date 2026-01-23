; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!556050 () Bool)

(assert start!556050)

(declare-fun b!5264604 () Bool)

(assert (=> b!5264604 true))

(assert (=> b!5264604 true))

(declare-fun lambda!265474 () Int)

(declare-fun lambda!265473 () Int)

(assert (=> b!5264604 (not (= lambda!265474 lambda!265473))))

(assert (=> b!5264604 true))

(assert (=> b!5264604 true))

(declare-fun b!5264610 () Bool)

(assert (=> b!5264610 true))

(declare-fun b!5264601 () Bool)

(declare-fun res!2233756 () Bool)

(declare-fun e!3274558 () Bool)

(assert (=> b!5264601 (=> (not res!2233756) (not e!3274558))))

(declare-datatypes ((C!30036 0))(
  ( (C!30037 (val!24720 Int)) )
))
(declare-datatypes ((Regex!14883 0))(
  ( (ElementMatch!14883 (c!911481 C!30036)) (Concat!23728 (regOne!30278 Regex!14883) (regTwo!30278 Regex!14883)) (EmptyExpr!14883) (Star!14883 (reg!15212 Regex!14883)) (EmptyLang!14883) (Union!14883 (regOne!30279 Regex!14883) (regTwo!30279 Regex!14883)) )
))
(declare-fun r!7292 () Regex!14883)

(declare-datatypes ((List!60948 0))(
  ( (Nil!60824) (Cons!60824 (h!67272 Regex!14883) (t!374137 List!60948)) )
))
(declare-datatypes ((Context!8534 0))(
  ( (Context!8535 (exprs!4767 List!60948)) )
))
(declare-datatypes ((List!60949 0))(
  ( (Nil!60825) (Cons!60825 (h!67273 Context!8534) (t!374138 List!60949)) )
))
(declare-fun zl!343 () List!60949)

(declare-fun unfocusZipper!625 (List!60949) Regex!14883)

(assert (=> b!5264601 (= res!2233756 (= r!7292 (unfocusZipper!625 zl!343)))))

(declare-fun b!5264602 () Bool)

(declare-fun e!3274559 () Bool)

(declare-fun tp!1471720 () Bool)

(assert (=> b!5264602 (= e!3274559 tp!1471720)))

(declare-fun b!5264603 () Bool)

(declare-fun e!3274566 () Bool)

(declare-fun tp!1471719 () Bool)

(assert (=> b!5264603 (= e!3274566 tp!1471719)))

(declare-fun tp!1471717 () Bool)

(declare-fun setRes!33671 () Bool)

(declare-fun setElem!33671 () Context!8534)

(declare-fun e!3274561 () Bool)

(declare-fun setNonEmpty!33671 () Bool)

(declare-fun inv!80454 (Context!8534) Bool)

(assert (=> setNonEmpty!33671 (= setRes!33671 (and tp!1471717 (inv!80454 setElem!33671) e!3274561))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8534))

(declare-fun setRest!33671 () (InoxSet Context!8534))

(assert (=> setNonEmpty!33671 (= z!1189 ((_ map or) (store ((as const (Array Context!8534 Bool)) false) setElem!33671 true) setRest!33671))))

(declare-fun e!3274564 () Bool)

(declare-fun e!3274568 () Bool)

(assert (=> b!5264604 (= e!3274564 e!3274568)))

(declare-fun res!2233758 () Bool)

(assert (=> b!5264604 (=> res!2233758 e!3274568)))

(declare-datatypes ((List!60950 0))(
  ( (Nil!60826) (Cons!60826 (h!67274 C!30036) (t!374139 List!60950)) )
))
(declare-fun s!2326 () List!60950)

(declare-fun lt!2155732 () Bool)

(declare-fun lt!2155731 () Bool)

(get-info :version)

(assert (=> b!5264604 (= res!2233758 (or (not (= lt!2155732 lt!2155731)) ((_ is Nil!60826) s!2326)))))

(declare-fun Exists!2064 (Int) Bool)

(assert (=> b!5264604 (= (Exists!2064 lambda!265473) (Exists!2064 lambda!265474))))

(declare-datatypes ((Unit!153050 0))(
  ( (Unit!153051) )
))
(declare-fun lt!2155727 () Unit!153050)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!718 (Regex!14883 Regex!14883 List!60950) Unit!153050)

(assert (=> b!5264604 (= lt!2155727 (lemmaExistCutMatchRandMatchRSpecEquivalent!718 (regOne!30278 r!7292) (regTwo!30278 r!7292) s!2326))))

(assert (=> b!5264604 (= lt!2155731 (Exists!2064 lambda!265473))))

(declare-datatypes ((tuple2!64164 0))(
  ( (tuple2!64165 (_1!35385 List!60950) (_2!35385 List!60950)) )
))
(declare-datatypes ((Option!14994 0))(
  ( (None!14993) (Some!14993 (v!51022 tuple2!64164)) )
))
(declare-fun isDefined!11697 (Option!14994) Bool)

(declare-fun findConcatSeparation!1408 (Regex!14883 Regex!14883 List!60950 List!60950 List!60950) Option!14994)

(assert (=> b!5264604 (= lt!2155731 (isDefined!11697 (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) Nil!60826 s!2326 s!2326)))))

(declare-fun lt!2155733 () Unit!153050)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1172 (Regex!14883 Regex!14883 List!60950) Unit!153050)

(assert (=> b!5264604 (= lt!2155733 (lemmaFindConcatSeparationEquivalentToExists!1172 (regOne!30278 r!7292) (regTwo!30278 r!7292) s!2326))))

(declare-fun b!5264605 () Bool)

(declare-fun e!3274560 () Unit!153050)

(declare-fun Unit!153052 () Unit!153050)

(assert (=> b!5264605 (= e!3274560 Unit!153052)))

(declare-fun lt!2155736 () (InoxSet Context!8534))

(declare-fun lt!2155738 () Unit!153050)

(declare-fun lt!2155737 () (InoxSet Context!8534))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!120 ((InoxSet Context!8534) (InoxSet Context!8534) List!60950) Unit!153050)

(assert (=> b!5264605 (= lt!2155738 (lemmaZipperConcatMatchesSameAsBothZippers!120 lt!2155737 lt!2155736 (t!374139 s!2326)))))

(declare-fun res!2233763 () Bool)

(declare-fun matchZipper!1127 ((InoxSet Context!8534) List!60950) Bool)

(assert (=> b!5264605 (= res!2233763 (matchZipper!1127 lt!2155737 (t!374139 s!2326)))))

(declare-fun e!3274565 () Bool)

(assert (=> b!5264605 (=> res!2233763 e!3274565)))

(assert (=> b!5264605 (= (matchZipper!1127 ((_ map or) lt!2155737 lt!2155736) (t!374139 s!2326)) e!3274565)))

(declare-fun tp!1471718 () Bool)

(declare-fun b!5264606 () Bool)

(declare-fun e!3274562 () Bool)

(assert (=> b!5264606 (= e!3274562 (and (inv!80454 (h!67273 zl!343)) e!3274566 tp!1471718))))

(declare-fun res!2233750 () Bool)

(assert (=> start!556050 (=> (not res!2233750) (not e!3274558))))

(declare-fun validRegex!6619 (Regex!14883) Bool)

(assert (=> start!556050 (= res!2233750 (validRegex!6619 r!7292))))

(assert (=> start!556050 e!3274558))

(assert (=> start!556050 e!3274559))

(declare-fun condSetEmpty!33671 () Bool)

(assert (=> start!556050 (= condSetEmpty!33671 (= z!1189 ((as const (Array Context!8534 Bool)) false)))))

(assert (=> start!556050 setRes!33671))

(assert (=> start!556050 e!3274562))

(declare-fun e!3274567 () Bool)

(assert (=> start!556050 e!3274567))

(declare-fun b!5264607 () Bool)

(declare-fun res!2233755 () Bool)

(assert (=> b!5264607 (=> res!2233755 e!3274564)))

(declare-fun generalisedConcat!552 (List!60948) Regex!14883)

(assert (=> b!5264607 (= res!2233755 (not (= r!7292 (generalisedConcat!552 (exprs!4767 (h!67273 zl!343))))))))

(declare-fun b!5264608 () Bool)

(assert (=> b!5264608 (= e!3274565 (matchZipper!1127 lt!2155736 (t!374139 s!2326)))))

(declare-fun b!5264609 () Bool)

(declare-fun res!2233757 () Bool)

(declare-fun e!3274563 () Bool)

(assert (=> b!5264609 (=> res!2233757 e!3274563)))

(declare-fun lt!2155735 () Context!8534)

(declare-fun derivationStepZipperDown!331 (Regex!14883 Context!8534 C!30036) (InoxSet Context!8534))

(assert (=> b!5264609 (= res!2233757 (not (= lt!2155737 ((_ map or) (derivationStepZipperDown!331 (regOne!30278 (regOne!30278 r!7292)) (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (h!67274 s!2326)) (derivationStepZipperDown!331 (regTwo!30278 (regOne!30278 r!7292)) lt!2155735 (h!67274 s!2326))))))))

(declare-fun setIsEmpty!33671 () Bool)

(assert (=> setIsEmpty!33671 setRes!33671))

(assert (=> b!5264610 (= e!3274568 e!3274563)))

(declare-fun res!2233749 () Bool)

(assert (=> b!5264610 (=> res!2233749 e!3274563)))

(assert (=> b!5264610 (= res!2233749 (or (and ((_ is ElementMatch!14883) (regOne!30278 r!7292)) (= (c!911481 (regOne!30278 r!7292)) (h!67274 s!2326))) ((_ is Union!14883) (regOne!30278 r!7292)) (not ((_ is Concat!23728) (regOne!30278 r!7292)))))))

(declare-fun lt!2155728 () Unit!153050)

(assert (=> b!5264610 (= lt!2155728 e!3274560)))

(declare-fun c!911480 () Bool)

(declare-fun nullable!5052 (Regex!14883) Bool)

(assert (=> b!5264610 (= c!911480 (nullable!5052 (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun lambda!265475 () Int)

(declare-fun flatMap!610 ((InoxSet Context!8534) Int) (InoxSet Context!8534))

(declare-fun derivationStepZipperUp!255 (Context!8534 C!30036) (InoxSet Context!8534))

(assert (=> b!5264610 (= (flatMap!610 z!1189 lambda!265475) (derivationStepZipperUp!255 (h!67273 zl!343) (h!67274 s!2326)))))

(declare-fun lt!2155730 () Unit!153050)

(declare-fun lemmaFlatMapOnSingletonSet!142 ((InoxSet Context!8534) Context!8534 Int) Unit!153050)

(assert (=> b!5264610 (= lt!2155730 (lemmaFlatMapOnSingletonSet!142 z!1189 (h!67273 zl!343) lambda!265475))))

(assert (=> b!5264610 (= lt!2155736 (derivationStepZipperUp!255 lt!2155735 (h!67274 s!2326)))))

(assert (=> b!5264610 (= lt!2155737 (derivationStepZipperDown!331 (h!67272 (exprs!4767 (h!67273 zl!343))) lt!2155735 (h!67274 s!2326)))))

(assert (=> b!5264610 (= lt!2155735 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun lt!2155729 () (InoxSet Context!8534))

(assert (=> b!5264610 (= lt!2155729 (derivationStepZipperUp!255 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))) (h!67274 s!2326)))))

(declare-fun b!5264611 () Bool)

(declare-fun res!2233760 () Bool)

(assert (=> b!5264611 (=> (not res!2233760) (not e!3274558))))

(declare-fun toList!8667 ((InoxSet Context!8534)) List!60949)

(assert (=> b!5264611 (= res!2233760 (= (toList!8667 z!1189) zl!343))))

(declare-fun b!5264612 () Bool)

(declare-fun tp_is_empty!39019 () Bool)

(declare-fun tp!1471714 () Bool)

(assert (=> b!5264612 (= e!3274567 (and tp_is_empty!39019 tp!1471714))))

(declare-fun b!5264613 () Bool)

(declare-fun res!2233754 () Bool)

(assert (=> b!5264613 (=> res!2233754 e!3274564)))

(assert (=> b!5264613 (= res!2233754 (not ((_ is Cons!60824) (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5264614 () Bool)

(declare-fun res!2233761 () Bool)

(assert (=> b!5264614 (=> res!2233761 e!3274564)))

(declare-fun generalisedUnion!812 (List!60948) Regex!14883)

(declare-fun unfocusZipperList!325 (List!60949) List!60948)

(assert (=> b!5264614 (= res!2233761 (not (= r!7292 (generalisedUnion!812 (unfocusZipperList!325 zl!343)))))))

(declare-fun b!5264615 () Bool)

(assert (=> b!5264615 (= e!3274558 (not e!3274564))))

(declare-fun res!2233752 () Bool)

(assert (=> b!5264615 (=> res!2233752 e!3274564)))

(assert (=> b!5264615 (= res!2233752 (not ((_ is Cons!60825) zl!343)))))

(declare-fun matchRSpec!1986 (Regex!14883 List!60950) Bool)

(assert (=> b!5264615 (= lt!2155732 (matchRSpec!1986 r!7292 s!2326))))

(declare-fun matchR!7068 (Regex!14883 List!60950) Bool)

(assert (=> b!5264615 (= lt!2155732 (matchR!7068 r!7292 s!2326))))

(declare-fun lt!2155734 () Unit!153050)

(declare-fun mainMatchTheorem!1986 (Regex!14883 List!60950) Unit!153050)

(assert (=> b!5264615 (= lt!2155734 (mainMatchTheorem!1986 r!7292 s!2326))))

(declare-fun b!5264616 () Bool)

(declare-fun res!2233762 () Bool)

(assert (=> b!5264616 (=> res!2233762 e!3274564)))

(declare-fun isEmpty!32771 (List!60949) Bool)

(assert (=> b!5264616 (= res!2233762 (not (isEmpty!32771 (t!374138 zl!343))))))

(declare-fun b!5264617 () Bool)

(declare-fun tp!1471713 () Bool)

(declare-fun tp!1471721 () Bool)

(assert (=> b!5264617 (= e!3274559 (and tp!1471713 tp!1471721))))

(declare-fun b!5264618 () Bool)

(declare-fun tp!1471716 () Bool)

(declare-fun tp!1471712 () Bool)

(assert (=> b!5264618 (= e!3274559 (and tp!1471716 tp!1471712))))

(declare-fun b!5264619 () Bool)

(declare-fun res!2233753 () Bool)

(assert (=> b!5264619 (=> res!2233753 e!3274568)))

(declare-fun isEmpty!32772 (List!60948) Bool)

(assert (=> b!5264619 (= res!2233753 (isEmpty!32772 (t!374137 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5264620 () Bool)

(declare-fun res!2233751 () Bool)

(assert (=> b!5264620 (=> res!2233751 e!3274564)))

(assert (=> b!5264620 (= res!2233751 (or ((_ is EmptyExpr!14883) r!7292) ((_ is EmptyLang!14883) r!7292) ((_ is ElementMatch!14883) r!7292) ((_ is Union!14883) r!7292) (not ((_ is Concat!23728) r!7292))))))

(declare-fun b!5264621 () Bool)

(assert (=> b!5264621 (= e!3274559 tp_is_empty!39019)))

(declare-fun b!5264622 () Bool)

(declare-fun tp!1471715 () Bool)

(assert (=> b!5264622 (= e!3274561 tp!1471715)))

(declare-fun b!5264623 () Bool)

(declare-fun Unit!153053 () Unit!153050)

(assert (=> b!5264623 (= e!3274560 Unit!153053)))

(declare-fun b!5264624 () Bool)

(declare-fun res!2233759 () Bool)

(assert (=> b!5264624 (=> res!2233759 e!3274563)))

(assert (=> b!5264624 (= res!2233759 (not (nullable!5052 (regOne!30278 (regOne!30278 r!7292)))))))

(declare-fun b!5264625 () Bool)

(assert (=> b!5264625 (= e!3274563 (validRegex!6619 (regTwo!30278 (regOne!30278 r!7292))))))

(assert (= (and start!556050 res!2233750) b!5264611))

(assert (= (and b!5264611 res!2233760) b!5264601))

(assert (= (and b!5264601 res!2233756) b!5264615))

(assert (= (and b!5264615 (not res!2233752)) b!5264616))

(assert (= (and b!5264616 (not res!2233762)) b!5264607))

(assert (= (and b!5264607 (not res!2233755)) b!5264613))

(assert (= (and b!5264613 (not res!2233754)) b!5264614))

(assert (= (and b!5264614 (not res!2233761)) b!5264620))

(assert (= (and b!5264620 (not res!2233751)) b!5264604))

(assert (= (and b!5264604 (not res!2233758)) b!5264619))

(assert (= (and b!5264619 (not res!2233753)) b!5264610))

(assert (= (and b!5264610 c!911480) b!5264605))

(assert (= (and b!5264610 (not c!911480)) b!5264623))

(assert (= (and b!5264605 (not res!2233763)) b!5264608))

(assert (= (and b!5264610 (not res!2233749)) b!5264624))

(assert (= (and b!5264624 (not res!2233759)) b!5264609))

(assert (= (and b!5264609 (not res!2233757)) b!5264625))

(assert (= (and start!556050 ((_ is ElementMatch!14883) r!7292)) b!5264621))

(assert (= (and start!556050 ((_ is Concat!23728) r!7292)) b!5264618))

(assert (= (and start!556050 ((_ is Star!14883) r!7292)) b!5264602))

(assert (= (and start!556050 ((_ is Union!14883) r!7292)) b!5264617))

(assert (= (and start!556050 condSetEmpty!33671) setIsEmpty!33671))

(assert (= (and start!556050 (not condSetEmpty!33671)) setNonEmpty!33671))

(assert (= setNonEmpty!33671 b!5264622))

(assert (= b!5264606 b!5264603))

(assert (= (and start!556050 ((_ is Cons!60825) zl!343)) b!5264606))

(assert (= (and start!556050 ((_ is Cons!60826) s!2326)) b!5264612))

(declare-fun m!6305172 () Bool)

(assert (=> b!5264615 m!6305172))

(declare-fun m!6305174 () Bool)

(assert (=> b!5264615 m!6305174))

(declare-fun m!6305176 () Bool)

(assert (=> b!5264615 m!6305176))

(declare-fun m!6305178 () Bool)

(assert (=> b!5264624 m!6305178))

(declare-fun m!6305180 () Bool)

(assert (=> b!5264601 m!6305180))

(declare-fun m!6305182 () Bool)

(assert (=> b!5264611 m!6305182))

(declare-fun m!6305184 () Bool)

(assert (=> b!5264610 m!6305184))

(declare-fun m!6305186 () Bool)

(assert (=> b!5264610 m!6305186))

(declare-fun m!6305188 () Bool)

(assert (=> b!5264610 m!6305188))

(declare-fun m!6305190 () Bool)

(assert (=> b!5264610 m!6305190))

(declare-fun m!6305192 () Bool)

(assert (=> b!5264610 m!6305192))

(declare-fun m!6305194 () Bool)

(assert (=> b!5264610 m!6305194))

(declare-fun m!6305196 () Bool)

(assert (=> b!5264610 m!6305196))

(declare-fun m!6305198 () Bool)

(assert (=> b!5264625 m!6305198))

(declare-fun m!6305200 () Bool)

(assert (=> b!5264609 m!6305200))

(declare-fun m!6305202 () Bool)

(assert (=> b!5264609 m!6305202))

(declare-fun m!6305204 () Bool)

(assert (=> start!556050 m!6305204))

(declare-fun m!6305206 () Bool)

(assert (=> b!5264614 m!6305206))

(assert (=> b!5264614 m!6305206))

(declare-fun m!6305208 () Bool)

(assert (=> b!5264614 m!6305208))

(declare-fun m!6305210 () Bool)

(assert (=> b!5264608 m!6305210))

(declare-fun m!6305212 () Bool)

(assert (=> b!5264619 m!6305212))

(declare-fun m!6305214 () Bool)

(assert (=> b!5264604 m!6305214))

(declare-fun m!6305216 () Bool)

(assert (=> b!5264604 m!6305216))

(declare-fun m!6305218 () Bool)

(assert (=> b!5264604 m!6305218))

(assert (=> b!5264604 m!6305214))

(declare-fun m!6305220 () Bool)

(assert (=> b!5264604 m!6305220))

(declare-fun m!6305222 () Bool)

(assert (=> b!5264604 m!6305222))

(assert (=> b!5264604 m!6305216))

(declare-fun m!6305224 () Bool)

(assert (=> b!5264604 m!6305224))

(declare-fun m!6305226 () Bool)

(assert (=> b!5264616 m!6305226))

(declare-fun m!6305228 () Bool)

(assert (=> b!5264607 m!6305228))

(declare-fun m!6305230 () Bool)

(assert (=> b!5264606 m!6305230))

(declare-fun m!6305232 () Bool)

(assert (=> b!5264605 m!6305232))

(declare-fun m!6305234 () Bool)

(assert (=> b!5264605 m!6305234))

(declare-fun m!6305236 () Bool)

(assert (=> b!5264605 m!6305236))

(declare-fun m!6305238 () Bool)

(assert (=> setNonEmpty!33671 m!6305238))

(check-sat (not setNonEmpty!33671) (not b!5264606) (not b!5264622) tp_is_empty!39019 (not b!5264624) (not b!5264618) (not b!5264611) (not b!5264609) (not b!5264617) (not start!556050) (not b!5264607) (not b!5264619) (not b!5264616) (not b!5264615) (not b!5264608) (not b!5264610) (not b!5264612) (not b!5264625) (not b!5264601) (not b!5264603) (not b!5264602) (not b!5264605) (not b!5264614) (not b!5264604))
(check-sat)
(get-model)

(declare-fun bm!373595 () Bool)

(declare-fun call!373603 () List!60948)

(declare-fun c!911544 () Bool)

(declare-fun call!373605 () (InoxSet Context!8534))

(assert (=> bm!373595 (= call!373605 (derivationStepZipperDown!331 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))) (ite c!911544 lt!2155735 (Context!8535 call!373603)) (h!67274 s!2326)))))

(declare-fun bm!373596 () Bool)

(declare-fun call!373601 () (InoxSet Context!8534))

(declare-fun call!373600 () (InoxSet Context!8534))

(assert (=> bm!373596 (= call!373601 call!373600)))

(declare-fun b!5264811 () Bool)

(declare-fun e!3274670 () (InoxSet Context!8534))

(assert (=> b!5264811 (= e!3274670 (store ((as const (Array Context!8534 Bool)) false) lt!2155735 true))))

(declare-fun b!5264812 () Bool)

(declare-fun e!3274671 () (InoxSet Context!8534))

(assert (=> b!5264812 (= e!3274670 e!3274671)))

(assert (=> b!5264812 (= c!911544 ((_ is Union!14883) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun c!911542 () Bool)

(declare-fun c!911543 () Bool)

(declare-fun bm!373597 () Bool)

(declare-fun call!373604 () List!60948)

(assert (=> bm!373597 (= call!373600 (derivationStepZipperDown!331 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343))))))) (ite (or c!911544 c!911543) lt!2155735 (Context!8535 call!373604)) (h!67274 s!2326)))))

(declare-fun b!5264813 () Bool)

(declare-fun e!3274673 () Bool)

(assert (=> b!5264813 (= e!3274673 (nullable!5052 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))))))

(declare-fun b!5264814 () Bool)

(declare-fun e!3274674 () (InoxSet Context!8534))

(declare-fun call!373602 () (InoxSet Context!8534))

(assert (=> b!5264814 (= e!3274674 call!373602)))

(declare-fun b!5264815 () Bool)

(declare-fun e!3274672 () (InoxSet Context!8534))

(assert (=> b!5264815 (= e!3274672 ((_ map or) call!373605 call!373601))))

(declare-fun bm!373598 () Bool)

(assert (=> bm!373598 (= call!373604 call!373603)))

(declare-fun b!5264816 () Bool)

(declare-fun e!3274675 () (InoxSet Context!8534))

(assert (=> b!5264816 (= e!3274675 ((as const (Array Context!8534 Bool)) false))))

(declare-fun d!1694459 () Bool)

(declare-fun c!911541 () Bool)

(assert (=> d!1694459 (= c!911541 (and ((_ is ElementMatch!14883) (h!67272 (exprs!4767 (h!67273 zl!343)))) (= (c!911481 (h!67272 (exprs!4767 (h!67273 zl!343)))) (h!67274 s!2326))))))

(assert (=> d!1694459 (= (derivationStepZipperDown!331 (h!67272 (exprs!4767 (h!67273 zl!343))) lt!2155735 (h!67274 s!2326)) e!3274670)))

(declare-fun b!5264810 () Bool)

(assert (=> b!5264810 (= e!3274672 e!3274674)))

(assert (=> b!5264810 (= c!911542 ((_ is Concat!23728) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5264817 () Bool)

(declare-fun c!911545 () Bool)

(assert (=> b!5264817 (= c!911545 ((_ is Star!14883) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(assert (=> b!5264817 (= e!3274674 e!3274675)))

(declare-fun b!5264818 () Bool)

(assert (=> b!5264818 (= c!911543 e!3274673)))

(declare-fun res!2233824 () Bool)

(assert (=> b!5264818 (=> (not res!2233824) (not e!3274673))))

(assert (=> b!5264818 (= res!2233824 ((_ is Concat!23728) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(assert (=> b!5264818 (= e!3274671 e!3274672)))

(declare-fun bm!373599 () Bool)

(declare-fun $colon$colon!1336 (List!60948 Regex!14883) List!60948)

(assert (=> bm!373599 (= call!373603 ($colon$colon!1336 (exprs!4767 lt!2155735) (ite (or c!911543 c!911542) (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (h!67272 (exprs!4767 (h!67273 zl!343))))))))

(declare-fun b!5264819 () Bool)

(assert (=> b!5264819 (= e!3274671 ((_ map or) call!373605 call!373600))))

(declare-fun bm!373600 () Bool)

(assert (=> bm!373600 (= call!373602 call!373601)))

(declare-fun b!5264820 () Bool)

(assert (=> b!5264820 (= e!3274675 call!373602)))

(assert (= (and d!1694459 c!911541) b!5264811))

(assert (= (and d!1694459 (not c!911541)) b!5264812))

(assert (= (and b!5264812 c!911544) b!5264819))

(assert (= (and b!5264812 (not c!911544)) b!5264818))

(assert (= (and b!5264818 res!2233824) b!5264813))

(assert (= (and b!5264818 c!911543) b!5264815))

(assert (= (and b!5264818 (not c!911543)) b!5264810))

(assert (= (and b!5264810 c!911542) b!5264814))

(assert (= (and b!5264810 (not c!911542)) b!5264817))

(assert (= (and b!5264817 c!911545) b!5264820))

(assert (= (and b!5264817 (not c!911545)) b!5264816))

(assert (= (or b!5264814 b!5264820) bm!373598))

(assert (= (or b!5264814 b!5264820) bm!373600))

(assert (= (or b!5264815 bm!373598) bm!373599))

(assert (= (or b!5264815 bm!373600) bm!373596))

(assert (= (or b!5264819 bm!373596) bm!373597))

(assert (= (or b!5264819 b!5264815) bm!373595))

(declare-fun m!6305324 () Bool)

(assert (=> bm!373595 m!6305324))

(declare-fun m!6305326 () Bool)

(assert (=> b!5264811 m!6305326))

(declare-fun m!6305328 () Bool)

(assert (=> b!5264813 m!6305328))

(declare-fun m!6305330 () Bool)

(assert (=> bm!373597 m!6305330))

(declare-fun m!6305332 () Bool)

(assert (=> bm!373599 m!6305332))

(assert (=> b!5264610 d!1694459))

(declare-fun b!5264840 () Bool)

(declare-fun e!3274689 () Bool)

(assert (=> b!5264840 (= e!3274689 (nullable!5052 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))))))

(declare-fun bm!373603 () Bool)

(declare-fun call!373608 () (InoxSet Context!8534))

(assert (=> bm!373603 (= call!373608 (derivationStepZipperDown!331 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))) (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (h!67274 s!2326)))))

(declare-fun b!5264841 () Bool)

(declare-fun e!3274688 () (InoxSet Context!8534))

(declare-fun e!3274690 () (InoxSet Context!8534))

(assert (=> b!5264841 (= e!3274688 e!3274690)))

(declare-fun c!911553 () Bool)

(assert (=> b!5264841 (= c!911553 ((_ is Cons!60824) (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))))))

(declare-fun b!5264842 () Bool)

(assert (=> b!5264842 (= e!3274688 ((_ map or) call!373608 (derivationStepZipperUp!255 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (h!67274 s!2326))))))

(declare-fun d!1694473 () Bool)

(declare-fun c!911554 () Bool)

(assert (=> d!1694473 (= c!911554 e!3274689)))

(declare-fun res!2233830 () Bool)

(assert (=> d!1694473 (=> (not res!2233830) (not e!3274689))))

(assert (=> d!1694473 (= res!2233830 ((_ is Cons!60824) (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))))))

(assert (=> d!1694473 (= (derivationStepZipperUp!255 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))) (h!67274 s!2326)) e!3274688)))

(declare-fun b!5264843 () Bool)

(assert (=> b!5264843 (= e!3274690 call!373608)))

(declare-fun b!5264844 () Bool)

(assert (=> b!5264844 (= e!3274690 ((as const (Array Context!8534 Bool)) false))))

(assert (= (and d!1694473 res!2233830) b!5264840))

(assert (= (and d!1694473 c!911554) b!5264842))

(assert (= (and d!1694473 (not c!911554)) b!5264841))

(assert (= (and b!5264841 c!911553) b!5264843))

(assert (= (and b!5264841 (not c!911553)) b!5264844))

(assert (= (or b!5264842 b!5264843) bm!373603))

(declare-fun m!6305344 () Bool)

(assert (=> b!5264840 m!6305344))

(declare-fun m!6305346 () Bool)

(assert (=> bm!373603 m!6305346))

(declare-fun m!6305348 () Bool)

(assert (=> b!5264842 m!6305348))

(assert (=> b!5264610 d!1694473))

(declare-fun d!1694479 () Bool)

(declare-fun choose!39282 ((InoxSet Context!8534) Int) (InoxSet Context!8534))

(assert (=> d!1694479 (= (flatMap!610 z!1189 lambda!265475) (choose!39282 z!1189 lambda!265475))))

(declare-fun bs!1220319 () Bool)

(assert (= bs!1220319 d!1694479))

(declare-fun m!6305350 () Bool)

(assert (=> bs!1220319 m!6305350))

(assert (=> b!5264610 d!1694479))

(declare-fun b!5264845 () Bool)

(declare-fun e!3274692 () Bool)

(assert (=> b!5264845 (= e!3274692 (nullable!5052 (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun bm!373604 () Bool)

(declare-fun call!373609 () (InoxSet Context!8534))

(assert (=> bm!373604 (= call!373609 (derivationStepZipperDown!331 (h!67272 (exprs!4767 (h!67273 zl!343))) (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))) (h!67274 s!2326)))))

(declare-fun b!5264846 () Bool)

(declare-fun e!3274691 () (InoxSet Context!8534))

(declare-fun e!3274693 () (InoxSet Context!8534))

(assert (=> b!5264846 (= e!3274691 e!3274693)))

(declare-fun c!911555 () Bool)

(assert (=> b!5264846 (= c!911555 ((_ is Cons!60824) (exprs!4767 (h!67273 zl!343))))))

(declare-fun b!5264847 () Bool)

(assert (=> b!5264847 (= e!3274691 ((_ map or) call!373609 (derivationStepZipperUp!255 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))) (h!67274 s!2326))))))

(declare-fun d!1694481 () Bool)

(declare-fun c!911556 () Bool)

(assert (=> d!1694481 (= c!911556 e!3274692)))

(declare-fun res!2233831 () Bool)

(assert (=> d!1694481 (=> (not res!2233831) (not e!3274692))))

(assert (=> d!1694481 (= res!2233831 ((_ is Cons!60824) (exprs!4767 (h!67273 zl!343))))))

(assert (=> d!1694481 (= (derivationStepZipperUp!255 (h!67273 zl!343) (h!67274 s!2326)) e!3274691)))

(declare-fun b!5264848 () Bool)

(assert (=> b!5264848 (= e!3274693 call!373609)))

(declare-fun b!5264849 () Bool)

(assert (=> b!5264849 (= e!3274693 ((as const (Array Context!8534 Bool)) false))))

(assert (= (and d!1694481 res!2233831) b!5264845))

(assert (= (and d!1694481 c!911556) b!5264847))

(assert (= (and d!1694481 (not c!911556)) b!5264846))

(assert (= (and b!5264846 c!911555) b!5264848))

(assert (= (and b!5264846 (not c!911555)) b!5264849))

(assert (= (or b!5264847 b!5264848) bm!373604))

(assert (=> b!5264845 m!6305196))

(declare-fun m!6305352 () Bool)

(assert (=> bm!373604 m!6305352))

(declare-fun m!6305354 () Bool)

(assert (=> b!5264847 m!6305354))

(assert (=> b!5264610 d!1694481))

(declare-fun d!1694483 () Bool)

(declare-fun dynLambda!24034 (Int Context!8534) (InoxSet Context!8534))

(assert (=> d!1694483 (= (flatMap!610 z!1189 lambda!265475) (dynLambda!24034 lambda!265475 (h!67273 zl!343)))))

(declare-fun lt!2155768 () Unit!153050)

(declare-fun choose!39283 ((InoxSet Context!8534) Context!8534 Int) Unit!153050)

(assert (=> d!1694483 (= lt!2155768 (choose!39283 z!1189 (h!67273 zl!343) lambda!265475))))

(assert (=> d!1694483 (= z!1189 (store ((as const (Array Context!8534 Bool)) false) (h!67273 zl!343) true))))

(assert (=> d!1694483 (= (lemmaFlatMapOnSingletonSet!142 z!1189 (h!67273 zl!343) lambda!265475) lt!2155768)))

(declare-fun b_lambda!203117 () Bool)

(assert (=> (not b_lambda!203117) (not d!1694483)))

(declare-fun bs!1220320 () Bool)

(assert (= bs!1220320 d!1694483))

(assert (=> bs!1220320 m!6305194))

(declare-fun m!6305356 () Bool)

(assert (=> bs!1220320 m!6305356))

(declare-fun m!6305358 () Bool)

(assert (=> bs!1220320 m!6305358))

(declare-fun m!6305360 () Bool)

(assert (=> bs!1220320 m!6305360))

(assert (=> b!5264610 d!1694483))

(declare-fun d!1694485 () Bool)

(declare-fun nullableFct!1438 (Regex!14883) Bool)

(assert (=> d!1694485 (= (nullable!5052 (h!67272 (exprs!4767 (h!67273 zl!343)))) (nullableFct!1438 (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun bs!1220321 () Bool)

(assert (= bs!1220321 d!1694485))

(declare-fun m!6305362 () Bool)

(assert (=> bs!1220321 m!6305362))

(assert (=> b!5264610 d!1694485))

(declare-fun b!5264877 () Bool)

(declare-fun e!3274710 () Bool)

(assert (=> b!5264877 (= e!3274710 (nullable!5052 (h!67272 (exprs!4767 lt!2155735))))))

(declare-fun bm!373605 () Bool)

(declare-fun call!373610 () (InoxSet Context!8534))

(assert (=> bm!373605 (= call!373610 (derivationStepZipperDown!331 (h!67272 (exprs!4767 lt!2155735)) (Context!8535 (t!374137 (exprs!4767 lt!2155735))) (h!67274 s!2326)))))

(declare-fun b!5264878 () Bool)

(declare-fun e!3274709 () (InoxSet Context!8534))

(declare-fun e!3274711 () (InoxSet Context!8534))

(assert (=> b!5264878 (= e!3274709 e!3274711)))

(declare-fun c!911563 () Bool)

(assert (=> b!5264878 (= c!911563 ((_ is Cons!60824) (exprs!4767 lt!2155735)))))

(declare-fun b!5264879 () Bool)

(assert (=> b!5264879 (= e!3274709 ((_ map or) call!373610 (derivationStepZipperUp!255 (Context!8535 (t!374137 (exprs!4767 lt!2155735))) (h!67274 s!2326))))))

(declare-fun d!1694487 () Bool)

(declare-fun c!911564 () Bool)

(assert (=> d!1694487 (= c!911564 e!3274710)))

(declare-fun res!2233847 () Bool)

(assert (=> d!1694487 (=> (not res!2233847) (not e!3274710))))

(assert (=> d!1694487 (= res!2233847 ((_ is Cons!60824) (exprs!4767 lt!2155735)))))

(assert (=> d!1694487 (= (derivationStepZipperUp!255 lt!2155735 (h!67274 s!2326)) e!3274709)))

(declare-fun b!5264880 () Bool)

(assert (=> b!5264880 (= e!3274711 call!373610)))

(declare-fun b!5264881 () Bool)

(assert (=> b!5264881 (= e!3274711 ((as const (Array Context!8534 Bool)) false))))

(assert (= (and d!1694487 res!2233847) b!5264877))

(assert (= (and d!1694487 c!911564) b!5264879))

(assert (= (and d!1694487 (not c!911564)) b!5264878))

(assert (= (and b!5264878 c!911563) b!5264880))

(assert (= (and b!5264878 (not c!911563)) b!5264881))

(assert (= (or b!5264879 b!5264880) bm!373605))

(declare-fun m!6305372 () Bool)

(assert (=> b!5264877 m!6305372))

(declare-fun m!6305378 () Bool)

(assert (=> bm!373605 m!6305378))

(declare-fun m!6305382 () Bool)

(assert (=> b!5264879 m!6305382))

(assert (=> b!5264610 d!1694487))

(declare-fun d!1694489 () Bool)

(declare-fun lt!2155774 () Regex!14883)

(assert (=> d!1694489 (validRegex!6619 lt!2155774)))

(assert (=> d!1694489 (= lt!2155774 (generalisedUnion!812 (unfocusZipperList!325 zl!343)))))

(assert (=> d!1694489 (= (unfocusZipper!625 zl!343) lt!2155774)))

(declare-fun bs!1220324 () Bool)

(assert (= bs!1220324 d!1694489))

(declare-fun m!6305398 () Bool)

(assert (=> bs!1220324 m!6305398))

(assert (=> bs!1220324 m!6305206))

(assert (=> bs!1220324 m!6305206))

(assert (=> bs!1220324 m!6305208))

(assert (=> b!5264601 d!1694489))

(declare-fun d!1694497 () Bool)

(declare-fun e!3274716 () Bool)

(assert (=> d!1694497 e!3274716))

(declare-fun res!2233854 () Bool)

(assert (=> d!1694497 (=> (not res!2233854) (not e!3274716))))

(declare-fun lt!2155779 () List!60949)

(declare-fun noDuplicate!1241 (List!60949) Bool)

(assert (=> d!1694497 (= res!2233854 (noDuplicate!1241 lt!2155779))))

(declare-fun choose!39284 ((InoxSet Context!8534)) List!60949)

(assert (=> d!1694497 (= lt!2155779 (choose!39284 z!1189))))

(assert (=> d!1694497 (= (toList!8667 z!1189) lt!2155779)))

(declare-fun b!5264888 () Bool)

(declare-fun content!10814 (List!60949) (InoxSet Context!8534))

(assert (=> b!5264888 (= e!3274716 (= (content!10814 lt!2155779) z!1189))))

(assert (= (and d!1694497 res!2233854) b!5264888))

(declare-fun m!6305400 () Bool)

(assert (=> d!1694497 m!6305400))

(declare-fun m!6305402 () Bool)

(assert (=> d!1694497 m!6305402))

(declare-fun m!6305404 () Bool)

(assert (=> b!5264888 m!6305404))

(assert (=> b!5264611 d!1694497))

(declare-fun c!911568 () Bool)

(declare-fun bm!373606 () Bool)

(declare-fun call!373616 () (InoxSet Context!8534))

(declare-fun call!373614 () List!60948)

(assert (=> bm!373606 (= call!373616 (derivationStepZipperDown!331 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292)))) (ite c!911568 (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373614)) (h!67274 s!2326)))))

(declare-fun bm!373607 () Bool)

(declare-fun call!373612 () (InoxSet Context!8534))

(declare-fun call!373611 () (InoxSet Context!8534))

(assert (=> bm!373607 (= call!373612 call!373611)))

(declare-fun b!5264890 () Bool)

(declare-fun e!3274717 () (InoxSet Context!8534))

(assert (=> b!5264890 (= e!3274717 (store ((as const (Array Context!8534 Bool)) false) (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) true))))

(declare-fun b!5264891 () Bool)

(declare-fun e!3274718 () (InoxSet Context!8534))

(assert (=> b!5264891 (= e!3274717 e!3274718)))

(assert (=> b!5264891 (= c!911568 ((_ is Union!14883) (regOne!30278 (regOne!30278 r!7292))))))

(declare-fun c!911567 () Bool)

(declare-fun bm!373608 () Bool)

(declare-fun c!911566 () Bool)

(declare-fun call!373615 () List!60948)

(assert (=> bm!373608 (= call!373611 (derivationStepZipperDown!331 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292)))))) (ite (or c!911568 c!911567) (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373615)) (h!67274 s!2326)))))

(declare-fun b!5264892 () Bool)

(declare-fun e!3274720 () Bool)

(assert (=> b!5264892 (= e!3274720 (nullable!5052 (regOne!30278 (regOne!30278 (regOne!30278 r!7292)))))))

(declare-fun b!5264893 () Bool)

(declare-fun e!3274721 () (InoxSet Context!8534))

(declare-fun call!373613 () (InoxSet Context!8534))

(assert (=> b!5264893 (= e!3274721 call!373613)))

(declare-fun b!5264894 () Bool)

(declare-fun e!3274719 () (InoxSet Context!8534))

(assert (=> b!5264894 (= e!3274719 ((_ map or) call!373616 call!373612))))

(declare-fun bm!373609 () Bool)

(assert (=> bm!373609 (= call!373615 call!373614)))

(declare-fun b!5264895 () Bool)

(declare-fun e!3274722 () (InoxSet Context!8534))

(assert (=> b!5264895 (= e!3274722 ((as const (Array Context!8534 Bool)) false))))

(declare-fun d!1694499 () Bool)

(declare-fun c!911565 () Bool)

(assert (=> d!1694499 (= c!911565 (and ((_ is ElementMatch!14883) (regOne!30278 (regOne!30278 r!7292))) (= (c!911481 (regOne!30278 (regOne!30278 r!7292))) (h!67274 s!2326))))))

(assert (=> d!1694499 (= (derivationStepZipperDown!331 (regOne!30278 (regOne!30278 r!7292)) (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (h!67274 s!2326)) e!3274717)))

(declare-fun b!5264889 () Bool)

(assert (=> b!5264889 (= e!3274719 e!3274721)))

(assert (=> b!5264889 (= c!911566 ((_ is Concat!23728) (regOne!30278 (regOne!30278 r!7292))))))

(declare-fun b!5264896 () Bool)

(declare-fun c!911569 () Bool)

(assert (=> b!5264896 (= c!911569 ((_ is Star!14883) (regOne!30278 (regOne!30278 r!7292))))))

(assert (=> b!5264896 (= e!3274721 e!3274722)))

(declare-fun b!5264897 () Bool)

(assert (=> b!5264897 (= c!911567 e!3274720)))

(declare-fun res!2233855 () Bool)

(assert (=> b!5264897 (=> (not res!2233855) (not e!3274720))))

(assert (=> b!5264897 (= res!2233855 ((_ is Concat!23728) (regOne!30278 (regOne!30278 r!7292))))))

(assert (=> b!5264897 (= e!3274718 e!3274719)))

(declare-fun bm!373610 () Bool)

(assert (=> bm!373610 (= call!373614 ($colon$colon!1336 (exprs!4767 (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343)))))) (ite (or c!911567 c!911566) (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 r!7292)))))))

(declare-fun b!5264898 () Bool)

(assert (=> b!5264898 (= e!3274718 ((_ map or) call!373616 call!373611))))

(declare-fun bm!373611 () Bool)

(assert (=> bm!373611 (= call!373613 call!373612)))

(declare-fun b!5264899 () Bool)

(assert (=> b!5264899 (= e!3274722 call!373613)))

(assert (= (and d!1694499 c!911565) b!5264890))

(assert (= (and d!1694499 (not c!911565)) b!5264891))

(assert (= (and b!5264891 c!911568) b!5264898))

(assert (= (and b!5264891 (not c!911568)) b!5264897))

(assert (= (and b!5264897 res!2233855) b!5264892))

(assert (= (and b!5264897 c!911567) b!5264894))

(assert (= (and b!5264897 (not c!911567)) b!5264889))

(assert (= (and b!5264889 c!911566) b!5264893))

(assert (= (and b!5264889 (not c!911566)) b!5264896))

(assert (= (and b!5264896 c!911569) b!5264899))

(assert (= (and b!5264896 (not c!911569)) b!5264895))

(assert (= (or b!5264893 b!5264899) bm!373609))

(assert (= (or b!5264893 b!5264899) bm!373611))

(assert (= (or b!5264894 bm!373609) bm!373610))

(assert (= (or b!5264894 bm!373611) bm!373607))

(assert (= (or b!5264898 bm!373607) bm!373608))

(assert (= (or b!5264898 b!5264894) bm!373606))

(declare-fun m!6305410 () Bool)

(assert (=> bm!373606 m!6305410))

(declare-fun m!6305412 () Bool)

(assert (=> b!5264890 m!6305412))

(declare-fun m!6305414 () Bool)

(assert (=> b!5264892 m!6305414))

(declare-fun m!6305416 () Bool)

(assert (=> bm!373608 m!6305416))

(declare-fun m!6305418 () Bool)

(assert (=> bm!373610 m!6305418))

(assert (=> b!5264609 d!1694499))

(declare-fun call!373622 () (InoxSet Context!8534))

(declare-fun bm!373612 () Bool)

(declare-fun call!373620 () List!60948)

(declare-fun c!911573 () Bool)

(assert (=> bm!373612 (= call!373622 (derivationStepZipperDown!331 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))) (ite c!911573 lt!2155735 (Context!8535 call!373620)) (h!67274 s!2326)))))

(declare-fun bm!373613 () Bool)

(declare-fun call!373618 () (InoxSet Context!8534))

(declare-fun call!373617 () (InoxSet Context!8534))

(assert (=> bm!373613 (= call!373618 call!373617)))

(declare-fun b!5264901 () Bool)

(declare-fun e!3274723 () (InoxSet Context!8534))

(assert (=> b!5264901 (= e!3274723 (store ((as const (Array Context!8534 Bool)) false) lt!2155735 true))))

(declare-fun b!5264902 () Bool)

(declare-fun e!3274724 () (InoxSet Context!8534))

(assert (=> b!5264902 (= e!3274723 e!3274724)))

(assert (=> b!5264902 (= c!911573 ((_ is Union!14883) (regTwo!30278 (regOne!30278 r!7292))))))

(declare-fun c!911571 () Bool)

(declare-fun bm!373614 () Bool)

(declare-fun call!373621 () List!60948)

(declare-fun c!911572 () Bool)

(assert (=> bm!373614 (= call!373617 (derivationStepZipperDown!331 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292)))))) (ite (or c!911573 c!911572) lt!2155735 (Context!8535 call!373621)) (h!67274 s!2326)))))

(declare-fun b!5264903 () Bool)

(declare-fun e!3274726 () Bool)

(assert (=> b!5264903 (= e!3274726 (nullable!5052 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))))))

(declare-fun b!5264904 () Bool)

(declare-fun e!3274727 () (InoxSet Context!8534))

(declare-fun call!373619 () (InoxSet Context!8534))

(assert (=> b!5264904 (= e!3274727 call!373619)))

(declare-fun b!5264905 () Bool)

(declare-fun e!3274725 () (InoxSet Context!8534))

(assert (=> b!5264905 (= e!3274725 ((_ map or) call!373622 call!373618))))

(declare-fun bm!373615 () Bool)

(assert (=> bm!373615 (= call!373621 call!373620)))

(declare-fun b!5264906 () Bool)

(declare-fun e!3274728 () (InoxSet Context!8534))

(assert (=> b!5264906 (= e!3274728 ((as const (Array Context!8534 Bool)) false))))

(declare-fun d!1694503 () Bool)

(declare-fun c!911570 () Bool)

(assert (=> d!1694503 (= c!911570 (and ((_ is ElementMatch!14883) (regTwo!30278 (regOne!30278 r!7292))) (= (c!911481 (regTwo!30278 (regOne!30278 r!7292))) (h!67274 s!2326))))))

(assert (=> d!1694503 (= (derivationStepZipperDown!331 (regTwo!30278 (regOne!30278 r!7292)) lt!2155735 (h!67274 s!2326)) e!3274723)))

(declare-fun b!5264900 () Bool)

(assert (=> b!5264900 (= e!3274725 e!3274727)))

(assert (=> b!5264900 (= c!911571 ((_ is Concat!23728) (regTwo!30278 (regOne!30278 r!7292))))))

(declare-fun b!5264907 () Bool)

(declare-fun c!911574 () Bool)

(assert (=> b!5264907 (= c!911574 ((_ is Star!14883) (regTwo!30278 (regOne!30278 r!7292))))))

(assert (=> b!5264907 (= e!3274727 e!3274728)))

(declare-fun b!5264908 () Bool)

(assert (=> b!5264908 (= c!911572 e!3274726)))

(declare-fun res!2233856 () Bool)

(assert (=> b!5264908 (=> (not res!2233856) (not e!3274726))))

(assert (=> b!5264908 (= res!2233856 ((_ is Concat!23728) (regTwo!30278 (regOne!30278 r!7292))))))

(assert (=> b!5264908 (= e!3274724 e!3274725)))

(declare-fun bm!373616 () Bool)

(assert (=> bm!373616 (= call!373620 ($colon$colon!1336 (exprs!4767 lt!2155735) (ite (or c!911572 c!911571) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regOne!30278 r!7292)))))))

(declare-fun b!5264909 () Bool)

(assert (=> b!5264909 (= e!3274724 ((_ map or) call!373622 call!373617))))

(declare-fun bm!373617 () Bool)

(assert (=> bm!373617 (= call!373619 call!373618)))

(declare-fun b!5264910 () Bool)

(assert (=> b!5264910 (= e!3274728 call!373619)))

(assert (= (and d!1694503 c!911570) b!5264901))

(assert (= (and d!1694503 (not c!911570)) b!5264902))

(assert (= (and b!5264902 c!911573) b!5264909))

(assert (= (and b!5264902 (not c!911573)) b!5264908))

(assert (= (and b!5264908 res!2233856) b!5264903))

(assert (= (and b!5264908 c!911572) b!5264905))

(assert (= (and b!5264908 (not c!911572)) b!5264900))

(assert (= (and b!5264900 c!911571) b!5264904))

(assert (= (and b!5264900 (not c!911571)) b!5264907))

(assert (= (and b!5264907 c!911574) b!5264910))

(assert (= (and b!5264907 (not c!911574)) b!5264906))

(assert (= (or b!5264904 b!5264910) bm!373615))

(assert (= (or b!5264904 b!5264910) bm!373617))

(assert (= (or b!5264905 bm!373615) bm!373616))

(assert (= (or b!5264905 bm!373617) bm!373613))

(assert (= (or b!5264909 bm!373613) bm!373614))

(assert (= (or b!5264909 b!5264905) bm!373612))

(declare-fun m!6305420 () Bool)

(assert (=> bm!373612 m!6305420))

(assert (=> b!5264901 m!6305326))

(declare-fun m!6305422 () Bool)

(assert (=> b!5264903 m!6305422))

(declare-fun m!6305424 () Bool)

(assert (=> bm!373614 m!6305424))

(declare-fun m!6305426 () Bool)

(assert (=> bm!373616 m!6305426))

(assert (=> b!5264609 d!1694503))

(declare-fun d!1694505 () Bool)

(declare-fun c!911577 () Bool)

(declare-fun isEmpty!32775 (List!60950) Bool)

(assert (=> d!1694505 (= c!911577 (isEmpty!32775 (t!374139 s!2326)))))

(declare-fun e!3274735 () Bool)

(assert (=> d!1694505 (= (matchZipper!1127 lt!2155736 (t!374139 s!2326)) e!3274735)))

(declare-fun b!5264923 () Bool)

(declare-fun nullableZipper!1286 ((InoxSet Context!8534)) Bool)

(assert (=> b!5264923 (= e!3274735 (nullableZipper!1286 lt!2155736))))

(declare-fun b!5264924 () Bool)

(declare-fun derivationStepZipper!1130 ((InoxSet Context!8534) C!30036) (InoxSet Context!8534))

(declare-fun head!11290 (List!60950) C!30036)

(declare-fun tail!10387 (List!60950) List!60950)

(assert (=> b!5264924 (= e!3274735 (matchZipper!1127 (derivationStepZipper!1130 lt!2155736 (head!11290 (t!374139 s!2326))) (tail!10387 (t!374139 s!2326))))))

(assert (= (and d!1694505 c!911577) b!5264923))

(assert (= (and d!1694505 (not c!911577)) b!5264924))

(declare-fun m!6305428 () Bool)

(assert (=> d!1694505 m!6305428))

(declare-fun m!6305430 () Bool)

(assert (=> b!5264923 m!6305430))

(declare-fun m!6305432 () Bool)

(assert (=> b!5264924 m!6305432))

(assert (=> b!5264924 m!6305432))

(declare-fun m!6305434 () Bool)

(assert (=> b!5264924 m!6305434))

(declare-fun m!6305436 () Bool)

(assert (=> b!5264924 m!6305436))

(assert (=> b!5264924 m!6305434))

(assert (=> b!5264924 m!6305436))

(declare-fun m!6305438 () Bool)

(assert (=> b!5264924 m!6305438))

(assert (=> b!5264608 d!1694505))

(declare-fun d!1694507 () Bool)

(assert (=> d!1694507 (= (isEmpty!32772 (t!374137 (exprs!4767 (h!67273 zl!343)))) ((_ is Nil!60824) (t!374137 (exprs!4767 (h!67273 zl!343)))))))

(assert (=> b!5264619 d!1694507))

(declare-fun d!1694509 () Bool)

(assert (=> d!1694509 (= (isEmpty!32771 (t!374138 zl!343)) ((_ is Nil!60825) (t!374138 zl!343)))))

(assert (=> b!5264616 d!1694509))

(declare-fun d!1694511 () Bool)

(declare-fun lambda!265505 () Int)

(declare-fun forall!14295 (List!60948 Int) Bool)

(assert (=> d!1694511 (= (inv!80454 (h!67273 zl!343)) (forall!14295 (exprs!4767 (h!67273 zl!343)) lambda!265505))))

(declare-fun bs!1220334 () Bool)

(assert (= bs!1220334 d!1694511))

(declare-fun m!6305446 () Bool)

(assert (=> bs!1220334 m!6305446))

(assert (=> b!5264606 d!1694511))

(declare-fun bs!1220342 () Bool)

(declare-fun b!5265010 () Bool)

(assert (= bs!1220342 (and b!5265010 b!5264604)))

(declare-fun lambda!265511 () Int)

(assert (=> bs!1220342 (not (= lambda!265511 lambda!265473))))

(assert (=> bs!1220342 (not (= lambda!265511 lambda!265474))))

(assert (=> b!5265010 true))

(assert (=> b!5265010 true))

(declare-fun bs!1220343 () Bool)

(declare-fun b!5265013 () Bool)

(assert (= bs!1220343 (and b!5265013 b!5264604)))

(declare-fun lambda!265512 () Int)

(assert (=> bs!1220343 (not (= lambda!265512 lambda!265473))))

(assert (=> bs!1220343 (= lambda!265512 lambda!265474)))

(declare-fun bs!1220344 () Bool)

(assert (= bs!1220344 (and b!5265013 b!5265010)))

(assert (=> bs!1220344 (not (= lambda!265512 lambda!265511))))

(assert (=> b!5265013 true))

(assert (=> b!5265013 true))

(declare-fun b!5265008 () Bool)

(declare-fun res!2233900 () Bool)

(declare-fun e!3274791 () Bool)

(assert (=> b!5265008 (=> res!2233900 e!3274791)))

(declare-fun call!373649 () Bool)

(assert (=> b!5265008 (= res!2233900 call!373649)))

(declare-fun e!3274790 () Bool)

(assert (=> b!5265008 (= e!3274790 e!3274791)))

(declare-fun b!5265009 () Bool)

(declare-fun c!911604 () Bool)

(assert (=> b!5265009 (= c!911604 ((_ is ElementMatch!14883) r!7292))))

(declare-fun e!3274793 () Bool)

(declare-fun e!3274794 () Bool)

(assert (=> b!5265009 (= e!3274793 e!3274794)))

(declare-fun d!1694515 () Bool)

(declare-fun c!911606 () Bool)

(assert (=> d!1694515 (= c!911606 ((_ is EmptyExpr!14883) r!7292))))

(declare-fun e!3274789 () Bool)

(assert (=> d!1694515 (= (matchRSpec!1986 r!7292 s!2326) e!3274789)))

(declare-fun call!373648 () Bool)

(assert (=> b!5265010 (= e!3274791 call!373648)))

(declare-fun b!5265011 () Bool)

(declare-fun e!3274792 () Bool)

(declare-fun e!3274788 () Bool)

(assert (=> b!5265011 (= e!3274792 e!3274788)))

(declare-fun res!2233899 () Bool)

(assert (=> b!5265011 (= res!2233899 (matchRSpec!1986 (regOne!30279 r!7292) s!2326))))

(assert (=> b!5265011 (=> res!2233899 e!3274788)))

(declare-fun bm!373643 () Bool)

(assert (=> bm!373643 (= call!373649 (isEmpty!32775 s!2326))))

(declare-fun b!5265012 () Bool)

(assert (=> b!5265012 (= e!3274789 e!3274793)))

(declare-fun res!2233898 () Bool)

(assert (=> b!5265012 (= res!2233898 (not ((_ is EmptyLang!14883) r!7292)))))

(assert (=> b!5265012 (=> (not res!2233898) (not e!3274793))))

(assert (=> b!5265013 (= e!3274790 call!373648)))

(declare-fun b!5265014 () Bool)

(declare-fun c!911605 () Bool)

(assert (=> b!5265014 (= c!911605 ((_ is Union!14883) r!7292))))

(assert (=> b!5265014 (= e!3274794 e!3274792)))

(declare-fun b!5265015 () Bool)

(assert (=> b!5265015 (= e!3274788 (matchRSpec!1986 (regTwo!30279 r!7292) s!2326))))

(declare-fun b!5265016 () Bool)

(assert (=> b!5265016 (= e!3274794 (= s!2326 (Cons!60826 (c!911481 r!7292) Nil!60826)))))

(declare-fun c!911603 () Bool)

(declare-fun bm!373644 () Bool)

(assert (=> bm!373644 (= call!373648 (Exists!2064 (ite c!911603 lambda!265511 lambda!265512)))))

(declare-fun b!5265017 () Bool)

(assert (=> b!5265017 (= e!3274789 call!373649)))

(declare-fun b!5265018 () Bool)

(assert (=> b!5265018 (= e!3274792 e!3274790)))

(assert (=> b!5265018 (= c!911603 ((_ is Star!14883) r!7292))))

(assert (= (and d!1694515 c!911606) b!5265017))

(assert (= (and d!1694515 (not c!911606)) b!5265012))

(assert (= (and b!5265012 res!2233898) b!5265009))

(assert (= (and b!5265009 c!911604) b!5265016))

(assert (= (and b!5265009 (not c!911604)) b!5265014))

(assert (= (and b!5265014 c!911605) b!5265011))

(assert (= (and b!5265014 (not c!911605)) b!5265018))

(assert (= (and b!5265011 (not res!2233899)) b!5265015))

(assert (= (and b!5265018 c!911603) b!5265008))

(assert (= (and b!5265018 (not c!911603)) b!5265013))

(assert (= (and b!5265008 (not res!2233900)) b!5265010))

(assert (= (or b!5265010 b!5265013) bm!373644))

(assert (= (or b!5265017 b!5265008) bm!373643))

(declare-fun m!6305466 () Bool)

(assert (=> b!5265011 m!6305466))

(declare-fun m!6305468 () Bool)

(assert (=> bm!373643 m!6305468))

(declare-fun m!6305470 () Bool)

(assert (=> b!5265015 m!6305470))

(declare-fun m!6305472 () Bool)

(assert (=> bm!373644 m!6305472))

(assert (=> b!5264615 d!1694515))

(declare-fun bm!373669 () Bool)

(declare-fun call!373674 () Bool)

(assert (=> bm!373669 (= call!373674 (isEmpty!32775 s!2326))))

(declare-fun b!5265100 () Bool)

(declare-fun e!3274840 () Bool)

(declare-fun e!3274841 () Bool)

(assert (=> b!5265100 (= e!3274840 e!3274841)))

(declare-fun res!2233925 () Bool)

(assert (=> b!5265100 (=> (not res!2233925) (not e!3274841))))

(declare-fun lt!2155789 () Bool)

(assert (=> b!5265100 (= res!2233925 (not lt!2155789))))

(declare-fun b!5265101 () Bool)

(declare-fun e!3274843 () Bool)

(assert (=> b!5265101 (= e!3274841 e!3274843)))

(declare-fun res!2233928 () Bool)

(assert (=> b!5265101 (=> res!2233928 e!3274843)))

(assert (=> b!5265101 (= res!2233928 call!373674)))

(declare-fun b!5265102 () Bool)

(declare-fun res!2233929 () Bool)

(assert (=> b!5265102 (=> res!2233929 e!3274840)))

(declare-fun e!3274842 () Bool)

(assert (=> b!5265102 (= res!2233929 e!3274842)))

(declare-fun res!2233931 () Bool)

(assert (=> b!5265102 (=> (not res!2233931) (not e!3274842))))

(assert (=> b!5265102 (= res!2233931 lt!2155789)))

(declare-fun b!5265103 () Bool)

(declare-fun e!3274844 () Bool)

(declare-fun e!3274839 () Bool)

(assert (=> b!5265103 (= e!3274844 e!3274839)))

(declare-fun c!911636 () Bool)

(assert (=> b!5265103 (= c!911636 ((_ is EmptyLang!14883) r!7292))))

(declare-fun b!5265104 () Bool)

(assert (=> b!5265104 (= e!3274839 (not lt!2155789))))

(declare-fun b!5265105 () Bool)

(assert (=> b!5265105 (= e!3274843 (not (= (head!11290 s!2326) (c!911481 r!7292))))))

(declare-fun b!5265106 () Bool)

(assert (=> b!5265106 (= e!3274842 (= (head!11290 s!2326) (c!911481 r!7292)))))

(declare-fun b!5265107 () Bool)

(declare-fun res!2233927 () Bool)

(assert (=> b!5265107 (=> res!2233927 e!3274840)))

(assert (=> b!5265107 (= res!2233927 (not ((_ is ElementMatch!14883) r!7292)))))

(assert (=> b!5265107 (= e!3274839 e!3274840)))

(declare-fun b!5265109 () Bool)

(declare-fun e!3274845 () Bool)

(declare-fun derivativeStep!4107 (Regex!14883 C!30036) Regex!14883)

(assert (=> b!5265109 (= e!3274845 (matchR!7068 (derivativeStep!4107 r!7292 (head!11290 s!2326)) (tail!10387 s!2326)))))

(declare-fun b!5265110 () Bool)

(assert (=> b!5265110 (= e!3274844 (= lt!2155789 call!373674))))

(declare-fun b!5265111 () Bool)

(declare-fun res!2233924 () Bool)

(assert (=> b!5265111 (=> (not res!2233924) (not e!3274842))))

(assert (=> b!5265111 (= res!2233924 (isEmpty!32775 (tail!10387 s!2326)))))

(declare-fun b!5265112 () Bool)

(declare-fun res!2233926 () Bool)

(assert (=> b!5265112 (=> res!2233926 e!3274843)))

(assert (=> b!5265112 (= res!2233926 (not (isEmpty!32775 (tail!10387 s!2326))))))

(declare-fun b!5265113 () Bool)

(assert (=> b!5265113 (= e!3274845 (nullable!5052 r!7292))))

(declare-fun b!5265108 () Bool)

(declare-fun res!2233930 () Bool)

(assert (=> b!5265108 (=> (not res!2233930) (not e!3274842))))

(assert (=> b!5265108 (= res!2233930 (not call!373674))))

(declare-fun d!1694531 () Bool)

(assert (=> d!1694531 e!3274844))

(declare-fun c!911638 () Bool)

(assert (=> d!1694531 (= c!911638 ((_ is EmptyExpr!14883) r!7292))))

(assert (=> d!1694531 (= lt!2155789 e!3274845)))

(declare-fun c!911637 () Bool)

(assert (=> d!1694531 (= c!911637 (isEmpty!32775 s!2326))))

(assert (=> d!1694531 (validRegex!6619 r!7292)))

(assert (=> d!1694531 (= (matchR!7068 r!7292 s!2326) lt!2155789)))

(assert (= (and d!1694531 c!911637) b!5265113))

(assert (= (and d!1694531 (not c!911637)) b!5265109))

(assert (= (and d!1694531 c!911638) b!5265110))

(assert (= (and d!1694531 (not c!911638)) b!5265103))

(assert (= (and b!5265103 c!911636) b!5265104))

(assert (= (and b!5265103 (not c!911636)) b!5265107))

(assert (= (and b!5265107 (not res!2233927)) b!5265102))

(assert (= (and b!5265102 res!2233931) b!5265108))

(assert (= (and b!5265108 res!2233930) b!5265111))

(assert (= (and b!5265111 res!2233924) b!5265106))

(assert (= (and b!5265102 (not res!2233929)) b!5265100))

(assert (= (and b!5265100 res!2233925) b!5265101))

(assert (= (and b!5265101 (not res!2233928)) b!5265112))

(assert (= (and b!5265112 (not res!2233926)) b!5265105))

(assert (= (or b!5265110 b!5265101 b!5265108) bm!373669))

(declare-fun m!6305516 () Bool)

(assert (=> b!5265111 m!6305516))

(assert (=> b!5265111 m!6305516))

(declare-fun m!6305518 () Bool)

(assert (=> b!5265111 m!6305518))

(declare-fun m!6305520 () Bool)

(assert (=> b!5265105 m!6305520))

(declare-fun m!6305522 () Bool)

(assert (=> b!5265113 m!6305522))

(assert (=> d!1694531 m!6305468))

(assert (=> d!1694531 m!6305204))

(assert (=> bm!373669 m!6305468))

(assert (=> b!5265106 m!6305520))

(assert (=> b!5265109 m!6305520))

(assert (=> b!5265109 m!6305520))

(declare-fun m!6305524 () Bool)

(assert (=> b!5265109 m!6305524))

(assert (=> b!5265109 m!6305516))

(assert (=> b!5265109 m!6305524))

(assert (=> b!5265109 m!6305516))

(declare-fun m!6305526 () Bool)

(assert (=> b!5265109 m!6305526))

(assert (=> b!5265112 m!6305516))

(assert (=> b!5265112 m!6305516))

(assert (=> b!5265112 m!6305518))

(assert (=> b!5264615 d!1694531))

(declare-fun d!1694547 () Bool)

(assert (=> d!1694547 (= (matchR!7068 r!7292 s!2326) (matchRSpec!1986 r!7292 s!2326))))

(declare-fun lt!2155795 () Unit!153050)

(declare-fun choose!39287 (Regex!14883 List!60950) Unit!153050)

(assert (=> d!1694547 (= lt!2155795 (choose!39287 r!7292 s!2326))))

(assert (=> d!1694547 (validRegex!6619 r!7292)))

(assert (=> d!1694547 (= (mainMatchTheorem!1986 r!7292 s!2326) lt!2155795)))

(declare-fun bs!1220348 () Bool)

(assert (= bs!1220348 d!1694547))

(assert (=> bs!1220348 m!6305174))

(assert (=> bs!1220348 m!6305172))

(declare-fun m!6305546 () Bool)

(assert (=> bs!1220348 m!6305546))

(assert (=> bs!1220348 m!6305204))

(assert (=> b!5264615 d!1694547))

(declare-fun bs!1220350 () Bool)

(declare-fun d!1694553 () Bool)

(assert (= bs!1220350 (and d!1694553 d!1694511)))

(declare-fun lambda!265515 () Int)

(assert (=> bs!1220350 (= lambda!265515 lambda!265505)))

(declare-fun b!5265203 () Bool)

(declare-fun e!3274896 () Regex!14883)

(assert (=> b!5265203 (= e!3274896 (Concat!23728 (h!67272 (exprs!4767 (h!67273 zl!343))) (generalisedConcat!552 (t!374137 (exprs!4767 (h!67273 zl!343))))))))

(declare-fun b!5265204 () Bool)

(declare-fun e!3274892 () Bool)

(declare-fun lt!2155798 () Regex!14883)

(declare-fun isConcat!344 (Regex!14883) Bool)

(assert (=> b!5265204 (= e!3274892 (isConcat!344 lt!2155798))))

(declare-fun b!5265205 () Bool)

(declare-fun e!3274894 () Bool)

(assert (=> b!5265205 (= e!3274894 e!3274892)))

(declare-fun c!911652 () Bool)

(declare-fun tail!10388 (List!60948) List!60948)

(assert (=> b!5265205 (= c!911652 (isEmpty!32772 (tail!10388 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5265206 () Bool)

(declare-fun isEmptyExpr!821 (Regex!14883) Bool)

(assert (=> b!5265206 (= e!3274894 (isEmptyExpr!821 lt!2155798))))

(declare-fun b!5265207 () Bool)

(declare-fun head!11291 (List!60948) Regex!14883)

(assert (=> b!5265207 (= e!3274892 (= lt!2155798 (head!11291 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5265208 () Bool)

(declare-fun e!3274893 () Regex!14883)

(assert (=> b!5265208 (= e!3274893 (h!67272 (exprs!4767 (h!67273 zl!343))))))

(declare-fun b!5265209 () Bool)

(declare-fun e!3274895 () Bool)

(assert (=> b!5265209 (= e!3274895 (isEmpty!32772 (t!374137 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5265210 () Bool)

(assert (=> b!5265210 (= e!3274896 EmptyExpr!14883)))

(declare-fun b!5265211 () Bool)

(assert (=> b!5265211 (= e!3274893 e!3274896)))

(declare-fun c!911653 () Bool)

(assert (=> b!5265211 (= c!911653 ((_ is Cons!60824) (exprs!4767 (h!67273 zl!343))))))

(declare-fun e!3274891 () Bool)

(assert (=> d!1694553 e!3274891))

(declare-fun res!2233943 () Bool)

(assert (=> d!1694553 (=> (not res!2233943) (not e!3274891))))

(assert (=> d!1694553 (= res!2233943 (validRegex!6619 lt!2155798))))

(assert (=> d!1694553 (= lt!2155798 e!3274893)))

(declare-fun c!911651 () Bool)

(assert (=> d!1694553 (= c!911651 e!3274895)))

(declare-fun res!2233942 () Bool)

(assert (=> d!1694553 (=> (not res!2233942) (not e!3274895))))

(assert (=> d!1694553 (= res!2233942 ((_ is Cons!60824) (exprs!4767 (h!67273 zl!343))))))

(assert (=> d!1694553 (forall!14295 (exprs!4767 (h!67273 zl!343)) lambda!265515)))

(assert (=> d!1694553 (= (generalisedConcat!552 (exprs!4767 (h!67273 zl!343))) lt!2155798)))

(declare-fun b!5265202 () Bool)

(assert (=> b!5265202 (= e!3274891 e!3274894)))

(declare-fun c!911654 () Bool)

(assert (=> b!5265202 (= c!911654 (isEmpty!32772 (exprs!4767 (h!67273 zl!343))))))

(assert (= (and d!1694553 res!2233942) b!5265209))

(assert (= (and d!1694553 c!911651) b!5265208))

(assert (= (and d!1694553 (not c!911651)) b!5265211))

(assert (= (and b!5265211 c!911653) b!5265203))

(assert (= (and b!5265211 (not c!911653)) b!5265210))

(assert (= (and d!1694553 res!2233943) b!5265202))

(assert (= (and b!5265202 c!911654) b!5265206))

(assert (= (and b!5265202 (not c!911654)) b!5265205))

(assert (= (and b!5265205 c!911652) b!5265207))

(assert (= (and b!5265205 (not c!911652)) b!5265204))

(declare-fun m!6305552 () Bool)

(assert (=> b!5265205 m!6305552))

(assert (=> b!5265205 m!6305552))

(declare-fun m!6305554 () Bool)

(assert (=> b!5265205 m!6305554))

(declare-fun m!6305556 () Bool)

(assert (=> b!5265203 m!6305556))

(declare-fun m!6305558 () Bool)

(assert (=> b!5265206 m!6305558))

(declare-fun m!6305560 () Bool)

(assert (=> d!1694553 m!6305560))

(declare-fun m!6305562 () Bool)

(assert (=> d!1694553 m!6305562))

(declare-fun m!6305564 () Bool)

(assert (=> b!5265204 m!6305564))

(assert (=> b!5265209 m!6305212))

(declare-fun m!6305566 () Bool)

(assert (=> b!5265202 m!6305566))

(declare-fun m!6305568 () Bool)

(assert (=> b!5265207 m!6305568))

(assert (=> b!5264607 d!1694553))

(declare-fun bm!373680 () Bool)

(declare-fun call!373687 () Bool)

(declare-fun c!911659 () Bool)

(assert (=> bm!373680 (= call!373687 (validRegex!6619 (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292))))))

(declare-fun bm!373681 () Bool)

(declare-fun c!911660 () Bool)

(declare-fun call!373686 () Bool)

(assert (=> bm!373681 (= call!373686 (validRegex!6619 (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292)))))))

(declare-fun b!5265230 () Bool)

(declare-fun e!3274914 () Bool)

(declare-fun e!3274915 () Bool)

(assert (=> b!5265230 (= e!3274914 e!3274915)))

(assert (=> b!5265230 (= c!911659 ((_ is Union!14883) r!7292))))

(declare-fun b!5265231 () Bool)

(declare-fun e!3274913 () Bool)

(assert (=> b!5265231 (= e!3274913 call!373686)))

(declare-fun d!1694557 () Bool)

(declare-fun res!2233957 () Bool)

(declare-fun e!3274912 () Bool)

(assert (=> d!1694557 (=> res!2233957 e!3274912)))

(assert (=> d!1694557 (= res!2233957 ((_ is ElementMatch!14883) r!7292))))

(assert (=> d!1694557 (= (validRegex!6619 r!7292) e!3274912)))

(declare-fun b!5265232 () Bool)

(assert (=> b!5265232 (= e!3274912 e!3274914)))

(assert (=> b!5265232 (= c!911660 ((_ is Star!14883) r!7292))))

(declare-fun b!5265233 () Bool)

(declare-fun e!3274911 () Bool)

(declare-fun call!373685 () Bool)

(assert (=> b!5265233 (= e!3274911 call!373685)))

(declare-fun b!5265234 () Bool)

(declare-fun e!3274916 () Bool)

(assert (=> b!5265234 (= e!3274916 call!373685)))

(declare-fun b!5265235 () Bool)

(assert (=> b!5265235 (= e!3274914 e!3274913)))

(declare-fun res!2233958 () Bool)

(assert (=> b!5265235 (= res!2233958 (not (nullable!5052 (reg!15212 r!7292))))))

(assert (=> b!5265235 (=> (not res!2233958) (not e!3274913))))

(declare-fun b!5265236 () Bool)

(declare-fun res!2233954 () Bool)

(assert (=> b!5265236 (=> (not res!2233954) (not e!3274916))))

(assert (=> b!5265236 (= res!2233954 call!373687)))

(assert (=> b!5265236 (= e!3274915 e!3274916)))

(declare-fun b!5265237 () Bool)

(declare-fun res!2233955 () Bool)

(declare-fun e!3274917 () Bool)

(assert (=> b!5265237 (=> res!2233955 e!3274917)))

(assert (=> b!5265237 (= res!2233955 (not ((_ is Concat!23728) r!7292)))))

(assert (=> b!5265237 (= e!3274915 e!3274917)))

(declare-fun bm!373682 () Bool)

(assert (=> bm!373682 (= call!373685 call!373686)))

(declare-fun b!5265238 () Bool)

(assert (=> b!5265238 (= e!3274917 e!3274911)))

(declare-fun res!2233956 () Bool)

(assert (=> b!5265238 (=> (not res!2233956) (not e!3274911))))

(assert (=> b!5265238 (= res!2233956 call!373687)))

(assert (= (and d!1694557 (not res!2233957)) b!5265232))

(assert (= (and b!5265232 c!911660) b!5265235))

(assert (= (and b!5265232 (not c!911660)) b!5265230))

(assert (= (and b!5265235 res!2233958) b!5265231))

(assert (= (and b!5265230 c!911659) b!5265236))

(assert (= (and b!5265230 (not c!911659)) b!5265237))

(assert (= (and b!5265236 res!2233954) b!5265234))

(assert (= (and b!5265237 (not res!2233955)) b!5265238))

(assert (= (and b!5265238 res!2233956) b!5265233))

(assert (= (or b!5265234 b!5265233) bm!373682))

(assert (= (or b!5265236 b!5265238) bm!373680))

(assert (= (or b!5265231 bm!373682) bm!373681))

(declare-fun m!6305570 () Bool)

(assert (=> bm!373680 m!6305570))

(declare-fun m!6305572 () Bool)

(assert (=> bm!373681 m!6305572))

(declare-fun m!6305574 () Bool)

(assert (=> b!5265235 m!6305574))

(assert (=> start!556050 d!1694557))

(declare-fun d!1694559 () Bool)

(assert (=> d!1694559 (= (nullable!5052 (regOne!30278 (regOne!30278 r!7292))) (nullableFct!1438 (regOne!30278 (regOne!30278 r!7292))))))

(declare-fun bs!1220351 () Bool)

(assert (= bs!1220351 d!1694559))

(declare-fun m!6305576 () Bool)

(assert (=> bs!1220351 m!6305576))

(assert (=> b!5264624 d!1694559))

(declare-fun bs!1220352 () Bool)

(declare-fun d!1694561 () Bool)

(assert (= bs!1220352 (and d!1694561 d!1694511)))

(declare-fun lambda!265516 () Int)

(assert (=> bs!1220352 (= lambda!265516 lambda!265505)))

(declare-fun bs!1220353 () Bool)

(assert (= bs!1220353 (and d!1694561 d!1694553)))

(assert (=> bs!1220353 (= lambda!265516 lambda!265515)))

(assert (=> d!1694561 (= (inv!80454 setElem!33671) (forall!14295 (exprs!4767 setElem!33671) lambda!265516))))

(declare-fun bs!1220354 () Bool)

(assert (= bs!1220354 d!1694561))

(declare-fun m!6305578 () Bool)

(assert (=> bs!1220354 m!6305578))

(assert (=> setNonEmpty!33671 d!1694561))

(declare-fun e!3274920 () Bool)

(declare-fun d!1694563 () Bool)

(assert (=> d!1694563 (= (matchZipper!1127 ((_ map or) lt!2155737 lt!2155736) (t!374139 s!2326)) e!3274920)))

(declare-fun res!2233961 () Bool)

(assert (=> d!1694563 (=> res!2233961 e!3274920)))

(assert (=> d!1694563 (= res!2233961 (matchZipper!1127 lt!2155737 (t!374139 s!2326)))))

(declare-fun lt!2155801 () Unit!153050)

(declare-fun choose!39288 ((InoxSet Context!8534) (InoxSet Context!8534) List!60950) Unit!153050)

(assert (=> d!1694563 (= lt!2155801 (choose!39288 lt!2155737 lt!2155736 (t!374139 s!2326)))))

(assert (=> d!1694563 (= (lemmaZipperConcatMatchesSameAsBothZippers!120 lt!2155737 lt!2155736 (t!374139 s!2326)) lt!2155801)))

(declare-fun b!5265241 () Bool)

(assert (=> b!5265241 (= e!3274920 (matchZipper!1127 lt!2155736 (t!374139 s!2326)))))

(assert (= (and d!1694563 (not res!2233961)) b!5265241))

(assert (=> d!1694563 m!6305236))

(assert (=> d!1694563 m!6305234))

(declare-fun m!6305580 () Bool)

(assert (=> d!1694563 m!6305580))

(assert (=> b!5265241 m!6305210))

(assert (=> b!5264605 d!1694563))

(declare-fun d!1694565 () Bool)

(declare-fun c!911661 () Bool)

(assert (=> d!1694565 (= c!911661 (isEmpty!32775 (t!374139 s!2326)))))

(declare-fun e!3274921 () Bool)

(assert (=> d!1694565 (= (matchZipper!1127 lt!2155737 (t!374139 s!2326)) e!3274921)))

(declare-fun b!5265242 () Bool)

(assert (=> b!5265242 (= e!3274921 (nullableZipper!1286 lt!2155737))))

(declare-fun b!5265243 () Bool)

(assert (=> b!5265243 (= e!3274921 (matchZipper!1127 (derivationStepZipper!1130 lt!2155737 (head!11290 (t!374139 s!2326))) (tail!10387 (t!374139 s!2326))))))

(assert (= (and d!1694565 c!911661) b!5265242))

(assert (= (and d!1694565 (not c!911661)) b!5265243))

(assert (=> d!1694565 m!6305428))

(declare-fun m!6305582 () Bool)

(assert (=> b!5265242 m!6305582))

(assert (=> b!5265243 m!6305432))

(assert (=> b!5265243 m!6305432))

(declare-fun m!6305584 () Bool)

(assert (=> b!5265243 m!6305584))

(assert (=> b!5265243 m!6305436))

(assert (=> b!5265243 m!6305584))

(assert (=> b!5265243 m!6305436))

(declare-fun m!6305586 () Bool)

(assert (=> b!5265243 m!6305586))

(assert (=> b!5264605 d!1694565))

(declare-fun d!1694567 () Bool)

(declare-fun c!911662 () Bool)

(assert (=> d!1694567 (= c!911662 (isEmpty!32775 (t!374139 s!2326)))))

(declare-fun e!3274922 () Bool)

(assert (=> d!1694567 (= (matchZipper!1127 ((_ map or) lt!2155737 lt!2155736) (t!374139 s!2326)) e!3274922)))

(declare-fun b!5265244 () Bool)

(assert (=> b!5265244 (= e!3274922 (nullableZipper!1286 ((_ map or) lt!2155737 lt!2155736)))))

(declare-fun b!5265245 () Bool)

(assert (=> b!5265245 (= e!3274922 (matchZipper!1127 (derivationStepZipper!1130 ((_ map or) lt!2155737 lt!2155736) (head!11290 (t!374139 s!2326))) (tail!10387 (t!374139 s!2326))))))

(assert (= (and d!1694567 c!911662) b!5265244))

(assert (= (and d!1694567 (not c!911662)) b!5265245))

(assert (=> d!1694567 m!6305428))

(declare-fun m!6305588 () Bool)

(assert (=> b!5265244 m!6305588))

(assert (=> b!5265245 m!6305432))

(assert (=> b!5265245 m!6305432))

(declare-fun m!6305590 () Bool)

(assert (=> b!5265245 m!6305590))

(assert (=> b!5265245 m!6305436))

(assert (=> b!5265245 m!6305590))

(assert (=> b!5265245 m!6305436))

(declare-fun m!6305592 () Bool)

(assert (=> b!5265245 m!6305592))

(assert (=> b!5264605 d!1694567))

(declare-fun bm!373683 () Bool)

(declare-fun call!373690 () Bool)

(declare-fun c!911663 () Bool)

(assert (=> bm!373683 (= call!373690 (validRegex!6619 (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))))))

(declare-fun c!911664 () Bool)

(declare-fun call!373689 () Bool)

(declare-fun bm!373684 () Bool)

(assert (=> bm!373684 (= call!373689 (validRegex!6619 (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292)))))))))

(declare-fun b!5265246 () Bool)

(declare-fun e!3274926 () Bool)

(declare-fun e!3274927 () Bool)

(assert (=> b!5265246 (= e!3274926 e!3274927)))

(assert (=> b!5265246 (= c!911663 ((_ is Union!14883) (regTwo!30278 (regOne!30278 r!7292))))))

(declare-fun b!5265247 () Bool)

(declare-fun e!3274925 () Bool)

(assert (=> b!5265247 (= e!3274925 call!373689)))

(declare-fun d!1694569 () Bool)

(declare-fun res!2233965 () Bool)

(declare-fun e!3274924 () Bool)

(assert (=> d!1694569 (=> res!2233965 e!3274924)))

(assert (=> d!1694569 (= res!2233965 ((_ is ElementMatch!14883) (regTwo!30278 (regOne!30278 r!7292))))))

(assert (=> d!1694569 (= (validRegex!6619 (regTwo!30278 (regOne!30278 r!7292))) e!3274924)))

(declare-fun b!5265248 () Bool)

(assert (=> b!5265248 (= e!3274924 e!3274926)))

(assert (=> b!5265248 (= c!911664 ((_ is Star!14883) (regTwo!30278 (regOne!30278 r!7292))))))

(declare-fun b!5265249 () Bool)

(declare-fun e!3274923 () Bool)

(declare-fun call!373688 () Bool)

(assert (=> b!5265249 (= e!3274923 call!373688)))

(declare-fun b!5265250 () Bool)

(declare-fun e!3274928 () Bool)

(assert (=> b!5265250 (= e!3274928 call!373688)))

(declare-fun b!5265251 () Bool)

(assert (=> b!5265251 (= e!3274926 e!3274925)))

(declare-fun res!2233966 () Bool)

(assert (=> b!5265251 (= res!2233966 (not (nullable!5052 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))))

(assert (=> b!5265251 (=> (not res!2233966) (not e!3274925))))

(declare-fun b!5265252 () Bool)

(declare-fun res!2233962 () Bool)

(assert (=> b!5265252 (=> (not res!2233962) (not e!3274928))))

(assert (=> b!5265252 (= res!2233962 call!373690)))

(assert (=> b!5265252 (= e!3274927 e!3274928)))

(declare-fun b!5265253 () Bool)

(declare-fun res!2233963 () Bool)

(declare-fun e!3274929 () Bool)

(assert (=> b!5265253 (=> res!2233963 e!3274929)))

(assert (=> b!5265253 (= res!2233963 (not ((_ is Concat!23728) (regTwo!30278 (regOne!30278 r!7292)))))))

(assert (=> b!5265253 (= e!3274927 e!3274929)))

(declare-fun bm!373685 () Bool)

(assert (=> bm!373685 (= call!373688 call!373689)))

(declare-fun b!5265254 () Bool)

(assert (=> b!5265254 (= e!3274929 e!3274923)))

(declare-fun res!2233964 () Bool)

(assert (=> b!5265254 (=> (not res!2233964) (not e!3274923))))

(assert (=> b!5265254 (= res!2233964 call!373690)))

(assert (= (and d!1694569 (not res!2233965)) b!5265248))

(assert (= (and b!5265248 c!911664) b!5265251))

(assert (= (and b!5265248 (not c!911664)) b!5265246))

(assert (= (and b!5265251 res!2233966) b!5265247))

(assert (= (and b!5265246 c!911663) b!5265252))

(assert (= (and b!5265246 (not c!911663)) b!5265253))

(assert (= (and b!5265252 res!2233962) b!5265250))

(assert (= (and b!5265253 (not res!2233963)) b!5265254))

(assert (= (and b!5265254 res!2233964) b!5265249))

(assert (= (or b!5265250 b!5265249) bm!373685))

(assert (= (or b!5265252 b!5265254) bm!373683))

(assert (= (or b!5265247 bm!373685) bm!373684))

(declare-fun m!6305594 () Bool)

(assert (=> bm!373683 m!6305594))

(declare-fun m!6305596 () Bool)

(assert (=> bm!373684 m!6305596))

(declare-fun m!6305598 () Bool)

(assert (=> b!5265251 m!6305598))

(assert (=> b!5264625 d!1694569))

(declare-fun bs!1220355 () Bool)

(declare-fun d!1694571 () Bool)

(assert (= bs!1220355 (and d!1694571 d!1694511)))

(declare-fun lambda!265519 () Int)

(assert (=> bs!1220355 (= lambda!265519 lambda!265505)))

(declare-fun bs!1220356 () Bool)

(assert (= bs!1220356 (and d!1694571 d!1694553)))

(assert (=> bs!1220356 (= lambda!265519 lambda!265515)))

(declare-fun bs!1220357 () Bool)

(assert (= bs!1220357 (and d!1694571 d!1694561)))

(assert (=> bs!1220357 (= lambda!265519 lambda!265516)))

(declare-fun b!5265275 () Bool)

(declare-fun e!3274942 () Bool)

(declare-fun e!3274946 () Bool)

(assert (=> b!5265275 (= e!3274942 e!3274946)))

(declare-fun c!911674 () Bool)

(assert (=> b!5265275 (= c!911674 (isEmpty!32772 (unfocusZipperList!325 zl!343)))))

(declare-fun b!5265276 () Bool)

(declare-fun e!3274943 () Regex!14883)

(assert (=> b!5265276 (= e!3274943 EmptyLang!14883)))

(assert (=> d!1694571 e!3274942))

(declare-fun res!2233972 () Bool)

(assert (=> d!1694571 (=> (not res!2233972) (not e!3274942))))

(declare-fun lt!2155804 () Regex!14883)

(assert (=> d!1694571 (= res!2233972 (validRegex!6619 lt!2155804))))

(declare-fun e!3274947 () Regex!14883)

(assert (=> d!1694571 (= lt!2155804 e!3274947)))

(declare-fun c!911676 () Bool)

(declare-fun e!3274944 () Bool)

(assert (=> d!1694571 (= c!911676 e!3274944)))

(declare-fun res!2233971 () Bool)

(assert (=> d!1694571 (=> (not res!2233971) (not e!3274944))))

(assert (=> d!1694571 (= res!2233971 ((_ is Cons!60824) (unfocusZipperList!325 zl!343)))))

(assert (=> d!1694571 (forall!14295 (unfocusZipperList!325 zl!343) lambda!265519)))

(assert (=> d!1694571 (= (generalisedUnion!812 (unfocusZipperList!325 zl!343)) lt!2155804)))

(declare-fun b!5265277 () Bool)

(declare-fun isEmptyLang!829 (Regex!14883) Bool)

(assert (=> b!5265277 (= e!3274946 (isEmptyLang!829 lt!2155804))))

(declare-fun b!5265278 () Bool)

(declare-fun e!3274945 () Bool)

(assert (=> b!5265278 (= e!3274946 e!3274945)))

(declare-fun c!911675 () Bool)

(assert (=> b!5265278 (= c!911675 (isEmpty!32772 (tail!10388 (unfocusZipperList!325 zl!343))))))

(declare-fun b!5265279 () Bool)

(assert (=> b!5265279 (= e!3274944 (isEmpty!32772 (t!374137 (unfocusZipperList!325 zl!343))))))

(declare-fun b!5265280 () Bool)

(declare-fun isUnion!261 (Regex!14883) Bool)

(assert (=> b!5265280 (= e!3274945 (isUnion!261 lt!2155804))))

(declare-fun b!5265281 () Bool)

(assert (=> b!5265281 (= e!3274947 e!3274943)))

(declare-fun c!911673 () Bool)

(assert (=> b!5265281 (= c!911673 ((_ is Cons!60824) (unfocusZipperList!325 zl!343)))))

(declare-fun b!5265282 () Bool)

(assert (=> b!5265282 (= e!3274943 (Union!14883 (h!67272 (unfocusZipperList!325 zl!343)) (generalisedUnion!812 (t!374137 (unfocusZipperList!325 zl!343)))))))

(declare-fun b!5265283 () Bool)

(assert (=> b!5265283 (= e!3274945 (= lt!2155804 (head!11291 (unfocusZipperList!325 zl!343))))))

(declare-fun b!5265284 () Bool)

(assert (=> b!5265284 (= e!3274947 (h!67272 (unfocusZipperList!325 zl!343)))))

(assert (= (and d!1694571 res!2233971) b!5265279))

(assert (= (and d!1694571 c!911676) b!5265284))

(assert (= (and d!1694571 (not c!911676)) b!5265281))

(assert (= (and b!5265281 c!911673) b!5265282))

(assert (= (and b!5265281 (not c!911673)) b!5265276))

(assert (= (and d!1694571 res!2233972) b!5265275))

(assert (= (and b!5265275 c!911674) b!5265277))

(assert (= (and b!5265275 (not c!911674)) b!5265278))

(assert (= (and b!5265278 c!911675) b!5265283))

(assert (= (and b!5265278 (not c!911675)) b!5265280))

(assert (=> b!5265283 m!6305206))

(declare-fun m!6305600 () Bool)

(assert (=> b!5265283 m!6305600))

(assert (=> b!5265275 m!6305206))

(declare-fun m!6305602 () Bool)

(assert (=> b!5265275 m!6305602))

(declare-fun m!6305604 () Bool)

(assert (=> b!5265277 m!6305604))

(declare-fun m!6305606 () Bool)

(assert (=> b!5265279 m!6305606))

(declare-fun m!6305608 () Bool)

(assert (=> b!5265282 m!6305608))

(assert (=> b!5265278 m!6305206))

(declare-fun m!6305610 () Bool)

(assert (=> b!5265278 m!6305610))

(assert (=> b!5265278 m!6305610))

(declare-fun m!6305612 () Bool)

(assert (=> b!5265278 m!6305612))

(declare-fun m!6305614 () Bool)

(assert (=> d!1694571 m!6305614))

(assert (=> d!1694571 m!6305206))

(declare-fun m!6305616 () Bool)

(assert (=> d!1694571 m!6305616))

(declare-fun m!6305618 () Bool)

(assert (=> b!5265280 m!6305618))

(assert (=> b!5264614 d!1694571))

(declare-fun bs!1220358 () Bool)

(declare-fun d!1694573 () Bool)

(assert (= bs!1220358 (and d!1694573 d!1694511)))

(declare-fun lambda!265522 () Int)

(assert (=> bs!1220358 (= lambda!265522 lambda!265505)))

(declare-fun bs!1220359 () Bool)

(assert (= bs!1220359 (and d!1694573 d!1694553)))

(assert (=> bs!1220359 (= lambda!265522 lambda!265515)))

(declare-fun bs!1220360 () Bool)

(assert (= bs!1220360 (and d!1694573 d!1694561)))

(assert (=> bs!1220360 (= lambda!265522 lambda!265516)))

(declare-fun bs!1220361 () Bool)

(assert (= bs!1220361 (and d!1694573 d!1694571)))

(assert (=> bs!1220361 (= lambda!265522 lambda!265519)))

(declare-fun lt!2155807 () List!60948)

(assert (=> d!1694573 (forall!14295 lt!2155807 lambda!265522)))

(declare-fun e!3274950 () List!60948)

(assert (=> d!1694573 (= lt!2155807 e!3274950)))

(declare-fun c!911679 () Bool)

(assert (=> d!1694573 (= c!911679 ((_ is Cons!60825) zl!343))))

(assert (=> d!1694573 (= (unfocusZipperList!325 zl!343) lt!2155807)))

(declare-fun b!5265289 () Bool)

(assert (=> b!5265289 (= e!3274950 (Cons!60824 (generalisedConcat!552 (exprs!4767 (h!67273 zl!343))) (unfocusZipperList!325 (t!374138 zl!343))))))

(declare-fun b!5265290 () Bool)

(assert (=> b!5265290 (= e!3274950 Nil!60824)))

(assert (= (and d!1694573 c!911679) b!5265289))

(assert (= (and d!1694573 (not c!911679)) b!5265290))

(declare-fun m!6305620 () Bool)

(assert (=> d!1694573 m!6305620))

(assert (=> b!5265289 m!6305228))

(declare-fun m!6305622 () Bool)

(assert (=> b!5265289 m!6305622))

(assert (=> b!5264614 d!1694573))

(declare-fun b!5265309 () Bool)

(declare-fun res!2233987 () Bool)

(declare-fun e!3274963 () Bool)

(assert (=> b!5265309 (=> (not res!2233987) (not e!3274963))))

(declare-fun lt!2155815 () Option!14994)

(declare-fun get!20913 (Option!14994) tuple2!64164)

(assert (=> b!5265309 (= res!2233987 (matchR!7068 (regTwo!30278 r!7292) (_2!35385 (get!20913 lt!2155815))))))

(declare-fun b!5265310 () Bool)

(declare-fun e!3274962 () Option!14994)

(declare-fun e!3274965 () Option!14994)

(assert (=> b!5265310 (= e!3274962 e!3274965)))

(declare-fun c!911684 () Bool)

(assert (=> b!5265310 (= c!911684 ((_ is Nil!60826) s!2326))))

(declare-fun b!5265311 () Bool)

(assert (=> b!5265311 (= e!3274962 (Some!14993 (tuple2!64165 Nil!60826 s!2326)))))

(declare-fun b!5265312 () Bool)

(declare-fun res!2233984 () Bool)

(assert (=> b!5265312 (=> (not res!2233984) (not e!3274963))))

(assert (=> b!5265312 (= res!2233984 (matchR!7068 (regOne!30278 r!7292) (_1!35385 (get!20913 lt!2155815))))))

(declare-fun b!5265313 () Bool)

(declare-fun ++!13266 (List!60950 List!60950) List!60950)

(assert (=> b!5265313 (= e!3274963 (= (++!13266 (_1!35385 (get!20913 lt!2155815)) (_2!35385 (get!20913 lt!2155815))) s!2326))))

(declare-fun b!5265314 () Bool)

(declare-fun e!3274964 () Bool)

(assert (=> b!5265314 (= e!3274964 (not (isDefined!11697 lt!2155815)))))

(declare-fun b!5265315 () Bool)

(assert (=> b!5265315 (= e!3274965 None!14993)))

(declare-fun b!5265316 () Bool)

(declare-fun lt!2155814 () Unit!153050)

(declare-fun lt!2155816 () Unit!153050)

(assert (=> b!5265316 (= lt!2155814 lt!2155816)))

(assert (=> b!5265316 (= (++!13266 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)) (t!374139 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1681 (List!60950 C!30036 List!60950 List!60950) Unit!153050)

(assert (=> b!5265316 (= lt!2155816 (lemmaMoveElementToOtherListKeepsConcatEq!1681 Nil!60826 (h!67274 s!2326) (t!374139 s!2326) s!2326))))

(assert (=> b!5265316 (= e!3274965 (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)) (t!374139 s!2326) s!2326))))

(declare-fun d!1694575 () Bool)

(assert (=> d!1694575 e!3274964))

(declare-fun res!2233985 () Bool)

(assert (=> d!1694575 (=> res!2233985 e!3274964)))

(assert (=> d!1694575 (= res!2233985 e!3274963)))

(declare-fun res!2233983 () Bool)

(assert (=> d!1694575 (=> (not res!2233983) (not e!3274963))))

(assert (=> d!1694575 (= res!2233983 (isDefined!11697 lt!2155815))))

(assert (=> d!1694575 (= lt!2155815 e!3274962)))

(declare-fun c!911685 () Bool)

(declare-fun e!3274961 () Bool)

(assert (=> d!1694575 (= c!911685 e!3274961)))

(declare-fun res!2233986 () Bool)

(assert (=> d!1694575 (=> (not res!2233986) (not e!3274961))))

(assert (=> d!1694575 (= res!2233986 (matchR!7068 (regOne!30278 r!7292) Nil!60826))))

(assert (=> d!1694575 (validRegex!6619 (regOne!30278 r!7292))))

(assert (=> d!1694575 (= (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) Nil!60826 s!2326 s!2326) lt!2155815)))

(declare-fun b!5265317 () Bool)

(assert (=> b!5265317 (= e!3274961 (matchR!7068 (regTwo!30278 r!7292) s!2326))))

(assert (= (and d!1694575 res!2233986) b!5265317))

(assert (= (and d!1694575 c!911685) b!5265311))

(assert (= (and d!1694575 (not c!911685)) b!5265310))

(assert (= (and b!5265310 c!911684) b!5265315))

(assert (= (and b!5265310 (not c!911684)) b!5265316))

(assert (= (and d!1694575 res!2233983) b!5265312))

(assert (= (and b!5265312 res!2233984) b!5265309))

(assert (= (and b!5265309 res!2233987) b!5265313))

(assert (= (and d!1694575 (not res!2233985)) b!5265314))

(declare-fun m!6305624 () Bool)

(assert (=> d!1694575 m!6305624))

(declare-fun m!6305626 () Bool)

(assert (=> d!1694575 m!6305626))

(declare-fun m!6305628 () Bool)

(assert (=> d!1694575 m!6305628))

(declare-fun m!6305630 () Bool)

(assert (=> b!5265313 m!6305630))

(declare-fun m!6305632 () Bool)

(assert (=> b!5265313 m!6305632))

(declare-fun m!6305634 () Bool)

(assert (=> b!5265317 m!6305634))

(assert (=> b!5265309 m!6305630))

(declare-fun m!6305636 () Bool)

(assert (=> b!5265309 m!6305636))

(assert (=> b!5265312 m!6305630))

(declare-fun m!6305638 () Bool)

(assert (=> b!5265312 m!6305638))

(assert (=> b!5265314 m!6305624))

(declare-fun m!6305640 () Bool)

(assert (=> b!5265316 m!6305640))

(assert (=> b!5265316 m!6305640))

(declare-fun m!6305642 () Bool)

(assert (=> b!5265316 m!6305642))

(declare-fun m!6305644 () Bool)

(assert (=> b!5265316 m!6305644))

(assert (=> b!5265316 m!6305640))

(declare-fun m!6305646 () Bool)

(assert (=> b!5265316 m!6305646))

(assert (=> b!5264604 d!1694575))

(declare-fun d!1694577 () Bool)

(declare-fun choose!39289 (Int) Bool)

(assert (=> d!1694577 (= (Exists!2064 lambda!265473) (choose!39289 lambda!265473))))

(declare-fun bs!1220362 () Bool)

(assert (= bs!1220362 d!1694577))

(declare-fun m!6305648 () Bool)

(assert (=> bs!1220362 m!6305648))

(assert (=> b!5264604 d!1694577))

(declare-fun bs!1220363 () Bool)

(declare-fun d!1694579 () Bool)

(assert (= bs!1220363 (and d!1694579 b!5264604)))

(declare-fun lambda!265527 () Int)

(assert (=> bs!1220363 (= lambda!265527 lambda!265473)))

(assert (=> bs!1220363 (not (= lambda!265527 lambda!265474))))

(declare-fun bs!1220364 () Bool)

(assert (= bs!1220364 (and d!1694579 b!5265010)))

(assert (=> bs!1220364 (not (= lambda!265527 lambda!265511))))

(declare-fun bs!1220365 () Bool)

(assert (= bs!1220365 (and d!1694579 b!5265013)))

(assert (=> bs!1220365 (not (= lambda!265527 lambda!265512))))

(assert (=> d!1694579 true))

(assert (=> d!1694579 true))

(assert (=> d!1694579 true))

(declare-fun lambda!265528 () Int)

(assert (=> bs!1220364 (not (= lambda!265528 lambda!265511))))

(assert (=> bs!1220365 (= lambda!265528 lambda!265512)))

(assert (=> bs!1220363 (= lambda!265528 lambda!265474)))

(declare-fun bs!1220366 () Bool)

(assert (= bs!1220366 d!1694579))

(assert (=> bs!1220366 (not (= lambda!265528 lambda!265527))))

(assert (=> bs!1220363 (not (= lambda!265528 lambda!265473))))

(assert (=> d!1694579 true))

(assert (=> d!1694579 true))

(assert (=> d!1694579 true))

(assert (=> d!1694579 (= (Exists!2064 lambda!265527) (Exists!2064 lambda!265528))))

(declare-fun lt!2155819 () Unit!153050)

(declare-fun choose!39290 (Regex!14883 Regex!14883 List!60950) Unit!153050)

(assert (=> d!1694579 (= lt!2155819 (choose!39290 (regOne!30278 r!7292) (regTwo!30278 r!7292) s!2326))))

(assert (=> d!1694579 (validRegex!6619 (regOne!30278 r!7292))))

(assert (=> d!1694579 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!718 (regOne!30278 r!7292) (regTwo!30278 r!7292) s!2326) lt!2155819)))

(declare-fun m!6305650 () Bool)

(assert (=> bs!1220366 m!6305650))

(declare-fun m!6305652 () Bool)

(assert (=> bs!1220366 m!6305652))

(declare-fun m!6305654 () Bool)

(assert (=> bs!1220366 m!6305654))

(assert (=> bs!1220366 m!6305628))

(assert (=> b!5264604 d!1694579))

(declare-fun d!1694581 () Bool)

(declare-fun isEmpty!32776 (Option!14994) Bool)

(assert (=> d!1694581 (= (isDefined!11697 (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) Nil!60826 s!2326 s!2326)) (not (isEmpty!32776 (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) Nil!60826 s!2326 s!2326))))))

(declare-fun bs!1220367 () Bool)

(assert (= bs!1220367 d!1694581))

(assert (=> bs!1220367 m!6305216))

(declare-fun m!6305656 () Bool)

(assert (=> bs!1220367 m!6305656))

(assert (=> b!5264604 d!1694581))

(declare-fun bs!1220368 () Bool)

(declare-fun d!1694583 () Bool)

(assert (= bs!1220368 (and d!1694583 b!5265010)))

(declare-fun lambda!265531 () Int)

(assert (=> bs!1220368 (not (= lambda!265531 lambda!265511))))

(declare-fun bs!1220369 () Bool)

(assert (= bs!1220369 (and d!1694583 d!1694579)))

(assert (=> bs!1220369 (not (= lambda!265531 lambda!265528))))

(declare-fun bs!1220370 () Bool)

(assert (= bs!1220370 (and d!1694583 b!5265013)))

(assert (=> bs!1220370 (not (= lambda!265531 lambda!265512))))

(declare-fun bs!1220371 () Bool)

(assert (= bs!1220371 (and d!1694583 b!5264604)))

(assert (=> bs!1220371 (not (= lambda!265531 lambda!265474))))

(assert (=> bs!1220369 (= lambda!265531 lambda!265527)))

(assert (=> bs!1220371 (= lambda!265531 lambda!265473)))

(assert (=> d!1694583 true))

(assert (=> d!1694583 true))

(assert (=> d!1694583 true))

(assert (=> d!1694583 (= (isDefined!11697 (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) Nil!60826 s!2326 s!2326)) (Exists!2064 lambda!265531))))

(declare-fun lt!2155822 () Unit!153050)

(declare-fun choose!39291 (Regex!14883 Regex!14883 List!60950) Unit!153050)

(assert (=> d!1694583 (= lt!2155822 (choose!39291 (regOne!30278 r!7292) (regTwo!30278 r!7292) s!2326))))

(assert (=> d!1694583 (validRegex!6619 (regOne!30278 r!7292))))

(assert (=> d!1694583 (= (lemmaFindConcatSeparationEquivalentToExists!1172 (regOne!30278 r!7292) (regTwo!30278 r!7292) s!2326) lt!2155822)))

(declare-fun bs!1220372 () Bool)

(assert (= bs!1220372 d!1694583))

(assert (=> bs!1220372 m!6305628))

(declare-fun m!6305658 () Bool)

(assert (=> bs!1220372 m!6305658))

(assert (=> bs!1220372 m!6305216))

(assert (=> bs!1220372 m!6305218))

(assert (=> bs!1220372 m!6305216))

(declare-fun m!6305660 () Bool)

(assert (=> bs!1220372 m!6305660))

(assert (=> b!5264604 d!1694583))

(declare-fun d!1694585 () Bool)

(assert (=> d!1694585 (= (Exists!2064 lambda!265474) (choose!39289 lambda!265474))))

(declare-fun bs!1220373 () Bool)

(assert (= bs!1220373 d!1694585))

(declare-fun m!6305662 () Bool)

(assert (=> bs!1220373 m!6305662))

(assert (=> b!5264604 d!1694585))

(declare-fun b!5265343 () Bool)

(declare-fun e!3274974 () Bool)

(declare-fun tp!1471790 () Bool)

(declare-fun tp!1471793 () Bool)

(assert (=> b!5265343 (= e!3274974 (and tp!1471790 tp!1471793))))

(declare-fun b!5265340 () Bool)

(assert (=> b!5265340 (= e!3274974 tp_is_empty!39019)))

(declare-fun b!5265341 () Bool)

(declare-fun tp!1471791 () Bool)

(declare-fun tp!1471792 () Bool)

(assert (=> b!5265341 (= e!3274974 (and tp!1471791 tp!1471792))))

(declare-fun b!5265342 () Bool)

(declare-fun tp!1471794 () Bool)

(assert (=> b!5265342 (= e!3274974 tp!1471794)))

(assert (=> b!5264602 (= tp!1471720 e!3274974)))

(assert (= (and b!5264602 ((_ is ElementMatch!14883) (reg!15212 r!7292))) b!5265340))

(assert (= (and b!5264602 ((_ is Concat!23728) (reg!15212 r!7292))) b!5265341))

(assert (= (and b!5264602 ((_ is Star!14883) (reg!15212 r!7292))) b!5265342))

(assert (= (and b!5264602 ((_ is Union!14883) (reg!15212 r!7292))) b!5265343))

(declare-fun b!5265351 () Bool)

(declare-fun e!3274980 () Bool)

(declare-fun tp!1471799 () Bool)

(assert (=> b!5265351 (= e!3274980 tp!1471799)))

(declare-fun b!5265350 () Bool)

(declare-fun tp!1471800 () Bool)

(declare-fun e!3274979 () Bool)

(assert (=> b!5265350 (= e!3274979 (and (inv!80454 (h!67273 (t!374138 zl!343))) e!3274980 tp!1471800))))

(assert (=> b!5264606 (= tp!1471718 e!3274979)))

(assert (= b!5265350 b!5265351))

(assert (= (and b!5264606 ((_ is Cons!60825) (t!374138 zl!343))) b!5265350))

(declare-fun m!6305664 () Bool)

(assert (=> b!5265350 m!6305664))

(declare-fun b!5265356 () Bool)

(declare-fun e!3274983 () Bool)

(declare-fun tp!1471803 () Bool)

(assert (=> b!5265356 (= e!3274983 (and tp_is_empty!39019 tp!1471803))))

(assert (=> b!5264612 (= tp!1471714 e!3274983)))

(assert (= (and b!5264612 ((_ is Cons!60826) (t!374139 s!2326))) b!5265356))

(declare-fun b!5265360 () Bool)

(declare-fun e!3274984 () Bool)

(declare-fun tp!1471804 () Bool)

(declare-fun tp!1471807 () Bool)

(assert (=> b!5265360 (= e!3274984 (and tp!1471804 tp!1471807))))

(declare-fun b!5265357 () Bool)

(assert (=> b!5265357 (= e!3274984 tp_is_empty!39019)))

(declare-fun b!5265358 () Bool)

(declare-fun tp!1471805 () Bool)

(declare-fun tp!1471806 () Bool)

(assert (=> b!5265358 (= e!3274984 (and tp!1471805 tp!1471806))))

(declare-fun b!5265359 () Bool)

(declare-fun tp!1471808 () Bool)

(assert (=> b!5265359 (= e!3274984 tp!1471808)))

(assert (=> b!5264617 (= tp!1471713 e!3274984)))

(assert (= (and b!5264617 ((_ is ElementMatch!14883) (regOne!30279 r!7292))) b!5265357))

(assert (= (and b!5264617 ((_ is Concat!23728) (regOne!30279 r!7292))) b!5265358))

(assert (= (and b!5264617 ((_ is Star!14883) (regOne!30279 r!7292))) b!5265359))

(assert (= (and b!5264617 ((_ is Union!14883) (regOne!30279 r!7292))) b!5265360))

(declare-fun b!5265364 () Bool)

(declare-fun e!3274985 () Bool)

(declare-fun tp!1471809 () Bool)

(declare-fun tp!1471812 () Bool)

(assert (=> b!5265364 (= e!3274985 (and tp!1471809 tp!1471812))))

(declare-fun b!5265361 () Bool)

(assert (=> b!5265361 (= e!3274985 tp_is_empty!39019)))

(declare-fun b!5265362 () Bool)

(declare-fun tp!1471810 () Bool)

(declare-fun tp!1471811 () Bool)

(assert (=> b!5265362 (= e!3274985 (and tp!1471810 tp!1471811))))

(declare-fun b!5265363 () Bool)

(declare-fun tp!1471813 () Bool)

(assert (=> b!5265363 (= e!3274985 tp!1471813)))

(assert (=> b!5264617 (= tp!1471721 e!3274985)))

(assert (= (and b!5264617 ((_ is ElementMatch!14883) (regTwo!30279 r!7292))) b!5265361))

(assert (= (and b!5264617 ((_ is Concat!23728) (regTwo!30279 r!7292))) b!5265362))

(assert (= (and b!5264617 ((_ is Star!14883) (regTwo!30279 r!7292))) b!5265363))

(assert (= (and b!5264617 ((_ is Union!14883) (regTwo!30279 r!7292))) b!5265364))

(declare-fun b!5265369 () Bool)

(declare-fun e!3274988 () Bool)

(declare-fun tp!1471818 () Bool)

(declare-fun tp!1471819 () Bool)

(assert (=> b!5265369 (= e!3274988 (and tp!1471818 tp!1471819))))

(assert (=> b!5264603 (= tp!1471719 e!3274988)))

(assert (= (and b!5264603 ((_ is Cons!60824) (exprs!4767 (h!67273 zl!343)))) b!5265369))

(declare-fun b!5265370 () Bool)

(declare-fun e!3274989 () Bool)

(declare-fun tp!1471820 () Bool)

(declare-fun tp!1471821 () Bool)

(assert (=> b!5265370 (= e!3274989 (and tp!1471820 tp!1471821))))

(assert (=> b!5264622 (= tp!1471715 e!3274989)))

(assert (= (and b!5264622 ((_ is Cons!60824) (exprs!4767 setElem!33671))) b!5265370))

(declare-fun b!5265374 () Bool)

(declare-fun e!3274990 () Bool)

(declare-fun tp!1471822 () Bool)

(declare-fun tp!1471825 () Bool)

(assert (=> b!5265374 (= e!3274990 (and tp!1471822 tp!1471825))))

(declare-fun b!5265371 () Bool)

(assert (=> b!5265371 (= e!3274990 tp_is_empty!39019)))

(declare-fun b!5265372 () Bool)

(declare-fun tp!1471823 () Bool)

(declare-fun tp!1471824 () Bool)

(assert (=> b!5265372 (= e!3274990 (and tp!1471823 tp!1471824))))

(declare-fun b!5265373 () Bool)

(declare-fun tp!1471826 () Bool)

(assert (=> b!5265373 (= e!3274990 tp!1471826)))

(assert (=> b!5264618 (= tp!1471716 e!3274990)))

(assert (= (and b!5264618 ((_ is ElementMatch!14883) (regOne!30278 r!7292))) b!5265371))

(assert (= (and b!5264618 ((_ is Concat!23728) (regOne!30278 r!7292))) b!5265372))

(assert (= (and b!5264618 ((_ is Star!14883) (regOne!30278 r!7292))) b!5265373))

(assert (= (and b!5264618 ((_ is Union!14883) (regOne!30278 r!7292))) b!5265374))

(declare-fun b!5265378 () Bool)

(declare-fun e!3274991 () Bool)

(declare-fun tp!1471827 () Bool)

(declare-fun tp!1471830 () Bool)

(assert (=> b!5265378 (= e!3274991 (and tp!1471827 tp!1471830))))

(declare-fun b!5265375 () Bool)

(assert (=> b!5265375 (= e!3274991 tp_is_empty!39019)))

(declare-fun b!5265376 () Bool)

(declare-fun tp!1471828 () Bool)

(declare-fun tp!1471829 () Bool)

(assert (=> b!5265376 (= e!3274991 (and tp!1471828 tp!1471829))))

(declare-fun b!5265377 () Bool)

(declare-fun tp!1471831 () Bool)

(assert (=> b!5265377 (= e!3274991 tp!1471831)))

(assert (=> b!5264618 (= tp!1471712 e!3274991)))

(assert (= (and b!5264618 ((_ is ElementMatch!14883) (regTwo!30278 r!7292))) b!5265375))

(assert (= (and b!5264618 ((_ is Concat!23728) (regTwo!30278 r!7292))) b!5265376))

(assert (= (and b!5264618 ((_ is Star!14883) (regTwo!30278 r!7292))) b!5265377))

(assert (= (and b!5264618 ((_ is Union!14883) (regTwo!30278 r!7292))) b!5265378))

(declare-fun condSetEmpty!33677 () Bool)

(assert (=> setNonEmpty!33671 (= condSetEmpty!33677 (= setRest!33671 ((as const (Array Context!8534 Bool)) false)))))

(declare-fun setRes!33677 () Bool)

(assert (=> setNonEmpty!33671 (= tp!1471717 setRes!33677)))

(declare-fun setIsEmpty!33677 () Bool)

(assert (=> setIsEmpty!33677 setRes!33677))

(declare-fun e!3274994 () Bool)

(declare-fun tp!1471836 () Bool)

(declare-fun setNonEmpty!33677 () Bool)

(declare-fun setElem!33677 () Context!8534)

(assert (=> setNonEmpty!33677 (= setRes!33677 (and tp!1471836 (inv!80454 setElem!33677) e!3274994))))

(declare-fun setRest!33677 () (InoxSet Context!8534))

(assert (=> setNonEmpty!33677 (= setRest!33671 ((_ map or) (store ((as const (Array Context!8534 Bool)) false) setElem!33677 true) setRest!33677))))

(declare-fun b!5265383 () Bool)

(declare-fun tp!1471837 () Bool)

(assert (=> b!5265383 (= e!3274994 tp!1471837)))

(assert (= (and setNonEmpty!33671 condSetEmpty!33677) setIsEmpty!33677))

(assert (= (and setNonEmpty!33671 (not condSetEmpty!33677)) setNonEmpty!33677))

(assert (= setNonEmpty!33677 b!5265383))

(declare-fun m!6305666 () Bool)

(assert (=> setNonEmpty!33677 m!6305666))

(declare-fun b_lambda!203123 () Bool)

(assert (= b_lambda!203117 (or b!5264610 b_lambda!203123)))

(declare-fun bs!1220374 () Bool)

(declare-fun d!1694587 () Bool)

(assert (= bs!1220374 (and d!1694587 b!5264610)))

(assert (=> bs!1220374 (= (dynLambda!24034 lambda!265475 (h!67273 zl!343)) (derivationStepZipperUp!255 (h!67273 zl!343) (h!67274 s!2326)))))

(assert (=> bs!1220374 m!6305190))

(assert (=> d!1694483 d!1694587))

(check-sat (not d!1694583) (not b!5265243) (not b!5265316) (not b!5265313) (not b!5265205) (not b!5265373) (not d!1694547) (not b!5265356) (not d!1694479) (not b!5265376) (not b!5265015) (not bm!373604) (not d!1694497) (not b!5264879) (not b!5264877) (not b!5265202) (not d!1694559) (not b!5265350) (not b!5265279) (not b!5265111) tp_is_empty!39019 (not b!5265341) (not b!5265369) (not b!5265289) (not b!5265105) (not b!5265245) (not d!1694577) (not b!5265203) (not b!5265113) (not b!5265112) (not b!5265364) (not b!5265383) (not bm!373605) (not bm!373614) (not b!5265378) (not b!5265374) (not d!1694553) (not b!5265275) (not d!1694567) (not setNonEmpty!33677) (not b!5264888) (not b!5265363) (not bm!373669) (not d!1694485) (not bm!373644) (not b!5265312) (not bm!373616) (not d!1694483) (not b!5265207) (not b!5265209) (not b!5265204) (not b!5265283) (not d!1694585) (not bs!1220374) (not b!5265370) (not bm!373643) (not d!1694563) (not b!5264923) (not d!1694565) (not b!5265372) (not b_lambda!203123) (not b!5265242) (not d!1694511) (not b!5264847) (not b!5264845) (not b!5264813) (not b!5265362) (not bm!373681) (not b!5264924) (not b!5265280) (not bm!373597) (not d!1694489) (not b!5265277) (not bm!373684) (not bm!373606) (not b!5264903) (not b!5265360) (not b!5264842) (not b!5265241) (not b!5265251) (not b!5265235) (not d!1694575) (not bm!373612) (not b!5265244) (not bm!373608) (not b!5265011) (not b!5265314) (not bm!373603) (not bm!373610) (not d!1694531) (not b!5265342) (not bm!373595) (not d!1694579) (not b!5265377) (not b!5265343) (not b!5265109) (not d!1694571) (not b!5264892) (not b!5265106) (not b!5265282) (not d!1694505) (not bm!373683) (not b!5265359) (not b!5265278) (not b!5265206) (not d!1694561) (not d!1694573) (not bm!373680) (not b!5265358) (not b!5265317) (not bm!373599) (not b!5265351) (not b!5264840) (not b!5265309) (not d!1694581))
(check-sat)
(get-model)

(declare-fun d!1694709 () Bool)

(declare-fun res!2234103 () Bool)

(declare-fun e!3275152 () Bool)

(assert (=> d!1694709 (=> res!2234103 e!3275152)))

(assert (=> d!1694709 (= res!2234103 ((_ is Nil!60824) lt!2155807))))

(assert (=> d!1694709 (= (forall!14295 lt!2155807 lambda!265522) e!3275152)))

(declare-fun b!5265623 () Bool)

(declare-fun e!3275153 () Bool)

(assert (=> b!5265623 (= e!3275152 e!3275153)))

(declare-fun res!2234104 () Bool)

(assert (=> b!5265623 (=> (not res!2234104) (not e!3275153))))

(declare-fun dynLambda!24037 (Int Regex!14883) Bool)

(assert (=> b!5265623 (= res!2234104 (dynLambda!24037 lambda!265522 (h!67272 lt!2155807)))))

(declare-fun b!5265624 () Bool)

(assert (=> b!5265624 (= e!3275153 (forall!14295 (t!374137 lt!2155807) lambda!265522))))

(assert (= (and d!1694709 (not res!2234103)) b!5265623))

(assert (= (and b!5265623 res!2234104) b!5265624))

(declare-fun b_lambda!203133 () Bool)

(assert (=> (not b_lambda!203133) (not b!5265623)))

(declare-fun m!6305894 () Bool)

(assert (=> b!5265623 m!6305894))

(declare-fun m!6305896 () Bool)

(assert (=> b!5265624 m!6305896))

(assert (=> d!1694573 d!1694709))

(declare-fun bs!1220433 () Bool)

(declare-fun b!5265627 () Bool)

(assert (= bs!1220433 (and b!5265627 b!5265010)))

(declare-fun lambda!265546 () Int)

(assert (=> bs!1220433 (= (and (= (reg!15212 (regOne!30279 r!7292)) (reg!15212 r!7292)) (= (regOne!30279 r!7292) r!7292)) (= lambda!265546 lambda!265511))))

(declare-fun bs!1220434 () Bool)

(assert (= bs!1220434 (and b!5265627 d!1694579)))

(assert (=> bs!1220434 (not (= lambda!265546 lambda!265528))))

(declare-fun bs!1220435 () Bool)

(assert (= bs!1220435 (and b!5265627 b!5265013)))

(assert (=> bs!1220435 (not (= lambda!265546 lambda!265512))))

(declare-fun bs!1220436 () Bool)

(assert (= bs!1220436 (and b!5265627 b!5264604)))

(assert (=> bs!1220436 (not (= lambda!265546 lambda!265474))))

(assert (=> bs!1220434 (not (= lambda!265546 lambda!265527))))

(declare-fun bs!1220437 () Bool)

(assert (= bs!1220437 (and b!5265627 d!1694583)))

(assert (=> bs!1220437 (not (= lambda!265546 lambda!265531))))

(assert (=> bs!1220436 (not (= lambda!265546 lambda!265473))))

(assert (=> b!5265627 true))

(assert (=> b!5265627 true))

(declare-fun bs!1220438 () Bool)

(declare-fun b!5265630 () Bool)

(assert (= bs!1220438 (and b!5265630 b!5265010)))

(declare-fun lambda!265547 () Int)

(assert (=> bs!1220438 (not (= lambda!265547 lambda!265511))))

(declare-fun bs!1220439 () Bool)

(assert (= bs!1220439 (and b!5265630 d!1694579)))

(assert (=> bs!1220439 (= (and (= (regOne!30278 (regOne!30279 r!7292)) (regOne!30278 r!7292)) (= (regTwo!30278 (regOne!30279 r!7292)) (regTwo!30278 r!7292))) (= lambda!265547 lambda!265528))))

(declare-fun bs!1220440 () Bool)

(assert (= bs!1220440 (and b!5265630 b!5265627)))

(assert (=> bs!1220440 (not (= lambda!265547 lambda!265546))))

(declare-fun bs!1220441 () Bool)

(assert (= bs!1220441 (and b!5265630 b!5265013)))

(assert (=> bs!1220441 (= (and (= (regOne!30278 (regOne!30279 r!7292)) (regOne!30278 r!7292)) (= (regTwo!30278 (regOne!30279 r!7292)) (regTwo!30278 r!7292))) (= lambda!265547 lambda!265512))))

(declare-fun bs!1220442 () Bool)

(assert (= bs!1220442 (and b!5265630 b!5264604)))

(assert (=> bs!1220442 (= (and (= (regOne!30278 (regOne!30279 r!7292)) (regOne!30278 r!7292)) (= (regTwo!30278 (regOne!30279 r!7292)) (regTwo!30278 r!7292))) (= lambda!265547 lambda!265474))))

(assert (=> bs!1220439 (not (= lambda!265547 lambda!265527))))

(declare-fun bs!1220443 () Bool)

(assert (= bs!1220443 (and b!5265630 d!1694583)))

(assert (=> bs!1220443 (not (= lambda!265547 lambda!265531))))

(assert (=> bs!1220442 (not (= lambda!265547 lambda!265473))))

(assert (=> b!5265630 true))

(assert (=> b!5265630 true))

(declare-fun b!5265625 () Bool)

(declare-fun res!2234107 () Bool)

(declare-fun e!3275157 () Bool)

(assert (=> b!5265625 (=> res!2234107 e!3275157)))

(declare-fun call!373753 () Bool)

(assert (=> b!5265625 (= res!2234107 call!373753)))

(declare-fun e!3275156 () Bool)

(assert (=> b!5265625 (= e!3275156 e!3275157)))

(declare-fun b!5265626 () Bool)

(declare-fun c!911760 () Bool)

(assert (=> b!5265626 (= c!911760 ((_ is ElementMatch!14883) (regOne!30279 r!7292)))))

(declare-fun e!3275159 () Bool)

(declare-fun e!3275160 () Bool)

(assert (=> b!5265626 (= e!3275159 e!3275160)))

(declare-fun d!1694711 () Bool)

(declare-fun c!911762 () Bool)

(assert (=> d!1694711 (= c!911762 ((_ is EmptyExpr!14883) (regOne!30279 r!7292)))))

(declare-fun e!3275155 () Bool)

(assert (=> d!1694711 (= (matchRSpec!1986 (regOne!30279 r!7292) s!2326) e!3275155)))

(declare-fun call!373752 () Bool)

(assert (=> b!5265627 (= e!3275157 call!373752)))

(declare-fun b!5265628 () Bool)

(declare-fun e!3275158 () Bool)

(declare-fun e!3275154 () Bool)

(assert (=> b!5265628 (= e!3275158 e!3275154)))

(declare-fun res!2234106 () Bool)

(assert (=> b!5265628 (= res!2234106 (matchRSpec!1986 (regOne!30279 (regOne!30279 r!7292)) s!2326))))

(assert (=> b!5265628 (=> res!2234106 e!3275154)))

(declare-fun bm!373747 () Bool)

(assert (=> bm!373747 (= call!373753 (isEmpty!32775 s!2326))))

(declare-fun b!5265629 () Bool)

(assert (=> b!5265629 (= e!3275155 e!3275159)))

(declare-fun res!2234105 () Bool)

(assert (=> b!5265629 (= res!2234105 (not ((_ is EmptyLang!14883) (regOne!30279 r!7292))))))

(assert (=> b!5265629 (=> (not res!2234105) (not e!3275159))))

(assert (=> b!5265630 (= e!3275156 call!373752)))

(declare-fun b!5265631 () Bool)

(declare-fun c!911761 () Bool)

(assert (=> b!5265631 (= c!911761 ((_ is Union!14883) (regOne!30279 r!7292)))))

(assert (=> b!5265631 (= e!3275160 e!3275158)))

(declare-fun b!5265632 () Bool)

(assert (=> b!5265632 (= e!3275154 (matchRSpec!1986 (regTwo!30279 (regOne!30279 r!7292)) s!2326))))

(declare-fun b!5265633 () Bool)

(assert (=> b!5265633 (= e!3275160 (= s!2326 (Cons!60826 (c!911481 (regOne!30279 r!7292)) Nil!60826)))))

(declare-fun c!911759 () Bool)

(declare-fun bm!373748 () Bool)

(assert (=> bm!373748 (= call!373752 (Exists!2064 (ite c!911759 lambda!265546 lambda!265547)))))

(declare-fun b!5265634 () Bool)

(assert (=> b!5265634 (= e!3275155 call!373753)))

(declare-fun b!5265635 () Bool)

(assert (=> b!5265635 (= e!3275158 e!3275156)))

(assert (=> b!5265635 (= c!911759 ((_ is Star!14883) (regOne!30279 r!7292)))))

(assert (= (and d!1694711 c!911762) b!5265634))

(assert (= (and d!1694711 (not c!911762)) b!5265629))

(assert (= (and b!5265629 res!2234105) b!5265626))

(assert (= (and b!5265626 c!911760) b!5265633))

(assert (= (and b!5265626 (not c!911760)) b!5265631))

(assert (= (and b!5265631 c!911761) b!5265628))

(assert (= (and b!5265631 (not c!911761)) b!5265635))

(assert (= (and b!5265628 (not res!2234106)) b!5265632))

(assert (= (and b!5265635 c!911759) b!5265625))

(assert (= (and b!5265635 (not c!911759)) b!5265630))

(assert (= (and b!5265625 (not res!2234107)) b!5265627))

(assert (= (or b!5265627 b!5265630) bm!373748))

(assert (= (or b!5265634 b!5265625) bm!373747))

(declare-fun m!6305898 () Bool)

(assert (=> b!5265628 m!6305898))

(assert (=> bm!373747 m!6305468))

(declare-fun m!6305900 () Bool)

(assert (=> b!5265632 m!6305900))

(declare-fun m!6305902 () Bool)

(assert (=> bm!373748 m!6305902))

(assert (=> b!5265011 d!1694711))

(declare-fun d!1694713 () Bool)

(declare-fun c!911773 () Bool)

(assert (=> d!1694713 (= c!911773 (isEmpty!32775 (tail!10387 (t!374139 s!2326))))))

(declare-fun e!3275171 () Bool)

(assert (=> d!1694713 (= (matchZipper!1127 (derivationStepZipper!1130 ((_ map or) lt!2155737 lt!2155736) (head!11290 (t!374139 s!2326))) (tail!10387 (t!374139 s!2326))) e!3275171)))

(declare-fun b!5265656 () Bool)

(assert (=> b!5265656 (= e!3275171 (nullableZipper!1286 (derivationStepZipper!1130 ((_ map or) lt!2155737 lt!2155736) (head!11290 (t!374139 s!2326)))))))

(declare-fun b!5265657 () Bool)

(assert (=> b!5265657 (= e!3275171 (matchZipper!1127 (derivationStepZipper!1130 (derivationStepZipper!1130 ((_ map or) lt!2155737 lt!2155736) (head!11290 (t!374139 s!2326))) (head!11290 (tail!10387 (t!374139 s!2326)))) (tail!10387 (tail!10387 (t!374139 s!2326)))))))

(assert (= (and d!1694713 c!911773) b!5265656))

(assert (= (and d!1694713 (not c!911773)) b!5265657))

(assert (=> d!1694713 m!6305436))

(declare-fun m!6305904 () Bool)

(assert (=> d!1694713 m!6305904))

(assert (=> b!5265656 m!6305590))

(declare-fun m!6305906 () Bool)

(assert (=> b!5265656 m!6305906))

(assert (=> b!5265657 m!6305436))

(declare-fun m!6305908 () Bool)

(assert (=> b!5265657 m!6305908))

(assert (=> b!5265657 m!6305590))

(assert (=> b!5265657 m!6305908))

(declare-fun m!6305910 () Bool)

(assert (=> b!5265657 m!6305910))

(assert (=> b!5265657 m!6305436))

(declare-fun m!6305912 () Bool)

(assert (=> b!5265657 m!6305912))

(assert (=> b!5265657 m!6305910))

(assert (=> b!5265657 m!6305912))

(declare-fun m!6305914 () Bool)

(assert (=> b!5265657 m!6305914))

(assert (=> b!5265245 d!1694713))

(declare-fun bs!1220444 () Bool)

(declare-fun d!1694715 () Bool)

(assert (= bs!1220444 (and d!1694715 b!5264610)))

(declare-fun lambda!265550 () Int)

(assert (=> bs!1220444 (= (= (head!11290 (t!374139 s!2326)) (h!67274 s!2326)) (= lambda!265550 lambda!265475))))

(assert (=> d!1694715 true))

(assert (=> d!1694715 (= (derivationStepZipper!1130 ((_ map or) lt!2155737 lt!2155736) (head!11290 (t!374139 s!2326))) (flatMap!610 ((_ map or) lt!2155737 lt!2155736) lambda!265550))))

(declare-fun bs!1220445 () Bool)

(assert (= bs!1220445 d!1694715))

(declare-fun m!6305916 () Bool)

(assert (=> bs!1220445 m!6305916))

(assert (=> b!5265245 d!1694715))

(declare-fun d!1694717 () Bool)

(assert (=> d!1694717 (= (head!11290 (t!374139 s!2326)) (h!67274 (t!374139 s!2326)))))

(assert (=> b!5265245 d!1694717))

(declare-fun d!1694723 () Bool)

(assert (=> d!1694723 (= (tail!10387 (t!374139 s!2326)) (t!374139 (t!374139 s!2326)))))

(assert (=> b!5265245 d!1694723))

(declare-fun call!373769 () List!60948)

(declare-fun call!373771 () (InoxSet Context!8534))

(declare-fun c!911784 () Bool)

(declare-fun bm!373761 () Bool)

(assert (=> bm!373761 (= call!373771 (derivationStepZipperDown!331 (ite c!911784 (regOne!30279 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))) (regOne!30278 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292)))))))) (ite c!911784 (ite (or c!911568 c!911567) (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373615)) (Context!8535 call!373769)) (h!67274 s!2326)))))

(declare-fun bm!373762 () Bool)

(declare-fun call!373767 () (InoxSet Context!8534))

(declare-fun call!373766 () (InoxSet Context!8534))

(assert (=> bm!373762 (= call!373767 call!373766)))

(declare-fun b!5265671 () Bool)

(declare-fun e!3275177 () (InoxSet Context!8534))

(assert (=> b!5265671 (= e!3275177 (store ((as const (Array Context!8534 Bool)) false) (ite (or c!911568 c!911567) (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373615)) true))))

(declare-fun b!5265672 () Bool)

(declare-fun e!3275178 () (InoxSet Context!8534))

(assert (=> b!5265672 (= e!3275177 e!3275178)))

(assert (=> b!5265672 (= c!911784 ((_ is Union!14883) (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))))))

(declare-fun bm!373763 () Bool)

(declare-fun c!911782 () Bool)

(declare-fun call!373770 () List!60948)

(declare-fun c!911783 () Bool)

(assert (=> bm!373763 (= call!373766 (derivationStepZipperDown!331 (ite c!911784 (regTwo!30279 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))) (ite c!911783 (regTwo!30278 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))) (ite c!911782 (regOne!30278 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))) (reg!15212 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292)))))))))) (ite (or c!911784 c!911783) (ite (or c!911568 c!911567) (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373615)) (Context!8535 call!373770)) (h!67274 s!2326)))))

(declare-fun e!3275180 () Bool)

(declare-fun b!5265673 () Bool)

(assert (=> b!5265673 (= e!3275180 (nullable!5052 (regOne!30278 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292)))))))))))

(declare-fun b!5265674 () Bool)

(declare-fun e!3275181 () (InoxSet Context!8534))

(declare-fun call!373768 () (InoxSet Context!8534))

(assert (=> b!5265674 (= e!3275181 call!373768)))

(declare-fun b!5265675 () Bool)

(declare-fun e!3275179 () (InoxSet Context!8534))

(assert (=> b!5265675 (= e!3275179 ((_ map or) call!373771 call!373767))))

(declare-fun bm!373764 () Bool)

(assert (=> bm!373764 (= call!373770 call!373769)))

(declare-fun b!5265676 () Bool)

(declare-fun e!3275182 () (InoxSet Context!8534))

(assert (=> b!5265676 (= e!3275182 ((as const (Array Context!8534 Bool)) false))))

(declare-fun d!1694725 () Bool)

(declare-fun c!911781 () Bool)

(assert (=> d!1694725 (= c!911781 (and ((_ is ElementMatch!14883) (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))) (= (c!911481 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))) (h!67274 s!2326))))))

(assert (=> d!1694725 (= (derivationStepZipperDown!331 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292)))))) (ite (or c!911568 c!911567) (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373615)) (h!67274 s!2326)) e!3275177)))

(declare-fun b!5265670 () Bool)

(assert (=> b!5265670 (= e!3275179 e!3275181)))

(assert (=> b!5265670 (= c!911782 ((_ is Concat!23728) (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))))))

(declare-fun c!911785 () Bool)

(declare-fun b!5265677 () Bool)

(assert (=> b!5265677 (= c!911785 ((_ is Star!14883) (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))))))

(assert (=> b!5265677 (= e!3275181 e!3275182)))

(declare-fun b!5265678 () Bool)

(assert (=> b!5265678 (= c!911783 e!3275180)))

(declare-fun res!2234108 () Bool)

(assert (=> b!5265678 (=> (not res!2234108) (not e!3275180))))

(assert (=> b!5265678 (= res!2234108 ((_ is Concat!23728) (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))))))

(assert (=> b!5265678 (= e!3275178 e!3275179)))

(declare-fun bm!373765 () Bool)

(assert (=> bm!373765 (= call!373769 ($colon$colon!1336 (exprs!4767 (ite (or c!911568 c!911567) (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373615))) (ite (or c!911783 c!911782) (regTwo!30278 (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292))))))) (ite c!911568 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (ite c!911567 (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (ite c!911566 (regOne!30278 (regOne!30278 (regOne!30278 r!7292))) (reg!15212 (regOne!30278 (regOne!30278 r!7292)))))))))))

(declare-fun b!5265679 () Bool)

(assert (=> b!5265679 (= e!3275178 ((_ map or) call!373771 call!373766))))

(declare-fun bm!373766 () Bool)

(assert (=> bm!373766 (= call!373768 call!373767)))

(declare-fun b!5265680 () Bool)

(assert (=> b!5265680 (= e!3275182 call!373768)))

(assert (= (and d!1694725 c!911781) b!5265671))

(assert (= (and d!1694725 (not c!911781)) b!5265672))

(assert (= (and b!5265672 c!911784) b!5265679))

(assert (= (and b!5265672 (not c!911784)) b!5265678))

(assert (= (and b!5265678 res!2234108) b!5265673))

(assert (= (and b!5265678 c!911783) b!5265675))

(assert (= (and b!5265678 (not c!911783)) b!5265670))

(assert (= (and b!5265670 c!911782) b!5265674))

(assert (= (and b!5265670 (not c!911782)) b!5265677))

(assert (= (and b!5265677 c!911785) b!5265680))

(assert (= (and b!5265677 (not c!911785)) b!5265676))

(assert (= (or b!5265674 b!5265680) bm!373764))

(assert (= (or b!5265674 b!5265680) bm!373766))

(assert (= (or b!5265675 bm!373764) bm!373765))

(assert (= (or b!5265675 bm!373766) bm!373762))

(assert (= (or b!5265679 bm!373762) bm!373763))

(assert (= (or b!5265679 b!5265675) bm!373761))

(declare-fun m!6305926 () Bool)

(assert (=> bm!373761 m!6305926))

(declare-fun m!6305928 () Bool)

(assert (=> b!5265671 m!6305928))

(declare-fun m!6305930 () Bool)

(assert (=> b!5265673 m!6305930))

(declare-fun m!6305932 () Bool)

(assert (=> bm!373763 m!6305932))

(declare-fun m!6305934 () Bool)

(assert (=> bm!373765 m!6305934))

(assert (=> bm!373608 d!1694725))

(assert (=> bs!1220374 d!1694481))

(declare-fun d!1694727 () Bool)

(assert (=> d!1694727 (= (nullable!5052 (reg!15212 r!7292)) (nullableFct!1438 (reg!15212 r!7292)))))

(declare-fun bs!1220447 () Bool)

(assert (= bs!1220447 d!1694727))

(declare-fun m!6305936 () Bool)

(assert (=> bs!1220447 m!6305936))

(assert (=> b!5265235 d!1694727))

(declare-fun d!1694729 () Bool)

(assert (=> d!1694729 true))

(declare-fun setRes!33680 () Bool)

(assert (=> d!1694729 setRes!33680))

(declare-fun condSetEmpty!33680 () Bool)

(declare-fun res!2234115 () (InoxSet Context!8534))

(assert (=> d!1694729 (= condSetEmpty!33680 (= res!2234115 ((as const (Array Context!8534 Bool)) false)))))

(assert (=> d!1694729 (= (choose!39282 z!1189 lambda!265475) res!2234115)))

(declare-fun setIsEmpty!33680 () Bool)

(assert (=> setIsEmpty!33680 setRes!33680))

(declare-fun tp!1471842 () Bool)

(declare-fun e!3275187 () Bool)

(declare-fun setElem!33680 () Context!8534)

(declare-fun setNonEmpty!33680 () Bool)

(assert (=> setNonEmpty!33680 (= setRes!33680 (and tp!1471842 (inv!80454 setElem!33680) e!3275187))))

(declare-fun setRest!33680 () (InoxSet Context!8534))

(assert (=> setNonEmpty!33680 (= res!2234115 ((_ map or) (store ((as const (Array Context!8534 Bool)) false) setElem!33680 true) setRest!33680))))

(declare-fun b!5265687 () Bool)

(declare-fun tp!1471843 () Bool)

(assert (=> b!5265687 (= e!3275187 tp!1471843)))

(assert (= (and d!1694729 condSetEmpty!33680) setIsEmpty!33680))

(assert (= (and d!1694729 (not condSetEmpty!33680)) setNonEmpty!33680))

(assert (= setNonEmpty!33680 b!5265687))

(declare-fun m!6305938 () Bool)

(assert (=> setNonEmpty!33680 m!6305938))

(assert (=> d!1694479 d!1694729))

(declare-fun d!1694731 () Bool)

(assert (=> d!1694731 true))

(assert (=> d!1694731 true))

(declare-fun res!2234118 () Bool)

(assert (=> d!1694731 (= (choose!39289 lambda!265474) res!2234118)))

(assert (=> d!1694585 d!1694731))

(declare-fun d!1694733 () Bool)

(assert (=> d!1694733 (= (nullable!5052 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (nullableFct!1438 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))))))

(declare-fun bs!1220448 () Bool)

(assert (= bs!1220448 d!1694733))

(declare-fun m!6305940 () Bool)

(assert (=> bs!1220448 m!6305940))

(assert (=> b!5264840 d!1694733))

(declare-fun d!1694735 () Bool)

(assert (=> d!1694735 (= (isEmpty!32772 (unfocusZipperList!325 zl!343)) ((_ is Nil!60824) (unfocusZipperList!325 zl!343)))))

(assert (=> b!5265275 d!1694735))

(declare-fun d!1694737 () Bool)

(declare-fun lambda!265556 () Int)

(declare-fun exists!1988 ((InoxSet Context!8534) Int) Bool)

(assert (=> d!1694737 (= (nullableZipper!1286 lt!2155737) (exists!1988 lt!2155737 lambda!265556))))

(declare-fun bs!1220455 () Bool)

(assert (= bs!1220455 d!1694737))

(declare-fun m!6305942 () Bool)

(assert (=> bs!1220455 m!6305942))

(assert (=> b!5265242 d!1694737))

(declare-fun d!1694739 () Bool)

(declare-fun c!911788 () Bool)

(assert (=> d!1694739 (= c!911788 (isEmpty!32775 (tail!10387 (t!374139 s!2326))))))

(declare-fun e!3275188 () Bool)

(assert (=> d!1694739 (= (matchZipper!1127 (derivationStepZipper!1130 lt!2155736 (head!11290 (t!374139 s!2326))) (tail!10387 (t!374139 s!2326))) e!3275188)))

(declare-fun b!5265688 () Bool)

(assert (=> b!5265688 (= e!3275188 (nullableZipper!1286 (derivationStepZipper!1130 lt!2155736 (head!11290 (t!374139 s!2326)))))))

(declare-fun b!5265689 () Bool)

(assert (=> b!5265689 (= e!3275188 (matchZipper!1127 (derivationStepZipper!1130 (derivationStepZipper!1130 lt!2155736 (head!11290 (t!374139 s!2326))) (head!11290 (tail!10387 (t!374139 s!2326)))) (tail!10387 (tail!10387 (t!374139 s!2326)))))))

(assert (= (and d!1694739 c!911788) b!5265688))

(assert (= (and d!1694739 (not c!911788)) b!5265689))

(assert (=> d!1694739 m!6305436))

(assert (=> d!1694739 m!6305904))

(assert (=> b!5265688 m!6305434))

(declare-fun m!6305944 () Bool)

(assert (=> b!5265688 m!6305944))

(assert (=> b!5265689 m!6305436))

(assert (=> b!5265689 m!6305908))

(assert (=> b!5265689 m!6305434))

(assert (=> b!5265689 m!6305908))

(declare-fun m!6305946 () Bool)

(assert (=> b!5265689 m!6305946))

(assert (=> b!5265689 m!6305436))

(assert (=> b!5265689 m!6305912))

(assert (=> b!5265689 m!6305946))

(assert (=> b!5265689 m!6305912))

(declare-fun m!6305948 () Bool)

(assert (=> b!5265689 m!6305948))

(assert (=> b!5264924 d!1694739))

(declare-fun bs!1220459 () Bool)

(declare-fun d!1694741 () Bool)

(assert (= bs!1220459 (and d!1694741 b!5264610)))

(declare-fun lambda!265557 () Int)

(assert (=> bs!1220459 (= (= (head!11290 (t!374139 s!2326)) (h!67274 s!2326)) (= lambda!265557 lambda!265475))))

(declare-fun bs!1220461 () Bool)

(assert (= bs!1220461 (and d!1694741 d!1694715)))

(assert (=> bs!1220461 (= lambda!265557 lambda!265550)))

(assert (=> d!1694741 true))

(assert (=> d!1694741 (= (derivationStepZipper!1130 lt!2155736 (head!11290 (t!374139 s!2326))) (flatMap!610 lt!2155736 lambda!265557))))

(declare-fun bs!1220462 () Bool)

(assert (= bs!1220462 d!1694741))

(declare-fun m!6305952 () Bool)

(assert (=> bs!1220462 m!6305952))

(assert (=> b!5264924 d!1694741))

(assert (=> b!5264924 d!1694717))

(assert (=> b!5264924 d!1694723))

(declare-fun d!1694745 () Bool)

(assert (=> d!1694745 (= ($colon$colon!1336 (exprs!4767 (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343)))))) (ite (or c!911567 c!911566) (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 r!7292)))) (Cons!60824 (ite (or c!911567 c!911566) (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 r!7292))) (exprs!4767 (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))))))))

(assert (=> bm!373610 d!1694745))

(declare-fun d!1694747 () Bool)

(assert (=> d!1694747 (= (Exists!2064 lambda!265527) (choose!39289 lambda!265527))))

(declare-fun bs!1220463 () Bool)

(assert (= bs!1220463 d!1694747))

(declare-fun m!6305954 () Bool)

(assert (=> bs!1220463 m!6305954))

(assert (=> d!1694579 d!1694747))

(declare-fun d!1694749 () Bool)

(assert (=> d!1694749 (= (Exists!2064 lambda!265528) (choose!39289 lambda!265528))))

(declare-fun bs!1220464 () Bool)

(assert (= bs!1220464 d!1694749))

(declare-fun m!6305956 () Bool)

(assert (=> bs!1220464 m!6305956))

(assert (=> d!1694579 d!1694749))

(declare-fun bs!1220476 () Bool)

(declare-fun d!1694751 () Bool)

(assert (= bs!1220476 (and d!1694751 b!5265010)))

(declare-fun lambda!265564 () Int)

(assert (=> bs!1220476 (not (= lambda!265564 lambda!265511))))

(declare-fun bs!1220477 () Bool)

(assert (= bs!1220477 (and d!1694751 d!1694579)))

(assert (=> bs!1220477 (not (= lambda!265564 lambda!265528))))

(declare-fun bs!1220478 () Bool)

(assert (= bs!1220478 (and d!1694751 b!5265627)))

(assert (=> bs!1220478 (not (= lambda!265564 lambda!265546))))

(declare-fun bs!1220479 () Bool)

(assert (= bs!1220479 (and d!1694751 b!5265013)))

(assert (=> bs!1220479 (not (= lambda!265564 lambda!265512))))

(assert (=> bs!1220477 (= lambda!265564 lambda!265527)))

(declare-fun bs!1220481 () Bool)

(assert (= bs!1220481 (and d!1694751 d!1694583)))

(assert (=> bs!1220481 (= lambda!265564 lambda!265531)))

(declare-fun bs!1220483 () Bool)

(assert (= bs!1220483 (and d!1694751 b!5264604)))

(assert (=> bs!1220483 (= lambda!265564 lambda!265473)))

(assert (=> bs!1220483 (not (= lambda!265564 lambda!265474))))

(declare-fun bs!1220484 () Bool)

(assert (= bs!1220484 (and d!1694751 b!5265630)))

(assert (=> bs!1220484 (not (= lambda!265564 lambda!265547))))

(assert (=> d!1694751 true))

(assert (=> d!1694751 true))

(assert (=> d!1694751 true))

(declare-fun lambda!265565 () Int)

(assert (=> bs!1220476 (not (= lambda!265565 lambda!265511))))

(assert (=> bs!1220477 (= lambda!265565 lambda!265528)))

(assert (=> bs!1220478 (not (= lambda!265565 lambda!265546))))

(assert (=> bs!1220479 (= lambda!265565 lambda!265512)))

(assert (=> bs!1220477 (not (= lambda!265565 lambda!265527))))

(declare-fun bs!1220485 () Bool)

(assert (= bs!1220485 d!1694751))

(assert (=> bs!1220485 (not (= lambda!265565 lambda!265564))))

(assert (=> bs!1220481 (not (= lambda!265565 lambda!265531))))

(assert (=> bs!1220483 (not (= lambda!265565 lambda!265473))))

(assert (=> bs!1220483 (= lambda!265565 lambda!265474)))

(assert (=> bs!1220484 (= (and (= (regOne!30278 r!7292) (regOne!30278 (regOne!30279 r!7292))) (= (regTwo!30278 r!7292) (regTwo!30278 (regOne!30279 r!7292)))) (= lambda!265565 lambda!265547))))

(assert (=> d!1694751 true))

(assert (=> d!1694751 true))

(assert (=> d!1694751 true))

(assert (=> d!1694751 (= (Exists!2064 lambda!265564) (Exists!2064 lambda!265565))))

(assert (=> d!1694751 true))

(declare-fun _$90!1075 () Unit!153050)

(assert (=> d!1694751 (= (choose!39290 (regOne!30278 r!7292) (regTwo!30278 r!7292) s!2326) _$90!1075)))

(declare-fun m!6306016 () Bool)

(assert (=> bs!1220485 m!6306016))

(declare-fun m!6306018 () Bool)

(assert (=> bs!1220485 m!6306018))

(assert (=> d!1694579 d!1694751))

(declare-fun bm!373787 () Bool)

(declare-fun call!373794 () Bool)

(declare-fun c!911810 () Bool)

(assert (=> bm!373787 (= call!373794 (validRegex!6619 (ite c!911810 (regOne!30279 (regOne!30278 r!7292)) (regOne!30278 (regOne!30278 r!7292)))))))

(declare-fun c!911811 () Bool)

(declare-fun call!373793 () Bool)

(declare-fun bm!373788 () Bool)

(assert (=> bm!373788 (= call!373793 (validRegex!6619 (ite c!911811 (reg!15212 (regOne!30278 r!7292)) (ite c!911810 (regTwo!30279 (regOne!30278 r!7292)) (regTwo!30278 (regOne!30278 r!7292))))))))

(declare-fun b!5265752 () Bool)

(declare-fun e!3275225 () Bool)

(declare-fun e!3275226 () Bool)

(assert (=> b!5265752 (= e!3275225 e!3275226)))

(assert (=> b!5265752 (= c!911810 ((_ is Union!14883) (regOne!30278 r!7292)))))

(declare-fun b!5265753 () Bool)

(declare-fun e!3275224 () Bool)

(assert (=> b!5265753 (= e!3275224 call!373793)))

(declare-fun d!1694773 () Bool)

(declare-fun res!2234142 () Bool)

(declare-fun e!3275223 () Bool)

(assert (=> d!1694773 (=> res!2234142 e!3275223)))

(assert (=> d!1694773 (= res!2234142 ((_ is ElementMatch!14883) (regOne!30278 r!7292)))))

(assert (=> d!1694773 (= (validRegex!6619 (regOne!30278 r!7292)) e!3275223)))

(declare-fun b!5265754 () Bool)

(assert (=> b!5265754 (= e!3275223 e!3275225)))

(assert (=> b!5265754 (= c!911811 ((_ is Star!14883) (regOne!30278 r!7292)))))

(declare-fun b!5265755 () Bool)

(declare-fun e!3275222 () Bool)

(declare-fun call!373792 () Bool)

(assert (=> b!5265755 (= e!3275222 call!373792)))

(declare-fun b!5265756 () Bool)

(declare-fun e!3275227 () Bool)

(assert (=> b!5265756 (= e!3275227 call!373792)))

(declare-fun b!5265757 () Bool)

(assert (=> b!5265757 (= e!3275225 e!3275224)))

(declare-fun res!2234143 () Bool)

(assert (=> b!5265757 (= res!2234143 (not (nullable!5052 (reg!15212 (regOne!30278 r!7292)))))))

(assert (=> b!5265757 (=> (not res!2234143) (not e!3275224))))

(declare-fun b!5265758 () Bool)

(declare-fun res!2234139 () Bool)

(assert (=> b!5265758 (=> (not res!2234139) (not e!3275227))))

(assert (=> b!5265758 (= res!2234139 call!373794)))

(assert (=> b!5265758 (= e!3275226 e!3275227)))

(declare-fun b!5265759 () Bool)

(declare-fun res!2234140 () Bool)

(declare-fun e!3275228 () Bool)

(assert (=> b!5265759 (=> res!2234140 e!3275228)))

(assert (=> b!5265759 (= res!2234140 (not ((_ is Concat!23728) (regOne!30278 r!7292))))))

(assert (=> b!5265759 (= e!3275226 e!3275228)))

(declare-fun bm!373789 () Bool)

(assert (=> bm!373789 (= call!373792 call!373793)))

(declare-fun b!5265760 () Bool)

(assert (=> b!5265760 (= e!3275228 e!3275222)))

(declare-fun res!2234141 () Bool)

(assert (=> b!5265760 (=> (not res!2234141) (not e!3275222))))

(assert (=> b!5265760 (= res!2234141 call!373794)))

(assert (= (and d!1694773 (not res!2234142)) b!5265754))

(assert (= (and b!5265754 c!911811) b!5265757))

(assert (= (and b!5265754 (not c!911811)) b!5265752))

(assert (= (and b!5265757 res!2234143) b!5265753))

(assert (= (and b!5265752 c!911810) b!5265758))

(assert (= (and b!5265752 (not c!911810)) b!5265759))

(assert (= (and b!5265758 res!2234139) b!5265756))

(assert (= (and b!5265759 (not res!2234140)) b!5265760))

(assert (= (and b!5265760 res!2234141) b!5265755))

(assert (= (or b!5265756 b!5265755) bm!373789))

(assert (= (or b!5265758 b!5265760) bm!373787))

(assert (= (or b!5265753 bm!373789) bm!373788))

(declare-fun m!6306020 () Bool)

(assert (=> bm!373787 m!6306020))

(declare-fun m!6306022 () Bool)

(assert (=> bm!373788 m!6306022))

(declare-fun m!6306024 () Bool)

(assert (=> b!5265757 m!6306024))

(assert (=> d!1694579 d!1694773))

(declare-fun d!1694775 () Bool)

(assert (=> d!1694775 (= (isEmpty!32775 s!2326) ((_ is Nil!60826) s!2326))))

(assert (=> bm!373669 d!1694775))

(assert (=> d!1694563 d!1694567))

(assert (=> d!1694563 d!1694565))

(declare-fun d!1694777 () Bool)

(declare-fun e!3275235 () Bool)

(assert (=> d!1694777 (= (matchZipper!1127 ((_ map or) lt!2155737 lt!2155736) (t!374139 s!2326)) e!3275235)))

(declare-fun res!2234154 () Bool)

(assert (=> d!1694777 (=> res!2234154 e!3275235)))

(assert (=> d!1694777 (= res!2234154 (matchZipper!1127 lt!2155737 (t!374139 s!2326)))))

(assert (=> d!1694777 true))

(declare-fun _$48!914 () Unit!153050)

(assert (=> d!1694777 (= (choose!39288 lt!2155737 lt!2155736 (t!374139 s!2326)) _$48!914)))

(declare-fun b!5265771 () Bool)

(assert (=> b!5265771 (= e!3275235 (matchZipper!1127 lt!2155736 (t!374139 s!2326)))))

(assert (= (and d!1694777 (not res!2234154)) b!5265771))

(assert (=> d!1694777 m!6305236))

(assert (=> d!1694777 m!6305234))

(assert (=> b!5265771 m!6305210))

(assert (=> d!1694563 d!1694777))

(declare-fun call!373797 () Bool)

(declare-fun bm!373790 () Bool)

(declare-fun c!911812 () Bool)

(assert (=> bm!373790 (= call!373797 (validRegex!6619 (ite c!911812 (regOne!30279 (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292)))))) (regOne!30278 (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292)))))))))))

(declare-fun c!911813 () Bool)

(declare-fun call!373796 () Bool)

(declare-fun bm!373791 () Bool)

(assert (=> bm!373791 (= call!373796 (validRegex!6619 (ite c!911813 (reg!15212 (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292)))))) (ite c!911812 (regTwo!30279 (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292)))))) (regTwo!30278 (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))))))))))))

(declare-fun b!5265772 () Bool)

(declare-fun e!3275239 () Bool)

(declare-fun e!3275240 () Bool)

(assert (=> b!5265772 (= e!3275239 e!3275240)))

(assert (=> b!5265772 (= c!911812 ((_ is Union!14883) (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292)))))))))

(declare-fun b!5265773 () Bool)

(declare-fun e!3275238 () Bool)

(assert (=> b!5265773 (= e!3275238 call!373796)))

(declare-fun d!1694779 () Bool)

(declare-fun res!2234158 () Bool)

(declare-fun e!3275237 () Bool)

(assert (=> d!1694779 (=> res!2234158 e!3275237)))

(assert (=> d!1694779 (= res!2234158 ((_ is ElementMatch!14883) (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292)))))))))

(assert (=> d!1694779 (= (validRegex!6619 (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292)))))) e!3275237)))

(declare-fun b!5265774 () Bool)

(assert (=> b!5265774 (= e!3275237 e!3275239)))

(assert (=> b!5265774 (= c!911813 ((_ is Star!14883) (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292)))))))))

(declare-fun b!5265775 () Bool)

(declare-fun e!3275236 () Bool)

(declare-fun call!373795 () Bool)

(assert (=> b!5265775 (= e!3275236 call!373795)))

(declare-fun b!5265776 () Bool)

(declare-fun e!3275241 () Bool)

(assert (=> b!5265776 (= e!3275241 call!373795)))

(declare-fun b!5265777 () Bool)

(assert (=> b!5265777 (= e!3275239 e!3275238)))

(declare-fun res!2234159 () Bool)

(assert (=> b!5265777 (= res!2234159 (not (nullable!5052 (reg!15212 (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292)))))))))))

(assert (=> b!5265777 (=> (not res!2234159) (not e!3275238))))

(declare-fun b!5265778 () Bool)

(declare-fun res!2234155 () Bool)

(assert (=> b!5265778 (=> (not res!2234155) (not e!3275241))))

(assert (=> b!5265778 (= res!2234155 call!373797)))

(assert (=> b!5265778 (= e!3275240 e!3275241)))

(declare-fun b!5265779 () Bool)

(declare-fun res!2234156 () Bool)

(declare-fun e!3275242 () Bool)

(assert (=> b!5265779 (=> res!2234156 e!3275242)))

(assert (=> b!5265779 (= res!2234156 (not ((_ is Concat!23728) (ite c!911664 (reg!15212 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911663 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))))))))))

(assert (=> b!5265779 (= e!3275240 e!3275242)))

(declare-fun bm!373792 () Bool)

(assert (=> bm!373792 (= call!373795 call!373796)))

(declare-fun b!5265780 () Bool)

(assert (=> b!5265780 (= e!3275242 e!3275236)))

(declare-fun res!2234157 () Bool)

(assert (=> b!5265780 (=> (not res!2234157) (not e!3275236))))

(assert (=> b!5265780 (= res!2234157 call!373797)))

(assert (= (and d!1694779 (not res!2234158)) b!5265774))

(assert (= (and b!5265774 c!911813) b!5265777))

(assert (= (and b!5265774 (not c!911813)) b!5265772))

(assert (= (and b!5265777 res!2234159) b!5265773))

(assert (= (and b!5265772 c!911812) b!5265778))

(assert (= (and b!5265772 (not c!911812)) b!5265779))

(assert (= (and b!5265778 res!2234155) b!5265776))

(assert (= (and b!5265779 (not res!2234156)) b!5265780))

(assert (= (and b!5265780 res!2234157) b!5265775))

(assert (= (or b!5265776 b!5265775) bm!373792))

(assert (= (or b!5265778 b!5265780) bm!373790))

(assert (= (or b!5265773 bm!373792) bm!373791))

(declare-fun m!6306026 () Bool)

(assert (=> bm!373790 m!6306026))

(declare-fun m!6306028 () Bool)

(assert (=> bm!373791 m!6306028))

(declare-fun m!6306030 () Bool)

(assert (=> b!5265777 m!6306030))

(assert (=> bm!373684 d!1694779))

(declare-fun d!1694781 () Bool)

(assert (=> d!1694781 (= (isUnion!261 lt!2155804) ((_ is Union!14883) lt!2155804))))

(assert (=> b!5265280 d!1694781))

(declare-fun d!1694783 () Bool)

(assert (=> d!1694783 (= (isEmpty!32772 (tail!10388 (exprs!4767 (h!67273 zl!343)))) ((_ is Nil!60824) (tail!10388 (exprs!4767 (h!67273 zl!343)))))))

(assert (=> b!5265205 d!1694783))

(declare-fun d!1694785 () Bool)

(assert (=> d!1694785 (= (tail!10388 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))

(assert (=> b!5265205 d!1694785))

(declare-fun bs!1220491 () Bool)

(declare-fun d!1694787 () Bool)

(assert (= bs!1220491 (and d!1694787 d!1694573)))

(declare-fun lambda!265571 () Int)

(assert (=> bs!1220491 (= lambda!265571 lambda!265522)))

(declare-fun bs!1220493 () Bool)

(assert (= bs!1220493 (and d!1694787 d!1694561)))

(assert (=> bs!1220493 (= lambda!265571 lambda!265516)))

(declare-fun bs!1220494 () Bool)

(assert (= bs!1220494 (and d!1694787 d!1694511)))

(assert (=> bs!1220494 (= lambda!265571 lambda!265505)))

(declare-fun bs!1220496 () Bool)

(assert (= bs!1220496 (and d!1694787 d!1694571)))

(assert (=> bs!1220496 (= lambda!265571 lambda!265519)))

(declare-fun bs!1220497 () Bool)

(assert (= bs!1220497 (and d!1694787 d!1694553)))

(assert (=> bs!1220497 (= lambda!265571 lambda!265515)))

(assert (=> d!1694787 (= (inv!80454 setElem!33677) (forall!14295 (exprs!4767 setElem!33677) lambda!265571))))

(declare-fun bs!1220498 () Bool)

(assert (= bs!1220498 d!1694787))

(declare-fun m!6306032 () Bool)

(assert (=> bs!1220498 m!6306032))

(assert (=> setNonEmpty!33677 d!1694787))

(declare-fun d!1694789 () Bool)

(declare-fun c!911816 () Bool)

(assert (=> d!1694789 (= c!911816 ((_ is Nil!60825) lt!2155779))))

(declare-fun e!3275245 () (InoxSet Context!8534))

(assert (=> d!1694789 (= (content!10814 lt!2155779) e!3275245)))

(declare-fun b!5265785 () Bool)

(assert (=> b!5265785 (= e!3275245 ((as const (Array Context!8534 Bool)) false))))

(declare-fun b!5265786 () Bool)

(assert (=> b!5265786 (= e!3275245 ((_ map or) (store ((as const (Array Context!8534 Bool)) false) (h!67273 lt!2155779) true) (content!10814 (t!374138 lt!2155779))))))

(assert (= (and d!1694789 c!911816) b!5265785))

(assert (= (and d!1694789 (not c!911816)) b!5265786))

(declare-fun m!6306034 () Bool)

(assert (=> b!5265786 m!6306034))

(declare-fun m!6306036 () Bool)

(assert (=> b!5265786 m!6306036))

(assert (=> b!5264888 d!1694789))

(declare-fun call!373803 () (InoxSet Context!8534))

(declare-fun call!373801 () List!60948)

(declare-fun bm!373793 () Bool)

(declare-fun c!911820 () Bool)

(assert (=> bm!373793 (= call!373803 (derivationStepZipperDown!331 (ite c!911820 (regOne!30279 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) (regOne!30278 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))))) (ite c!911820 (ite c!911573 lt!2155735 (Context!8535 call!373620)) (Context!8535 call!373801)) (h!67274 s!2326)))))

(declare-fun bm!373794 () Bool)

(declare-fun call!373799 () (InoxSet Context!8534))

(declare-fun call!373798 () (InoxSet Context!8534))

(assert (=> bm!373794 (= call!373799 call!373798)))

(declare-fun b!5265788 () Bool)

(declare-fun e!3275246 () (InoxSet Context!8534))

(assert (=> b!5265788 (= e!3275246 (store ((as const (Array Context!8534 Bool)) false) (ite c!911573 lt!2155735 (Context!8535 call!373620)) true))))

(declare-fun b!5265789 () Bool)

(declare-fun e!3275247 () (InoxSet Context!8534))

(assert (=> b!5265789 (= e!3275246 e!3275247)))

(assert (=> b!5265789 (= c!911820 ((_ is Union!14883) (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))))))

(declare-fun c!911819 () Bool)

(declare-fun call!373802 () List!60948)

(declare-fun bm!373795 () Bool)

(declare-fun c!911818 () Bool)

(assert (=> bm!373795 (= call!373798 (derivationStepZipperDown!331 (ite c!911820 (regTwo!30279 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) (ite c!911819 (regTwo!30278 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) (ite c!911818 (regOne!30278 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) (reg!15212 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))))))) (ite (or c!911820 c!911819) (ite c!911573 lt!2155735 (Context!8535 call!373620)) (Context!8535 call!373802)) (h!67274 s!2326)))))

(declare-fun b!5265790 () Bool)

(declare-fun e!3275249 () Bool)

(assert (=> b!5265790 (= e!3275249 (nullable!5052 (regOne!30278 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))))))))

(declare-fun b!5265791 () Bool)

(declare-fun e!3275250 () (InoxSet Context!8534))

(declare-fun call!373800 () (InoxSet Context!8534))

(assert (=> b!5265791 (= e!3275250 call!373800)))

(declare-fun b!5265792 () Bool)

(declare-fun e!3275248 () (InoxSet Context!8534))

(assert (=> b!5265792 (= e!3275248 ((_ map or) call!373803 call!373799))))

(declare-fun bm!373796 () Bool)

(assert (=> bm!373796 (= call!373802 call!373801)))

(declare-fun b!5265793 () Bool)

(declare-fun e!3275251 () (InoxSet Context!8534))

(assert (=> b!5265793 (= e!3275251 ((as const (Array Context!8534 Bool)) false))))

(declare-fun d!1694791 () Bool)

(declare-fun c!911817 () Bool)

(assert (=> d!1694791 (= c!911817 (and ((_ is ElementMatch!14883) (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) (= (c!911481 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) (h!67274 s!2326))))))

(assert (=> d!1694791 (= (derivationStepZipperDown!331 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))) (ite c!911573 lt!2155735 (Context!8535 call!373620)) (h!67274 s!2326)) e!3275246)))

(declare-fun b!5265787 () Bool)

(assert (=> b!5265787 (= e!3275248 e!3275250)))

(assert (=> b!5265787 (= c!911818 ((_ is Concat!23728) (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))))))

(declare-fun b!5265794 () Bool)

(declare-fun c!911821 () Bool)

(assert (=> b!5265794 (= c!911821 ((_ is Star!14883) (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))))))

(assert (=> b!5265794 (= e!3275250 e!3275251)))

(declare-fun b!5265795 () Bool)

(assert (=> b!5265795 (= c!911819 e!3275249)))

(declare-fun res!2234160 () Bool)

(assert (=> b!5265795 (=> (not res!2234160) (not e!3275249))))

(assert (=> b!5265795 (= res!2234160 ((_ is Concat!23728) (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))))))

(assert (=> b!5265795 (= e!3275247 e!3275248)))

(declare-fun bm!373797 () Bool)

(assert (=> bm!373797 (= call!373801 ($colon$colon!1336 (exprs!4767 (ite c!911573 lt!2155735 (Context!8535 call!373620))) (ite (or c!911819 c!911818) (regTwo!30278 (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) (ite c!911573 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))))))))

(declare-fun b!5265796 () Bool)

(assert (=> b!5265796 (= e!3275247 ((_ map or) call!373803 call!373798))))

(declare-fun bm!373798 () Bool)

(assert (=> bm!373798 (= call!373800 call!373799)))

(declare-fun b!5265797 () Bool)

(assert (=> b!5265797 (= e!3275251 call!373800)))

(assert (= (and d!1694791 c!911817) b!5265788))

(assert (= (and d!1694791 (not c!911817)) b!5265789))

(assert (= (and b!5265789 c!911820) b!5265796))

(assert (= (and b!5265789 (not c!911820)) b!5265795))

(assert (= (and b!5265795 res!2234160) b!5265790))

(assert (= (and b!5265795 c!911819) b!5265792))

(assert (= (and b!5265795 (not c!911819)) b!5265787))

(assert (= (and b!5265787 c!911818) b!5265791))

(assert (= (and b!5265787 (not c!911818)) b!5265794))

(assert (= (and b!5265794 c!911821) b!5265797))

(assert (= (and b!5265794 (not c!911821)) b!5265793))

(assert (= (or b!5265791 b!5265797) bm!373796))

(assert (= (or b!5265791 b!5265797) bm!373798))

(assert (= (or b!5265792 bm!373796) bm!373797))

(assert (= (or b!5265792 bm!373798) bm!373794))

(assert (= (or b!5265796 bm!373794) bm!373795))

(assert (= (or b!5265796 b!5265792) bm!373793))

(declare-fun m!6306038 () Bool)

(assert (=> bm!373793 m!6306038))

(declare-fun m!6306040 () Bool)

(assert (=> b!5265788 m!6306040))

(declare-fun m!6306042 () Bool)

(assert (=> b!5265790 m!6306042))

(declare-fun m!6306044 () Bool)

(assert (=> bm!373795 m!6306044))

(declare-fun m!6306046 () Bool)

(assert (=> bm!373797 m!6306046))

(assert (=> bm!373612 d!1694791))

(declare-fun call!373807 () List!60948)

(declare-fun call!373809 () (InoxSet Context!8534))

(declare-fun bm!373799 () Bool)

(declare-fun c!911825 () Bool)

(assert (=> bm!373799 (= call!373809 (derivationStepZipperDown!331 (ite c!911825 (regOne!30279 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (regOne!30278 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))))) (ite c!911825 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (Context!8535 call!373807)) (h!67274 s!2326)))))

(declare-fun bm!373800 () Bool)

(declare-fun call!373805 () (InoxSet Context!8534))

(declare-fun call!373804 () (InoxSet Context!8534))

(assert (=> bm!373800 (= call!373805 call!373804)))

(declare-fun b!5265799 () Bool)

(declare-fun e!3275252 () (InoxSet Context!8534))

(assert (=> b!5265799 (= e!3275252 (store ((as const (Array Context!8534 Bool)) false) (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) true))))

(declare-fun b!5265800 () Bool)

(declare-fun e!3275253 () (InoxSet Context!8534))

(assert (=> b!5265800 (= e!3275252 e!3275253)))

(assert (=> b!5265800 (= c!911825 ((_ is Union!14883) (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))))))

(declare-fun c!911823 () Bool)

(declare-fun c!911824 () Bool)

(declare-fun bm!373801 () Bool)

(declare-fun call!373808 () List!60948)

(assert (=> bm!373801 (= call!373804 (derivationStepZipperDown!331 (ite c!911825 (regTwo!30279 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (ite c!911824 (regTwo!30278 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (ite c!911823 (regOne!30278 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (reg!15212 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))))))) (ite (or c!911825 c!911824) (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (Context!8535 call!373808)) (h!67274 s!2326)))))

(declare-fun b!5265801 () Bool)

(declare-fun e!3275255 () Bool)

(assert (=> b!5265801 (= e!3275255 (nullable!5052 (regOne!30278 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))))))))

(declare-fun b!5265802 () Bool)

(declare-fun e!3275256 () (InoxSet Context!8534))

(declare-fun call!373806 () (InoxSet Context!8534))

(assert (=> b!5265802 (= e!3275256 call!373806)))

(declare-fun b!5265803 () Bool)

(declare-fun e!3275254 () (InoxSet Context!8534))

(assert (=> b!5265803 (= e!3275254 ((_ map or) call!373809 call!373805))))

(declare-fun bm!373802 () Bool)

(assert (=> bm!373802 (= call!373808 call!373807)))

(declare-fun b!5265804 () Bool)

(declare-fun e!3275257 () (InoxSet Context!8534))

(assert (=> b!5265804 (= e!3275257 ((as const (Array Context!8534 Bool)) false))))

(declare-fun d!1694793 () Bool)

(declare-fun c!911822 () Bool)

(assert (=> d!1694793 (= c!911822 (and ((_ is ElementMatch!14883) (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (= (c!911481 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (h!67274 s!2326))))))

(assert (=> d!1694793 (= (derivationStepZipperDown!331 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))) (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (h!67274 s!2326)) e!3275252)))

(declare-fun b!5265798 () Bool)

(assert (=> b!5265798 (= e!3275254 e!3275256)))

(assert (=> b!5265798 (= c!911823 ((_ is Concat!23728) (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))))))

(declare-fun b!5265805 () Bool)

(declare-fun c!911826 () Bool)

(assert (=> b!5265805 (= c!911826 ((_ is Star!14883) (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))))))

(assert (=> b!5265805 (= e!3275256 e!3275257)))

(declare-fun b!5265806 () Bool)

(assert (=> b!5265806 (= c!911824 e!3275255)))

(declare-fun res!2234161 () Bool)

(assert (=> b!5265806 (=> (not res!2234161) (not e!3275255))))

(assert (=> b!5265806 (= res!2234161 ((_ is Concat!23728) (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))))))

(assert (=> b!5265806 (= e!3275253 e!3275254)))

(declare-fun bm!373803 () Bool)

(assert (=> bm!373803 (= call!373807 ($colon$colon!1336 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))))) (ite (or c!911824 c!911823) (regTwo!30278 (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (h!67272 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))))))))

(declare-fun b!5265807 () Bool)

(assert (=> b!5265807 (= e!3275253 ((_ map or) call!373809 call!373804))))

(declare-fun bm!373804 () Bool)

(assert (=> bm!373804 (= call!373806 call!373805)))

(declare-fun b!5265808 () Bool)

(assert (=> b!5265808 (= e!3275257 call!373806)))

(assert (= (and d!1694793 c!911822) b!5265799))

(assert (= (and d!1694793 (not c!911822)) b!5265800))

(assert (= (and b!5265800 c!911825) b!5265807))

(assert (= (and b!5265800 (not c!911825)) b!5265806))

(assert (= (and b!5265806 res!2234161) b!5265801))

(assert (= (and b!5265806 c!911824) b!5265803))

(assert (= (and b!5265806 (not c!911824)) b!5265798))

(assert (= (and b!5265798 c!911823) b!5265802))

(assert (= (and b!5265798 (not c!911823)) b!5265805))

(assert (= (and b!5265805 c!911826) b!5265808))

(assert (= (and b!5265805 (not c!911826)) b!5265804))

(assert (= (or b!5265802 b!5265808) bm!373802))

(assert (= (or b!5265802 b!5265808) bm!373804))

(assert (= (or b!5265803 bm!373802) bm!373803))

(assert (= (or b!5265803 bm!373804) bm!373800))

(assert (= (or b!5265807 bm!373800) bm!373801))

(assert (= (or b!5265807 b!5265803) bm!373799))

(declare-fun m!6306056 () Bool)

(assert (=> bm!373799 m!6306056))

(declare-fun m!6306058 () Bool)

(assert (=> b!5265799 m!6306058))

(declare-fun m!6306060 () Bool)

(assert (=> b!5265801 m!6306060))

(declare-fun m!6306062 () Bool)

(assert (=> bm!373801 m!6306062))

(declare-fun m!6306064 () Bool)

(assert (=> bm!373803 m!6306064))

(assert (=> bm!373603 d!1694793))

(declare-fun b!5265843 () Bool)

(declare-fun e!3275278 () List!60950)

(assert (=> b!5265843 (= e!3275278 (Cons!60826 (h!67274 (_1!35385 (get!20913 lt!2155815))) (++!13266 (t!374139 (_1!35385 (get!20913 lt!2155815))) (_2!35385 (get!20913 lt!2155815)))))))

(declare-fun b!5265842 () Bool)

(assert (=> b!5265842 (= e!3275278 (_2!35385 (get!20913 lt!2155815)))))

(declare-fun b!5265845 () Bool)

(declare-fun e!3275279 () Bool)

(declare-fun lt!2155837 () List!60950)

(assert (=> b!5265845 (= e!3275279 (or (not (= (_2!35385 (get!20913 lt!2155815)) Nil!60826)) (= lt!2155837 (_1!35385 (get!20913 lt!2155815)))))))

(declare-fun d!1694803 () Bool)

(assert (=> d!1694803 e!3275279))

(declare-fun res!2234173 () Bool)

(assert (=> d!1694803 (=> (not res!2234173) (not e!3275279))))

(declare-fun content!10815 (List!60950) (InoxSet C!30036))

(assert (=> d!1694803 (= res!2234173 (= (content!10815 lt!2155837) ((_ map or) (content!10815 (_1!35385 (get!20913 lt!2155815))) (content!10815 (_2!35385 (get!20913 lt!2155815))))))))

(assert (=> d!1694803 (= lt!2155837 e!3275278)))

(declare-fun c!911838 () Bool)

(assert (=> d!1694803 (= c!911838 ((_ is Nil!60826) (_1!35385 (get!20913 lt!2155815))))))

(assert (=> d!1694803 (= (++!13266 (_1!35385 (get!20913 lt!2155815)) (_2!35385 (get!20913 lt!2155815))) lt!2155837)))

(declare-fun b!5265844 () Bool)

(declare-fun res!2234174 () Bool)

(assert (=> b!5265844 (=> (not res!2234174) (not e!3275279))))

(declare-fun size!39743 (List!60950) Int)

(assert (=> b!5265844 (= res!2234174 (= (size!39743 lt!2155837) (+ (size!39743 (_1!35385 (get!20913 lt!2155815))) (size!39743 (_2!35385 (get!20913 lt!2155815))))))))

(assert (= (and d!1694803 c!911838) b!5265842))

(assert (= (and d!1694803 (not c!911838)) b!5265843))

(assert (= (and d!1694803 res!2234173) b!5265844))

(assert (= (and b!5265844 res!2234174) b!5265845))

(declare-fun m!6306104 () Bool)

(assert (=> b!5265843 m!6306104))

(declare-fun m!6306106 () Bool)

(assert (=> d!1694803 m!6306106))

(declare-fun m!6306108 () Bool)

(assert (=> d!1694803 m!6306108))

(declare-fun m!6306110 () Bool)

(assert (=> d!1694803 m!6306110))

(declare-fun m!6306112 () Bool)

(assert (=> b!5265844 m!6306112))

(declare-fun m!6306114 () Bool)

(assert (=> b!5265844 m!6306114))

(declare-fun m!6306116 () Bool)

(assert (=> b!5265844 m!6306116))

(assert (=> b!5265313 d!1694803))

(declare-fun d!1694825 () Bool)

(assert (=> d!1694825 (= (get!20913 lt!2155815) (v!51022 lt!2155815))))

(assert (=> b!5265313 d!1694825))

(declare-fun b!5265846 () Bool)

(declare-fun e!3275281 () Bool)

(assert (=> b!5265846 (= e!3275281 (nullable!5052 (h!67272 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))))))))))

(declare-fun bm!373811 () Bool)

(declare-fun call!373816 () (InoxSet Context!8534))

(assert (=> bm!373811 (= call!373816 (derivationStepZipperDown!331 (h!67272 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))))) (Context!8535 (t!374137 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))))))) (h!67274 s!2326)))))

(declare-fun b!5265847 () Bool)

(declare-fun e!3275280 () (InoxSet Context!8534))

(declare-fun e!3275282 () (InoxSet Context!8534))

(assert (=> b!5265847 (= e!3275280 e!3275282)))

(declare-fun c!911839 () Bool)

(assert (=> b!5265847 (= c!911839 ((_ is Cons!60824) (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))))))))

(declare-fun b!5265848 () Bool)

(assert (=> b!5265848 (= e!3275280 ((_ map or) call!373816 (derivationStepZipperUp!255 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343))))))))))) (h!67274 s!2326))))))

(declare-fun d!1694827 () Bool)

(declare-fun c!911840 () Bool)

(assert (=> d!1694827 (= c!911840 e!3275281)))

(declare-fun res!2234175 () Bool)

(assert (=> d!1694827 (=> (not res!2234175) (not e!3275281))))

(assert (=> d!1694827 (= res!2234175 ((_ is Cons!60824) (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))))))))

(assert (=> d!1694827 (= (derivationStepZipperUp!255 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (Cons!60824 (h!67272 (exprs!4767 (h!67273 zl!343))) (t!374137 (exprs!4767 (h!67273 zl!343)))))))) (h!67274 s!2326)) e!3275280)))

(declare-fun b!5265849 () Bool)

(assert (=> b!5265849 (= e!3275282 call!373816)))

(declare-fun b!5265850 () Bool)

(assert (=> b!5265850 (= e!3275282 ((as const (Array Context!8534 Bool)) false))))

(assert (= (and d!1694827 res!2234175) b!5265846))

(assert (= (and d!1694827 c!911840) b!5265848))

(assert (= (and d!1694827 (not c!911840)) b!5265847))

(assert (= (and b!5265847 c!911839) b!5265849))

(assert (= (and b!5265847 (not c!911839)) b!5265850))

(assert (= (or b!5265848 b!5265849) bm!373811))

(declare-fun m!6306118 () Bool)

(assert (=> b!5265846 m!6306118))

(declare-fun m!6306120 () Bool)

(assert (=> bm!373811 m!6306120))

(declare-fun m!6306122 () Bool)

(assert (=> b!5265848 m!6306122))

(assert (=> b!5264842 d!1694827))

(declare-fun d!1694829 () Bool)

(assert (=> d!1694829 (= (Exists!2064 (ite c!911603 lambda!265511 lambda!265512)) (choose!39289 (ite c!911603 lambda!265511 lambda!265512)))))

(declare-fun bs!1220515 () Bool)

(assert (= bs!1220515 d!1694829))

(declare-fun m!6306124 () Bool)

(assert (=> bs!1220515 m!6306124))

(assert (=> bm!373644 d!1694829))

(declare-fun d!1694831 () Bool)

(assert (=> d!1694831 (= (isEmpty!32772 (tail!10388 (unfocusZipperList!325 zl!343))) ((_ is Nil!60824) (tail!10388 (unfocusZipperList!325 zl!343))))))

(assert (=> b!5265278 d!1694831))

(declare-fun d!1694833 () Bool)

(assert (=> d!1694833 (= (tail!10388 (unfocusZipperList!325 zl!343)) (t!374137 (unfocusZipperList!325 zl!343)))))

(assert (=> b!5265278 d!1694833))

(assert (=> d!1694583 d!1694773))

(assert (=> d!1694583 d!1694581))

(declare-fun bs!1220519 () Bool)

(declare-fun d!1694835 () Bool)

(assert (= bs!1220519 (and d!1694835 b!5265010)))

(declare-fun lambda!265576 () Int)

(assert (=> bs!1220519 (not (= lambda!265576 lambda!265511))))

(declare-fun bs!1220522 () Bool)

(assert (= bs!1220522 (and d!1694835 d!1694751)))

(assert (=> bs!1220522 (not (= lambda!265576 lambda!265565))))

(declare-fun bs!1220524 () Bool)

(assert (= bs!1220524 (and d!1694835 d!1694579)))

(assert (=> bs!1220524 (not (= lambda!265576 lambda!265528))))

(declare-fun bs!1220525 () Bool)

(assert (= bs!1220525 (and d!1694835 b!5265627)))

(assert (=> bs!1220525 (not (= lambda!265576 lambda!265546))))

(declare-fun bs!1220526 () Bool)

(assert (= bs!1220526 (and d!1694835 b!5265013)))

(assert (=> bs!1220526 (not (= lambda!265576 lambda!265512))))

(assert (=> bs!1220524 (= lambda!265576 lambda!265527)))

(assert (=> bs!1220522 (= lambda!265576 lambda!265564)))

(declare-fun bs!1220527 () Bool)

(assert (= bs!1220527 (and d!1694835 d!1694583)))

(assert (=> bs!1220527 (= lambda!265576 lambda!265531)))

(declare-fun bs!1220528 () Bool)

(assert (= bs!1220528 (and d!1694835 b!5264604)))

(assert (=> bs!1220528 (= lambda!265576 lambda!265473)))

(assert (=> bs!1220528 (not (= lambda!265576 lambda!265474))))

(declare-fun bs!1220529 () Bool)

(assert (= bs!1220529 (and d!1694835 b!5265630)))

(assert (=> bs!1220529 (not (= lambda!265576 lambda!265547))))

(assert (=> d!1694835 true))

(assert (=> d!1694835 true))

(assert (=> d!1694835 true))

(assert (=> d!1694835 (= (isDefined!11697 (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) Nil!60826 s!2326 s!2326)) (Exists!2064 lambda!265576))))

(assert (=> d!1694835 true))

(declare-fun _$89!1454 () Unit!153050)

(assert (=> d!1694835 (= (choose!39291 (regOne!30278 r!7292) (regTwo!30278 r!7292) s!2326) _$89!1454)))

(declare-fun bs!1220530 () Bool)

(assert (= bs!1220530 d!1694835))

(assert (=> bs!1220530 m!6305216))

(assert (=> bs!1220530 m!6305216))

(assert (=> bs!1220530 m!6305218))

(declare-fun m!6306182 () Bool)

(assert (=> bs!1220530 m!6306182))

(assert (=> d!1694583 d!1694835))

(assert (=> d!1694583 d!1694575))

(declare-fun d!1694857 () Bool)

(assert (=> d!1694857 (= (Exists!2064 lambda!265531) (choose!39289 lambda!265531))))

(declare-fun bs!1220531 () Bool)

(assert (= bs!1220531 d!1694857))

(declare-fun m!6306196 () Bool)

(assert (=> bs!1220531 m!6306196))

(assert (=> d!1694583 d!1694857))

(declare-fun d!1694861 () Bool)

(assert (=> d!1694861 (= (head!11290 s!2326) (h!67274 s!2326))))

(assert (=> b!5265106 d!1694861))

(declare-fun bs!1220532 () Bool)

(declare-fun d!1694863 () Bool)

(assert (= bs!1220532 (and d!1694863 d!1694787)))

(declare-fun lambda!265578 () Int)

(assert (=> bs!1220532 (= lambda!265578 lambda!265571)))

(declare-fun bs!1220533 () Bool)

(assert (= bs!1220533 (and d!1694863 d!1694573)))

(assert (=> bs!1220533 (= lambda!265578 lambda!265522)))

(declare-fun bs!1220534 () Bool)

(assert (= bs!1220534 (and d!1694863 d!1694561)))

(assert (=> bs!1220534 (= lambda!265578 lambda!265516)))

(declare-fun bs!1220535 () Bool)

(assert (= bs!1220535 (and d!1694863 d!1694511)))

(assert (=> bs!1220535 (= lambda!265578 lambda!265505)))

(declare-fun bs!1220536 () Bool)

(assert (= bs!1220536 (and d!1694863 d!1694571)))

(assert (=> bs!1220536 (= lambda!265578 lambda!265519)))

(declare-fun bs!1220537 () Bool)

(assert (= bs!1220537 (and d!1694863 d!1694553)))

(assert (=> bs!1220537 (= lambda!265578 lambda!265515)))

(declare-fun b!5265913 () Bool)

(declare-fun e!3275331 () Regex!14883)

(assert (=> b!5265913 (= e!3275331 (Concat!23728 (h!67272 (t!374137 (exprs!4767 (h!67273 zl!343)))) (generalisedConcat!552 (t!374137 (t!374137 (exprs!4767 (h!67273 zl!343)))))))))

(declare-fun b!5265914 () Bool)

(declare-fun e!3275327 () Bool)

(declare-fun lt!2155841 () Regex!14883)

(assert (=> b!5265914 (= e!3275327 (isConcat!344 lt!2155841))))

(declare-fun b!5265915 () Bool)

(declare-fun e!3275329 () Bool)

(assert (=> b!5265915 (= e!3275329 e!3275327)))

(declare-fun c!911852 () Bool)

(assert (=> b!5265915 (= c!911852 (isEmpty!32772 (tail!10388 (t!374137 (exprs!4767 (h!67273 zl!343))))))))

(declare-fun b!5265916 () Bool)

(assert (=> b!5265916 (= e!3275329 (isEmptyExpr!821 lt!2155841))))

(declare-fun b!5265917 () Bool)

(assert (=> b!5265917 (= e!3275327 (= lt!2155841 (head!11291 (t!374137 (exprs!4767 (h!67273 zl!343))))))))

(declare-fun b!5265918 () Bool)

(declare-fun e!3275328 () Regex!14883)

(assert (=> b!5265918 (= e!3275328 (h!67272 (t!374137 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5265919 () Bool)

(declare-fun e!3275330 () Bool)

(assert (=> b!5265919 (= e!3275330 (isEmpty!32772 (t!374137 (t!374137 (exprs!4767 (h!67273 zl!343))))))))

(declare-fun b!5265920 () Bool)

(assert (=> b!5265920 (= e!3275331 EmptyExpr!14883)))

(declare-fun b!5265921 () Bool)

(assert (=> b!5265921 (= e!3275328 e!3275331)))

(declare-fun c!911853 () Bool)

(assert (=> b!5265921 (= c!911853 ((_ is Cons!60824) (t!374137 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun e!3275326 () Bool)

(assert (=> d!1694863 e!3275326))

(declare-fun res!2234215 () Bool)

(assert (=> d!1694863 (=> (not res!2234215) (not e!3275326))))

(assert (=> d!1694863 (= res!2234215 (validRegex!6619 lt!2155841))))

(assert (=> d!1694863 (= lt!2155841 e!3275328)))

(declare-fun c!911851 () Bool)

(assert (=> d!1694863 (= c!911851 e!3275330)))

(declare-fun res!2234214 () Bool)

(assert (=> d!1694863 (=> (not res!2234214) (not e!3275330))))

(assert (=> d!1694863 (= res!2234214 ((_ is Cons!60824) (t!374137 (exprs!4767 (h!67273 zl!343)))))))

(assert (=> d!1694863 (forall!14295 (t!374137 (exprs!4767 (h!67273 zl!343))) lambda!265578)))

(assert (=> d!1694863 (= (generalisedConcat!552 (t!374137 (exprs!4767 (h!67273 zl!343)))) lt!2155841)))

(declare-fun b!5265912 () Bool)

(assert (=> b!5265912 (= e!3275326 e!3275329)))

(declare-fun c!911854 () Bool)

(assert (=> b!5265912 (= c!911854 (isEmpty!32772 (t!374137 (exprs!4767 (h!67273 zl!343)))))))

(assert (= (and d!1694863 res!2234214) b!5265919))

(assert (= (and d!1694863 c!911851) b!5265918))

(assert (= (and d!1694863 (not c!911851)) b!5265921))

(assert (= (and b!5265921 c!911853) b!5265913))

(assert (= (and b!5265921 (not c!911853)) b!5265920))

(assert (= (and d!1694863 res!2234215) b!5265912))

(assert (= (and b!5265912 c!911854) b!5265916))

(assert (= (and b!5265912 (not c!911854)) b!5265915))

(assert (= (and b!5265915 c!911852) b!5265917))

(assert (= (and b!5265915 (not c!911852)) b!5265914))

(declare-fun m!6306200 () Bool)

(assert (=> b!5265915 m!6306200))

(assert (=> b!5265915 m!6306200))

(declare-fun m!6306202 () Bool)

(assert (=> b!5265915 m!6306202))

(declare-fun m!6306204 () Bool)

(assert (=> b!5265913 m!6306204))

(declare-fun m!6306206 () Bool)

(assert (=> b!5265916 m!6306206))

(declare-fun m!6306208 () Bool)

(assert (=> d!1694863 m!6306208))

(declare-fun m!6306210 () Bool)

(assert (=> d!1694863 m!6306210))

(declare-fun m!6306212 () Bool)

(assert (=> b!5265914 m!6306212))

(declare-fun m!6306214 () Bool)

(assert (=> b!5265919 m!6306214))

(assert (=> b!5265912 m!6305212))

(declare-fun m!6306216 () Bool)

(assert (=> b!5265917 m!6306216))

(assert (=> b!5265203 d!1694863))

(declare-fun bm!373819 () Bool)

(declare-fun call!373829 () (InoxSet Context!8534))

(declare-fun c!911858 () Bool)

(declare-fun call!373827 () List!60948)

(assert (=> bm!373819 (= call!373829 (derivationStepZipperDown!331 (ite c!911858 (regOne!30279 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))) (regOne!30278 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343))))))))) (ite c!911858 (ite (or c!911544 c!911543) lt!2155735 (Context!8535 call!373604)) (Context!8535 call!373827)) (h!67274 s!2326)))))

(declare-fun bm!373820 () Bool)

(declare-fun call!373825 () (InoxSet Context!8534))

(declare-fun call!373824 () (InoxSet Context!8534))

(assert (=> bm!373820 (= call!373825 call!373824)))

(declare-fun b!5265923 () Bool)

(declare-fun e!3275332 () (InoxSet Context!8534))

(assert (=> b!5265923 (= e!3275332 (store ((as const (Array Context!8534 Bool)) false) (ite (or c!911544 c!911543) lt!2155735 (Context!8535 call!373604)) true))))

(declare-fun b!5265924 () Bool)

(declare-fun e!3275333 () (InoxSet Context!8534))

(assert (=> b!5265924 (= e!3275332 e!3275333)))

(assert (=> b!5265924 (= c!911858 ((_ is Union!14883) (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))))))

(declare-fun c!911856 () Bool)

(declare-fun bm!373821 () Bool)

(declare-fun call!373828 () List!60948)

(declare-fun c!911857 () Bool)

(assert (=> bm!373821 (= call!373824 (derivationStepZipperDown!331 (ite c!911858 (regTwo!30279 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))) (ite c!911857 (regTwo!30278 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))) (ite c!911856 (regOne!30278 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))) (reg!15212 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343))))))))))) (ite (or c!911858 c!911857) (ite (or c!911544 c!911543) lt!2155735 (Context!8535 call!373604)) (Context!8535 call!373828)) (h!67274 s!2326)))))

(declare-fun b!5265925 () Bool)

(declare-fun e!3275335 () Bool)

(assert (=> b!5265925 (= e!3275335 (nullable!5052 (regOne!30278 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343))))))))))))

(declare-fun b!5265926 () Bool)

(declare-fun e!3275336 () (InoxSet Context!8534))

(declare-fun call!373826 () (InoxSet Context!8534))

(assert (=> b!5265926 (= e!3275336 call!373826)))

(declare-fun b!5265927 () Bool)

(declare-fun e!3275334 () (InoxSet Context!8534))

(assert (=> b!5265927 (= e!3275334 ((_ map or) call!373829 call!373825))))

(declare-fun bm!373822 () Bool)

(assert (=> bm!373822 (= call!373828 call!373827)))

(declare-fun b!5265928 () Bool)

(declare-fun e!3275337 () (InoxSet Context!8534))

(assert (=> b!5265928 (= e!3275337 ((as const (Array Context!8534 Bool)) false))))

(declare-fun d!1694865 () Bool)

(declare-fun c!911855 () Bool)

(assert (=> d!1694865 (= c!911855 (and ((_ is ElementMatch!14883) (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))) (= (c!911481 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))) (h!67274 s!2326))))))

(assert (=> d!1694865 (= (derivationStepZipperDown!331 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343))))))) (ite (or c!911544 c!911543) lt!2155735 (Context!8535 call!373604)) (h!67274 s!2326)) e!3275332)))

(declare-fun b!5265922 () Bool)

(assert (=> b!5265922 (= e!3275334 e!3275336)))

(assert (=> b!5265922 (= c!911856 ((_ is Concat!23728) (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))))))

(declare-fun c!911859 () Bool)

(declare-fun b!5265929 () Bool)

(assert (=> b!5265929 (= c!911859 ((_ is Star!14883) (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))))))

(assert (=> b!5265929 (= e!3275336 e!3275337)))

(declare-fun b!5265930 () Bool)

(assert (=> b!5265930 (= c!911857 e!3275335)))

(declare-fun res!2234216 () Bool)

(assert (=> b!5265930 (=> (not res!2234216) (not e!3275335))))

(assert (=> b!5265930 (= res!2234216 ((_ is Concat!23728) (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))))))

(assert (=> b!5265930 (= e!3275333 e!3275334)))

(declare-fun bm!373823 () Bool)

(assert (=> bm!373823 (= call!373827 ($colon$colon!1336 (exprs!4767 (ite (or c!911544 c!911543) lt!2155735 (Context!8535 call!373604))) (ite (or c!911857 c!911856) (regTwo!30278 (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343)))))))) (ite c!911544 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911543 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911542 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343))))))))))))

(declare-fun b!5265931 () Bool)

(assert (=> b!5265931 (= e!3275333 ((_ map or) call!373829 call!373824))))

(declare-fun bm!373824 () Bool)

(assert (=> bm!373824 (= call!373826 call!373825)))

(declare-fun b!5265932 () Bool)

(assert (=> b!5265932 (= e!3275337 call!373826)))

(assert (= (and d!1694865 c!911855) b!5265923))

(assert (= (and d!1694865 (not c!911855)) b!5265924))

(assert (= (and b!5265924 c!911858) b!5265931))

(assert (= (and b!5265924 (not c!911858)) b!5265930))

(assert (= (and b!5265930 res!2234216) b!5265925))

(assert (= (and b!5265930 c!911857) b!5265927))

(assert (= (and b!5265930 (not c!911857)) b!5265922))

(assert (= (and b!5265922 c!911856) b!5265926))

(assert (= (and b!5265922 (not c!911856)) b!5265929))

(assert (= (and b!5265929 c!911859) b!5265932))

(assert (= (and b!5265929 (not c!911859)) b!5265928))

(assert (= (or b!5265926 b!5265932) bm!373822))

(assert (= (or b!5265926 b!5265932) bm!373824))

(assert (= (or b!5265927 bm!373822) bm!373823))

(assert (= (or b!5265927 bm!373824) bm!373820))

(assert (= (or b!5265931 bm!373820) bm!373821))

(assert (= (or b!5265931 b!5265927) bm!373819))

(declare-fun m!6306218 () Bool)

(assert (=> bm!373819 m!6306218))

(declare-fun m!6306220 () Bool)

(assert (=> b!5265923 m!6306220))

(declare-fun m!6306222 () Bool)

(assert (=> b!5265925 m!6306222))

(declare-fun m!6306224 () Bool)

(assert (=> bm!373821 m!6306224))

(declare-fun m!6306226 () Bool)

(assert (=> bm!373823 m!6306226))

(assert (=> bm!373597 d!1694865))

(declare-fun d!1694867 () Bool)

(assert (=> d!1694867 (= (isEmpty!32775 (tail!10387 s!2326)) ((_ is Nil!60826) (tail!10387 s!2326)))))

(assert (=> b!5265112 d!1694867))

(declare-fun d!1694871 () Bool)

(assert (=> d!1694871 (= (tail!10387 s!2326) (t!374139 s!2326))))

(assert (=> b!5265112 d!1694871))

(declare-fun d!1694873 () Bool)

(declare-fun res!2234217 () Bool)

(declare-fun e!3275338 () Bool)

(assert (=> d!1694873 (=> res!2234217 e!3275338)))

(assert (=> d!1694873 (= res!2234217 ((_ is Nil!60824) (exprs!4767 setElem!33671)))))

(assert (=> d!1694873 (= (forall!14295 (exprs!4767 setElem!33671) lambda!265516) e!3275338)))

(declare-fun b!5265933 () Bool)

(declare-fun e!3275339 () Bool)

(assert (=> b!5265933 (= e!3275338 e!3275339)))

(declare-fun res!2234218 () Bool)

(assert (=> b!5265933 (=> (not res!2234218) (not e!3275339))))

(assert (=> b!5265933 (= res!2234218 (dynLambda!24037 lambda!265516 (h!67272 (exprs!4767 setElem!33671))))))

(declare-fun b!5265934 () Bool)

(assert (=> b!5265934 (= e!3275339 (forall!14295 (t!374137 (exprs!4767 setElem!33671)) lambda!265516))))

(assert (= (and d!1694873 (not res!2234217)) b!5265933))

(assert (= (and b!5265933 res!2234218) b!5265934))

(declare-fun b_lambda!203139 () Bool)

(assert (=> (not b_lambda!203139) (not b!5265933)))

(declare-fun m!6306232 () Bool)

(assert (=> b!5265933 m!6306232))

(declare-fun m!6306234 () Bool)

(assert (=> b!5265934 m!6306234))

(assert (=> d!1694561 d!1694873))

(assert (=> b!5265209 d!1694507))

(declare-fun b!5265944 () Bool)

(declare-fun e!3275346 () Bool)

(assert (=> b!5265944 (= e!3275346 (nullable!5052 (h!67272 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 lt!2155735)))))))))

(declare-fun bm!373825 () Bool)

(declare-fun call!373830 () (InoxSet Context!8534))

(assert (=> bm!373825 (= call!373830 (derivationStepZipperDown!331 (h!67272 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 lt!2155735))))) (Context!8535 (t!374137 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 lt!2155735)))))) (h!67274 s!2326)))))

(declare-fun b!5265945 () Bool)

(declare-fun e!3275345 () (InoxSet Context!8534))

(declare-fun e!3275347 () (InoxSet Context!8534))

(assert (=> b!5265945 (= e!3275345 e!3275347)))

(declare-fun c!911862 () Bool)

(assert (=> b!5265945 (= c!911862 ((_ is Cons!60824) (exprs!4767 (Context!8535 (t!374137 (exprs!4767 lt!2155735))))))))

(declare-fun b!5265946 () Bool)

(assert (=> b!5265946 (= e!3275345 ((_ map or) call!373830 (derivationStepZipperUp!255 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 lt!2155735)))))) (h!67274 s!2326))))))

(declare-fun d!1694875 () Bool)

(declare-fun c!911863 () Bool)

(assert (=> d!1694875 (= c!911863 e!3275346)))

(declare-fun res!2234224 () Bool)

(assert (=> d!1694875 (=> (not res!2234224) (not e!3275346))))

(assert (=> d!1694875 (= res!2234224 ((_ is Cons!60824) (exprs!4767 (Context!8535 (t!374137 (exprs!4767 lt!2155735))))))))

(assert (=> d!1694875 (= (derivationStepZipperUp!255 (Context!8535 (t!374137 (exprs!4767 lt!2155735))) (h!67274 s!2326)) e!3275345)))

(declare-fun b!5265947 () Bool)

(assert (=> b!5265947 (= e!3275347 call!373830)))

(declare-fun b!5265948 () Bool)

(assert (=> b!5265948 (= e!3275347 ((as const (Array Context!8534 Bool)) false))))

(assert (= (and d!1694875 res!2234224) b!5265944))

(assert (= (and d!1694875 c!911863) b!5265946))

(assert (= (and d!1694875 (not c!911863)) b!5265945))

(assert (= (and b!5265945 c!911862) b!5265947))

(assert (= (and b!5265945 (not c!911862)) b!5265948))

(assert (= (or b!5265946 b!5265947) bm!373825))

(declare-fun m!6306236 () Bool)

(assert (=> b!5265944 m!6306236))

(declare-fun m!6306238 () Bool)

(assert (=> bm!373825 m!6306238))

(declare-fun m!6306240 () Bool)

(assert (=> b!5265946 m!6306240))

(assert (=> b!5264879 d!1694875))

(assert (=> b!5264845 d!1694485))

(assert (=> d!1694547 d!1694531))

(assert (=> d!1694547 d!1694515))

(declare-fun d!1694877 () Bool)

(assert (=> d!1694877 (= (matchR!7068 r!7292 s!2326) (matchRSpec!1986 r!7292 s!2326))))

(assert (=> d!1694877 true))

(declare-fun _$88!3550 () Unit!153050)

(assert (=> d!1694877 (= (choose!39287 r!7292 s!2326) _$88!3550)))

(declare-fun bs!1220542 () Bool)

(assert (= bs!1220542 d!1694877))

(assert (=> bs!1220542 m!6305174))

(assert (=> bs!1220542 m!6305172))

(assert (=> d!1694547 d!1694877))

(assert (=> d!1694547 d!1694557))

(declare-fun call!373840 () (InoxSet Context!8534))

(declare-fun bm!373830 () Bool)

(declare-fun call!373838 () List!60948)

(declare-fun c!911872 () Bool)

(assert (=> bm!373830 (= call!373840 (derivationStepZipperDown!331 (ite c!911872 (regOne!30279 (h!67272 (exprs!4767 lt!2155735))) (regOne!30278 (h!67272 (exprs!4767 lt!2155735)))) (ite c!911872 (Context!8535 (t!374137 (exprs!4767 lt!2155735))) (Context!8535 call!373838)) (h!67274 s!2326)))))

(declare-fun bm!373831 () Bool)

(declare-fun call!373836 () (InoxSet Context!8534))

(declare-fun call!373835 () (InoxSet Context!8534))

(assert (=> bm!373831 (= call!373836 call!373835)))

(declare-fun b!5265973 () Bool)

(declare-fun e!3275361 () (InoxSet Context!8534))

(assert (=> b!5265973 (= e!3275361 (store ((as const (Array Context!8534 Bool)) false) (Context!8535 (t!374137 (exprs!4767 lt!2155735))) true))))

(declare-fun b!5265974 () Bool)

(declare-fun e!3275363 () (InoxSet Context!8534))

(assert (=> b!5265974 (= e!3275361 e!3275363)))

(assert (=> b!5265974 (= c!911872 ((_ is Union!14883) (h!67272 (exprs!4767 lt!2155735))))))

(declare-fun c!911869 () Bool)

(declare-fun bm!373832 () Bool)

(declare-fun call!373839 () List!60948)

(declare-fun c!911870 () Bool)

(assert (=> bm!373832 (= call!373835 (derivationStepZipperDown!331 (ite c!911872 (regTwo!30279 (h!67272 (exprs!4767 lt!2155735))) (ite c!911870 (regTwo!30278 (h!67272 (exprs!4767 lt!2155735))) (ite c!911869 (regOne!30278 (h!67272 (exprs!4767 lt!2155735))) (reg!15212 (h!67272 (exprs!4767 lt!2155735)))))) (ite (or c!911872 c!911870) (Context!8535 (t!374137 (exprs!4767 lt!2155735))) (Context!8535 call!373839)) (h!67274 s!2326)))))

(declare-fun b!5265975 () Bool)

(declare-fun e!3275365 () Bool)

(assert (=> b!5265975 (= e!3275365 (nullable!5052 (regOne!30278 (h!67272 (exprs!4767 lt!2155735)))))))

(declare-fun b!5265976 () Bool)

(declare-fun e!3275366 () (InoxSet Context!8534))

(declare-fun call!373837 () (InoxSet Context!8534))

(assert (=> b!5265976 (= e!3275366 call!373837)))

(declare-fun b!5265977 () Bool)

(declare-fun e!3275364 () (InoxSet Context!8534))

(assert (=> b!5265977 (= e!3275364 ((_ map or) call!373840 call!373836))))

(declare-fun bm!373833 () Bool)

(assert (=> bm!373833 (= call!373839 call!373838)))

(declare-fun b!5265978 () Bool)

(declare-fun e!3275367 () (InoxSet Context!8534))

(assert (=> b!5265978 (= e!3275367 ((as const (Array Context!8534 Bool)) false))))

(declare-fun d!1694885 () Bool)

(declare-fun c!911868 () Bool)

(assert (=> d!1694885 (= c!911868 (and ((_ is ElementMatch!14883) (h!67272 (exprs!4767 lt!2155735))) (= (c!911481 (h!67272 (exprs!4767 lt!2155735))) (h!67274 s!2326))))))

(assert (=> d!1694885 (= (derivationStepZipperDown!331 (h!67272 (exprs!4767 lt!2155735)) (Context!8535 (t!374137 (exprs!4767 lt!2155735))) (h!67274 s!2326)) e!3275361)))

(declare-fun b!5265970 () Bool)

(assert (=> b!5265970 (= e!3275364 e!3275366)))

(assert (=> b!5265970 (= c!911869 ((_ is Concat!23728) (h!67272 (exprs!4767 lt!2155735))))))

(declare-fun b!5265979 () Bool)

(declare-fun c!911873 () Bool)

(assert (=> b!5265979 (= c!911873 ((_ is Star!14883) (h!67272 (exprs!4767 lt!2155735))))))

(assert (=> b!5265979 (= e!3275366 e!3275367)))

(declare-fun b!5265980 () Bool)

(assert (=> b!5265980 (= c!911870 e!3275365)))

(declare-fun res!2234238 () Bool)

(assert (=> b!5265980 (=> (not res!2234238) (not e!3275365))))

(assert (=> b!5265980 (= res!2234238 ((_ is Concat!23728) (h!67272 (exprs!4767 lt!2155735))))))

(assert (=> b!5265980 (= e!3275363 e!3275364)))

(declare-fun bm!373834 () Bool)

(assert (=> bm!373834 (= call!373838 ($colon$colon!1336 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 lt!2155735)))) (ite (or c!911870 c!911869) (regTwo!30278 (h!67272 (exprs!4767 lt!2155735))) (h!67272 (exprs!4767 lt!2155735)))))))

(declare-fun b!5265981 () Bool)

(assert (=> b!5265981 (= e!3275363 ((_ map or) call!373840 call!373835))))

(declare-fun bm!373835 () Bool)

(assert (=> bm!373835 (= call!373837 call!373836)))

(declare-fun b!5265982 () Bool)

(assert (=> b!5265982 (= e!3275367 call!373837)))

(assert (= (and d!1694885 c!911868) b!5265973))

(assert (= (and d!1694885 (not c!911868)) b!5265974))

(assert (= (and b!5265974 c!911872) b!5265981))

(assert (= (and b!5265974 (not c!911872)) b!5265980))

(assert (= (and b!5265980 res!2234238) b!5265975))

(assert (= (and b!5265980 c!911870) b!5265977))

(assert (= (and b!5265980 (not c!911870)) b!5265970))

(assert (= (and b!5265970 c!911869) b!5265976))

(assert (= (and b!5265970 (not c!911869)) b!5265979))

(assert (= (and b!5265979 c!911873) b!5265982))

(assert (= (and b!5265979 (not c!911873)) b!5265978))

(assert (= (or b!5265976 b!5265982) bm!373833))

(assert (= (or b!5265976 b!5265982) bm!373835))

(assert (= (or b!5265977 bm!373833) bm!373834))

(assert (= (or b!5265977 bm!373835) bm!373831))

(assert (= (or b!5265981 bm!373831) bm!373832))

(assert (= (or b!5265981 b!5265977) bm!373830))

(declare-fun m!6306272 () Bool)

(assert (=> bm!373830 m!6306272))

(declare-fun m!6306274 () Bool)

(assert (=> b!5265973 m!6306274))

(declare-fun m!6306276 () Bool)

(assert (=> b!5265975 m!6306276))

(declare-fun m!6306282 () Bool)

(assert (=> bm!373832 m!6306282))

(declare-fun m!6306286 () Bool)

(assert (=> bm!373834 m!6306286))

(assert (=> bm!373605 d!1694885))

(declare-fun bm!373836 () Bool)

(declare-fun call!373841 () Bool)

(assert (=> bm!373836 (= call!373841 (isEmpty!32775 s!2326))))

(declare-fun b!5265983 () Bool)

(declare-fun e!3275369 () Bool)

(declare-fun e!3275370 () Bool)

(assert (=> b!5265983 (= e!3275369 e!3275370)))

(declare-fun res!2234240 () Bool)

(assert (=> b!5265983 (=> (not res!2234240) (not e!3275370))))

(declare-fun lt!2155849 () Bool)

(assert (=> b!5265983 (= res!2234240 (not lt!2155849))))

(declare-fun b!5265984 () Bool)

(declare-fun e!3275372 () Bool)

(assert (=> b!5265984 (= e!3275370 e!3275372)))

(declare-fun res!2234243 () Bool)

(assert (=> b!5265984 (=> res!2234243 e!3275372)))

(assert (=> b!5265984 (= res!2234243 call!373841)))

(declare-fun b!5265985 () Bool)

(declare-fun res!2234244 () Bool)

(assert (=> b!5265985 (=> res!2234244 e!3275369)))

(declare-fun e!3275371 () Bool)

(assert (=> b!5265985 (= res!2234244 e!3275371)))

(declare-fun res!2234246 () Bool)

(assert (=> b!5265985 (=> (not res!2234246) (not e!3275371))))

(assert (=> b!5265985 (= res!2234246 lt!2155849)))

(declare-fun b!5265986 () Bool)

(declare-fun e!3275373 () Bool)

(declare-fun e!3275368 () Bool)

(assert (=> b!5265986 (= e!3275373 e!3275368)))

(declare-fun c!911874 () Bool)

(assert (=> b!5265986 (= c!911874 ((_ is EmptyLang!14883) (regTwo!30278 r!7292)))))

(declare-fun b!5265987 () Bool)

(assert (=> b!5265987 (= e!3275368 (not lt!2155849))))

(declare-fun b!5265988 () Bool)

(assert (=> b!5265988 (= e!3275372 (not (= (head!11290 s!2326) (c!911481 (regTwo!30278 r!7292)))))))

(declare-fun b!5265989 () Bool)

(assert (=> b!5265989 (= e!3275371 (= (head!11290 s!2326) (c!911481 (regTwo!30278 r!7292))))))

(declare-fun b!5265990 () Bool)

(declare-fun res!2234242 () Bool)

(assert (=> b!5265990 (=> res!2234242 e!3275369)))

(assert (=> b!5265990 (= res!2234242 (not ((_ is ElementMatch!14883) (regTwo!30278 r!7292))))))

(assert (=> b!5265990 (= e!3275368 e!3275369)))

(declare-fun b!5265992 () Bool)

(declare-fun e!3275374 () Bool)

(assert (=> b!5265992 (= e!3275374 (matchR!7068 (derivativeStep!4107 (regTwo!30278 r!7292) (head!11290 s!2326)) (tail!10387 s!2326)))))

(declare-fun b!5265993 () Bool)

(assert (=> b!5265993 (= e!3275373 (= lt!2155849 call!373841))))

(declare-fun b!5265994 () Bool)

(declare-fun res!2234239 () Bool)

(assert (=> b!5265994 (=> (not res!2234239) (not e!3275371))))

(assert (=> b!5265994 (= res!2234239 (isEmpty!32775 (tail!10387 s!2326)))))

(declare-fun b!5265995 () Bool)

(declare-fun res!2234241 () Bool)

(assert (=> b!5265995 (=> res!2234241 e!3275372)))

(assert (=> b!5265995 (= res!2234241 (not (isEmpty!32775 (tail!10387 s!2326))))))

(declare-fun b!5265996 () Bool)

(assert (=> b!5265996 (= e!3275374 (nullable!5052 (regTwo!30278 r!7292)))))

(declare-fun b!5265991 () Bool)

(declare-fun res!2234245 () Bool)

(assert (=> b!5265991 (=> (not res!2234245) (not e!3275371))))

(assert (=> b!5265991 (= res!2234245 (not call!373841))))

(declare-fun d!1694887 () Bool)

(assert (=> d!1694887 e!3275373))

(declare-fun c!911876 () Bool)

(assert (=> d!1694887 (= c!911876 ((_ is EmptyExpr!14883) (regTwo!30278 r!7292)))))

(assert (=> d!1694887 (= lt!2155849 e!3275374)))

(declare-fun c!911875 () Bool)

(assert (=> d!1694887 (= c!911875 (isEmpty!32775 s!2326))))

(assert (=> d!1694887 (validRegex!6619 (regTwo!30278 r!7292))))

(assert (=> d!1694887 (= (matchR!7068 (regTwo!30278 r!7292) s!2326) lt!2155849)))

(assert (= (and d!1694887 c!911875) b!5265996))

(assert (= (and d!1694887 (not c!911875)) b!5265992))

(assert (= (and d!1694887 c!911876) b!5265993))

(assert (= (and d!1694887 (not c!911876)) b!5265986))

(assert (= (and b!5265986 c!911874) b!5265987))

(assert (= (and b!5265986 (not c!911874)) b!5265990))

(assert (= (and b!5265990 (not res!2234242)) b!5265985))

(assert (= (and b!5265985 res!2234246) b!5265991))

(assert (= (and b!5265991 res!2234245) b!5265994))

(assert (= (and b!5265994 res!2234239) b!5265989))

(assert (= (and b!5265985 (not res!2234244)) b!5265983))

(assert (= (and b!5265983 res!2234240) b!5265984))

(assert (= (and b!5265984 (not res!2234243)) b!5265995))

(assert (= (and b!5265995 (not res!2234241)) b!5265988))

(assert (= (or b!5265993 b!5265984 b!5265991) bm!373836))

(assert (=> b!5265994 m!6305516))

(assert (=> b!5265994 m!6305516))

(assert (=> b!5265994 m!6305518))

(assert (=> b!5265988 m!6305520))

(declare-fun m!6306294 () Bool)

(assert (=> b!5265996 m!6306294))

(assert (=> d!1694887 m!6305468))

(declare-fun m!6306296 () Bool)

(assert (=> d!1694887 m!6306296))

(assert (=> bm!373836 m!6305468))

(assert (=> b!5265989 m!6305520))

(assert (=> b!5265992 m!6305520))

(assert (=> b!5265992 m!6305520))

(declare-fun m!6306298 () Bool)

(assert (=> b!5265992 m!6306298))

(assert (=> b!5265992 m!6305516))

(assert (=> b!5265992 m!6306298))

(assert (=> b!5265992 m!6305516))

(declare-fun m!6306300 () Bool)

(assert (=> b!5265992 m!6306300))

(assert (=> b!5265995 m!6305516))

(assert (=> b!5265995 m!6305516))

(assert (=> b!5265995 m!6305518))

(assert (=> b!5265317 d!1694887))

(declare-fun bs!1220543 () Bool)

(declare-fun d!1694891 () Bool)

(assert (= bs!1220543 (and d!1694891 d!1694787)))

(declare-fun lambda!265580 () Int)

(assert (=> bs!1220543 (= lambda!265580 lambda!265571)))

(declare-fun bs!1220544 () Bool)

(assert (= bs!1220544 (and d!1694891 d!1694573)))

(assert (=> bs!1220544 (= lambda!265580 lambda!265522)))

(declare-fun bs!1220545 () Bool)

(assert (= bs!1220545 (and d!1694891 d!1694561)))

(assert (=> bs!1220545 (= lambda!265580 lambda!265516)))

(declare-fun bs!1220546 () Bool)

(assert (= bs!1220546 (and d!1694891 d!1694511)))

(assert (=> bs!1220546 (= lambda!265580 lambda!265505)))

(declare-fun bs!1220547 () Bool)

(assert (= bs!1220547 (and d!1694891 d!1694863)))

(assert (=> bs!1220547 (= lambda!265580 lambda!265578)))

(declare-fun bs!1220548 () Bool)

(assert (= bs!1220548 (and d!1694891 d!1694571)))

(assert (=> bs!1220548 (= lambda!265580 lambda!265519)))

(declare-fun bs!1220549 () Bool)

(assert (= bs!1220549 (and d!1694891 d!1694553)))

(assert (=> bs!1220549 (= lambda!265580 lambda!265515)))

(declare-fun b!5265999 () Bool)

(declare-fun e!3275377 () Bool)

(declare-fun e!3275381 () Bool)

(assert (=> b!5265999 (= e!3275377 e!3275381)))

(declare-fun c!911878 () Bool)

(assert (=> b!5265999 (= c!911878 (isEmpty!32772 (t!374137 (unfocusZipperList!325 zl!343))))))

(declare-fun b!5266000 () Bool)

(declare-fun e!3275378 () Regex!14883)

(assert (=> b!5266000 (= e!3275378 EmptyLang!14883)))

(assert (=> d!1694891 e!3275377))

(declare-fun res!2234250 () Bool)

(assert (=> d!1694891 (=> (not res!2234250) (not e!3275377))))

(declare-fun lt!2155850 () Regex!14883)

(assert (=> d!1694891 (= res!2234250 (validRegex!6619 lt!2155850))))

(declare-fun e!3275382 () Regex!14883)

(assert (=> d!1694891 (= lt!2155850 e!3275382)))

(declare-fun c!911880 () Bool)

(declare-fun e!3275379 () Bool)

(assert (=> d!1694891 (= c!911880 e!3275379)))

(declare-fun res!2234249 () Bool)

(assert (=> d!1694891 (=> (not res!2234249) (not e!3275379))))

(assert (=> d!1694891 (= res!2234249 ((_ is Cons!60824) (t!374137 (unfocusZipperList!325 zl!343))))))

(assert (=> d!1694891 (forall!14295 (t!374137 (unfocusZipperList!325 zl!343)) lambda!265580)))

(assert (=> d!1694891 (= (generalisedUnion!812 (t!374137 (unfocusZipperList!325 zl!343))) lt!2155850)))

(declare-fun b!5266001 () Bool)

(assert (=> b!5266001 (= e!3275381 (isEmptyLang!829 lt!2155850))))

(declare-fun b!5266002 () Bool)

(declare-fun e!3275380 () Bool)

(assert (=> b!5266002 (= e!3275381 e!3275380)))

(declare-fun c!911879 () Bool)

(assert (=> b!5266002 (= c!911879 (isEmpty!32772 (tail!10388 (t!374137 (unfocusZipperList!325 zl!343)))))))

(declare-fun b!5266003 () Bool)

(assert (=> b!5266003 (= e!3275379 (isEmpty!32772 (t!374137 (t!374137 (unfocusZipperList!325 zl!343)))))))

(declare-fun b!5266004 () Bool)

(assert (=> b!5266004 (= e!3275380 (isUnion!261 lt!2155850))))

(declare-fun b!5266005 () Bool)

(assert (=> b!5266005 (= e!3275382 e!3275378)))

(declare-fun c!911877 () Bool)

(assert (=> b!5266005 (= c!911877 ((_ is Cons!60824) (t!374137 (unfocusZipperList!325 zl!343))))))

(declare-fun b!5266006 () Bool)

(assert (=> b!5266006 (= e!3275378 (Union!14883 (h!67272 (t!374137 (unfocusZipperList!325 zl!343))) (generalisedUnion!812 (t!374137 (t!374137 (unfocusZipperList!325 zl!343))))))))

(declare-fun b!5266007 () Bool)

(assert (=> b!5266007 (= e!3275380 (= lt!2155850 (head!11291 (t!374137 (unfocusZipperList!325 zl!343)))))))

(declare-fun b!5266008 () Bool)

(assert (=> b!5266008 (= e!3275382 (h!67272 (t!374137 (unfocusZipperList!325 zl!343))))))

(assert (= (and d!1694891 res!2234249) b!5266003))

(assert (= (and d!1694891 c!911880) b!5266008))

(assert (= (and d!1694891 (not c!911880)) b!5266005))

(assert (= (and b!5266005 c!911877) b!5266006))

(assert (= (and b!5266005 (not c!911877)) b!5266000))

(assert (= (and d!1694891 res!2234250) b!5265999))

(assert (= (and b!5265999 c!911878) b!5266001))

(assert (= (and b!5265999 (not c!911878)) b!5266002))

(assert (= (and b!5266002 c!911879) b!5266007))

(assert (= (and b!5266002 (not c!911879)) b!5266004))

(declare-fun m!6306304 () Bool)

(assert (=> b!5266007 m!6306304))

(assert (=> b!5265999 m!6305606))

(declare-fun m!6306306 () Bool)

(assert (=> b!5266001 m!6306306))

(declare-fun m!6306308 () Bool)

(assert (=> b!5266003 m!6306308))

(declare-fun m!6306310 () Bool)

(assert (=> b!5266006 m!6306310))

(declare-fun m!6306312 () Bool)

(assert (=> b!5266002 m!6306312))

(assert (=> b!5266002 m!6306312))

(declare-fun m!6306314 () Bool)

(assert (=> b!5266002 m!6306314))

(declare-fun m!6306316 () Bool)

(assert (=> d!1694891 m!6306316))

(declare-fun m!6306318 () Bool)

(assert (=> d!1694891 m!6306318))

(declare-fun m!6306320 () Bool)

(assert (=> b!5266004 m!6306320))

(assert (=> b!5265282 d!1694891))

(declare-fun d!1694893 () Bool)

(assert (=> d!1694893 (= (head!11291 (exprs!4767 (h!67273 zl!343))) (h!67272 (exprs!4767 (h!67273 zl!343))))))

(assert (=> b!5265207 d!1694893))

(declare-fun d!1694895 () Bool)

(assert (=> d!1694895 (= (nullable!5052 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))) (nullableFct!1438 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))))))

(declare-fun bs!1220550 () Bool)

(assert (= bs!1220550 d!1694895))

(declare-fun m!6306322 () Bool)

(assert (=> bs!1220550 m!6306322))

(assert (=> b!5264903 d!1694895))

(declare-fun call!373844 () Bool)

(declare-fun bm!373837 () Bool)

(declare-fun c!911881 () Bool)

(assert (=> bm!373837 (= call!373844 (validRegex!6619 (ite c!911881 (regOne!30279 (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292)))) (regOne!30278 (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292)))))))))

(declare-fun c!911882 () Bool)

(declare-fun bm!373838 () Bool)

(declare-fun call!373843 () Bool)

(assert (=> bm!373838 (= call!373843 (validRegex!6619 (ite c!911882 (reg!15212 (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292)))) (ite c!911881 (regTwo!30279 (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292)))) (regTwo!30278 (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292))))))))))

(declare-fun b!5266023 () Bool)

(declare-fun e!3275391 () Bool)

(declare-fun e!3275392 () Bool)

(assert (=> b!5266023 (= e!3275391 e!3275392)))

(assert (=> b!5266023 (= c!911881 ((_ is Union!14883) (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292)))))))

(declare-fun b!5266024 () Bool)

(declare-fun e!3275390 () Bool)

(assert (=> b!5266024 (= e!3275390 call!373843)))

(declare-fun d!1694897 () Bool)

(declare-fun res!2234255 () Bool)

(declare-fun e!3275389 () Bool)

(assert (=> d!1694897 (=> res!2234255 e!3275389)))

(assert (=> d!1694897 (= res!2234255 ((_ is ElementMatch!14883) (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292)))))))

(assert (=> d!1694897 (= (validRegex!6619 (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292)))) e!3275389)))

(declare-fun b!5266025 () Bool)

(assert (=> b!5266025 (= e!3275389 e!3275391)))

(assert (=> b!5266025 (= c!911882 ((_ is Star!14883) (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292)))))))

(declare-fun b!5266026 () Bool)

(declare-fun e!3275388 () Bool)

(declare-fun call!373842 () Bool)

(assert (=> b!5266026 (= e!3275388 call!373842)))

(declare-fun b!5266027 () Bool)

(declare-fun e!3275393 () Bool)

(assert (=> b!5266027 (= e!3275393 call!373842)))

(declare-fun b!5266028 () Bool)

(assert (=> b!5266028 (= e!3275391 e!3275390)))

(declare-fun res!2234256 () Bool)

(assert (=> b!5266028 (= res!2234256 (not (nullable!5052 (reg!15212 (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292)))))))))

(assert (=> b!5266028 (=> (not res!2234256) (not e!3275390))))

(declare-fun b!5266029 () Bool)

(declare-fun res!2234252 () Bool)

(assert (=> b!5266029 (=> (not res!2234252) (not e!3275393))))

(assert (=> b!5266029 (= res!2234252 call!373844)))

(assert (=> b!5266029 (= e!3275392 e!3275393)))

(declare-fun b!5266030 () Bool)

(declare-fun res!2234253 () Bool)

(declare-fun e!3275394 () Bool)

(assert (=> b!5266030 (=> res!2234253 e!3275394)))

(assert (=> b!5266030 (= res!2234253 (not ((_ is Concat!23728) (ite c!911660 (reg!15212 r!7292) (ite c!911659 (regTwo!30279 r!7292) (regTwo!30278 r!7292))))))))

(assert (=> b!5266030 (= e!3275392 e!3275394)))

(declare-fun bm!373839 () Bool)

(assert (=> bm!373839 (= call!373842 call!373843)))

(declare-fun b!5266031 () Bool)

(assert (=> b!5266031 (= e!3275394 e!3275388)))

(declare-fun res!2234254 () Bool)

(assert (=> b!5266031 (=> (not res!2234254) (not e!3275388))))

(assert (=> b!5266031 (= res!2234254 call!373844)))

(assert (= (and d!1694897 (not res!2234255)) b!5266025))

(assert (= (and b!5266025 c!911882) b!5266028))

(assert (= (and b!5266025 (not c!911882)) b!5266023))

(assert (= (and b!5266028 res!2234256) b!5266024))

(assert (= (and b!5266023 c!911881) b!5266029))

(assert (= (and b!5266023 (not c!911881)) b!5266030))

(assert (= (and b!5266029 res!2234252) b!5266027))

(assert (= (and b!5266030 (not res!2234253)) b!5266031))

(assert (= (and b!5266031 res!2234254) b!5266026))

(assert (= (or b!5266027 b!5266026) bm!373839))

(assert (= (or b!5266029 b!5266031) bm!373837))

(assert (= (or b!5266024 bm!373839) bm!373838))

(declare-fun m!6306324 () Bool)

(assert (=> bm!373837 m!6306324))

(declare-fun m!6306326 () Bool)

(assert (=> bm!373838 m!6306326))

(declare-fun m!6306328 () Bool)

(assert (=> b!5266028 m!6306328))

(assert (=> bm!373681 d!1694897))

(declare-fun d!1694899 () Bool)

(assert (=> d!1694899 (= (isDefined!11697 lt!2155815) (not (isEmpty!32776 lt!2155815)))))

(declare-fun bs!1220551 () Bool)

(assert (= bs!1220551 d!1694899))

(declare-fun m!6306330 () Bool)

(assert (=> bs!1220551 m!6306330))

(assert (=> d!1694575 d!1694899))

(declare-fun bm!373840 () Bool)

(declare-fun call!373845 () Bool)

(assert (=> bm!373840 (= call!373845 (isEmpty!32775 Nil!60826))))

(declare-fun b!5266048 () Bool)

(declare-fun e!3275400 () Bool)

(declare-fun e!3275401 () Bool)

(assert (=> b!5266048 (= e!3275400 e!3275401)))

(declare-fun res!2234258 () Bool)

(assert (=> b!5266048 (=> (not res!2234258) (not e!3275401))))

(declare-fun lt!2155851 () Bool)

(assert (=> b!5266048 (= res!2234258 (not lt!2155851))))

(declare-fun b!5266049 () Bool)

(declare-fun e!3275403 () Bool)

(assert (=> b!5266049 (= e!3275401 e!3275403)))

(declare-fun res!2234261 () Bool)

(assert (=> b!5266049 (=> res!2234261 e!3275403)))

(assert (=> b!5266049 (= res!2234261 call!373845)))

(declare-fun b!5266050 () Bool)

(declare-fun res!2234262 () Bool)

(assert (=> b!5266050 (=> res!2234262 e!3275400)))

(declare-fun e!3275402 () Bool)

(assert (=> b!5266050 (= res!2234262 e!3275402)))

(declare-fun res!2234264 () Bool)

(assert (=> b!5266050 (=> (not res!2234264) (not e!3275402))))

(assert (=> b!5266050 (= res!2234264 lt!2155851)))

(declare-fun b!5266051 () Bool)

(declare-fun e!3275404 () Bool)

(declare-fun e!3275399 () Bool)

(assert (=> b!5266051 (= e!3275404 e!3275399)))

(declare-fun c!911883 () Bool)

(assert (=> b!5266051 (= c!911883 ((_ is EmptyLang!14883) (regOne!30278 r!7292)))))

(declare-fun b!5266052 () Bool)

(assert (=> b!5266052 (= e!3275399 (not lt!2155851))))

(declare-fun b!5266053 () Bool)

(assert (=> b!5266053 (= e!3275403 (not (= (head!11290 Nil!60826) (c!911481 (regOne!30278 r!7292)))))))

(declare-fun b!5266054 () Bool)

(assert (=> b!5266054 (= e!3275402 (= (head!11290 Nil!60826) (c!911481 (regOne!30278 r!7292))))))

(declare-fun b!5266055 () Bool)

(declare-fun res!2234260 () Bool)

(assert (=> b!5266055 (=> res!2234260 e!3275400)))

(assert (=> b!5266055 (= res!2234260 (not ((_ is ElementMatch!14883) (regOne!30278 r!7292))))))

(assert (=> b!5266055 (= e!3275399 e!3275400)))

(declare-fun b!5266057 () Bool)

(declare-fun e!3275405 () Bool)

(assert (=> b!5266057 (= e!3275405 (matchR!7068 (derivativeStep!4107 (regOne!30278 r!7292) (head!11290 Nil!60826)) (tail!10387 Nil!60826)))))

(declare-fun b!5266058 () Bool)

(assert (=> b!5266058 (= e!3275404 (= lt!2155851 call!373845))))

(declare-fun b!5266059 () Bool)

(declare-fun res!2234257 () Bool)

(assert (=> b!5266059 (=> (not res!2234257) (not e!3275402))))

(assert (=> b!5266059 (= res!2234257 (isEmpty!32775 (tail!10387 Nil!60826)))))

(declare-fun b!5266060 () Bool)

(declare-fun res!2234259 () Bool)

(assert (=> b!5266060 (=> res!2234259 e!3275403)))

(assert (=> b!5266060 (= res!2234259 (not (isEmpty!32775 (tail!10387 Nil!60826))))))

(declare-fun b!5266061 () Bool)

(assert (=> b!5266061 (= e!3275405 (nullable!5052 (regOne!30278 r!7292)))))

(declare-fun b!5266056 () Bool)

(declare-fun res!2234263 () Bool)

(assert (=> b!5266056 (=> (not res!2234263) (not e!3275402))))

(assert (=> b!5266056 (= res!2234263 (not call!373845))))

(declare-fun d!1694901 () Bool)

(assert (=> d!1694901 e!3275404))

(declare-fun c!911885 () Bool)

(assert (=> d!1694901 (= c!911885 ((_ is EmptyExpr!14883) (regOne!30278 r!7292)))))

(assert (=> d!1694901 (= lt!2155851 e!3275405)))

(declare-fun c!911884 () Bool)

(assert (=> d!1694901 (= c!911884 (isEmpty!32775 Nil!60826))))

(assert (=> d!1694901 (validRegex!6619 (regOne!30278 r!7292))))

(assert (=> d!1694901 (= (matchR!7068 (regOne!30278 r!7292) Nil!60826) lt!2155851)))

(assert (= (and d!1694901 c!911884) b!5266061))

(assert (= (and d!1694901 (not c!911884)) b!5266057))

(assert (= (and d!1694901 c!911885) b!5266058))

(assert (= (and d!1694901 (not c!911885)) b!5266051))

(assert (= (and b!5266051 c!911883) b!5266052))

(assert (= (and b!5266051 (not c!911883)) b!5266055))

(assert (= (and b!5266055 (not res!2234260)) b!5266050))

(assert (= (and b!5266050 res!2234264) b!5266056))

(assert (= (and b!5266056 res!2234263) b!5266059))

(assert (= (and b!5266059 res!2234257) b!5266054))

(assert (= (and b!5266050 (not res!2234262)) b!5266048))

(assert (= (and b!5266048 res!2234258) b!5266049))

(assert (= (and b!5266049 (not res!2234261)) b!5266060))

(assert (= (and b!5266060 (not res!2234259)) b!5266053))

(assert (= (or b!5266058 b!5266049 b!5266056) bm!373840))

(declare-fun m!6306332 () Bool)

(assert (=> b!5266059 m!6306332))

(assert (=> b!5266059 m!6306332))

(declare-fun m!6306334 () Bool)

(assert (=> b!5266059 m!6306334))

(declare-fun m!6306336 () Bool)

(assert (=> b!5266053 m!6306336))

(declare-fun m!6306338 () Bool)

(assert (=> b!5266061 m!6306338))

(declare-fun m!6306340 () Bool)

(assert (=> d!1694901 m!6306340))

(assert (=> d!1694901 m!6305628))

(assert (=> bm!373840 m!6306340))

(assert (=> b!5266054 m!6306336))

(assert (=> b!5266057 m!6306336))

(assert (=> b!5266057 m!6306336))

(declare-fun m!6306342 () Bool)

(assert (=> b!5266057 m!6306342))

(assert (=> b!5266057 m!6306332))

(assert (=> b!5266057 m!6306342))

(assert (=> b!5266057 m!6306332))

(declare-fun m!6306344 () Bool)

(assert (=> b!5266057 m!6306344))

(assert (=> b!5266060 m!6306332))

(assert (=> b!5266060 m!6306332))

(assert (=> b!5266060 m!6306334))

(assert (=> d!1694575 d!1694901))

(assert (=> d!1694575 d!1694773))

(declare-fun d!1694903 () Bool)

(assert (=> d!1694903 (= (isEmpty!32775 (t!374139 s!2326)) ((_ is Nil!60826) (t!374139 s!2326)))))

(assert (=> d!1694567 d!1694903))

(declare-fun bm!373841 () Bool)

(declare-fun call!373848 () Bool)

(declare-fun c!911886 () Bool)

(assert (=> bm!373841 (= call!373848 (validRegex!6619 (ite c!911886 (regOne!30279 lt!2155804) (regOne!30278 lt!2155804))))))

(declare-fun bm!373842 () Bool)

(declare-fun c!911887 () Bool)

(declare-fun call!373847 () Bool)

(assert (=> bm!373842 (= call!373847 (validRegex!6619 (ite c!911887 (reg!15212 lt!2155804) (ite c!911886 (regTwo!30279 lt!2155804) (regTwo!30278 lt!2155804)))))))

(declare-fun b!5266082 () Bool)

(declare-fun e!3275414 () Bool)

(declare-fun e!3275415 () Bool)

(assert (=> b!5266082 (= e!3275414 e!3275415)))

(assert (=> b!5266082 (= c!911886 ((_ is Union!14883) lt!2155804))))

(declare-fun b!5266083 () Bool)

(declare-fun e!3275413 () Bool)

(assert (=> b!5266083 (= e!3275413 call!373847)))

(declare-fun d!1694905 () Bool)

(declare-fun res!2234268 () Bool)

(declare-fun e!3275412 () Bool)

(assert (=> d!1694905 (=> res!2234268 e!3275412)))

(assert (=> d!1694905 (= res!2234268 ((_ is ElementMatch!14883) lt!2155804))))

(assert (=> d!1694905 (= (validRegex!6619 lt!2155804) e!3275412)))

(declare-fun b!5266084 () Bool)

(assert (=> b!5266084 (= e!3275412 e!3275414)))

(assert (=> b!5266084 (= c!911887 ((_ is Star!14883) lt!2155804))))

(declare-fun b!5266085 () Bool)

(declare-fun e!3275411 () Bool)

(declare-fun call!373846 () Bool)

(assert (=> b!5266085 (= e!3275411 call!373846)))

(declare-fun b!5266086 () Bool)

(declare-fun e!3275416 () Bool)

(assert (=> b!5266086 (= e!3275416 call!373846)))

(declare-fun b!5266087 () Bool)

(assert (=> b!5266087 (= e!3275414 e!3275413)))

(declare-fun res!2234269 () Bool)

(assert (=> b!5266087 (= res!2234269 (not (nullable!5052 (reg!15212 lt!2155804))))))

(assert (=> b!5266087 (=> (not res!2234269) (not e!3275413))))

(declare-fun b!5266088 () Bool)

(declare-fun res!2234265 () Bool)

(assert (=> b!5266088 (=> (not res!2234265) (not e!3275416))))

(assert (=> b!5266088 (= res!2234265 call!373848)))

(assert (=> b!5266088 (= e!3275415 e!3275416)))

(declare-fun b!5266089 () Bool)

(declare-fun res!2234266 () Bool)

(declare-fun e!3275417 () Bool)

(assert (=> b!5266089 (=> res!2234266 e!3275417)))

(assert (=> b!5266089 (= res!2234266 (not ((_ is Concat!23728) lt!2155804)))))

(assert (=> b!5266089 (= e!3275415 e!3275417)))

(declare-fun bm!373843 () Bool)

(assert (=> bm!373843 (= call!373846 call!373847)))

(declare-fun b!5266090 () Bool)

(assert (=> b!5266090 (= e!3275417 e!3275411)))

(declare-fun res!2234267 () Bool)

(assert (=> b!5266090 (=> (not res!2234267) (not e!3275411))))

(assert (=> b!5266090 (= res!2234267 call!373848)))

(assert (= (and d!1694905 (not res!2234268)) b!5266084))

(assert (= (and b!5266084 c!911887) b!5266087))

(assert (= (and b!5266084 (not c!911887)) b!5266082))

(assert (= (and b!5266087 res!2234269) b!5266083))

(assert (= (and b!5266082 c!911886) b!5266088))

(assert (= (and b!5266082 (not c!911886)) b!5266089))

(assert (= (and b!5266088 res!2234265) b!5266086))

(assert (= (and b!5266089 (not res!2234266)) b!5266090))

(assert (= (and b!5266090 res!2234267) b!5266085))

(assert (= (or b!5266086 b!5266085) bm!373843))

(assert (= (or b!5266088 b!5266090) bm!373841))

(assert (= (or b!5266083 bm!373843) bm!373842))

(declare-fun m!6306346 () Bool)

(assert (=> bm!373841 m!6306346))

(declare-fun m!6306348 () Bool)

(assert (=> bm!373842 m!6306348))

(declare-fun m!6306350 () Bool)

(assert (=> b!5266087 m!6306350))

(assert (=> d!1694571 d!1694905))

(declare-fun d!1694907 () Bool)

(declare-fun res!2234270 () Bool)

(declare-fun e!3275421 () Bool)

(assert (=> d!1694907 (=> res!2234270 e!3275421)))

(assert (=> d!1694907 (= res!2234270 ((_ is Nil!60824) (unfocusZipperList!325 zl!343)))))

(assert (=> d!1694907 (= (forall!14295 (unfocusZipperList!325 zl!343) lambda!265519) e!3275421)))

(declare-fun b!5266097 () Bool)

(declare-fun e!3275422 () Bool)

(assert (=> b!5266097 (= e!3275421 e!3275422)))

(declare-fun res!2234271 () Bool)

(assert (=> b!5266097 (=> (not res!2234271) (not e!3275422))))

(assert (=> b!5266097 (= res!2234271 (dynLambda!24037 lambda!265519 (h!67272 (unfocusZipperList!325 zl!343))))))

(declare-fun b!5266098 () Bool)

(assert (=> b!5266098 (= e!3275422 (forall!14295 (t!374137 (unfocusZipperList!325 zl!343)) lambda!265519))))

(assert (= (and d!1694907 (not res!2234270)) b!5266097))

(assert (= (and b!5266097 res!2234271) b!5266098))

(declare-fun b_lambda!203141 () Bool)

(assert (=> (not b_lambda!203141) (not b!5266097)))

(declare-fun m!6306354 () Bool)

(assert (=> b!5266097 m!6306354))

(declare-fun m!6306356 () Bool)

(assert (=> b!5266098 m!6306356))

(assert (=> d!1694571 d!1694907))

(declare-fun d!1694909 () Bool)

(assert (=> d!1694909 (= ($colon$colon!1336 (exprs!4767 lt!2155735) (ite (or c!911572 c!911571) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regOne!30278 r!7292)))) (Cons!60824 (ite (or c!911572 c!911571) (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (regTwo!30278 (regOne!30278 r!7292))) (exprs!4767 lt!2155735)))))

(assert (=> bm!373616 d!1694909))

(declare-fun d!1694911 () Bool)

(assert (=> d!1694911 (= (isEmpty!32776 (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) Nil!60826 s!2326 s!2326)) (not ((_ is Some!14993) (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) Nil!60826 s!2326 s!2326))))))

(assert (=> d!1694581 d!1694911))

(declare-fun bs!1220552 () Bool)

(declare-fun d!1694913 () Bool)

(assert (= bs!1220552 (and d!1694913 d!1694737)))

(declare-fun lambda!265581 () Int)

(assert (=> bs!1220552 (= lambda!265581 lambda!265556)))

(assert (=> d!1694913 (= (nullableZipper!1286 ((_ map or) lt!2155737 lt!2155736)) (exists!1988 ((_ map or) lt!2155737 lt!2155736) lambda!265581))))

(declare-fun bs!1220553 () Bool)

(assert (= bs!1220553 d!1694913))

(declare-fun m!6306360 () Bool)

(assert (=> bs!1220553 m!6306360))

(assert (=> b!5265244 d!1694913))

(declare-fun b!5266126 () Bool)

(declare-fun e!3275433 () Bool)

(assert (=> b!5266126 (= e!3275433 (nullable!5052 (h!67272 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343))))))))))

(declare-fun bm!373844 () Bool)

(declare-fun call!373849 () (InoxSet Context!8534))

(assert (=> bm!373844 (= call!373849 (derivationStepZipperDown!331 (h!67272 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))))) (Context!8535 (t!374137 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343))))))) (h!67274 s!2326)))))

(declare-fun b!5266127 () Bool)

(declare-fun e!3275432 () (InoxSet Context!8534))

(declare-fun e!3275434 () (InoxSet Context!8534))

(assert (=> b!5266127 (= e!3275432 e!3275434)))

(declare-fun c!911888 () Bool)

(assert (=> b!5266127 (= c!911888 ((_ is Cons!60824) (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))))))))

(declare-fun b!5266128 () Bool)

(assert (=> b!5266128 (= e!3275432 ((_ map or) call!373849 (derivationStepZipperUp!255 (Context!8535 (t!374137 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343))))))) (h!67274 s!2326))))))

(declare-fun d!1694915 () Bool)

(declare-fun c!911889 () Bool)

(assert (=> d!1694915 (= c!911889 e!3275433)))

(declare-fun res!2234272 () Bool)

(assert (=> d!1694915 (=> (not res!2234272) (not e!3275433))))

(assert (=> d!1694915 (= res!2234272 ((_ is Cons!60824) (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))))))))

(assert (=> d!1694915 (= (derivationStepZipperUp!255 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))) (h!67274 s!2326)) e!3275432)))

(declare-fun b!5266129 () Bool)

(assert (=> b!5266129 (= e!3275434 call!373849)))

(declare-fun b!5266130 () Bool)

(assert (=> b!5266130 (= e!3275434 ((as const (Array Context!8534 Bool)) false))))

(assert (= (and d!1694915 res!2234272) b!5266126))

(assert (= (and d!1694915 c!911889) b!5266128))

(assert (= (and d!1694915 (not c!911889)) b!5266127))

(assert (= (and b!5266127 c!911888) b!5266129))

(assert (= (and b!5266127 (not c!911888)) b!5266130))

(assert (= (or b!5266128 b!5266129) bm!373844))

(declare-fun m!6306362 () Bool)

(assert (=> b!5266126 m!6306362))

(declare-fun m!6306364 () Bool)

(assert (=> bm!373844 m!6306364))

(declare-fun m!6306366 () Bool)

(assert (=> b!5266128 m!6306366))

(assert (=> b!5264847 d!1694915))

(declare-fun bm!373845 () Bool)

(declare-fun call!373852 () Bool)

(declare-fun c!911890 () Bool)

(assert (=> bm!373845 (= call!373852 (validRegex!6619 (ite c!911890 (regOne!30279 lt!2155774) (regOne!30278 lt!2155774))))))

(declare-fun c!911891 () Bool)

(declare-fun bm!373846 () Bool)

(declare-fun call!373851 () Bool)

(assert (=> bm!373846 (= call!373851 (validRegex!6619 (ite c!911891 (reg!15212 lt!2155774) (ite c!911890 (regTwo!30279 lt!2155774) (regTwo!30278 lt!2155774)))))))

(declare-fun b!5266136 () Bool)

(declare-fun e!3275440 () Bool)

(declare-fun e!3275441 () Bool)

(assert (=> b!5266136 (= e!3275440 e!3275441)))

(assert (=> b!5266136 (= c!911890 ((_ is Union!14883) lt!2155774))))

(declare-fun b!5266137 () Bool)

(declare-fun e!3275439 () Bool)

(assert (=> b!5266137 (= e!3275439 call!373851)))

(declare-fun d!1694917 () Bool)

(declare-fun res!2234276 () Bool)

(declare-fun e!3275438 () Bool)

(assert (=> d!1694917 (=> res!2234276 e!3275438)))

(assert (=> d!1694917 (= res!2234276 ((_ is ElementMatch!14883) lt!2155774))))

(assert (=> d!1694917 (= (validRegex!6619 lt!2155774) e!3275438)))

(declare-fun b!5266138 () Bool)

(assert (=> b!5266138 (= e!3275438 e!3275440)))

(assert (=> b!5266138 (= c!911891 ((_ is Star!14883) lt!2155774))))

(declare-fun b!5266139 () Bool)

(declare-fun e!3275437 () Bool)

(declare-fun call!373850 () Bool)

(assert (=> b!5266139 (= e!3275437 call!373850)))

(declare-fun b!5266140 () Bool)

(declare-fun e!3275442 () Bool)

(assert (=> b!5266140 (= e!3275442 call!373850)))

(declare-fun b!5266141 () Bool)

(assert (=> b!5266141 (= e!3275440 e!3275439)))

(declare-fun res!2234277 () Bool)

(assert (=> b!5266141 (= res!2234277 (not (nullable!5052 (reg!15212 lt!2155774))))))

(assert (=> b!5266141 (=> (not res!2234277) (not e!3275439))))

(declare-fun b!5266142 () Bool)

(declare-fun res!2234273 () Bool)

(assert (=> b!5266142 (=> (not res!2234273) (not e!3275442))))

(assert (=> b!5266142 (= res!2234273 call!373852)))

(assert (=> b!5266142 (= e!3275441 e!3275442)))

(declare-fun b!5266143 () Bool)

(declare-fun res!2234274 () Bool)

(declare-fun e!3275443 () Bool)

(assert (=> b!5266143 (=> res!2234274 e!3275443)))

(assert (=> b!5266143 (= res!2234274 (not ((_ is Concat!23728) lt!2155774)))))

(assert (=> b!5266143 (= e!3275441 e!3275443)))

(declare-fun bm!373847 () Bool)

(assert (=> bm!373847 (= call!373850 call!373851)))

(declare-fun b!5266144 () Bool)

(assert (=> b!5266144 (= e!3275443 e!3275437)))

(declare-fun res!2234275 () Bool)

(assert (=> b!5266144 (=> (not res!2234275) (not e!3275437))))

(assert (=> b!5266144 (= res!2234275 call!373852)))

(assert (= (and d!1694917 (not res!2234276)) b!5266138))

(assert (= (and b!5266138 c!911891) b!5266141))

(assert (= (and b!5266138 (not c!911891)) b!5266136))

(assert (= (and b!5266141 res!2234277) b!5266137))

(assert (= (and b!5266136 c!911890) b!5266142))

(assert (= (and b!5266136 (not c!911890)) b!5266143))

(assert (= (and b!5266142 res!2234273) b!5266140))

(assert (= (and b!5266143 (not res!2234274)) b!5266144))

(assert (= (and b!5266144 res!2234275) b!5266139))

(assert (= (or b!5266140 b!5266139) bm!373847))

(assert (= (or b!5266142 b!5266144) bm!373845))

(assert (= (or b!5266137 bm!373847) bm!373846))

(declare-fun m!6306368 () Bool)

(assert (=> bm!373845 m!6306368))

(declare-fun m!6306370 () Bool)

(assert (=> bm!373846 m!6306370))

(declare-fun m!6306372 () Bool)

(assert (=> b!5266141 m!6306372))

(assert (=> d!1694489 d!1694917))

(assert (=> d!1694489 d!1694571))

(assert (=> d!1694489 d!1694573))

(declare-fun d!1694919 () Bool)

(assert (=> d!1694919 true))

(assert (=> d!1694919 true))

(declare-fun res!2234278 () Bool)

(assert (=> d!1694919 (= (choose!39289 lambda!265473) res!2234278)))

(assert (=> d!1694577 d!1694919))

(declare-fun d!1694921 () Bool)

(assert (=> d!1694921 (= (nullable!5052 (regOne!30278 (regOne!30278 (regOne!30278 r!7292)))) (nullableFct!1438 (regOne!30278 (regOne!30278 (regOne!30278 r!7292)))))))

(declare-fun bs!1220554 () Bool)

(assert (= bs!1220554 d!1694921))

(declare-fun m!6306374 () Bool)

(assert (=> bs!1220554 m!6306374))

(assert (=> b!5264892 d!1694921))

(assert (=> b!5265241 d!1694505))

(declare-fun bs!1220555 () Bool)

(declare-fun d!1694923 () Bool)

(assert (= bs!1220555 (and d!1694923 d!1694737)))

(declare-fun lambda!265582 () Int)

(assert (=> bs!1220555 (= lambda!265582 lambda!265556)))

(declare-fun bs!1220556 () Bool)

(assert (= bs!1220556 (and d!1694923 d!1694913)))

(assert (=> bs!1220556 (= lambda!265582 lambda!265581)))

(assert (=> d!1694923 (= (nullableZipper!1286 lt!2155736) (exists!1988 lt!2155736 lambda!265582))))

(declare-fun bs!1220557 () Bool)

(assert (= bs!1220557 d!1694923))

(declare-fun m!6306376 () Bool)

(assert (=> bs!1220557 m!6306376))

(assert (=> b!5264923 d!1694923))

(declare-fun bm!373848 () Bool)

(declare-fun call!373853 () Bool)

(assert (=> bm!373848 (= call!373853 (isEmpty!32775 (_2!35385 (get!20913 lt!2155815))))))

(declare-fun b!5266166 () Bool)

(declare-fun e!3275451 () Bool)

(declare-fun e!3275452 () Bool)

(assert (=> b!5266166 (= e!3275451 e!3275452)))

(declare-fun res!2234280 () Bool)

(assert (=> b!5266166 (=> (not res!2234280) (not e!3275452))))

(declare-fun lt!2155852 () Bool)

(assert (=> b!5266166 (= res!2234280 (not lt!2155852))))

(declare-fun b!5266167 () Bool)

(declare-fun e!3275454 () Bool)

(assert (=> b!5266167 (= e!3275452 e!3275454)))

(declare-fun res!2234283 () Bool)

(assert (=> b!5266167 (=> res!2234283 e!3275454)))

(assert (=> b!5266167 (= res!2234283 call!373853)))

(declare-fun b!5266168 () Bool)

(declare-fun res!2234284 () Bool)

(assert (=> b!5266168 (=> res!2234284 e!3275451)))

(declare-fun e!3275453 () Bool)

(assert (=> b!5266168 (= res!2234284 e!3275453)))

(declare-fun res!2234286 () Bool)

(assert (=> b!5266168 (=> (not res!2234286) (not e!3275453))))

(assert (=> b!5266168 (= res!2234286 lt!2155852)))

(declare-fun b!5266169 () Bool)

(declare-fun e!3275455 () Bool)

(declare-fun e!3275450 () Bool)

(assert (=> b!5266169 (= e!3275455 e!3275450)))

(declare-fun c!911892 () Bool)

(assert (=> b!5266169 (= c!911892 ((_ is EmptyLang!14883) (regTwo!30278 r!7292)))))

(declare-fun b!5266170 () Bool)

(assert (=> b!5266170 (= e!3275450 (not lt!2155852))))

(declare-fun b!5266171 () Bool)

(assert (=> b!5266171 (= e!3275454 (not (= (head!11290 (_2!35385 (get!20913 lt!2155815))) (c!911481 (regTwo!30278 r!7292)))))))

(declare-fun b!5266172 () Bool)

(assert (=> b!5266172 (= e!3275453 (= (head!11290 (_2!35385 (get!20913 lt!2155815))) (c!911481 (regTwo!30278 r!7292))))))

(declare-fun b!5266173 () Bool)

(declare-fun res!2234282 () Bool)

(assert (=> b!5266173 (=> res!2234282 e!3275451)))

(assert (=> b!5266173 (= res!2234282 (not ((_ is ElementMatch!14883) (regTwo!30278 r!7292))))))

(assert (=> b!5266173 (= e!3275450 e!3275451)))

(declare-fun b!5266175 () Bool)

(declare-fun e!3275456 () Bool)

(assert (=> b!5266175 (= e!3275456 (matchR!7068 (derivativeStep!4107 (regTwo!30278 r!7292) (head!11290 (_2!35385 (get!20913 lt!2155815)))) (tail!10387 (_2!35385 (get!20913 lt!2155815)))))))

(declare-fun b!5266176 () Bool)

(assert (=> b!5266176 (= e!3275455 (= lt!2155852 call!373853))))

(declare-fun b!5266177 () Bool)

(declare-fun res!2234279 () Bool)

(assert (=> b!5266177 (=> (not res!2234279) (not e!3275453))))

(assert (=> b!5266177 (= res!2234279 (isEmpty!32775 (tail!10387 (_2!35385 (get!20913 lt!2155815)))))))

(declare-fun b!5266178 () Bool)

(declare-fun res!2234281 () Bool)

(assert (=> b!5266178 (=> res!2234281 e!3275454)))

(assert (=> b!5266178 (= res!2234281 (not (isEmpty!32775 (tail!10387 (_2!35385 (get!20913 lt!2155815))))))))

(declare-fun b!5266179 () Bool)

(assert (=> b!5266179 (= e!3275456 (nullable!5052 (regTwo!30278 r!7292)))))

(declare-fun b!5266174 () Bool)

(declare-fun res!2234285 () Bool)

(assert (=> b!5266174 (=> (not res!2234285) (not e!3275453))))

(assert (=> b!5266174 (= res!2234285 (not call!373853))))

(declare-fun d!1694925 () Bool)

(assert (=> d!1694925 e!3275455))

(declare-fun c!911894 () Bool)

(assert (=> d!1694925 (= c!911894 ((_ is EmptyExpr!14883) (regTwo!30278 r!7292)))))

(assert (=> d!1694925 (= lt!2155852 e!3275456)))

(declare-fun c!911893 () Bool)

(assert (=> d!1694925 (= c!911893 (isEmpty!32775 (_2!35385 (get!20913 lt!2155815))))))

(assert (=> d!1694925 (validRegex!6619 (regTwo!30278 r!7292))))

(assert (=> d!1694925 (= (matchR!7068 (regTwo!30278 r!7292) (_2!35385 (get!20913 lt!2155815))) lt!2155852)))

(assert (= (and d!1694925 c!911893) b!5266179))

(assert (= (and d!1694925 (not c!911893)) b!5266175))

(assert (= (and d!1694925 c!911894) b!5266176))

(assert (= (and d!1694925 (not c!911894)) b!5266169))

(assert (= (and b!5266169 c!911892) b!5266170))

(assert (= (and b!5266169 (not c!911892)) b!5266173))

(assert (= (and b!5266173 (not res!2234282)) b!5266168))

(assert (= (and b!5266168 res!2234286) b!5266174))

(assert (= (and b!5266174 res!2234285) b!5266177))

(assert (= (and b!5266177 res!2234279) b!5266172))

(assert (= (and b!5266168 (not res!2234284)) b!5266166))

(assert (= (and b!5266166 res!2234280) b!5266167))

(assert (= (and b!5266167 (not res!2234283)) b!5266178))

(assert (= (and b!5266178 (not res!2234281)) b!5266171))

(assert (= (or b!5266176 b!5266167 b!5266174) bm!373848))

(declare-fun m!6306378 () Bool)

(assert (=> b!5266177 m!6306378))

(assert (=> b!5266177 m!6306378))

(declare-fun m!6306380 () Bool)

(assert (=> b!5266177 m!6306380))

(declare-fun m!6306382 () Bool)

(assert (=> b!5266171 m!6306382))

(assert (=> b!5266179 m!6306294))

(declare-fun m!6306384 () Bool)

(assert (=> d!1694925 m!6306384))

(assert (=> d!1694925 m!6306296))

(assert (=> bm!373848 m!6306384))

(assert (=> b!5266172 m!6306382))

(assert (=> b!5266175 m!6306382))

(assert (=> b!5266175 m!6306382))

(declare-fun m!6306388 () Bool)

(assert (=> b!5266175 m!6306388))

(assert (=> b!5266175 m!6306378))

(assert (=> b!5266175 m!6306388))

(assert (=> b!5266175 m!6306378))

(declare-fun m!6306392 () Bool)

(assert (=> b!5266175 m!6306392))

(assert (=> b!5266178 m!6306378))

(assert (=> b!5266178 m!6306378))

(assert (=> b!5266178 m!6306380))

(assert (=> b!5265309 d!1694925))

(assert (=> b!5265309 d!1694825))

(assert (=> d!1694483 d!1694479))

(declare-fun d!1694933 () Bool)

(assert (=> d!1694933 (= (flatMap!610 z!1189 lambda!265475) (dynLambda!24034 lambda!265475 (h!67273 zl!343)))))

(assert (=> d!1694933 true))

(declare-fun _$13!1802 () Unit!153050)

(assert (=> d!1694933 (= (choose!39283 z!1189 (h!67273 zl!343) lambda!265475) _$13!1802)))

(declare-fun b_lambda!203155 () Bool)

(assert (=> (not b_lambda!203155) (not d!1694933)))

(declare-fun bs!1220563 () Bool)

(assert (= bs!1220563 d!1694933))

(assert (=> bs!1220563 m!6305194))

(assert (=> bs!1220563 m!6305356))

(assert (=> d!1694483 d!1694933))

(declare-fun bs!1220564 () Bool)

(declare-fun b!5266190 () Bool)

(assert (= bs!1220564 (and b!5266190 b!5265010)))

(declare-fun lambda!265583 () Int)

(assert (=> bs!1220564 (= (and (= (reg!15212 (regTwo!30279 r!7292)) (reg!15212 r!7292)) (= (regTwo!30279 r!7292) r!7292)) (= lambda!265583 lambda!265511))))

(declare-fun bs!1220565 () Bool)

(assert (= bs!1220565 (and b!5266190 d!1694751)))

(assert (=> bs!1220565 (not (= lambda!265583 lambda!265565))))

(declare-fun bs!1220566 () Bool)

(assert (= bs!1220566 (and b!5266190 d!1694579)))

(assert (=> bs!1220566 (not (= lambda!265583 lambda!265528))))

(declare-fun bs!1220567 () Bool)

(assert (= bs!1220567 (and b!5266190 d!1694835)))

(assert (=> bs!1220567 (not (= lambda!265583 lambda!265576))))

(declare-fun bs!1220568 () Bool)

(assert (= bs!1220568 (and b!5266190 b!5265627)))

(assert (=> bs!1220568 (= (and (= (reg!15212 (regTwo!30279 r!7292)) (reg!15212 (regOne!30279 r!7292))) (= (regTwo!30279 r!7292) (regOne!30279 r!7292))) (= lambda!265583 lambda!265546))))

(declare-fun bs!1220569 () Bool)

(assert (= bs!1220569 (and b!5266190 b!5265013)))

(assert (=> bs!1220569 (not (= lambda!265583 lambda!265512))))

(assert (=> bs!1220566 (not (= lambda!265583 lambda!265527))))

(assert (=> bs!1220565 (not (= lambda!265583 lambda!265564))))

(declare-fun bs!1220570 () Bool)

(assert (= bs!1220570 (and b!5266190 d!1694583)))

(assert (=> bs!1220570 (not (= lambda!265583 lambda!265531))))

(declare-fun bs!1220571 () Bool)

(assert (= bs!1220571 (and b!5266190 b!5264604)))

(assert (=> bs!1220571 (not (= lambda!265583 lambda!265473))))

(assert (=> bs!1220571 (not (= lambda!265583 lambda!265474))))

(declare-fun bs!1220572 () Bool)

(assert (= bs!1220572 (and b!5266190 b!5265630)))

(assert (=> bs!1220572 (not (= lambda!265583 lambda!265547))))

(assert (=> b!5266190 true))

(assert (=> b!5266190 true))

(declare-fun bs!1220573 () Bool)

(declare-fun b!5266193 () Bool)

(assert (= bs!1220573 (and b!5266193 b!5265010)))

(declare-fun lambda!265584 () Int)

(assert (=> bs!1220573 (not (= lambda!265584 lambda!265511))))

(declare-fun bs!1220574 () Bool)

(assert (= bs!1220574 (and b!5266193 d!1694751)))

(assert (=> bs!1220574 (= (and (= (regOne!30278 (regTwo!30279 r!7292)) (regOne!30278 r!7292)) (= (regTwo!30278 (regTwo!30279 r!7292)) (regTwo!30278 r!7292))) (= lambda!265584 lambda!265565))))

(declare-fun bs!1220575 () Bool)

(assert (= bs!1220575 (and b!5266193 d!1694835)))

(assert (=> bs!1220575 (not (= lambda!265584 lambda!265576))))

(declare-fun bs!1220576 () Bool)

(assert (= bs!1220576 (and b!5266193 b!5265627)))

(assert (=> bs!1220576 (not (= lambda!265584 lambda!265546))))

(declare-fun bs!1220577 () Bool)

(assert (= bs!1220577 (and b!5266193 b!5265013)))

(assert (=> bs!1220577 (= (and (= (regOne!30278 (regTwo!30279 r!7292)) (regOne!30278 r!7292)) (= (regTwo!30278 (regTwo!30279 r!7292)) (regTwo!30278 r!7292))) (= lambda!265584 lambda!265512))))

(declare-fun bs!1220578 () Bool)

(assert (= bs!1220578 (and b!5266193 d!1694579)))

(assert (=> bs!1220578 (not (= lambda!265584 lambda!265527))))

(assert (=> bs!1220574 (not (= lambda!265584 lambda!265564))))

(declare-fun bs!1220579 () Bool)

(assert (= bs!1220579 (and b!5266193 d!1694583)))

(assert (=> bs!1220579 (not (= lambda!265584 lambda!265531))))

(declare-fun bs!1220580 () Bool)

(assert (= bs!1220580 (and b!5266193 b!5264604)))

(assert (=> bs!1220580 (not (= lambda!265584 lambda!265473))))

(declare-fun bs!1220581 () Bool)

(assert (= bs!1220581 (and b!5266193 b!5266190)))

(assert (=> bs!1220581 (not (= lambda!265584 lambda!265583))))

(assert (=> bs!1220578 (= (and (= (regOne!30278 (regTwo!30279 r!7292)) (regOne!30278 r!7292)) (= (regTwo!30278 (regTwo!30279 r!7292)) (regTwo!30278 r!7292))) (= lambda!265584 lambda!265528))))

(assert (=> bs!1220580 (= (and (= (regOne!30278 (regTwo!30279 r!7292)) (regOne!30278 r!7292)) (= (regTwo!30278 (regTwo!30279 r!7292)) (regTwo!30278 r!7292))) (= lambda!265584 lambda!265474))))

(declare-fun bs!1220582 () Bool)

(assert (= bs!1220582 (and b!5266193 b!5265630)))

(assert (=> bs!1220582 (= (and (= (regOne!30278 (regTwo!30279 r!7292)) (regOne!30278 (regOne!30279 r!7292))) (= (regTwo!30278 (regTwo!30279 r!7292)) (regTwo!30278 (regOne!30279 r!7292)))) (= lambda!265584 lambda!265547))))

(assert (=> b!5266193 true))

(assert (=> b!5266193 true))

(declare-fun b!5266188 () Bool)

(declare-fun res!2234289 () Bool)

(declare-fun e!3275462 () Bool)

(assert (=> b!5266188 (=> res!2234289 e!3275462)))

(declare-fun call!373855 () Bool)

(assert (=> b!5266188 (= res!2234289 call!373855)))

(declare-fun e!3275461 () Bool)

(assert (=> b!5266188 (= e!3275461 e!3275462)))

(declare-fun b!5266189 () Bool)

(declare-fun c!911896 () Bool)

(assert (=> b!5266189 (= c!911896 ((_ is ElementMatch!14883) (regTwo!30279 r!7292)))))

(declare-fun e!3275464 () Bool)

(declare-fun e!3275465 () Bool)

(assert (=> b!5266189 (= e!3275464 e!3275465)))

(declare-fun d!1694939 () Bool)

(declare-fun c!911898 () Bool)

(assert (=> d!1694939 (= c!911898 ((_ is EmptyExpr!14883) (regTwo!30279 r!7292)))))

(declare-fun e!3275460 () Bool)

(assert (=> d!1694939 (= (matchRSpec!1986 (regTwo!30279 r!7292) s!2326) e!3275460)))

(declare-fun call!373854 () Bool)

(assert (=> b!5266190 (= e!3275462 call!373854)))

(declare-fun b!5266191 () Bool)

(declare-fun e!3275463 () Bool)

(declare-fun e!3275459 () Bool)

(assert (=> b!5266191 (= e!3275463 e!3275459)))

(declare-fun res!2234288 () Bool)

(assert (=> b!5266191 (= res!2234288 (matchRSpec!1986 (regOne!30279 (regTwo!30279 r!7292)) s!2326))))

(assert (=> b!5266191 (=> res!2234288 e!3275459)))

(declare-fun bm!373849 () Bool)

(assert (=> bm!373849 (= call!373855 (isEmpty!32775 s!2326))))

(declare-fun b!5266192 () Bool)

(assert (=> b!5266192 (= e!3275460 e!3275464)))

(declare-fun res!2234287 () Bool)

(assert (=> b!5266192 (= res!2234287 (not ((_ is EmptyLang!14883) (regTwo!30279 r!7292))))))

(assert (=> b!5266192 (=> (not res!2234287) (not e!3275464))))

(assert (=> b!5266193 (= e!3275461 call!373854)))

(declare-fun b!5266194 () Bool)

(declare-fun c!911897 () Bool)

(assert (=> b!5266194 (= c!911897 ((_ is Union!14883) (regTwo!30279 r!7292)))))

(assert (=> b!5266194 (= e!3275465 e!3275463)))

(declare-fun b!5266195 () Bool)

(assert (=> b!5266195 (= e!3275459 (matchRSpec!1986 (regTwo!30279 (regTwo!30279 r!7292)) s!2326))))

(declare-fun b!5266196 () Bool)

(assert (=> b!5266196 (= e!3275465 (= s!2326 (Cons!60826 (c!911481 (regTwo!30279 r!7292)) Nil!60826)))))

(declare-fun c!911895 () Bool)

(declare-fun bm!373850 () Bool)

(assert (=> bm!373850 (= call!373854 (Exists!2064 (ite c!911895 lambda!265583 lambda!265584)))))

(declare-fun b!5266197 () Bool)

(assert (=> b!5266197 (= e!3275460 call!373855)))

(declare-fun b!5266198 () Bool)

(assert (=> b!5266198 (= e!3275463 e!3275461)))

(assert (=> b!5266198 (= c!911895 ((_ is Star!14883) (regTwo!30279 r!7292)))))

(assert (= (and d!1694939 c!911898) b!5266197))

(assert (= (and d!1694939 (not c!911898)) b!5266192))

(assert (= (and b!5266192 res!2234287) b!5266189))

(assert (= (and b!5266189 c!911896) b!5266196))

(assert (= (and b!5266189 (not c!911896)) b!5266194))

(assert (= (and b!5266194 c!911897) b!5266191))

(assert (= (and b!5266194 (not c!911897)) b!5266198))

(assert (= (and b!5266191 (not res!2234288)) b!5266195))

(assert (= (and b!5266198 c!911895) b!5266188))

(assert (= (and b!5266198 (not c!911895)) b!5266193))

(assert (= (and b!5266188 (not res!2234289)) b!5266190))

(assert (= (or b!5266190 b!5266193) bm!373850))

(assert (= (or b!5266197 b!5266188) bm!373849))

(declare-fun m!6306398 () Bool)

(assert (=> b!5266191 m!6306398))

(assert (=> bm!373849 m!6305468))

(declare-fun m!6306400 () Bool)

(assert (=> b!5266195 m!6306400))

(declare-fun m!6306402 () Bool)

(assert (=> bm!373850 m!6306402))

(assert (=> b!5265015 d!1694939))

(declare-fun d!1694941 () Bool)

(declare-fun c!911899 () Bool)

(assert (=> d!1694941 (= c!911899 (isEmpty!32775 (tail!10387 (t!374139 s!2326))))))

(declare-fun e!3275466 () Bool)

(assert (=> d!1694941 (= (matchZipper!1127 (derivationStepZipper!1130 lt!2155737 (head!11290 (t!374139 s!2326))) (tail!10387 (t!374139 s!2326))) e!3275466)))

(declare-fun b!5266199 () Bool)

(assert (=> b!5266199 (= e!3275466 (nullableZipper!1286 (derivationStepZipper!1130 lt!2155737 (head!11290 (t!374139 s!2326)))))))

(declare-fun b!5266200 () Bool)

(assert (=> b!5266200 (= e!3275466 (matchZipper!1127 (derivationStepZipper!1130 (derivationStepZipper!1130 lt!2155737 (head!11290 (t!374139 s!2326))) (head!11290 (tail!10387 (t!374139 s!2326)))) (tail!10387 (tail!10387 (t!374139 s!2326)))))))

(assert (= (and d!1694941 c!911899) b!5266199))

(assert (= (and d!1694941 (not c!911899)) b!5266200))

(assert (=> d!1694941 m!6305436))

(assert (=> d!1694941 m!6305904))

(assert (=> b!5266199 m!6305584))

(declare-fun m!6306404 () Bool)

(assert (=> b!5266199 m!6306404))

(assert (=> b!5266200 m!6305436))

(assert (=> b!5266200 m!6305908))

(assert (=> b!5266200 m!6305584))

(assert (=> b!5266200 m!6305908))

(declare-fun m!6306406 () Bool)

(assert (=> b!5266200 m!6306406))

(assert (=> b!5266200 m!6305436))

(assert (=> b!5266200 m!6305912))

(assert (=> b!5266200 m!6306406))

(assert (=> b!5266200 m!6305912))

(declare-fun m!6306408 () Bool)

(assert (=> b!5266200 m!6306408))

(assert (=> b!5265243 d!1694941))

(declare-fun bs!1220583 () Bool)

(declare-fun d!1694943 () Bool)

(assert (= bs!1220583 (and d!1694943 b!5264610)))

(declare-fun lambda!265585 () Int)

(assert (=> bs!1220583 (= (= (head!11290 (t!374139 s!2326)) (h!67274 s!2326)) (= lambda!265585 lambda!265475))))

(declare-fun bs!1220584 () Bool)

(assert (= bs!1220584 (and d!1694943 d!1694715)))

(assert (=> bs!1220584 (= lambda!265585 lambda!265550)))

(declare-fun bs!1220585 () Bool)

(assert (= bs!1220585 (and d!1694943 d!1694741)))

(assert (=> bs!1220585 (= lambda!265585 lambda!265557)))

(assert (=> d!1694943 true))

(assert (=> d!1694943 (= (derivationStepZipper!1130 lt!2155737 (head!11290 (t!374139 s!2326))) (flatMap!610 lt!2155737 lambda!265585))))

(declare-fun bs!1220586 () Bool)

(assert (= bs!1220586 d!1694943))

(declare-fun m!6306410 () Bool)

(assert (=> bs!1220586 m!6306410))

(assert (=> b!5265243 d!1694943))

(assert (=> b!5265243 d!1694717))

(assert (=> b!5265243 d!1694723))

(assert (=> b!5265289 d!1694553))

(declare-fun bs!1220587 () Bool)

(declare-fun d!1694945 () Bool)

(assert (= bs!1220587 (and d!1694945 d!1694787)))

(declare-fun lambda!265586 () Int)

(assert (=> bs!1220587 (= lambda!265586 lambda!265571)))

(declare-fun bs!1220588 () Bool)

(assert (= bs!1220588 (and d!1694945 d!1694891)))

(assert (=> bs!1220588 (= lambda!265586 lambda!265580)))

(declare-fun bs!1220589 () Bool)

(assert (= bs!1220589 (and d!1694945 d!1694573)))

(assert (=> bs!1220589 (= lambda!265586 lambda!265522)))

(declare-fun bs!1220590 () Bool)

(assert (= bs!1220590 (and d!1694945 d!1694561)))

(assert (=> bs!1220590 (= lambda!265586 lambda!265516)))

(declare-fun bs!1220591 () Bool)

(assert (= bs!1220591 (and d!1694945 d!1694511)))

(assert (=> bs!1220591 (= lambda!265586 lambda!265505)))

(declare-fun bs!1220592 () Bool)

(assert (= bs!1220592 (and d!1694945 d!1694863)))

(assert (=> bs!1220592 (= lambda!265586 lambda!265578)))

(declare-fun bs!1220593 () Bool)

(assert (= bs!1220593 (and d!1694945 d!1694571)))

(assert (=> bs!1220593 (= lambda!265586 lambda!265519)))

(declare-fun bs!1220594 () Bool)

(assert (= bs!1220594 (and d!1694945 d!1694553)))

(assert (=> bs!1220594 (= lambda!265586 lambda!265515)))

(declare-fun lt!2155853 () List!60948)

(assert (=> d!1694945 (forall!14295 lt!2155853 lambda!265586)))

(declare-fun e!3275467 () List!60948)

(assert (=> d!1694945 (= lt!2155853 e!3275467)))

(declare-fun c!911900 () Bool)

(assert (=> d!1694945 (= c!911900 ((_ is Cons!60825) (t!374138 zl!343)))))

(assert (=> d!1694945 (= (unfocusZipperList!325 (t!374138 zl!343)) lt!2155853)))

(declare-fun b!5266201 () Bool)

(assert (=> b!5266201 (= e!3275467 (Cons!60824 (generalisedConcat!552 (exprs!4767 (h!67273 (t!374138 zl!343)))) (unfocusZipperList!325 (t!374138 (t!374138 zl!343)))))))

(declare-fun b!5266202 () Bool)

(assert (=> b!5266202 (= e!3275467 Nil!60824)))

(assert (= (and d!1694945 c!911900) b!5266201))

(assert (= (and d!1694945 (not c!911900)) b!5266202))

(declare-fun m!6306412 () Bool)

(assert (=> d!1694945 m!6306412))

(declare-fun m!6306414 () Bool)

(assert (=> b!5266201 m!6306414))

(declare-fun m!6306416 () Bool)

(assert (=> b!5266201 m!6306416))

(assert (=> b!5265289 d!1694945))

(declare-fun bm!373851 () Bool)

(declare-fun c!911901 () Bool)

(declare-fun call!373858 () Bool)

(assert (=> bm!373851 (= call!373858 (validRegex!6619 (ite c!911901 (regOne!30279 (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) (regOne!30278 (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))))))))

(declare-fun c!911902 () Bool)

(declare-fun call!373857 () Bool)

(declare-fun bm!373852 () Bool)

(assert (=> bm!373852 (= call!373857 (validRegex!6619 (ite c!911902 (reg!15212 (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) (ite c!911901 (regTwo!30279 (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) (regTwo!30278 (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))))))))))

(declare-fun b!5266203 () Bool)

(declare-fun e!3275471 () Bool)

(declare-fun e!3275472 () Bool)

(assert (=> b!5266203 (= e!3275471 e!3275472)))

(assert (=> b!5266203 (= c!911901 ((_ is Union!14883) (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))))))

(declare-fun b!5266204 () Bool)

(declare-fun e!3275470 () Bool)

(assert (=> b!5266204 (= e!3275470 call!373857)))

(declare-fun d!1694947 () Bool)

(declare-fun res!2234293 () Bool)

(declare-fun e!3275469 () Bool)

(assert (=> d!1694947 (=> res!2234293 e!3275469)))

(assert (=> d!1694947 (= res!2234293 ((_ is ElementMatch!14883) (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))))))

(assert (=> d!1694947 (= (validRegex!6619 (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))) e!3275469)))

(declare-fun b!5266205 () Bool)

(assert (=> b!5266205 (= e!3275469 e!3275471)))

(assert (=> b!5266205 (= c!911902 ((_ is Star!14883) (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))))))

(declare-fun b!5266206 () Bool)

(declare-fun e!3275468 () Bool)

(declare-fun call!373856 () Bool)

(assert (=> b!5266206 (= e!3275468 call!373856)))

(declare-fun b!5266207 () Bool)

(declare-fun e!3275473 () Bool)

(assert (=> b!5266207 (= e!3275473 call!373856)))

(declare-fun b!5266208 () Bool)

(assert (=> b!5266208 (= e!3275471 e!3275470)))

(declare-fun res!2234294 () Bool)

(assert (=> b!5266208 (= res!2234294 (not (nullable!5052 (reg!15212 (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))))))))))

(assert (=> b!5266208 (=> (not res!2234294) (not e!3275470))))

(declare-fun b!5266209 () Bool)

(declare-fun res!2234290 () Bool)

(assert (=> b!5266209 (=> (not res!2234290) (not e!3275473))))

(assert (=> b!5266209 (= res!2234290 call!373858)))

(assert (=> b!5266209 (= e!3275472 e!3275473)))

(declare-fun b!5266210 () Bool)

(declare-fun res!2234291 () Bool)

(declare-fun e!3275474 () Bool)

(assert (=> b!5266210 (=> res!2234291 e!3275474)))

(assert (=> b!5266210 (= res!2234291 (not ((_ is Concat!23728) (ite c!911663 (regOne!30279 (regTwo!30278 (regOne!30278 r!7292))) (regOne!30278 (regTwo!30278 (regOne!30278 r!7292)))))))))

(assert (=> b!5266210 (= e!3275472 e!3275474)))

(declare-fun bm!373853 () Bool)

(assert (=> bm!373853 (= call!373856 call!373857)))

(declare-fun b!5266211 () Bool)

(assert (=> b!5266211 (= e!3275474 e!3275468)))

(declare-fun res!2234292 () Bool)

(assert (=> b!5266211 (=> (not res!2234292) (not e!3275468))))

(assert (=> b!5266211 (= res!2234292 call!373858)))

(assert (= (and d!1694947 (not res!2234293)) b!5266205))

(assert (= (and b!5266205 c!911902) b!5266208))

(assert (= (and b!5266205 (not c!911902)) b!5266203))

(assert (= (and b!5266208 res!2234294) b!5266204))

(assert (= (and b!5266203 c!911901) b!5266209))

(assert (= (and b!5266203 (not c!911901)) b!5266210))

(assert (= (and b!5266209 res!2234290) b!5266207))

(assert (= (and b!5266210 (not res!2234291)) b!5266211))

(assert (= (and b!5266211 res!2234292) b!5266206))

(assert (= (or b!5266207 b!5266206) bm!373853))

(assert (= (or b!5266209 b!5266211) bm!373851))

(assert (= (or b!5266204 bm!373853) bm!373852))

(declare-fun m!6306418 () Bool)

(assert (=> bm!373851 m!6306418))

(declare-fun m!6306420 () Bool)

(assert (=> bm!373852 m!6306420))

(declare-fun m!6306422 () Bool)

(assert (=> b!5266208 m!6306422))

(assert (=> bm!373683 d!1694947))

(assert (=> bm!373643 d!1694775))

(assert (=> d!1694565 d!1694903))

(declare-fun bs!1220595 () Bool)

(declare-fun d!1694949 () Bool)

(assert (= bs!1220595 (and d!1694949 d!1694787)))

(declare-fun lambda!265587 () Int)

(assert (=> bs!1220595 (= lambda!265587 lambda!265571)))

(declare-fun bs!1220596 () Bool)

(assert (= bs!1220596 (and d!1694949 d!1694891)))

(assert (=> bs!1220596 (= lambda!265587 lambda!265580)))

(declare-fun bs!1220597 () Bool)

(assert (= bs!1220597 (and d!1694949 d!1694573)))

(assert (=> bs!1220597 (= lambda!265587 lambda!265522)))

(declare-fun bs!1220598 () Bool)

(assert (= bs!1220598 (and d!1694949 d!1694561)))

(assert (=> bs!1220598 (= lambda!265587 lambda!265516)))

(declare-fun bs!1220599 () Bool)

(assert (= bs!1220599 (and d!1694949 d!1694511)))

(assert (=> bs!1220599 (= lambda!265587 lambda!265505)))

(declare-fun bs!1220600 () Bool)

(assert (= bs!1220600 (and d!1694949 d!1694863)))

(assert (=> bs!1220600 (= lambda!265587 lambda!265578)))

(declare-fun bs!1220601 () Bool)

(assert (= bs!1220601 (and d!1694949 d!1694571)))

(assert (=> bs!1220601 (= lambda!265587 lambda!265519)))

(declare-fun bs!1220602 () Bool)

(assert (= bs!1220602 (and d!1694949 d!1694553)))

(assert (=> bs!1220602 (= lambda!265587 lambda!265515)))

(declare-fun bs!1220603 () Bool)

(assert (= bs!1220603 (and d!1694949 d!1694945)))

(assert (=> bs!1220603 (= lambda!265587 lambda!265586)))

(assert (=> d!1694949 (= (inv!80454 (h!67273 (t!374138 zl!343))) (forall!14295 (exprs!4767 (h!67273 (t!374138 zl!343))) lambda!265587))))

(declare-fun bs!1220604 () Bool)

(assert (= bs!1220604 d!1694949))

(declare-fun m!6306424 () Bool)

(assert (=> bs!1220604 m!6306424))

(assert (=> b!5265350 d!1694949))

(assert (=> d!1694531 d!1694775))

(assert (=> d!1694531 d!1694557))

(declare-fun d!1694951 () Bool)

(assert (=> d!1694951 (= ($colon$colon!1336 (exprs!4767 lt!2155735) (ite (or c!911543 c!911542) (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (h!67272 (exprs!4767 (h!67273 zl!343))))) (Cons!60824 (ite (or c!911543 c!911542) (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (h!67272 (exprs!4767 (h!67273 zl!343)))) (exprs!4767 lt!2155735)))))

(assert (=> bm!373599 d!1694951))

(declare-fun d!1694953 () Bool)

(assert (=> d!1694953 (= (isEmpty!32772 (t!374137 (unfocusZipperList!325 zl!343))) ((_ is Nil!60824) (t!374137 (unfocusZipperList!325 zl!343))))))

(assert (=> b!5265279 d!1694953))

(declare-fun bm!373854 () Bool)

(declare-fun call!373862 () List!60948)

(declare-fun c!911906 () Bool)

(declare-fun call!373864 () (InoxSet Context!8534))

(assert (=> bm!373854 (= call!373864 (derivationStepZipperDown!331 (ite c!911906 (regOne!30279 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))) (regOne!30278 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))))) (ite c!911906 (ite c!911544 lt!2155735 (Context!8535 call!373603)) (Context!8535 call!373862)) (h!67274 s!2326)))))

(declare-fun bm!373855 () Bool)

(declare-fun call!373860 () (InoxSet Context!8534))

(declare-fun call!373859 () (InoxSet Context!8534))

(assert (=> bm!373855 (= call!373860 call!373859)))

(declare-fun e!3275475 () (InoxSet Context!8534))

(declare-fun b!5266213 () Bool)

(assert (=> b!5266213 (= e!3275475 (store ((as const (Array Context!8534 Bool)) false) (ite c!911544 lt!2155735 (Context!8535 call!373603)) true))))

(declare-fun b!5266214 () Bool)

(declare-fun e!3275476 () (InoxSet Context!8534))

(assert (=> b!5266214 (= e!3275475 e!3275476)))

(assert (=> b!5266214 (= c!911906 ((_ is Union!14883) (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))))))

(declare-fun call!373863 () List!60948)

(declare-fun bm!373856 () Bool)

(declare-fun c!911905 () Bool)

(declare-fun c!911904 () Bool)

(assert (=> bm!373856 (= call!373859 (derivationStepZipperDown!331 (ite c!911906 (regTwo!30279 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))) (ite c!911905 (regTwo!30278 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))) (ite c!911904 (regOne!30278 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))) (reg!15212 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))))))) (ite (or c!911906 c!911905) (ite c!911544 lt!2155735 (Context!8535 call!373603)) (Context!8535 call!373863)) (h!67274 s!2326)))))

(declare-fun b!5266215 () Bool)

(declare-fun e!3275478 () Bool)

(assert (=> b!5266215 (= e!3275478 (nullable!5052 (regOne!30278 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))))))))

(declare-fun b!5266216 () Bool)

(declare-fun e!3275479 () (InoxSet Context!8534))

(declare-fun call!373861 () (InoxSet Context!8534))

(assert (=> b!5266216 (= e!3275479 call!373861)))

(declare-fun b!5266217 () Bool)

(declare-fun e!3275477 () (InoxSet Context!8534))

(assert (=> b!5266217 (= e!3275477 ((_ map or) call!373864 call!373860))))

(declare-fun bm!373857 () Bool)

(assert (=> bm!373857 (= call!373863 call!373862)))

(declare-fun b!5266218 () Bool)

(declare-fun e!3275480 () (InoxSet Context!8534))

(assert (=> b!5266218 (= e!3275480 ((as const (Array Context!8534 Bool)) false))))

(declare-fun c!911903 () Bool)

(declare-fun d!1694955 () Bool)

(assert (=> d!1694955 (= c!911903 (and ((_ is ElementMatch!14883) (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))) (= (c!911481 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))) (h!67274 s!2326))))))

(assert (=> d!1694955 (= (derivationStepZipperDown!331 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))) (ite c!911544 lt!2155735 (Context!8535 call!373603)) (h!67274 s!2326)) e!3275475)))

(declare-fun b!5266212 () Bool)

(assert (=> b!5266212 (= e!3275477 e!3275479)))

(assert (=> b!5266212 (= c!911904 ((_ is Concat!23728) (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))))))

(declare-fun b!5266219 () Bool)

(declare-fun c!911907 () Bool)

(assert (=> b!5266219 (= c!911907 ((_ is Star!14883) (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))))))

(assert (=> b!5266219 (= e!3275479 e!3275480)))

(declare-fun b!5266220 () Bool)

(assert (=> b!5266220 (= c!911905 e!3275478)))

(declare-fun res!2234295 () Bool)

(assert (=> b!5266220 (=> (not res!2234295) (not e!3275478))))

(assert (=> b!5266220 (= res!2234295 ((_ is Concat!23728) (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))))))

(assert (=> b!5266220 (= e!3275476 e!3275477)))

(declare-fun bm!373858 () Bool)

(assert (=> bm!373858 (= call!373862 ($colon$colon!1336 (exprs!4767 (ite c!911544 lt!2155735 (Context!8535 call!373603))) (ite (or c!911905 c!911904) (regTwo!30278 (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))) (ite c!911544 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))))))))

(declare-fun b!5266221 () Bool)

(assert (=> b!5266221 (= e!3275476 ((_ map or) call!373864 call!373859))))

(declare-fun bm!373859 () Bool)

(assert (=> bm!373859 (= call!373861 call!373860)))

(declare-fun b!5266222 () Bool)

(assert (=> b!5266222 (= e!3275480 call!373861)))

(assert (= (and d!1694955 c!911903) b!5266213))

(assert (= (and d!1694955 (not c!911903)) b!5266214))

(assert (= (and b!5266214 c!911906) b!5266221))

(assert (= (and b!5266214 (not c!911906)) b!5266220))

(assert (= (and b!5266220 res!2234295) b!5266215))

(assert (= (and b!5266220 c!911905) b!5266217))

(assert (= (and b!5266220 (not c!911905)) b!5266212))

(assert (= (and b!5266212 c!911904) b!5266216))

(assert (= (and b!5266212 (not c!911904)) b!5266219))

(assert (= (and b!5266219 c!911907) b!5266222))

(assert (= (and b!5266219 (not c!911907)) b!5266218))

(assert (= (or b!5266216 b!5266222) bm!373857))

(assert (= (or b!5266216 b!5266222) bm!373859))

(assert (= (or b!5266217 bm!373857) bm!373858))

(assert (= (or b!5266217 bm!373859) bm!373855))

(assert (= (or b!5266221 bm!373855) bm!373856))

(assert (= (or b!5266221 b!5266217) bm!373854))

(declare-fun m!6306426 () Bool)

(assert (=> bm!373854 m!6306426))

(declare-fun m!6306428 () Bool)

(assert (=> b!5266213 m!6306428))

(declare-fun m!6306430 () Bool)

(assert (=> b!5266215 m!6306430))

(declare-fun m!6306432 () Bool)

(assert (=> bm!373856 m!6306432))

(declare-fun m!6306434 () Bool)

(assert (=> bm!373858 m!6306434))

(assert (=> bm!373595 d!1694955))

(declare-fun bm!373864 () Bool)

(declare-fun call!373869 () Bool)

(declare-fun c!911910 () Bool)

(assert (=> bm!373864 (= call!373869 (nullable!5052 (ite c!911910 (regTwo!30279 (regOne!30278 (regOne!30278 r!7292))) (regTwo!30278 (regOne!30278 (regOne!30278 r!7292))))))))

(declare-fun b!5266237 () Bool)

(declare-fun e!3275496 () Bool)

(assert (=> b!5266237 (= e!3275496 call!373869)))

(declare-fun b!5266238 () Bool)

(declare-fun e!3275495 () Bool)

(declare-fun e!3275497 () Bool)

(assert (=> b!5266238 (= e!3275495 e!3275497)))

(declare-fun res!2234309 () Bool)

(declare-fun call!373870 () Bool)

(assert (=> b!5266238 (= res!2234309 call!373870)))

(assert (=> b!5266238 (=> (not res!2234309) (not e!3275497))))

(declare-fun b!5266239 () Bool)

(declare-fun e!3275494 () Bool)

(declare-fun e!3275493 () Bool)

(assert (=> b!5266239 (= e!3275494 e!3275493)))

(declare-fun res!2234306 () Bool)

(assert (=> b!5266239 (=> (not res!2234306) (not e!3275493))))

(assert (=> b!5266239 (= res!2234306 (and (not ((_ is EmptyLang!14883) (regOne!30278 (regOne!30278 r!7292)))) (not ((_ is ElementMatch!14883) (regOne!30278 (regOne!30278 r!7292))))))))

(declare-fun b!5266240 () Bool)

(declare-fun e!3275498 () Bool)

(assert (=> b!5266240 (= e!3275493 e!3275498)))

(declare-fun res!2234307 () Bool)

(assert (=> b!5266240 (=> res!2234307 e!3275498)))

(assert (=> b!5266240 (= res!2234307 ((_ is Star!14883) (regOne!30278 (regOne!30278 r!7292))))))

(declare-fun b!5266241 () Bool)

(assert (=> b!5266241 (= e!3275497 call!373869)))

(declare-fun b!5266242 () Bool)

(assert (=> b!5266242 (= e!3275495 e!3275496)))

(declare-fun res!2234308 () Bool)

(assert (=> b!5266242 (= res!2234308 call!373870)))

(assert (=> b!5266242 (=> res!2234308 e!3275496)))

(declare-fun b!5266243 () Bool)

(assert (=> b!5266243 (= e!3275498 e!3275495)))

(assert (=> b!5266243 (= c!911910 ((_ is Union!14883) (regOne!30278 (regOne!30278 r!7292))))))

(declare-fun d!1694957 () Bool)

(declare-fun res!2234310 () Bool)

(assert (=> d!1694957 (=> res!2234310 e!3275494)))

(assert (=> d!1694957 (= res!2234310 ((_ is EmptyExpr!14883) (regOne!30278 (regOne!30278 r!7292))))))

(assert (=> d!1694957 (= (nullableFct!1438 (regOne!30278 (regOne!30278 r!7292))) e!3275494)))

(declare-fun bm!373865 () Bool)

(assert (=> bm!373865 (= call!373870 (nullable!5052 (ite c!911910 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))))))

(assert (= (and d!1694957 (not res!2234310)) b!5266239))

(assert (= (and b!5266239 res!2234306) b!5266240))

(assert (= (and b!5266240 (not res!2234307)) b!5266243))

(assert (= (and b!5266243 c!911910) b!5266242))

(assert (= (and b!5266243 (not c!911910)) b!5266238))

(assert (= (and b!5266242 (not res!2234308)) b!5266237))

(assert (= (and b!5266238 res!2234309) b!5266241))

(assert (= (or b!5266237 b!5266241) bm!373864))

(assert (= (or b!5266242 b!5266238) bm!373865))

(declare-fun m!6306436 () Bool)

(assert (=> bm!373864 m!6306436))

(declare-fun m!6306438 () Bool)

(assert (=> bm!373865 m!6306438))

(assert (=> d!1694559 d!1694957))

(declare-fun d!1694959 () Bool)

(assert (=> d!1694959 (= (isConcat!344 lt!2155798) ((_ is Concat!23728) lt!2155798))))

(assert (=> b!5265204 d!1694959))

(declare-fun d!1694961 () Bool)

(declare-fun res!2234311 () Bool)

(declare-fun e!3275499 () Bool)

(assert (=> d!1694961 (=> res!2234311 e!3275499)))

(assert (=> d!1694961 (= res!2234311 ((_ is Nil!60824) (exprs!4767 (h!67273 zl!343))))))

(assert (=> d!1694961 (= (forall!14295 (exprs!4767 (h!67273 zl!343)) lambda!265505) e!3275499)))

(declare-fun b!5266244 () Bool)

(declare-fun e!3275500 () Bool)

(assert (=> b!5266244 (= e!3275499 e!3275500)))

(declare-fun res!2234312 () Bool)

(assert (=> b!5266244 (=> (not res!2234312) (not e!3275500))))

(assert (=> b!5266244 (= res!2234312 (dynLambda!24037 lambda!265505 (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5266245 () Bool)

(assert (=> b!5266245 (= e!3275500 (forall!14295 (t!374137 (exprs!4767 (h!67273 zl!343))) lambda!265505))))

(assert (= (and d!1694961 (not res!2234311)) b!5266244))

(assert (= (and b!5266244 res!2234312) b!5266245))

(declare-fun b_lambda!203157 () Bool)

(assert (=> (not b_lambda!203157) (not b!5266244)))

(declare-fun m!6306440 () Bool)

(assert (=> b!5266244 m!6306440))

(declare-fun m!6306442 () Bool)

(assert (=> b!5266245 m!6306442))

(assert (=> d!1694511 d!1694961))

(declare-fun d!1694963 () Bool)

(assert (=> d!1694963 (= (nullable!5052 (h!67272 (exprs!4767 lt!2155735))) (nullableFct!1438 (h!67272 (exprs!4767 lt!2155735))))))

(declare-fun bs!1220605 () Bool)

(assert (= bs!1220605 d!1694963))

(declare-fun m!6306444 () Bool)

(assert (=> bs!1220605 m!6306444))

(assert (=> b!5264877 d!1694963))

(declare-fun b!5266247 () Bool)

(declare-fun e!3275501 () List!60950)

(assert (=> b!5266247 (= e!3275501 (Cons!60826 (h!67274 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826))) (++!13266 (t!374139 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826))) (t!374139 s!2326))))))

(declare-fun b!5266246 () Bool)

(assert (=> b!5266246 (= e!3275501 (t!374139 s!2326))))

(declare-fun b!5266249 () Bool)

(declare-fun e!3275502 () Bool)

(declare-fun lt!2155854 () List!60950)

(assert (=> b!5266249 (= e!3275502 (or (not (= (t!374139 s!2326) Nil!60826)) (= lt!2155854 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)))))))

(declare-fun d!1694965 () Bool)

(assert (=> d!1694965 e!3275502))

(declare-fun res!2234313 () Bool)

(assert (=> d!1694965 (=> (not res!2234313) (not e!3275502))))

(assert (=> d!1694965 (= res!2234313 (= (content!10815 lt!2155854) ((_ map or) (content!10815 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826))) (content!10815 (t!374139 s!2326)))))))

(assert (=> d!1694965 (= lt!2155854 e!3275501)))

(declare-fun c!911911 () Bool)

(assert (=> d!1694965 (= c!911911 ((_ is Nil!60826) (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826))))))

(assert (=> d!1694965 (= (++!13266 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)) (t!374139 s!2326)) lt!2155854)))

(declare-fun b!5266248 () Bool)

(declare-fun res!2234314 () Bool)

(assert (=> b!5266248 (=> (not res!2234314) (not e!3275502))))

(assert (=> b!5266248 (= res!2234314 (= (size!39743 lt!2155854) (+ (size!39743 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826))) (size!39743 (t!374139 s!2326)))))))

(assert (= (and d!1694965 c!911911) b!5266246))

(assert (= (and d!1694965 (not c!911911)) b!5266247))

(assert (= (and d!1694965 res!2234313) b!5266248))

(assert (= (and b!5266248 res!2234314) b!5266249))

(declare-fun m!6306446 () Bool)

(assert (=> b!5266247 m!6306446))

(declare-fun m!6306448 () Bool)

(assert (=> d!1694965 m!6306448))

(assert (=> d!1694965 m!6305640))

(declare-fun m!6306450 () Bool)

(assert (=> d!1694965 m!6306450))

(declare-fun m!6306452 () Bool)

(assert (=> d!1694965 m!6306452))

(declare-fun m!6306454 () Bool)

(assert (=> b!5266248 m!6306454))

(assert (=> b!5266248 m!6305640))

(declare-fun m!6306456 () Bool)

(assert (=> b!5266248 m!6306456))

(declare-fun m!6306458 () Bool)

(assert (=> b!5266248 m!6306458))

(assert (=> b!5265316 d!1694965))

(declare-fun b!5266251 () Bool)

(declare-fun e!3275503 () List!60950)

(assert (=> b!5266251 (= e!3275503 (Cons!60826 (h!67274 Nil!60826) (++!13266 (t!374139 Nil!60826) (Cons!60826 (h!67274 s!2326) Nil!60826))))))

(declare-fun b!5266250 () Bool)

(assert (=> b!5266250 (= e!3275503 (Cons!60826 (h!67274 s!2326) Nil!60826))))

(declare-fun b!5266253 () Bool)

(declare-fun e!3275504 () Bool)

(declare-fun lt!2155855 () List!60950)

(assert (=> b!5266253 (= e!3275504 (or (not (= (Cons!60826 (h!67274 s!2326) Nil!60826) Nil!60826)) (= lt!2155855 Nil!60826)))))

(declare-fun d!1694967 () Bool)

(assert (=> d!1694967 e!3275504))

(declare-fun res!2234315 () Bool)

(assert (=> d!1694967 (=> (not res!2234315) (not e!3275504))))

(assert (=> d!1694967 (= res!2234315 (= (content!10815 lt!2155855) ((_ map or) (content!10815 Nil!60826) (content!10815 (Cons!60826 (h!67274 s!2326) Nil!60826)))))))

(assert (=> d!1694967 (= lt!2155855 e!3275503)))

(declare-fun c!911912 () Bool)

(assert (=> d!1694967 (= c!911912 ((_ is Nil!60826) Nil!60826))))

(assert (=> d!1694967 (= (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)) lt!2155855)))

(declare-fun b!5266252 () Bool)

(declare-fun res!2234316 () Bool)

(assert (=> b!5266252 (=> (not res!2234316) (not e!3275504))))

(assert (=> b!5266252 (= res!2234316 (= (size!39743 lt!2155855) (+ (size!39743 Nil!60826) (size!39743 (Cons!60826 (h!67274 s!2326) Nil!60826)))))))

(assert (= (and d!1694967 c!911912) b!5266250))

(assert (= (and d!1694967 (not c!911912)) b!5266251))

(assert (= (and d!1694967 res!2234315) b!5266252))

(assert (= (and b!5266252 res!2234316) b!5266253))

(declare-fun m!6306460 () Bool)

(assert (=> b!5266251 m!6306460))

(declare-fun m!6306462 () Bool)

(assert (=> d!1694967 m!6306462))

(declare-fun m!6306464 () Bool)

(assert (=> d!1694967 m!6306464))

(declare-fun m!6306466 () Bool)

(assert (=> d!1694967 m!6306466))

(declare-fun m!6306468 () Bool)

(assert (=> b!5266252 m!6306468))

(declare-fun m!6306470 () Bool)

(assert (=> b!5266252 m!6306470))

(declare-fun m!6306472 () Bool)

(assert (=> b!5266252 m!6306472))

(assert (=> b!5265316 d!1694967))

(declare-fun d!1694969 () Bool)

(assert (=> d!1694969 (= (++!13266 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)) (t!374139 s!2326)) s!2326)))

(declare-fun lt!2155858 () Unit!153050)

(declare-fun choose!39292 (List!60950 C!30036 List!60950 List!60950) Unit!153050)

(assert (=> d!1694969 (= lt!2155858 (choose!39292 Nil!60826 (h!67274 s!2326) (t!374139 s!2326) s!2326))))

(assert (=> d!1694969 (= (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) (t!374139 s!2326))) s!2326)))

(assert (=> d!1694969 (= (lemmaMoveElementToOtherListKeepsConcatEq!1681 Nil!60826 (h!67274 s!2326) (t!374139 s!2326) s!2326) lt!2155858)))

(declare-fun bs!1220606 () Bool)

(assert (= bs!1220606 d!1694969))

(assert (=> bs!1220606 m!6305640))

(assert (=> bs!1220606 m!6305640))

(assert (=> bs!1220606 m!6305642))

(declare-fun m!6306474 () Bool)

(assert (=> bs!1220606 m!6306474))

(declare-fun m!6306476 () Bool)

(assert (=> bs!1220606 m!6306476))

(assert (=> b!5265316 d!1694969))

(declare-fun b!5266254 () Bool)

(declare-fun res!2234321 () Bool)

(declare-fun e!3275507 () Bool)

(assert (=> b!5266254 (=> (not res!2234321) (not e!3275507))))

(declare-fun lt!2155860 () Option!14994)

(assert (=> b!5266254 (= res!2234321 (matchR!7068 (regTwo!30278 r!7292) (_2!35385 (get!20913 lt!2155860))))))

(declare-fun b!5266255 () Bool)

(declare-fun e!3275506 () Option!14994)

(declare-fun e!3275509 () Option!14994)

(assert (=> b!5266255 (= e!3275506 e!3275509)))

(declare-fun c!911913 () Bool)

(assert (=> b!5266255 (= c!911913 ((_ is Nil!60826) (t!374139 s!2326)))))

(declare-fun b!5266256 () Bool)

(assert (=> b!5266256 (= e!3275506 (Some!14993 (tuple2!64165 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)) (t!374139 s!2326))))))

(declare-fun b!5266257 () Bool)

(declare-fun res!2234318 () Bool)

(assert (=> b!5266257 (=> (not res!2234318) (not e!3275507))))

(assert (=> b!5266257 (= res!2234318 (matchR!7068 (regOne!30278 r!7292) (_1!35385 (get!20913 lt!2155860))))))

(declare-fun b!5266258 () Bool)

(assert (=> b!5266258 (= e!3275507 (= (++!13266 (_1!35385 (get!20913 lt!2155860)) (_2!35385 (get!20913 lt!2155860))) s!2326))))

(declare-fun b!5266259 () Bool)

(declare-fun e!3275508 () Bool)

(assert (=> b!5266259 (= e!3275508 (not (isDefined!11697 lt!2155860)))))

(declare-fun b!5266260 () Bool)

(assert (=> b!5266260 (= e!3275509 None!14993)))

(declare-fun b!5266261 () Bool)

(declare-fun lt!2155859 () Unit!153050)

(declare-fun lt!2155861 () Unit!153050)

(assert (=> b!5266261 (= lt!2155859 lt!2155861)))

(assert (=> b!5266261 (= (++!13266 (++!13266 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)) (Cons!60826 (h!67274 (t!374139 s!2326)) Nil!60826)) (t!374139 (t!374139 s!2326))) s!2326)))

(assert (=> b!5266261 (= lt!2155861 (lemmaMoveElementToOtherListKeepsConcatEq!1681 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)) (h!67274 (t!374139 s!2326)) (t!374139 (t!374139 s!2326)) s!2326))))

(assert (=> b!5266261 (= e!3275509 (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) (++!13266 (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)) (Cons!60826 (h!67274 (t!374139 s!2326)) Nil!60826)) (t!374139 (t!374139 s!2326)) s!2326))))

(declare-fun d!1694971 () Bool)

(assert (=> d!1694971 e!3275508))

(declare-fun res!2234319 () Bool)

(assert (=> d!1694971 (=> res!2234319 e!3275508)))

(assert (=> d!1694971 (= res!2234319 e!3275507)))

(declare-fun res!2234317 () Bool)

(assert (=> d!1694971 (=> (not res!2234317) (not e!3275507))))

(assert (=> d!1694971 (= res!2234317 (isDefined!11697 lt!2155860))))

(assert (=> d!1694971 (= lt!2155860 e!3275506)))

(declare-fun c!911914 () Bool)

(declare-fun e!3275505 () Bool)

(assert (=> d!1694971 (= c!911914 e!3275505)))

(declare-fun res!2234320 () Bool)

(assert (=> d!1694971 (=> (not res!2234320) (not e!3275505))))

(assert (=> d!1694971 (= res!2234320 (matchR!7068 (regOne!30278 r!7292) (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826))))))

(assert (=> d!1694971 (validRegex!6619 (regOne!30278 r!7292))))

(assert (=> d!1694971 (= (findConcatSeparation!1408 (regOne!30278 r!7292) (regTwo!30278 r!7292) (++!13266 Nil!60826 (Cons!60826 (h!67274 s!2326) Nil!60826)) (t!374139 s!2326) s!2326) lt!2155860)))

(declare-fun b!5266262 () Bool)

(assert (=> b!5266262 (= e!3275505 (matchR!7068 (regTwo!30278 r!7292) (t!374139 s!2326)))))

(assert (= (and d!1694971 res!2234320) b!5266262))

(assert (= (and d!1694971 c!911914) b!5266256))

(assert (= (and d!1694971 (not c!911914)) b!5266255))

(assert (= (and b!5266255 c!911913) b!5266260))

(assert (= (and b!5266255 (not c!911913)) b!5266261))

(assert (= (and d!1694971 res!2234317) b!5266257))

(assert (= (and b!5266257 res!2234318) b!5266254))

(assert (= (and b!5266254 res!2234321) b!5266258))

(assert (= (and d!1694971 (not res!2234319)) b!5266259))

(declare-fun m!6306478 () Bool)

(assert (=> d!1694971 m!6306478))

(assert (=> d!1694971 m!6305640))

(declare-fun m!6306480 () Bool)

(assert (=> d!1694971 m!6306480))

(assert (=> d!1694971 m!6305628))

(declare-fun m!6306482 () Bool)

(assert (=> b!5266258 m!6306482))

(declare-fun m!6306484 () Bool)

(assert (=> b!5266258 m!6306484))

(declare-fun m!6306486 () Bool)

(assert (=> b!5266262 m!6306486))

(assert (=> b!5266254 m!6306482))

(declare-fun m!6306488 () Bool)

(assert (=> b!5266254 m!6306488))

(assert (=> b!5266257 m!6306482))

(declare-fun m!6306490 () Bool)

(assert (=> b!5266257 m!6306490))

(assert (=> b!5266259 m!6306478))

(assert (=> b!5266261 m!6305640))

(declare-fun m!6306492 () Bool)

(assert (=> b!5266261 m!6306492))

(assert (=> b!5266261 m!6306492))

(declare-fun m!6306494 () Bool)

(assert (=> b!5266261 m!6306494))

(assert (=> b!5266261 m!6305640))

(declare-fun m!6306496 () Bool)

(assert (=> b!5266261 m!6306496))

(assert (=> b!5266261 m!6306492))

(declare-fun m!6306498 () Bool)

(assert (=> b!5266261 m!6306498))

(assert (=> b!5265316 d!1694971))

(declare-fun d!1694973 () Bool)

(declare-fun res!2234326 () Bool)

(declare-fun e!3275514 () Bool)

(assert (=> d!1694973 (=> res!2234326 e!3275514)))

(assert (=> d!1694973 (= res!2234326 ((_ is Nil!60825) lt!2155779))))

(assert (=> d!1694973 (= (noDuplicate!1241 lt!2155779) e!3275514)))

(declare-fun b!5266267 () Bool)

(declare-fun e!3275515 () Bool)

(assert (=> b!5266267 (= e!3275514 e!3275515)))

(declare-fun res!2234327 () Bool)

(assert (=> b!5266267 (=> (not res!2234327) (not e!3275515))))

(declare-fun contains!19691 (List!60949 Context!8534) Bool)

(assert (=> b!5266267 (= res!2234327 (not (contains!19691 (t!374138 lt!2155779) (h!67273 lt!2155779))))))

(declare-fun b!5266268 () Bool)

(assert (=> b!5266268 (= e!3275515 (noDuplicate!1241 (t!374138 lt!2155779)))))

(assert (= (and d!1694973 (not res!2234326)) b!5266267))

(assert (= (and b!5266267 res!2234327) b!5266268))

(declare-fun m!6306500 () Bool)

(assert (=> b!5266267 m!6306500))

(declare-fun m!6306502 () Bool)

(assert (=> b!5266268 m!6306502))

(assert (=> d!1694497 d!1694973))

(declare-fun d!1694975 () Bool)

(declare-fun e!3275523 () Bool)

(assert (=> d!1694975 e!3275523))

(declare-fun res!2234332 () Bool)

(assert (=> d!1694975 (=> (not res!2234332) (not e!3275523))))

(declare-fun res!2234333 () List!60949)

(assert (=> d!1694975 (= res!2234332 (noDuplicate!1241 res!2234333))))

(declare-fun e!3275524 () Bool)

(assert (=> d!1694975 e!3275524))

(assert (=> d!1694975 (= (choose!39284 z!1189) res!2234333)))

(declare-fun b!5266276 () Bool)

(declare-fun e!3275522 () Bool)

(declare-fun tp!1472008 () Bool)

(assert (=> b!5266276 (= e!3275522 tp!1472008)))

(declare-fun b!5266275 () Bool)

(declare-fun tp!1472009 () Bool)

(assert (=> b!5266275 (= e!3275524 (and (inv!80454 (h!67273 res!2234333)) e!3275522 tp!1472009))))

(declare-fun b!5266277 () Bool)

(assert (=> b!5266277 (= e!3275523 (= (content!10814 res!2234333) z!1189))))

(assert (= b!5266275 b!5266276))

(assert (= (and d!1694975 ((_ is Cons!60825) res!2234333)) b!5266275))

(assert (= (and d!1694975 res!2234332) b!5266277))

(declare-fun m!6306504 () Bool)

(assert (=> d!1694975 m!6306504))

(declare-fun m!6306506 () Bool)

(assert (=> b!5266275 m!6306506))

(declare-fun m!6306508 () Bool)

(assert (=> b!5266277 m!6306508))

(assert (=> d!1694497 d!1694975))

(declare-fun bm!373866 () Bool)

(declare-fun call!373871 () Bool)

(assert (=> bm!373866 (= call!373871 (isEmpty!32775 (tail!10387 s!2326)))))

(declare-fun b!5266278 () Bool)

(declare-fun e!3275526 () Bool)

(declare-fun e!3275527 () Bool)

(assert (=> b!5266278 (= e!3275526 e!3275527)))

(declare-fun res!2234335 () Bool)

(assert (=> b!5266278 (=> (not res!2234335) (not e!3275527))))

(declare-fun lt!2155862 () Bool)

(assert (=> b!5266278 (= res!2234335 (not lt!2155862))))

(declare-fun b!5266279 () Bool)

(declare-fun e!3275529 () Bool)

(assert (=> b!5266279 (= e!3275527 e!3275529)))

(declare-fun res!2234338 () Bool)

(assert (=> b!5266279 (=> res!2234338 e!3275529)))

(assert (=> b!5266279 (= res!2234338 call!373871)))

(declare-fun b!5266280 () Bool)

(declare-fun res!2234339 () Bool)

(assert (=> b!5266280 (=> res!2234339 e!3275526)))

(declare-fun e!3275528 () Bool)

(assert (=> b!5266280 (= res!2234339 e!3275528)))

(declare-fun res!2234341 () Bool)

(assert (=> b!5266280 (=> (not res!2234341) (not e!3275528))))

(assert (=> b!5266280 (= res!2234341 lt!2155862)))

(declare-fun b!5266281 () Bool)

(declare-fun e!3275530 () Bool)

(declare-fun e!3275525 () Bool)

(assert (=> b!5266281 (= e!3275530 e!3275525)))

(declare-fun c!911915 () Bool)

(assert (=> b!5266281 (= c!911915 ((_ is EmptyLang!14883) (derivativeStep!4107 r!7292 (head!11290 s!2326))))))

(declare-fun b!5266282 () Bool)

(assert (=> b!5266282 (= e!3275525 (not lt!2155862))))

(declare-fun b!5266283 () Bool)

(assert (=> b!5266283 (= e!3275529 (not (= (head!11290 (tail!10387 s!2326)) (c!911481 (derivativeStep!4107 r!7292 (head!11290 s!2326))))))))

(declare-fun b!5266284 () Bool)

(assert (=> b!5266284 (= e!3275528 (= (head!11290 (tail!10387 s!2326)) (c!911481 (derivativeStep!4107 r!7292 (head!11290 s!2326)))))))

(declare-fun b!5266285 () Bool)

(declare-fun res!2234337 () Bool)

(assert (=> b!5266285 (=> res!2234337 e!3275526)))

(assert (=> b!5266285 (= res!2234337 (not ((_ is ElementMatch!14883) (derivativeStep!4107 r!7292 (head!11290 s!2326)))))))

(assert (=> b!5266285 (= e!3275525 e!3275526)))

(declare-fun b!5266287 () Bool)

(declare-fun e!3275531 () Bool)

(assert (=> b!5266287 (= e!3275531 (matchR!7068 (derivativeStep!4107 (derivativeStep!4107 r!7292 (head!11290 s!2326)) (head!11290 (tail!10387 s!2326))) (tail!10387 (tail!10387 s!2326))))))

(declare-fun b!5266288 () Bool)

(assert (=> b!5266288 (= e!3275530 (= lt!2155862 call!373871))))

(declare-fun b!5266289 () Bool)

(declare-fun res!2234334 () Bool)

(assert (=> b!5266289 (=> (not res!2234334) (not e!3275528))))

(assert (=> b!5266289 (= res!2234334 (isEmpty!32775 (tail!10387 (tail!10387 s!2326))))))

(declare-fun b!5266290 () Bool)

(declare-fun res!2234336 () Bool)

(assert (=> b!5266290 (=> res!2234336 e!3275529)))

(assert (=> b!5266290 (= res!2234336 (not (isEmpty!32775 (tail!10387 (tail!10387 s!2326)))))))

(declare-fun b!5266291 () Bool)

(assert (=> b!5266291 (= e!3275531 (nullable!5052 (derivativeStep!4107 r!7292 (head!11290 s!2326))))))

(declare-fun b!5266286 () Bool)

(declare-fun res!2234340 () Bool)

(assert (=> b!5266286 (=> (not res!2234340) (not e!3275528))))

(assert (=> b!5266286 (= res!2234340 (not call!373871))))

(declare-fun d!1694977 () Bool)

(assert (=> d!1694977 e!3275530))

(declare-fun c!911917 () Bool)

(assert (=> d!1694977 (= c!911917 ((_ is EmptyExpr!14883) (derivativeStep!4107 r!7292 (head!11290 s!2326))))))

(assert (=> d!1694977 (= lt!2155862 e!3275531)))

(declare-fun c!911916 () Bool)

(assert (=> d!1694977 (= c!911916 (isEmpty!32775 (tail!10387 s!2326)))))

(assert (=> d!1694977 (validRegex!6619 (derivativeStep!4107 r!7292 (head!11290 s!2326)))))

(assert (=> d!1694977 (= (matchR!7068 (derivativeStep!4107 r!7292 (head!11290 s!2326)) (tail!10387 s!2326)) lt!2155862)))

(assert (= (and d!1694977 c!911916) b!5266291))

(assert (= (and d!1694977 (not c!911916)) b!5266287))

(assert (= (and d!1694977 c!911917) b!5266288))

(assert (= (and d!1694977 (not c!911917)) b!5266281))

(assert (= (and b!5266281 c!911915) b!5266282))

(assert (= (and b!5266281 (not c!911915)) b!5266285))

(assert (= (and b!5266285 (not res!2234337)) b!5266280))

(assert (= (and b!5266280 res!2234341) b!5266286))

(assert (= (and b!5266286 res!2234340) b!5266289))

(assert (= (and b!5266289 res!2234334) b!5266284))

(assert (= (and b!5266280 (not res!2234339)) b!5266278))

(assert (= (and b!5266278 res!2234335) b!5266279))

(assert (= (and b!5266279 (not res!2234338)) b!5266290))

(assert (= (and b!5266290 (not res!2234336)) b!5266283))

(assert (= (or b!5266288 b!5266279 b!5266286) bm!373866))

(assert (=> b!5266289 m!6305516))

(declare-fun m!6306510 () Bool)

(assert (=> b!5266289 m!6306510))

(assert (=> b!5266289 m!6306510))

(declare-fun m!6306512 () Bool)

(assert (=> b!5266289 m!6306512))

(assert (=> b!5266283 m!6305516))

(declare-fun m!6306514 () Bool)

(assert (=> b!5266283 m!6306514))

(assert (=> b!5266291 m!6305524))

(declare-fun m!6306516 () Bool)

(assert (=> b!5266291 m!6306516))

(assert (=> d!1694977 m!6305516))

(assert (=> d!1694977 m!6305518))

(assert (=> d!1694977 m!6305524))

(declare-fun m!6306518 () Bool)

(assert (=> d!1694977 m!6306518))

(assert (=> bm!373866 m!6305516))

(assert (=> bm!373866 m!6305518))

(assert (=> b!5266284 m!6305516))

(assert (=> b!5266284 m!6306514))

(assert (=> b!5266287 m!6305516))

(assert (=> b!5266287 m!6306514))

(assert (=> b!5266287 m!6305524))

(assert (=> b!5266287 m!6306514))

(declare-fun m!6306520 () Bool)

(assert (=> b!5266287 m!6306520))

(assert (=> b!5266287 m!6305516))

(assert (=> b!5266287 m!6306510))

(assert (=> b!5266287 m!6306520))

(assert (=> b!5266287 m!6306510))

(declare-fun m!6306522 () Bool)

(assert (=> b!5266287 m!6306522))

(assert (=> b!5266290 m!6305516))

(assert (=> b!5266290 m!6306510))

(assert (=> b!5266290 m!6306510))

(assert (=> b!5266290 m!6306512))

(assert (=> b!5265109 d!1694977))

(declare-fun b!5266312 () Bool)

(declare-fun e!3275545 () Regex!14883)

(declare-fun e!3275543 () Regex!14883)

(assert (=> b!5266312 (= e!3275545 e!3275543)))

(declare-fun c!911928 () Bool)

(assert (=> b!5266312 (= c!911928 ((_ is Star!14883) r!7292))))

(declare-fun b!5266313 () Bool)

(declare-fun e!3275544 () Regex!14883)

(declare-fun e!3275542 () Regex!14883)

(assert (=> b!5266313 (= e!3275544 e!3275542)))

(declare-fun c!911932 () Bool)

(assert (=> b!5266313 (= c!911932 ((_ is ElementMatch!14883) r!7292))))

(declare-fun bm!373875 () Bool)

(declare-fun call!373883 () Regex!14883)

(declare-fun call!373882 () Regex!14883)

(assert (=> bm!373875 (= call!373883 call!373882)))

(declare-fun bm!373876 () Bool)

(declare-fun c!911929 () Bool)

(declare-fun call!373881 () Regex!14883)

(assert (=> bm!373876 (= call!373881 (derivativeStep!4107 (ite c!911929 (regTwo!30279 r!7292) (ite c!911928 (reg!15212 r!7292) (regOne!30278 r!7292))) (head!11290 s!2326)))))

(declare-fun bm!373877 () Bool)

(declare-fun call!373880 () Regex!14883)

(assert (=> bm!373877 (= call!373880 call!373881)))

(declare-fun b!5266314 () Bool)

(declare-fun e!3275546 () Regex!14883)

(assert (=> b!5266314 (= e!3275546 (Union!14883 (Concat!23728 call!373883 (regTwo!30278 r!7292)) EmptyLang!14883))))

(declare-fun b!5266315 () Bool)

(assert (=> b!5266315 (= c!911929 ((_ is Union!14883) r!7292))))

(assert (=> b!5266315 (= e!3275542 e!3275545)))

(declare-fun b!5266316 () Bool)

(assert (=> b!5266316 (= e!3275542 (ite (= (head!11290 s!2326) (c!911481 r!7292)) EmptyExpr!14883 EmptyLang!14883))))

(declare-fun bm!373878 () Bool)

(declare-fun c!911930 () Bool)

(assert (=> bm!373878 (= call!373882 (derivativeStep!4107 (ite c!911929 (regOne!30279 r!7292) (ite c!911930 (regTwo!30278 r!7292) (regOne!30278 r!7292))) (head!11290 s!2326)))))

(declare-fun b!5266318 () Bool)

(assert (=> b!5266318 (= e!3275545 (Union!14883 call!373882 call!373881))))

(declare-fun b!5266319 () Bool)

(assert (=> b!5266319 (= e!3275543 (Concat!23728 call!373880 r!7292))))

(declare-fun b!5266320 () Bool)

(assert (=> b!5266320 (= e!3275546 (Union!14883 (Concat!23728 call!373880 (regTwo!30278 r!7292)) call!373883))))

(declare-fun b!5266321 () Bool)

(assert (=> b!5266321 (= e!3275544 EmptyLang!14883)))

(declare-fun b!5266317 () Bool)

(assert (=> b!5266317 (= c!911930 (nullable!5052 (regOne!30278 r!7292)))))

(assert (=> b!5266317 (= e!3275543 e!3275546)))

(declare-fun d!1694979 () Bool)

(declare-fun lt!2155865 () Regex!14883)

(assert (=> d!1694979 (validRegex!6619 lt!2155865)))

(assert (=> d!1694979 (= lt!2155865 e!3275544)))

(declare-fun c!911931 () Bool)

(assert (=> d!1694979 (= c!911931 (or ((_ is EmptyExpr!14883) r!7292) ((_ is EmptyLang!14883) r!7292)))))

(assert (=> d!1694979 (validRegex!6619 r!7292)))

(assert (=> d!1694979 (= (derivativeStep!4107 r!7292 (head!11290 s!2326)) lt!2155865)))

(assert (= (and d!1694979 c!911931) b!5266321))

(assert (= (and d!1694979 (not c!911931)) b!5266313))

(assert (= (and b!5266313 c!911932) b!5266316))

(assert (= (and b!5266313 (not c!911932)) b!5266315))

(assert (= (and b!5266315 c!911929) b!5266318))

(assert (= (and b!5266315 (not c!911929)) b!5266312))

(assert (= (and b!5266312 c!911928) b!5266319))

(assert (= (and b!5266312 (not c!911928)) b!5266317))

(assert (= (and b!5266317 c!911930) b!5266320))

(assert (= (and b!5266317 (not c!911930)) b!5266314))

(assert (= (or b!5266320 b!5266314) bm!373875))

(assert (= (or b!5266319 b!5266320) bm!373877))

(assert (= (or b!5266318 bm!373877) bm!373876))

(assert (= (or b!5266318 bm!373875) bm!373878))

(assert (=> bm!373876 m!6305520))

(declare-fun m!6306524 () Bool)

(assert (=> bm!373876 m!6306524))

(assert (=> bm!373878 m!6305520))

(declare-fun m!6306526 () Bool)

(assert (=> bm!373878 m!6306526))

(assert (=> b!5266317 m!6306338))

(declare-fun m!6306528 () Bool)

(assert (=> d!1694979 m!6306528))

(assert (=> d!1694979 m!6305204))

(assert (=> b!5265109 d!1694979))

(assert (=> b!5265109 d!1694861))

(assert (=> b!5265109 d!1694871))

(declare-fun bm!373879 () Bool)

(declare-fun call!373884 () Bool)

(assert (=> bm!373879 (= call!373884 (isEmpty!32775 (_1!35385 (get!20913 lt!2155815))))))

(declare-fun b!5266322 () Bool)

(declare-fun e!3275548 () Bool)

(declare-fun e!3275549 () Bool)

(assert (=> b!5266322 (= e!3275548 e!3275549)))

(declare-fun res!2234343 () Bool)

(assert (=> b!5266322 (=> (not res!2234343) (not e!3275549))))

(declare-fun lt!2155866 () Bool)

(assert (=> b!5266322 (= res!2234343 (not lt!2155866))))

(declare-fun b!5266323 () Bool)

(declare-fun e!3275551 () Bool)

(assert (=> b!5266323 (= e!3275549 e!3275551)))

(declare-fun res!2234346 () Bool)

(assert (=> b!5266323 (=> res!2234346 e!3275551)))

(assert (=> b!5266323 (= res!2234346 call!373884)))

(declare-fun b!5266324 () Bool)

(declare-fun res!2234347 () Bool)

(assert (=> b!5266324 (=> res!2234347 e!3275548)))

(declare-fun e!3275550 () Bool)

(assert (=> b!5266324 (= res!2234347 e!3275550)))

(declare-fun res!2234349 () Bool)

(assert (=> b!5266324 (=> (not res!2234349) (not e!3275550))))

(assert (=> b!5266324 (= res!2234349 lt!2155866)))

(declare-fun b!5266325 () Bool)

(declare-fun e!3275552 () Bool)

(declare-fun e!3275547 () Bool)

(assert (=> b!5266325 (= e!3275552 e!3275547)))

(declare-fun c!911933 () Bool)

(assert (=> b!5266325 (= c!911933 ((_ is EmptyLang!14883) (regOne!30278 r!7292)))))

(declare-fun b!5266326 () Bool)

(assert (=> b!5266326 (= e!3275547 (not lt!2155866))))

(declare-fun b!5266327 () Bool)

(assert (=> b!5266327 (= e!3275551 (not (= (head!11290 (_1!35385 (get!20913 lt!2155815))) (c!911481 (regOne!30278 r!7292)))))))

(declare-fun b!5266328 () Bool)

(assert (=> b!5266328 (= e!3275550 (= (head!11290 (_1!35385 (get!20913 lt!2155815))) (c!911481 (regOne!30278 r!7292))))))

(declare-fun b!5266329 () Bool)

(declare-fun res!2234345 () Bool)

(assert (=> b!5266329 (=> res!2234345 e!3275548)))

(assert (=> b!5266329 (= res!2234345 (not ((_ is ElementMatch!14883) (regOne!30278 r!7292))))))

(assert (=> b!5266329 (= e!3275547 e!3275548)))

(declare-fun b!5266331 () Bool)

(declare-fun e!3275553 () Bool)

(assert (=> b!5266331 (= e!3275553 (matchR!7068 (derivativeStep!4107 (regOne!30278 r!7292) (head!11290 (_1!35385 (get!20913 lt!2155815)))) (tail!10387 (_1!35385 (get!20913 lt!2155815)))))))

(declare-fun b!5266332 () Bool)

(assert (=> b!5266332 (= e!3275552 (= lt!2155866 call!373884))))

(declare-fun b!5266333 () Bool)

(declare-fun res!2234342 () Bool)

(assert (=> b!5266333 (=> (not res!2234342) (not e!3275550))))

(assert (=> b!5266333 (= res!2234342 (isEmpty!32775 (tail!10387 (_1!35385 (get!20913 lt!2155815)))))))

(declare-fun b!5266334 () Bool)

(declare-fun res!2234344 () Bool)

(assert (=> b!5266334 (=> res!2234344 e!3275551)))

(assert (=> b!5266334 (= res!2234344 (not (isEmpty!32775 (tail!10387 (_1!35385 (get!20913 lt!2155815))))))))

(declare-fun b!5266335 () Bool)

(assert (=> b!5266335 (= e!3275553 (nullable!5052 (regOne!30278 r!7292)))))

(declare-fun b!5266330 () Bool)

(declare-fun res!2234348 () Bool)

(assert (=> b!5266330 (=> (not res!2234348) (not e!3275550))))

(assert (=> b!5266330 (= res!2234348 (not call!373884))))

(declare-fun d!1694981 () Bool)

(assert (=> d!1694981 e!3275552))

(declare-fun c!911935 () Bool)

(assert (=> d!1694981 (= c!911935 ((_ is EmptyExpr!14883) (regOne!30278 r!7292)))))

(assert (=> d!1694981 (= lt!2155866 e!3275553)))

(declare-fun c!911934 () Bool)

(assert (=> d!1694981 (= c!911934 (isEmpty!32775 (_1!35385 (get!20913 lt!2155815))))))

(assert (=> d!1694981 (validRegex!6619 (regOne!30278 r!7292))))

(assert (=> d!1694981 (= (matchR!7068 (regOne!30278 r!7292) (_1!35385 (get!20913 lt!2155815))) lt!2155866)))

(assert (= (and d!1694981 c!911934) b!5266335))

(assert (= (and d!1694981 (not c!911934)) b!5266331))

(assert (= (and d!1694981 c!911935) b!5266332))

(assert (= (and d!1694981 (not c!911935)) b!5266325))

(assert (= (and b!5266325 c!911933) b!5266326))

(assert (= (and b!5266325 (not c!911933)) b!5266329))

(assert (= (and b!5266329 (not res!2234345)) b!5266324))

(assert (= (and b!5266324 res!2234349) b!5266330))

(assert (= (and b!5266330 res!2234348) b!5266333))

(assert (= (and b!5266333 res!2234342) b!5266328))

(assert (= (and b!5266324 (not res!2234347)) b!5266322))

(assert (= (and b!5266322 res!2234343) b!5266323))

(assert (= (and b!5266323 (not res!2234346)) b!5266334))

(assert (= (and b!5266334 (not res!2234344)) b!5266327))

(assert (= (or b!5266332 b!5266323 b!5266330) bm!373879))

(declare-fun m!6306530 () Bool)

(assert (=> b!5266333 m!6306530))

(assert (=> b!5266333 m!6306530))

(declare-fun m!6306532 () Bool)

(assert (=> b!5266333 m!6306532))

(declare-fun m!6306534 () Bool)

(assert (=> b!5266327 m!6306534))

(assert (=> b!5266335 m!6306338))

(declare-fun m!6306536 () Bool)

(assert (=> d!1694981 m!6306536))

(assert (=> d!1694981 m!6305628))

(assert (=> bm!373879 m!6306536))

(assert (=> b!5266328 m!6306534))

(assert (=> b!5266331 m!6306534))

(assert (=> b!5266331 m!6306534))

(declare-fun m!6306538 () Bool)

(assert (=> b!5266331 m!6306538))

(assert (=> b!5266331 m!6306530))

(assert (=> b!5266331 m!6306538))

(assert (=> b!5266331 m!6306530))

(declare-fun m!6306540 () Bool)

(assert (=> b!5266331 m!6306540))

(assert (=> b!5266334 m!6306530))

(assert (=> b!5266334 m!6306530))

(assert (=> b!5266334 m!6306532))

(assert (=> b!5265312 d!1694981))

(assert (=> b!5265312 d!1694825))

(assert (=> b!5265105 d!1694861))

(declare-fun d!1694983 () Bool)

(assert (=> d!1694983 (= (isEmptyLang!829 lt!2155804) ((_ is EmptyLang!14883) lt!2155804))))

(assert (=> b!5265277 d!1694983))

(declare-fun d!1694985 () Bool)

(assert (=> d!1694985 (= (isEmpty!32772 (exprs!4767 (h!67273 zl!343))) ((_ is Nil!60824) (exprs!4767 (h!67273 zl!343))))))

(assert (=> b!5265202 d!1694985))

(declare-fun d!1694987 () Bool)

(assert (=> d!1694987 (= (nullable!5052 (reg!15212 (regTwo!30278 (regOne!30278 r!7292)))) (nullableFct!1438 (reg!15212 (regTwo!30278 (regOne!30278 r!7292)))))))

(declare-fun bs!1220607 () Bool)

(assert (= bs!1220607 d!1694987))

(declare-fun m!6306542 () Bool)

(assert (=> bs!1220607 m!6306542))

(assert (=> b!5265251 d!1694987))

(assert (=> b!5265314 d!1694899))

(declare-fun call!373890 () (InoxSet Context!8534))

(declare-fun bm!373880 () Bool)

(declare-fun c!911939 () Bool)

(declare-fun call!373888 () List!60948)

(assert (=> bm!373880 (= call!373890 (derivationStepZipperDown!331 (ite c!911939 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))) (ite c!911939 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))) (Context!8535 call!373888)) (h!67274 s!2326)))))

(declare-fun bm!373881 () Bool)

(declare-fun call!373886 () (InoxSet Context!8534))

(declare-fun call!373885 () (InoxSet Context!8534))

(assert (=> bm!373881 (= call!373886 call!373885)))

(declare-fun b!5266337 () Bool)

(declare-fun e!3275554 () (InoxSet Context!8534))

(assert (=> b!5266337 (= e!3275554 (store ((as const (Array Context!8534 Bool)) false) (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))) true))))

(declare-fun b!5266338 () Bool)

(declare-fun e!3275555 () (InoxSet Context!8534))

(assert (=> b!5266338 (= e!3275554 e!3275555)))

(assert (=> b!5266338 (= c!911939 ((_ is Union!14883) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun bm!373882 () Bool)

(declare-fun c!911938 () Bool)

(declare-fun c!911937 () Bool)

(declare-fun call!373889 () List!60948)

(assert (=> bm!373882 (= call!373885 (derivationStepZipperDown!331 (ite c!911939 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911938 (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (ite c!911937 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (reg!15212 (h!67272 (exprs!4767 (h!67273 zl!343))))))) (ite (or c!911939 c!911938) (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))) (Context!8535 call!373889)) (h!67274 s!2326)))))

(declare-fun b!5266339 () Bool)

(declare-fun e!3275557 () Bool)

(assert (=> b!5266339 (= e!3275557 (nullable!5052 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))))))

(declare-fun b!5266340 () Bool)

(declare-fun e!3275558 () (InoxSet Context!8534))

(declare-fun call!373887 () (InoxSet Context!8534))

(assert (=> b!5266340 (= e!3275558 call!373887)))

(declare-fun b!5266341 () Bool)

(declare-fun e!3275556 () (InoxSet Context!8534))

(assert (=> b!5266341 (= e!3275556 ((_ map or) call!373890 call!373886))))

(declare-fun bm!373883 () Bool)

(assert (=> bm!373883 (= call!373889 call!373888)))

(declare-fun b!5266342 () Bool)

(declare-fun e!3275559 () (InoxSet Context!8534))

(assert (=> b!5266342 (= e!3275559 ((as const (Array Context!8534 Bool)) false))))

(declare-fun d!1694989 () Bool)

(declare-fun c!911936 () Bool)

(assert (=> d!1694989 (= c!911936 (and ((_ is ElementMatch!14883) (h!67272 (exprs!4767 (h!67273 zl!343)))) (= (c!911481 (h!67272 (exprs!4767 (h!67273 zl!343)))) (h!67274 s!2326))))))

(assert (=> d!1694989 (= (derivationStepZipperDown!331 (h!67272 (exprs!4767 (h!67273 zl!343))) (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343)))) (h!67274 s!2326)) e!3275554)))

(declare-fun b!5266336 () Bool)

(assert (=> b!5266336 (= e!3275556 e!3275558)))

(assert (=> b!5266336 (= c!911937 ((_ is Concat!23728) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5266343 () Bool)

(declare-fun c!911940 () Bool)

(assert (=> b!5266343 (= c!911940 ((_ is Star!14883) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(assert (=> b!5266343 (= e!3275558 e!3275559)))

(declare-fun b!5266344 () Bool)

(assert (=> b!5266344 (= c!911938 e!3275557)))

(declare-fun res!2234350 () Bool)

(assert (=> b!5266344 (=> (not res!2234350) (not e!3275557))))

(assert (=> b!5266344 (= res!2234350 ((_ is Concat!23728) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(assert (=> b!5266344 (= e!3275555 e!3275556)))

(declare-fun bm!373884 () Bool)

(assert (=> bm!373884 (= call!373888 ($colon$colon!1336 (exprs!4767 (Context!8535 (t!374137 (exprs!4767 (h!67273 zl!343))))) (ite (or c!911938 c!911937) (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))) (h!67272 (exprs!4767 (h!67273 zl!343))))))))

(declare-fun b!5266345 () Bool)

(assert (=> b!5266345 (= e!3275555 ((_ map or) call!373890 call!373885))))

(declare-fun bm!373885 () Bool)

(assert (=> bm!373885 (= call!373887 call!373886)))

(declare-fun b!5266346 () Bool)

(assert (=> b!5266346 (= e!3275559 call!373887)))

(assert (= (and d!1694989 c!911936) b!5266337))

(assert (= (and d!1694989 (not c!911936)) b!5266338))

(assert (= (and b!5266338 c!911939) b!5266345))

(assert (= (and b!5266338 (not c!911939)) b!5266344))

(assert (= (and b!5266344 res!2234350) b!5266339))

(assert (= (and b!5266344 c!911938) b!5266341))

(assert (= (and b!5266344 (not c!911938)) b!5266336))

(assert (= (and b!5266336 c!911937) b!5266340))

(assert (= (and b!5266336 (not c!911937)) b!5266343))

(assert (= (and b!5266343 c!911940) b!5266346))

(assert (= (and b!5266343 (not c!911940)) b!5266342))

(assert (= (or b!5266340 b!5266346) bm!373883))

(assert (= (or b!5266340 b!5266346) bm!373885))

(assert (= (or b!5266341 bm!373883) bm!373884))

(assert (= (or b!5266341 bm!373885) bm!373881))

(assert (= (or b!5266345 bm!373881) bm!373882))

(assert (= (or b!5266345 b!5266341) bm!373880))

(declare-fun m!6306544 () Bool)

(assert (=> bm!373880 m!6306544))

(declare-fun m!6306546 () Bool)

(assert (=> b!5266337 m!6306546))

(assert (=> b!5266339 m!6305328))

(declare-fun m!6306548 () Bool)

(assert (=> bm!373882 m!6306548))

(declare-fun m!6306550 () Bool)

(assert (=> bm!373884 m!6306550))

(assert (=> bm!373604 d!1694989))

(declare-fun d!1694991 () Bool)

(assert (=> d!1694991 (= (nullable!5052 r!7292) (nullableFct!1438 r!7292))))

(declare-fun bs!1220608 () Bool)

(assert (= bs!1220608 d!1694991))

(declare-fun m!6306552 () Bool)

(assert (=> bs!1220608 m!6306552))

(assert (=> b!5265113 d!1694991))

(declare-fun bm!373886 () Bool)

(declare-fun call!373893 () Bool)

(declare-fun c!911941 () Bool)

(assert (=> bm!373886 (= call!373893 (validRegex!6619 (ite c!911941 (regOne!30279 lt!2155798) (regOne!30278 lt!2155798))))))

(declare-fun c!911942 () Bool)

(declare-fun call!373892 () Bool)

(declare-fun bm!373887 () Bool)

(assert (=> bm!373887 (= call!373892 (validRegex!6619 (ite c!911942 (reg!15212 lt!2155798) (ite c!911941 (regTwo!30279 lt!2155798) (regTwo!30278 lt!2155798)))))))

(declare-fun b!5266347 () Bool)

(declare-fun e!3275563 () Bool)

(declare-fun e!3275564 () Bool)

(assert (=> b!5266347 (= e!3275563 e!3275564)))

(assert (=> b!5266347 (= c!911941 ((_ is Union!14883) lt!2155798))))

(declare-fun b!5266348 () Bool)

(declare-fun e!3275562 () Bool)

(assert (=> b!5266348 (= e!3275562 call!373892)))

(declare-fun d!1694993 () Bool)

(declare-fun res!2234354 () Bool)

(declare-fun e!3275561 () Bool)

(assert (=> d!1694993 (=> res!2234354 e!3275561)))

(assert (=> d!1694993 (= res!2234354 ((_ is ElementMatch!14883) lt!2155798))))

(assert (=> d!1694993 (= (validRegex!6619 lt!2155798) e!3275561)))

(declare-fun b!5266349 () Bool)

(assert (=> b!5266349 (= e!3275561 e!3275563)))

(assert (=> b!5266349 (= c!911942 ((_ is Star!14883) lt!2155798))))

(declare-fun b!5266350 () Bool)

(declare-fun e!3275560 () Bool)

(declare-fun call!373891 () Bool)

(assert (=> b!5266350 (= e!3275560 call!373891)))

(declare-fun b!5266351 () Bool)

(declare-fun e!3275565 () Bool)

(assert (=> b!5266351 (= e!3275565 call!373891)))

(declare-fun b!5266352 () Bool)

(assert (=> b!5266352 (= e!3275563 e!3275562)))

(declare-fun res!2234355 () Bool)

(assert (=> b!5266352 (= res!2234355 (not (nullable!5052 (reg!15212 lt!2155798))))))

(assert (=> b!5266352 (=> (not res!2234355) (not e!3275562))))

(declare-fun b!5266353 () Bool)

(declare-fun res!2234351 () Bool)

(assert (=> b!5266353 (=> (not res!2234351) (not e!3275565))))

(assert (=> b!5266353 (= res!2234351 call!373893)))

(assert (=> b!5266353 (= e!3275564 e!3275565)))

(declare-fun b!5266354 () Bool)

(declare-fun res!2234352 () Bool)

(declare-fun e!3275566 () Bool)

(assert (=> b!5266354 (=> res!2234352 e!3275566)))

(assert (=> b!5266354 (= res!2234352 (not ((_ is Concat!23728) lt!2155798)))))

(assert (=> b!5266354 (= e!3275564 e!3275566)))

(declare-fun bm!373888 () Bool)

(assert (=> bm!373888 (= call!373891 call!373892)))

(declare-fun b!5266355 () Bool)

(assert (=> b!5266355 (= e!3275566 e!3275560)))

(declare-fun res!2234353 () Bool)

(assert (=> b!5266355 (=> (not res!2234353) (not e!3275560))))

(assert (=> b!5266355 (= res!2234353 call!373893)))

(assert (= (and d!1694993 (not res!2234354)) b!5266349))

(assert (= (and b!5266349 c!911942) b!5266352))

(assert (= (and b!5266349 (not c!911942)) b!5266347))

(assert (= (and b!5266352 res!2234355) b!5266348))

(assert (= (and b!5266347 c!911941) b!5266353))

(assert (= (and b!5266347 (not c!911941)) b!5266354))

(assert (= (and b!5266353 res!2234351) b!5266351))

(assert (= (and b!5266354 (not res!2234352)) b!5266355))

(assert (= (and b!5266355 res!2234353) b!5266350))

(assert (= (or b!5266351 b!5266350) bm!373888))

(assert (= (or b!5266353 b!5266355) bm!373886))

(assert (= (or b!5266348 bm!373888) bm!373887))

(declare-fun m!6306554 () Bool)

(assert (=> bm!373886 m!6306554))

(declare-fun m!6306556 () Bool)

(assert (=> bm!373887 m!6306556))

(declare-fun m!6306558 () Bool)

(assert (=> b!5266352 m!6306558))

(assert (=> d!1694553 d!1694993))

(declare-fun d!1694995 () Bool)

(declare-fun res!2234356 () Bool)

(declare-fun e!3275567 () Bool)

(assert (=> d!1694995 (=> res!2234356 e!3275567)))

(assert (=> d!1694995 (= res!2234356 ((_ is Nil!60824) (exprs!4767 (h!67273 zl!343))))))

(assert (=> d!1694995 (= (forall!14295 (exprs!4767 (h!67273 zl!343)) lambda!265515) e!3275567)))

(declare-fun b!5266356 () Bool)

(declare-fun e!3275568 () Bool)

(assert (=> b!5266356 (= e!3275567 e!3275568)))

(declare-fun res!2234357 () Bool)

(assert (=> b!5266356 (=> (not res!2234357) (not e!3275568))))

(assert (=> b!5266356 (= res!2234357 (dynLambda!24037 lambda!265515 (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5266357 () Bool)

(assert (=> b!5266357 (= e!3275568 (forall!14295 (t!374137 (exprs!4767 (h!67273 zl!343))) lambda!265515))))

(assert (= (and d!1694995 (not res!2234356)) b!5266356))

(assert (= (and b!5266356 res!2234357) b!5266357))

(declare-fun b_lambda!203159 () Bool)

(assert (=> (not b_lambda!203159) (not b!5266356)))

(declare-fun m!6306560 () Bool)

(assert (=> b!5266356 m!6306560))

(declare-fun m!6306562 () Bool)

(assert (=> b!5266357 m!6306562))

(assert (=> d!1694553 d!1694995))

(declare-fun d!1694997 () Bool)

(assert (=> d!1694997 (= (nullable!5052 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))) (nullableFct!1438 (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343))))))))

(declare-fun bs!1220609 () Bool)

(assert (= bs!1220609 d!1694997))

(declare-fun m!6306564 () Bool)

(assert (=> bs!1220609 m!6306564))

(assert (=> b!5264813 d!1694997))

(assert (=> d!1694505 d!1694903))

(declare-fun d!1694999 () Bool)

(assert (=> d!1694999 (= (isEmptyExpr!821 lt!2155798) ((_ is EmptyExpr!14883) lt!2155798))))

(assert (=> b!5265206 d!1694999))

(declare-fun bm!373889 () Bool)

(declare-fun call!373896 () Bool)

(declare-fun c!911943 () Bool)

(assert (=> bm!373889 (= call!373896 (validRegex!6619 (ite c!911943 (regOne!30279 (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292))) (regOne!30278 (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292))))))))

(declare-fun bm!373890 () Bool)

(declare-fun c!911944 () Bool)

(declare-fun call!373895 () Bool)

(assert (=> bm!373890 (= call!373895 (validRegex!6619 (ite c!911944 (reg!15212 (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292))) (ite c!911943 (regTwo!30279 (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292))) (regTwo!30278 (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292)))))))))

(declare-fun b!5266358 () Bool)

(declare-fun e!3275572 () Bool)

(declare-fun e!3275573 () Bool)

(assert (=> b!5266358 (= e!3275572 e!3275573)))

(assert (=> b!5266358 (= c!911943 ((_ is Union!14883) (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292))))))

(declare-fun b!5266359 () Bool)

(declare-fun e!3275571 () Bool)

(assert (=> b!5266359 (= e!3275571 call!373895)))

(declare-fun d!1695001 () Bool)

(declare-fun res!2234361 () Bool)

(declare-fun e!3275570 () Bool)

(assert (=> d!1695001 (=> res!2234361 e!3275570)))

(assert (=> d!1695001 (= res!2234361 ((_ is ElementMatch!14883) (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292))))))

(assert (=> d!1695001 (= (validRegex!6619 (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292))) e!3275570)))

(declare-fun b!5266360 () Bool)

(assert (=> b!5266360 (= e!3275570 e!3275572)))

(assert (=> b!5266360 (= c!911944 ((_ is Star!14883) (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292))))))

(declare-fun b!5266361 () Bool)

(declare-fun e!3275569 () Bool)

(declare-fun call!373894 () Bool)

(assert (=> b!5266361 (= e!3275569 call!373894)))

(declare-fun b!5266362 () Bool)

(declare-fun e!3275574 () Bool)

(assert (=> b!5266362 (= e!3275574 call!373894)))

(declare-fun b!5266363 () Bool)

(assert (=> b!5266363 (= e!3275572 e!3275571)))

(declare-fun res!2234362 () Bool)

(assert (=> b!5266363 (= res!2234362 (not (nullable!5052 (reg!15212 (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292))))))))

(assert (=> b!5266363 (=> (not res!2234362) (not e!3275571))))

(declare-fun b!5266364 () Bool)

(declare-fun res!2234358 () Bool)

(assert (=> b!5266364 (=> (not res!2234358) (not e!3275574))))

(assert (=> b!5266364 (= res!2234358 call!373896)))

(assert (=> b!5266364 (= e!3275573 e!3275574)))

(declare-fun b!5266365 () Bool)

(declare-fun res!2234359 () Bool)

(declare-fun e!3275575 () Bool)

(assert (=> b!5266365 (=> res!2234359 e!3275575)))

(assert (=> b!5266365 (= res!2234359 (not ((_ is Concat!23728) (ite c!911659 (regOne!30279 r!7292) (regOne!30278 r!7292)))))))

(assert (=> b!5266365 (= e!3275573 e!3275575)))

(declare-fun bm!373891 () Bool)

(assert (=> bm!373891 (= call!373894 call!373895)))

(declare-fun b!5266366 () Bool)

(assert (=> b!5266366 (= e!3275575 e!3275569)))

(declare-fun res!2234360 () Bool)

(assert (=> b!5266366 (=> (not res!2234360) (not e!3275569))))

(assert (=> b!5266366 (= res!2234360 call!373896)))

(assert (= (and d!1695001 (not res!2234361)) b!5266360))

(assert (= (and b!5266360 c!911944) b!5266363))

(assert (= (and b!5266360 (not c!911944)) b!5266358))

(assert (= (and b!5266363 res!2234362) b!5266359))

(assert (= (and b!5266358 c!911943) b!5266364))

(assert (= (and b!5266358 (not c!911943)) b!5266365))

(assert (= (and b!5266364 res!2234358) b!5266362))

(assert (= (and b!5266365 (not res!2234359)) b!5266366))

(assert (= (and b!5266366 res!2234360) b!5266361))

(assert (= (or b!5266362 b!5266361) bm!373891))

(assert (= (or b!5266364 b!5266366) bm!373889))

(assert (= (or b!5266359 bm!373891) bm!373890))

(declare-fun m!6306566 () Bool)

(assert (=> bm!373889 m!6306566))

(declare-fun m!6306568 () Bool)

(assert (=> bm!373890 m!6306568))

(declare-fun m!6306570 () Bool)

(assert (=> b!5266363 m!6306570))

(assert (=> bm!373680 d!1695001))

(declare-fun call!373902 () (InoxSet Context!8534))

(declare-fun call!373900 () List!60948)

(declare-fun bm!373892 () Bool)

(declare-fun c!911948 () Bool)

(assert (=> bm!373892 (= call!373902 (derivationStepZipperDown!331 (ite c!911948 (regOne!30279 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))) (regOne!30278 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292)))))))) (ite c!911948 (ite (or c!911573 c!911572) lt!2155735 (Context!8535 call!373621)) (Context!8535 call!373900)) (h!67274 s!2326)))))

(declare-fun bm!373893 () Bool)

(declare-fun call!373898 () (InoxSet Context!8534))

(declare-fun call!373897 () (InoxSet Context!8534))

(assert (=> bm!373893 (= call!373898 call!373897)))

(declare-fun b!5266368 () Bool)

(declare-fun e!3275576 () (InoxSet Context!8534))

(assert (=> b!5266368 (= e!3275576 (store ((as const (Array Context!8534 Bool)) false) (ite (or c!911573 c!911572) lt!2155735 (Context!8535 call!373621)) true))))

(declare-fun b!5266369 () Bool)

(declare-fun e!3275577 () (InoxSet Context!8534))

(assert (=> b!5266369 (= e!3275576 e!3275577)))

(assert (=> b!5266369 (= c!911948 ((_ is Union!14883) (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))))))

(declare-fun c!911947 () Bool)

(declare-fun c!911946 () Bool)

(declare-fun bm!373894 () Bool)

(declare-fun call!373901 () List!60948)

(assert (=> bm!373894 (= call!373897 (derivationStepZipperDown!331 (ite c!911948 (regTwo!30279 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))) (ite c!911947 (regTwo!30278 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))) (ite c!911946 (regOne!30278 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))) (reg!15212 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292)))))))))) (ite (or c!911948 c!911947) (ite (or c!911573 c!911572) lt!2155735 (Context!8535 call!373621)) (Context!8535 call!373901)) (h!67274 s!2326)))))

(declare-fun b!5266370 () Bool)

(declare-fun e!3275579 () Bool)

(assert (=> b!5266370 (= e!3275579 (nullable!5052 (regOne!30278 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292)))))))))))

(declare-fun b!5266371 () Bool)

(declare-fun e!3275580 () (InoxSet Context!8534))

(declare-fun call!373899 () (InoxSet Context!8534))

(assert (=> b!5266371 (= e!3275580 call!373899)))

(declare-fun b!5266372 () Bool)

(declare-fun e!3275578 () (InoxSet Context!8534))

(assert (=> b!5266372 (= e!3275578 ((_ map or) call!373902 call!373898))))

(declare-fun bm!373895 () Bool)

(assert (=> bm!373895 (= call!373901 call!373900)))

(declare-fun b!5266373 () Bool)

(declare-fun e!3275581 () (InoxSet Context!8534))

(assert (=> b!5266373 (= e!3275581 ((as const (Array Context!8534 Bool)) false))))

(declare-fun d!1695003 () Bool)

(declare-fun c!911945 () Bool)

(assert (=> d!1695003 (= c!911945 (and ((_ is ElementMatch!14883) (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))) (= (c!911481 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))) (h!67274 s!2326))))))

(assert (=> d!1695003 (= (derivationStepZipperDown!331 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292)))))) (ite (or c!911573 c!911572) lt!2155735 (Context!8535 call!373621)) (h!67274 s!2326)) e!3275576)))

(declare-fun b!5266367 () Bool)

(assert (=> b!5266367 (= e!3275578 e!3275580)))

(assert (=> b!5266367 (= c!911946 ((_ is Concat!23728) (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))))))

(declare-fun b!5266374 () Bool)

(declare-fun c!911949 () Bool)

(assert (=> b!5266374 (= c!911949 ((_ is Star!14883) (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))))))

(assert (=> b!5266374 (= e!3275580 e!3275581)))

(declare-fun b!5266375 () Bool)

(assert (=> b!5266375 (= c!911947 e!3275579)))

(declare-fun res!2234363 () Bool)

(assert (=> b!5266375 (=> (not res!2234363) (not e!3275579))))

(assert (=> b!5266375 (= res!2234363 ((_ is Concat!23728) (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))))))

(assert (=> b!5266375 (= e!3275577 e!3275578)))

(declare-fun bm!373896 () Bool)

(assert (=> bm!373896 (= call!373900 ($colon$colon!1336 (exprs!4767 (ite (or c!911573 c!911572) lt!2155735 (Context!8535 call!373621))) (ite (or c!911947 c!911946) (regTwo!30278 (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292))))))) (ite c!911573 (regTwo!30279 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911572 (regTwo!30278 (regTwo!30278 (regOne!30278 r!7292))) (ite c!911571 (regOne!30278 (regTwo!30278 (regOne!30278 r!7292))) (reg!15212 (regTwo!30278 (regOne!30278 r!7292)))))))))))

(declare-fun b!5266376 () Bool)

(assert (=> b!5266376 (= e!3275577 ((_ map or) call!373902 call!373897))))

(declare-fun bm!373897 () Bool)

(assert (=> bm!373897 (= call!373899 call!373898)))

(declare-fun b!5266377 () Bool)

(assert (=> b!5266377 (= e!3275581 call!373899)))

(assert (= (and d!1695003 c!911945) b!5266368))

(assert (= (and d!1695003 (not c!911945)) b!5266369))

(assert (= (and b!5266369 c!911948) b!5266376))

(assert (= (and b!5266369 (not c!911948)) b!5266375))

(assert (= (and b!5266375 res!2234363) b!5266370))

(assert (= (and b!5266375 c!911947) b!5266372))

(assert (= (and b!5266375 (not c!911947)) b!5266367))

(assert (= (and b!5266367 c!911946) b!5266371))

(assert (= (and b!5266367 (not c!911946)) b!5266374))

(assert (= (and b!5266374 c!911949) b!5266377))

(assert (= (and b!5266374 (not c!911949)) b!5266373))

(assert (= (or b!5266371 b!5266377) bm!373895))

(assert (= (or b!5266371 b!5266377) bm!373897))

(assert (= (or b!5266372 bm!373895) bm!373896))

(assert (= (or b!5266372 bm!373897) bm!373893))

(assert (= (or b!5266376 bm!373893) bm!373894))

(assert (= (or b!5266376 b!5266372) bm!373892))

(declare-fun m!6306572 () Bool)

(assert (=> bm!373892 m!6306572))

(declare-fun m!6306574 () Bool)

(assert (=> b!5266368 m!6306574))

(declare-fun m!6306576 () Bool)

(assert (=> b!5266370 m!6306576))

(declare-fun m!6306578 () Bool)

(assert (=> bm!373894 m!6306578))

(declare-fun m!6306580 () Bool)

(assert (=> bm!373896 m!6306580))

(assert (=> bm!373614 d!1695003))

(declare-fun c!911953 () Bool)

(declare-fun bm!373898 () Bool)

(declare-fun call!373906 () List!60948)

(declare-fun call!373908 () (InoxSet Context!8534))

(assert (=> bm!373898 (= call!373908 (derivationStepZipperDown!331 (ite c!911953 (regOne!30279 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))) (regOne!30278 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292)))))) (ite c!911953 (ite c!911568 (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373614)) (Context!8535 call!373906)) (h!67274 s!2326)))))

(declare-fun bm!373899 () Bool)

(declare-fun call!373904 () (InoxSet Context!8534))

(declare-fun call!373903 () (InoxSet Context!8534))

(assert (=> bm!373899 (= call!373904 call!373903)))

(declare-fun e!3275582 () (InoxSet Context!8534))

(declare-fun b!5266379 () Bool)

(assert (=> b!5266379 (= e!3275582 (store ((as const (Array Context!8534 Bool)) false) (ite c!911568 (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373614)) true))))

(declare-fun b!5266380 () Bool)

(declare-fun e!3275583 () (InoxSet Context!8534))

(assert (=> b!5266380 (= e!3275582 e!3275583)))

(assert (=> b!5266380 (= c!911953 ((_ is Union!14883) (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))))))

(declare-fun bm!373900 () Bool)

(declare-fun c!911952 () Bool)

(declare-fun c!911951 () Bool)

(declare-fun call!373907 () List!60948)

(assert (=> bm!373900 (= call!373903 (derivationStepZipperDown!331 (ite c!911953 (regTwo!30279 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))) (ite c!911952 (regTwo!30278 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))) (ite c!911951 (regOne!30278 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))) (reg!15212 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292)))))))) (ite (or c!911953 c!911952) (ite c!911568 (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373614)) (Context!8535 call!373907)) (h!67274 s!2326)))))

(declare-fun b!5266381 () Bool)

(declare-fun e!3275585 () Bool)

(assert (=> b!5266381 (= e!3275585 (nullable!5052 (regOne!30278 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292)))))))))

(declare-fun b!5266382 () Bool)

(declare-fun e!3275586 () (InoxSet Context!8534))

(declare-fun call!373905 () (InoxSet Context!8534))

(assert (=> b!5266382 (= e!3275586 call!373905)))

(declare-fun b!5266383 () Bool)

(declare-fun e!3275584 () (InoxSet Context!8534))

(assert (=> b!5266383 (= e!3275584 ((_ map or) call!373908 call!373904))))

(declare-fun bm!373901 () Bool)

(assert (=> bm!373901 (= call!373907 call!373906)))

(declare-fun b!5266384 () Bool)

(declare-fun e!3275587 () (InoxSet Context!8534))

(assert (=> b!5266384 (= e!3275587 ((as const (Array Context!8534 Bool)) false))))

(declare-fun c!911950 () Bool)

(declare-fun d!1695005 () Bool)

(assert (=> d!1695005 (= c!911950 (and ((_ is ElementMatch!14883) (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))) (= (c!911481 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))) (h!67274 s!2326))))))

(assert (=> d!1695005 (= (derivationStepZipperDown!331 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292)))) (ite c!911568 (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373614)) (h!67274 s!2326)) e!3275582)))

(declare-fun b!5266378 () Bool)

(assert (=> b!5266378 (= e!3275584 e!3275586)))

(assert (=> b!5266378 (= c!911951 ((_ is Concat!23728) (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))))))

(declare-fun b!5266385 () Bool)

(declare-fun c!911954 () Bool)

(assert (=> b!5266385 (= c!911954 ((_ is Star!14883) (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))))))

(assert (=> b!5266385 (= e!3275586 e!3275587)))

(declare-fun b!5266386 () Bool)

(assert (=> b!5266386 (= c!911952 e!3275585)))

(declare-fun res!2234364 () Bool)

(assert (=> b!5266386 (=> (not res!2234364) (not e!3275585))))

(assert (=> b!5266386 (= res!2234364 ((_ is Concat!23728) (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))))))

(assert (=> b!5266386 (= e!3275583 e!3275584)))

(declare-fun bm!373902 () Bool)

(assert (=> bm!373902 (= call!373906 ($colon$colon!1336 (exprs!4767 (ite c!911568 (Context!8535 (Cons!60824 (regTwo!30278 (regOne!30278 r!7292)) (t!374137 (exprs!4767 (h!67273 zl!343))))) (Context!8535 call!373614))) (ite (or c!911952 c!911951) (regTwo!30278 (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292))))) (ite c!911568 (regOne!30279 (regOne!30278 (regOne!30278 r!7292))) (regOne!30278 (regOne!30278 (regOne!30278 r!7292)))))))))

(declare-fun b!5266387 () Bool)

(assert (=> b!5266387 (= e!3275583 ((_ map or) call!373908 call!373903))))

(declare-fun bm!373903 () Bool)

(assert (=> bm!373903 (= call!373905 call!373904)))

(declare-fun b!5266388 () Bool)

(assert (=> b!5266388 (= e!3275587 call!373905)))

(assert (= (and d!1695005 c!911950) b!5266379))

(assert (= (and d!1695005 (not c!911950)) b!5266380))

(assert (= (and b!5266380 c!911953) b!5266387))

(assert (= (and b!5266380 (not c!911953)) b!5266386))

(assert (= (and b!5266386 res!2234364) b!5266381))

(assert (= (and b!5266386 c!911952) b!5266383))

(assert (= (and b!5266386 (not c!911952)) b!5266378))

(assert (= (and b!5266378 c!911951) b!5266382))

(assert (= (and b!5266378 (not c!911951)) b!5266385))

(assert (= (and b!5266385 c!911954) b!5266388))

(assert (= (and b!5266385 (not c!911954)) b!5266384))

(assert (= (or b!5266382 b!5266388) bm!373901))

(assert (= (or b!5266382 b!5266388) bm!373903))

(assert (= (or b!5266383 bm!373901) bm!373902))

(assert (= (or b!5266383 bm!373903) bm!373899))

(assert (= (or b!5266387 bm!373899) bm!373900))

(assert (= (or b!5266387 b!5266383) bm!373898))

(declare-fun m!6306582 () Bool)

(assert (=> bm!373898 m!6306582))

(declare-fun m!6306584 () Bool)

(assert (=> b!5266379 m!6306584))

(declare-fun m!6306586 () Bool)

(assert (=> b!5266381 m!6306586))

(declare-fun m!6306588 () Bool)

(assert (=> bm!373900 m!6306588))

(declare-fun m!6306590 () Bool)

(assert (=> bm!373902 m!6306590))

(assert (=> bm!373606 d!1695005))

(assert (=> b!5265111 d!1694867))

(assert (=> b!5265111 d!1694871))

(declare-fun d!1695007 () Bool)

(assert (=> d!1695007 (= (head!11291 (unfocusZipperList!325 zl!343)) (h!67272 (unfocusZipperList!325 zl!343)))))

(assert (=> b!5265283 d!1695007))

(declare-fun bm!373904 () Bool)

(declare-fun call!373909 () Bool)

(declare-fun c!911955 () Bool)

(assert (=> bm!373904 (= call!373909 (nullable!5052 (ite c!911955 (regTwo!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regTwo!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))))))

(declare-fun b!5266389 () Bool)

(declare-fun e!3275591 () Bool)

(assert (=> b!5266389 (= e!3275591 call!373909)))

(declare-fun b!5266390 () Bool)

(declare-fun e!3275590 () Bool)

(declare-fun e!3275592 () Bool)

(assert (=> b!5266390 (= e!3275590 e!3275592)))

(declare-fun res!2234368 () Bool)

(declare-fun call!373910 () Bool)

(assert (=> b!5266390 (= res!2234368 call!373910)))

(assert (=> b!5266390 (=> (not res!2234368) (not e!3275592))))

(declare-fun b!5266391 () Bool)

(declare-fun e!3275589 () Bool)

(declare-fun e!3275588 () Bool)

(assert (=> b!5266391 (= e!3275589 e!3275588)))

(declare-fun res!2234365 () Bool)

(assert (=> b!5266391 (=> (not res!2234365) (not e!3275588))))

(assert (=> b!5266391 (= res!2234365 (and (not ((_ is EmptyLang!14883) (h!67272 (exprs!4767 (h!67273 zl!343))))) (not ((_ is ElementMatch!14883) (h!67272 (exprs!4767 (h!67273 zl!343)))))))))

(declare-fun b!5266392 () Bool)

(declare-fun e!3275593 () Bool)

(assert (=> b!5266392 (= e!3275588 e!3275593)))

(declare-fun res!2234366 () Bool)

(assert (=> b!5266392 (=> res!2234366 e!3275593)))

(assert (=> b!5266392 (= res!2234366 ((_ is Star!14883) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun b!5266393 () Bool)

(assert (=> b!5266393 (= e!3275592 call!373909)))

(declare-fun b!5266394 () Bool)

(assert (=> b!5266394 (= e!3275590 e!3275591)))

(declare-fun res!2234367 () Bool)

(assert (=> b!5266394 (= res!2234367 call!373910)))

(assert (=> b!5266394 (=> res!2234367 e!3275591)))

(declare-fun b!5266395 () Bool)

(assert (=> b!5266395 (= e!3275593 e!3275590)))

(assert (=> b!5266395 (= c!911955 ((_ is Union!14883) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun d!1695009 () Bool)

(declare-fun res!2234369 () Bool)

(assert (=> d!1695009 (=> res!2234369 e!3275589)))

(assert (=> d!1695009 (= res!2234369 ((_ is EmptyExpr!14883) (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(assert (=> d!1695009 (= (nullableFct!1438 (h!67272 (exprs!4767 (h!67273 zl!343)))) e!3275589)))

(declare-fun bm!373905 () Bool)

(assert (=> bm!373905 (= call!373910 (nullable!5052 (ite c!911955 (regOne!30279 (h!67272 (exprs!4767 (h!67273 zl!343)))) (regOne!30278 (h!67272 (exprs!4767 (h!67273 zl!343)))))))))

(assert (= (and d!1695009 (not res!2234369)) b!5266391))

(assert (= (and b!5266391 res!2234365) b!5266392))

(assert (= (and b!5266392 (not res!2234366)) b!5266395))

(assert (= (and b!5266395 c!911955) b!5266394))

(assert (= (and b!5266395 (not c!911955)) b!5266390))

(assert (= (and b!5266394 (not res!2234367)) b!5266389))

(assert (= (and b!5266390 res!2234368) b!5266393))

(assert (= (or b!5266389 b!5266393) bm!373904))

(assert (= (or b!5266394 b!5266390) bm!373905))

(declare-fun m!6306592 () Bool)

(assert (=> bm!373904 m!6306592))

(declare-fun m!6306594 () Bool)

(assert (=> bm!373905 m!6306594))

(assert (=> d!1694485 d!1695009))

(declare-fun b!5266399 () Bool)

(declare-fun e!3275594 () Bool)

(declare-fun tp!1472010 () Bool)

(declare-fun tp!1472013 () Bool)

(assert (=> b!5266399 (= e!3275594 (and tp!1472010 tp!1472013))))

(declare-fun b!5266396 () Bool)

(assert (=> b!5266396 (= e!3275594 tp_is_empty!39019)))

(declare-fun b!5266397 () Bool)

(declare-fun tp!1472011 () Bool)

(declare-fun tp!1472012 () Bool)

(assert (=> b!5266397 (= e!3275594 (and tp!1472011 tp!1472012))))

(declare-fun b!5266398 () Bool)

(declare-fun tp!1472014 () Bool)

(assert (=> b!5266398 (= e!3275594 tp!1472014)))

(assert (=> b!5265370 (= tp!1471820 e!3275594)))

(assert (= (and b!5265370 ((_ is ElementMatch!14883) (h!67272 (exprs!4767 setElem!33671)))) b!5266396))

(assert (= (and b!5265370 ((_ is Concat!23728) (h!67272 (exprs!4767 setElem!33671)))) b!5266397))

(assert (= (and b!5265370 ((_ is Star!14883) (h!67272 (exprs!4767 setElem!33671)))) b!5266398))

(assert (= (and b!5265370 ((_ is Union!14883) (h!67272 (exprs!4767 setElem!33671)))) b!5266399))

(declare-fun b!5266400 () Bool)

(declare-fun e!3275595 () Bool)

(declare-fun tp!1472015 () Bool)

(declare-fun tp!1472016 () Bool)

(assert (=> b!5266400 (= e!3275595 (and tp!1472015 tp!1472016))))

(assert (=> b!5265370 (= tp!1471821 e!3275595)))

(assert (= (and b!5265370 ((_ is Cons!60824) (t!374137 (exprs!4767 setElem!33671)))) b!5266400))

(declare-fun b!5266404 () Bool)

(declare-fun e!3275596 () Bool)

(declare-fun tp!1472017 () Bool)

(declare-fun tp!1472020 () Bool)

(assert (=> b!5266404 (= e!3275596 (and tp!1472017 tp!1472020))))

(declare-fun b!5266401 () Bool)

(assert (=> b!5266401 (= e!3275596 tp_is_empty!39019)))

(declare-fun b!5266402 () Bool)

(declare-fun tp!1472018 () Bool)

(declare-fun tp!1472019 () Bool)

(assert (=> b!5266402 (= e!3275596 (and tp!1472018 tp!1472019))))

(declare-fun b!5266403 () Bool)

(declare-fun tp!1472021 () Bool)

(assert (=> b!5266403 (= e!3275596 tp!1472021)))

(assert (=> b!5265341 (= tp!1471791 e!3275596)))

(assert (= (and b!5265341 ((_ is ElementMatch!14883) (regOne!30278 (reg!15212 r!7292)))) b!5266401))

(assert (= (and b!5265341 ((_ is Concat!23728) (regOne!30278 (reg!15212 r!7292)))) b!5266402))

(assert (= (and b!5265341 ((_ is Star!14883) (regOne!30278 (reg!15212 r!7292)))) b!5266403))

(assert (= (and b!5265341 ((_ is Union!14883) (regOne!30278 (reg!15212 r!7292)))) b!5266404))

(declare-fun b!5266408 () Bool)

(declare-fun e!3275597 () Bool)

(declare-fun tp!1472022 () Bool)

(declare-fun tp!1472025 () Bool)

(assert (=> b!5266408 (= e!3275597 (and tp!1472022 tp!1472025))))

(declare-fun b!5266405 () Bool)

(assert (=> b!5266405 (= e!3275597 tp_is_empty!39019)))

(declare-fun b!5266406 () Bool)

(declare-fun tp!1472023 () Bool)

(declare-fun tp!1472024 () Bool)

(assert (=> b!5266406 (= e!3275597 (and tp!1472023 tp!1472024))))

(declare-fun b!5266407 () Bool)

(declare-fun tp!1472026 () Bool)

(assert (=> b!5266407 (= e!3275597 tp!1472026)))

(assert (=> b!5265341 (= tp!1471792 e!3275597)))

(assert (= (and b!5265341 ((_ is ElementMatch!14883) (regTwo!30278 (reg!15212 r!7292)))) b!5266405))

(assert (= (and b!5265341 ((_ is Concat!23728) (regTwo!30278 (reg!15212 r!7292)))) b!5266406))

(assert (= (and b!5265341 ((_ is Star!14883) (regTwo!30278 (reg!15212 r!7292)))) b!5266407))

(assert (= (and b!5265341 ((_ is Union!14883) (regTwo!30278 (reg!15212 r!7292)))) b!5266408))

(declare-fun b!5266409 () Bool)

(declare-fun e!3275598 () Bool)

(declare-fun tp!1472027 () Bool)

(assert (=> b!5266409 (= e!3275598 (and tp_is_empty!39019 tp!1472027))))

(assert (=> b!5265356 (= tp!1471803 e!3275598)))

(assert (= (and b!5265356 ((_ is Cons!60826) (t!374139 (t!374139 s!2326)))) b!5266409))

(declare-fun b!5266413 () Bool)

(declare-fun e!3275599 () Bool)

(declare-fun tp!1472028 () Bool)

(declare-fun tp!1472031 () Bool)

(assert (=> b!5266413 (= e!3275599 (and tp!1472028 tp!1472031))))

(declare-fun b!5266410 () Bool)

(assert (=> b!5266410 (= e!3275599 tp_is_empty!39019)))

(declare-fun b!5266411 () Bool)

(declare-fun tp!1472029 () Bool)

(declare-fun tp!1472030 () Bool)

(assert (=> b!5266411 (= e!3275599 (and tp!1472029 tp!1472030))))

(declare-fun b!5266412 () Bool)

(declare-fun tp!1472032 () Bool)

(assert (=> b!5266412 (= e!3275599 tp!1472032)))

(assert (=> b!5265342 (= tp!1471794 e!3275599)))

(assert (= (and b!5265342 ((_ is ElementMatch!14883) (reg!15212 (reg!15212 r!7292)))) b!5266410))

(assert (= (and b!5265342 ((_ is Concat!23728) (reg!15212 (reg!15212 r!7292)))) b!5266411))

(assert (= (and b!5265342 ((_ is Star!14883) (reg!15212 (reg!15212 r!7292)))) b!5266412))

(assert (= (and b!5265342 ((_ is Union!14883) (reg!15212 (reg!15212 r!7292)))) b!5266413))

(declare-fun b!5266417 () Bool)

(declare-fun e!3275600 () Bool)

(declare-fun tp!1472033 () Bool)

(declare-fun tp!1472036 () Bool)

(assert (=> b!5266417 (= e!3275600 (and tp!1472033 tp!1472036))))

(declare-fun b!5266414 () Bool)

(assert (=> b!5266414 (= e!3275600 tp_is_empty!39019)))

(declare-fun b!5266415 () Bool)

(declare-fun tp!1472034 () Bool)

(declare-fun tp!1472035 () Bool)

(assert (=> b!5266415 (= e!3275600 (and tp!1472034 tp!1472035))))

(declare-fun b!5266416 () Bool)

(declare-fun tp!1472037 () Bool)

(assert (=> b!5266416 (= e!3275600 tp!1472037)))

(assert (=> b!5265343 (= tp!1471790 e!3275600)))

(assert (= (and b!5265343 ((_ is ElementMatch!14883) (regOne!30279 (reg!15212 r!7292)))) b!5266414))

(assert (= (and b!5265343 ((_ is Concat!23728) (regOne!30279 (reg!15212 r!7292)))) b!5266415))

(assert (= (and b!5265343 ((_ is Star!14883) (regOne!30279 (reg!15212 r!7292)))) b!5266416))

(assert (= (and b!5265343 ((_ is Union!14883) (regOne!30279 (reg!15212 r!7292)))) b!5266417))

(declare-fun b!5266421 () Bool)

(declare-fun e!3275601 () Bool)

(declare-fun tp!1472038 () Bool)

(declare-fun tp!1472041 () Bool)

(assert (=> b!5266421 (= e!3275601 (and tp!1472038 tp!1472041))))

(declare-fun b!5266418 () Bool)

(assert (=> b!5266418 (= e!3275601 tp_is_empty!39019)))

(declare-fun b!5266419 () Bool)

(declare-fun tp!1472039 () Bool)

(declare-fun tp!1472040 () Bool)

(assert (=> b!5266419 (= e!3275601 (and tp!1472039 tp!1472040))))

(declare-fun b!5266420 () Bool)

(declare-fun tp!1472042 () Bool)

(assert (=> b!5266420 (= e!3275601 tp!1472042)))

(assert (=> b!5265343 (= tp!1471793 e!3275601)))

(assert (= (and b!5265343 ((_ is ElementMatch!14883) (regTwo!30279 (reg!15212 r!7292)))) b!5266418))

(assert (= (and b!5265343 ((_ is Concat!23728) (regTwo!30279 (reg!15212 r!7292)))) b!5266419))

(assert (= (and b!5265343 ((_ is Star!14883) (regTwo!30279 (reg!15212 r!7292)))) b!5266420))

(assert (= (and b!5265343 ((_ is Union!14883) (regTwo!30279 (reg!15212 r!7292)))) b!5266421))

(declare-fun b!5266425 () Bool)

(declare-fun e!3275602 () Bool)

(declare-fun tp!1472043 () Bool)

(declare-fun tp!1472046 () Bool)

(assert (=> b!5266425 (= e!3275602 (and tp!1472043 tp!1472046))))

(declare-fun b!5266422 () Bool)

(assert (=> b!5266422 (= e!3275602 tp_is_empty!39019)))

(declare-fun b!5266423 () Bool)

(declare-fun tp!1472044 () Bool)

(declare-fun tp!1472045 () Bool)

(assert (=> b!5266423 (= e!3275602 (and tp!1472044 tp!1472045))))

(declare-fun b!5266424 () Bool)

(declare-fun tp!1472047 () Bool)

(assert (=> b!5266424 (= e!3275602 tp!1472047)))

(assert (=> b!5265362 (= tp!1471810 e!3275602)))

(assert (= (and b!5265362 ((_ is ElementMatch!14883) (regOne!30278 (regTwo!30279 r!7292)))) b!5266422))

(assert (= (and b!5265362 ((_ is Concat!23728) (regOne!30278 (regTwo!30279 r!7292)))) b!5266423))

(assert (= (and b!5265362 ((_ is Star!14883) (regOne!30278 (regTwo!30279 r!7292)))) b!5266424))

(assert (= (and b!5265362 ((_ is Union!14883) (regOne!30278 (regTwo!30279 r!7292)))) b!5266425))

(declare-fun b!5266429 () Bool)

(declare-fun e!3275603 () Bool)

(declare-fun tp!1472048 () Bool)

(declare-fun tp!1472051 () Bool)

(assert (=> b!5266429 (= e!3275603 (and tp!1472048 tp!1472051))))

(declare-fun b!5266426 () Bool)

(assert (=> b!5266426 (= e!3275603 tp_is_empty!39019)))

(declare-fun b!5266427 () Bool)

(declare-fun tp!1472049 () Bool)

(declare-fun tp!1472050 () Bool)

(assert (=> b!5266427 (= e!3275603 (and tp!1472049 tp!1472050))))

(declare-fun b!5266428 () Bool)

(declare-fun tp!1472052 () Bool)

(assert (=> b!5266428 (= e!3275603 tp!1472052)))

(assert (=> b!5265362 (= tp!1471811 e!3275603)))

(assert (= (and b!5265362 ((_ is ElementMatch!14883) (regTwo!30278 (regTwo!30279 r!7292)))) b!5266426))

(assert (= (and b!5265362 ((_ is Concat!23728) (regTwo!30278 (regTwo!30279 r!7292)))) b!5266427))

(assert (= (and b!5265362 ((_ is Star!14883) (regTwo!30278 (regTwo!30279 r!7292)))) b!5266428))

(assert (= (and b!5265362 ((_ is Union!14883) (regTwo!30278 (regTwo!30279 r!7292)))) b!5266429))

(declare-fun b!5266433 () Bool)

(declare-fun e!3275604 () Bool)

(declare-fun tp!1472053 () Bool)

(declare-fun tp!1472056 () Bool)

(assert (=> b!5266433 (= e!3275604 (and tp!1472053 tp!1472056))))

(declare-fun b!5266430 () Bool)

(assert (=> b!5266430 (= e!3275604 tp_is_empty!39019)))

(declare-fun b!5266431 () Bool)

(declare-fun tp!1472054 () Bool)

(declare-fun tp!1472055 () Bool)

(assert (=> b!5266431 (= e!3275604 (and tp!1472054 tp!1472055))))

(declare-fun b!5266432 () Bool)

(declare-fun tp!1472057 () Bool)

(assert (=> b!5266432 (= e!3275604 tp!1472057)))

(assert (=> b!5265377 (= tp!1471831 e!3275604)))

(assert (= (and b!5265377 ((_ is ElementMatch!14883) (reg!15212 (regTwo!30278 r!7292)))) b!5266430))

(assert (= (and b!5265377 ((_ is Concat!23728) (reg!15212 (regTwo!30278 r!7292)))) b!5266431))

(assert (= (and b!5265377 ((_ is Star!14883) (reg!15212 (regTwo!30278 r!7292)))) b!5266432))

(assert (= (and b!5265377 ((_ is Union!14883) (reg!15212 (regTwo!30278 r!7292)))) b!5266433))

(declare-fun b!5266437 () Bool)

(declare-fun e!3275605 () Bool)

(declare-fun tp!1472058 () Bool)

(declare-fun tp!1472061 () Bool)

(assert (=> b!5266437 (= e!3275605 (and tp!1472058 tp!1472061))))

(declare-fun b!5266434 () Bool)

(assert (=> b!5266434 (= e!3275605 tp_is_empty!39019)))

(declare-fun b!5266435 () Bool)

(declare-fun tp!1472059 () Bool)

(declare-fun tp!1472060 () Bool)

(assert (=> b!5266435 (= e!3275605 (and tp!1472059 tp!1472060))))

(declare-fun b!5266436 () Bool)

(declare-fun tp!1472062 () Bool)

(assert (=> b!5266436 (= e!3275605 tp!1472062)))

(assert (=> b!5265363 (= tp!1471813 e!3275605)))

(assert (= (and b!5265363 ((_ is ElementMatch!14883) (reg!15212 (regTwo!30279 r!7292)))) b!5266434))

(assert (= (and b!5265363 ((_ is Concat!23728) (reg!15212 (regTwo!30279 r!7292)))) b!5266435))

(assert (= (and b!5265363 ((_ is Star!14883) (reg!15212 (regTwo!30279 r!7292)))) b!5266436))

(assert (= (and b!5265363 ((_ is Union!14883) (reg!15212 (regTwo!30279 r!7292)))) b!5266437))

(declare-fun b!5266441 () Bool)

(declare-fun e!3275606 () Bool)

(declare-fun tp!1472063 () Bool)

(declare-fun tp!1472066 () Bool)

(assert (=> b!5266441 (= e!3275606 (and tp!1472063 tp!1472066))))

(declare-fun b!5266438 () Bool)

(assert (=> b!5266438 (= e!3275606 tp_is_empty!39019)))

(declare-fun b!5266439 () Bool)

(declare-fun tp!1472064 () Bool)

(declare-fun tp!1472065 () Bool)

(assert (=> b!5266439 (= e!3275606 (and tp!1472064 tp!1472065))))

(declare-fun b!5266440 () Bool)

(declare-fun tp!1472067 () Bool)

(assert (=> b!5266440 (= e!3275606 tp!1472067)))

(assert (=> b!5265378 (= tp!1471827 e!3275606)))

(assert (= (and b!5265378 ((_ is ElementMatch!14883) (regOne!30279 (regTwo!30278 r!7292)))) b!5266438))

(assert (= (and b!5265378 ((_ is Concat!23728) (regOne!30279 (regTwo!30278 r!7292)))) b!5266439))

(assert (= (and b!5265378 ((_ is Star!14883) (regOne!30279 (regTwo!30278 r!7292)))) b!5266440))

(assert (= (and b!5265378 ((_ is Union!14883) (regOne!30279 (regTwo!30278 r!7292)))) b!5266441))

(declare-fun b!5266445 () Bool)

(declare-fun e!3275607 () Bool)

(declare-fun tp!1472068 () Bool)

(declare-fun tp!1472071 () Bool)

(assert (=> b!5266445 (= e!3275607 (and tp!1472068 tp!1472071))))

(declare-fun b!5266442 () Bool)

(assert (=> b!5266442 (= e!3275607 tp_is_empty!39019)))

(declare-fun b!5266443 () Bool)

(declare-fun tp!1472069 () Bool)

(declare-fun tp!1472070 () Bool)

(assert (=> b!5266443 (= e!3275607 (and tp!1472069 tp!1472070))))

(declare-fun b!5266444 () Bool)

(declare-fun tp!1472072 () Bool)

(assert (=> b!5266444 (= e!3275607 tp!1472072)))

(assert (=> b!5265378 (= tp!1471830 e!3275607)))

(assert (= (and b!5265378 ((_ is ElementMatch!14883) (regTwo!30279 (regTwo!30278 r!7292)))) b!5266442))

(assert (= (and b!5265378 ((_ is Concat!23728) (regTwo!30279 (regTwo!30278 r!7292)))) b!5266443))

(assert (= (and b!5265378 ((_ is Star!14883) (regTwo!30279 (regTwo!30278 r!7292)))) b!5266444))

(assert (= (and b!5265378 ((_ is Union!14883) (regTwo!30279 (regTwo!30278 r!7292)))) b!5266445))

(declare-fun b!5266449 () Bool)

(declare-fun e!3275608 () Bool)

(declare-fun tp!1472073 () Bool)

(declare-fun tp!1472076 () Bool)

(assert (=> b!5266449 (= e!3275608 (and tp!1472073 tp!1472076))))

(declare-fun b!5266446 () Bool)

(assert (=> b!5266446 (= e!3275608 tp_is_empty!39019)))

(declare-fun b!5266447 () Bool)

(declare-fun tp!1472074 () Bool)

(declare-fun tp!1472075 () Bool)

(assert (=> b!5266447 (= e!3275608 (and tp!1472074 tp!1472075))))

(declare-fun b!5266448 () Bool)

(declare-fun tp!1472077 () Bool)

(assert (=> b!5266448 (= e!3275608 tp!1472077)))

(assert (=> b!5265364 (= tp!1471809 e!3275608)))

(assert (= (and b!5265364 ((_ is ElementMatch!14883) (regOne!30279 (regTwo!30279 r!7292)))) b!5266446))

(assert (= (and b!5265364 ((_ is Concat!23728) (regOne!30279 (regTwo!30279 r!7292)))) b!5266447))

(assert (= (and b!5265364 ((_ is Star!14883) (regOne!30279 (regTwo!30279 r!7292)))) b!5266448))

(assert (= (and b!5265364 ((_ is Union!14883) (regOne!30279 (regTwo!30279 r!7292)))) b!5266449))

(declare-fun b!5266453 () Bool)

(declare-fun e!3275609 () Bool)

(declare-fun tp!1472078 () Bool)

(declare-fun tp!1472081 () Bool)

(assert (=> b!5266453 (= e!3275609 (and tp!1472078 tp!1472081))))

(declare-fun b!5266450 () Bool)

(assert (=> b!5266450 (= e!3275609 tp_is_empty!39019)))

(declare-fun b!5266451 () Bool)

(declare-fun tp!1472079 () Bool)

(declare-fun tp!1472080 () Bool)

(assert (=> b!5266451 (= e!3275609 (and tp!1472079 tp!1472080))))

(declare-fun b!5266452 () Bool)

(declare-fun tp!1472082 () Bool)

(assert (=> b!5266452 (= e!3275609 tp!1472082)))

(assert (=> b!5265364 (= tp!1471812 e!3275609)))

(assert (= (and b!5265364 ((_ is ElementMatch!14883) (regTwo!30279 (regTwo!30279 r!7292)))) b!5266450))

(assert (= (and b!5265364 ((_ is Concat!23728) (regTwo!30279 (regTwo!30279 r!7292)))) b!5266451))

(assert (= (and b!5265364 ((_ is Star!14883) (regTwo!30279 (regTwo!30279 r!7292)))) b!5266452))

(assert (= (and b!5265364 ((_ is Union!14883) (regTwo!30279 (regTwo!30279 r!7292)))) b!5266453))

(declare-fun b!5266455 () Bool)

(declare-fun e!3275611 () Bool)

(declare-fun tp!1472083 () Bool)

(assert (=> b!5266455 (= e!3275611 tp!1472083)))

(declare-fun tp!1472084 () Bool)

(declare-fun e!3275610 () Bool)

(declare-fun b!5266454 () Bool)

(assert (=> b!5266454 (= e!3275610 (and (inv!80454 (h!67273 (t!374138 (t!374138 zl!343)))) e!3275611 tp!1472084))))

(assert (=> b!5265350 (= tp!1471800 e!3275610)))

(assert (= b!5266454 b!5266455))

(assert (= (and b!5265350 ((_ is Cons!60825) (t!374138 (t!374138 zl!343)))) b!5266454))

(declare-fun m!6306596 () Bool)

(assert (=> b!5266454 m!6306596))

(declare-fun b!5266456 () Bool)

(declare-fun e!3275612 () Bool)

(declare-fun tp!1472085 () Bool)

(declare-fun tp!1472086 () Bool)

(assert (=> b!5266456 (= e!3275612 (and tp!1472085 tp!1472086))))

(assert (=> b!5265351 (= tp!1471799 e!3275612)))

(assert (= (and b!5265351 ((_ is Cons!60824) (exprs!4767 (h!67273 (t!374138 zl!343))))) b!5266456))

(declare-fun b!5266460 () Bool)

(declare-fun e!3275613 () Bool)

(declare-fun tp!1472087 () Bool)

(declare-fun tp!1472090 () Bool)

(assert (=> b!5266460 (= e!3275613 (and tp!1472087 tp!1472090))))

(declare-fun b!5266457 () Bool)

(assert (=> b!5266457 (= e!3275613 tp_is_empty!39019)))

(declare-fun b!5266458 () Bool)

(declare-fun tp!1472088 () Bool)

(declare-fun tp!1472089 () Bool)

(assert (=> b!5266458 (= e!3275613 (and tp!1472088 tp!1472089))))

(declare-fun b!5266459 () Bool)

(declare-fun tp!1472091 () Bool)

(assert (=> b!5266459 (= e!3275613 tp!1472091)))

(assert (=> b!5265360 (= tp!1471804 e!3275613)))

(assert (= (and b!5265360 ((_ is ElementMatch!14883) (regOne!30279 (regOne!30279 r!7292)))) b!5266457))

(assert (= (and b!5265360 ((_ is Concat!23728) (regOne!30279 (regOne!30279 r!7292)))) b!5266458))

(assert (= (and b!5265360 ((_ is Star!14883) (regOne!30279 (regOne!30279 r!7292)))) b!5266459))

(assert (= (and b!5265360 ((_ is Union!14883) (regOne!30279 (regOne!30279 r!7292)))) b!5266460))

(declare-fun b!5266464 () Bool)

(declare-fun e!3275614 () Bool)

(declare-fun tp!1472092 () Bool)

(declare-fun tp!1472095 () Bool)

(assert (=> b!5266464 (= e!3275614 (and tp!1472092 tp!1472095))))

(declare-fun b!5266461 () Bool)

(assert (=> b!5266461 (= e!3275614 tp_is_empty!39019)))

(declare-fun b!5266462 () Bool)

(declare-fun tp!1472093 () Bool)

(declare-fun tp!1472094 () Bool)

(assert (=> b!5266462 (= e!3275614 (and tp!1472093 tp!1472094))))

(declare-fun b!5266463 () Bool)

(declare-fun tp!1472096 () Bool)

(assert (=> b!5266463 (= e!3275614 tp!1472096)))

(assert (=> b!5265360 (= tp!1471807 e!3275614)))

(assert (= (and b!5265360 ((_ is ElementMatch!14883) (regTwo!30279 (regOne!30279 r!7292)))) b!5266461))

(assert (= (and b!5265360 ((_ is Concat!23728) (regTwo!30279 (regOne!30279 r!7292)))) b!5266462))

(assert (= (and b!5265360 ((_ is Star!14883) (regTwo!30279 (regOne!30279 r!7292)))) b!5266463))

(assert (= (and b!5265360 ((_ is Union!14883) (regTwo!30279 (regOne!30279 r!7292)))) b!5266464))

(declare-fun condSetEmpty!33685 () Bool)

(assert (=> setNonEmpty!33677 (= condSetEmpty!33685 (= setRest!33677 ((as const (Array Context!8534 Bool)) false)))))

(declare-fun setRes!33685 () Bool)

(assert (=> setNonEmpty!33677 (= tp!1471836 setRes!33685)))

(declare-fun setIsEmpty!33685 () Bool)

(assert (=> setIsEmpty!33685 setRes!33685))

(declare-fun tp!1472097 () Bool)

(declare-fun setElem!33685 () Context!8534)

(declare-fun e!3275615 () Bool)

(declare-fun setNonEmpty!33685 () Bool)

(assert (=> setNonEmpty!33685 (= setRes!33685 (and tp!1472097 (inv!80454 setElem!33685) e!3275615))))

(declare-fun setRest!33685 () (InoxSet Context!8534))

(assert (=> setNonEmpty!33685 (= setRest!33677 ((_ map or) (store ((as const (Array Context!8534 Bool)) false) setElem!33685 true) setRest!33685))))

(declare-fun b!5266465 () Bool)

(declare-fun tp!1472098 () Bool)

(assert (=> b!5266465 (= e!3275615 tp!1472098)))

(assert (= (and setNonEmpty!33677 condSetEmpty!33685) setIsEmpty!33685))

(assert (= (and setNonEmpty!33677 (not condSetEmpty!33685)) setNonEmpty!33685))

(assert (= setNonEmpty!33685 b!5266465))

(declare-fun m!6306598 () Bool)

(assert (=> setNonEmpty!33685 m!6306598))

(declare-fun b!5266469 () Bool)

(declare-fun e!3275616 () Bool)

(declare-fun tp!1472099 () Bool)

(declare-fun tp!1472102 () Bool)

(assert (=> b!5266469 (= e!3275616 (and tp!1472099 tp!1472102))))

(declare-fun b!5266466 () Bool)

(assert (=> b!5266466 (= e!3275616 tp_is_empty!39019)))

(declare-fun b!5266467 () Bool)

(declare-fun tp!1472100 () Bool)

(declare-fun tp!1472101 () Bool)

(assert (=> b!5266467 (= e!3275616 (and tp!1472100 tp!1472101))))

(declare-fun b!5266468 () Bool)

(declare-fun tp!1472103 () Bool)

(assert (=> b!5266468 (= e!3275616 tp!1472103)))

(assert (=> b!5265372 (= tp!1471823 e!3275616)))

(assert (= (and b!5265372 ((_ is ElementMatch!14883) (regOne!30278 (regOne!30278 r!7292)))) b!5266466))

(assert (= (and b!5265372 ((_ is Concat!23728) (regOne!30278 (regOne!30278 r!7292)))) b!5266467))

(assert (= (and b!5265372 ((_ is Star!14883) (regOne!30278 (regOne!30278 r!7292)))) b!5266468))

(assert (= (and b!5265372 ((_ is Union!14883) (regOne!30278 (regOne!30278 r!7292)))) b!5266469))

(declare-fun b!5266473 () Bool)

(declare-fun e!3275617 () Bool)

(declare-fun tp!1472104 () Bool)

(declare-fun tp!1472107 () Bool)

(assert (=> b!5266473 (= e!3275617 (and tp!1472104 tp!1472107))))

(declare-fun b!5266470 () Bool)

(assert (=> b!5266470 (= e!3275617 tp_is_empty!39019)))

(declare-fun b!5266471 () Bool)

(declare-fun tp!1472105 () Bool)

(declare-fun tp!1472106 () Bool)

(assert (=> b!5266471 (= e!3275617 (and tp!1472105 tp!1472106))))

(declare-fun b!5266472 () Bool)

(declare-fun tp!1472108 () Bool)

(assert (=> b!5266472 (= e!3275617 tp!1472108)))

(assert (=> b!5265372 (= tp!1471824 e!3275617)))

(assert (= (and b!5265372 ((_ is ElementMatch!14883) (regTwo!30278 (regOne!30278 r!7292)))) b!5266470))

(assert (= (and b!5265372 ((_ is Concat!23728) (regTwo!30278 (regOne!30278 r!7292)))) b!5266471))

(assert (= (and b!5265372 ((_ is Star!14883) (regTwo!30278 (regOne!30278 r!7292)))) b!5266472))

(assert (= (and b!5265372 ((_ is Union!14883) (regTwo!30278 (regOne!30278 r!7292)))) b!5266473))

(declare-fun b!5266477 () Bool)

(declare-fun e!3275618 () Bool)

(declare-fun tp!1472109 () Bool)

(declare-fun tp!1472112 () Bool)

(assert (=> b!5266477 (= e!3275618 (and tp!1472109 tp!1472112))))

(declare-fun b!5266474 () Bool)

(assert (=> b!5266474 (= e!3275618 tp_is_empty!39019)))

(declare-fun b!5266475 () Bool)

(declare-fun tp!1472110 () Bool)

(declare-fun tp!1472111 () Bool)

(assert (=> b!5266475 (= e!3275618 (and tp!1472110 tp!1472111))))

(declare-fun b!5266476 () Bool)

(declare-fun tp!1472113 () Bool)

(assert (=> b!5266476 (= e!3275618 tp!1472113)))

(assert (=> b!5265358 (= tp!1471805 e!3275618)))

(assert (= (and b!5265358 ((_ is ElementMatch!14883) (regOne!30278 (regOne!30279 r!7292)))) b!5266474))

(assert (= (and b!5265358 ((_ is Concat!23728) (regOne!30278 (regOne!30279 r!7292)))) b!5266475))

(assert (= (and b!5265358 ((_ is Star!14883) (regOne!30278 (regOne!30279 r!7292)))) b!5266476))

(assert (= (and b!5265358 ((_ is Union!14883) (regOne!30278 (regOne!30279 r!7292)))) b!5266477))

(declare-fun b!5266481 () Bool)

(declare-fun e!3275619 () Bool)

(declare-fun tp!1472114 () Bool)

(declare-fun tp!1472117 () Bool)

(assert (=> b!5266481 (= e!3275619 (and tp!1472114 tp!1472117))))

(declare-fun b!5266478 () Bool)

(assert (=> b!5266478 (= e!3275619 tp_is_empty!39019)))

(declare-fun b!5266479 () Bool)

(declare-fun tp!1472115 () Bool)

(declare-fun tp!1472116 () Bool)

(assert (=> b!5266479 (= e!3275619 (and tp!1472115 tp!1472116))))

(declare-fun b!5266480 () Bool)

(declare-fun tp!1472118 () Bool)

(assert (=> b!5266480 (= e!3275619 tp!1472118)))

(assert (=> b!5265358 (= tp!1471806 e!3275619)))

(assert (= (and b!5265358 ((_ is ElementMatch!14883) (regTwo!30278 (regOne!30279 r!7292)))) b!5266478))

(assert (= (and b!5265358 ((_ is Concat!23728) (regTwo!30278 (regOne!30279 r!7292)))) b!5266479))

(assert (= (and b!5265358 ((_ is Star!14883) (regTwo!30278 (regOne!30279 r!7292)))) b!5266480))

(assert (= (and b!5265358 ((_ is Union!14883) (regTwo!30278 (regOne!30279 r!7292)))) b!5266481))

(declare-fun b!5266485 () Bool)

(declare-fun e!3275620 () Bool)

(declare-fun tp!1472119 () Bool)

(declare-fun tp!1472122 () Bool)

(assert (=> b!5266485 (= e!3275620 (and tp!1472119 tp!1472122))))

(declare-fun b!5266482 () Bool)

(assert (=> b!5266482 (= e!3275620 tp_is_empty!39019)))

(declare-fun b!5266483 () Bool)

(declare-fun tp!1472120 () Bool)

(declare-fun tp!1472121 () Bool)

(assert (=> b!5266483 (= e!3275620 (and tp!1472120 tp!1472121))))

(declare-fun b!5266484 () Bool)

(declare-fun tp!1472123 () Bool)

(assert (=> b!5266484 (= e!3275620 tp!1472123)))

(assert (=> b!5265373 (= tp!1471826 e!3275620)))

(assert (= (and b!5265373 ((_ is ElementMatch!14883) (reg!15212 (regOne!30278 r!7292)))) b!5266482))

(assert (= (and b!5265373 ((_ is Concat!23728) (reg!15212 (regOne!30278 r!7292)))) b!5266483))

(assert (= (and b!5265373 ((_ is Star!14883) (reg!15212 (regOne!30278 r!7292)))) b!5266484))

(assert (= (and b!5265373 ((_ is Union!14883) (reg!15212 (regOne!30278 r!7292)))) b!5266485))

(declare-fun b!5266489 () Bool)

(declare-fun e!3275621 () Bool)

(declare-fun tp!1472124 () Bool)

(declare-fun tp!1472127 () Bool)

(assert (=> b!5266489 (= e!3275621 (and tp!1472124 tp!1472127))))

(declare-fun b!5266486 () Bool)

(assert (=> b!5266486 (= e!3275621 tp_is_empty!39019)))

(declare-fun b!5266487 () Bool)

(declare-fun tp!1472125 () Bool)

(declare-fun tp!1472126 () Bool)

(assert (=> b!5266487 (= e!3275621 (and tp!1472125 tp!1472126))))

(declare-fun b!5266488 () Bool)

(declare-fun tp!1472128 () Bool)

(assert (=> b!5266488 (= e!3275621 tp!1472128)))

(assert (=> b!5265359 (= tp!1471808 e!3275621)))

(assert (= (and b!5265359 ((_ is ElementMatch!14883) (reg!15212 (regOne!30279 r!7292)))) b!5266486))

(assert (= (and b!5265359 ((_ is Concat!23728) (reg!15212 (regOne!30279 r!7292)))) b!5266487))

(assert (= (and b!5265359 ((_ is Star!14883) (reg!15212 (regOne!30279 r!7292)))) b!5266488))

(assert (= (and b!5265359 ((_ is Union!14883) (reg!15212 (regOne!30279 r!7292)))) b!5266489))

(declare-fun b!5266493 () Bool)

(declare-fun e!3275622 () Bool)

(declare-fun tp!1472129 () Bool)

(declare-fun tp!1472132 () Bool)

(assert (=> b!5266493 (= e!3275622 (and tp!1472129 tp!1472132))))

(declare-fun b!5266490 () Bool)

(assert (=> b!5266490 (= e!3275622 tp_is_empty!39019)))

(declare-fun b!5266491 () Bool)

(declare-fun tp!1472130 () Bool)

(declare-fun tp!1472131 () Bool)

(assert (=> b!5266491 (= e!3275622 (and tp!1472130 tp!1472131))))

(declare-fun b!5266492 () Bool)

(declare-fun tp!1472133 () Bool)

(assert (=> b!5266492 (= e!3275622 tp!1472133)))

(assert (=> b!5265374 (= tp!1471822 e!3275622)))

(assert (= (and b!5265374 ((_ is ElementMatch!14883) (regOne!30279 (regOne!30278 r!7292)))) b!5266490))

(assert (= (and b!5265374 ((_ is Concat!23728) (regOne!30279 (regOne!30278 r!7292)))) b!5266491))

(assert (= (and b!5265374 ((_ is Star!14883) (regOne!30279 (regOne!30278 r!7292)))) b!5266492))

(assert (= (and b!5265374 ((_ is Union!14883) (regOne!30279 (regOne!30278 r!7292)))) b!5266493))

(declare-fun b!5266497 () Bool)

(declare-fun e!3275623 () Bool)

(declare-fun tp!1472134 () Bool)

(declare-fun tp!1472137 () Bool)

(assert (=> b!5266497 (= e!3275623 (and tp!1472134 tp!1472137))))

(declare-fun b!5266494 () Bool)

(assert (=> b!5266494 (= e!3275623 tp_is_empty!39019)))

(declare-fun b!5266495 () Bool)

(declare-fun tp!1472135 () Bool)

(declare-fun tp!1472136 () Bool)

(assert (=> b!5266495 (= e!3275623 (and tp!1472135 tp!1472136))))

(declare-fun b!5266496 () Bool)

(declare-fun tp!1472138 () Bool)

(assert (=> b!5266496 (= e!3275623 tp!1472138)))

(assert (=> b!5265374 (= tp!1471825 e!3275623)))

(assert (= (and b!5265374 ((_ is ElementMatch!14883) (regTwo!30279 (regOne!30278 r!7292)))) b!5266494))

(assert (= (and b!5265374 ((_ is Concat!23728) (regTwo!30279 (regOne!30278 r!7292)))) b!5266495))

(assert (= (and b!5265374 ((_ is Star!14883) (regTwo!30279 (regOne!30278 r!7292)))) b!5266496))

(assert (= (and b!5265374 ((_ is Union!14883) (regTwo!30279 (regOne!30278 r!7292)))) b!5266497))

(declare-fun b!5266501 () Bool)

(declare-fun e!3275624 () Bool)

(declare-fun tp!1472139 () Bool)

(declare-fun tp!1472142 () Bool)

(assert (=> b!5266501 (= e!3275624 (and tp!1472139 tp!1472142))))

(declare-fun b!5266498 () Bool)

(assert (=> b!5266498 (= e!3275624 tp_is_empty!39019)))

(declare-fun b!5266499 () Bool)

(declare-fun tp!1472140 () Bool)

(declare-fun tp!1472141 () Bool)

(assert (=> b!5266499 (= e!3275624 (and tp!1472140 tp!1472141))))

(declare-fun b!5266500 () Bool)

(declare-fun tp!1472143 () Bool)

(assert (=> b!5266500 (= e!3275624 tp!1472143)))

(assert (=> b!5265369 (= tp!1471818 e!3275624)))

(assert (= (and b!5265369 ((_ is ElementMatch!14883) (h!67272 (exprs!4767 (h!67273 zl!343))))) b!5266498))

(assert (= (and b!5265369 ((_ is Concat!23728) (h!67272 (exprs!4767 (h!67273 zl!343))))) b!5266499))

(assert (= (and b!5265369 ((_ is Star!14883) (h!67272 (exprs!4767 (h!67273 zl!343))))) b!5266500))

(assert (= (and b!5265369 ((_ is Union!14883) (h!67272 (exprs!4767 (h!67273 zl!343))))) b!5266501))

(declare-fun b!5266502 () Bool)

(declare-fun e!3275625 () Bool)

(declare-fun tp!1472144 () Bool)

(declare-fun tp!1472145 () Bool)

(assert (=> b!5266502 (= e!3275625 (and tp!1472144 tp!1472145))))

(assert (=> b!5265369 (= tp!1471819 e!3275625)))

(assert (= (and b!5265369 ((_ is Cons!60824) (t!374137 (exprs!4767 (h!67273 zl!343))))) b!5266502))

(declare-fun b!5266506 () Bool)

(declare-fun e!3275626 () Bool)

(declare-fun tp!1472146 () Bool)

(declare-fun tp!1472149 () Bool)

(assert (=> b!5266506 (= e!3275626 (and tp!1472146 tp!1472149))))

(declare-fun b!5266503 () Bool)

(assert (=> b!5266503 (= e!3275626 tp_is_empty!39019)))

(declare-fun b!5266504 () Bool)

(declare-fun tp!1472147 () Bool)

(declare-fun tp!1472148 () Bool)

(assert (=> b!5266504 (= e!3275626 (and tp!1472147 tp!1472148))))

(declare-fun b!5266505 () Bool)

(declare-fun tp!1472150 () Bool)

(assert (=> b!5266505 (= e!3275626 tp!1472150)))

(assert (=> b!5265376 (= tp!1471828 e!3275626)))

(assert (= (and b!5265376 ((_ is ElementMatch!14883) (regOne!30278 (regTwo!30278 r!7292)))) b!5266503))

(assert (= (and b!5265376 ((_ is Concat!23728) (regOne!30278 (regTwo!30278 r!7292)))) b!5266504))

(assert (= (and b!5265376 ((_ is Star!14883) (regOne!30278 (regTwo!30278 r!7292)))) b!5266505))

(assert (= (and b!5265376 ((_ is Union!14883) (regOne!30278 (regTwo!30278 r!7292)))) b!5266506))

(declare-fun b!5266510 () Bool)

(declare-fun e!3275627 () Bool)

(declare-fun tp!1472151 () Bool)

(declare-fun tp!1472154 () Bool)

(assert (=> b!5266510 (= e!3275627 (and tp!1472151 tp!1472154))))

(declare-fun b!5266507 () Bool)

(assert (=> b!5266507 (= e!3275627 tp_is_empty!39019)))

(declare-fun b!5266508 () Bool)

(declare-fun tp!1472152 () Bool)

(declare-fun tp!1472153 () Bool)

(assert (=> b!5266508 (= e!3275627 (and tp!1472152 tp!1472153))))

(declare-fun b!5266509 () Bool)

(declare-fun tp!1472155 () Bool)

(assert (=> b!5266509 (= e!3275627 tp!1472155)))

(assert (=> b!5265376 (= tp!1471829 e!3275627)))

(assert (= (and b!5265376 ((_ is ElementMatch!14883) (regTwo!30278 (regTwo!30278 r!7292)))) b!5266507))

(assert (= (and b!5265376 ((_ is Concat!23728) (regTwo!30278 (regTwo!30278 r!7292)))) b!5266508))

(assert (= (and b!5265376 ((_ is Star!14883) (regTwo!30278 (regTwo!30278 r!7292)))) b!5266509))

(assert (= (and b!5265376 ((_ is Union!14883) (regTwo!30278 (regTwo!30278 r!7292)))) b!5266510))

(declare-fun b!5266511 () Bool)

(declare-fun e!3275628 () Bool)

(declare-fun tp!1472156 () Bool)

(declare-fun tp!1472157 () Bool)

(assert (=> b!5266511 (= e!3275628 (and tp!1472156 tp!1472157))))

(assert (=> b!5265383 (= tp!1471837 e!3275628)))

(assert (= (and b!5265383 ((_ is Cons!60824) (exprs!4767 setElem!33677))) b!5266511))

(declare-fun b_lambda!203161 () Bool)

(assert (= b_lambda!203155 (or b!5264610 b_lambda!203161)))

(assert (=> d!1694933 d!1694587))

(declare-fun b_lambda!203163 () Bool)

(assert (= b_lambda!203141 (or d!1694571 b_lambda!203163)))

(declare-fun bs!1220610 () Bool)

(declare-fun d!1695011 () Bool)

(assert (= bs!1220610 (and d!1695011 d!1694571)))

(assert (=> bs!1220610 (= (dynLambda!24037 lambda!265519 (h!67272 (unfocusZipperList!325 zl!343))) (validRegex!6619 (h!67272 (unfocusZipperList!325 zl!343))))))

(declare-fun m!6306600 () Bool)

(assert (=> bs!1220610 m!6306600))

(assert (=> b!5266097 d!1695011))

(declare-fun b_lambda!203165 () Bool)

(assert (= b_lambda!203159 (or d!1694553 b_lambda!203165)))

(declare-fun bs!1220611 () Bool)

(declare-fun d!1695013 () Bool)

(assert (= bs!1220611 (and d!1695013 d!1694553)))

(assert (=> bs!1220611 (= (dynLambda!24037 lambda!265515 (h!67272 (exprs!4767 (h!67273 zl!343)))) (validRegex!6619 (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(declare-fun m!6306602 () Bool)

(assert (=> bs!1220611 m!6306602))

(assert (=> b!5266356 d!1695013))

(declare-fun b_lambda!203167 () Bool)

(assert (= b_lambda!203157 (or d!1694511 b_lambda!203167)))

(declare-fun bs!1220612 () Bool)

(declare-fun d!1695015 () Bool)

(assert (= bs!1220612 (and d!1695015 d!1694511)))

(assert (=> bs!1220612 (= (dynLambda!24037 lambda!265505 (h!67272 (exprs!4767 (h!67273 zl!343)))) (validRegex!6619 (h!67272 (exprs!4767 (h!67273 zl!343)))))))

(assert (=> bs!1220612 m!6306602))

(assert (=> b!5266244 d!1695015))

(declare-fun b_lambda!203169 () Bool)

(assert (= b_lambda!203133 (or d!1694573 b_lambda!203169)))

(declare-fun bs!1220613 () Bool)

(declare-fun d!1695017 () Bool)

(assert (= bs!1220613 (and d!1695017 d!1694573)))

(assert (=> bs!1220613 (= (dynLambda!24037 lambda!265522 (h!67272 lt!2155807)) (validRegex!6619 (h!67272 lt!2155807)))))

(declare-fun m!6306604 () Bool)

(assert (=> bs!1220613 m!6306604))

(assert (=> b!5265623 d!1695017))

(declare-fun b_lambda!203171 () Bool)

(assert (= b_lambda!203139 (or d!1694561 b_lambda!203171)))

(declare-fun bs!1220614 () Bool)

(declare-fun d!1695019 () Bool)

(assert (= bs!1220614 (and d!1695019 d!1694561)))

(assert (=> bs!1220614 (= (dynLambda!24037 lambda!265516 (h!67272 (exprs!4767 setElem!33671))) (validRegex!6619 (h!67272 (exprs!4767 setElem!33671))))))

(declare-fun m!6306606 () Bool)

(assert (=> bs!1220614 m!6306606))

(assert (=> b!5265933 d!1695019))

(check-sat (not bm!373902) (not b!5266485) (not b!5265994) (not b!5266467) (not b!5266468) (not b!5266509) (not b_lambda!203169) (not bm!373765) (not b!5266411) (not b!5266487) (not bm!373791) (not b!5266440) (not b!5266061) (not b!5266448) (not b!5266334) (not bm!373898) (not b!5266449) (not bm!373825) (not b!5265975) (not b!5266177) (not b!5266462) (not b!5265790) (not b!5266460) (not d!1694777) (not b!5266412) (not bm!373865) (not bm!373864) (not bm!373748) (not b!5265757) (not b!5266171) (not d!1694733) (not b!5266317) (not b!5265846) (not b!5265995) (not b!5266484) (not b!5266502) (not b!5265988) (not d!1694877) (not b!5266352) (not b!5266479) (not b!5265656) (not bm!373892) (not b!5266357) (not b!5266493) (not b!5266417) (not b!5266290) (not b!5266415) (not d!1694857) (not bm!373799) (not b!5266476) (not b!5266257) (not b!5266403) (not b!5266057) (not d!1694923) (not b!5266469) tp_is_empty!39019 (not bm!373838) (not b!5265917) (not d!1694945) (not d!1694803) (not bm!373884) (not b!5266431) (not d!1694949) (not b!5265934) (not b!5266436) (not b!5266370) (not bm!373803) (not b!5266028) (not bm!373849) (not b!5266421) (not b!5266053) (not d!1694913) (not d!1694891) (not b!5266454) (not d!1694751) (not bm!373836) (not bm!373905) (not b!5266277) (not b!5266381) (not b!5266201) (not b!5265657) (not d!1694975) (not b_lambda!203171) (not b!5266331) (not b!5266179) (not b!5266001) (not b!5265848) (not bm!373797) (not b!5266475) (not b!5266258) (not d!1694925) (not b!5265914) (not bm!373882) (not b!5266128) (not b!5265996) (not b!5266465) (not b!5266419) (not d!1694835) (not b!5266492) (not b!5266126) (not b!5266247) (not d!1694741) (not d!1694991) (not d!1694943) (not d!1694921) (not d!1694977) (not b!5266445) (not b!5265989) (not bm!373876) (not b!5266456) (not b!5265687) (not bm!373848) (not b!5266275) (not b!5266491) (not bm!373841) (not b!5266208) (not bm!373747) (not bs!1220611) (not bm!373793) (not b!5266333) (not b!5266335) (not bm!373880) (not b!5266432) (not b!5266402) (not b!5266447) (not b!5266506) (not b!5266510) (not d!1694941) (not b!5266499) (not b!5266087) (not b!5265915) (not b!5266481) (not d!1694979) (not b!5266339) (not b!5265913) (not b!5266404) (not d!1694887) (not b!5266004) (not b!5266398) (not b!5266453) (not b!5266259) (not b!5265912) (not bm!373842) (not bs!1220610) (not b!5265777) (not b!5266511) (not b!5266283) (not b!5266409) (not b!5266060) (not b_lambda!203167) (not b!5265632) (not b!5266471) (not b!5265844) (not setNonEmpty!33680) (not bm!373801) (not b!5265771) (not b!5266420) (not b!5266416) (not d!1694901) (not b!5266452) (not bm!373844) (not d!1694997) (not b!5266451) (not b!5265999) (not d!1694895) (not b_lambda!203123) (not d!1694749) (not bm!373904) (not b!5266003) (not b!5266291) (not b!5266459) (not b!5266191) (not d!1694747) (not b!5266439) (not bm!373896) (not d!1694963) (not b!5266435) (not b!5265786) (not b!5265919) (not b!5266054) (not bm!373823) (not bm!373845) (not b!5266098) (not b!5266441) (not b!5266399) (not bm!373858) (not b!5266262) (not b!5266455) (not b!5266407) (not bs!1220614) (not b!5266408) (not b!5266252) (not bm!373878) (not bm!373890) (not b!5266433) (not b!5266429) (not b!5265916) (not b!5265944) (not b!5266006) (not b!5266472) (not b!5266276) (not b!5266327) (not b!5266473) (not bm!373879) (not b!5266504) (not bm!373787) (not bm!373850) (not b!5266463) (not bm!373856) (not b!5266199) (not b!5266437) (not b!5266175) (not bm!373886) (not bm!373837) (not b!5266267) (not bm!373790) (not d!1694727) (not b!5265624) (not b!5266245) (not b!5266215) (not b!5266141) (not b!5266489) (not b!5266254) (not b!5266284) (not bm!373795) (not b!5266423) (not d!1694969) (not b!5265946) (not bs!1220612) (not b!5266413) (not b!5266200) (not b!5266464) (not bm!373889) (not b!5266424) (not b!5266483) (not bm!373851) (not b_lambda!203165) (not b!5266505) (not b!5266444) (not bm!373852) (not bm!373832) (not bm!373821) (not bm!373761) (not d!1694981) (not b!5266495) (not bm!373763) (not b!5266458) (not b!5266268) (not d!1694829) (not b!5266002) (not b!5266496) (not b!5265689) (not setNonEmpty!33685) (not b!5265992) (not b!5266363) (not d!1694987) (not d!1694713) (not b!5265688) (not b!5266059) (not bm!373894) (not b_lambda!203163) (not d!1694787) (not b!5266497) (not b_lambda!203161) (not b!5266508) (not d!1694971) (not b!5266443) (not b!5266178) (not b!5266480) (not bm!373834) (not d!1694965) (not b!5266500) (not b!5265673) (not d!1694967) (not b!5266289) (not b!5266328) (not b!5266195) (not bm!373854) (not d!1694933) (not bm!373788) (not b!5265925) (not bm!373900) (not b!5266501) (not bm!373866) (not bm!373830) (not b!5266248) (not bs!1220613) (not b!5266406) (not b!5266428) (not d!1694899) (not b!5266261) (not bm!373887) (not bm!373840) (not b!5266488) (not b!5266251) (not bm!373819) (not b!5266477) (not b!5266425) (not b!5266172) (not b!5266397) (not b!5265843) (not b!5266427) (not b!5266287) (not d!1694715) (not b!5265628) (not bm!373811) (not d!1694863) (not b!5265801) (not d!1694739) (not bm!373846) (not b!5266400) (not b!5266007) (not d!1694737))
(check-sat)
