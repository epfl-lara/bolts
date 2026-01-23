; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!633262 () Bool)

(assert start!633262)

(declare-fun b!6399780 () Bool)

(assert (=> b!6399780 true))

(assert (=> b!6399780 true))

(declare-fun lambda!353312 () Int)

(declare-fun lambda!353311 () Int)

(assert (=> b!6399780 (not (= lambda!353312 lambda!353311))))

(assert (=> b!6399780 true))

(assert (=> b!6399780 true))

(declare-fun b!6399793 () Bool)

(assert (=> b!6399793 true))

(declare-fun bs!1604641 () Bool)

(declare-fun b!6399764 () Bool)

(assert (= bs!1604641 (and b!6399764 b!6399780)))

(declare-datatypes ((C!32892 0))(
  ( (C!32893 (val!26148 Int)) )
))
(declare-datatypes ((Regex!16311 0))(
  ( (ElementMatch!16311 (c!1167428 C!32892)) (Concat!25156 (regOne!33134 Regex!16311) (regTwo!33134 Regex!16311)) (EmptyExpr!16311) (Star!16311 (reg!16640 Regex!16311)) (EmptyLang!16311) (Union!16311 (regOne!33135 Regex!16311) (regTwo!33135 Regex!16311)) )
))
(declare-fun r!7292 () Regex!16311)

(declare-fun lambda!353314 () Int)

(declare-fun lt!2373664 () Regex!16311)

(assert (=> bs!1604641 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353314 lambda!353311))))

(assert (=> bs!1604641 (not (= lambda!353314 lambda!353312))))

(assert (=> b!6399764 true))

(assert (=> b!6399764 true))

(assert (=> b!6399764 true))

(declare-fun lambda!353315 () Int)

(assert (=> bs!1604641 (not (= lambda!353315 lambda!353311))))

(assert (=> bs!1604641 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353315 lambda!353312))))

(assert (=> b!6399764 (not (= lambda!353315 lambda!353314))))

(assert (=> b!6399764 true))

(assert (=> b!6399764 true))

(assert (=> b!6399764 true))

(declare-fun b!6399763 () Bool)

(declare-fun e!3883967 () Bool)

(declare-fun tp_is_empty!41875 () Bool)

(declare-fun tp!1779174 () Bool)

(assert (=> b!6399763 (= e!3883967 (and tp_is_empty!41875 tp!1779174))))

(declare-fun e!3883974 () Bool)

(declare-fun e!3883961 () Bool)

(assert (=> b!6399764 (= e!3883974 e!3883961)))

(declare-fun res!2631513 () Bool)

(assert (=> b!6399764 (=> res!2631513 e!3883961)))

(declare-datatypes ((List!65232 0))(
  ( (Nil!65108) (Cons!65108 (h!71556 C!32892) (t!378840 List!65232)) )
))
(declare-datatypes ((tuple2!66580 0))(
  ( (tuple2!66581 (_1!36593 List!65232) (_2!36593 List!65232)) )
))
(declare-fun lt!2373686 () tuple2!66580)

(declare-fun s!2326 () List!65232)

(declare-fun ++!14379 (List!65232 List!65232) List!65232)

(assert (=> b!6399764 (= res!2631513 (not (= (++!14379 (_1!36593 lt!2373686) (_2!36593 lt!2373686)) s!2326)))))

(declare-datatypes ((Option!16202 0))(
  ( (None!16201) (Some!16201 (v!52372 tuple2!66580)) )
))
(declare-fun lt!2373675 () Option!16202)

(declare-fun get!22550 (Option!16202) tuple2!66580)

(assert (=> b!6399764 (= lt!2373686 (get!22550 lt!2373675))))

(declare-fun Exists!3381 (Int) Bool)

(assert (=> b!6399764 (= (Exists!3381 lambda!353314) (Exists!3381 lambda!353315))))

(declare-datatypes ((Unit!158575 0))(
  ( (Unit!158576) )
))
(declare-fun lt!2373673 () Unit!158575)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1918 (Regex!16311 Regex!16311 List!65232) Unit!158575)

(assert (=> b!6399764 (= lt!2373673 (lemmaExistCutMatchRandMatchRSpecEquivalent!1918 lt!2373664 (regTwo!33134 r!7292) s!2326))))

(declare-fun isDefined!12905 (Option!16202) Bool)

(assert (=> b!6399764 (= (isDefined!12905 lt!2373675) (Exists!3381 lambda!353314))))

(declare-fun findConcatSeparation!2616 (Regex!16311 Regex!16311 List!65232 List!65232 List!65232) Option!16202)

(assert (=> b!6399764 (= lt!2373675 (findConcatSeparation!2616 lt!2373664 (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326))))

(declare-fun lt!2373689 () Unit!158575)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2380 (Regex!16311 Regex!16311 List!65232) Unit!158575)

(assert (=> b!6399764 (= lt!2373689 (lemmaFindConcatSeparationEquivalentToExists!2380 lt!2373664 (regTwo!33134 r!7292) s!2326))))

(declare-fun b!6399765 () Bool)

(declare-fun res!2631533 () Bool)

(declare-fun e!3883958 () Bool)

(assert (=> b!6399765 (=> res!2631533 e!3883958)))

(declare-datatypes ((List!65233 0))(
  ( (Nil!65109) (Cons!65109 (h!71557 Regex!16311) (t!378841 List!65233)) )
))
(declare-datatypes ((Context!11390 0))(
  ( (Context!11391 (exprs!6195 List!65233)) )
))
(declare-datatypes ((List!65234 0))(
  ( (Nil!65110) (Cons!65110 (h!71558 Context!11390) (t!378842 List!65234)) )
))
(declare-fun zl!343 () List!65234)

(declare-fun generalisedConcat!1908 (List!65233) Regex!16311)

(assert (=> b!6399765 (= res!2631533 (not (= r!7292 (generalisedConcat!1908 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun b!6399766 () Bool)

(declare-fun e!3883964 () Bool)

(declare-fun e!3883973 () Bool)

(assert (=> b!6399766 (= e!3883964 e!3883973)))

(declare-fun res!2631514 () Bool)

(assert (=> b!6399766 (=> res!2631514 e!3883973)))

(declare-fun lt!2373678 () Regex!16311)

(assert (=> b!6399766 (= res!2631514 (not (= r!7292 lt!2373678)))))

(assert (=> b!6399766 (= lt!2373678 (Concat!25156 lt!2373664 (regTwo!33134 r!7292)))))

(declare-fun b!6399768 () Bool)

(declare-fun res!2631538 () Bool)

(declare-fun e!3883976 () Bool)

(assert (=> b!6399768 (=> res!2631538 e!3883976)))

(declare-fun lt!2373652 () Context!11390)

(declare-fun unfocusZipper!2053 (List!65234) Regex!16311)

(assert (=> b!6399768 (= res!2631538 (not (= (unfocusZipper!2053 (Cons!65110 lt!2373652 Nil!65110)) lt!2373678)))))

(declare-fun b!6399769 () Bool)

(declare-fun res!2631532 () Bool)

(declare-fun e!3883963 () Bool)

(assert (=> b!6399769 (=> res!2631532 e!3883963)))

(declare-fun lt!2373661 () Regex!16311)

(declare-fun validRegex!8047 (Regex!16311) Bool)

(assert (=> b!6399769 (= res!2631532 (not (validRegex!8047 lt!2373661)))))

(declare-fun b!6399770 () Bool)

(declare-fun res!2631511 () Bool)

(assert (=> b!6399770 (=> res!2631511 e!3883958)))

(get-info :version)

(assert (=> b!6399770 (= res!2631511 (or ((_ is EmptyExpr!16311) r!7292) ((_ is EmptyLang!16311) r!7292) ((_ is ElementMatch!16311) r!7292) ((_ is Union!16311) r!7292) (not ((_ is Concat!25156) r!7292))))))

(declare-fun b!6399771 () Bool)

(declare-fun res!2631537 () Bool)

(assert (=> b!6399771 (=> res!2631537 e!3883964)))

(declare-fun lt!2373687 () Regex!16311)

(assert (=> b!6399771 (= res!2631537 (not (= lt!2373687 r!7292)))))

(declare-fun b!6399772 () Bool)

(declare-fun e!3883957 () Bool)

(declare-fun tp!1779179 () Bool)

(assert (=> b!6399772 (= e!3883957 tp!1779179)))

(declare-fun b!6399773 () Bool)

(declare-fun e!3883968 () Bool)

(declare-fun e!3883979 () Bool)

(assert (=> b!6399773 (= e!3883968 e!3883979)))

(declare-fun res!2631521 () Bool)

(assert (=> b!6399773 (=> (not res!2631521) (not e!3883979))))

(assert (=> b!6399773 (= res!2631521 (= r!7292 lt!2373687))))

(assert (=> b!6399773 (= lt!2373687 (unfocusZipper!2053 zl!343))))

(declare-fun b!6399774 () Bool)

(declare-fun e!3883965 () Unit!158575)

(declare-fun Unit!158577 () Unit!158575)

(assert (=> b!6399774 (= e!3883965 Unit!158577)))

(declare-fun b!6399775 () Bool)

(declare-fun e!3883970 () Bool)

(declare-fun e!3883971 () Bool)

(assert (=> b!6399775 (= e!3883970 e!3883971)))

(declare-fun res!2631519 () Bool)

(assert (=> b!6399775 (=> res!2631519 e!3883971)))

(declare-fun regexDepth!338 (Regex!16311) Int)

(assert (=> b!6399775 (= res!2631519 (< (regexDepth!338 r!7292) (regexDepth!338 lt!2373661)))))

(assert (=> b!6399775 (= lt!2373661 (generalisedConcat!1908 (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6399776 () Bool)

(assert (=> b!6399776 (= e!3883979 (not e!3883958))))

(declare-fun res!2631529 () Bool)

(assert (=> b!6399776 (=> res!2631529 e!3883958)))

(assert (=> b!6399776 (= res!2631529 (not ((_ is Cons!65110) zl!343)))))

(declare-fun lt!2373662 () Bool)

(declare-fun lt!2373667 () Bool)

(assert (=> b!6399776 (= lt!2373662 lt!2373667)))

(declare-fun matchRSpec!3412 (Regex!16311 List!65232) Bool)

(assert (=> b!6399776 (= lt!2373667 (matchRSpec!3412 r!7292 s!2326))))

(declare-fun matchR!8494 (Regex!16311 List!65232) Bool)

(assert (=> b!6399776 (= lt!2373662 (matchR!8494 r!7292 s!2326))))

(declare-fun lt!2373671 () Unit!158575)

(declare-fun mainMatchTheorem!3412 (Regex!16311 List!65232) Unit!158575)

(assert (=> b!6399776 (= lt!2373671 (mainMatchTheorem!3412 r!7292 s!2326))))

(declare-fun b!6399777 () Bool)

(declare-fun res!2631517 () Bool)

(assert (=> b!6399777 (=> res!2631517 e!3883958)))

(assert (=> b!6399777 (= res!2631517 (not ((_ is Cons!65109) (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6399778 () Bool)

(declare-fun e!3883978 () Bool)

(assert (=> b!6399778 (= e!3883973 e!3883978)))

(declare-fun res!2631522 () Bool)

(assert (=> b!6399778 (=> res!2631522 e!3883978)))

(declare-fun lt!2373669 () Context!11390)

(declare-fun lt!2373658 () Regex!16311)

(assert (=> b!6399778 (= res!2631522 (not (= (unfocusZipper!2053 (Cons!65110 lt!2373669 Nil!65110)) lt!2373658)))))

(assert (=> b!6399778 (= lt!2373658 (Concat!25156 (reg!16640 (regOne!33134 r!7292)) lt!2373678))))

(declare-fun b!6399779 () Bool)

(declare-fun res!2631542 () Bool)

(assert (=> b!6399779 (=> res!2631542 e!3883961)))

(assert (=> b!6399779 (= res!2631542 (not (matchR!8494 lt!2373664 (_1!36593 lt!2373686))))))

(declare-fun e!3883975 () Bool)

(assert (=> b!6399780 (= e!3883958 e!3883975)))

(declare-fun res!2631526 () Bool)

(assert (=> b!6399780 (=> res!2631526 e!3883975)))

(declare-fun lt!2373653 () Bool)

(assert (=> b!6399780 (= res!2631526 (or (not (= lt!2373662 lt!2373653)) ((_ is Nil!65108) s!2326)))))

(assert (=> b!6399780 (= (Exists!3381 lambda!353311) (Exists!3381 lambda!353312))))

(declare-fun lt!2373657 () Unit!158575)

(assert (=> b!6399780 (= lt!2373657 (lemmaExistCutMatchRandMatchRSpecEquivalent!1918 (regOne!33134 r!7292) (regTwo!33134 r!7292) s!2326))))

(assert (=> b!6399780 (= lt!2373653 (Exists!3381 lambda!353311))))

(assert (=> b!6399780 (= lt!2373653 (isDefined!12905 (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326)))))

(declare-fun lt!2373654 () Unit!158575)

(assert (=> b!6399780 (= lt!2373654 (lemmaFindConcatSeparationEquivalentToExists!2380 (regOne!33134 r!7292) (regTwo!33134 r!7292) s!2326))))

(declare-fun b!6399781 () Bool)

(declare-fun res!2631541 () Bool)

(declare-fun e!3883962 () Bool)

(assert (=> b!6399781 (=> res!2631541 e!3883962)))

(assert (=> b!6399781 (= res!2631541 (or ((_ is Concat!25156) (regOne!33134 r!7292)) (not ((_ is Star!16311) (regOne!33134 r!7292)))))))

(declare-fun setIsEmpty!43686 () Bool)

(declare-fun setRes!43686 () Bool)

(assert (=> setIsEmpty!43686 setRes!43686))

(declare-fun b!6399782 () Bool)

(declare-fun e!3883966 () Bool)

(declare-fun tp!1779175 () Bool)

(declare-fun tp!1779180 () Bool)

(assert (=> b!6399782 (= e!3883966 (and tp!1779175 tp!1779180))))

(declare-fun b!6399783 () Bool)

(declare-fun res!2631508 () Bool)

(assert (=> b!6399783 (=> res!2631508 e!3883963)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2373688 () (InoxSet Context!11390))

(declare-fun lt!2373651 () List!65234)

(declare-fun toList!10095 ((InoxSet Context!11390)) List!65234)

(assert (=> b!6399783 (= res!2631508 (not (= (toList!10095 lt!2373688) lt!2373651)))))

(declare-fun b!6399784 () Bool)

(declare-fun res!2631527 () Bool)

(assert (=> b!6399784 (=> (not res!2631527) (not e!3883968))))

(declare-fun z!1189 () (InoxSet Context!11390))

(assert (=> b!6399784 (= res!2631527 (= (toList!10095 z!1189) zl!343))))

(declare-fun b!6399785 () Bool)

(declare-fun res!2631516 () Bool)

(assert (=> b!6399785 (=> res!2631516 e!3883958)))

(declare-fun generalisedUnion!2155 (List!65233) Regex!16311)

(declare-fun unfocusZipperList!1732 (List!65234) List!65233)

(assert (=> b!6399785 (= res!2631516 (not (= r!7292 (generalisedUnion!2155 (unfocusZipperList!1732 zl!343)))))))

(declare-fun b!6399786 () Bool)

(declare-fun res!2631523 () Bool)

(assert (=> b!6399786 (=> res!2631523 e!3883975)))

(declare-fun isEmpty!37252 (List!65233) Bool)

(assert (=> b!6399786 (= res!2631523 (isEmpty!37252 (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6399787 () Bool)

(assert (=> b!6399787 (= e!3883976 e!3883974)))

(declare-fun res!2631512 () Bool)

(assert (=> b!6399787 (=> res!2631512 e!3883974)))

(assert (=> b!6399787 (= res!2631512 (not lt!2373662))))

(declare-fun e!3883977 () Bool)

(assert (=> b!6399787 e!3883977))

(declare-fun res!2631534 () Bool)

(assert (=> b!6399787 (=> (not res!2631534) (not e!3883977))))

(assert (=> b!6399787 (= res!2631534 (= (matchR!8494 lt!2373658 s!2326) (matchRSpec!3412 lt!2373658 s!2326)))))

(declare-fun lt!2373659 () Unit!158575)

(assert (=> b!6399787 (= lt!2373659 (mainMatchTheorem!3412 lt!2373658 s!2326))))

(declare-fun b!6399788 () Bool)

(declare-fun res!2631540 () Bool)

(assert (=> b!6399788 (=> res!2631540 e!3883964)))

(declare-fun lt!2373660 () (InoxSet Context!11390))

(declare-fun lt!2373665 () (InoxSet Context!11390))

(declare-fun matchZipper!2323 ((InoxSet Context!11390) List!65232) Bool)

(assert (=> b!6399788 (= res!2631540 (not (= (matchZipper!2323 lt!2373660 s!2326) (matchZipper!2323 lt!2373665 (t!378840 s!2326)))))))

(declare-fun b!6399789 () Bool)

(assert (=> b!6399789 (= e!3883971 e!3883963)))

(declare-fun res!2631535 () Bool)

(assert (=> b!6399789 (=> res!2631535 e!3883963)))

(declare-fun zipperDepth!380 (List!65234) Int)

(assert (=> b!6399789 (= res!2631535 (< (zipperDepth!380 zl!343) (zipperDepth!380 lt!2373651)))))

(declare-fun lt!2373656 () Context!11390)

(assert (=> b!6399789 (= lt!2373651 (Cons!65110 lt!2373656 Nil!65110))))

(declare-fun b!6399790 () Bool)

(declare-fun e!3883969 () Bool)

(assert (=> b!6399790 (= e!3883962 e!3883969)))

(declare-fun res!2631518 () Bool)

(assert (=> b!6399790 (=> res!2631518 e!3883969)))

(declare-fun lt!2373668 () (InoxSet Context!11390))

(declare-fun lt!2373685 () (InoxSet Context!11390))

(assert (=> b!6399790 (= res!2631518 (not (= lt!2373668 lt!2373685)))))

(declare-fun derivationStepZipperDown!1559 (Regex!16311 Context!11390 C!32892) (InoxSet Context!11390))

(assert (=> b!6399790 (= lt!2373685 (derivationStepZipperDown!1559 (reg!16640 (regOne!33134 r!7292)) lt!2373652 (h!71556 s!2326)))))

(declare-fun lt!2373676 () List!65233)

(assert (=> b!6399790 (= lt!2373652 (Context!11391 lt!2373676))))

(assert (=> b!6399790 (= lt!2373676 (Cons!65109 lt!2373664 (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> b!6399790 (= lt!2373664 (Star!16311 (reg!16640 (regOne!33134 r!7292))))))

(declare-fun b!6399791 () Bool)

(declare-fun res!2631528 () Bool)

(assert (=> b!6399791 (=> res!2631528 e!3883961)))

(declare-fun isEmpty!37253 (List!65232) Bool)

(assert (=> b!6399791 (= res!2631528 (not (isEmpty!37253 (_1!36593 lt!2373686))))))

(declare-fun b!6399792 () Bool)

(declare-fun Unit!158578 () Unit!158575)

(assert (=> b!6399792 (= e!3883965 Unit!158578)))

(declare-fun lt!2373666 () (InoxSet Context!11390))

(declare-fun lt!2373655 () Unit!158575)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1142 ((InoxSet Context!11390) (InoxSet Context!11390) List!65232) Unit!158575)

(assert (=> b!6399792 (= lt!2373655 (lemmaZipperConcatMatchesSameAsBothZippers!1142 lt!2373668 lt!2373666 (t!378840 s!2326)))))

(declare-fun res!2631509 () Bool)

(assert (=> b!6399792 (= res!2631509 (matchZipper!2323 lt!2373668 (t!378840 s!2326)))))

(declare-fun e!3883972 () Bool)

(assert (=> b!6399792 (=> res!2631509 e!3883972)))

(assert (=> b!6399792 (= (matchZipper!2323 ((_ map or) lt!2373668 lt!2373666) (t!378840 s!2326)) e!3883972)))

(assert (=> b!6399793 (= e!3883975 e!3883962)))

(declare-fun res!2631510 () Bool)

(assert (=> b!6399793 (=> res!2631510 e!3883962)))

(assert (=> b!6399793 (= res!2631510 (or (and ((_ is ElementMatch!16311) (regOne!33134 r!7292)) (= (c!1167428 (regOne!33134 r!7292)) (h!71556 s!2326))) ((_ is Union!16311) (regOne!33134 r!7292))))))

(declare-fun lt!2373672 () Unit!158575)

(assert (=> b!6399793 (= lt!2373672 e!3883965)))

(declare-fun c!1167427 () Bool)

(declare-fun nullable!6304 (Regex!16311) Bool)

(assert (=> b!6399793 (= c!1167427 (nullable!6304 (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun lambda!353313 () Int)

(declare-fun flatMap!1816 ((InoxSet Context!11390) Int) (InoxSet Context!11390))

(declare-fun derivationStepZipperUp!1485 (Context!11390 C!32892) (InoxSet Context!11390))

(assert (=> b!6399793 (= (flatMap!1816 z!1189 lambda!353313) (derivationStepZipperUp!1485 (h!71558 zl!343) (h!71556 s!2326)))))

(declare-fun lt!2373674 () Unit!158575)

(declare-fun lemmaFlatMapOnSingletonSet!1342 ((InoxSet Context!11390) Context!11390 Int) Unit!158575)

(assert (=> b!6399793 (= lt!2373674 (lemmaFlatMapOnSingletonSet!1342 z!1189 (h!71558 zl!343) lambda!353313))))

(assert (=> b!6399793 (= lt!2373666 (derivationStepZipperUp!1485 lt!2373656 (h!71556 s!2326)))))

(assert (=> b!6399793 (= lt!2373668 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (h!71558 zl!343))) lt!2373656 (h!71556 s!2326)))))

(assert (=> b!6399793 (= lt!2373656 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun lt!2373650 () (InoxSet Context!11390))

(assert (=> b!6399793 (= lt!2373650 (derivationStepZipperUp!1485 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))) (h!71556 s!2326)))))

(declare-fun b!6399794 () Bool)

(assert (=> b!6399794 (= e!3883977 (or (not lt!2373662) lt!2373667))))

(declare-fun b!6399795 () Bool)

(assert (=> b!6399795 (= e!3883963 (= lt!2373661 (unfocusZipper!2053 lt!2373651)))))

(declare-fun tp!1779181 () Bool)

(declare-fun setNonEmpty!43686 () Bool)

(declare-fun setElem!43686 () Context!11390)

(declare-fun e!3883959 () Bool)

(declare-fun inv!84024 (Context!11390) Bool)

(assert (=> setNonEmpty!43686 (= setRes!43686 (and tp!1779181 (inv!84024 setElem!43686) e!3883959))))

(declare-fun setRest!43686 () (InoxSet Context!11390))

(assert (=> setNonEmpty!43686 (= z!1189 ((_ map or) (store ((as const (Array Context!11390 Bool)) false) setElem!43686 true) setRest!43686))))

(declare-fun b!6399796 () Bool)

(declare-fun res!2631525 () Bool)

(assert (=> b!6399796 (=> res!2631525 e!3883962)))

(declare-fun e!3883960 () Bool)

(assert (=> b!6399796 (= res!2631525 e!3883960)))

(declare-fun res!2631536 () Bool)

(assert (=> b!6399796 (=> (not res!2631536) (not e!3883960))))

(assert (=> b!6399796 (= res!2631536 ((_ is Concat!25156) (regOne!33134 r!7292)))))

(declare-fun b!6399767 () Bool)

(assert (=> b!6399767 (= e!3883972 (matchZipper!2323 lt!2373666 (t!378840 s!2326)))))

(declare-fun res!2631524 () Bool)

(assert (=> start!633262 (=> (not res!2631524) (not e!3883968))))

(assert (=> start!633262 (= res!2631524 (validRegex!8047 r!7292))))

(assert (=> start!633262 e!3883968))

(assert (=> start!633262 e!3883966))

(declare-fun condSetEmpty!43686 () Bool)

(assert (=> start!633262 (= condSetEmpty!43686 (= z!1189 ((as const (Array Context!11390 Bool)) false)))))

(assert (=> start!633262 setRes!43686))

(declare-fun e!3883980 () Bool)

(assert (=> start!633262 e!3883980))

(assert (=> start!633262 e!3883967))

(declare-fun b!6399797 () Bool)

(declare-fun res!2631520 () Bool)

(assert (=> b!6399797 (=> res!2631520 e!3883958)))

(declare-fun isEmpty!37254 (List!65234) Bool)

(assert (=> b!6399797 (= res!2631520 (not (isEmpty!37254 (t!378842 zl!343))))))

(declare-fun b!6399798 () Bool)

(declare-fun res!2631515 () Bool)

(assert (=> b!6399798 (=> res!2631515 e!3883961)))

(assert (=> b!6399798 (= res!2631515 (not (matchR!8494 (regTwo!33134 r!7292) (_2!36593 lt!2373686))))))

(declare-fun b!6399799 () Bool)

(declare-fun tp!1779182 () Bool)

(declare-fun tp!1779177 () Bool)

(assert (=> b!6399799 (= e!3883966 (and tp!1779182 tp!1779177))))

(declare-fun b!6399800 () Bool)

(declare-fun tp!1779176 () Bool)

(assert (=> b!6399800 (= e!3883959 tp!1779176)))

(declare-fun b!6399801 () Bool)

(assert (=> b!6399801 (= e!3883969 e!3883964)))

(declare-fun res!2631530 () Bool)

(assert (=> b!6399801 (=> res!2631530 e!3883964)))

(assert (=> b!6399801 (= res!2631530 (not (= lt!2373665 lt!2373685)))))

(assert (=> b!6399801 (= (flatMap!1816 lt!2373660 lambda!353313) (derivationStepZipperUp!1485 lt!2373669 (h!71556 s!2326)))))

(declare-fun lt!2373663 () Unit!158575)

(assert (=> b!6399801 (= lt!2373663 (lemmaFlatMapOnSingletonSet!1342 lt!2373660 lt!2373669 lambda!353313))))

(declare-fun lt!2373682 () (InoxSet Context!11390))

(assert (=> b!6399801 (= lt!2373682 (derivationStepZipperUp!1485 lt!2373669 (h!71556 s!2326)))))

(declare-fun derivationStepZipper!2277 ((InoxSet Context!11390) C!32892) (InoxSet Context!11390))

(assert (=> b!6399801 (= lt!2373665 (derivationStepZipper!2277 lt!2373660 (h!71556 s!2326)))))

(assert (=> b!6399801 (= lt!2373660 (store ((as const (Array Context!11390 Bool)) false) lt!2373669 true))))

(assert (=> b!6399801 (= lt!2373669 (Context!11391 (Cons!65109 (reg!16640 (regOne!33134 r!7292)) lt!2373676)))))

(declare-fun tp!1779173 () Bool)

(declare-fun b!6399802 () Bool)

(assert (=> b!6399802 (= e!3883980 (and (inv!84024 (h!71558 zl!343)) e!3883957 tp!1779173))))

(declare-fun b!6399803 () Bool)

(assert (=> b!6399803 (= e!3883960 (nullable!6304 (regOne!33134 (regOne!33134 r!7292))))))

(declare-fun b!6399804 () Bool)

(declare-fun tp!1779178 () Bool)

(assert (=> b!6399804 (= e!3883966 tp!1779178)))

(declare-fun b!6399805 () Bool)

(assert (=> b!6399805 (= e!3883966 tp_is_empty!41875)))

(declare-fun b!6399806 () Bool)

(assert (=> b!6399806 (= e!3883978 e!3883976)))

(declare-fun res!2631539 () Bool)

(assert (=> b!6399806 (=> res!2631539 e!3883976)))

(declare-fun lt!2373684 () Context!11390)

(assert (=> b!6399806 (= res!2631539 (not (= (unfocusZipper!2053 (Cons!65110 lt!2373684 Nil!65110)) (reg!16640 (regOne!33134 r!7292)))))))

(declare-fun lt!2373683 () (InoxSet Context!11390))

(assert (=> b!6399806 (= (flatMap!1816 lt!2373683 lambda!353313) (derivationStepZipperUp!1485 lt!2373652 (h!71556 s!2326)))))

(declare-fun lt!2373677 () Unit!158575)

(assert (=> b!6399806 (= lt!2373677 (lemmaFlatMapOnSingletonSet!1342 lt!2373683 lt!2373652 lambda!353313))))

(declare-fun lt!2373670 () (InoxSet Context!11390))

(assert (=> b!6399806 (= (flatMap!1816 lt!2373670 lambda!353313) (derivationStepZipperUp!1485 lt!2373684 (h!71556 s!2326)))))

(declare-fun lt!2373690 () Unit!158575)

(assert (=> b!6399806 (= lt!2373690 (lemmaFlatMapOnSingletonSet!1342 lt!2373670 lt!2373684 lambda!353313))))

(declare-fun lt!2373681 () (InoxSet Context!11390))

(assert (=> b!6399806 (= lt!2373681 (derivationStepZipperUp!1485 lt!2373652 (h!71556 s!2326)))))

(declare-fun lt!2373680 () (InoxSet Context!11390))

(assert (=> b!6399806 (= lt!2373680 (derivationStepZipperUp!1485 lt!2373684 (h!71556 s!2326)))))

(assert (=> b!6399806 (= lt!2373683 (store ((as const (Array Context!11390 Bool)) false) lt!2373652 true))))

(assert (=> b!6399806 (= lt!2373670 (store ((as const (Array Context!11390 Bool)) false) lt!2373684 true))))

(assert (=> b!6399806 (= lt!2373684 (Context!11391 (Cons!65109 (reg!16640 (regOne!33134 r!7292)) Nil!65109)))))

(declare-fun b!6399807 () Bool)

(assert (=> b!6399807 (= e!3883961 e!3883970)))

(declare-fun res!2631531 () Bool)

(assert (=> b!6399807 (=> res!2631531 e!3883970)))

(assert (=> b!6399807 (= res!2631531 (not (= lt!2373666 (derivationStepZipper!2277 lt!2373688 (h!71556 s!2326)))))))

(assert (=> b!6399807 (= (flatMap!1816 lt!2373688 lambda!353313) (derivationStepZipperUp!1485 lt!2373656 (h!71556 s!2326)))))

(declare-fun lt!2373679 () Unit!158575)

(assert (=> b!6399807 (= lt!2373679 (lemmaFlatMapOnSingletonSet!1342 lt!2373688 lt!2373656 lambda!353313))))

(assert (=> b!6399807 (= lt!2373688 (store ((as const (Array Context!11390 Bool)) false) lt!2373656 true))))

(assert (= (and start!633262 res!2631524) b!6399784))

(assert (= (and b!6399784 res!2631527) b!6399773))

(assert (= (and b!6399773 res!2631521) b!6399776))

(assert (= (and b!6399776 (not res!2631529)) b!6399797))

(assert (= (and b!6399797 (not res!2631520)) b!6399765))

(assert (= (and b!6399765 (not res!2631533)) b!6399777))

(assert (= (and b!6399777 (not res!2631517)) b!6399785))

(assert (= (and b!6399785 (not res!2631516)) b!6399770))

(assert (= (and b!6399770 (not res!2631511)) b!6399780))

(assert (= (and b!6399780 (not res!2631526)) b!6399786))

(assert (= (and b!6399786 (not res!2631523)) b!6399793))

(assert (= (and b!6399793 c!1167427) b!6399792))

(assert (= (and b!6399793 (not c!1167427)) b!6399774))

(assert (= (and b!6399792 (not res!2631509)) b!6399767))

(assert (= (and b!6399793 (not res!2631510)) b!6399796))

(assert (= (and b!6399796 res!2631536) b!6399803))

(assert (= (and b!6399796 (not res!2631525)) b!6399781))

(assert (= (and b!6399781 (not res!2631541)) b!6399790))

(assert (= (and b!6399790 (not res!2631518)) b!6399801))

(assert (= (and b!6399801 (not res!2631530)) b!6399788))

(assert (= (and b!6399788 (not res!2631540)) b!6399771))

(assert (= (and b!6399771 (not res!2631537)) b!6399766))

(assert (= (and b!6399766 (not res!2631514)) b!6399778))

(assert (= (and b!6399778 (not res!2631522)) b!6399806))

(assert (= (and b!6399806 (not res!2631539)) b!6399768))

(assert (= (and b!6399768 (not res!2631538)) b!6399787))

(assert (= (and b!6399787 res!2631534) b!6399794))

(assert (= (and b!6399787 (not res!2631512)) b!6399764))

(assert (= (and b!6399764 (not res!2631513)) b!6399779))

(assert (= (and b!6399779 (not res!2631542)) b!6399798))

(assert (= (and b!6399798 (not res!2631515)) b!6399791))

(assert (= (and b!6399791 (not res!2631528)) b!6399807))

(assert (= (and b!6399807 (not res!2631531)) b!6399775))

(assert (= (and b!6399775 (not res!2631519)) b!6399789))

(assert (= (and b!6399789 (not res!2631535)) b!6399769))

(assert (= (and b!6399769 (not res!2631532)) b!6399783))

(assert (= (and b!6399783 (not res!2631508)) b!6399795))

(assert (= (and start!633262 ((_ is ElementMatch!16311) r!7292)) b!6399805))

(assert (= (and start!633262 ((_ is Concat!25156) r!7292)) b!6399799))

(assert (= (and start!633262 ((_ is Star!16311) r!7292)) b!6399804))

(assert (= (and start!633262 ((_ is Union!16311) r!7292)) b!6399782))

(assert (= (and start!633262 condSetEmpty!43686) setIsEmpty!43686))

(assert (= (and start!633262 (not condSetEmpty!43686)) setNonEmpty!43686))

(assert (= setNonEmpty!43686 b!6399800))

(assert (= b!6399802 b!6399772))

(assert (= (and start!633262 ((_ is Cons!65110) zl!343)) b!6399802))

(assert (= (and start!633262 ((_ is Cons!65108) s!2326)) b!6399763))

(declare-fun m!7197088 () Bool)

(assert (=> b!6399798 m!7197088))

(declare-fun m!7197090 () Bool)

(assert (=> b!6399787 m!7197090))

(declare-fun m!7197092 () Bool)

(assert (=> b!6399787 m!7197092))

(declare-fun m!7197094 () Bool)

(assert (=> b!6399787 m!7197094))

(declare-fun m!7197096 () Bool)

(assert (=> b!6399793 m!7197096))

(declare-fun m!7197098 () Bool)

(assert (=> b!6399793 m!7197098))

(declare-fun m!7197100 () Bool)

(assert (=> b!6399793 m!7197100))

(declare-fun m!7197102 () Bool)

(assert (=> b!6399793 m!7197102))

(declare-fun m!7197104 () Bool)

(assert (=> b!6399793 m!7197104))

(declare-fun m!7197106 () Bool)

(assert (=> b!6399793 m!7197106))

(declare-fun m!7197108 () Bool)

(assert (=> b!6399793 m!7197108))

(declare-fun m!7197110 () Bool)

(assert (=> b!6399791 m!7197110))

(declare-fun m!7197112 () Bool)

(assert (=> b!6399765 m!7197112))

(declare-fun m!7197114 () Bool)

(assert (=> b!6399786 m!7197114))

(declare-fun m!7197116 () Bool)

(assert (=> b!6399778 m!7197116))

(declare-fun m!7197118 () Bool)

(assert (=> b!6399806 m!7197118))

(declare-fun m!7197120 () Bool)

(assert (=> b!6399806 m!7197120))

(declare-fun m!7197122 () Bool)

(assert (=> b!6399806 m!7197122))

(declare-fun m!7197124 () Bool)

(assert (=> b!6399806 m!7197124))

(declare-fun m!7197126 () Bool)

(assert (=> b!6399806 m!7197126))

(declare-fun m!7197128 () Bool)

(assert (=> b!6399806 m!7197128))

(declare-fun m!7197130 () Bool)

(assert (=> b!6399806 m!7197130))

(declare-fun m!7197132 () Bool)

(assert (=> b!6399806 m!7197132))

(declare-fun m!7197134 () Bool)

(assert (=> b!6399806 m!7197134))

(declare-fun m!7197136 () Bool)

(assert (=> b!6399769 m!7197136))

(declare-fun m!7197138 () Bool)

(assert (=> b!6399768 m!7197138))

(declare-fun m!7197140 () Bool)

(assert (=> b!6399803 m!7197140))

(declare-fun m!7197142 () Bool)

(assert (=> b!6399780 m!7197142))

(declare-fun m!7197144 () Bool)

(assert (=> b!6399780 m!7197144))

(declare-fun m!7197146 () Bool)

(assert (=> b!6399780 m!7197146))

(declare-fun m!7197148 () Bool)

(assert (=> b!6399780 m!7197148))

(assert (=> b!6399780 m!7197144))

(declare-fun m!7197150 () Bool)

(assert (=> b!6399780 m!7197150))

(declare-fun m!7197152 () Bool)

(assert (=> b!6399780 m!7197152))

(assert (=> b!6399780 m!7197148))

(declare-fun m!7197154 () Bool)

(assert (=> b!6399785 m!7197154))

(assert (=> b!6399785 m!7197154))

(declare-fun m!7197156 () Bool)

(assert (=> b!6399785 m!7197156))

(declare-fun m!7197158 () Bool)

(assert (=> b!6399790 m!7197158))

(declare-fun m!7197160 () Bool)

(assert (=> b!6399776 m!7197160))

(declare-fun m!7197162 () Bool)

(assert (=> b!6399776 m!7197162))

(declare-fun m!7197164 () Bool)

(assert (=> b!6399776 m!7197164))

(declare-fun m!7197166 () Bool)

(assert (=> b!6399773 m!7197166))

(declare-fun m!7197168 () Bool)

(assert (=> b!6399792 m!7197168))

(declare-fun m!7197170 () Bool)

(assert (=> b!6399792 m!7197170))

(declare-fun m!7197172 () Bool)

(assert (=> b!6399792 m!7197172))

(declare-fun m!7197174 () Bool)

(assert (=> b!6399802 m!7197174))

(declare-fun m!7197176 () Bool)

(assert (=> b!6399788 m!7197176))

(declare-fun m!7197178 () Bool)

(assert (=> b!6399788 m!7197178))

(declare-fun m!7197180 () Bool)

(assert (=> b!6399789 m!7197180))

(declare-fun m!7197182 () Bool)

(assert (=> b!6399789 m!7197182))

(declare-fun m!7197184 () Bool)

(assert (=> b!6399764 m!7197184))

(declare-fun m!7197186 () Bool)

(assert (=> b!6399764 m!7197186))

(declare-fun m!7197188 () Bool)

(assert (=> b!6399764 m!7197188))

(declare-fun m!7197190 () Bool)

(assert (=> b!6399764 m!7197190))

(declare-fun m!7197192 () Bool)

(assert (=> b!6399764 m!7197192))

(declare-fun m!7197194 () Bool)

(assert (=> b!6399764 m!7197194))

(declare-fun m!7197196 () Bool)

(assert (=> b!6399764 m!7197196))

(declare-fun m!7197198 () Bool)

(assert (=> b!6399764 m!7197198))

(assert (=> b!6399764 m!7197192))

(declare-fun m!7197200 () Bool)

(assert (=> setNonEmpty!43686 m!7197200))

(declare-fun m!7197202 () Bool)

(assert (=> b!6399807 m!7197202))

(declare-fun m!7197204 () Bool)

(assert (=> b!6399807 m!7197204))

(assert (=> b!6399807 m!7197104))

(declare-fun m!7197206 () Bool)

(assert (=> b!6399807 m!7197206))

(declare-fun m!7197208 () Bool)

(assert (=> b!6399807 m!7197208))

(declare-fun m!7197210 () Bool)

(assert (=> b!6399784 m!7197210))

(declare-fun m!7197212 () Bool)

(assert (=> b!6399801 m!7197212))

(declare-fun m!7197214 () Bool)

(assert (=> b!6399801 m!7197214))

(declare-fun m!7197216 () Bool)

(assert (=> b!6399801 m!7197216))

(declare-fun m!7197218 () Bool)

(assert (=> b!6399801 m!7197218))

(declare-fun m!7197220 () Bool)

(assert (=> b!6399801 m!7197220))

(declare-fun m!7197222 () Bool)

(assert (=> b!6399783 m!7197222))

(declare-fun m!7197224 () Bool)

(assert (=> b!6399779 m!7197224))

(declare-fun m!7197226 () Bool)

(assert (=> b!6399795 m!7197226))

(declare-fun m!7197228 () Bool)

(assert (=> b!6399797 m!7197228))

(declare-fun m!7197230 () Bool)

(assert (=> b!6399767 m!7197230))

(declare-fun m!7197232 () Bool)

(assert (=> b!6399775 m!7197232))

(declare-fun m!7197234 () Bool)

(assert (=> b!6399775 m!7197234))

(declare-fun m!7197236 () Bool)

(assert (=> b!6399775 m!7197236))

(declare-fun m!7197238 () Bool)

(assert (=> start!633262 m!7197238))

(check-sat (not b!6399807) (not b!6399772) (not b!6399782) (not b!6399769) (not b!6399765) (not b!6399764) (not b!6399783) tp_is_empty!41875 (not b!6399798) (not b!6399786) (not b!6399776) (not b!6399795) (not b!6399780) (not b!6399775) (not b!6399784) (not b!6399789) (not b!6399773) (not setNonEmpty!43686) (not b!6399801) (not start!633262) (not b!6399802) (not b!6399790) (not b!6399799) (not b!6399803) (not b!6399785) (not b!6399768) (not b!6399806) (not b!6399778) (not b!6399792) (not b!6399763) (not b!6399791) (not b!6399779) (not b!6399797) (not b!6399787) (not b!6399793) (not b!6399800) (not b!6399804) (not b!6399767) (not b!6399788))
(check-sat)
(get-model)

(declare-fun d!2006341 () Bool)

(assert (=> d!2006341 (= (get!22550 lt!2373675) (v!52372 lt!2373675))))

(assert (=> b!6399764 d!2006341))

(declare-fun d!2006345 () Bool)

(declare-fun choose!47587 (Int) Bool)

(assert (=> d!2006345 (= (Exists!3381 lambda!353314) (choose!47587 lambda!353314))))

(declare-fun bs!1604662 () Bool)

(assert (= bs!1604662 d!2006345))

(declare-fun m!7197354 () Bool)

(assert (=> bs!1604662 m!7197354))

(assert (=> b!6399764 d!2006345))

(declare-fun d!2006347 () Bool)

(declare-fun isEmpty!37255 (Option!16202) Bool)

(assert (=> d!2006347 (= (isDefined!12905 lt!2373675) (not (isEmpty!37255 lt!2373675)))))

(declare-fun bs!1604663 () Bool)

(assert (= bs!1604663 d!2006347))

(declare-fun m!7197356 () Bool)

(assert (=> bs!1604663 m!7197356))

(assert (=> b!6399764 d!2006347))

(declare-fun bs!1604665 () Bool)

(declare-fun d!2006349 () Bool)

(assert (= bs!1604665 (and d!2006349 b!6399780)))

(declare-fun lambda!353337 () Int)

(assert (=> bs!1604665 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353337 lambda!353311))))

(assert (=> bs!1604665 (not (= lambda!353337 lambda!353312))))

(declare-fun bs!1604666 () Bool)

(assert (= bs!1604666 (and d!2006349 b!6399764)))

(assert (=> bs!1604666 (= lambda!353337 lambda!353314)))

(assert (=> bs!1604666 (not (= lambda!353337 lambda!353315))))

(assert (=> d!2006349 true))

(assert (=> d!2006349 true))

(assert (=> d!2006349 true))

(declare-fun lambda!353340 () Int)

(assert (=> bs!1604665 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353340 lambda!353312))))

(assert (=> bs!1604666 (= lambda!353340 lambda!353315)))

(assert (=> bs!1604666 (not (= lambda!353340 lambda!353314))))

(declare-fun bs!1604668 () Bool)

(assert (= bs!1604668 d!2006349))

(assert (=> bs!1604668 (not (= lambda!353340 lambda!353337))))

(assert (=> bs!1604665 (not (= lambda!353340 lambda!353311))))

(assert (=> d!2006349 true))

(assert (=> d!2006349 true))

(assert (=> d!2006349 true))

(assert (=> d!2006349 (= (Exists!3381 lambda!353337) (Exists!3381 lambda!353340))))

(declare-fun lt!2373720 () Unit!158575)

(declare-fun choose!47588 (Regex!16311 Regex!16311 List!65232) Unit!158575)

(assert (=> d!2006349 (= lt!2373720 (choose!47588 lt!2373664 (regTwo!33134 r!7292) s!2326))))

(assert (=> d!2006349 (validRegex!8047 lt!2373664)))

(assert (=> d!2006349 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1918 lt!2373664 (regTwo!33134 r!7292) s!2326) lt!2373720)))

(declare-fun m!7197388 () Bool)

(assert (=> bs!1604668 m!7197388))

(declare-fun m!7197390 () Bool)

(assert (=> bs!1604668 m!7197390))

(declare-fun m!7197392 () Bool)

(assert (=> bs!1604668 m!7197392))

(declare-fun m!7197394 () Bool)

(assert (=> bs!1604668 m!7197394))

(assert (=> b!6399764 d!2006349))

(declare-fun d!2006361 () Bool)

(assert (=> d!2006361 (= (Exists!3381 lambda!353315) (choose!47587 lambda!353315))))

(declare-fun bs!1604670 () Bool)

(assert (= bs!1604670 d!2006361))

(declare-fun m!7197396 () Bool)

(assert (=> bs!1604670 m!7197396))

(assert (=> b!6399764 d!2006361))

(declare-fun b!6400054 () Bool)

(declare-fun e!3884113 () List!65232)

(assert (=> b!6400054 (= e!3884113 (Cons!65108 (h!71556 (_1!36593 lt!2373686)) (++!14379 (t!378840 (_1!36593 lt!2373686)) (_2!36593 lt!2373686))))))

(declare-fun b!6400055 () Bool)

(declare-fun res!2631641 () Bool)

(declare-fun e!3884112 () Bool)

(assert (=> b!6400055 (=> (not res!2631641) (not e!3884112))))

(declare-fun lt!2373731 () List!65232)

(declare-fun size!40369 (List!65232) Int)

(assert (=> b!6400055 (= res!2631641 (= (size!40369 lt!2373731) (+ (size!40369 (_1!36593 lt!2373686)) (size!40369 (_2!36593 lt!2373686)))))))

(declare-fun b!6400056 () Bool)

(assert (=> b!6400056 (= e!3884112 (or (not (= (_2!36593 lt!2373686) Nil!65108)) (= lt!2373731 (_1!36593 lt!2373686))))))

(declare-fun b!6400053 () Bool)

(assert (=> b!6400053 (= e!3884113 (_2!36593 lt!2373686))))

(declare-fun d!2006363 () Bool)

(assert (=> d!2006363 e!3884112))

(declare-fun res!2631640 () Bool)

(assert (=> d!2006363 (=> (not res!2631640) (not e!3884112))))

(declare-fun content!12334 (List!65232) (InoxSet C!32892))

(assert (=> d!2006363 (= res!2631640 (= (content!12334 lt!2373731) ((_ map or) (content!12334 (_1!36593 lt!2373686)) (content!12334 (_2!36593 lt!2373686)))))))

(assert (=> d!2006363 (= lt!2373731 e!3884113)))

(declare-fun c!1167505 () Bool)

(assert (=> d!2006363 (= c!1167505 ((_ is Nil!65108) (_1!36593 lt!2373686)))))

(assert (=> d!2006363 (= (++!14379 (_1!36593 lt!2373686) (_2!36593 lt!2373686)) lt!2373731)))

(assert (= (and d!2006363 c!1167505) b!6400053))

(assert (= (and d!2006363 (not c!1167505)) b!6400054))

(assert (= (and d!2006363 res!2631640) b!6400055))

(assert (= (and b!6400055 res!2631641) b!6400056))

(declare-fun m!7197410 () Bool)

(assert (=> b!6400054 m!7197410))

(declare-fun m!7197412 () Bool)

(assert (=> b!6400055 m!7197412))

(declare-fun m!7197414 () Bool)

(assert (=> b!6400055 m!7197414))

(declare-fun m!7197416 () Bool)

(assert (=> b!6400055 m!7197416))

(declare-fun m!7197418 () Bool)

(assert (=> d!2006363 m!7197418))

(declare-fun m!7197420 () Bool)

(assert (=> d!2006363 m!7197420))

(declare-fun m!7197422 () Bool)

(assert (=> d!2006363 m!7197422))

(assert (=> b!6399764 d!2006363))

(declare-fun bs!1604675 () Bool)

(declare-fun d!2006367 () Bool)

(assert (= bs!1604675 (and d!2006367 b!6399780)))

(declare-fun lambda!353347 () Int)

(assert (=> bs!1604675 (not (= lambda!353347 lambda!353312))))

(declare-fun bs!1604676 () Bool)

(assert (= bs!1604676 (and d!2006367 d!2006349)))

(assert (=> bs!1604676 (not (= lambda!353347 lambda!353340))))

(declare-fun bs!1604677 () Bool)

(assert (= bs!1604677 (and d!2006367 b!6399764)))

(assert (=> bs!1604677 (not (= lambda!353347 lambda!353315))))

(assert (=> bs!1604677 (= lambda!353347 lambda!353314)))

(assert (=> bs!1604676 (= lambda!353347 lambda!353337)))

(assert (=> bs!1604675 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353347 lambda!353311))))

(assert (=> d!2006367 true))

(assert (=> d!2006367 true))

(assert (=> d!2006367 true))

(assert (=> d!2006367 (= (isDefined!12905 (findConcatSeparation!2616 lt!2373664 (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326)) (Exists!3381 lambda!353347))))

(declare-fun lt!2373740 () Unit!158575)

(declare-fun choose!47589 (Regex!16311 Regex!16311 List!65232) Unit!158575)

(assert (=> d!2006367 (= lt!2373740 (choose!47589 lt!2373664 (regTwo!33134 r!7292) s!2326))))

(assert (=> d!2006367 (validRegex!8047 lt!2373664)))

(assert (=> d!2006367 (= (lemmaFindConcatSeparationEquivalentToExists!2380 lt!2373664 (regTwo!33134 r!7292) s!2326) lt!2373740)))

(declare-fun bs!1604678 () Bool)

(assert (= bs!1604678 d!2006367))

(assert (=> bs!1604678 m!7197194))

(declare-fun m!7197424 () Bool)

(assert (=> bs!1604678 m!7197424))

(assert (=> bs!1604678 m!7197394))

(declare-fun m!7197426 () Bool)

(assert (=> bs!1604678 m!7197426))

(assert (=> bs!1604678 m!7197194))

(declare-fun m!7197428 () Bool)

(assert (=> bs!1604678 m!7197428))

(assert (=> b!6399764 d!2006367))

(declare-fun b!6400110 () Bool)

(declare-fun e!3884147 () Option!16202)

(declare-fun e!3884146 () Option!16202)

(assert (=> b!6400110 (= e!3884147 e!3884146)))

(declare-fun c!1167516 () Bool)

(assert (=> b!6400110 (= c!1167516 ((_ is Nil!65108) s!2326))))

(declare-fun b!6400111 () Bool)

(declare-fun lt!2373753 () Unit!158575)

(declare-fun lt!2373755 () Unit!158575)

(assert (=> b!6400111 (= lt!2373753 lt!2373755)))

(assert (=> b!6400111 (= (++!14379 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (t!378840 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2473 (List!65232 C!32892 List!65232 List!65232) Unit!158575)

(assert (=> b!6400111 (= lt!2373755 (lemmaMoveElementToOtherListKeepsConcatEq!2473 Nil!65108 (h!71556 s!2326) (t!378840 s!2326) s!2326))))

(assert (=> b!6400111 (= e!3884146 (findConcatSeparation!2616 lt!2373664 (regTwo!33134 r!7292) (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (t!378840 s!2326) s!2326))))

(declare-fun b!6400112 () Bool)

(declare-fun e!3884143 () Bool)

(declare-fun lt!2373754 () Option!16202)

(assert (=> b!6400112 (= e!3884143 (not (isDefined!12905 lt!2373754)))))

(declare-fun b!6400113 () Bool)

(declare-fun res!2631679 () Bool)

(declare-fun e!3884144 () Bool)

(assert (=> b!6400113 (=> (not res!2631679) (not e!3884144))))

(assert (=> b!6400113 (= res!2631679 (matchR!8494 (regTwo!33134 r!7292) (_2!36593 (get!22550 lt!2373754))))))

(declare-fun b!6400114 () Bool)

(declare-fun e!3884145 () Bool)

(assert (=> b!6400114 (= e!3884145 (matchR!8494 (regTwo!33134 r!7292) s!2326))))

(declare-fun b!6400115 () Bool)

(assert (=> b!6400115 (= e!3884146 None!16201)))

(declare-fun b!6400116 () Bool)

(assert (=> b!6400116 (= e!3884144 (= (++!14379 (_1!36593 (get!22550 lt!2373754)) (_2!36593 (get!22550 lt!2373754))) s!2326))))

(declare-fun b!6400117 () Bool)

(declare-fun res!2631676 () Bool)

(assert (=> b!6400117 (=> (not res!2631676) (not e!3884144))))

(assert (=> b!6400117 (= res!2631676 (matchR!8494 lt!2373664 (_1!36593 (get!22550 lt!2373754))))))

(declare-fun d!2006369 () Bool)

(assert (=> d!2006369 e!3884143))

(declare-fun res!2631678 () Bool)

(assert (=> d!2006369 (=> res!2631678 e!3884143)))

(assert (=> d!2006369 (= res!2631678 e!3884144)))

(declare-fun res!2631675 () Bool)

(assert (=> d!2006369 (=> (not res!2631675) (not e!3884144))))

(assert (=> d!2006369 (= res!2631675 (isDefined!12905 lt!2373754))))

(assert (=> d!2006369 (= lt!2373754 e!3884147)))

(declare-fun c!1167517 () Bool)

(assert (=> d!2006369 (= c!1167517 e!3884145)))

(declare-fun res!2631677 () Bool)

(assert (=> d!2006369 (=> (not res!2631677) (not e!3884145))))

(assert (=> d!2006369 (= res!2631677 (matchR!8494 lt!2373664 Nil!65108))))

(assert (=> d!2006369 (validRegex!8047 lt!2373664)))

(assert (=> d!2006369 (= (findConcatSeparation!2616 lt!2373664 (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326) lt!2373754)))

(declare-fun b!6400118 () Bool)

(assert (=> b!6400118 (= e!3884147 (Some!16201 (tuple2!66581 Nil!65108 s!2326)))))

(assert (= (and d!2006369 res!2631677) b!6400114))

(assert (= (and d!2006369 c!1167517) b!6400118))

(assert (= (and d!2006369 (not c!1167517)) b!6400110))

(assert (= (and b!6400110 c!1167516) b!6400115))

(assert (= (and b!6400110 (not c!1167516)) b!6400111))

(assert (= (and d!2006369 res!2631675) b!6400117))

(assert (= (and b!6400117 res!2631676) b!6400113))

(assert (= (and b!6400113 res!2631679) b!6400116))

(assert (= (and d!2006369 (not res!2631678)) b!6400112))

(declare-fun m!7197462 () Bool)

(assert (=> b!6400113 m!7197462))

(declare-fun m!7197464 () Bool)

(assert (=> b!6400113 m!7197464))

(assert (=> b!6400117 m!7197462))

(declare-fun m!7197466 () Bool)

(assert (=> b!6400117 m!7197466))

(declare-fun m!7197468 () Bool)

(assert (=> b!6400114 m!7197468))

(declare-fun m!7197470 () Bool)

(assert (=> d!2006369 m!7197470))

(declare-fun m!7197472 () Bool)

(assert (=> d!2006369 m!7197472))

(assert (=> d!2006369 m!7197394))

(declare-fun m!7197474 () Bool)

(assert (=> b!6400111 m!7197474))

(assert (=> b!6400111 m!7197474))

(declare-fun m!7197476 () Bool)

(assert (=> b!6400111 m!7197476))

(declare-fun m!7197478 () Bool)

(assert (=> b!6400111 m!7197478))

(assert (=> b!6400111 m!7197474))

(declare-fun m!7197480 () Bool)

(assert (=> b!6400111 m!7197480))

(assert (=> b!6400112 m!7197470))

(assert (=> b!6400116 m!7197462))

(declare-fun m!7197482 () Bool)

(assert (=> b!6400116 m!7197482))

(assert (=> b!6399764 d!2006369))

(declare-fun d!2006379 () Bool)

(declare-fun e!3884152 () Bool)

(assert (=> d!2006379 e!3884152))

(declare-fun res!2631686 () Bool)

(assert (=> d!2006379 (=> (not res!2631686) (not e!3884152))))

(declare-fun lt!2373760 () List!65234)

(declare-fun noDuplicate!2139 (List!65234) Bool)

(assert (=> d!2006379 (= res!2631686 (noDuplicate!2139 lt!2373760))))

(declare-fun choose!47591 ((InoxSet Context!11390)) List!65234)

(assert (=> d!2006379 (= lt!2373760 (choose!47591 z!1189))))

(assert (=> d!2006379 (= (toList!10095 z!1189) lt!2373760)))

(declare-fun b!6400125 () Bool)

(declare-fun content!12335 (List!65234) (InoxSet Context!11390))

(assert (=> b!6400125 (= e!3884152 (= (content!12335 lt!2373760) z!1189))))

(assert (= (and d!2006379 res!2631686) b!6400125))

(declare-fun m!7197484 () Bool)

(assert (=> d!2006379 m!7197484))

(declare-fun m!7197486 () Bool)

(assert (=> d!2006379 m!7197486))

(declare-fun m!7197488 () Bool)

(assert (=> b!6400125 m!7197488))

(assert (=> b!6399784 d!2006379))

(declare-fun d!2006381 () Bool)

(assert (=> d!2006381 (= (isEmpty!37252 (t!378841 (exprs!6195 (h!71558 zl!343)))) ((_ is Nil!65109) (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> b!6399786 d!2006381))

(declare-fun d!2006383 () Bool)

(declare-fun choose!47592 ((InoxSet Context!11390) Int) (InoxSet Context!11390))

(assert (=> d!2006383 (= (flatMap!1816 lt!2373683 lambda!353313) (choose!47592 lt!2373683 lambda!353313))))

(declare-fun bs!1604688 () Bool)

(assert (= bs!1604688 d!2006383))

(declare-fun m!7197490 () Bool)

(assert (=> bs!1604688 m!7197490))

(assert (=> b!6399806 d!2006383))

(declare-fun d!2006385 () Bool)

(declare-fun lt!2373764 () Regex!16311)

(assert (=> d!2006385 (validRegex!8047 lt!2373764)))

(assert (=> d!2006385 (= lt!2373764 (generalisedUnion!2155 (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110))))))

(assert (=> d!2006385 (= (unfocusZipper!2053 (Cons!65110 lt!2373684 Nil!65110)) lt!2373764)))

(declare-fun bs!1604689 () Bool)

(assert (= bs!1604689 d!2006385))

(declare-fun m!7197492 () Bool)

(assert (=> bs!1604689 m!7197492))

(declare-fun m!7197494 () Bool)

(assert (=> bs!1604689 m!7197494))

(assert (=> bs!1604689 m!7197494))

(declare-fun m!7197496 () Bool)

(assert (=> bs!1604689 m!7197496))

(assert (=> b!6399806 d!2006385))

(declare-fun d!2006387 () Bool)

(declare-fun dynLambda!25841 (Int Context!11390) (InoxSet Context!11390))

(assert (=> d!2006387 (= (flatMap!1816 lt!2373683 lambda!353313) (dynLambda!25841 lambda!353313 lt!2373652))))

(declare-fun lt!2373767 () Unit!158575)

(declare-fun choose!47593 ((InoxSet Context!11390) Context!11390 Int) Unit!158575)

(assert (=> d!2006387 (= lt!2373767 (choose!47593 lt!2373683 lt!2373652 lambda!353313))))

(assert (=> d!2006387 (= lt!2373683 (store ((as const (Array Context!11390 Bool)) false) lt!2373652 true))))

(assert (=> d!2006387 (= (lemmaFlatMapOnSingletonSet!1342 lt!2373683 lt!2373652 lambda!353313) lt!2373767)))

(declare-fun b_lambda!243199 () Bool)

(assert (=> (not b_lambda!243199) (not d!2006387)))

(declare-fun bs!1604697 () Bool)

(assert (= bs!1604697 d!2006387))

(assert (=> bs!1604697 m!7197132))

(declare-fun m!7197498 () Bool)

(assert (=> bs!1604697 m!7197498))

(declare-fun m!7197500 () Bool)

(assert (=> bs!1604697 m!7197500))

(assert (=> bs!1604697 m!7197120))

(assert (=> b!6399806 d!2006387))

(declare-fun call!548432 () (InoxSet Context!11390))

(declare-fun e!3884169 () (InoxSet Context!11390))

(declare-fun b!6400155 () Bool)

(assert (=> b!6400155 (= e!3884169 ((_ map or) call!548432 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 lt!2373652))) (h!71556 s!2326))))))

(declare-fun d!2006389 () Bool)

(declare-fun c!1167529 () Bool)

(declare-fun e!3884171 () Bool)

(assert (=> d!2006389 (= c!1167529 e!3884171)))

(declare-fun res!2631694 () Bool)

(assert (=> d!2006389 (=> (not res!2631694) (not e!3884171))))

(assert (=> d!2006389 (= res!2631694 ((_ is Cons!65109) (exprs!6195 lt!2373652)))))

(assert (=> d!2006389 (= (derivationStepZipperUp!1485 lt!2373652 (h!71556 s!2326)) e!3884169)))

(declare-fun b!6400156 () Bool)

(assert (=> b!6400156 (= e!3884171 (nullable!6304 (h!71557 (exprs!6195 lt!2373652))))))

(declare-fun b!6400157 () Bool)

(declare-fun e!3884170 () (InoxSet Context!11390))

(assert (=> b!6400157 (= e!3884170 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548427 () Bool)

(assert (=> bm!548427 (= call!548432 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 lt!2373652)) (Context!11391 (t!378841 (exprs!6195 lt!2373652))) (h!71556 s!2326)))))

(declare-fun b!6400158 () Bool)

(assert (=> b!6400158 (= e!3884169 e!3884170)))

(declare-fun c!1167530 () Bool)

(assert (=> b!6400158 (= c!1167530 ((_ is Cons!65109) (exprs!6195 lt!2373652)))))

(declare-fun b!6400159 () Bool)

(assert (=> b!6400159 (= e!3884170 call!548432)))

(assert (= (and d!2006389 res!2631694) b!6400156))

(assert (= (and d!2006389 c!1167529) b!6400155))

(assert (= (and d!2006389 (not c!1167529)) b!6400158))

(assert (= (and b!6400158 c!1167530) b!6400159))

(assert (= (and b!6400158 (not c!1167530)) b!6400157))

(assert (= (or b!6400155 b!6400159) bm!548427))

(declare-fun m!7197548 () Bool)

(assert (=> b!6400155 m!7197548))

(declare-fun m!7197552 () Bool)

(assert (=> b!6400156 m!7197552))

(declare-fun m!7197554 () Bool)

(assert (=> bm!548427 m!7197554))

(assert (=> b!6399806 d!2006389))

(declare-fun d!2006411 () Bool)

(assert (=> d!2006411 (= (flatMap!1816 lt!2373670 lambda!353313) (choose!47592 lt!2373670 lambda!353313))))

(declare-fun bs!1604704 () Bool)

(assert (= bs!1604704 d!2006411))

(declare-fun m!7197556 () Bool)

(assert (=> bs!1604704 m!7197556))

(assert (=> b!6399806 d!2006411))

(declare-fun d!2006413 () Bool)

(assert (=> d!2006413 (= (flatMap!1816 lt!2373670 lambda!353313) (dynLambda!25841 lambda!353313 lt!2373684))))

(declare-fun lt!2373771 () Unit!158575)

(assert (=> d!2006413 (= lt!2373771 (choose!47593 lt!2373670 lt!2373684 lambda!353313))))

(assert (=> d!2006413 (= lt!2373670 (store ((as const (Array Context!11390 Bool)) false) lt!2373684 true))))

(assert (=> d!2006413 (= (lemmaFlatMapOnSingletonSet!1342 lt!2373670 lt!2373684 lambda!353313) lt!2373771)))

(declare-fun b_lambda!243201 () Bool)

(assert (=> (not b_lambda!243201) (not d!2006413)))

(declare-fun bs!1604705 () Bool)

(assert (= bs!1604705 d!2006413))

(assert (=> bs!1604705 m!7197128))

(declare-fun m!7197558 () Bool)

(assert (=> bs!1604705 m!7197558))

(declare-fun m!7197560 () Bool)

(assert (=> bs!1604705 m!7197560))

(assert (=> bs!1604705 m!7197124))

(assert (=> b!6399806 d!2006413))

(declare-fun b!6400160 () Bool)

(declare-fun call!548433 () (InoxSet Context!11390))

(declare-fun e!3884172 () (InoxSet Context!11390))

(assert (=> b!6400160 (= e!3884172 ((_ map or) call!548433 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 lt!2373684))) (h!71556 s!2326))))))

(declare-fun d!2006415 () Bool)

(declare-fun c!1167531 () Bool)

(declare-fun e!3884174 () Bool)

(assert (=> d!2006415 (= c!1167531 e!3884174)))

(declare-fun res!2631695 () Bool)

(assert (=> d!2006415 (=> (not res!2631695) (not e!3884174))))

(assert (=> d!2006415 (= res!2631695 ((_ is Cons!65109) (exprs!6195 lt!2373684)))))

(assert (=> d!2006415 (= (derivationStepZipperUp!1485 lt!2373684 (h!71556 s!2326)) e!3884172)))

(declare-fun b!6400161 () Bool)

(assert (=> b!6400161 (= e!3884174 (nullable!6304 (h!71557 (exprs!6195 lt!2373684))))))

(declare-fun b!6400162 () Bool)

(declare-fun e!3884173 () (InoxSet Context!11390))

(assert (=> b!6400162 (= e!3884173 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548428 () Bool)

(assert (=> bm!548428 (= call!548433 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 lt!2373684)) (Context!11391 (t!378841 (exprs!6195 lt!2373684))) (h!71556 s!2326)))))

(declare-fun b!6400163 () Bool)

(assert (=> b!6400163 (= e!3884172 e!3884173)))

(declare-fun c!1167532 () Bool)

(assert (=> b!6400163 (= c!1167532 ((_ is Cons!65109) (exprs!6195 lt!2373684)))))

(declare-fun b!6400164 () Bool)

(assert (=> b!6400164 (= e!3884173 call!548433)))

(assert (= (and d!2006415 res!2631695) b!6400161))

(assert (= (and d!2006415 c!1167531) b!6400160))

(assert (= (and d!2006415 (not c!1167531)) b!6400163))

(assert (= (and b!6400163 c!1167532) b!6400164))

(assert (= (and b!6400163 (not c!1167532)) b!6400162))

(assert (= (or b!6400160 b!6400164) bm!548428))

(declare-fun m!7197562 () Bool)

(assert (=> b!6400160 m!7197562))

(declare-fun m!7197564 () Bool)

(assert (=> b!6400161 m!7197564))

(declare-fun m!7197566 () Bool)

(assert (=> bm!548428 m!7197566))

(assert (=> b!6399806 d!2006415))

(declare-fun b!6400212 () Bool)

(declare-fun e!3884211 () Regex!16311)

(assert (=> b!6400212 (= e!3884211 (Concat!25156 (h!71557 (exprs!6195 (h!71558 zl!343))) (generalisedConcat!1908 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun b!6400213 () Bool)

(declare-fun e!3884213 () Bool)

(assert (=> b!6400213 (= e!3884213 (isEmpty!37252 (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun d!2006417 () Bool)

(declare-fun e!3884209 () Bool)

(assert (=> d!2006417 e!3884209))

(declare-fun res!2631716 () Bool)

(assert (=> d!2006417 (=> (not res!2631716) (not e!3884209))))

(declare-fun lt!2373774 () Regex!16311)

(assert (=> d!2006417 (= res!2631716 (validRegex!8047 lt!2373774))))

(declare-fun e!3884208 () Regex!16311)

(assert (=> d!2006417 (= lt!2373774 e!3884208)))

(declare-fun c!1167550 () Bool)

(assert (=> d!2006417 (= c!1167550 e!3884213)))

(declare-fun res!2631715 () Bool)

(assert (=> d!2006417 (=> (not res!2631715) (not e!3884213))))

(assert (=> d!2006417 (= res!2631715 ((_ is Cons!65109) (exprs!6195 (h!71558 zl!343))))))

(declare-fun lambda!353359 () Int)

(declare-fun forall!15496 (List!65233 Int) Bool)

(assert (=> d!2006417 (forall!15496 (exprs!6195 (h!71558 zl!343)) lambda!353359)))

(assert (=> d!2006417 (= (generalisedConcat!1908 (exprs!6195 (h!71558 zl!343))) lt!2373774)))

(declare-fun b!6400214 () Bool)

(declare-fun e!3884212 () Bool)

(declare-fun head!13112 (List!65233) Regex!16311)

(assert (=> b!6400214 (= e!3884212 (= lt!2373774 (head!13112 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6400215 () Bool)

(declare-fun isConcat!1234 (Regex!16311) Bool)

(assert (=> b!6400215 (= e!3884212 (isConcat!1234 lt!2373774))))

(declare-fun b!6400216 () Bool)

(declare-fun e!3884210 () Bool)

(assert (=> b!6400216 (= e!3884210 e!3884212)))

(declare-fun c!1167549 () Bool)

(declare-fun tail!12197 (List!65233) List!65233)

(assert (=> b!6400216 (= c!1167549 (isEmpty!37252 (tail!12197 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6400217 () Bool)

(assert (=> b!6400217 (= e!3884208 (h!71557 (exprs!6195 (h!71558 zl!343))))))

(declare-fun b!6400218 () Bool)

(declare-fun isEmptyExpr!1711 (Regex!16311) Bool)

(assert (=> b!6400218 (= e!3884210 (isEmptyExpr!1711 lt!2373774))))

(declare-fun b!6400219 () Bool)

(assert (=> b!6400219 (= e!3884208 e!3884211)))

(declare-fun c!1167547 () Bool)

(assert (=> b!6400219 (= c!1167547 ((_ is Cons!65109) (exprs!6195 (h!71558 zl!343))))))

(declare-fun b!6400220 () Bool)

(assert (=> b!6400220 (= e!3884209 e!3884210)))

(declare-fun c!1167548 () Bool)

(assert (=> b!6400220 (= c!1167548 (isEmpty!37252 (exprs!6195 (h!71558 zl!343))))))

(declare-fun b!6400221 () Bool)

(assert (=> b!6400221 (= e!3884211 EmptyExpr!16311)))

(assert (= (and d!2006417 res!2631715) b!6400213))

(assert (= (and d!2006417 c!1167550) b!6400217))

(assert (= (and d!2006417 (not c!1167550)) b!6400219))

(assert (= (and b!6400219 c!1167547) b!6400212))

(assert (= (and b!6400219 (not c!1167547)) b!6400221))

(assert (= (and d!2006417 res!2631716) b!6400220))

(assert (= (and b!6400220 c!1167548) b!6400218))

(assert (= (and b!6400220 (not c!1167548)) b!6400216))

(assert (= (and b!6400216 c!1167549) b!6400214))

(assert (= (and b!6400216 (not c!1167549)) b!6400215))

(declare-fun m!7197574 () Bool)

(assert (=> b!6400216 m!7197574))

(assert (=> b!6400216 m!7197574))

(declare-fun m!7197576 () Bool)

(assert (=> b!6400216 m!7197576))

(declare-fun m!7197578 () Bool)

(assert (=> b!6400218 m!7197578))

(declare-fun m!7197580 () Bool)

(assert (=> d!2006417 m!7197580))

(declare-fun m!7197582 () Bool)

(assert (=> d!2006417 m!7197582))

(declare-fun m!7197584 () Bool)

(assert (=> b!6400214 m!7197584))

(declare-fun m!7197586 () Bool)

(assert (=> b!6400215 m!7197586))

(assert (=> b!6400212 m!7197236))

(assert (=> b!6400213 m!7197114))

(declare-fun m!7197588 () Bool)

(assert (=> b!6400220 m!7197588))

(assert (=> b!6399765 d!2006417))

(declare-fun bs!1604707 () Bool)

(declare-fun d!2006421 () Bool)

(assert (= bs!1604707 (and d!2006421 d!2006417)))

(declare-fun lambda!353365 () Int)

(assert (=> bs!1604707 (= lambda!353365 lambda!353359)))

(declare-fun b!6400275 () Bool)

(declare-fun e!3884249 () Regex!16311)

(assert (=> b!6400275 (= e!3884249 (Union!16311 (h!71557 (unfocusZipperList!1732 zl!343)) (generalisedUnion!2155 (t!378841 (unfocusZipperList!1732 zl!343)))))))

(declare-fun b!6400276 () Bool)

(declare-fun e!3884248 () Bool)

(assert (=> b!6400276 (= e!3884248 (isEmpty!37252 (t!378841 (unfocusZipperList!1732 zl!343))))))

(declare-fun b!6400277 () Bool)

(declare-fun e!3884247 () Bool)

(declare-fun lt!2373783 () Regex!16311)

(assert (=> b!6400277 (= e!3884247 (= lt!2373783 (head!13112 (unfocusZipperList!1732 zl!343))))))

(declare-fun b!6400278 () Bool)

(declare-fun isUnion!1148 (Regex!16311) Bool)

(assert (=> b!6400278 (= e!3884247 (isUnion!1148 lt!2373783))))

(declare-fun b!6400279 () Bool)

(declare-fun e!3884251 () Bool)

(assert (=> b!6400279 (= e!3884251 e!3884247)))

(declare-fun c!1167572 () Bool)

(assert (=> b!6400279 (= c!1167572 (isEmpty!37252 (tail!12197 (unfocusZipperList!1732 zl!343))))))

(declare-fun b!6400280 () Bool)

(declare-fun isEmptyLang!1718 (Regex!16311) Bool)

(assert (=> b!6400280 (= e!3884251 (isEmptyLang!1718 lt!2373783))))

(declare-fun b!6400281 () Bool)

(declare-fun e!3884252 () Bool)

(assert (=> b!6400281 (= e!3884252 e!3884251)))

(declare-fun c!1167574 () Bool)

(assert (=> b!6400281 (= c!1167574 (isEmpty!37252 (unfocusZipperList!1732 zl!343)))))

(declare-fun b!6400282 () Bool)

(assert (=> b!6400282 (= e!3884249 EmptyLang!16311)))

(declare-fun b!6400283 () Bool)

(declare-fun e!3884250 () Regex!16311)

(assert (=> b!6400283 (= e!3884250 (h!71557 (unfocusZipperList!1732 zl!343)))))

(assert (=> d!2006421 e!3884252))

(declare-fun res!2631731 () Bool)

(assert (=> d!2006421 (=> (not res!2631731) (not e!3884252))))

(assert (=> d!2006421 (= res!2631731 (validRegex!8047 lt!2373783))))

(assert (=> d!2006421 (= lt!2373783 e!3884250)))

(declare-fun c!1167573 () Bool)

(assert (=> d!2006421 (= c!1167573 e!3884248)))

(declare-fun res!2631730 () Bool)

(assert (=> d!2006421 (=> (not res!2631730) (not e!3884248))))

(assert (=> d!2006421 (= res!2631730 ((_ is Cons!65109) (unfocusZipperList!1732 zl!343)))))

(assert (=> d!2006421 (forall!15496 (unfocusZipperList!1732 zl!343) lambda!353365)))

(assert (=> d!2006421 (= (generalisedUnion!2155 (unfocusZipperList!1732 zl!343)) lt!2373783)))

(declare-fun b!6400284 () Bool)

(assert (=> b!6400284 (= e!3884250 e!3884249)))

(declare-fun c!1167571 () Bool)

(assert (=> b!6400284 (= c!1167571 ((_ is Cons!65109) (unfocusZipperList!1732 zl!343)))))

(assert (= (and d!2006421 res!2631730) b!6400276))

(assert (= (and d!2006421 c!1167573) b!6400283))

(assert (= (and d!2006421 (not c!1167573)) b!6400284))

(assert (= (and b!6400284 c!1167571) b!6400275))

(assert (= (and b!6400284 (not c!1167571)) b!6400282))

(assert (= (and d!2006421 res!2631731) b!6400281))

(assert (= (and b!6400281 c!1167574) b!6400280))

(assert (= (and b!6400281 (not c!1167574)) b!6400279))

(assert (= (and b!6400279 c!1167572) b!6400277))

(assert (= (and b!6400279 (not c!1167572)) b!6400278))

(declare-fun m!7197612 () Bool)

(assert (=> d!2006421 m!7197612))

(assert (=> d!2006421 m!7197154))

(declare-fun m!7197614 () Bool)

(assert (=> d!2006421 m!7197614))

(assert (=> b!6400279 m!7197154))

(declare-fun m!7197616 () Bool)

(assert (=> b!6400279 m!7197616))

(assert (=> b!6400279 m!7197616))

(declare-fun m!7197618 () Bool)

(assert (=> b!6400279 m!7197618))

(declare-fun m!7197620 () Bool)

(assert (=> b!6400275 m!7197620))

(assert (=> b!6400281 m!7197154))

(declare-fun m!7197622 () Bool)

(assert (=> b!6400281 m!7197622))

(declare-fun m!7197624 () Bool)

(assert (=> b!6400276 m!7197624))

(declare-fun m!7197626 () Bool)

(assert (=> b!6400278 m!7197626))

(declare-fun m!7197628 () Bool)

(assert (=> b!6400280 m!7197628))

(assert (=> b!6400277 m!7197154))

(declare-fun m!7197630 () Bool)

(assert (=> b!6400277 m!7197630))

(assert (=> b!6399785 d!2006421))

(declare-fun bs!1604708 () Bool)

(declare-fun d!2006429 () Bool)

(assert (= bs!1604708 (and d!2006429 d!2006417)))

(declare-fun lambda!353368 () Int)

(assert (=> bs!1604708 (= lambda!353368 lambda!353359)))

(declare-fun bs!1604709 () Bool)

(assert (= bs!1604709 (and d!2006429 d!2006421)))

(assert (=> bs!1604709 (= lambda!353368 lambda!353365)))

(declare-fun lt!2373788 () List!65233)

(assert (=> d!2006429 (forall!15496 lt!2373788 lambda!353368)))

(declare-fun e!3884263 () List!65233)

(assert (=> d!2006429 (= lt!2373788 e!3884263)))

(declare-fun c!1167585 () Bool)

(assert (=> d!2006429 (= c!1167585 ((_ is Cons!65110) zl!343))))

(assert (=> d!2006429 (= (unfocusZipperList!1732 zl!343) lt!2373788)))

(declare-fun b!6400305 () Bool)

(assert (=> b!6400305 (= e!3884263 (Cons!65109 (generalisedConcat!1908 (exprs!6195 (h!71558 zl!343))) (unfocusZipperList!1732 (t!378842 zl!343))))))

(declare-fun b!6400306 () Bool)

(assert (=> b!6400306 (= e!3884263 Nil!65109)))

(assert (= (and d!2006429 c!1167585) b!6400305))

(assert (= (and d!2006429 (not c!1167585)) b!6400306))

(declare-fun m!7197632 () Bool)

(assert (=> d!2006429 m!7197632))

(assert (=> b!6400305 m!7197112))

(declare-fun m!7197634 () Bool)

(assert (=> b!6400305 m!7197634))

(assert (=> b!6399785 d!2006429))

(declare-fun d!2006431 () Bool)

(declare-fun c!1167594 () Bool)

(assert (=> d!2006431 (= c!1167594 (isEmpty!37253 (t!378840 s!2326)))))

(declare-fun e!3884278 () Bool)

(assert (=> d!2006431 (= (matchZipper!2323 lt!2373666 (t!378840 s!2326)) e!3884278)))

(declare-fun b!6400329 () Bool)

(declare-fun nullableZipper!2076 ((InoxSet Context!11390)) Bool)

(assert (=> b!6400329 (= e!3884278 (nullableZipper!2076 lt!2373666))))

(declare-fun b!6400330 () Bool)

(declare-fun head!13113 (List!65232) C!32892)

(declare-fun tail!12198 (List!65232) List!65232)

(assert (=> b!6400330 (= e!3884278 (matchZipper!2323 (derivationStepZipper!2277 lt!2373666 (head!13113 (t!378840 s!2326))) (tail!12198 (t!378840 s!2326))))))

(assert (= (and d!2006431 c!1167594) b!6400329))

(assert (= (and d!2006431 (not c!1167594)) b!6400330))

(declare-fun m!7197636 () Bool)

(assert (=> d!2006431 m!7197636))

(declare-fun m!7197638 () Bool)

(assert (=> b!6400329 m!7197638))

(declare-fun m!7197640 () Bool)

(assert (=> b!6400330 m!7197640))

(assert (=> b!6400330 m!7197640))

(declare-fun m!7197642 () Bool)

(assert (=> b!6400330 m!7197642))

(declare-fun m!7197644 () Bool)

(assert (=> b!6400330 m!7197644))

(assert (=> b!6400330 m!7197642))

(assert (=> b!6400330 m!7197644))

(declare-fun m!7197646 () Bool)

(assert (=> b!6400330 m!7197646))

(assert (=> b!6399767 d!2006431))

(declare-fun b!6400414 () Bool)

(declare-fun e!3884327 () Bool)

(declare-fun e!3884328 () Bool)

(assert (=> b!6400414 (= e!3884327 e!3884328)))

(declare-fun res!2631766 () Bool)

(assert (=> b!6400414 (=> res!2631766 e!3884328)))

(declare-fun call!548475 () Bool)

(assert (=> b!6400414 (= res!2631766 call!548475)))

(declare-fun b!6400415 () Bool)

(declare-fun e!3884330 () Bool)

(declare-fun derivativeStep!5015 (Regex!16311 C!32892) Regex!16311)

(assert (=> b!6400415 (= e!3884330 (matchR!8494 (derivativeStep!5015 lt!2373658 (head!13113 s!2326)) (tail!12198 s!2326)))))

(declare-fun b!6400416 () Bool)

(declare-fun e!3884332 () Bool)

(assert (=> b!6400416 (= e!3884332 e!3884327)))

(declare-fun res!2631767 () Bool)

(assert (=> b!6400416 (=> (not res!2631767) (not e!3884327))))

(declare-fun lt!2373798 () Bool)

(assert (=> b!6400416 (= res!2631767 (not lt!2373798))))

(declare-fun b!6400417 () Bool)

(declare-fun e!3884331 () Bool)

(assert (=> b!6400417 (= e!3884331 (= (head!13113 s!2326) (c!1167428 lt!2373658)))))

(declare-fun b!6400418 () Bool)

(declare-fun res!2631769 () Bool)

(assert (=> b!6400418 (=> res!2631769 e!3884328)))

(assert (=> b!6400418 (= res!2631769 (not (isEmpty!37253 (tail!12198 s!2326))))))

(declare-fun b!6400419 () Bool)

(assert (=> b!6400419 (= e!3884330 (nullable!6304 lt!2373658))))

(declare-fun b!6400420 () Bool)

(assert (=> b!6400420 (= e!3884328 (not (= (head!13113 s!2326) (c!1167428 lt!2373658))))))

(declare-fun b!6400422 () Bool)

(declare-fun res!2631765 () Bool)

(assert (=> b!6400422 (=> res!2631765 e!3884332)))

(assert (=> b!6400422 (= res!2631765 (not ((_ is ElementMatch!16311) lt!2373658)))))

(declare-fun e!3884326 () Bool)

(assert (=> b!6400422 (= e!3884326 e!3884332)))

(declare-fun bm!548470 () Bool)

(assert (=> bm!548470 (= call!548475 (isEmpty!37253 s!2326))))

(declare-fun b!6400423 () Bool)

(declare-fun e!3884329 () Bool)

(assert (=> b!6400423 (= e!3884329 e!3884326)))

(declare-fun c!1167623 () Bool)

(assert (=> b!6400423 (= c!1167623 ((_ is EmptyLang!16311) lt!2373658))))

(declare-fun b!6400424 () Bool)

(declare-fun res!2631768 () Bool)

(assert (=> b!6400424 (=> (not res!2631768) (not e!3884331))))

(assert (=> b!6400424 (= res!2631768 (not call!548475))))

(declare-fun b!6400425 () Bool)

(declare-fun res!2631772 () Bool)

(assert (=> b!6400425 (=> res!2631772 e!3884332)))

(assert (=> b!6400425 (= res!2631772 e!3884331)))

(declare-fun res!2631770 () Bool)

(assert (=> b!6400425 (=> (not res!2631770) (not e!3884331))))

(assert (=> b!6400425 (= res!2631770 lt!2373798)))

(declare-fun d!2006433 () Bool)

(assert (=> d!2006433 e!3884329))

(declare-fun c!1167624 () Bool)

(assert (=> d!2006433 (= c!1167624 ((_ is EmptyExpr!16311) lt!2373658))))

(assert (=> d!2006433 (= lt!2373798 e!3884330)))

(declare-fun c!1167625 () Bool)

(assert (=> d!2006433 (= c!1167625 (isEmpty!37253 s!2326))))

(assert (=> d!2006433 (validRegex!8047 lt!2373658)))

(assert (=> d!2006433 (= (matchR!8494 lt!2373658 s!2326) lt!2373798)))

(declare-fun b!6400421 () Bool)

(assert (=> b!6400421 (= e!3884329 (= lt!2373798 call!548475))))

(declare-fun b!6400426 () Bool)

(assert (=> b!6400426 (= e!3884326 (not lt!2373798))))

(declare-fun b!6400427 () Bool)

(declare-fun res!2631771 () Bool)

(assert (=> b!6400427 (=> (not res!2631771) (not e!3884331))))

(assert (=> b!6400427 (= res!2631771 (isEmpty!37253 (tail!12198 s!2326)))))

(assert (= (and d!2006433 c!1167625) b!6400419))

(assert (= (and d!2006433 (not c!1167625)) b!6400415))

(assert (= (and d!2006433 c!1167624) b!6400421))

(assert (= (and d!2006433 (not c!1167624)) b!6400423))

(assert (= (and b!6400423 c!1167623) b!6400426))

(assert (= (and b!6400423 (not c!1167623)) b!6400422))

(assert (= (and b!6400422 (not res!2631765)) b!6400425))

(assert (= (and b!6400425 res!2631770) b!6400424))

(assert (= (and b!6400424 res!2631768) b!6400427))

(assert (= (and b!6400427 res!2631771) b!6400417))

(assert (= (and b!6400425 (not res!2631772)) b!6400416))

(assert (= (and b!6400416 res!2631767) b!6400414))

(assert (= (and b!6400414 (not res!2631766)) b!6400418))

(assert (= (and b!6400418 (not res!2631769)) b!6400420))

(assert (= (or b!6400421 b!6400414 b!6400424) bm!548470))

(declare-fun m!7197724 () Bool)

(assert (=> bm!548470 m!7197724))

(declare-fun m!7197726 () Bool)

(assert (=> b!6400420 m!7197726))

(declare-fun m!7197728 () Bool)

(assert (=> b!6400427 m!7197728))

(assert (=> b!6400427 m!7197728))

(declare-fun m!7197730 () Bool)

(assert (=> b!6400427 m!7197730))

(assert (=> b!6400417 m!7197726))

(assert (=> b!6400418 m!7197728))

(assert (=> b!6400418 m!7197728))

(assert (=> b!6400418 m!7197730))

(assert (=> d!2006433 m!7197724))

(declare-fun m!7197732 () Bool)

(assert (=> d!2006433 m!7197732))

(assert (=> b!6400415 m!7197726))

(assert (=> b!6400415 m!7197726))

(declare-fun m!7197734 () Bool)

(assert (=> b!6400415 m!7197734))

(assert (=> b!6400415 m!7197728))

(assert (=> b!6400415 m!7197734))

(assert (=> b!6400415 m!7197728))

(declare-fun m!7197736 () Bool)

(assert (=> b!6400415 m!7197736))

(declare-fun m!7197738 () Bool)

(assert (=> b!6400419 m!7197738))

(assert (=> b!6399787 d!2006433))

(declare-fun bs!1604736 () Bool)

(declare-fun b!6400503 () Bool)

(assert (= bs!1604736 (and b!6400503 b!6399780)))

(declare-fun lambda!353384 () Int)

(assert (=> bs!1604736 (not (= lambda!353384 lambda!353312))))

(declare-fun bs!1604738 () Bool)

(assert (= bs!1604738 (and b!6400503 d!2006349)))

(assert (=> bs!1604738 (not (= lambda!353384 lambda!353340))))

(declare-fun bs!1604740 () Bool)

(assert (= bs!1604740 (and b!6400503 d!2006367)))

(assert (=> bs!1604740 (not (= lambda!353384 lambda!353347))))

(declare-fun bs!1604741 () Bool)

(assert (= bs!1604741 (and b!6400503 b!6399764)))

(assert (=> bs!1604741 (not (= lambda!353384 lambda!353315))))

(assert (=> bs!1604741 (not (= lambda!353384 lambda!353314))))

(assert (=> bs!1604738 (not (= lambda!353384 lambda!353337))))

(assert (=> bs!1604736 (not (= lambda!353384 lambda!353311))))

(assert (=> b!6400503 true))

(assert (=> b!6400503 true))

(declare-fun bs!1604744 () Bool)

(declare-fun b!6400509 () Bool)

(assert (= bs!1604744 (and b!6400509 b!6399780)))

(declare-fun lambda!353386 () Int)

(assert (=> bs!1604744 (= (and (= (regOne!33134 lt!2373658) (regOne!33134 r!7292)) (= (regTwo!33134 lt!2373658) (regTwo!33134 r!7292))) (= lambda!353386 lambda!353312))))

(declare-fun bs!1604745 () Bool)

(assert (= bs!1604745 (and b!6400509 d!2006349)))

(assert (=> bs!1604745 (= (and (= (regOne!33134 lt!2373658) lt!2373664) (= (regTwo!33134 lt!2373658) (regTwo!33134 r!7292))) (= lambda!353386 lambda!353340))))

(declare-fun bs!1604747 () Bool)

(assert (= bs!1604747 (and b!6400509 d!2006367)))

(assert (=> bs!1604747 (not (= lambda!353386 lambda!353347))))

(declare-fun bs!1604749 () Bool)

(assert (= bs!1604749 (and b!6400509 b!6400503)))

(assert (=> bs!1604749 (not (= lambda!353386 lambda!353384))))

(declare-fun bs!1604751 () Bool)

(assert (= bs!1604751 (and b!6400509 b!6399764)))

(assert (=> bs!1604751 (= (and (= (regOne!33134 lt!2373658) lt!2373664) (= (regTwo!33134 lt!2373658) (regTwo!33134 r!7292))) (= lambda!353386 lambda!353315))))

(assert (=> bs!1604751 (not (= lambda!353386 lambda!353314))))

(assert (=> bs!1604745 (not (= lambda!353386 lambda!353337))))

(assert (=> bs!1604744 (not (= lambda!353386 lambda!353311))))

(assert (=> b!6400509 true))

(assert (=> b!6400509 true))

(declare-fun b!6400501 () Bool)

(declare-fun e!3884377 () Bool)

(assert (=> b!6400501 (= e!3884377 (= s!2326 (Cons!65108 (c!1167428 lt!2373658) Nil!65108)))))

(declare-fun b!6400502 () Bool)

(declare-fun c!1167654 () Bool)

(assert (=> b!6400502 (= c!1167654 ((_ is Union!16311) lt!2373658))))

(declare-fun e!3884375 () Bool)

(assert (=> b!6400502 (= e!3884377 e!3884375)))

(declare-fun e!3884378 () Bool)

(declare-fun call!548482 () Bool)

(assert (=> b!6400503 (= e!3884378 call!548482)))

(declare-fun b!6400504 () Bool)

(declare-fun e!3884376 () Bool)

(assert (=> b!6400504 (= e!3884375 e!3884376)))

(declare-fun c!1167656 () Bool)

(assert (=> b!6400504 (= c!1167656 ((_ is Star!16311) lt!2373658))))

(declare-fun b!6400505 () Bool)

(declare-fun c!1167653 () Bool)

(assert (=> b!6400505 (= c!1167653 ((_ is ElementMatch!16311) lt!2373658))))

(declare-fun e!3884379 () Bool)

(assert (=> b!6400505 (= e!3884379 e!3884377)))

(declare-fun b!6400506 () Bool)

(declare-fun e!3884380 () Bool)

(assert (=> b!6400506 (= e!3884380 e!3884379)))

(declare-fun res!2631796 () Bool)

(assert (=> b!6400506 (= res!2631796 (not ((_ is EmptyLang!16311) lt!2373658)))))

(assert (=> b!6400506 (=> (not res!2631796) (not e!3884379))))

(declare-fun d!2006459 () Bool)

(declare-fun c!1167655 () Bool)

(assert (=> d!2006459 (= c!1167655 ((_ is EmptyExpr!16311) lt!2373658))))

(assert (=> d!2006459 (= (matchRSpec!3412 lt!2373658 s!2326) e!3884380)))

(declare-fun b!6400507 () Bool)

(declare-fun res!2631797 () Bool)

(assert (=> b!6400507 (=> res!2631797 e!3884378)))

(declare-fun call!548481 () Bool)

(assert (=> b!6400507 (= res!2631797 call!548481)))

(assert (=> b!6400507 (= e!3884376 e!3884378)))

(declare-fun bm!548476 () Bool)

(assert (=> bm!548476 (= call!548482 (Exists!3381 (ite c!1167656 lambda!353384 lambda!353386)))))

(declare-fun bm!548477 () Bool)

(assert (=> bm!548477 (= call!548481 (isEmpty!37253 s!2326))))

(declare-fun b!6400508 () Bool)

(assert (=> b!6400508 (= e!3884380 call!548481)))

(assert (=> b!6400509 (= e!3884376 call!548482)))

(declare-fun b!6400510 () Bool)

(declare-fun e!3884381 () Bool)

(assert (=> b!6400510 (= e!3884375 e!3884381)))

(declare-fun res!2631798 () Bool)

(assert (=> b!6400510 (= res!2631798 (matchRSpec!3412 (regOne!33135 lt!2373658) s!2326))))

(assert (=> b!6400510 (=> res!2631798 e!3884381)))

(declare-fun b!6400511 () Bool)

(assert (=> b!6400511 (= e!3884381 (matchRSpec!3412 (regTwo!33135 lt!2373658) s!2326))))

(assert (= (and d!2006459 c!1167655) b!6400508))

(assert (= (and d!2006459 (not c!1167655)) b!6400506))

(assert (= (and b!6400506 res!2631796) b!6400505))

(assert (= (and b!6400505 c!1167653) b!6400501))

(assert (= (and b!6400505 (not c!1167653)) b!6400502))

(assert (= (and b!6400502 c!1167654) b!6400510))

(assert (= (and b!6400502 (not c!1167654)) b!6400504))

(assert (= (and b!6400510 (not res!2631798)) b!6400511))

(assert (= (and b!6400504 c!1167656) b!6400507))

(assert (= (and b!6400504 (not c!1167656)) b!6400509))

(assert (= (and b!6400507 (not res!2631797)) b!6400503))

(assert (= (or b!6400503 b!6400509) bm!548476))

(assert (= (or b!6400508 b!6400507) bm!548477))

(declare-fun m!7197794 () Bool)

(assert (=> bm!548476 m!7197794))

(assert (=> bm!548477 m!7197724))

(declare-fun m!7197796 () Bool)

(assert (=> b!6400510 m!7197796))

(declare-fun m!7197798 () Bool)

(assert (=> b!6400511 m!7197798))

(assert (=> b!6399787 d!2006459))

(declare-fun d!2006483 () Bool)

(assert (=> d!2006483 (= (matchR!8494 lt!2373658 s!2326) (matchRSpec!3412 lt!2373658 s!2326))))

(declare-fun lt!2373813 () Unit!158575)

(declare-fun choose!47598 (Regex!16311 List!65232) Unit!158575)

(assert (=> d!2006483 (= lt!2373813 (choose!47598 lt!2373658 s!2326))))

(assert (=> d!2006483 (validRegex!8047 lt!2373658)))

(assert (=> d!2006483 (= (mainMatchTheorem!3412 lt!2373658 s!2326) lt!2373813)))

(declare-fun bs!1604759 () Bool)

(assert (= bs!1604759 d!2006483))

(assert (=> bs!1604759 m!7197090))

(assert (=> bs!1604759 m!7197092))

(declare-fun m!7197822 () Bool)

(assert (=> bs!1604759 m!7197822))

(assert (=> bs!1604759 m!7197732))

(assert (=> b!6399787 d!2006483))

(declare-fun bs!1604760 () Bool)

(declare-fun d!2006491 () Bool)

(assert (= bs!1604760 (and d!2006491 b!6399793)))

(declare-fun lambda!353390 () Int)

(assert (=> bs!1604760 (= lambda!353390 lambda!353313)))

(assert (=> d!2006491 true))

(assert (=> d!2006491 (= (derivationStepZipper!2277 lt!2373688 (h!71556 s!2326)) (flatMap!1816 lt!2373688 lambda!353390))))

(declare-fun bs!1604761 () Bool)

(assert (= bs!1604761 d!2006491))

(declare-fun m!7197824 () Bool)

(assert (=> bs!1604761 m!7197824))

(assert (=> b!6399807 d!2006491))

(declare-fun d!2006493 () Bool)

(assert (=> d!2006493 (= (flatMap!1816 lt!2373688 lambda!353313) (choose!47592 lt!2373688 lambda!353313))))

(declare-fun bs!1604762 () Bool)

(assert (= bs!1604762 d!2006493))

(declare-fun m!7197826 () Bool)

(assert (=> bs!1604762 m!7197826))

(assert (=> b!6399807 d!2006493))

(declare-fun call!548486 () (InoxSet Context!11390))

(declare-fun b!6400542 () Bool)

(declare-fun e!3884398 () (InoxSet Context!11390))

(assert (=> b!6400542 (= e!3884398 ((_ map or) call!548486 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 lt!2373656))) (h!71556 s!2326))))))

(declare-fun d!2006495 () Bool)

(declare-fun c!1167665 () Bool)

(declare-fun e!3884400 () Bool)

(assert (=> d!2006495 (= c!1167665 e!3884400)))

(declare-fun res!2631813 () Bool)

(assert (=> d!2006495 (=> (not res!2631813) (not e!3884400))))

(assert (=> d!2006495 (= res!2631813 ((_ is Cons!65109) (exprs!6195 lt!2373656)))))

(assert (=> d!2006495 (= (derivationStepZipperUp!1485 lt!2373656 (h!71556 s!2326)) e!3884398)))

(declare-fun b!6400543 () Bool)

(assert (=> b!6400543 (= e!3884400 (nullable!6304 (h!71557 (exprs!6195 lt!2373656))))))

(declare-fun b!6400544 () Bool)

(declare-fun e!3884399 () (InoxSet Context!11390))

(assert (=> b!6400544 (= e!3884399 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548481 () Bool)

(assert (=> bm!548481 (= call!548486 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 lt!2373656)) (Context!11391 (t!378841 (exprs!6195 lt!2373656))) (h!71556 s!2326)))))

(declare-fun b!6400545 () Bool)

(assert (=> b!6400545 (= e!3884398 e!3884399)))

(declare-fun c!1167666 () Bool)

(assert (=> b!6400545 (= c!1167666 ((_ is Cons!65109) (exprs!6195 lt!2373656)))))

(declare-fun b!6400546 () Bool)

(assert (=> b!6400546 (= e!3884399 call!548486)))

(assert (= (and d!2006495 res!2631813) b!6400543))

(assert (= (and d!2006495 c!1167665) b!6400542))

(assert (= (and d!2006495 (not c!1167665)) b!6400545))

(assert (= (and b!6400545 c!1167666) b!6400546))

(assert (= (and b!6400545 (not c!1167666)) b!6400544))

(assert (= (or b!6400542 b!6400546) bm!548481))

(declare-fun m!7197828 () Bool)

(assert (=> b!6400542 m!7197828))

(declare-fun m!7197830 () Bool)

(assert (=> b!6400543 m!7197830))

(declare-fun m!7197832 () Bool)

(assert (=> bm!548481 m!7197832))

(assert (=> b!6399807 d!2006495))

(declare-fun d!2006497 () Bool)

(assert (=> d!2006497 (= (flatMap!1816 lt!2373688 lambda!353313) (dynLambda!25841 lambda!353313 lt!2373656))))

(declare-fun lt!2373816 () Unit!158575)

(assert (=> d!2006497 (= lt!2373816 (choose!47593 lt!2373688 lt!2373656 lambda!353313))))

(assert (=> d!2006497 (= lt!2373688 (store ((as const (Array Context!11390 Bool)) false) lt!2373656 true))))

(assert (=> d!2006497 (= (lemmaFlatMapOnSingletonSet!1342 lt!2373688 lt!2373656 lambda!353313) lt!2373816)))

(declare-fun b_lambda!243211 () Bool)

(assert (=> (not b_lambda!243211) (not d!2006497)))

(declare-fun bs!1604763 () Bool)

(assert (= bs!1604763 d!2006497))

(assert (=> bs!1604763 m!7197208))

(declare-fun m!7197834 () Bool)

(assert (=> bs!1604763 m!7197834))

(declare-fun m!7197836 () Bool)

(assert (=> bs!1604763 m!7197836))

(assert (=> bs!1604763 m!7197202))

(assert (=> b!6399807 d!2006497))

(declare-fun d!2006499 () Bool)

(declare-fun lt!2373818 () Regex!16311)

(assert (=> d!2006499 (validRegex!8047 lt!2373818)))

(assert (=> d!2006499 (= lt!2373818 (generalisedUnion!2155 (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110))))))

(assert (=> d!2006499 (= (unfocusZipper!2053 (Cons!65110 lt!2373652 Nil!65110)) lt!2373818)))

(declare-fun bs!1604764 () Bool)

(assert (= bs!1604764 d!2006499))

(declare-fun m!7197838 () Bool)

(assert (=> bs!1604764 m!7197838))

(declare-fun m!7197840 () Bool)

(assert (=> bs!1604764 m!7197840))

(assert (=> bs!1604764 m!7197840))

(declare-fun m!7197842 () Bool)

(assert (=> bs!1604764 m!7197842))

(assert (=> b!6399768 d!2006499))

(declare-fun d!2006501 () Bool)

(declare-fun c!1167668 () Bool)

(assert (=> d!2006501 (= c!1167668 (isEmpty!37253 s!2326))))

(declare-fun e!3884403 () Bool)

(assert (=> d!2006501 (= (matchZipper!2323 lt!2373660 s!2326) e!3884403)))

(declare-fun b!6400551 () Bool)

(assert (=> b!6400551 (= e!3884403 (nullableZipper!2076 lt!2373660))))

(declare-fun b!6400552 () Bool)

(assert (=> b!6400552 (= e!3884403 (matchZipper!2323 (derivationStepZipper!2277 lt!2373660 (head!13113 s!2326)) (tail!12198 s!2326)))))

(assert (= (and d!2006501 c!1167668) b!6400551))

(assert (= (and d!2006501 (not c!1167668)) b!6400552))

(assert (=> d!2006501 m!7197724))

(declare-fun m!7197858 () Bool)

(assert (=> b!6400551 m!7197858))

(assert (=> b!6400552 m!7197726))

(assert (=> b!6400552 m!7197726))

(declare-fun m!7197860 () Bool)

(assert (=> b!6400552 m!7197860))

(assert (=> b!6400552 m!7197728))

(assert (=> b!6400552 m!7197860))

(assert (=> b!6400552 m!7197728))

(declare-fun m!7197862 () Bool)

(assert (=> b!6400552 m!7197862))

(assert (=> b!6399788 d!2006501))

(declare-fun d!2006505 () Bool)

(declare-fun c!1167669 () Bool)

(assert (=> d!2006505 (= c!1167669 (isEmpty!37253 (t!378840 s!2326)))))

(declare-fun e!3884404 () Bool)

(assert (=> d!2006505 (= (matchZipper!2323 lt!2373665 (t!378840 s!2326)) e!3884404)))

(declare-fun b!6400553 () Bool)

(assert (=> b!6400553 (= e!3884404 (nullableZipper!2076 lt!2373665))))

(declare-fun b!6400554 () Bool)

(assert (=> b!6400554 (= e!3884404 (matchZipper!2323 (derivationStepZipper!2277 lt!2373665 (head!13113 (t!378840 s!2326))) (tail!12198 (t!378840 s!2326))))))

(assert (= (and d!2006505 c!1167669) b!6400553))

(assert (= (and d!2006505 (not c!1167669)) b!6400554))

(assert (=> d!2006505 m!7197636))

(declare-fun m!7197864 () Bool)

(assert (=> b!6400553 m!7197864))

(assert (=> b!6400554 m!7197640))

(assert (=> b!6400554 m!7197640))

(declare-fun m!7197866 () Bool)

(assert (=> b!6400554 m!7197866))

(assert (=> b!6400554 m!7197644))

(assert (=> b!6400554 m!7197866))

(assert (=> b!6400554 m!7197644))

(declare-fun m!7197868 () Bool)

(assert (=> b!6400554 m!7197868))

(assert (=> b!6399788 d!2006505))

(declare-fun d!2006507 () Bool)

(assert (=> d!2006507 (= (Exists!3381 lambda!353312) (choose!47587 lambda!353312))))

(declare-fun bs!1604766 () Bool)

(assert (= bs!1604766 d!2006507))

(declare-fun m!7197870 () Bool)

(assert (=> bs!1604766 m!7197870))

(assert (=> b!6399780 d!2006507))

(declare-fun b!6400555 () Bool)

(declare-fun e!3884409 () Option!16202)

(declare-fun e!3884408 () Option!16202)

(assert (=> b!6400555 (= e!3884409 e!3884408)))

(declare-fun c!1167670 () Bool)

(assert (=> b!6400555 (= c!1167670 ((_ is Nil!65108) s!2326))))

(declare-fun b!6400556 () Bool)

(declare-fun lt!2373820 () Unit!158575)

(declare-fun lt!2373822 () Unit!158575)

(assert (=> b!6400556 (= lt!2373820 lt!2373822)))

(assert (=> b!6400556 (= (++!14379 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (t!378840 s!2326)) s!2326)))

(assert (=> b!6400556 (= lt!2373822 (lemmaMoveElementToOtherListKeepsConcatEq!2473 Nil!65108 (h!71556 s!2326) (t!378840 s!2326) s!2326))))

(assert (=> b!6400556 (= e!3884408 (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (t!378840 s!2326) s!2326))))

(declare-fun b!6400557 () Bool)

(declare-fun e!3884405 () Bool)

(declare-fun lt!2373821 () Option!16202)

(assert (=> b!6400557 (= e!3884405 (not (isDefined!12905 lt!2373821)))))

(declare-fun b!6400558 () Bool)

(declare-fun res!2631820 () Bool)

(declare-fun e!3884406 () Bool)

(assert (=> b!6400558 (=> (not res!2631820) (not e!3884406))))

(assert (=> b!6400558 (= res!2631820 (matchR!8494 (regTwo!33134 r!7292) (_2!36593 (get!22550 lt!2373821))))))

(declare-fun b!6400559 () Bool)

(declare-fun e!3884407 () Bool)

(assert (=> b!6400559 (= e!3884407 (matchR!8494 (regTwo!33134 r!7292) s!2326))))

(declare-fun b!6400560 () Bool)

(assert (=> b!6400560 (= e!3884408 None!16201)))

(declare-fun b!6400561 () Bool)

(assert (=> b!6400561 (= e!3884406 (= (++!14379 (_1!36593 (get!22550 lt!2373821)) (_2!36593 (get!22550 lt!2373821))) s!2326))))

(declare-fun b!6400562 () Bool)

(declare-fun res!2631817 () Bool)

(assert (=> b!6400562 (=> (not res!2631817) (not e!3884406))))

(assert (=> b!6400562 (= res!2631817 (matchR!8494 (regOne!33134 r!7292) (_1!36593 (get!22550 lt!2373821))))))

(declare-fun d!2006509 () Bool)

(assert (=> d!2006509 e!3884405))

(declare-fun res!2631819 () Bool)

(assert (=> d!2006509 (=> res!2631819 e!3884405)))

(assert (=> d!2006509 (= res!2631819 e!3884406)))

(declare-fun res!2631816 () Bool)

(assert (=> d!2006509 (=> (not res!2631816) (not e!3884406))))

(assert (=> d!2006509 (= res!2631816 (isDefined!12905 lt!2373821))))

(assert (=> d!2006509 (= lt!2373821 e!3884409)))

(declare-fun c!1167671 () Bool)

(assert (=> d!2006509 (= c!1167671 e!3884407)))

(declare-fun res!2631818 () Bool)

(assert (=> d!2006509 (=> (not res!2631818) (not e!3884407))))

(assert (=> d!2006509 (= res!2631818 (matchR!8494 (regOne!33134 r!7292) Nil!65108))))

(assert (=> d!2006509 (validRegex!8047 (regOne!33134 r!7292))))

(assert (=> d!2006509 (= (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326) lt!2373821)))

(declare-fun b!6400563 () Bool)

(assert (=> b!6400563 (= e!3884409 (Some!16201 (tuple2!66581 Nil!65108 s!2326)))))

(assert (= (and d!2006509 res!2631818) b!6400559))

(assert (= (and d!2006509 c!1167671) b!6400563))

(assert (= (and d!2006509 (not c!1167671)) b!6400555))

(assert (= (and b!6400555 c!1167670) b!6400560))

(assert (= (and b!6400555 (not c!1167670)) b!6400556))

(assert (= (and d!2006509 res!2631816) b!6400562))

(assert (= (and b!6400562 res!2631817) b!6400558))

(assert (= (and b!6400558 res!2631820) b!6400561))

(assert (= (and d!2006509 (not res!2631819)) b!6400557))

(declare-fun m!7197872 () Bool)

(assert (=> b!6400558 m!7197872))

(declare-fun m!7197874 () Bool)

(assert (=> b!6400558 m!7197874))

(assert (=> b!6400562 m!7197872))

(declare-fun m!7197876 () Bool)

(assert (=> b!6400562 m!7197876))

(assert (=> b!6400559 m!7197468))

(declare-fun m!7197878 () Bool)

(assert (=> d!2006509 m!7197878))

(declare-fun m!7197880 () Bool)

(assert (=> d!2006509 m!7197880))

(declare-fun m!7197882 () Bool)

(assert (=> d!2006509 m!7197882))

(assert (=> b!6400556 m!7197474))

(assert (=> b!6400556 m!7197474))

(assert (=> b!6400556 m!7197476))

(assert (=> b!6400556 m!7197478))

(assert (=> b!6400556 m!7197474))

(declare-fun m!7197884 () Bool)

(assert (=> b!6400556 m!7197884))

(assert (=> b!6400557 m!7197878))

(assert (=> b!6400561 m!7197872))

(declare-fun m!7197886 () Bool)

(assert (=> b!6400561 m!7197886))

(assert (=> b!6399780 d!2006509))

(declare-fun d!2006511 () Bool)

(assert (=> d!2006511 (= (Exists!3381 lambda!353311) (choose!47587 lambda!353311))))

(declare-fun bs!1604775 () Bool)

(assert (= bs!1604775 d!2006511))

(declare-fun m!7197888 () Bool)

(assert (=> bs!1604775 m!7197888))

(assert (=> b!6399780 d!2006511))

(declare-fun bs!1604776 () Bool)

(declare-fun d!2006513 () Bool)

(assert (= bs!1604776 (and d!2006513 b!6399780)))

(declare-fun lambda!353393 () Int)

(assert (=> bs!1604776 (not (= lambda!353393 lambda!353312))))

(declare-fun bs!1604777 () Bool)

(assert (= bs!1604777 (and d!2006513 d!2006367)))

(assert (=> bs!1604777 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353393 lambda!353347))))

(declare-fun bs!1604778 () Bool)

(assert (= bs!1604778 (and d!2006513 b!6400503)))

(assert (=> bs!1604778 (not (= lambda!353393 lambda!353384))))

(declare-fun bs!1604780 () Bool)

(assert (= bs!1604780 (and d!2006513 b!6399764)))

(assert (=> bs!1604780 (not (= lambda!353393 lambda!353315))))

(assert (=> bs!1604780 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353393 lambda!353314))))

(declare-fun bs!1604781 () Bool)

(assert (= bs!1604781 (and d!2006513 d!2006349)))

(assert (=> bs!1604781 (not (= lambda!353393 lambda!353340))))

(declare-fun bs!1604782 () Bool)

(assert (= bs!1604782 (and d!2006513 b!6400509)))

(assert (=> bs!1604782 (not (= lambda!353393 lambda!353386))))

(assert (=> bs!1604781 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353393 lambda!353337))))

(assert (=> bs!1604776 (= lambda!353393 lambda!353311)))

(assert (=> d!2006513 true))

(assert (=> d!2006513 true))

(assert (=> d!2006513 true))

(assert (=> d!2006513 (= (isDefined!12905 (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326)) (Exists!3381 lambda!353393))))

(declare-fun lt!2373823 () Unit!158575)

(assert (=> d!2006513 (= lt!2373823 (choose!47589 (regOne!33134 r!7292) (regTwo!33134 r!7292) s!2326))))

(assert (=> d!2006513 (validRegex!8047 (regOne!33134 r!7292))))

(assert (=> d!2006513 (= (lemmaFindConcatSeparationEquivalentToExists!2380 (regOne!33134 r!7292) (regTwo!33134 r!7292) s!2326) lt!2373823)))

(declare-fun bs!1604783 () Bool)

(assert (= bs!1604783 d!2006513))

(assert (=> bs!1604783 m!7197144))

(assert (=> bs!1604783 m!7197146))

(assert (=> bs!1604783 m!7197882))

(declare-fun m!7197890 () Bool)

(assert (=> bs!1604783 m!7197890))

(assert (=> bs!1604783 m!7197144))

(declare-fun m!7197896 () Bool)

(assert (=> bs!1604783 m!7197896))

(assert (=> b!6399780 d!2006513))

(declare-fun bs!1604785 () Bool)

(declare-fun d!2006515 () Bool)

(assert (= bs!1604785 (and d!2006515 b!6399780)))

(declare-fun lambda!353394 () Int)

(assert (=> bs!1604785 (not (= lambda!353394 lambda!353312))))

(declare-fun bs!1604786 () Bool)

(assert (= bs!1604786 (and d!2006515 d!2006367)))

(assert (=> bs!1604786 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353394 lambda!353347))))

(declare-fun bs!1604787 () Bool)

(assert (= bs!1604787 (and d!2006515 d!2006513)))

(assert (=> bs!1604787 (= lambda!353394 lambda!353393)))

(declare-fun bs!1604788 () Bool)

(assert (= bs!1604788 (and d!2006515 b!6400503)))

(assert (=> bs!1604788 (not (= lambda!353394 lambda!353384))))

(declare-fun bs!1604789 () Bool)

(assert (= bs!1604789 (and d!2006515 b!6399764)))

(assert (=> bs!1604789 (not (= lambda!353394 lambda!353315))))

(assert (=> bs!1604789 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353394 lambda!353314))))

(declare-fun bs!1604790 () Bool)

(assert (= bs!1604790 (and d!2006515 d!2006349)))

(assert (=> bs!1604790 (not (= lambda!353394 lambda!353340))))

(declare-fun bs!1604791 () Bool)

(assert (= bs!1604791 (and d!2006515 b!6400509)))

(assert (=> bs!1604791 (not (= lambda!353394 lambda!353386))))

(assert (=> bs!1604790 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353394 lambda!353337))))

(assert (=> bs!1604785 (= lambda!353394 lambda!353311)))

(assert (=> d!2006515 true))

(assert (=> d!2006515 true))

(assert (=> d!2006515 true))

(declare-fun lambda!353395 () Int)

(assert (=> bs!1604785 (= lambda!353395 lambda!353312)))

(assert (=> bs!1604786 (not (= lambda!353395 lambda!353347))))

(assert (=> bs!1604787 (not (= lambda!353395 lambda!353393))))

(assert (=> bs!1604788 (not (= lambda!353395 lambda!353384))))

(declare-fun bs!1604792 () Bool)

(assert (= bs!1604792 d!2006515))

(assert (=> bs!1604792 (not (= lambda!353395 lambda!353394))))

(assert (=> bs!1604789 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353395 lambda!353315))))

(assert (=> bs!1604789 (not (= lambda!353395 lambda!353314))))

(assert (=> bs!1604790 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353395 lambda!353340))))

(assert (=> bs!1604791 (= (and (= (regOne!33134 r!7292) (regOne!33134 lt!2373658)) (= (regTwo!33134 r!7292) (regTwo!33134 lt!2373658))) (= lambda!353395 lambda!353386))))

(assert (=> bs!1604790 (not (= lambda!353395 lambda!353337))))

(assert (=> bs!1604785 (not (= lambda!353395 lambda!353311))))

(assert (=> d!2006515 true))

(assert (=> d!2006515 true))

(assert (=> d!2006515 true))

(assert (=> d!2006515 (= (Exists!3381 lambda!353394) (Exists!3381 lambda!353395))))

(declare-fun lt!2373824 () Unit!158575)

(assert (=> d!2006515 (= lt!2373824 (choose!47588 (regOne!33134 r!7292) (regTwo!33134 r!7292) s!2326))))

(assert (=> d!2006515 (validRegex!8047 (regOne!33134 r!7292))))

(assert (=> d!2006515 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1918 (regOne!33134 r!7292) (regTwo!33134 r!7292) s!2326) lt!2373824)))

(declare-fun m!7197904 () Bool)

(assert (=> bs!1604792 m!7197904))

(declare-fun m!7197906 () Bool)

(assert (=> bs!1604792 m!7197906))

(declare-fun m!7197908 () Bool)

(assert (=> bs!1604792 m!7197908))

(assert (=> bs!1604792 m!7197882))

(assert (=> b!6399780 d!2006515))

(declare-fun d!2006521 () Bool)

(assert (=> d!2006521 (= (isDefined!12905 (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326)) (not (isEmpty!37255 (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326))))))

(declare-fun bs!1604793 () Bool)

(assert (= bs!1604793 d!2006521))

(assert (=> bs!1604793 m!7197144))

(declare-fun m!7197910 () Bool)

(assert (=> bs!1604793 m!7197910))

(assert (=> b!6399780 d!2006521))

(declare-fun d!2006523 () Bool)

(assert (=> d!2006523 (= (flatMap!1816 lt!2373660 lambda!353313) (choose!47592 lt!2373660 lambda!353313))))

(declare-fun bs!1604794 () Bool)

(assert (= bs!1604794 d!2006523))

(declare-fun m!7197912 () Bool)

(assert (=> bs!1604794 m!7197912))

(assert (=> b!6399801 d!2006523))

(declare-fun b!6400600 () Bool)

(declare-fun call!548487 () (InoxSet Context!11390))

(declare-fun e!3884426 () (InoxSet Context!11390))

(assert (=> b!6400600 (= e!3884426 ((_ map or) call!548487 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 lt!2373669))) (h!71556 s!2326))))))

(declare-fun d!2006525 () Bool)

(declare-fun c!1167672 () Bool)

(declare-fun e!3884428 () Bool)

(assert (=> d!2006525 (= c!1167672 e!3884428)))

(declare-fun res!2631821 () Bool)

(assert (=> d!2006525 (=> (not res!2631821) (not e!3884428))))

(assert (=> d!2006525 (= res!2631821 ((_ is Cons!65109) (exprs!6195 lt!2373669)))))

(assert (=> d!2006525 (= (derivationStepZipperUp!1485 lt!2373669 (h!71556 s!2326)) e!3884426)))

(declare-fun b!6400601 () Bool)

(assert (=> b!6400601 (= e!3884428 (nullable!6304 (h!71557 (exprs!6195 lt!2373669))))))

(declare-fun b!6400602 () Bool)

(declare-fun e!3884427 () (InoxSet Context!11390))

(assert (=> b!6400602 (= e!3884427 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548482 () Bool)

(assert (=> bm!548482 (= call!548487 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 lt!2373669)) (Context!11391 (t!378841 (exprs!6195 lt!2373669))) (h!71556 s!2326)))))

(declare-fun b!6400603 () Bool)

(assert (=> b!6400603 (= e!3884426 e!3884427)))

(declare-fun c!1167673 () Bool)

(assert (=> b!6400603 (= c!1167673 ((_ is Cons!65109) (exprs!6195 lt!2373669)))))

(declare-fun b!6400604 () Bool)

(assert (=> b!6400604 (= e!3884427 call!548487)))

(assert (= (and d!2006525 res!2631821) b!6400601))

(assert (= (and d!2006525 c!1167672) b!6400600))

(assert (= (and d!2006525 (not c!1167672)) b!6400603))

(assert (= (and b!6400603 c!1167673) b!6400604))

(assert (= (and b!6400603 (not c!1167673)) b!6400602))

(assert (= (or b!6400600 b!6400604) bm!548482))

(declare-fun m!7197916 () Bool)

(assert (=> b!6400600 m!7197916))

(declare-fun m!7197918 () Bool)

(assert (=> b!6400601 m!7197918))

(declare-fun m!7197920 () Bool)

(assert (=> bm!548482 m!7197920))

(assert (=> b!6399801 d!2006525))

(declare-fun d!2006527 () Bool)

(assert (=> d!2006527 (= (flatMap!1816 lt!2373660 lambda!353313) (dynLambda!25841 lambda!353313 lt!2373669))))

(declare-fun lt!2373825 () Unit!158575)

(assert (=> d!2006527 (= lt!2373825 (choose!47593 lt!2373660 lt!2373669 lambda!353313))))

(assert (=> d!2006527 (= lt!2373660 (store ((as const (Array Context!11390 Bool)) false) lt!2373669 true))))

(assert (=> d!2006527 (= (lemmaFlatMapOnSingletonSet!1342 lt!2373660 lt!2373669 lambda!353313) lt!2373825)))

(declare-fun b_lambda!243213 () Bool)

(assert (=> (not b_lambda!243213) (not d!2006527)))

(declare-fun bs!1604795 () Bool)

(assert (= bs!1604795 d!2006527))

(assert (=> bs!1604795 m!7197212))

(declare-fun m!7197922 () Bool)

(assert (=> bs!1604795 m!7197922))

(declare-fun m!7197924 () Bool)

(assert (=> bs!1604795 m!7197924))

(assert (=> bs!1604795 m!7197218))

(assert (=> b!6399801 d!2006527))

(declare-fun bs!1604796 () Bool)

(declare-fun d!2006529 () Bool)

(assert (= bs!1604796 (and d!2006529 b!6399793)))

(declare-fun lambda!353396 () Int)

(assert (=> bs!1604796 (= lambda!353396 lambda!353313)))

(declare-fun bs!1604797 () Bool)

(assert (= bs!1604797 (and d!2006529 d!2006491)))

(assert (=> bs!1604797 (= lambda!353396 lambda!353390)))

(assert (=> d!2006529 true))

(assert (=> d!2006529 (= (derivationStepZipper!2277 lt!2373660 (h!71556 s!2326)) (flatMap!1816 lt!2373660 lambda!353396))))

(declare-fun bs!1604798 () Bool)

(assert (= bs!1604798 d!2006529))

(declare-fun m!7197926 () Bool)

(assert (=> bs!1604798 m!7197926))

(assert (=> b!6399801 d!2006529))

(declare-fun bs!1604804 () Bool)

(declare-fun d!2006531 () Bool)

(assert (= bs!1604804 (and d!2006531 d!2006417)))

(declare-fun lambda!353399 () Int)

(assert (=> bs!1604804 (= lambda!353399 lambda!353359)))

(declare-fun bs!1604805 () Bool)

(assert (= bs!1604805 (and d!2006531 d!2006421)))

(assert (=> bs!1604805 (= lambda!353399 lambda!353365)))

(declare-fun bs!1604806 () Bool)

(assert (= bs!1604806 (and d!2006531 d!2006429)))

(assert (=> bs!1604806 (= lambda!353399 lambda!353368)))

(assert (=> d!2006531 (= (inv!84024 (h!71558 zl!343)) (forall!15496 (exprs!6195 (h!71558 zl!343)) lambda!353399))))

(declare-fun bs!1604807 () Bool)

(assert (= bs!1604807 d!2006531))

(declare-fun m!7197928 () Bool)

(assert (=> bs!1604807 m!7197928))

(assert (=> b!6399802 d!2006531))

(declare-fun b!6400641 () Bool)

(declare-fun res!2631833 () Bool)

(declare-fun e!3884454 () Bool)

(assert (=> b!6400641 (=> (not res!2631833) (not e!3884454))))

(declare-fun call!548496 () Bool)

(assert (=> b!6400641 (= res!2631833 call!548496)))

(declare-fun e!3884450 () Bool)

(assert (=> b!6400641 (= e!3884450 e!3884454)))

(declare-fun c!1167678 () Bool)

(declare-fun c!1167679 () Bool)

(declare-fun call!548495 () Bool)

(declare-fun bm!548489 () Bool)

(assert (=> bm!548489 (= call!548495 (validRegex!8047 (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292)))))))

(declare-fun b!6400642 () Bool)

(declare-fun e!3884451 () Bool)

(declare-fun e!3884452 () Bool)

(assert (=> b!6400642 (= e!3884451 e!3884452)))

(declare-fun res!2631835 () Bool)

(assert (=> b!6400642 (= res!2631835 (not (nullable!6304 (reg!16640 r!7292))))))

(assert (=> b!6400642 (=> (not res!2631835) (not e!3884452))))

(declare-fun b!6400643 () Bool)

(declare-fun e!3884456 () Bool)

(assert (=> b!6400643 (= e!3884456 e!3884451)))

(assert (=> b!6400643 (= c!1167678 ((_ is Star!16311) r!7292))))

(declare-fun b!6400644 () Bool)

(declare-fun res!2631832 () Bool)

(declare-fun e!3884455 () Bool)

(assert (=> b!6400644 (=> res!2631832 e!3884455)))

(assert (=> b!6400644 (= res!2631832 (not ((_ is Concat!25156) r!7292)))))

(assert (=> b!6400644 (= e!3884450 e!3884455)))

(declare-fun b!6400645 () Bool)

(assert (=> b!6400645 (= e!3884452 call!548495)))

(declare-fun b!6400646 () Bool)

(assert (=> b!6400646 (= e!3884451 e!3884450)))

(assert (=> b!6400646 (= c!1167679 ((_ is Union!16311) r!7292))))

(declare-fun b!6400647 () Bool)

(declare-fun call!548494 () Bool)

(assert (=> b!6400647 (= e!3884454 call!548494)))

(declare-fun b!6400648 () Bool)

(declare-fun e!3884453 () Bool)

(assert (=> b!6400648 (= e!3884453 call!548494)))

(declare-fun bm!548491 () Bool)

(assert (=> bm!548491 (= call!548494 call!548495)))

(declare-fun b!6400649 () Bool)

(assert (=> b!6400649 (= e!3884455 e!3884453)))

(declare-fun res!2631836 () Bool)

(assert (=> b!6400649 (=> (not res!2631836) (not e!3884453))))

(assert (=> b!6400649 (= res!2631836 call!548496)))

(declare-fun bm!548490 () Bool)

(assert (=> bm!548490 (= call!548496 (validRegex!8047 (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292))))))

(declare-fun d!2006543 () Bool)

(declare-fun res!2631834 () Bool)

(assert (=> d!2006543 (=> res!2631834 e!3884456)))

(assert (=> d!2006543 (= res!2631834 ((_ is ElementMatch!16311) r!7292))))

(assert (=> d!2006543 (= (validRegex!8047 r!7292) e!3884456)))

(assert (= (and d!2006543 (not res!2631834)) b!6400643))

(assert (= (and b!6400643 c!1167678) b!6400642))

(assert (= (and b!6400643 (not c!1167678)) b!6400646))

(assert (= (and b!6400642 res!2631835) b!6400645))

(assert (= (and b!6400646 c!1167679) b!6400641))

(assert (= (and b!6400646 (not c!1167679)) b!6400644))

(assert (= (and b!6400641 res!2631833) b!6400647))

(assert (= (and b!6400644 (not res!2631832)) b!6400649))

(assert (= (and b!6400649 res!2631836) b!6400648))

(assert (= (or b!6400647 b!6400648) bm!548491))

(assert (= (or b!6400641 b!6400649) bm!548490))

(assert (= (or b!6400645 bm!548491) bm!548489))

(declare-fun m!7197930 () Bool)

(assert (=> bm!548489 m!7197930))

(declare-fun m!7197932 () Bool)

(assert (=> b!6400642 m!7197932))

(declare-fun m!7197934 () Bool)

(assert (=> bm!548490 m!7197934))

(assert (=> start!633262 d!2006543))

(declare-fun d!2006545 () Bool)

(declare-fun e!3884457 () Bool)

(assert (=> d!2006545 e!3884457))

(declare-fun res!2631837 () Bool)

(assert (=> d!2006545 (=> (not res!2631837) (not e!3884457))))

(declare-fun lt!2373826 () List!65234)

(assert (=> d!2006545 (= res!2631837 (noDuplicate!2139 lt!2373826))))

(assert (=> d!2006545 (= lt!2373826 (choose!47591 lt!2373688))))

(assert (=> d!2006545 (= (toList!10095 lt!2373688) lt!2373826)))

(declare-fun b!6400650 () Bool)

(assert (=> b!6400650 (= e!3884457 (= (content!12335 lt!2373826) lt!2373688))))

(assert (= (and d!2006545 res!2631837) b!6400650))

(declare-fun m!7197936 () Bool)

(assert (=> d!2006545 m!7197936))

(declare-fun m!7197938 () Bool)

(assert (=> d!2006545 m!7197938))

(declare-fun m!7197940 () Bool)

(assert (=> b!6400650 m!7197940))

(assert (=> b!6399783 d!2006545))

(declare-fun d!2006547 () Bool)

(declare-fun nullableFct!2250 (Regex!16311) Bool)

(assert (=> d!2006547 (= (nullable!6304 (regOne!33134 (regOne!33134 r!7292))) (nullableFct!2250 (regOne!33134 (regOne!33134 r!7292))))))

(declare-fun bs!1604808 () Bool)

(assert (= bs!1604808 d!2006547))

(declare-fun m!7197942 () Bool)

(assert (=> bs!1604808 m!7197942))

(assert (=> b!6399803 d!2006547))

(declare-fun b!6400685 () Bool)

(declare-fun c!1167694 () Bool)

(assert (=> b!6400685 (= c!1167694 ((_ is Union!16311) r!7292))))

(declare-fun e!3884485 () Int)

(declare-fun e!3884480 () Int)

(assert (=> b!6400685 (= e!3884485 e!3884480)))

(declare-fun bm!548506 () Bool)

(declare-fun call!548516 () Int)

(assert (=> bm!548506 (= call!548516 (regexDepth!338 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun call!548514 () Int)

(declare-fun call!548517 () Int)

(declare-fun bm!548507 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!548507 (= call!548517 (maxBigInt!0 (ite c!1167694 call!548516 call!548514) (ite c!1167694 call!548514 call!548516)))))

(declare-fun b!6400686 () Bool)

(declare-fun call!548513 () Int)

(assert (=> b!6400686 (= e!3884485 (+ 1 call!548513))))

(declare-fun b!6400687 () Bool)

(declare-fun e!3884481 () Bool)

(declare-fun lt!2373829 () Int)

(assert (=> b!6400687 (= e!3884481 (= lt!2373829 1))))

(declare-fun b!6400689 () Bool)

(declare-fun res!2631845 () Bool)

(declare-fun e!3884479 () Bool)

(assert (=> b!6400689 (=> (not res!2631845) (not e!3884479))))

(declare-fun call!548511 () Int)

(assert (=> b!6400689 (= res!2631845 (> lt!2373829 call!548511))))

(declare-fun e!3884482 () Bool)

(assert (=> b!6400689 (= e!3884482 e!3884479)))

(declare-fun b!6400690 () Bool)

(declare-fun e!3884486 () Int)

(assert (=> b!6400690 (= e!3884486 e!3884485)))

(declare-fun c!1167700 () Bool)

(assert (=> b!6400690 (= c!1167700 ((_ is Star!16311) r!7292))))

(declare-fun b!6400691 () Bool)

(declare-fun e!3884484 () Bool)

(assert (=> b!6400691 (= e!3884484 e!3884482)))

(declare-fun c!1167695 () Bool)

(assert (=> b!6400691 (= c!1167695 ((_ is Concat!25156) r!7292))))

(declare-fun b!6400692 () Bool)

(declare-fun call!548512 () Int)

(assert (=> b!6400692 (= e!3884479 (> lt!2373829 call!548512))))

(declare-fun b!6400693 () Bool)

(assert (=> b!6400693 (= e!3884480 (+ 1 call!548517))))

(declare-fun b!6400694 () Bool)

(assert (=> b!6400694 (= e!3884481 (> lt!2373829 call!548511))))

(declare-fun b!6400695 () Bool)

(declare-fun e!3884478 () Int)

(assert (=> b!6400695 (= e!3884478 (+ 1 call!548517))))

(declare-fun b!6400696 () Bool)

(declare-fun e!3884483 () Bool)

(declare-fun call!548515 () Int)

(assert (=> b!6400696 (= e!3884483 (> lt!2373829 call!548515))))

(declare-fun b!6400697 () Bool)

(declare-fun e!3884487 () Bool)

(assert (=> b!6400697 (= e!3884487 e!3884484)))

(declare-fun c!1167696 () Bool)

(assert (=> b!6400697 (= c!1167696 ((_ is Union!16311) r!7292))))

(declare-fun bm!548508 () Bool)

(assert (=> bm!548508 (= call!548513 (regexDepth!338 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))))))

(declare-fun b!6400698 () Bool)

(declare-fun c!1167697 () Bool)

(assert (=> b!6400698 (= c!1167697 ((_ is Star!16311) r!7292))))

(assert (=> b!6400698 (= e!3884482 e!3884481)))

(declare-fun d!2006549 () Bool)

(assert (=> d!2006549 e!3884487))

(declare-fun res!2631846 () Bool)

(assert (=> d!2006549 (=> (not res!2631846) (not e!3884487))))

(assert (=> d!2006549 (= res!2631846 (> lt!2373829 0))))

(assert (=> d!2006549 (= lt!2373829 e!3884486)))

(declare-fun c!1167698 () Bool)

(assert (=> d!2006549 (= c!1167698 ((_ is ElementMatch!16311) r!7292))))

(assert (=> d!2006549 (= (regexDepth!338 r!7292) lt!2373829)))

(declare-fun b!6400688 () Bool)

(assert (=> b!6400688 (= e!3884480 e!3884478)))

(declare-fun c!1167699 () Bool)

(assert (=> b!6400688 (= c!1167699 ((_ is Concat!25156) r!7292))))

(declare-fun b!6400699 () Bool)

(assert (=> b!6400699 (= e!3884486 1)))

(declare-fun bm!548509 () Bool)

(assert (=> bm!548509 (= call!548512 (regexDepth!338 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun b!6400700 () Bool)

(assert (=> b!6400700 (= e!3884484 e!3884483)))

(declare-fun res!2631844 () Bool)

(assert (=> b!6400700 (= res!2631844 (> lt!2373829 call!548512))))

(assert (=> b!6400700 (=> (not res!2631844) (not e!3884483))))

(declare-fun bm!548510 () Bool)

(assert (=> bm!548510 (= call!548515 (regexDepth!338 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))))))

(declare-fun bm!548511 () Bool)

(assert (=> bm!548511 (= call!548511 call!548515)))

(declare-fun bm!548512 () Bool)

(assert (=> bm!548512 (= call!548514 call!548513)))

(declare-fun b!6400701 () Bool)

(assert (=> b!6400701 (= e!3884478 1)))

(assert (= (and d!2006549 c!1167698) b!6400699))

(assert (= (and d!2006549 (not c!1167698)) b!6400690))

(assert (= (and b!6400690 c!1167700) b!6400686))

(assert (= (and b!6400690 (not c!1167700)) b!6400685))

(assert (= (and b!6400685 c!1167694) b!6400693))

(assert (= (and b!6400685 (not c!1167694)) b!6400688))

(assert (= (and b!6400688 c!1167699) b!6400695))

(assert (= (and b!6400688 (not c!1167699)) b!6400701))

(assert (= (or b!6400693 b!6400695) bm!548512))

(assert (= (or b!6400693 b!6400695) bm!548506))

(assert (= (or b!6400693 b!6400695) bm!548507))

(assert (= (or b!6400686 bm!548512) bm!548508))

(assert (= (and d!2006549 res!2631846) b!6400697))

(assert (= (and b!6400697 c!1167696) b!6400700))

(assert (= (and b!6400697 (not c!1167696)) b!6400691))

(assert (= (and b!6400700 res!2631844) b!6400696))

(assert (= (and b!6400691 c!1167695) b!6400689))

(assert (= (and b!6400691 (not c!1167695)) b!6400698))

(assert (= (and b!6400689 res!2631845) b!6400692))

(assert (= (and b!6400698 c!1167697) b!6400694))

(assert (= (and b!6400698 (not c!1167697)) b!6400687))

(assert (= (or b!6400689 b!6400694) bm!548511))

(assert (= (or b!6400696 bm!548511) bm!548510))

(assert (= (or b!6400700 b!6400692) bm!548509))

(declare-fun m!7197944 () Bool)

(assert (=> bm!548507 m!7197944))

(declare-fun m!7197946 () Bool)

(assert (=> bm!548508 m!7197946))

(declare-fun m!7197948 () Bool)

(assert (=> bm!548509 m!7197948))

(declare-fun m!7197950 () Bool)

(assert (=> bm!548510 m!7197950))

(declare-fun m!7197952 () Bool)

(assert (=> bm!548506 m!7197952))

(assert (=> b!6399775 d!2006549))

(declare-fun b!6400702 () Bool)

(declare-fun c!1167701 () Bool)

(assert (=> b!6400702 (= c!1167701 ((_ is Union!16311) lt!2373661))))

(declare-fun e!3884495 () Int)

(declare-fun e!3884490 () Int)

(assert (=> b!6400702 (= e!3884495 e!3884490)))

(declare-fun bm!548513 () Bool)

(declare-fun call!548523 () Int)

(assert (=> bm!548513 (= call!548523 (regexDepth!338 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun bm!548514 () Bool)

(declare-fun call!548521 () Int)

(declare-fun call!548524 () Int)

(assert (=> bm!548514 (= call!548524 (maxBigInt!0 (ite c!1167701 call!548523 call!548521) (ite c!1167701 call!548521 call!548523)))))

(declare-fun b!6400703 () Bool)

(declare-fun call!548520 () Int)

(assert (=> b!6400703 (= e!3884495 (+ 1 call!548520))))

(declare-fun b!6400704 () Bool)

(declare-fun e!3884491 () Bool)

(declare-fun lt!2373830 () Int)

(assert (=> b!6400704 (= e!3884491 (= lt!2373830 1))))

(declare-fun b!6400706 () Bool)

(declare-fun res!2631848 () Bool)

(declare-fun e!3884489 () Bool)

(assert (=> b!6400706 (=> (not res!2631848) (not e!3884489))))

(declare-fun call!548518 () Int)

(assert (=> b!6400706 (= res!2631848 (> lt!2373830 call!548518))))

(declare-fun e!3884492 () Bool)

(assert (=> b!6400706 (= e!3884492 e!3884489)))

(declare-fun b!6400707 () Bool)

(declare-fun e!3884496 () Int)

(assert (=> b!6400707 (= e!3884496 e!3884495)))

(declare-fun c!1167707 () Bool)

(assert (=> b!6400707 (= c!1167707 ((_ is Star!16311) lt!2373661))))

(declare-fun b!6400708 () Bool)

(declare-fun e!3884494 () Bool)

(assert (=> b!6400708 (= e!3884494 e!3884492)))

(declare-fun c!1167702 () Bool)

(assert (=> b!6400708 (= c!1167702 ((_ is Concat!25156) lt!2373661))))

(declare-fun b!6400709 () Bool)

(declare-fun call!548519 () Int)

(assert (=> b!6400709 (= e!3884489 (> lt!2373830 call!548519))))

(declare-fun b!6400710 () Bool)

(assert (=> b!6400710 (= e!3884490 (+ 1 call!548524))))

(declare-fun b!6400711 () Bool)

(assert (=> b!6400711 (= e!3884491 (> lt!2373830 call!548518))))

(declare-fun b!6400712 () Bool)

(declare-fun e!3884488 () Int)

(assert (=> b!6400712 (= e!3884488 (+ 1 call!548524))))

(declare-fun b!6400713 () Bool)

(declare-fun e!3884493 () Bool)

(declare-fun call!548522 () Int)

(assert (=> b!6400713 (= e!3884493 (> lt!2373830 call!548522))))

(declare-fun b!6400714 () Bool)

(declare-fun e!3884497 () Bool)

(assert (=> b!6400714 (= e!3884497 e!3884494)))

(declare-fun c!1167703 () Bool)

(assert (=> b!6400714 (= c!1167703 ((_ is Union!16311) lt!2373661))))

(declare-fun bm!548515 () Bool)

(assert (=> bm!548515 (= call!548520 (regexDepth!338 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))))))

(declare-fun b!6400715 () Bool)

(declare-fun c!1167704 () Bool)

(assert (=> b!6400715 (= c!1167704 ((_ is Star!16311) lt!2373661))))

(assert (=> b!6400715 (= e!3884492 e!3884491)))

(declare-fun d!2006551 () Bool)

(assert (=> d!2006551 e!3884497))

(declare-fun res!2631849 () Bool)

(assert (=> d!2006551 (=> (not res!2631849) (not e!3884497))))

(assert (=> d!2006551 (= res!2631849 (> lt!2373830 0))))

(assert (=> d!2006551 (= lt!2373830 e!3884496)))

(declare-fun c!1167705 () Bool)

(assert (=> d!2006551 (= c!1167705 ((_ is ElementMatch!16311) lt!2373661))))

(assert (=> d!2006551 (= (regexDepth!338 lt!2373661) lt!2373830)))

(declare-fun b!6400705 () Bool)

(assert (=> b!6400705 (= e!3884490 e!3884488)))

(declare-fun c!1167706 () Bool)

(assert (=> b!6400705 (= c!1167706 ((_ is Concat!25156) lt!2373661))))

(declare-fun b!6400716 () Bool)

(assert (=> b!6400716 (= e!3884496 1)))

(declare-fun bm!548516 () Bool)

(assert (=> bm!548516 (= call!548519 (regexDepth!338 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun b!6400717 () Bool)

(assert (=> b!6400717 (= e!3884494 e!3884493)))

(declare-fun res!2631847 () Bool)

(assert (=> b!6400717 (= res!2631847 (> lt!2373830 call!548519))))

(assert (=> b!6400717 (=> (not res!2631847) (not e!3884493))))

(declare-fun bm!548517 () Bool)

(assert (=> bm!548517 (= call!548522 (regexDepth!338 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))))))

(declare-fun bm!548518 () Bool)

(assert (=> bm!548518 (= call!548518 call!548522)))

(declare-fun bm!548519 () Bool)

(assert (=> bm!548519 (= call!548521 call!548520)))

(declare-fun b!6400718 () Bool)

(assert (=> b!6400718 (= e!3884488 1)))

(assert (= (and d!2006551 c!1167705) b!6400716))

(assert (= (and d!2006551 (not c!1167705)) b!6400707))

(assert (= (and b!6400707 c!1167707) b!6400703))

(assert (= (and b!6400707 (not c!1167707)) b!6400702))

(assert (= (and b!6400702 c!1167701) b!6400710))

(assert (= (and b!6400702 (not c!1167701)) b!6400705))

(assert (= (and b!6400705 c!1167706) b!6400712))

(assert (= (and b!6400705 (not c!1167706)) b!6400718))

(assert (= (or b!6400710 b!6400712) bm!548519))

(assert (= (or b!6400710 b!6400712) bm!548513))

(assert (= (or b!6400710 b!6400712) bm!548514))

(assert (= (or b!6400703 bm!548519) bm!548515))

(assert (= (and d!2006551 res!2631849) b!6400714))

(assert (= (and b!6400714 c!1167703) b!6400717))

(assert (= (and b!6400714 (not c!1167703)) b!6400708))

(assert (= (and b!6400717 res!2631847) b!6400713))

(assert (= (and b!6400708 c!1167702) b!6400706))

(assert (= (and b!6400708 (not c!1167702)) b!6400715))

(assert (= (and b!6400706 res!2631848) b!6400709))

(assert (= (and b!6400715 c!1167704) b!6400711))

(assert (= (and b!6400715 (not c!1167704)) b!6400704))

(assert (= (or b!6400706 b!6400711) bm!548518))

(assert (= (or b!6400713 bm!548518) bm!548517))

(assert (= (or b!6400717 b!6400709) bm!548516))

(declare-fun m!7197954 () Bool)

(assert (=> bm!548514 m!7197954))

(declare-fun m!7197956 () Bool)

(assert (=> bm!548515 m!7197956))

(declare-fun m!7197958 () Bool)

(assert (=> bm!548516 m!7197958))

(declare-fun m!7197960 () Bool)

(assert (=> bm!548517 m!7197960))

(declare-fun m!7197962 () Bool)

(assert (=> bm!548513 m!7197962))

(assert (=> b!6399775 d!2006551))

(declare-fun bs!1604809 () Bool)

(declare-fun d!2006553 () Bool)

(assert (= bs!1604809 (and d!2006553 d!2006417)))

(declare-fun lambda!353400 () Int)

(assert (=> bs!1604809 (= lambda!353400 lambda!353359)))

(declare-fun bs!1604810 () Bool)

(assert (= bs!1604810 (and d!2006553 d!2006421)))

(assert (=> bs!1604810 (= lambda!353400 lambda!353365)))

(declare-fun bs!1604811 () Bool)

(assert (= bs!1604811 (and d!2006553 d!2006429)))

(assert (=> bs!1604811 (= lambda!353400 lambda!353368)))

(declare-fun bs!1604812 () Bool)

(assert (= bs!1604812 (and d!2006553 d!2006531)))

(assert (=> bs!1604812 (= lambda!353400 lambda!353399)))

(declare-fun b!6400719 () Bool)

(declare-fun e!3884501 () Regex!16311)

(assert (=> b!6400719 (= e!3884501 (Concat!25156 (h!71557 (t!378841 (exprs!6195 (h!71558 zl!343)))) (generalisedConcat!1908 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun b!6400720 () Bool)

(declare-fun e!3884503 () Bool)

(assert (=> b!6400720 (= e!3884503 (isEmpty!37252 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun e!3884499 () Bool)

(assert (=> d!2006553 e!3884499))

(declare-fun res!2631851 () Bool)

(assert (=> d!2006553 (=> (not res!2631851) (not e!3884499))))

(declare-fun lt!2373831 () Regex!16311)

(assert (=> d!2006553 (= res!2631851 (validRegex!8047 lt!2373831))))

(declare-fun e!3884498 () Regex!16311)

(assert (=> d!2006553 (= lt!2373831 e!3884498)))

(declare-fun c!1167711 () Bool)

(assert (=> d!2006553 (= c!1167711 e!3884503)))

(declare-fun res!2631850 () Bool)

(assert (=> d!2006553 (=> (not res!2631850) (not e!3884503))))

(assert (=> d!2006553 (= res!2631850 ((_ is Cons!65109) (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> d!2006553 (forall!15496 (t!378841 (exprs!6195 (h!71558 zl!343))) lambda!353400)))

(assert (=> d!2006553 (= (generalisedConcat!1908 (t!378841 (exprs!6195 (h!71558 zl!343)))) lt!2373831)))

(declare-fun b!6400721 () Bool)

(declare-fun e!3884502 () Bool)

(assert (=> b!6400721 (= e!3884502 (= lt!2373831 (head!13112 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun b!6400722 () Bool)

(assert (=> b!6400722 (= e!3884502 (isConcat!1234 lt!2373831))))

(declare-fun b!6400723 () Bool)

(declare-fun e!3884500 () Bool)

(assert (=> b!6400723 (= e!3884500 e!3884502)))

(declare-fun c!1167710 () Bool)

(assert (=> b!6400723 (= c!1167710 (isEmpty!37252 (tail!12197 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun b!6400724 () Bool)

(assert (=> b!6400724 (= e!3884498 (h!71557 (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6400725 () Bool)

(assert (=> b!6400725 (= e!3884500 (isEmptyExpr!1711 lt!2373831))))

(declare-fun b!6400726 () Bool)

(assert (=> b!6400726 (= e!3884498 e!3884501)))

(declare-fun c!1167708 () Bool)

(assert (=> b!6400726 (= c!1167708 ((_ is Cons!65109) (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6400727 () Bool)

(assert (=> b!6400727 (= e!3884499 e!3884500)))

(declare-fun c!1167709 () Bool)

(assert (=> b!6400727 (= c!1167709 (isEmpty!37252 (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6400728 () Bool)

(assert (=> b!6400728 (= e!3884501 EmptyExpr!16311)))

(assert (= (and d!2006553 res!2631850) b!6400720))

(assert (= (and d!2006553 c!1167711) b!6400724))

(assert (= (and d!2006553 (not c!1167711)) b!6400726))

(assert (= (and b!6400726 c!1167708) b!6400719))

(assert (= (and b!6400726 (not c!1167708)) b!6400728))

(assert (= (and d!2006553 res!2631851) b!6400727))

(assert (= (and b!6400727 c!1167709) b!6400725))

(assert (= (and b!6400727 (not c!1167709)) b!6400723))

(assert (= (and b!6400723 c!1167710) b!6400721))

(assert (= (and b!6400723 (not c!1167710)) b!6400722))

(declare-fun m!7197964 () Bool)

(assert (=> b!6400723 m!7197964))

(assert (=> b!6400723 m!7197964))

(declare-fun m!7197966 () Bool)

(assert (=> b!6400723 m!7197966))

(declare-fun m!7197968 () Bool)

(assert (=> b!6400725 m!7197968))

(declare-fun m!7197970 () Bool)

(assert (=> d!2006553 m!7197970))

(declare-fun m!7197972 () Bool)

(assert (=> d!2006553 m!7197972))

(declare-fun m!7197974 () Bool)

(assert (=> b!6400721 m!7197974))

(declare-fun m!7197976 () Bool)

(assert (=> b!6400722 m!7197976))

(declare-fun m!7197978 () Bool)

(assert (=> b!6400719 m!7197978))

(declare-fun m!7197980 () Bool)

(assert (=> b!6400720 m!7197980))

(assert (=> b!6400727 m!7197114))

(assert (=> b!6399775 d!2006553))

(declare-fun d!2006555 () Bool)

(declare-fun lt!2373832 () Regex!16311)

(assert (=> d!2006555 (validRegex!8047 lt!2373832)))

(assert (=> d!2006555 (= lt!2373832 (generalisedUnion!2155 (unfocusZipperList!1732 lt!2373651)))))

(assert (=> d!2006555 (= (unfocusZipper!2053 lt!2373651) lt!2373832)))

(declare-fun bs!1604813 () Bool)

(assert (= bs!1604813 d!2006555))

(declare-fun m!7197982 () Bool)

(assert (=> bs!1604813 m!7197982))

(declare-fun m!7197984 () Bool)

(assert (=> bs!1604813 m!7197984))

(assert (=> bs!1604813 m!7197984))

(declare-fun m!7197986 () Bool)

(assert (=> bs!1604813 m!7197986))

(assert (=> b!6399795 d!2006555))

(declare-fun bs!1604814 () Bool)

(declare-fun b!6400731 () Bool)

(assert (= bs!1604814 (and b!6400731 b!6399780)))

(declare-fun lambda!353401 () Int)

(assert (=> bs!1604814 (not (= lambda!353401 lambda!353312))))

(declare-fun bs!1604815 () Bool)

(assert (= bs!1604815 (and b!6400731 d!2006515)))

(assert (=> bs!1604815 (not (= lambda!353401 lambda!353395))))

(declare-fun bs!1604816 () Bool)

(assert (= bs!1604816 (and b!6400731 d!2006367)))

(assert (=> bs!1604816 (not (= lambda!353401 lambda!353347))))

(declare-fun bs!1604817 () Bool)

(assert (= bs!1604817 (and b!6400731 d!2006513)))

(assert (=> bs!1604817 (not (= lambda!353401 lambda!353393))))

(declare-fun bs!1604818 () Bool)

(assert (= bs!1604818 (and b!6400731 b!6400503)))

(assert (=> bs!1604818 (= (and (= (reg!16640 r!7292) (reg!16640 lt!2373658)) (= r!7292 lt!2373658)) (= lambda!353401 lambda!353384))))

(assert (=> bs!1604815 (not (= lambda!353401 lambda!353394))))

(declare-fun bs!1604819 () Bool)

(assert (= bs!1604819 (and b!6400731 b!6399764)))

(assert (=> bs!1604819 (not (= lambda!353401 lambda!353315))))

(assert (=> bs!1604819 (not (= lambda!353401 lambda!353314))))

(declare-fun bs!1604820 () Bool)

(assert (= bs!1604820 (and b!6400731 d!2006349)))

(assert (=> bs!1604820 (not (= lambda!353401 lambda!353340))))

(declare-fun bs!1604821 () Bool)

(assert (= bs!1604821 (and b!6400731 b!6400509)))

(assert (=> bs!1604821 (not (= lambda!353401 lambda!353386))))

(assert (=> bs!1604820 (not (= lambda!353401 lambda!353337))))

(assert (=> bs!1604814 (not (= lambda!353401 lambda!353311))))

(assert (=> b!6400731 true))

(assert (=> b!6400731 true))

(declare-fun bs!1604822 () Bool)

(declare-fun b!6400737 () Bool)

(assert (= bs!1604822 (and b!6400737 b!6399780)))

(declare-fun lambda!353402 () Int)

(assert (=> bs!1604822 (= lambda!353402 lambda!353312)))

(declare-fun bs!1604823 () Bool)

(assert (= bs!1604823 (and b!6400737 d!2006515)))

(assert (=> bs!1604823 (= lambda!353402 lambda!353395)))

(declare-fun bs!1604824 () Bool)

(assert (= bs!1604824 (and b!6400737 b!6400731)))

(assert (=> bs!1604824 (not (= lambda!353402 lambda!353401))))

(declare-fun bs!1604825 () Bool)

(assert (= bs!1604825 (and b!6400737 d!2006367)))

(assert (=> bs!1604825 (not (= lambda!353402 lambda!353347))))

(declare-fun bs!1604826 () Bool)

(assert (= bs!1604826 (and b!6400737 d!2006513)))

(assert (=> bs!1604826 (not (= lambda!353402 lambda!353393))))

(declare-fun bs!1604827 () Bool)

(assert (= bs!1604827 (and b!6400737 b!6400503)))

(assert (=> bs!1604827 (not (= lambda!353402 lambda!353384))))

(assert (=> bs!1604823 (not (= lambda!353402 lambda!353394))))

(declare-fun bs!1604828 () Bool)

(assert (= bs!1604828 (and b!6400737 b!6399764)))

(assert (=> bs!1604828 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353402 lambda!353315))))

(assert (=> bs!1604828 (not (= lambda!353402 lambda!353314))))

(declare-fun bs!1604829 () Bool)

(assert (= bs!1604829 (and b!6400737 d!2006349)))

(assert (=> bs!1604829 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353402 lambda!353340))))

(declare-fun bs!1604830 () Bool)

(assert (= bs!1604830 (and b!6400737 b!6400509)))

(assert (=> bs!1604830 (= (and (= (regOne!33134 r!7292) (regOne!33134 lt!2373658)) (= (regTwo!33134 r!7292) (regTwo!33134 lt!2373658))) (= lambda!353402 lambda!353386))))

(assert (=> bs!1604829 (not (= lambda!353402 lambda!353337))))

(assert (=> bs!1604822 (not (= lambda!353402 lambda!353311))))

(assert (=> b!6400737 true))

(assert (=> b!6400737 true))

(declare-fun b!6400729 () Bool)

(declare-fun e!3884506 () Bool)

(assert (=> b!6400729 (= e!3884506 (= s!2326 (Cons!65108 (c!1167428 r!7292) Nil!65108)))))

(declare-fun b!6400730 () Bool)

(declare-fun c!1167713 () Bool)

(assert (=> b!6400730 (= c!1167713 ((_ is Union!16311) r!7292))))

(declare-fun e!3884504 () Bool)

(assert (=> b!6400730 (= e!3884506 e!3884504)))

(declare-fun e!3884507 () Bool)

(declare-fun call!548526 () Bool)

(assert (=> b!6400731 (= e!3884507 call!548526)))

(declare-fun b!6400732 () Bool)

(declare-fun e!3884505 () Bool)

(assert (=> b!6400732 (= e!3884504 e!3884505)))

(declare-fun c!1167715 () Bool)

(assert (=> b!6400732 (= c!1167715 ((_ is Star!16311) r!7292))))

(declare-fun b!6400733 () Bool)

(declare-fun c!1167712 () Bool)

(assert (=> b!6400733 (= c!1167712 ((_ is ElementMatch!16311) r!7292))))

(declare-fun e!3884508 () Bool)

(assert (=> b!6400733 (= e!3884508 e!3884506)))

(declare-fun b!6400734 () Bool)

(declare-fun e!3884509 () Bool)

(assert (=> b!6400734 (= e!3884509 e!3884508)))

(declare-fun res!2631852 () Bool)

(assert (=> b!6400734 (= res!2631852 (not ((_ is EmptyLang!16311) r!7292)))))

(assert (=> b!6400734 (=> (not res!2631852) (not e!3884508))))

(declare-fun d!2006557 () Bool)

(declare-fun c!1167714 () Bool)

(assert (=> d!2006557 (= c!1167714 ((_ is EmptyExpr!16311) r!7292))))

(assert (=> d!2006557 (= (matchRSpec!3412 r!7292 s!2326) e!3884509)))

(declare-fun b!6400735 () Bool)

(declare-fun res!2631853 () Bool)

(assert (=> b!6400735 (=> res!2631853 e!3884507)))

(declare-fun call!548525 () Bool)

(assert (=> b!6400735 (= res!2631853 call!548525)))

(assert (=> b!6400735 (= e!3884505 e!3884507)))

(declare-fun bm!548520 () Bool)

(assert (=> bm!548520 (= call!548526 (Exists!3381 (ite c!1167715 lambda!353401 lambda!353402)))))

(declare-fun bm!548521 () Bool)

(assert (=> bm!548521 (= call!548525 (isEmpty!37253 s!2326))))

(declare-fun b!6400736 () Bool)

(assert (=> b!6400736 (= e!3884509 call!548525)))

(assert (=> b!6400737 (= e!3884505 call!548526)))

(declare-fun b!6400738 () Bool)

(declare-fun e!3884510 () Bool)

(assert (=> b!6400738 (= e!3884504 e!3884510)))

(declare-fun res!2631854 () Bool)

(assert (=> b!6400738 (= res!2631854 (matchRSpec!3412 (regOne!33135 r!7292) s!2326))))

(assert (=> b!6400738 (=> res!2631854 e!3884510)))

(declare-fun b!6400739 () Bool)

(assert (=> b!6400739 (= e!3884510 (matchRSpec!3412 (regTwo!33135 r!7292) s!2326))))

(assert (= (and d!2006557 c!1167714) b!6400736))

(assert (= (and d!2006557 (not c!1167714)) b!6400734))

(assert (= (and b!6400734 res!2631852) b!6400733))

(assert (= (and b!6400733 c!1167712) b!6400729))

(assert (= (and b!6400733 (not c!1167712)) b!6400730))

(assert (= (and b!6400730 c!1167713) b!6400738))

(assert (= (and b!6400730 (not c!1167713)) b!6400732))

(assert (= (and b!6400738 (not res!2631854)) b!6400739))

(assert (= (and b!6400732 c!1167715) b!6400735))

(assert (= (and b!6400732 (not c!1167715)) b!6400737))

(assert (= (and b!6400735 (not res!2631853)) b!6400731))

(assert (= (or b!6400731 b!6400737) bm!548520))

(assert (= (or b!6400736 b!6400735) bm!548521))

(declare-fun m!7197988 () Bool)

(assert (=> bm!548520 m!7197988))

(assert (=> bm!548521 m!7197724))

(declare-fun m!7197990 () Bool)

(assert (=> b!6400738 m!7197990))

(declare-fun m!7197992 () Bool)

(assert (=> b!6400739 m!7197992))

(assert (=> b!6399776 d!2006557))

(declare-fun b!6400740 () Bool)

(declare-fun e!3884512 () Bool)

(declare-fun e!3884513 () Bool)

(assert (=> b!6400740 (= e!3884512 e!3884513)))

(declare-fun res!2631856 () Bool)

(assert (=> b!6400740 (=> res!2631856 e!3884513)))

(declare-fun call!548527 () Bool)

(assert (=> b!6400740 (= res!2631856 call!548527)))

(declare-fun b!6400741 () Bool)

(declare-fun e!3884515 () Bool)

(assert (=> b!6400741 (= e!3884515 (matchR!8494 (derivativeStep!5015 r!7292 (head!13113 s!2326)) (tail!12198 s!2326)))))

(declare-fun b!6400742 () Bool)

(declare-fun e!3884517 () Bool)

(assert (=> b!6400742 (= e!3884517 e!3884512)))

(declare-fun res!2631857 () Bool)

(assert (=> b!6400742 (=> (not res!2631857) (not e!3884512))))

(declare-fun lt!2373833 () Bool)

(assert (=> b!6400742 (= res!2631857 (not lt!2373833))))

(declare-fun b!6400743 () Bool)

(declare-fun e!3884516 () Bool)

(assert (=> b!6400743 (= e!3884516 (= (head!13113 s!2326) (c!1167428 r!7292)))))

(declare-fun b!6400744 () Bool)

(declare-fun res!2631859 () Bool)

(assert (=> b!6400744 (=> res!2631859 e!3884513)))

(assert (=> b!6400744 (= res!2631859 (not (isEmpty!37253 (tail!12198 s!2326))))))

(declare-fun b!6400745 () Bool)

(assert (=> b!6400745 (= e!3884515 (nullable!6304 r!7292))))

(declare-fun b!6400746 () Bool)

(assert (=> b!6400746 (= e!3884513 (not (= (head!13113 s!2326) (c!1167428 r!7292))))))

(declare-fun b!6400748 () Bool)

(declare-fun res!2631855 () Bool)

(assert (=> b!6400748 (=> res!2631855 e!3884517)))

(assert (=> b!6400748 (= res!2631855 (not ((_ is ElementMatch!16311) r!7292)))))

(declare-fun e!3884511 () Bool)

(assert (=> b!6400748 (= e!3884511 e!3884517)))

(declare-fun bm!548522 () Bool)

(assert (=> bm!548522 (= call!548527 (isEmpty!37253 s!2326))))

(declare-fun b!6400749 () Bool)

(declare-fun e!3884514 () Bool)

(assert (=> b!6400749 (= e!3884514 e!3884511)))

(declare-fun c!1167716 () Bool)

(assert (=> b!6400749 (= c!1167716 ((_ is EmptyLang!16311) r!7292))))

(declare-fun b!6400750 () Bool)

(declare-fun res!2631858 () Bool)

(assert (=> b!6400750 (=> (not res!2631858) (not e!3884516))))

(assert (=> b!6400750 (= res!2631858 (not call!548527))))

(declare-fun b!6400751 () Bool)

(declare-fun res!2631862 () Bool)

(assert (=> b!6400751 (=> res!2631862 e!3884517)))

(assert (=> b!6400751 (= res!2631862 e!3884516)))

(declare-fun res!2631860 () Bool)

(assert (=> b!6400751 (=> (not res!2631860) (not e!3884516))))

(assert (=> b!6400751 (= res!2631860 lt!2373833)))

(declare-fun d!2006559 () Bool)

(assert (=> d!2006559 e!3884514))

(declare-fun c!1167717 () Bool)

(assert (=> d!2006559 (= c!1167717 ((_ is EmptyExpr!16311) r!7292))))

(assert (=> d!2006559 (= lt!2373833 e!3884515)))

(declare-fun c!1167718 () Bool)

(assert (=> d!2006559 (= c!1167718 (isEmpty!37253 s!2326))))

(assert (=> d!2006559 (validRegex!8047 r!7292)))

(assert (=> d!2006559 (= (matchR!8494 r!7292 s!2326) lt!2373833)))

(declare-fun b!6400747 () Bool)

(assert (=> b!6400747 (= e!3884514 (= lt!2373833 call!548527))))

(declare-fun b!6400752 () Bool)

(assert (=> b!6400752 (= e!3884511 (not lt!2373833))))

(declare-fun b!6400753 () Bool)

(declare-fun res!2631861 () Bool)

(assert (=> b!6400753 (=> (not res!2631861) (not e!3884516))))

(assert (=> b!6400753 (= res!2631861 (isEmpty!37253 (tail!12198 s!2326)))))

(assert (= (and d!2006559 c!1167718) b!6400745))

(assert (= (and d!2006559 (not c!1167718)) b!6400741))

(assert (= (and d!2006559 c!1167717) b!6400747))

(assert (= (and d!2006559 (not c!1167717)) b!6400749))

(assert (= (and b!6400749 c!1167716) b!6400752))

(assert (= (and b!6400749 (not c!1167716)) b!6400748))

(assert (= (and b!6400748 (not res!2631855)) b!6400751))

(assert (= (and b!6400751 res!2631860) b!6400750))

(assert (= (and b!6400750 res!2631858) b!6400753))

(assert (= (and b!6400753 res!2631861) b!6400743))

(assert (= (and b!6400751 (not res!2631862)) b!6400742))

(assert (= (and b!6400742 res!2631857) b!6400740))

(assert (= (and b!6400740 (not res!2631856)) b!6400744))

(assert (= (and b!6400744 (not res!2631859)) b!6400746))

(assert (= (or b!6400747 b!6400740 b!6400750) bm!548522))

(assert (=> bm!548522 m!7197724))

(assert (=> b!6400746 m!7197726))

(assert (=> b!6400753 m!7197728))

(assert (=> b!6400753 m!7197728))

(assert (=> b!6400753 m!7197730))

(assert (=> b!6400743 m!7197726))

(assert (=> b!6400744 m!7197728))

(assert (=> b!6400744 m!7197728))

(assert (=> b!6400744 m!7197730))

(assert (=> d!2006559 m!7197724))

(assert (=> d!2006559 m!7197238))

(assert (=> b!6400741 m!7197726))

(assert (=> b!6400741 m!7197726))

(declare-fun m!7197994 () Bool)

(assert (=> b!6400741 m!7197994))

(assert (=> b!6400741 m!7197728))

(assert (=> b!6400741 m!7197994))

(assert (=> b!6400741 m!7197728))

(declare-fun m!7197996 () Bool)

(assert (=> b!6400741 m!7197996))

(declare-fun m!7197998 () Bool)

(assert (=> b!6400745 m!7197998))

(assert (=> b!6399776 d!2006559))

(declare-fun d!2006561 () Bool)

(assert (=> d!2006561 (= (matchR!8494 r!7292 s!2326) (matchRSpec!3412 r!7292 s!2326))))

(declare-fun lt!2373834 () Unit!158575)

(assert (=> d!2006561 (= lt!2373834 (choose!47598 r!7292 s!2326))))

(assert (=> d!2006561 (validRegex!8047 r!7292)))

(assert (=> d!2006561 (= (mainMatchTheorem!3412 r!7292 s!2326) lt!2373834)))

(declare-fun bs!1604831 () Bool)

(assert (= bs!1604831 d!2006561))

(assert (=> bs!1604831 m!7197162))

(assert (=> bs!1604831 m!7197160))

(declare-fun m!7198000 () Bool)

(assert (=> bs!1604831 m!7198000))

(assert (=> bs!1604831 m!7197238))

(assert (=> b!6399776 d!2006561))

(declare-fun bs!1604832 () Bool)

(declare-fun d!2006563 () Bool)

(assert (= bs!1604832 (and d!2006563 d!2006417)))

(declare-fun lambda!353403 () Int)

(assert (=> bs!1604832 (= lambda!353403 lambda!353359)))

(declare-fun bs!1604833 () Bool)

(assert (= bs!1604833 (and d!2006563 d!2006553)))

(assert (=> bs!1604833 (= lambda!353403 lambda!353400)))

(declare-fun bs!1604834 () Bool)

(assert (= bs!1604834 (and d!2006563 d!2006429)))

(assert (=> bs!1604834 (= lambda!353403 lambda!353368)))

(declare-fun bs!1604835 () Bool)

(assert (= bs!1604835 (and d!2006563 d!2006531)))

(assert (=> bs!1604835 (= lambda!353403 lambda!353399)))

(declare-fun bs!1604836 () Bool)

(assert (= bs!1604836 (and d!2006563 d!2006421)))

(assert (=> bs!1604836 (= lambda!353403 lambda!353365)))

(assert (=> d!2006563 (= (inv!84024 setElem!43686) (forall!15496 (exprs!6195 setElem!43686) lambda!353403))))

(declare-fun bs!1604837 () Bool)

(assert (= bs!1604837 d!2006563))

(declare-fun m!7198002 () Bool)

(assert (=> bs!1604837 m!7198002))

(assert (=> setNonEmpty!43686 d!2006563))

(declare-fun d!2006565 () Bool)

(assert (=> d!2006565 (= (isEmpty!37254 (t!378842 zl!343)) ((_ is Nil!65110) (t!378842 zl!343)))))

(assert (=> b!6399797 d!2006565))

(declare-fun b!6400754 () Bool)

(declare-fun e!3884519 () Bool)

(declare-fun e!3884520 () Bool)

(assert (=> b!6400754 (= e!3884519 e!3884520)))

(declare-fun res!2631864 () Bool)

(assert (=> b!6400754 (=> res!2631864 e!3884520)))

(declare-fun call!548528 () Bool)

(assert (=> b!6400754 (= res!2631864 call!548528)))

(declare-fun b!6400755 () Bool)

(declare-fun e!3884522 () Bool)

(assert (=> b!6400755 (= e!3884522 (matchR!8494 (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686))) (tail!12198 (_1!36593 lt!2373686))))))

(declare-fun b!6400756 () Bool)

(declare-fun e!3884524 () Bool)

(assert (=> b!6400756 (= e!3884524 e!3884519)))

(declare-fun res!2631865 () Bool)

(assert (=> b!6400756 (=> (not res!2631865) (not e!3884519))))

(declare-fun lt!2373835 () Bool)

(assert (=> b!6400756 (= res!2631865 (not lt!2373835))))

(declare-fun b!6400757 () Bool)

(declare-fun e!3884523 () Bool)

(assert (=> b!6400757 (= e!3884523 (= (head!13113 (_1!36593 lt!2373686)) (c!1167428 lt!2373664)))))

(declare-fun b!6400758 () Bool)

(declare-fun res!2631867 () Bool)

(assert (=> b!6400758 (=> res!2631867 e!3884520)))

(assert (=> b!6400758 (= res!2631867 (not (isEmpty!37253 (tail!12198 (_1!36593 lt!2373686)))))))

(declare-fun b!6400759 () Bool)

(assert (=> b!6400759 (= e!3884522 (nullable!6304 lt!2373664))))

(declare-fun b!6400760 () Bool)

(assert (=> b!6400760 (= e!3884520 (not (= (head!13113 (_1!36593 lt!2373686)) (c!1167428 lt!2373664))))))

(declare-fun b!6400762 () Bool)

(declare-fun res!2631863 () Bool)

(assert (=> b!6400762 (=> res!2631863 e!3884524)))

(assert (=> b!6400762 (= res!2631863 (not ((_ is ElementMatch!16311) lt!2373664)))))

(declare-fun e!3884518 () Bool)

(assert (=> b!6400762 (= e!3884518 e!3884524)))

(declare-fun bm!548523 () Bool)

(assert (=> bm!548523 (= call!548528 (isEmpty!37253 (_1!36593 lt!2373686)))))

(declare-fun b!6400763 () Bool)

(declare-fun e!3884521 () Bool)

(assert (=> b!6400763 (= e!3884521 e!3884518)))

(declare-fun c!1167719 () Bool)

(assert (=> b!6400763 (= c!1167719 ((_ is EmptyLang!16311) lt!2373664))))

(declare-fun b!6400764 () Bool)

(declare-fun res!2631866 () Bool)

(assert (=> b!6400764 (=> (not res!2631866) (not e!3884523))))

(assert (=> b!6400764 (= res!2631866 (not call!548528))))

(declare-fun b!6400765 () Bool)

(declare-fun res!2631870 () Bool)

(assert (=> b!6400765 (=> res!2631870 e!3884524)))

(assert (=> b!6400765 (= res!2631870 e!3884523)))

(declare-fun res!2631868 () Bool)

(assert (=> b!6400765 (=> (not res!2631868) (not e!3884523))))

(assert (=> b!6400765 (= res!2631868 lt!2373835)))

(declare-fun d!2006567 () Bool)

(assert (=> d!2006567 e!3884521))

(declare-fun c!1167720 () Bool)

(assert (=> d!2006567 (= c!1167720 ((_ is EmptyExpr!16311) lt!2373664))))

(assert (=> d!2006567 (= lt!2373835 e!3884522)))

(declare-fun c!1167721 () Bool)

(assert (=> d!2006567 (= c!1167721 (isEmpty!37253 (_1!36593 lt!2373686)))))

(assert (=> d!2006567 (validRegex!8047 lt!2373664)))

(assert (=> d!2006567 (= (matchR!8494 lt!2373664 (_1!36593 lt!2373686)) lt!2373835)))

(declare-fun b!6400761 () Bool)

(assert (=> b!6400761 (= e!3884521 (= lt!2373835 call!548528))))

(declare-fun b!6400766 () Bool)

(assert (=> b!6400766 (= e!3884518 (not lt!2373835))))

(declare-fun b!6400767 () Bool)

(declare-fun res!2631869 () Bool)

(assert (=> b!6400767 (=> (not res!2631869) (not e!3884523))))

(assert (=> b!6400767 (= res!2631869 (isEmpty!37253 (tail!12198 (_1!36593 lt!2373686))))))

(assert (= (and d!2006567 c!1167721) b!6400759))

(assert (= (and d!2006567 (not c!1167721)) b!6400755))

(assert (= (and d!2006567 c!1167720) b!6400761))

(assert (= (and d!2006567 (not c!1167720)) b!6400763))

(assert (= (and b!6400763 c!1167719) b!6400766))

(assert (= (and b!6400763 (not c!1167719)) b!6400762))

(assert (= (and b!6400762 (not res!2631863)) b!6400765))

(assert (= (and b!6400765 res!2631868) b!6400764))

(assert (= (and b!6400764 res!2631866) b!6400767))

(assert (= (and b!6400767 res!2631869) b!6400757))

(assert (= (and b!6400765 (not res!2631870)) b!6400756))

(assert (= (and b!6400756 res!2631865) b!6400754))

(assert (= (and b!6400754 (not res!2631864)) b!6400758))

(assert (= (and b!6400758 (not res!2631867)) b!6400760))

(assert (= (or b!6400761 b!6400754 b!6400764) bm!548523))

(assert (=> bm!548523 m!7197110))

(declare-fun m!7198004 () Bool)

(assert (=> b!6400760 m!7198004))

(declare-fun m!7198006 () Bool)

(assert (=> b!6400767 m!7198006))

(assert (=> b!6400767 m!7198006))

(declare-fun m!7198008 () Bool)

(assert (=> b!6400767 m!7198008))

(assert (=> b!6400757 m!7198004))

(assert (=> b!6400758 m!7198006))

(assert (=> b!6400758 m!7198006))

(assert (=> b!6400758 m!7198008))

(assert (=> d!2006567 m!7197110))

(assert (=> d!2006567 m!7197394))

(assert (=> b!6400755 m!7198004))

(assert (=> b!6400755 m!7198004))

(declare-fun m!7198010 () Bool)

(assert (=> b!6400755 m!7198010))

(assert (=> b!6400755 m!7198006))

(assert (=> b!6400755 m!7198010))

(assert (=> b!6400755 m!7198006))

(declare-fun m!7198012 () Bool)

(assert (=> b!6400755 m!7198012))

(declare-fun m!7198014 () Bool)

(assert (=> b!6400759 m!7198014))

(assert (=> b!6399779 d!2006567))

(declare-fun b!6400768 () Bool)

(declare-fun e!3884526 () Bool)

(declare-fun e!3884527 () Bool)

(assert (=> b!6400768 (= e!3884526 e!3884527)))

(declare-fun res!2631872 () Bool)

(assert (=> b!6400768 (=> res!2631872 e!3884527)))

(declare-fun call!548529 () Bool)

(assert (=> b!6400768 (= res!2631872 call!548529)))

(declare-fun b!6400769 () Bool)

(declare-fun e!3884529 () Bool)

(assert (=> b!6400769 (= e!3884529 (matchR!8494 (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686))) (tail!12198 (_2!36593 lt!2373686))))))

(declare-fun b!6400770 () Bool)

(declare-fun e!3884531 () Bool)

(assert (=> b!6400770 (= e!3884531 e!3884526)))

(declare-fun res!2631873 () Bool)

(assert (=> b!6400770 (=> (not res!2631873) (not e!3884526))))

(declare-fun lt!2373836 () Bool)

(assert (=> b!6400770 (= res!2631873 (not lt!2373836))))

(declare-fun b!6400771 () Bool)

(declare-fun e!3884530 () Bool)

(assert (=> b!6400771 (= e!3884530 (= (head!13113 (_2!36593 lt!2373686)) (c!1167428 (regTwo!33134 r!7292))))))

(declare-fun b!6400772 () Bool)

(declare-fun res!2631875 () Bool)

(assert (=> b!6400772 (=> res!2631875 e!3884527)))

(assert (=> b!6400772 (= res!2631875 (not (isEmpty!37253 (tail!12198 (_2!36593 lt!2373686)))))))

(declare-fun b!6400773 () Bool)

(assert (=> b!6400773 (= e!3884529 (nullable!6304 (regTwo!33134 r!7292)))))

(declare-fun b!6400774 () Bool)

(assert (=> b!6400774 (= e!3884527 (not (= (head!13113 (_2!36593 lt!2373686)) (c!1167428 (regTwo!33134 r!7292)))))))

(declare-fun b!6400776 () Bool)

(declare-fun res!2631871 () Bool)

(assert (=> b!6400776 (=> res!2631871 e!3884531)))

(assert (=> b!6400776 (= res!2631871 (not ((_ is ElementMatch!16311) (regTwo!33134 r!7292))))))

(declare-fun e!3884525 () Bool)

(assert (=> b!6400776 (= e!3884525 e!3884531)))

(declare-fun bm!548524 () Bool)

(assert (=> bm!548524 (= call!548529 (isEmpty!37253 (_2!36593 lt!2373686)))))

(declare-fun b!6400777 () Bool)

(declare-fun e!3884528 () Bool)

(assert (=> b!6400777 (= e!3884528 e!3884525)))

(declare-fun c!1167722 () Bool)

(assert (=> b!6400777 (= c!1167722 ((_ is EmptyLang!16311) (regTwo!33134 r!7292)))))

(declare-fun b!6400778 () Bool)

(declare-fun res!2631874 () Bool)

(assert (=> b!6400778 (=> (not res!2631874) (not e!3884530))))

(assert (=> b!6400778 (= res!2631874 (not call!548529))))

(declare-fun b!6400779 () Bool)

(declare-fun res!2631878 () Bool)

(assert (=> b!6400779 (=> res!2631878 e!3884531)))

(assert (=> b!6400779 (= res!2631878 e!3884530)))

(declare-fun res!2631876 () Bool)

(assert (=> b!6400779 (=> (not res!2631876) (not e!3884530))))

(assert (=> b!6400779 (= res!2631876 lt!2373836)))

(declare-fun d!2006569 () Bool)

(assert (=> d!2006569 e!3884528))

(declare-fun c!1167723 () Bool)

(assert (=> d!2006569 (= c!1167723 ((_ is EmptyExpr!16311) (regTwo!33134 r!7292)))))

(assert (=> d!2006569 (= lt!2373836 e!3884529)))

(declare-fun c!1167724 () Bool)

(assert (=> d!2006569 (= c!1167724 (isEmpty!37253 (_2!36593 lt!2373686)))))

(assert (=> d!2006569 (validRegex!8047 (regTwo!33134 r!7292))))

(assert (=> d!2006569 (= (matchR!8494 (regTwo!33134 r!7292) (_2!36593 lt!2373686)) lt!2373836)))

(declare-fun b!6400775 () Bool)

(assert (=> b!6400775 (= e!3884528 (= lt!2373836 call!548529))))

(declare-fun b!6400780 () Bool)

(assert (=> b!6400780 (= e!3884525 (not lt!2373836))))

(declare-fun b!6400781 () Bool)

(declare-fun res!2631877 () Bool)

(assert (=> b!6400781 (=> (not res!2631877) (not e!3884530))))

(assert (=> b!6400781 (= res!2631877 (isEmpty!37253 (tail!12198 (_2!36593 lt!2373686))))))

(assert (= (and d!2006569 c!1167724) b!6400773))

(assert (= (and d!2006569 (not c!1167724)) b!6400769))

(assert (= (and d!2006569 c!1167723) b!6400775))

(assert (= (and d!2006569 (not c!1167723)) b!6400777))

(assert (= (and b!6400777 c!1167722) b!6400780))

(assert (= (and b!6400777 (not c!1167722)) b!6400776))

(assert (= (and b!6400776 (not res!2631871)) b!6400779))

(assert (= (and b!6400779 res!2631876) b!6400778))

(assert (= (and b!6400778 res!2631874) b!6400781))

(assert (= (and b!6400781 res!2631877) b!6400771))

(assert (= (and b!6400779 (not res!2631878)) b!6400770))

(assert (= (and b!6400770 res!2631873) b!6400768))

(assert (= (and b!6400768 (not res!2631872)) b!6400772))

(assert (= (and b!6400772 (not res!2631875)) b!6400774))

(assert (= (or b!6400775 b!6400768 b!6400778) bm!548524))

(declare-fun m!7198016 () Bool)

(assert (=> bm!548524 m!7198016))

(declare-fun m!7198018 () Bool)

(assert (=> b!6400774 m!7198018))

(declare-fun m!7198020 () Bool)

(assert (=> b!6400781 m!7198020))

(assert (=> b!6400781 m!7198020))

(declare-fun m!7198022 () Bool)

(assert (=> b!6400781 m!7198022))

(assert (=> b!6400771 m!7198018))

(assert (=> b!6400772 m!7198020))

(assert (=> b!6400772 m!7198020))

(assert (=> b!6400772 m!7198022))

(assert (=> d!2006569 m!7198016))

(declare-fun m!7198024 () Bool)

(assert (=> d!2006569 m!7198024))

(assert (=> b!6400769 m!7198018))

(assert (=> b!6400769 m!7198018))

(declare-fun m!7198026 () Bool)

(assert (=> b!6400769 m!7198026))

(assert (=> b!6400769 m!7198020))

(assert (=> b!6400769 m!7198026))

(assert (=> b!6400769 m!7198020))

(declare-fun m!7198028 () Bool)

(assert (=> b!6400769 m!7198028))

(declare-fun m!7198030 () Bool)

(assert (=> b!6400773 m!7198030))

(assert (=> b!6399798 d!2006569))

(declare-fun d!2006571 () Bool)

(declare-fun lt!2373837 () Regex!16311)

(assert (=> d!2006571 (validRegex!8047 lt!2373837)))

(assert (=> d!2006571 (= lt!2373837 (generalisedUnion!2155 (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110))))))

(assert (=> d!2006571 (= (unfocusZipper!2053 (Cons!65110 lt!2373669 Nil!65110)) lt!2373837)))

(declare-fun bs!1604838 () Bool)

(assert (= bs!1604838 d!2006571))

(declare-fun m!7198032 () Bool)

(assert (=> bs!1604838 m!7198032))

(declare-fun m!7198034 () Bool)

(assert (=> bs!1604838 m!7198034))

(assert (=> bs!1604838 m!7198034))

(declare-fun m!7198036 () Bool)

(assert (=> bs!1604838 m!7198036))

(assert (=> b!6399778 d!2006571))

(declare-fun b!6400804 () Bool)

(declare-fun e!3884545 () (InoxSet Context!11390))

(declare-fun call!548544 () (InoxSet Context!11390))

(declare-fun call!548547 () (InoxSet Context!11390))

(assert (=> b!6400804 (= e!3884545 ((_ map or) call!548544 call!548547))))

(declare-fun b!6400805 () Bool)

(declare-fun c!1167737 () Bool)

(declare-fun e!3884548 () Bool)

(assert (=> b!6400805 (= c!1167737 e!3884548)))

(declare-fun res!2631881 () Bool)

(assert (=> b!6400805 (=> (not res!2631881) (not e!3884548))))

(assert (=> b!6400805 (= res!2631881 ((_ is Concat!25156) (reg!16640 (regOne!33134 r!7292))))))

(declare-fun e!3884547 () (InoxSet Context!11390))

(assert (=> b!6400805 (= e!3884545 e!3884547)))

(declare-fun bm!548537 () Bool)

(declare-fun call!548546 () (InoxSet Context!11390))

(assert (=> bm!548537 (= call!548546 call!548544)))

(declare-fun call!548542 () List!65233)

(declare-fun c!1167735 () Bool)

(declare-fun bm!548538 () Bool)

(assert (=> bm!548538 (= call!548547 (derivationStepZipperDown!1559 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292)))) (ite c!1167735 lt!2373652 (Context!11391 call!548542)) (h!71556 s!2326)))))

(declare-fun b!6400806 () Bool)

(declare-fun e!3884546 () (InoxSet Context!11390))

(assert (=> b!6400806 (= e!3884546 e!3884545)))

(assert (=> b!6400806 (= c!1167735 ((_ is Union!16311) (reg!16640 (regOne!33134 r!7292))))))

(declare-fun b!6400807 () Bool)

(assert (=> b!6400807 (= e!3884547 ((_ map or) call!548547 call!548546))))

(declare-fun bm!548539 () Bool)

(declare-fun call!548543 () List!65233)

(assert (=> bm!548539 (= call!548543 call!548542)))

(declare-fun b!6400808 () Bool)

(declare-fun e!3884549 () (InoxSet Context!11390))

(assert (=> b!6400808 (= e!3884547 e!3884549)))

(declare-fun c!1167738 () Bool)

(assert (=> b!6400808 (= c!1167738 ((_ is Concat!25156) (reg!16640 (regOne!33134 r!7292))))))

(declare-fun b!6400809 () Bool)

(declare-fun call!548545 () (InoxSet Context!11390))

(assert (=> b!6400809 (= e!3884549 call!548545)))

(declare-fun bm!548540 () Bool)

(assert (=> bm!548540 (= call!548544 (derivationStepZipperDown!1559 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292)))))) (ite (or c!1167735 c!1167737) lt!2373652 (Context!11391 call!548543)) (h!71556 s!2326)))))

(declare-fun b!6400810 () Bool)

(declare-fun e!3884544 () (InoxSet Context!11390))

(assert (=> b!6400810 (= e!3884544 call!548545)))

(declare-fun bm!548541 () Bool)

(declare-fun $colon$colon!2172 (List!65233 Regex!16311) List!65233)

(assert (=> bm!548541 (= call!548542 ($colon$colon!2172 (exprs!6195 lt!2373652) (ite (or c!1167737 c!1167738) (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (regOne!33134 r!7292)))))))

(declare-fun d!2006573 () Bool)

(declare-fun c!1167739 () Bool)

(assert (=> d!2006573 (= c!1167739 (and ((_ is ElementMatch!16311) (reg!16640 (regOne!33134 r!7292))) (= (c!1167428 (reg!16640 (regOne!33134 r!7292))) (h!71556 s!2326))))))

(assert (=> d!2006573 (= (derivationStepZipperDown!1559 (reg!16640 (regOne!33134 r!7292)) lt!2373652 (h!71556 s!2326)) e!3884546)))

(declare-fun b!6400811 () Bool)

(assert (=> b!6400811 (= e!3884544 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6400812 () Bool)

(declare-fun c!1167736 () Bool)

(assert (=> b!6400812 (= c!1167736 ((_ is Star!16311) (reg!16640 (regOne!33134 r!7292))))))

(assert (=> b!6400812 (= e!3884549 e!3884544)))

(declare-fun b!6400813 () Bool)

(assert (=> b!6400813 (= e!3884546 (store ((as const (Array Context!11390 Bool)) false) lt!2373652 true))))

(declare-fun b!6400814 () Bool)

(assert (=> b!6400814 (= e!3884548 (nullable!6304 (regOne!33134 (reg!16640 (regOne!33134 r!7292)))))))

(declare-fun bm!548542 () Bool)

(assert (=> bm!548542 (= call!548545 call!548546)))

(assert (= (and d!2006573 c!1167739) b!6400813))

(assert (= (and d!2006573 (not c!1167739)) b!6400806))

(assert (= (and b!6400806 c!1167735) b!6400804))

(assert (= (and b!6400806 (not c!1167735)) b!6400805))

(assert (= (and b!6400805 res!2631881) b!6400814))

(assert (= (and b!6400805 c!1167737) b!6400807))

(assert (= (and b!6400805 (not c!1167737)) b!6400808))

(assert (= (and b!6400808 c!1167738) b!6400809))

(assert (= (and b!6400808 (not c!1167738)) b!6400812))

(assert (= (and b!6400812 c!1167736) b!6400810))

(assert (= (and b!6400812 (not c!1167736)) b!6400811))

(assert (= (or b!6400809 b!6400810) bm!548539))

(assert (= (or b!6400809 b!6400810) bm!548542))

(assert (= (or b!6400807 bm!548539) bm!548541))

(assert (= (or b!6400807 bm!548542) bm!548537))

(assert (= (or b!6400804 b!6400807) bm!548538))

(assert (= (or b!6400804 bm!548537) bm!548540))

(declare-fun m!7198038 () Bool)

(assert (=> bm!548538 m!7198038))

(declare-fun m!7198040 () Bool)

(assert (=> bm!548540 m!7198040))

(assert (=> b!6400813 m!7197120))

(declare-fun m!7198042 () Bool)

(assert (=> b!6400814 m!7198042))

(declare-fun m!7198044 () Bool)

(assert (=> bm!548541 m!7198044))

(assert (=> b!6399790 d!2006573))

(declare-fun b!6400815 () Bool)

(declare-fun res!2631883 () Bool)

(declare-fun e!3884554 () Bool)

(assert (=> b!6400815 (=> (not res!2631883) (not e!3884554))))

(declare-fun call!548550 () Bool)

(assert (=> b!6400815 (= res!2631883 call!548550)))

(declare-fun e!3884550 () Bool)

(assert (=> b!6400815 (= e!3884550 e!3884554)))

(declare-fun c!1167741 () Bool)

(declare-fun c!1167740 () Bool)

(declare-fun bm!548543 () Bool)

(declare-fun call!548549 () Bool)

(assert (=> bm!548543 (= call!548549 (validRegex!8047 (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661)))))))

(declare-fun b!6400816 () Bool)

(declare-fun e!3884551 () Bool)

(declare-fun e!3884552 () Bool)

(assert (=> b!6400816 (= e!3884551 e!3884552)))

(declare-fun res!2631885 () Bool)

(assert (=> b!6400816 (= res!2631885 (not (nullable!6304 (reg!16640 lt!2373661))))))

(assert (=> b!6400816 (=> (not res!2631885) (not e!3884552))))

(declare-fun b!6400817 () Bool)

(declare-fun e!3884556 () Bool)

(assert (=> b!6400817 (= e!3884556 e!3884551)))

(assert (=> b!6400817 (= c!1167740 ((_ is Star!16311) lt!2373661))))

(declare-fun b!6400818 () Bool)

(declare-fun res!2631882 () Bool)

(declare-fun e!3884555 () Bool)

(assert (=> b!6400818 (=> res!2631882 e!3884555)))

(assert (=> b!6400818 (= res!2631882 (not ((_ is Concat!25156) lt!2373661)))))

(assert (=> b!6400818 (= e!3884550 e!3884555)))

(declare-fun b!6400819 () Bool)

(assert (=> b!6400819 (= e!3884552 call!548549)))

(declare-fun b!6400820 () Bool)

(assert (=> b!6400820 (= e!3884551 e!3884550)))

(assert (=> b!6400820 (= c!1167741 ((_ is Union!16311) lt!2373661))))

(declare-fun b!6400821 () Bool)

(declare-fun call!548548 () Bool)

(assert (=> b!6400821 (= e!3884554 call!548548)))

(declare-fun b!6400822 () Bool)

(declare-fun e!3884553 () Bool)

(assert (=> b!6400822 (= e!3884553 call!548548)))

(declare-fun bm!548545 () Bool)

(assert (=> bm!548545 (= call!548548 call!548549)))

(declare-fun b!6400823 () Bool)

(assert (=> b!6400823 (= e!3884555 e!3884553)))

(declare-fun res!2631886 () Bool)

(assert (=> b!6400823 (=> (not res!2631886) (not e!3884553))))

(assert (=> b!6400823 (= res!2631886 call!548550)))

(declare-fun bm!548544 () Bool)

(assert (=> bm!548544 (= call!548550 (validRegex!8047 (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661))))))

(declare-fun d!2006575 () Bool)

(declare-fun res!2631884 () Bool)

(assert (=> d!2006575 (=> res!2631884 e!3884556)))

(assert (=> d!2006575 (= res!2631884 ((_ is ElementMatch!16311) lt!2373661))))

(assert (=> d!2006575 (= (validRegex!8047 lt!2373661) e!3884556)))

(assert (= (and d!2006575 (not res!2631884)) b!6400817))

(assert (= (and b!6400817 c!1167740) b!6400816))

(assert (= (and b!6400817 (not c!1167740)) b!6400820))

(assert (= (and b!6400816 res!2631885) b!6400819))

(assert (= (and b!6400820 c!1167741) b!6400815))

(assert (= (and b!6400820 (not c!1167741)) b!6400818))

(assert (= (and b!6400815 res!2631883) b!6400821))

(assert (= (and b!6400818 (not res!2631882)) b!6400823))

(assert (= (and b!6400823 res!2631886) b!6400822))

(assert (= (or b!6400821 b!6400822) bm!548545))

(assert (= (or b!6400815 b!6400823) bm!548544))

(assert (= (or b!6400819 bm!548545) bm!548543))

(declare-fun m!7198046 () Bool)

(assert (=> bm!548543 m!7198046))

(declare-fun m!7198048 () Bool)

(assert (=> b!6400816 m!7198048))

(declare-fun m!7198050 () Bool)

(assert (=> bm!548544 m!7198050))

(assert (=> b!6399769 d!2006575))

(declare-fun b!6400830 () Bool)

(assert (=> b!6400830 true))

(declare-fun bs!1604839 () Bool)

(declare-fun b!6400832 () Bool)

(assert (= bs!1604839 (and b!6400832 b!6400830)))

(declare-fun lambda!353411 () Int)

(declare-fun lambda!353412 () Int)

(declare-fun lt!2373848 () Int)

(declare-fun lt!2373847 () Int)

(assert (=> bs!1604839 (= (= lt!2373848 lt!2373847) (= lambda!353412 lambda!353411))))

(assert (=> b!6400832 true))

(declare-fun d!2006577 () Bool)

(declare-fun e!3884562 () Bool)

(assert (=> d!2006577 e!3884562))

(declare-fun res!2631889 () Bool)

(assert (=> d!2006577 (=> (not res!2631889) (not e!3884562))))

(assert (=> d!2006577 (= res!2631889 (>= lt!2373848 0))))

(declare-fun e!3884561 () Int)

(assert (=> d!2006577 (= lt!2373848 e!3884561)))

(declare-fun c!1167750 () Bool)

(assert (=> d!2006577 (= c!1167750 ((_ is Cons!65110) zl!343))))

(assert (=> d!2006577 (= (zipperDepth!380 zl!343) lt!2373848)))

(assert (=> b!6400830 (= e!3884561 lt!2373847)))

(declare-fun contextDepth!269 (Context!11390) Int)

(assert (=> b!6400830 (= lt!2373847 (maxBigInt!0 (contextDepth!269 (h!71558 zl!343)) (zipperDepth!380 (t!378842 zl!343))))))

(declare-fun lambda!353410 () Int)

(declare-fun lt!2373846 () Unit!158575)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!253 (List!65234 Int Int Int) Unit!158575)

(assert (=> b!6400830 (= lt!2373846 (lemmaForallContextDepthBiggerThanTransitive!253 (t!378842 zl!343) lt!2373847 (zipperDepth!380 (t!378842 zl!343)) lambda!353410))))

(declare-fun forall!15497 (List!65234 Int) Bool)

(assert (=> b!6400830 (forall!15497 (t!378842 zl!343) lambda!353411)))

(declare-fun lt!2373849 () Unit!158575)

(assert (=> b!6400830 (= lt!2373849 lt!2373846)))

(declare-fun b!6400831 () Bool)

(assert (=> b!6400831 (= e!3884561 0)))

(assert (=> b!6400832 (= e!3884562 (forall!15497 zl!343 lambda!353412))))

(assert (= (and d!2006577 c!1167750) b!6400830))

(assert (= (and d!2006577 (not c!1167750)) b!6400831))

(assert (= (and d!2006577 res!2631889) b!6400832))

(declare-fun m!7198052 () Bool)

(assert (=> b!6400830 m!7198052))

(declare-fun m!7198054 () Bool)

(assert (=> b!6400830 m!7198054))

(assert (=> b!6400830 m!7198054))

(declare-fun m!7198056 () Bool)

(assert (=> b!6400830 m!7198056))

(declare-fun m!7198058 () Bool)

(assert (=> b!6400830 m!7198058))

(assert (=> b!6400830 m!7198056))

(assert (=> b!6400830 m!7198056))

(declare-fun m!7198060 () Bool)

(assert (=> b!6400830 m!7198060))

(declare-fun m!7198062 () Bool)

(assert (=> b!6400832 m!7198062))

(assert (=> b!6399789 d!2006577))

(declare-fun bs!1604840 () Bool)

(declare-fun b!6400835 () Bool)

(assert (= bs!1604840 (and b!6400835 b!6400830)))

(declare-fun lambda!353413 () Int)

(assert (=> bs!1604840 (= lambda!353413 lambda!353410)))

(declare-fun lt!2373851 () Int)

(declare-fun lambda!353414 () Int)

(assert (=> bs!1604840 (= (= lt!2373851 lt!2373847) (= lambda!353414 lambda!353411))))

(declare-fun bs!1604841 () Bool)

(assert (= bs!1604841 (and b!6400835 b!6400832)))

(assert (=> bs!1604841 (= (= lt!2373851 lt!2373848) (= lambda!353414 lambda!353412))))

(assert (=> b!6400835 true))

(declare-fun bs!1604842 () Bool)

(declare-fun b!6400837 () Bool)

(assert (= bs!1604842 (and b!6400837 b!6400830)))

(declare-fun lt!2373852 () Int)

(declare-fun lambda!353415 () Int)

(assert (=> bs!1604842 (= (= lt!2373852 lt!2373847) (= lambda!353415 lambda!353411))))

(declare-fun bs!1604843 () Bool)

(assert (= bs!1604843 (and b!6400837 b!6400832)))

(assert (=> bs!1604843 (= (= lt!2373852 lt!2373848) (= lambda!353415 lambda!353412))))

(declare-fun bs!1604844 () Bool)

(assert (= bs!1604844 (and b!6400837 b!6400835)))

(assert (=> bs!1604844 (= (= lt!2373852 lt!2373851) (= lambda!353415 lambda!353414))))

(assert (=> b!6400837 true))

(declare-fun d!2006579 () Bool)

(declare-fun e!3884564 () Bool)

(assert (=> d!2006579 e!3884564))

(declare-fun res!2631890 () Bool)

(assert (=> d!2006579 (=> (not res!2631890) (not e!3884564))))

(assert (=> d!2006579 (= res!2631890 (>= lt!2373852 0))))

(declare-fun e!3884563 () Int)

(assert (=> d!2006579 (= lt!2373852 e!3884563)))

(declare-fun c!1167751 () Bool)

(assert (=> d!2006579 (= c!1167751 ((_ is Cons!65110) lt!2373651))))

(assert (=> d!2006579 (= (zipperDepth!380 lt!2373651) lt!2373852)))

(assert (=> b!6400835 (= e!3884563 lt!2373851)))

(assert (=> b!6400835 (= lt!2373851 (maxBigInt!0 (contextDepth!269 (h!71558 lt!2373651)) (zipperDepth!380 (t!378842 lt!2373651))))))

(declare-fun lt!2373850 () Unit!158575)

(assert (=> b!6400835 (= lt!2373850 (lemmaForallContextDepthBiggerThanTransitive!253 (t!378842 lt!2373651) lt!2373851 (zipperDepth!380 (t!378842 lt!2373651)) lambda!353413))))

(assert (=> b!6400835 (forall!15497 (t!378842 lt!2373651) lambda!353414)))

(declare-fun lt!2373853 () Unit!158575)

(assert (=> b!6400835 (= lt!2373853 lt!2373850)))

(declare-fun b!6400836 () Bool)

(assert (=> b!6400836 (= e!3884563 0)))

(assert (=> b!6400837 (= e!3884564 (forall!15497 lt!2373651 lambda!353415))))

(assert (= (and d!2006579 c!1167751) b!6400835))

(assert (= (and d!2006579 (not c!1167751)) b!6400836))

(assert (= (and d!2006579 res!2631890) b!6400837))

(declare-fun m!7198064 () Bool)

(assert (=> b!6400835 m!7198064))

(declare-fun m!7198066 () Bool)

(assert (=> b!6400835 m!7198066))

(assert (=> b!6400835 m!7198066))

(declare-fun m!7198068 () Bool)

(assert (=> b!6400835 m!7198068))

(declare-fun m!7198070 () Bool)

(assert (=> b!6400835 m!7198070))

(assert (=> b!6400835 m!7198068))

(assert (=> b!6400835 m!7198068))

(declare-fun m!7198072 () Bool)

(assert (=> b!6400835 m!7198072))

(declare-fun m!7198074 () Bool)

(assert (=> b!6400837 m!7198074))

(assert (=> b!6399789 d!2006579))

(declare-fun d!2006581 () Bool)

(assert (=> d!2006581 (= (isEmpty!37253 (_1!36593 lt!2373686)) ((_ is Nil!65108) (_1!36593 lt!2373686)))))

(assert (=> b!6399791 d!2006581))

(declare-fun d!2006583 () Bool)

(declare-fun e!3884567 () Bool)

(assert (=> d!2006583 (= (matchZipper!2323 ((_ map or) lt!2373668 lt!2373666) (t!378840 s!2326)) e!3884567)))

(declare-fun res!2631893 () Bool)

(assert (=> d!2006583 (=> res!2631893 e!3884567)))

(assert (=> d!2006583 (= res!2631893 (matchZipper!2323 lt!2373668 (t!378840 s!2326)))))

(declare-fun lt!2373856 () Unit!158575)

(declare-fun choose!47600 ((InoxSet Context!11390) (InoxSet Context!11390) List!65232) Unit!158575)

(assert (=> d!2006583 (= lt!2373856 (choose!47600 lt!2373668 lt!2373666 (t!378840 s!2326)))))

(assert (=> d!2006583 (= (lemmaZipperConcatMatchesSameAsBothZippers!1142 lt!2373668 lt!2373666 (t!378840 s!2326)) lt!2373856)))

(declare-fun b!6400840 () Bool)

(assert (=> b!6400840 (= e!3884567 (matchZipper!2323 lt!2373666 (t!378840 s!2326)))))

(assert (= (and d!2006583 (not res!2631893)) b!6400840))

(assert (=> d!2006583 m!7197172))

(assert (=> d!2006583 m!7197170))

(declare-fun m!7198076 () Bool)

(assert (=> d!2006583 m!7198076))

(assert (=> b!6400840 m!7197230))

(assert (=> b!6399792 d!2006583))

(declare-fun d!2006585 () Bool)

(declare-fun c!1167752 () Bool)

(assert (=> d!2006585 (= c!1167752 (isEmpty!37253 (t!378840 s!2326)))))

(declare-fun e!3884568 () Bool)

(assert (=> d!2006585 (= (matchZipper!2323 lt!2373668 (t!378840 s!2326)) e!3884568)))

(declare-fun b!6400841 () Bool)

(assert (=> b!6400841 (= e!3884568 (nullableZipper!2076 lt!2373668))))

(declare-fun b!6400842 () Bool)

(assert (=> b!6400842 (= e!3884568 (matchZipper!2323 (derivationStepZipper!2277 lt!2373668 (head!13113 (t!378840 s!2326))) (tail!12198 (t!378840 s!2326))))))

(assert (= (and d!2006585 c!1167752) b!6400841))

(assert (= (and d!2006585 (not c!1167752)) b!6400842))

(assert (=> d!2006585 m!7197636))

(declare-fun m!7198078 () Bool)

(assert (=> b!6400841 m!7198078))

(assert (=> b!6400842 m!7197640))

(assert (=> b!6400842 m!7197640))

(declare-fun m!7198080 () Bool)

(assert (=> b!6400842 m!7198080))

(assert (=> b!6400842 m!7197644))

(assert (=> b!6400842 m!7198080))

(assert (=> b!6400842 m!7197644))

(declare-fun m!7198082 () Bool)

(assert (=> b!6400842 m!7198082))

(assert (=> b!6399792 d!2006585))

(declare-fun d!2006587 () Bool)

(declare-fun c!1167753 () Bool)

(assert (=> d!2006587 (= c!1167753 (isEmpty!37253 (t!378840 s!2326)))))

(declare-fun e!3884569 () Bool)

(assert (=> d!2006587 (= (matchZipper!2323 ((_ map or) lt!2373668 lt!2373666) (t!378840 s!2326)) e!3884569)))

(declare-fun b!6400843 () Bool)

(assert (=> b!6400843 (= e!3884569 (nullableZipper!2076 ((_ map or) lt!2373668 lt!2373666)))))

(declare-fun b!6400844 () Bool)

(assert (=> b!6400844 (= e!3884569 (matchZipper!2323 (derivationStepZipper!2277 ((_ map or) lt!2373668 lt!2373666) (head!13113 (t!378840 s!2326))) (tail!12198 (t!378840 s!2326))))))

(assert (= (and d!2006587 c!1167753) b!6400843))

(assert (= (and d!2006587 (not c!1167753)) b!6400844))

(assert (=> d!2006587 m!7197636))

(declare-fun m!7198084 () Bool)

(assert (=> b!6400843 m!7198084))

(assert (=> b!6400844 m!7197640))

(assert (=> b!6400844 m!7197640))

(declare-fun m!7198086 () Bool)

(assert (=> b!6400844 m!7198086))

(assert (=> b!6400844 m!7197644))

(assert (=> b!6400844 m!7198086))

(assert (=> b!6400844 m!7197644))

(declare-fun m!7198088 () Bool)

(assert (=> b!6400844 m!7198088))

(assert (=> b!6399792 d!2006587))

(declare-fun d!2006589 () Bool)

(declare-fun lt!2373857 () Regex!16311)

(assert (=> d!2006589 (validRegex!8047 lt!2373857)))

(assert (=> d!2006589 (= lt!2373857 (generalisedUnion!2155 (unfocusZipperList!1732 zl!343)))))

(assert (=> d!2006589 (= (unfocusZipper!2053 zl!343) lt!2373857)))

(declare-fun bs!1604845 () Bool)

(assert (= bs!1604845 d!2006589))

(declare-fun m!7198090 () Bool)

(assert (=> bs!1604845 m!7198090))

(assert (=> bs!1604845 m!7197154))

(assert (=> bs!1604845 m!7197154))

(assert (=> bs!1604845 m!7197156))

(assert (=> b!6399773 d!2006589))

(assert (=> b!6399793 d!2006495))

(declare-fun d!2006591 () Bool)

(assert (=> d!2006591 (= (nullable!6304 (h!71557 (exprs!6195 (h!71558 zl!343)))) (nullableFct!2250 (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun bs!1604846 () Bool)

(assert (= bs!1604846 d!2006591))

(declare-fun m!7198092 () Bool)

(assert (=> bs!1604846 m!7198092))

(assert (=> b!6399793 d!2006591))

(declare-fun e!3884570 () (InoxSet Context!11390))

(declare-fun b!6400845 () Bool)

(declare-fun call!548551 () (InoxSet Context!11390))

(assert (=> b!6400845 (= e!3884570 ((_ map or) call!548551 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (h!71556 s!2326))))))

(declare-fun d!2006593 () Bool)

(declare-fun c!1167754 () Bool)

(declare-fun e!3884572 () Bool)

(assert (=> d!2006593 (= c!1167754 e!3884572)))

(declare-fun res!2631894 () Bool)

(assert (=> d!2006593 (=> (not res!2631894) (not e!3884572))))

(assert (=> d!2006593 (= res!2631894 ((_ is Cons!65109) (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))))))

(assert (=> d!2006593 (= (derivationStepZipperUp!1485 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))) (h!71556 s!2326)) e!3884570)))

(declare-fun b!6400846 () Bool)

(assert (=> b!6400846 (= e!3884572 (nullable!6304 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))))))

(declare-fun b!6400847 () Bool)

(declare-fun e!3884571 () (InoxSet Context!11390))

(assert (=> b!6400847 (= e!3884571 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548546 () Bool)

(assert (=> bm!548546 (= call!548551 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))) (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (h!71556 s!2326)))))

(declare-fun b!6400848 () Bool)

(assert (=> b!6400848 (= e!3884570 e!3884571)))

(declare-fun c!1167755 () Bool)

(assert (=> b!6400848 (= c!1167755 ((_ is Cons!65109) (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))))))

(declare-fun b!6400849 () Bool)

(assert (=> b!6400849 (= e!3884571 call!548551)))

(assert (= (and d!2006593 res!2631894) b!6400846))

(assert (= (and d!2006593 c!1167754) b!6400845))

(assert (= (and d!2006593 (not c!1167754)) b!6400848))

(assert (= (and b!6400848 c!1167755) b!6400849))

(assert (= (and b!6400848 (not c!1167755)) b!6400847))

(assert (= (or b!6400845 b!6400849) bm!548546))

(declare-fun m!7198094 () Bool)

(assert (=> b!6400845 m!7198094))

(declare-fun m!7198096 () Bool)

(assert (=> b!6400846 m!7198096))

(declare-fun m!7198098 () Bool)

(assert (=> bm!548546 m!7198098))

(assert (=> b!6399793 d!2006593))

(declare-fun call!548552 () (InoxSet Context!11390))

(declare-fun e!3884573 () (InoxSet Context!11390))

(declare-fun b!6400850 () Bool)

(assert (=> b!6400850 (= e!3884573 ((_ map or) call!548552 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))) (h!71556 s!2326))))))

(declare-fun d!2006595 () Bool)

(declare-fun c!1167756 () Bool)

(declare-fun e!3884575 () Bool)

(assert (=> d!2006595 (= c!1167756 e!3884575)))

(declare-fun res!2631895 () Bool)

(assert (=> d!2006595 (=> (not res!2631895) (not e!3884575))))

(assert (=> d!2006595 (= res!2631895 ((_ is Cons!65109) (exprs!6195 (h!71558 zl!343))))))

(assert (=> d!2006595 (= (derivationStepZipperUp!1485 (h!71558 zl!343) (h!71556 s!2326)) e!3884573)))

(declare-fun b!6400851 () Bool)

(assert (=> b!6400851 (= e!3884575 (nullable!6304 (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6400852 () Bool)

(declare-fun e!3884574 () (InoxSet Context!11390))

(assert (=> b!6400852 (= e!3884574 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548547 () Bool)

(assert (=> bm!548547 (= call!548552 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (h!71558 zl!343))) (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))) (h!71556 s!2326)))))

(declare-fun b!6400853 () Bool)

(assert (=> b!6400853 (= e!3884573 e!3884574)))

(declare-fun c!1167757 () Bool)

(assert (=> b!6400853 (= c!1167757 ((_ is Cons!65109) (exprs!6195 (h!71558 zl!343))))))

(declare-fun b!6400854 () Bool)

(assert (=> b!6400854 (= e!3884574 call!548552)))

(assert (= (and d!2006595 res!2631895) b!6400851))

(assert (= (and d!2006595 c!1167756) b!6400850))

(assert (= (and d!2006595 (not c!1167756)) b!6400853))

(assert (= (and b!6400853 c!1167757) b!6400854))

(assert (= (and b!6400853 (not c!1167757)) b!6400852))

(assert (= (or b!6400850 b!6400854) bm!548547))

(declare-fun m!7198100 () Bool)

(assert (=> b!6400850 m!7198100))

(assert (=> b!6400851 m!7197108))

(declare-fun m!7198102 () Bool)

(assert (=> bm!548547 m!7198102))

(assert (=> b!6399793 d!2006595))

(declare-fun b!6400855 () Bool)

(declare-fun e!3884577 () (InoxSet Context!11390))

(declare-fun call!548555 () (InoxSet Context!11390))

(declare-fun call!548558 () (InoxSet Context!11390))

(assert (=> b!6400855 (= e!3884577 ((_ map or) call!548555 call!548558))))

(declare-fun b!6400856 () Bool)

(declare-fun c!1167760 () Bool)

(declare-fun e!3884580 () Bool)

(assert (=> b!6400856 (= c!1167760 e!3884580)))

(declare-fun res!2631896 () Bool)

(assert (=> b!6400856 (=> (not res!2631896) (not e!3884580))))

(assert (=> b!6400856 (= res!2631896 ((_ is Concat!25156) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun e!3884579 () (InoxSet Context!11390))

(assert (=> b!6400856 (= e!3884577 e!3884579)))

(declare-fun bm!548548 () Bool)

(declare-fun call!548557 () (InoxSet Context!11390))

(assert (=> bm!548548 (= call!548557 call!548555)))

(declare-fun c!1167758 () Bool)

(declare-fun call!548553 () List!65233)

(declare-fun bm!548549 () Bool)

(assert (=> bm!548549 (= call!548558 (derivationStepZipperDown!1559 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))) (ite c!1167758 lt!2373656 (Context!11391 call!548553)) (h!71556 s!2326)))))

(declare-fun b!6400857 () Bool)

(declare-fun e!3884578 () (InoxSet Context!11390))

(assert (=> b!6400857 (= e!3884578 e!3884577)))

(assert (=> b!6400857 (= c!1167758 ((_ is Union!16311) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6400858 () Bool)

(assert (=> b!6400858 (= e!3884579 ((_ map or) call!548558 call!548557))))

(declare-fun bm!548550 () Bool)

(declare-fun call!548554 () List!65233)

(assert (=> bm!548550 (= call!548554 call!548553)))

(declare-fun b!6400859 () Bool)

(declare-fun e!3884581 () (InoxSet Context!11390))

(assert (=> b!6400859 (= e!3884579 e!3884581)))

(declare-fun c!1167761 () Bool)

(assert (=> b!6400859 (= c!1167761 ((_ is Concat!25156) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6400860 () Bool)

(declare-fun call!548556 () (InoxSet Context!11390))

(assert (=> b!6400860 (= e!3884581 call!548556)))

(declare-fun bm!548551 () Bool)

(assert (=> bm!548551 (= call!548555 (derivationStepZipperDown!1559 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343))))))) (ite (or c!1167758 c!1167760) lt!2373656 (Context!11391 call!548554)) (h!71556 s!2326)))))

(declare-fun b!6400861 () Bool)

(declare-fun e!3884576 () (InoxSet Context!11390))

(assert (=> b!6400861 (= e!3884576 call!548556)))

(declare-fun bm!548552 () Bool)

(assert (=> bm!548552 (= call!548553 ($colon$colon!2172 (exprs!6195 lt!2373656) (ite (or c!1167760 c!1167761) (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (h!71557 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun d!2006597 () Bool)

(declare-fun c!1167762 () Bool)

(assert (=> d!2006597 (= c!1167762 (and ((_ is ElementMatch!16311) (h!71557 (exprs!6195 (h!71558 zl!343)))) (= (c!1167428 (h!71557 (exprs!6195 (h!71558 zl!343)))) (h!71556 s!2326))))))

(assert (=> d!2006597 (= (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (h!71558 zl!343))) lt!2373656 (h!71556 s!2326)) e!3884578)))

(declare-fun b!6400862 () Bool)

(assert (=> b!6400862 (= e!3884576 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6400863 () Bool)

(declare-fun c!1167759 () Bool)

(assert (=> b!6400863 (= c!1167759 ((_ is Star!16311) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> b!6400863 (= e!3884581 e!3884576)))

(declare-fun b!6400864 () Bool)

(assert (=> b!6400864 (= e!3884578 (store ((as const (Array Context!11390 Bool)) false) lt!2373656 true))))

(declare-fun b!6400865 () Bool)

(assert (=> b!6400865 (= e!3884580 (nullable!6304 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun bm!548553 () Bool)

(assert (=> bm!548553 (= call!548556 call!548557)))

(assert (= (and d!2006597 c!1167762) b!6400864))

(assert (= (and d!2006597 (not c!1167762)) b!6400857))

(assert (= (and b!6400857 c!1167758) b!6400855))

(assert (= (and b!6400857 (not c!1167758)) b!6400856))

(assert (= (and b!6400856 res!2631896) b!6400865))

(assert (= (and b!6400856 c!1167760) b!6400858))

(assert (= (and b!6400856 (not c!1167760)) b!6400859))

(assert (= (and b!6400859 c!1167761) b!6400860))

(assert (= (and b!6400859 (not c!1167761)) b!6400863))

(assert (= (and b!6400863 c!1167759) b!6400861))

(assert (= (and b!6400863 (not c!1167759)) b!6400862))

(assert (= (or b!6400860 b!6400861) bm!548550))

(assert (= (or b!6400860 b!6400861) bm!548553))

(assert (= (or b!6400858 bm!548550) bm!548552))

(assert (= (or b!6400858 bm!548553) bm!548548))

(assert (= (or b!6400855 b!6400858) bm!548549))

(assert (= (or b!6400855 bm!548548) bm!548551))

(declare-fun m!7198104 () Bool)

(assert (=> bm!548549 m!7198104))

(declare-fun m!7198106 () Bool)

(assert (=> bm!548551 m!7198106))

(assert (=> b!6400864 m!7197202))

(declare-fun m!7198108 () Bool)

(assert (=> b!6400865 m!7198108))

(declare-fun m!7198110 () Bool)

(assert (=> bm!548552 m!7198110))

(assert (=> b!6399793 d!2006597))

(declare-fun d!2006599 () Bool)

(assert (=> d!2006599 (= (flatMap!1816 z!1189 lambda!353313) (choose!47592 z!1189 lambda!353313))))

(declare-fun bs!1604847 () Bool)

(assert (= bs!1604847 d!2006599))

(declare-fun m!7198112 () Bool)

(assert (=> bs!1604847 m!7198112))

(assert (=> b!6399793 d!2006599))

(declare-fun d!2006601 () Bool)

(assert (=> d!2006601 (= (flatMap!1816 z!1189 lambda!353313) (dynLambda!25841 lambda!353313 (h!71558 zl!343)))))

(declare-fun lt!2373858 () Unit!158575)

(assert (=> d!2006601 (= lt!2373858 (choose!47593 z!1189 (h!71558 zl!343) lambda!353313))))

(assert (=> d!2006601 (= z!1189 (store ((as const (Array Context!11390 Bool)) false) (h!71558 zl!343) true))))

(assert (=> d!2006601 (= (lemmaFlatMapOnSingletonSet!1342 z!1189 (h!71558 zl!343) lambda!353313) lt!2373858)))

(declare-fun b_lambda!243225 () Bool)

(assert (=> (not b_lambda!243225) (not d!2006601)))

(declare-fun bs!1604848 () Bool)

(assert (= bs!1604848 d!2006601))

(assert (=> bs!1604848 m!7197106))

(declare-fun m!7198114 () Bool)

(assert (=> bs!1604848 m!7198114))

(declare-fun m!7198116 () Bool)

(assert (=> bs!1604848 m!7198116))

(declare-fun m!7198118 () Bool)

(assert (=> bs!1604848 m!7198118))

(assert (=> b!6399793 d!2006601))

(declare-fun b!6400876 () Bool)

(declare-fun e!3884584 () Bool)

(assert (=> b!6400876 (= e!3884584 tp_is_empty!41875)))

(declare-fun b!6400877 () Bool)

(declare-fun tp!1779255 () Bool)

(declare-fun tp!1779253 () Bool)

(assert (=> b!6400877 (= e!3884584 (and tp!1779255 tp!1779253))))

(declare-fun b!6400879 () Bool)

(declare-fun tp!1779254 () Bool)

(declare-fun tp!1779252 () Bool)

(assert (=> b!6400879 (= e!3884584 (and tp!1779254 tp!1779252))))

(assert (=> b!6399799 (= tp!1779182 e!3884584)))

(declare-fun b!6400878 () Bool)

(declare-fun tp!1779251 () Bool)

(assert (=> b!6400878 (= e!3884584 tp!1779251)))

(assert (= (and b!6399799 ((_ is ElementMatch!16311) (regOne!33134 r!7292))) b!6400876))

(assert (= (and b!6399799 ((_ is Concat!25156) (regOne!33134 r!7292))) b!6400877))

(assert (= (and b!6399799 ((_ is Star!16311) (regOne!33134 r!7292))) b!6400878))

(assert (= (and b!6399799 ((_ is Union!16311) (regOne!33134 r!7292))) b!6400879))

(declare-fun b!6400880 () Bool)

(declare-fun e!3884585 () Bool)

(assert (=> b!6400880 (= e!3884585 tp_is_empty!41875)))

(declare-fun b!6400881 () Bool)

(declare-fun tp!1779260 () Bool)

(declare-fun tp!1779258 () Bool)

(assert (=> b!6400881 (= e!3884585 (and tp!1779260 tp!1779258))))

(declare-fun b!6400883 () Bool)

(declare-fun tp!1779259 () Bool)

(declare-fun tp!1779257 () Bool)

(assert (=> b!6400883 (= e!3884585 (and tp!1779259 tp!1779257))))

(assert (=> b!6399799 (= tp!1779177 e!3884585)))

(declare-fun b!6400882 () Bool)

(declare-fun tp!1779256 () Bool)

(assert (=> b!6400882 (= e!3884585 tp!1779256)))

(assert (= (and b!6399799 ((_ is ElementMatch!16311) (regTwo!33134 r!7292))) b!6400880))

(assert (= (and b!6399799 ((_ is Concat!25156) (regTwo!33134 r!7292))) b!6400881))

(assert (= (and b!6399799 ((_ is Star!16311) (regTwo!33134 r!7292))) b!6400882))

(assert (= (and b!6399799 ((_ is Union!16311) (regTwo!33134 r!7292))) b!6400883))

(declare-fun b!6400884 () Bool)

(declare-fun e!3884586 () Bool)

(assert (=> b!6400884 (= e!3884586 tp_is_empty!41875)))

(declare-fun b!6400885 () Bool)

(declare-fun tp!1779265 () Bool)

(declare-fun tp!1779263 () Bool)

(assert (=> b!6400885 (= e!3884586 (and tp!1779265 tp!1779263))))

(declare-fun b!6400887 () Bool)

(declare-fun tp!1779264 () Bool)

(declare-fun tp!1779262 () Bool)

(assert (=> b!6400887 (= e!3884586 (and tp!1779264 tp!1779262))))

(assert (=> b!6399804 (= tp!1779178 e!3884586)))

(declare-fun b!6400886 () Bool)

(declare-fun tp!1779261 () Bool)

(assert (=> b!6400886 (= e!3884586 tp!1779261)))

(assert (= (and b!6399804 ((_ is ElementMatch!16311) (reg!16640 r!7292))) b!6400884))

(assert (= (and b!6399804 ((_ is Concat!25156) (reg!16640 r!7292))) b!6400885))

(assert (= (and b!6399804 ((_ is Star!16311) (reg!16640 r!7292))) b!6400886))

(assert (= (and b!6399804 ((_ is Union!16311) (reg!16640 r!7292))) b!6400887))

(declare-fun condSetEmpty!43692 () Bool)

(assert (=> setNonEmpty!43686 (= condSetEmpty!43692 (= setRest!43686 ((as const (Array Context!11390 Bool)) false)))))

(declare-fun setRes!43692 () Bool)

(assert (=> setNonEmpty!43686 (= tp!1779181 setRes!43692)))

(declare-fun setIsEmpty!43692 () Bool)

(assert (=> setIsEmpty!43692 setRes!43692))

(declare-fun tp!1779270 () Bool)

(declare-fun setNonEmpty!43692 () Bool)

(declare-fun setElem!43692 () Context!11390)

(declare-fun e!3884589 () Bool)

(assert (=> setNonEmpty!43692 (= setRes!43692 (and tp!1779270 (inv!84024 setElem!43692) e!3884589))))

(declare-fun setRest!43692 () (InoxSet Context!11390))

(assert (=> setNonEmpty!43692 (= setRest!43686 ((_ map or) (store ((as const (Array Context!11390 Bool)) false) setElem!43692 true) setRest!43692))))

(declare-fun b!6400892 () Bool)

(declare-fun tp!1779271 () Bool)

(assert (=> b!6400892 (= e!3884589 tp!1779271)))

(assert (= (and setNonEmpty!43686 condSetEmpty!43692) setIsEmpty!43692))

(assert (= (and setNonEmpty!43686 (not condSetEmpty!43692)) setNonEmpty!43692))

(assert (= setNonEmpty!43692 b!6400892))

(declare-fun m!7198120 () Bool)

(assert (=> setNonEmpty!43692 m!7198120))

(declare-fun b!6400897 () Bool)

(declare-fun e!3884592 () Bool)

(declare-fun tp!1779276 () Bool)

(declare-fun tp!1779277 () Bool)

(assert (=> b!6400897 (= e!3884592 (and tp!1779276 tp!1779277))))

(assert (=> b!6399800 (= tp!1779176 e!3884592)))

(assert (= (and b!6399800 ((_ is Cons!65109) (exprs!6195 setElem!43686))) b!6400897))

(declare-fun b!6400898 () Bool)

(declare-fun e!3884593 () Bool)

(assert (=> b!6400898 (= e!3884593 tp_is_empty!41875)))

(declare-fun b!6400899 () Bool)

(declare-fun tp!1779282 () Bool)

(declare-fun tp!1779280 () Bool)

(assert (=> b!6400899 (= e!3884593 (and tp!1779282 tp!1779280))))

(declare-fun b!6400901 () Bool)

(declare-fun tp!1779281 () Bool)

(declare-fun tp!1779279 () Bool)

(assert (=> b!6400901 (= e!3884593 (and tp!1779281 tp!1779279))))

(assert (=> b!6399782 (= tp!1779175 e!3884593)))

(declare-fun b!6400900 () Bool)

(declare-fun tp!1779278 () Bool)

(assert (=> b!6400900 (= e!3884593 tp!1779278)))

(assert (= (and b!6399782 ((_ is ElementMatch!16311) (regOne!33135 r!7292))) b!6400898))

(assert (= (and b!6399782 ((_ is Concat!25156) (regOne!33135 r!7292))) b!6400899))

(assert (= (and b!6399782 ((_ is Star!16311) (regOne!33135 r!7292))) b!6400900))

(assert (= (and b!6399782 ((_ is Union!16311) (regOne!33135 r!7292))) b!6400901))

(declare-fun b!6400902 () Bool)

(declare-fun e!3884594 () Bool)

(assert (=> b!6400902 (= e!3884594 tp_is_empty!41875)))

(declare-fun b!6400903 () Bool)

(declare-fun tp!1779287 () Bool)

(declare-fun tp!1779285 () Bool)

(assert (=> b!6400903 (= e!3884594 (and tp!1779287 tp!1779285))))

(declare-fun b!6400905 () Bool)

(declare-fun tp!1779286 () Bool)

(declare-fun tp!1779284 () Bool)

(assert (=> b!6400905 (= e!3884594 (and tp!1779286 tp!1779284))))

(assert (=> b!6399782 (= tp!1779180 e!3884594)))

(declare-fun b!6400904 () Bool)

(declare-fun tp!1779283 () Bool)

(assert (=> b!6400904 (= e!3884594 tp!1779283)))

(assert (= (and b!6399782 ((_ is ElementMatch!16311) (regTwo!33135 r!7292))) b!6400902))

(assert (= (and b!6399782 ((_ is Concat!25156) (regTwo!33135 r!7292))) b!6400903))

(assert (= (and b!6399782 ((_ is Star!16311) (regTwo!33135 r!7292))) b!6400904))

(assert (= (and b!6399782 ((_ is Union!16311) (regTwo!33135 r!7292))) b!6400905))

(declare-fun b!6400913 () Bool)

(declare-fun e!3884600 () Bool)

(declare-fun tp!1779292 () Bool)

(assert (=> b!6400913 (= e!3884600 tp!1779292)))

(declare-fun tp!1779293 () Bool)

(declare-fun b!6400912 () Bool)

(declare-fun e!3884599 () Bool)

(assert (=> b!6400912 (= e!3884599 (and (inv!84024 (h!71558 (t!378842 zl!343))) e!3884600 tp!1779293))))

(assert (=> b!6399802 (= tp!1779173 e!3884599)))

(assert (= b!6400912 b!6400913))

(assert (= (and b!6399802 ((_ is Cons!65110) (t!378842 zl!343))) b!6400912))

(declare-fun m!7198122 () Bool)

(assert (=> b!6400912 m!7198122))

(declare-fun b!6400914 () Bool)

(declare-fun e!3884601 () Bool)

(declare-fun tp!1779294 () Bool)

(declare-fun tp!1779295 () Bool)

(assert (=> b!6400914 (= e!3884601 (and tp!1779294 tp!1779295))))

(assert (=> b!6399772 (= tp!1779179 e!3884601)))

(assert (= (and b!6399772 ((_ is Cons!65109) (exprs!6195 (h!71558 zl!343)))) b!6400914))

(declare-fun b!6400919 () Bool)

(declare-fun e!3884604 () Bool)

(declare-fun tp!1779298 () Bool)

(assert (=> b!6400919 (= e!3884604 (and tp_is_empty!41875 tp!1779298))))

(assert (=> b!6399763 (= tp!1779174 e!3884604)))

(assert (= (and b!6399763 ((_ is Cons!65108) (t!378840 s!2326))) b!6400919))

(declare-fun b_lambda!243227 () Bool)

(assert (= b_lambda!243213 (or b!6399793 b_lambda!243227)))

(declare-fun bs!1604849 () Bool)

(declare-fun d!2006603 () Bool)

(assert (= bs!1604849 (and d!2006603 b!6399793)))

(assert (=> bs!1604849 (= (dynLambda!25841 lambda!353313 lt!2373669) (derivationStepZipperUp!1485 lt!2373669 (h!71556 s!2326)))))

(assert (=> bs!1604849 m!7197220))

(assert (=> d!2006527 d!2006603))

(declare-fun b_lambda!243229 () Bool)

(assert (= b_lambda!243225 (or b!6399793 b_lambda!243229)))

(declare-fun bs!1604850 () Bool)

(declare-fun d!2006605 () Bool)

(assert (= bs!1604850 (and d!2006605 b!6399793)))

(assert (=> bs!1604850 (= (dynLambda!25841 lambda!353313 (h!71558 zl!343)) (derivationStepZipperUp!1485 (h!71558 zl!343) (h!71556 s!2326)))))

(assert (=> bs!1604850 m!7197100))

(assert (=> d!2006601 d!2006605))

(declare-fun b_lambda!243231 () Bool)

(assert (= b_lambda!243199 (or b!6399793 b_lambda!243231)))

(declare-fun bs!1604851 () Bool)

(declare-fun d!2006607 () Bool)

(assert (= bs!1604851 (and d!2006607 b!6399793)))

(assert (=> bs!1604851 (= (dynLambda!25841 lambda!353313 lt!2373652) (derivationStepZipperUp!1485 lt!2373652 (h!71556 s!2326)))))

(assert (=> bs!1604851 m!7197134))

(assert (=> d!2006387 d!2006607))

(declare-fun b_lambda!243233 () Bool)

(assert (= b_lambda!243201 (or b!6399793 b_lambda!243233)))

(declare-fun bs!1604852 () Bool)

(declare-fun d!2006609 () Bool)

(assert (= bs!1604852 (and d!2006609 b!6399793)))

(assert (=> bs!1604852 (= (dynLambda!25841 lambda!353313 lt!2373684) (derivationStepZipperUp!1485 lt!2373684 (h!71556 s!2326)))))

(assert (=> bs!1604852 m!7197122))

(assert (=> d!2006413 d!2006609))

(declare-fun b_lambda!243235 () Bool)

(assert (= b_lambda!243211 (or b!6399793 b_lambda!243235)))

(declare-fun bs!1604853 () Bool)

(declare-fun d!2006611 () Bool)

(assert (= bs!1604853 (and d!2006611 b!6399793)))

(assert (=> bs!1604853 (= (dynLambda!25841 lambda!353313 lt!2373656) (derivationStepZipperUp!1485 lt!2373656 (h!71556 s!2326)))))

(assert (=> bs!1604853 m!7197104))

(assert (=> d!2006497 d!2006611))

(check-sat (not d!2006583) (not d!2006521) (not b!6400843) (not b!6400417) (not b!6400113) (not b!6400746) (not bm!548510) (not d!2006559) (not bm!548521) (not b_lambda!243233) (not b!6400543) (not b!6400054) (not b!6400885) (not bm!548508) (not b!6400912) (not bs!1604853) (not d!2006555) (not d!2006561) (not bm!548513) (not b!6400865) (not d!2006385) (not b!6400551) (not b!6400901) (not b!6400767) (not b!6400281) (not b!6400212) (not b!6400215) (not d!2006545) (not bm!548524) (not bm!548538) (not d!2006569) (not d!2006361) (not d!2006529) (not b!6400329) (not b!6400781) (not b!6400850) (not d!2006347) (not b!6400112) (not b!6400277) (not b!6400330) (not d!2006589) (not bm!548509) (not b!6400642) (not b!6400913) (not bs!1604851) (not b!6400556) (not bm!548520) (not d!2006431) (not b!6400835) (not b!6400160) (not bm!548506) (not d!2006345) (not b!6400305) (not b!6400840) (not d!2006509) (not b!6400887) (not d!2006527) (not d!2006499) (not b!6400557) (not d!2006567) (not b_lambda!243227) (not d!2006587) (not d!2006369) (not b!6400881) (not b!6400723) (not bm!548523) (not b!6400883) (not b!6400600) (not d!2006585) (not bs!1604850) (not b!6400892) (not bm!548514) (not bs!1604849) (not b!6400427) (not b_lambda!243229) (not b!6400846) (not b!6400774) (not d!2006591) (not b!6400156) (not b!6400771) (not b!6400276) (not b!6400877) (not d!2006491) (not d!2006413) (not bm!548541) (not b!6400280) (not bm!548427) (not b!6400743) (not b!6400720) (not b!6400719) (not bm!548549) (not d!2006531) (not b!6400111) (not d!2006513) (not bm!548477) (not b!6400420) tp_is_empty!41875 (not bm!548547) (not b!6400218) (not b!6400213) (not b!6400125) (not b!6400278) (not b!6400511) (not b!6400832) (not b!6400882) (not b!6400851) (not b!6400554) (not b!6400919) (not b!6400914) (not b!6400562) (not b!6400739) (not b!6400727) (not b!6400279) (not bm!548522) (not b!6400114) (not bm!548544) (not d!2006429) (not b!6400601) (not d!2006547) (not bm!548515) (not d!2006493) (not d!2006563) (not b!6400753) (not b!6400741) (not b!6400552) (not b!6400830) (not b!6400841) (not b!6400116) (not b!6400161) (not b!6400900) (not bs!1604852) (not bm!548546) (not bm!548517) (not d!2006383) (not b!6400738) (not b!6400744) (not b_lambda!243235) (not bm!548428) (not d!2006433) (not b!6400845) (not b!6400155) (not d!2006507) (not d!2006363) (not b!6400558) (not d!2006417) (not b!6400117) (not d!2006515) (not b!6400814) (not b!6400722) (not bm!548490) (not b!6400897) (not d!2006387) (not b!6400721) (not d!2006501) (not b!6400760) (not b!6400220) (not bm!548552) (not b!6400510) (not b!6400899) (not bm!548540) (not d!2006349) (not b!6400561) (not bm!548470) (not b!6400886) (not b!6400816) (not setNonEmpty!43692) (not bm!548489) (not b!6400275) (not bm!548481) (not b!6400725) (not d!2006483) (not d!2006367) (not d!2006571) (not d!2006553) (not d!2006411) (not b!6400759) (not b!6400837) (not bm!548507) (not b!6400878) (not bm!548551) (not bm!548543) (not b!6400055) (not bm!548482) (not b!6400745) (not b!6400418) (not b!6400757) (not b_lambda!243231) (not d!2006523) (not b!6400844) (not d!2006599) (not b!6400905) (not b!6400419) (not b!6400773) (not d!2006505) (not b!6400904) (not d!2006601) (not d!2006379) (not b!6400542) (not b!6400772) (not b!6400415) (not b!6400842) (not b!6400216) (not b!6400758) (not b!6400214) (not bm!548476) (not b!6400903) (not b!6400769) (not b!6400650) (not b!6400553) (not b!6400559) (not d!2006497) (not b!6400755) (not d!2006511) (not bm!548516) (not d!2006421) (not b!6400879))
(check-sat)
(get-model)

(declare-fun d!2006629 () Bool)

(assert (=> d!2006629 (= (isEmpty!37255 lt!2373675) (not ((_ is Some!16201) lt!2373675)))))

(assert (=> d!2006347 d!2006629))

(declare-fun b!6400957 () Bool)

(declare-fun e!3884628 () Bool)

(declare-fun e!3884629 () Bool)

(assert (=> b!6400957 (= e!3884628 e!3884629)))

(declare-fun res!2631905 () Bool)

(assert (=> b!6400957 (=> res!2631905 e!3884629)))

(declare-fun call!548577 () Bool)

(assert (=> b!6400957 (= res!2631905 call!548577)))

(declare-fun b!6400958 () Bool)

(declare-fun e!3884631 () Bool)

(assert (=> b!6400958 (= e!3884631 (matchR!8494 (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 s!2326)) (tail!12198 s!2326)))))

(declare-fun b!6400959 () Bool)

(declare-fun e!3884633 () Bool)

(assert (=> b!6400959 (= e!3884633 e!3884628)))

(declare-fun res!2631906 () Bool)

(assert (=> b!6400959 (=> (not res!2631906) (not e!3884628))))

(declare-fun lt!2373859 () Bool)

(assert (=> b!6400959 (= res!2631906 (not lt!2373859))))

(declare-fun b!6400960 () Bool)

(declare-fun e!3884632 () Bool)

(assert (=> b!6400960 (= e!3884632 (= (head!13113 s!2326) (c!1167428 (regTwo!33134 r!7292))))))

(declare-fun b!6400961 () Bool)

(declare-fun res!2631908 () Bool)

(assert (=> b!6400961 (=> res!2631908 e!3884629)))

(assert (=> b!6400961 (= res!2631908 (not (isEmpty!37253 (tail!12198 s!2326))))))

(declare-fun b!6400962 () Bool)

(assert (=> b!6400962 (= e!3884631 (nullable!6304 (regTwo!33134 r!7292)))))

(declare-fun b!6400963 () Bool)

(assert (=> b!6400963 (= e!3884629 (not (= (head!13113 s!2326) (c!1167428 (regTwo!33134 r!7292)))))))

(declare-fun b!6400965 () Bool)

(declare-fun res!2631904 () Bool)

(assert (=> b!6400965 (=> res!2631904 e!3884633)))

(assert (=> b!6400965 (= res!2631904 (not ((_ is ElementMatch!16311) (regTwo!33134 r!7292))))))

(declare-fun e!3884627 () Bool)

(assert (=> b!6400965 (= e!3884627 e!3884633)))

(declare-fun bm!548572 () Bool)

(assert (=> bm!548572 (= call!548577 (isEmpty!37253 s!2326))))

(declare-fun b!6400966 () Bool)

(declare-fun e!3884630 () Bool)

(assert (=> b!6400966 (= e!3884630 e!3884627)))

(declare-fun c!1167780 () Bool)

(assert (=> b!6400966 (= c!1167780 ((_ is EmptyLang!16311) (regTwo!33134 r!7292)))))

(declare-fun b!6400967 () Bool)

(declare-fun res!2631907 () Bool)

(assert (=> b!6400967 (=> (not res!2631907) (not e!3884632))))

(assert (=> b!6400967 (= res!2631907 (not call!548577))))

(declare-fun b!6400968 () Bool)

(declare-fun res!2631911 () Bool)

(assert (=> b!6400968 (=> res!2631911 e!3884633)))

(assert (=> b!6400968 (= res!2631911 e!3884632)))

(declare-fun res!2631909 () Bool)

(assert (=> b!6400968 (=> (not res!2631909) (not e!3884632))))

(assert (=> b!6400968 (= res!2631909 lt!2373859)))

(declare-fun d!2006631 () Bool)

(assert (=> d!2006631 e!3884630))

(declare-fun c!1167781 () Bool)

(assert (=> d!2006631 (= c!1167781 ((_ is EmptyExpr!16311) (regTwo!33134 r!7292)))))

(assert (=> d!2006631 (= lt!2373859 e!3884631)))

(declare-fun c!1167782 () Bool)

(assert (=> d!2006631 (= c!1167782 (isEmpty!37253 s!2326))))

(assert (=> d!2006631 (validRegex!8047 (regTwo!33134 r!7292))))

(assert (=> d!2006631 (= (matchR!8494 (regTwo!33134 r!7292) s!2326) lt!2373859)))

(declare-fun b!6400964 () Bool)

(assert (=> b!6400964 (= e!3884630 (= lt!2373859 call!548577))))

(declare-fun b!6400969 () Bool)

(assert (=> b!6400969 (= e!3884627 (not lt!2373859))))

(declare-fun b!6400970 () Bool)

(declare-fun res!2631910 () Bool)

(assert (=> b!6400970 (=> (not res!2631910) (not e!3884632))))

(assert (=> b!6400970 (= res!2631910 (isEmpty!37253 (tail!12198 s!2326)))))

(assert (= (and d!2006631 c!1167782) b!6400962))

(assert (= (and d!2006631 (not c!1167782)) b!6400958))

(assert (= (and d!2006631 c!1167781) b!6400964))

(assert (= (and d!2006631 (not c!1167781)) b!6400966))

(assert (= (and b!6400966 c!1167780) b!6400969))

(assert (= (and b!6400966 (not c!1167780)) b!6400965))

(assert (= (and b!6400965 (not res!2631904)) b!6400968))

(assert (= (and b!6400968 res!2631909) b!6400967))

(assert (= (and b!6400967 res!2631907) b!6400970))

(assert (= (and b!6400970 res!2631910) b!6400960))

(assert (= (and b!6400968 (not res!2631911)) b!6400959))

(assert (= (and b!6400959 res!2631906) b!6400957))

(assert (= (and b!6400957 (not res!2631905)) b!6400961))

(assert (= (and b!6400961 (not res!2631908)) b!6400963))

(assert (= (or b!6400964 b!6400957 b!6400967) bm!548572))

(assert (=> bm!548572 m!7197724))

(assert (=> b!6400963 m!7197726))

(assert (=> b!6400970 m!7197728))

(assert (=> b!6400970 m!7197728))

(assert (=> b!6400970 m!7197730))

(assert (=> b!6400960 m!7197726))

(assert (=> b!6400961 m!7197728))

(assert (=> b!6400961 m!7197728))

(assert (=> b!6400961 m!7197730))

(assert (=> d!2006631 m!7197724))

(assert (=> d!2006631 m!7198024))

(assert (=> b!6400958 m!7197726))

(assert (=> b!6400958 m!7197726))

(declare-fun m!7198156 () Bool)

(assert (=> b!6400958 m!7198156))

(assert (=> b!6400958 m!7197728))

(assert (=> b!6400958 m!7198156))

(assert (=> b!6400958 m!7197728))

(declare-fun m!7198158 () Bool)

(assert (=> b!6400958 m!7198158))

(assert (=> b!6400962 m!7198030))

(assert (=> b!6400114 d!2006631))

(declare-fun d!2006633 () Bool)

(assert (=> d!2006633 (= (head!13113 s!2326) (h!71556 s!2326))))

(assert (=> b!6400743 d!2006633))

(declare-fun d!2006635 () Bool)

(assert (=> d!2006635 (= (maxBigInt!0 (ite c!1167694 call!548516 call!548514) (ite c!1167694 call!548514 call!548516)) (ite (>= (ite c!1167694 call!548516 call!548514) (ite c!1167694 call!548514 call!548516)) (ite c!1167694 call!548516 call!548514) (ite c!1167694 call!548514 call!548516)))))

(assert (=> bm!548507 d!2006635))

(declare-fun b!6400974 () Bool)

(declare-fun e!3884637 () Bool)

(declare-fun e!3884638 () Bool)

(assert (=> b!6400974 (= e!3884637 e!3884638)))

(declare-fun res!2631915 () Bool)

(assert (=> b!6400974 (=> res!2631915 e!3884638)))

(declare-fun call!548578 () Bool)

(assert (=> b!6400974 (= res!2631915 call!548578)))

(declare-fun b!6400975 () Bool)

(declare-fun e!3884640 () Bool)

(assert (=> b!6400975 (= e!3884640 (matchR!8494 (derivativeStep!5015 (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686))) (head!13113 (tail!12198 (_1!36593 lt!2373686)))) (tail!12198 (tail!12198 (_1!36593 lt!2373686)))))))

(declare-fun b!6400976 () Bool)

(declare-fun e!3884642 () Bool)

(assert (=> b!6400976 (= e!3884642 e!3884637)))

(declare-fun res!2631916 () Bool)

(assert (=> b!6400976 (=> (not res!2631916) (not e!3884637))))

(declare-fun lt!2373860 () Bool)

(assert (=> b!6400976 (= res!2631916 (not lt!2373860))))

(declare-fun b!6400977 () Bool)

(declare-fun e!3884641 () Bool)

(assert (=> b!6400977 (= e!3884641 (= (head!13113 (tail!12198 (_1!36593 lt!2373686))) (c!1167428 (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686))))))))

(declare-fun b!6400978 () Bool)

(declare-fun res!2631918 () Bool)

(assert (=> b!6400978 (=> res!2631918 e!3884638)))

(assert (=> b!6400978 (= res!2631918 (not (isEmpty!37253 (tail!12198 (tail!12198 (_1!36593 lt!2373686))))))))

(declare-fun b!6400979 () Bool)

(assert (=> b!6400979 (= e!3884640 (nullable!6304 (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686)))))))

(declare-fun b!6400980 () Bool)

(assert (=> b!6400980 (= e!3884638 (not (= (head!13113 (tail!12198 (_1!36593 lt!2373686))) (c!1167428 (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686)))))))))

(declare-fun b!6400982 () Bool)

(declare-fun res!2631914 () Bool)

(assert (=> b!6400982 (=> res!2631914 e!3884642)))

(assert (=> b!6400982 (= res!2631914 (not ((_ is ElementMatch!16311) (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686))))))))

(declare-fun e!3884636 () Bool)

(assert (=> b!6400982 (= e!3884636 e!3884642)))

(declare-fun bm!548573 () Bool)

(assert (=> bm!548573 (= call!548578 (isEmpty!37253 (tail!12198 (_1!36593 lt!2373686))))))

(declare-fun b!6400983 () Bool)

(declare-fun e!3884639 () Bool)

(assert (=> b!6400983 (= e!3884639 e!3884636)))

(declare-fun c!1167783 () Bool)

(assert (=> b!6400983 (= c!1167783 ((_ is EmptyLang!16311) (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686)))))))

(declare-fun b!6400984 () Bool)

(declare-fun res!2631917 () Bool)

(assert (=> b!6400984 (=> (not res!2631917) (not e!3884641))))

(assert (=> b!6400984 (= res!2631917 (not call!548578))))

(declare-fun b!6400985 () Bool)

(declare-fun res!2631921 () Bool)

(assert (=> b!6400985 (=> res!2631921 e!3884642)))

(assert (=> b!6400985 (= res!2631921 e!3884641)))

(declare-fun res!2631919 () Bool)

(assert (=> b!6400985 (=> (not res!2631919) (not e!3884641))))

(assert (=> b!6400985 (= res!2631919 lt!2373860)))

(declare-fun d!2006637 () Bool)

(assert (=> d!2006637 e!3884639))

(declare-fun c!1167784 () Bool)

(assert (=> d!2006637 (= c!1167784 ((_ is EmptyExpr!16311) (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686)))))))

(assert (=> d!2006637 (= lt!2373860 e!3884640)))

(declare-fun c!1167785 () Bool)

(assert (=> d!2006637 (= c!1167785 (isEmpty!37253 (tail!12198 (_1!36593 lt!2373686))))))

(assert (=> d!2006637 (validRegex!8047 (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686))))))

(assert (=> d!2006637 (= (matchR!8494 (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686))) (tail!12198 (_1!36593 lt!2373686))) lt!2373860)))

(declare-fun b!6400981 () Bool)

(assert (=> b!6400981 (= e!3884639 (= lt!2373860 call!548578))))

(declare-fun b!6400986 () Bool)

(assert (=> b!6400986 (= e!3884636 (not lt!2373860))))

(declare-fun b!6400987 () Bool)

(declare-fun res!2631920 () Bool)

(assert (=> b!6400987 (=> (not res!2631920) (not e!3884641))))

(assert (=> b!6400987 (= res!2631920 (isEmpty!37253 (tail!12198 (tail!12198 (_1!36593 lt!2373686)))))))

(assert (= (and d!2006637 c!1167785) b!6400979))

(assert (= (and d!2006637 (not c!1167785)) b!6400975))

(assert (= (and d!2006637 c!1167784) b!6400981))

(assert (= (and d!2006637 (not c!1167784)) b!6400983))

(assert (= (and b!6400983 c!1167783) b!6400986))

(assert (= (and b!6400983 (not c!1167783)) b!6400982))

(assert (= (and b!6400982 (not res!2631914)) b!6400985))

(assert (= (and b!6400985 res!2631919) b!6400984))

(assert (= (and b!6400984 res!2631917) b!6400987))

(assert (= (and b!6400987 res!2631920) b!6400977))

(assert (= (and b!6400985 (not res!2631921)) b!6400976))

(assert (= (and b!6400976 res!2631916) b!6400974))

(assert (= (and b!6400974 (not res!2631915)) b!6400978))

(assert (= (and b!6400978 (not res!2631918)) b!6400980))

(assert (= (or b!6400981 b!6400974 b!6400984) bm!548573))

(assert (=> bm!548573 m!7198006))

(assert (=> bm!548573 m!7198008))

(assert (=> b!6400980 m!7198006))

(declare-fun m!7198164 () Bool)

(assert (=> b!6400980 m!7198164))

(assert (=> b!6400987 m!7198006))

(declare-fun m!7198166 () Bool)

(assert (=> b!6400987 m!7198166))

(assert (=> b!6400987 m!7198166))

(declare-fun m!7198168 () Bool)

(assert (=> b!6400987 m!7198168))

(assert (=> b!6400977 m!7198006))

(assert (=> b!6400977 m!7198164))

(assert (=> b!6400978 m!7198006))

(assert (=> b!6400978 m!7198166))

(assert (=> b!6400978 m!7198166))

(assert (=> b!6400978 m!7198168))

(assert (=> d!2006637 m!7198006))

(assert (=> d!2006637 m!7198008))

(assert (=> d!2006637 m!7198010))

(declare-fun m!7198170 () Bool)

(assert (=> d!2006637 m!7198170))

(assert (=> b!6400975 m!7198006))

(assert (=> b!6400975 m!7198164))

(assert (=> b!6400975 m!7198010))

(assert (=> b!6400975 m!7198164))

(declare-fun m!7198172 () Bool)

(assert (=> b!6400975 m!7198172))

(assert (=> b!6400975 m!7198006))

(assert (=> b!6400975 m!7198166))

(assert (=> b!6400975 m!7198172))

(assert (=> b!6400975 m!7198166))

(declare-fun m!7198174 () Bool)

(assert (=> b!6400975 m!7198174))

(assert (=> b!6400979 m!7198010))

(declare-fun m!7198176 () Bool)

(assert (=> b!6400979 m!7198176))

(assert (=> b!6400755 d!2006637))

(declare-fun b!6401031 () Bool)

(declare-fun e!3884676 () Regex!16311)

(declare-fun call!548592 () Regex!16311)

(assert (=> b!6401031 (= e!3884676 (Union!16311 (Concat!25156 call!548592 (regTwo!33134 lt!2373664)) EmptyLang!16311))))

(declare-fun b!6401032 () Bool)

(declare-fun e!3884678 () Regex!16311)

(assert (=> b!6401032 (= e!3884678 (ite (= (head!13113 (_1!36593 lt!2373686)) (c!1167428 lt!2373664)) EmptyExpr!16311 EmptyLang!16311))))

(declare-fun bm!548586 () Bool)

(declare-fun call!548591 () Regex!16311)

(assert (=> bm!548586 (= call!548592 call!548591)))

(declare-fun c!1167799 () Bool)

(declare-fun c!1167798 () Bool)

(declare-fun bm!548587 () Bool)

(declare-fun c!1167801 () Bool)

(declare-fun call!548594 () Regex!16311)

(assert (=> bm!548587 (= call!548594 (derivativeStep!5015 (ite c!1167799 (regTwo!33135 lt!2373664) (ite c!1167801 (reg!16640 lt!2373664) (ite c!1167798 (regTwo!33134 lt!2373664) (regOne!33134 lt!2373664)))) (head!13113 (_1!36593 lt!2373686))))))

(declare-fun bm!548588 () Bool)

(assert (=> bm!548588 (= call!548591 call!548594)))

(declare-fun b!6401033 () Bool)

(assert (=> b!6401033 (= c!1167798 (nullable!6304 (regOne!33134 lt!2373664)))))

(declare-fun e!3884677 () Regex!16311)

(assert (=> b!6401033 (= e!3884677 e!3884676)))

(declare-fun d!2006641 () Bool)

(declare-fun lt!2373863 () Regex!16311)

(assert (=> d!2006641 (validRegex!8047 lt!2373863)))

(declare-fun e!3884674 () Regex!16311)

(assert (=> d!2006641 (= lt!2373863 e!3884674)))

(declare-fun c!1167800 () Bool)

(assert (=> d!2006641 (= c!1167800 (or ((_ is EmptyExpr!16311) lt!2373664) ((_ is EmptyLang!16311) lt!2373664)))))

(assert (=> d!2006641 (validRegex!8047 lt!2373664)))

(assert (=> d!2006641 (= (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 lt!2373686))) lt!2373863)))

(declare-fun b!6401034 () Bool)

(assert (=> b!6401034 (= e!3884674 e!3884678)))

(declare-fun c!1167802 () Bool)

(assert (=> b!6401034 (= c!1167802 ((_ is ElementMatch!16311) lt!2373664))))

(declare-fun b!6401035 () Bool)

(declare-fun e!3884675 () Regex!16311)

(declare-fun call!548593 () Regex!16311)

(assert (=> b!6401035 (= e!3884675 (Union!16311 call!548593 call!548594))))

(declare-fun bm!548589 () Bool)

(assert (=> bm!548589 (= call!548593 (derivativeStep!5015 (ite c!1167799 (regOne!33135 lt!2373664) (regOne!33134 lt!2373664)) (head!13113 (_1!36593 lt!2373686))))))

(declare-fun b!6401036 () Bool)

(assert (=> b!6401036 (= e!3884675 e!3884677)))

(assert (=> b!6401036 (= c!1167801 ((_ is Star!16311) lt!2373664))))

(declare-fun b!6401037 () Bool)

(assert (=> b!6401037 (= e!3884676 (Union!16311 (Concat!25156 call!548593 (regTwo!33134 lt!2373664)) call!548592))))

(declare-fun b!6401038 () Bool)

(assert (=> b!6401038 (= e!3884674 EmptyLang!16311)))

(declare-fun b!6401039 () Bool)

(assert (=> b!6401039 (= e!3884677 (Concat!25156 call!548591 lt!2373664))))

(declare-fun b!6401040 () Bool)

(assert (=> b!6401040 (= c!1167799 ((_ is Union!16311) lt!2373664))))

(assert (=> b!6401040 (= e!3884678 e!3884675)))

(assert (= (and d!2006641 c!1167800) b!6401038))

(assert (= (and d!2006641 (not c!1167800)) b!6401034))

(assert (= (and b!6401034 c!1167802) b!6401032))

(assert (= (and b!6401034 (not c!1167802)) b!6401040))

(assert (= (and b!6401040 c!1167799) b!6401035))

(assert (= (and b!6401040 (not c!1167799)) b!6401036))

(assert (= (and b!6401036 c!1167801) b!6401039))

(assert (= (and b!6401036 (not c!1167801)) b!6401033))

(assert (= (and b!6401033 c!1167798) b!6401037))

(assert (= (and b!6401033 (not c!1167798)) b!6401031))

(assert (= (or b!6401037 b!6401031) bm!548586))

(assert (= (or b!6401039 bm!548586) bm!548588))

(assert (= (or b!6401035 bm!548588) bm!548587))

(assert (= (or b!6401035 b!6401037) bm!548589))

(assert (=> bm!548587 m!7198004))

(declare-fun m!7198188 () Bool)

(assert (=> bm!548587 m!7198188))

(declare-fun m!7198190 () Bool)

(assert (=> b!6401033 m!7198190))

(declare-fun m!7198192 () Bool)

(assert (=> d!2006641 m!7198192))

(assert (=> d!2006641 m!7197394))

(assert (=> bm!548589 m!7198004))

(declare-fun m!7198194 () Bool)

(assert (=> bm!548589 m!7198194))

(assert (=> b!6400755 d!2006641))

(declare-fun d!2006649 () Bool)

(assert (=> d!2006649 (= (head!13113 (_1!36593 lt!2373686)) (h!71556 (_1!36593 lt!2373686)))))

(assert (=> b!6400755 d!2006649))

(declare-fun d!2006651 () Bool)

(assert (=> d!2006651 (= (tail!12198 (_1!36593 lt!2373686)) (t!378840 (_1!36593 lt!2373686)))))

(assert (=> b!6400755 d!2006651))

(declare-fun b!6401041 () Bool)

(declare-fun c!1167803 () Bool)

(assert (=> b!6401041 (= c!1167803 ((_ is Union!16311) (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun e!3884686 () Int)

(declare-fun e!3884681 () Int)

(assert (=> b!6401041 (= e!3884686 e!3884681)))

(declare-fun bm!548590 () Bool)

(declare-fun call!548600 () Int)

(assert (=> bm!548590 (= call!548600 (regexDepth!338 (ite c!1167803 (regOne!33135 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (regTwo!33134 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))))

(declare-fun bm!548591 () Bool)

(declare-fun call!548601 () Int)

(declare-fun call!548598 () Int)

(assert (=> bm!548591 (= call!548601 (maxBigInt!0 (ite c!1167803 call!548600 call!548598) (ite c!1167803 call!548598 call!548600)))))

(declare-fun b!6401042 () Bool)

(declare-fun call!548597 () Int)

(assert (=> b!6401042 (= e!3884686 (+ 1 call!548597))))

(declare-fun b!6401043 () Bool)

(declare-fun e!3884682 () Bool)

(declare-fun lt!2373864 () Int)

(assert (=> b!6401043 (= e!3884682 (= lt!2373864 1))))

(declare-fun b!6401045 () Bool)

(declare-fun res!2631939 () Bool)

(declare-fun e!3884680 () Bool)

(assert (=> b!6401045 (=> (not res!2631939) (not e!3884680))))

(declare-fun call!548595 () Int)

(assert (=> b!6401045 (= res!2631939 (> lt!2373864 call!548595))))

(declare-fun e!3884683 () Bool)

(assert (=> b!6401045 (= e!3884683 e!3884680)))

(declare-fun b!6401046 () Bool)

(declare-fun e!3884687 () Int)

(assert (=> b!6401046 (= e!3884687 e!3884686)))

(declare-fun c!1167809 () Bool)

(assert (=> b!6401046 (= c!1167809 ((_ is Star!16311) (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun b!6401047 () Bool)

(declare-fun e!3884685 () Bool)

(assert (=> b!6401047 (= e!3884685 e!3884683)))

(declare-fun c!1167804 () Bool)

(assert (=> b!6401047 (= c!1167804 ((_ is Concat!25156) (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun b!6401048 () Bool)

(declare-fun call!548596 () Int)

(assert (=> b!6401048 (= e!3884680 (> lt!2373864 call!548596))))

(declare-fun b!6401049 () Bool)

(assert (=> b!6401049 (= e!3884681 (+ 1 call!548601))))

(declare-fun b!6401050 () Bool)

(assert (=> b!6401050 (= e!3884682 (> lt!2373864 call!548595))))

(declare-fun b!6401051 () Bool)

(declare-fun e!3884679 () Int)

(assert (=> b!6401051 (= e!3884679 (+ 1 call!548601))))

(declare-fun b!6401052 () Bool)

(declare-fun e!3884684 () Bool)

(declare-fun call!548599 () Int)

(assert (=> b!6401052 (= e!3884684 (> lt!2373864 call!548599))))

(declare-fun b!6401053 () Bool)

(declare-fun e!3884688 () Bool)

(assert (=> b!6401053 (= e!3884688 e!3884685)))

(declare-fun c!1167805 () Bool)

(assert (=> b!6401053 (= c!1167805 ((_ is Union!16311) (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun bm!548592 () Bool)

(assert (=> bm!548592 (= call!548597 (regexDepth!338 (ite c!1167809 (reg!16640 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (ite c!1167803 (regTwo!33135 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (regOne!33134 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661)))))))))

(declare-fun b!6401054 () Bool)

(declare-fun c!1167806 () Bool)

(assert (=> b!6401054 (= c!1167806 ((_ is Star!16311) (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(assert (=> b!6401054 (= e!3884683 e!3884682)))

(declare-fun d!2006653 () Bool)

(assert (=> d!2006653 e!3884688))

(declare-fun res!2631940 () Bool)

(assert (=> d!2006653 (=> (not res!2631940) (not e!3884688))))

(assert (=> d!2006653 (= res!2631940 (> lt!2373864 0))))

(assert (=> d!2006653 (= lt!2373864 e!3884687)))

(declare-fun c!1167807 () Bool)

(assert (=> d!2006653 (= c!1167807 ((_ is ElementMatch!16311) (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(assert (=> d!2006653 (= (regexDepth!338 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) lt!2373864)))

(declare-fun b!6401044 () Bool)

(assert (=> b!6401044 (= e!3884681 e!3884679)))

(declare-fun c!1167808 () Bool)

(assert (=> b!6401044 (= c!1167808 ((_ is Concat!25156) (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun b!6401055 () Bool)

(assert (=> b!6401055 (= e!3884687 1)))

(declare-fun bm!548593 () Bool)

(assert (=> bm!548593 (= call!548596 (regexDepth!338 (ite c!1167805 (regOne!33135 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (regTwo!33134 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))))

(declare-fun b!6401056 () Bool)

(assert (=> b!6401056 (= e!3884685 e!3884684)))

(declare-fun res!2631938 () Bool)

(assert (=> b!6401056 (= res!2631938 (> lt!2373864 call!548596))))

(assert (=> b!6401056 (=> (not res!2631938) (not e!3884684))))

(declare-fun bm!548594 () Bool)

(assert (=> bm!548594 (= call!548599 (regexDepth!338 (ite c!1167805 (regTwo!33135 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (ite c!1167804 (regOne!33134 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (reg!16640 (ite c!1167701 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661)))))))))

(declare-fun bm!548595 () Bool)

(assert (=> bm!548595 (= call!548595 call!548599)))

(declare-fun bm!548596 () Bool)

(assert (=> bm!548596 (= call!548598 call!548597)))

(declare-fun b!6401057 () Bool)

(assert (=> b!6401057 (= e!3884679 1)))

(assert (= (and d!2006653 c!1167807) b!6401055))

(assert (= (and d!2006653 (not c!1167807)) b!6401046))

(assert (= (and b!6401046 c!1167809) b!6401042))

(assert (= (and b!6401046 (not c!1167809)) b!6401041))

(assert (= (and b!6401041 c!1167803) b!6401049))

(assert (= (and b!6401041 (not c!1167803)) b!6401044))

(assert (= (and b!6401044 c!1167808) b!6401051))

(assert (= (and b!6401044 (not c!1167808)) b!6401057))

(assert (= (or b!6401049 b!6401051) bm!548596))

(assert (= (or b!6401049 b!6401051) bm!548590))

(assert (= (or b!6401049 b!6401051) bm!548591))

(assert (= (or b!6401042 bm!548596) bm!548592))

(assert (= (and d!2006653 res!2631940) b!6401053))

(assert (= (and b!6401053 c!1167805) b!6401056))

(assert (= (and b!6401053 (not c!1167805)) b!6401047))

(assert (= (and b!6401056 res!2631938) b!6401052))

(assert (= (and b!6401047 c!1167804) b!6401045))

(assert (= (and b!6401047 (not c!1167804)) b!6401054))

(assert (= (and b!6401045 res!2631939) b!6401048))

(assert (= (and b!6401054 c!1167806) b!6401050))

(assert (= (and b!6401054 (not c!1167806)) b!6401043))

(assert (= (or b!6401045 b!6401050) bm!548595))

(assert (= (or b!6401052 bm!548595) bm!548594))

(assert (= (or b!6401056 b!6401048) bm!548593))

(declare-fun m!7198196 () Bool)

(assert (=> bm!548591 m!7198196))

(declare-fun m!7198198 () Bool)

(assert (=> bm!548592 m!7198198))

(declare-fun m!7198200 () Bool)

(assert (=> bm!548593 m!7198200))

(declare-fun m!7198202 () Bool)

(assert (=> bm!548594 m!7198202))

(declare-fun m!7198204 () Bool)

(assert (=> bm!548590 m!7198204))

(assert (=> bm!548513 d!2006653))

(declare-fun d!2006655 () Bool)

(assert (=> d!2006655 (= (isEmpty!37253 (t!378840 s!2326)) ((_ is Nil!65108) (t!378840 s!2326)))))

(assert (=> d!2006431 d!2006655))

(declare-fun d!2006657 () Bool)

(assert (=> d!2006657 true))

(declare-fun setRes!43695 () Bool)

(assert (=> d!2006657 setRes!43695))

(declare-fun condSetEmpty!43695 () Bool)

(declare-fun res!2631953 () (InoxSet Context!11390))

(assert (=> d!2006657 (= condSetEmpty!43695 (= res!2631953 ((as const (Array Context!11390 Bool)) false)))))

(assert (=> d!2006657 (= (choose!47592 lt!2373660 lambda!353313) res!2631953)))

(declare-fun setIsEmpty!43695 () Bool)

(assert (=> setIsEmpty!43695 setRes!43695))

(declare-fun tp!1779309 () Bool)

(declare-fun setNonEmpty!43695 () Bool)

(declare-fun e!3884704 () Bool)

(declare-fun setElem!43695 () Context!11390)

(assert (=> setNonEmpty!43695 (= setRes!43695 (and tp!1779309 (inv!84024 setElem!43695) e!3884704))))

(declare-fun setRest!43695 () (InoxSet Context!11390))

(assert (=> setNonEmpty!43695 (= res!2631953 ((_ map or) (store ((as const (Array Context!11390 Bool)) false) setElem!43695 true) setRest!43695))))

(declare-fun b!6401076 () Bool)

(declare-fun tp!1779310 () Bool)

(assert (=> b!6401076 (= e!3884704 tp!1779310)))

(assert (= (and d!2006657 condSetEmpty!43695) setIsEmpty!43695))

(assert (= (and d!2006657 (not condSetEmpty!43695)) setNonEmpty!43695))

(assert (= setNonEmpty!43695 b!6401076))

(declare-fun m!7198210 () Bool)

(assert (=> setNonEmpty!43695 m!7198210))

(assert (=> d!2006523 d!2006657))

(declare-fun d!2006663 () Bool)

(declare-fun c!1167815 () Bool)

(assert (=> d!2006663 (= c!1167815 ((_ is Nil!65110) lt!2373760))))

(declare-fun e!3884707 () (InoxSet Context!11390))

(assert (=> d!2006663 (= (content!12335 lt!2373760) e!3884707)))

(declare-fun b!6401081 () Bool)

(assert (=> b!6401081 (= e!3884707 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6401082 () Bool)

(assert (=> b!6401082 (= e!3884707 ((_ map or) (store ((as const (Array Context!11390 Bool)) false) (h!71558 lt!2373760) true) (content!12335 (t!378842 lt!2373760))))))

(assert (= (and d!2006663 c!1167815) b!6401081))

(assert (= (and d!2006663 (not c!1167815)) b!6401082))

(declare-fun m!7198218 () Bool)

(assert (=> b!6401082 m!7198218))

(declare-fun m!7198220 () Bool)

(assert (=> b!6401082 m!7198220))

(assert (=> b!6400125 d!2006663))

(assert (=> b!6400305 d!2006417))

(declare-fun bs!1604868 () Bool)

(declare-fun d!2006667 () Bool)

(assert (= bs!1604868 (and d!2006667 d!2006417)))

(declare-fun lambda!353420 () Int)

(assert (=> bs!1604868 (= lambda!353420 lambda!353359)))

(declare-fun bs!1604869 () Bool)

(assert (= bs!1604869 (and d!2006667 d!2006553)))

(assert (=> bs!1604869 (= lambda!353420 lambda!353400)))

(declare-fun bs!1604870 () Bool)

(assert (= bs!1604870 (and d!2006667 d!2006563)))

(assert (=> bs!1604870 (= lambda!353420 lambda!353403)))

(declare-fun bs!1604871 () Bool)

(assert (= bs!1604871 (and d!2006667 d!2006429)))

(assert (=> bs!1604871 (= lambda!353420 lambda!353368)))

(declare-fun bs!1604872 () Bool)

(assert (= bs!1604872 (and d!2006667 d!2006531)))

(assert (=> bs!1604872 (= lambda!353420 lambda!353399)))

(declare-fun bs!1604873 () Bool)

(assert (= bs!1604873 (and d!2006667 d!2006421)))

(assert (=> bs!1604873 (= lambda!353420 lambda!353365)))

(declare-fun lt!2373865 () List!65233)

(assert (=> d!2006667 (forall!15496 lt!2373865 lambda!353420)))

(declare-fun e!3884712 () List!65233)

(assert (=> d!2006667 (= lt!2373865 e!3884712)))

(declare-fun c!1167816 () Bool)

(assert (=> d!2006667 (= c!1167816 ((_ is Cons!65110) (t!378842 zl!343)))))

(assert (=> d!2006667 (= (unfocusZipperList!1732 (t!378842 zl!343)) lt!2373865)))

(declare-fun b!6401087 () Bool)

(assert (=> b!6401087 (= e!3884712 (Cons!65109 (generalisedConcat!1908 (exprs!6195 (h!71558 (t!378842 zl!343)))) (unfocusZipperList!1732 (t!378842 (t!378842 zl!343)))))))

(declare-fun b!6401088 () Bool)

(assert (=> b!6401088 (= e!3884712 Nil!65109)))

(assert (= (and d!2006667 c!1167816) b!6401087))

(assert (= (and d!2006667 (not c!1167816)) b!6401088))

(declare-fun m!7198222 () Bool)

(assert (=> d!2006667 m!7198222))

(declare-fun m!7198224 () Bool)

(assert (=> b!6401087 m!7198224))

(declare-fun m!7198226 () Bool)

(assert (=> b!6401087 m!7198226))

(assert (=> b!6400305 d!2006667))

(declare-fun d!2006669 () Bool)

(assert (=> d!2006669 (= (isEmpty!37253 (tail!12198 s!2326)) ((_ is Nil!65108) (tail!12198 s!2326)))))

(assert (=> b!6400418 d!2006669))

(declare-fun d!2006671 () Bool)

(assert (=> d!2006671 (= (tail!12198 s!2326) (t!378840 s!2326))))

(assert (=> b!6400418 d!2006671))

(declare-fun d!2006673 () Bool)

(assert (=> d!2006673 (= (flatMap!1816 lt!2373688 lambda!353390) (choose!47592 lt!2373688 lambda!353390))))

(declare-fun bs!1604874 () Bool)

(assert (= bs!1604874 d!2006673))

(declare-fun m!7198228 () Bool)

(assert (=> bs!1604874 m!7198228))

(assert (=> d!2006491 d!2006673))

(declare-fun d!2006675 () Bool)

(assert (=> d!2006675 (= (head!13112 (unfocusZipperList!1732 zl!343)) (h!71557 (unfocusZipperList!1732 zl!343)))))

(assert (=> b!6400277 d!2006675))

(declare-fun d!2006677 () Bool)

(declare-fun res!2631964 () Bool)

(declare-fun e!3884719 () Bool)

(assert (=> d!2006677 (=> res!2631964 e!3884719)))

(assert (=> d!2006677 (= res!2631964 ((_ is Nil!65109) (exprs!6195 (h!71558 zl!343))))))

(assert (=> d!2006677 (= (forall!15496 (exprs!6195 (h!71558 zl!343)) lambda!353399) e!3884719)))

(declare-fun b!6401095 () Bool)

(declare-fun e!3884720 () Bool)

(assert (=> b!6401095 (= e!3884719 e!3884720)))

(declare-fun res!2631965 () Bool)

(assert (=> b!6401095 (=> (not res!2631965) (not e!3884720))))

(declare-fun dynLambda!25842 (Int Regex!16311) Bool)

(assert (=> b!6401095 (= res!2631965 (dynLambda!25842 lambda!353399 (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6401096 () Bool)

(assert (=> b!6401096 (= e!3884720 (forall!15496 (t!378841 (exprs!6195 (h!71558 zl!343))) lambda!353399))))

(assert (= (and d!2006677 (not res!2631964)) b!6401095))

(assert (= (and b!6401095 res!2631965) b!6401096))

(declare-fun b_lambda!243239 () Bool)

(assert (=> (not b_lambda!243239) (not b!6401095)))

(declare-fun m!7198234 () Bool)

(assert (=> b!6401095 m!7198234))

(declare-fun m!7198238 () Bool)

(assert (=> b!6401096 m!7198238))

(assert (=> d!2006531 d!2006677))

(declare-fun bs!1604881 () Bool)

(declare-fun d!2006681 () Bool)

(assert (= bs!1604881 (and d!2006681 d!2006417)))

(declare-fun lambda!353422 () Int)

(assert (=> bs!1604881 (= lambda!353422 lambda!353359)))

(declare-fun bs!1604882 () Bool)

(assert (= bs!1604882 (and d!2006681 d!2006667)))

(assert (=> bs!1604882 (= lambda!353422 lambda!353420)))

(declare-fun bs!1604884 () Bool)

(assert (= bs!1604884 (and d!2006681 d!2006553)))

(assert (=> bs!1604884 (= lambda!353422 lambda!353400)))

(declare-fun bs!1604885 () Bool)

(assert (= bs!1604885 (and d!2006681 d!2006563)))

(assert (=> bs!1604885 (= lambda!353422 lambda!353403)))

(declare-fun bs!1604887 () Bool)

(assert (= bs!1604887 (and d!2006681 d!2006429)))

(assert (=> bs!1604887 (= lambda!353422 lambda!353368)))

(declare-fun bs!1604888 () Bool)

(assert (= bs!1604888 (and d!2006681 d!2006531)))

(assert (=> bs!1604888 (= lambda!353422 lambda!353399)))

(declare-fun bs!1604890 () Bool)

(assert (= bs!1604890 (and d!2006681 d!2006421)))

(assert (=> bs!1604890 (= lambda!353422 lambda!353365)))

(assert (=> d!2006681 (= (inv!84024 (h!71558 (t!378842 zl!343))) (forall!15496 (exprs!6195 (h!71558 (t!378842 zl!343))) lambda!353422))))

(declare-fun bs!1604892 () Bool)

(assert (= bs!1604892 d!2006681))

(declare-fun m!7198240 () Bool)

(assert (=> bs!1604892 m!7198240))

(assert (=> b!6400912 d!2006681))

(declare-fun b!6401099 () Bool)

(declare-fun e!3884723 () (InoxSet Context!11390))

(declare-fun call!548609 () (InoxSet Context!11390))

(declare-fun call!548612 () (InoxSet Context!11390))

(assert (=> b!6401099 (= e!3884723 ((_ map or) call!548609 call!548612))))

(declare-fun b!6401100 () Bool)

(declare-fun c!1167820 () Bool)

(declare-fun e!3884726 () Bool)

(assert (=> b!6401100 (= c!1167820 e!3884726)))

(declare-fun res!2631966 () Bool)

(assert (=> b!6401100 (=> (not res!2631966) (not e!3884726))))

(assert (=> b!6401100 (= res!2631966 ((_ is Concat!25156) (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun e!3884725 () (InoxSet Context!11390))

(assert (=> b!6401100 (= e!3884723 e!3884725)))

(declare-fun bm!548602 () Bool)

(declare-fun call!548611 () (InoxSet Context!11390))

(assert (=> bm!548602 (= call!548611 call!548609)))

(declare-fun bm!548603 () Bool)

(declare-fun c!1167818 () Bool)

(declare-fun call!548607 () List!65233)

(assert (=> bm!548603 (= call!548612 (derivationStepZipperDown!1559 (ite c!1167818 (regTwo!33135 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))) (regOne!33134 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))))) (ite c!1167818 (ite c!1167758 lt!2373656 (Context!11391 call!548553)) (Context!11391 call!548607)) (h!71556 s!2326)))))

(declare-fun b!6401101 () Bool)

(declare-fun e!3884724 () (InoxSet Context!11390))

(assert (=> b!6401101 (= e!3884724 e!3884723)))

(assert (=> b!6401101 (= c!1167818 ((_ is Union!16311) (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun b!6401102 () Bool)

(assert (=> b!6401102 (= e!3884725 ((_ map or) call!548612 call!548611))))

(declare-fun bm!548604 () Bool)

(declare-fun call!548608 () List!65233)

(assert (=> bm!548604 (= call!548608 call!548607)))

(declare-fun b!6401103 () Bool)

(declare-fun e!3884727 () (InoxSet Context!11390))

(assert (=> b!6401103 (= e!3884725 e!3884727)))

(declare-fun c!1167821 () Bool)

(assert (=> b!6401103 (= c!1167821 ((_ is Concat!25156) (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun b!6401104 () Bool)

(declare-fun call!548610 () (InoxSet Context!11390))

(assert (=> b!6401104 (= e!3884727 call!548610)))

(declare-fun bm!548605 () Bool)

(assert (=> bm!548605 (= call!548609 (derivationStepZipperDown!1559 (ite c!1167818 (regOne!33135 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))) (ite c!1167820 (regTwo!33134 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))) (ite c!1167821 (regOne!33134 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))) (reg!16640 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))))))) (ite (or c!1167818 c!1167820) (ite c!1167758 lt!2373656 (Context!11391 call!548553)) (Context!11391 call!548608)) (h!71556 s!2326)))))

(declare-fun b!6401105 () Bool)

(declare-fun e!3884722 () (InoxSet Context!11390))

(assert (=> b!6401105 (= e!3884722 call!548610)))

(declare-fun bm!548606 () Bool)

(assert (=> bm!548606 (= call!548607 ($colon$colon!2172 (exprs!6195 (ite c!1167758 lt!2373656 (Context!11391 call!548553))) (ite (or c!1167820 c!1167821) (regTwo!33134 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))) (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))))))))

(declare-fun c!1167822 () Bool)

(declare-fun d!2006685 () Bool)

(assert (=> d!2006685 (= c!1167822 (and ((_ is ElementMatch!16311) (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))) (= (c!1167428 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))) (h!71556 s!2326))))))

(assert (=> d!2006685 (= (derivationStepZipperDown!1559 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))) (ite c!1167758 lt!2373656 (Context!11391 call!548553)) (h!71556 s!2326)) e!3884724)))

(declare-fun b!6401106 () Bool)

(assert (=> b!6401106 (= e!3884722 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6401107 () Bool)

(declare-fun c!1167819 () Bool)

(assert (=> b!6401107 (= c!1167819 ((_ is Star!16311) (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))))))

(assert (=> b!6401107 (= e!3884727 e!3884722)))

(declare-fun b!6401108 () Bool)

(assert (=> b!6401108 (= e!3884724 (store ((as const (Array Context!11390 Bool)) false) (ite c!1167758 lt!2373656 (Context!11391 call!548553)) true))))

(declare-fun b!6401109 () Bool)

(assert (=> b!6401109 (= e!3884726 (nullable!6304 (regOne!33134 (ite c!1167758 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))))))))

(declare-fun bm!548607 () Bool)

(assert (=> bm!548607 (= call!548610 call!548611)))

(assert (= (and d!2006685 c!1167822) b!6401108))

(assert (= (and d!2006685 (not c!1167822)) b!6401101))

(assert (= (and b!6401101 c!1167818) b!6401099))

(assert (= (and b!6401101 (not c!1167818)) b!6401100))

(assert (= (and b!6401100 res!2631966) b!6401109))

(assert (= (and b!6401100 c!1167820) b!6401102))

(assert (= (and b!6401100 (not c!1167820)) b!6401103))

(assert (= (and b!6401103 c!1167821) b!6401104))

(assert (= (and b!6401103 (not c!1167821)) b!6401107))

(assert (= (and b!6401107 c!1167819) b!6401105))

(assert (= (and b!6401107 (not c!1167819)) b!6401106))

(assert (= (or b!6401104 b!6401105) bm!548604))

(assert (= (or b!6401104 b!6401105) bm!548607))

(assert (= (or b!6401102 bm!548604) bm!548606))

(assert (= (or b!6401102 bm!548607) bm!548602))

(assert (= (or b!6401099 b!6401102) bm!548603))

(assert (= (or b!6401099 bm!548602) bm!548605))

(declare-fun m!7198248 () Bool)

(assert (=> bm!548603 m!7198248))

(declare-fun m!7198250 () Bool)

(assert (=> bm!548605 m!7198250))

(declare-fun m!7198252 () Bool)

(assert (=> b!6401108 m!7198252))

(declare-fun m!7198254 () Bool)

(assert (=> b!6401109 m!7198254))

(declare-fun m!7198256 () Bool)

(assert (=> bm!548606 m!7198256))

(assert (=> bm!548549 d!2006685))

(declare-fun d!2006689 () Bool)

(assert (=> d!2006689 (= (nullable!6304 (reg!16640 lt!2373661)) (nullableFct!2250 (reg!16640 lt!2373661)))))

(declare-fun bs!1604896 () Bool)

(assert (= bs!1604896 d!2006689))

(declare-fun m!7198258 () Bool)

(assert (=> bs!1604896 m!7198258))

(assert (=> b!6400816 d!2006689))

(assert (=> d!2006583 d!2006587))

(assert (=> d!2006583 d!2006585))

(declare-fun d!2006691 () Bool)

(declare-fun e!3884734 () Bool)

(assert (=> d!2006691 (= (matchZipper!2323 ((_ map or) lt!2373668 lt!2373666) (t!378840 s!2326)) e!3884734)))

(declare-fun res!2631970 () Bool)

(assert (=> d!2006691 (=> res!2631970 e!3884734)))

(assert (=> d!2006691 (= res!2631970 (matchZipper!2323 lt!2373668 (t!378840 s!2326)))))

(assert (=> d!2006691 true))

(declare-fun _$48!2189 () Unit!158575)

(assert (=> d!2006691 (= (choose!47600 lt!2373668 lt!2373666 (t!378840 s!2326)) _$48!2189)))

(declare-fun b!6401119 () Bool)

(assert (=> b!6401119 (= e!3884734 (matchZipper!2323 lt!2373666 (t!378840 s!2326)))))

(assert (= (and d!2006691 (not res!2631970)) b!6401119))

(assert (=> d!2006691 m!7197172))

(assert (=> d!2006691 m!7197170))

(assert (=> b!6401119 m!7197230))

(assert (=> d!2006583 d!2006691))

(declare-fun d!2006699 () Bool)

(assert (=> d!2006699 true))

(declare-fun setRes!43696 () Bool)

(assert (=> d!2006699 setRes!43696))

(declare-fun condSetEmpty!43696 () Bool)

(declare-fun res!2631971 () (InoxSet Context!11390))

(assert (=> d!2006699 (= condSetEmpty!43696 (= res!2631971 ((as const (Array Context!11390 Bool)) false)))))

(assert (=> d!2006699 (= (choose!47592 lt!2373683 lambda!353313) res!2631971)))

(declare-fun setIsEmpty!43696 () Bool)

(assert (=> setIsEmpty!43696 setRes!43696))

(declare-fun setNonEmpty!43696 () Bool)

(declare-fun setElem!43696 () Context!11390)

(declare-fun tp!1779311 () Bool)

(declare-fun e!3884735 () Bool)

(assert (=> setNonEmpty!43696 (= setRes!43696 (and tp!1779311 (inv!84024 setElem!43696) e!3884735))))

(declare-fun setRest!43696 () (InoxSet Context!11390))

(assert (=> setNonEmpty!43696 (= res!2631971 ((_ map or) (store ((as const (Array Context!11390 Bool)) false) setElem!43696 true) setRest!43696))))

(declare-fun b!6401120 () Bool)

(declare-fun tp!1779312 () Bool)

(assert (=> b!6401120 (= e!3884735 tp!1779312)))

(assert (= (and d!2006699 condSetEmpty!43696) setIsEmpty!43696))

(assert (= (and d!2006699 (not condSetEmpty!43696)) setNonEmpty!43696))

(assert (= setNonEmpty!43696 b!6401120))

(declare-fun m!7198280 () Bool)

(assert (=> setNonEmpty!43696 m!7198280))

(assert (=> d!2006383 d!2006699))

(assert (=> d!2006527 d!2006523))

(declare-fun d!2006705 () Bool)

(assert (=> d!2006705 (= (flatMap!1816 lt!2373660 lambda!353313) (dynLambda!25841 lambda!353313 lt!2373669))))

(assert (=> d!2006705 true))

(declare-fun _$13!3593 () Unit!158575)

(assert (=> d!2006705 (= (choose!47593 lt!2373660 lt!2373669 lambda!353313) _$13!3593)))

(declare-fun b_lambda!243243 () Bool)

(assert (=> (not b_lambda!243243) (not d!2006705)))

(declare-fun bs!1604901 () Bool)

(assert (= bs!1604901 d!2006705))

(assert (=> bs!1604901 m!7197212))

(assert (=> bs!1604901 m!7197922))

(assert (=> d!2006527 d!2006705))

(assert (=> d!2006585 d!2006655))

(declare-fun d!2006709 () Bool)

(declare-fun res!2631975 () Bool)

(declare-fun e!3884741 () Bool)

(assert (=> d!2006709 (=> res!2631975 e!3884741)))

(assert (=> d!2006709 (= res!2631975 ((_ is Nil!65109) (exprs!6195 setElem!43686)))))

(assert (=> d!2006709 (= (forall!15496 (exprs!6195 setElem!43686) lambda!353403) e!3884741)))

(declare-fun b!6401128 () Bool)

(declare-fun e!3884742 () Bool)

(assert (=> b!6401128 (= e!3884741 e!3884742)))

(declare-fun res!2631976 () Bool)

(assert (=> b!6401128 (=> (not res!2631976) (not e!3884742))))

(assert (=> b!6401128 (= res!2631976 (dynLambda!25842 lambda!353403 (h!71557 (exprs!6195 setElem!43686))))))

(declare-fun b!6401129 () Bool)

(assert (=> b!6401129 (= e!3884742 (forall!15496 (t!378841 (exprs!6195 setElem!43686)) lambda!353403))))

(assert (= (and d!2006709 (not res!2631975)) b!6401128))

(assert (= (and b!6401128 res!2631976) b!6401129))

(declare-fun b_lambda!243245 () Bool)

(assert (=> (not b_lambda!243245) (not b!6401128)))

(declare-fun m!7198292 () Bool)

(assert (=> b!6401128 m!7198292))

(declare-fun m!7198294 () Bool)

(assert (=> b!6401129 m!7198294))

(assert (=> d!2006563 d!2006709))

(declare-fun d!2006711 () Bool)

(assert (=> d!2006711 (= ($colon$colon!2172 (exprs!6195 lt!2373656) (ite (or c!1167760 c!1167761) (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (h!71557 (exprs!6195 (h!71558 zl!343))))) (Cons!65109 (ite (or c!1167760 c!1167761) (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (h!71557 (exprs!6195 (h!71558 zl!343)))) (exprs!6195 lt!2373656)))))

(assert (=> bm!548552 d!2006711))

(declare-fun d!2006715 () Bool)

(declare-fun c!1167830 () Bool)

(assert (=> d!2006715 (= c!1167830 (isEmpty!37253 (tail!12198 (t!378840 s!2326))))))

(declare-fun e!3884746 () Bool)

(assert (=> d!2006715 (= (matchZipper!2323 (derivationStepZipper!2277 lt!2373666 (head!13113 (t!378840 s!2326))) (tail!12198 (t!378840 s!2326))) e!3884746)))

(declare-fun b!6401135 () Bool)

(assert (=> b!6401135 (= e!3884746 (nullableZipper!2076 (derivationStepZipper!2277 lt!2373666 (head!13113 (t!378840 s!2326)))))))

(declare-fun b!6401136 () Bool)

(assert (=> b!6401136 (= e!3884746 (matchZipper!2323 (derivationStepZipper!2277 (derivationStepZipper!2277 lt!2373666 (head!13113 (t!378840 s!2326))) (head!13113 (tail!12198 (t!378840 s!2326)))) (tail!12198 (tail!12198 (t!378840 s!2326)))))))

(assert (= (and d!2006715 c!1167830) b!6401135))

(assert (= (and d!2006715 (not c!1167830)) b!6401136))

(assert (=> d!2006715 m!7197644))

(declare-fun m!7198300 () Bool)

(assert (=> d!2006715 m!7198300))

(assert (=> b!6401135 m!7197642))

(declare-fun m!7198302 () Bool)

(assert (=> b!6401135 m!7198302))

(assert (=> b!6401136 m!7197644))

(declare-fun m!7198305 () Bool)

(assert (=> b!6401136 m!7198305))

(assert (=> b!6401136 m!7197642))

(assert (=> b!6401136 m!7198305))

(declare-fun m!7198308 () Bool)

(assert (=> b!6401136 m!7198308))

(assert (=> b!6401136 m!7197644))

(declare-fun m!7198310 () Bool)

(assert (=> b!6401136 m!7198310))

(assert (=> b!6401136 m!7198308))

(assert (=> b!6401136 m!7198310))

(declare-fun m!7198312 () Bool)

(assert (=> b!6401136 m!7198312))

(assert (=> b!6400330 d!2006715))

(declare-fun bs!1604902 () Bool)

(declare-fun d!2006719 () Bool)

(assert (= bs!1604902 (and d!2006719 b!6399793)))

(declare-fun lambda!353425 () Int)

(assert (=> bs!1604902 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353425 lambda!353313))))

(declare-fun bs!1604903 () Bool)

(assert (= bs!1604903 (and d!2006719 d!2006491)))

(assert (=> bs!1604903 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353425 lambda!353390))))

(declare-fun bs!1604904 () Bool)

(assert (= bs!1604904 (and d!2006719 d!2006529)))

(assert (=> bs!1604904 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353425 lambda!353396))))

(assert (=> d!2006719 true))

(assert (=> d!2006719 (= (derivationStepZipper!2277 lt!2373666 (head!13113 (t!378840 s!2326))) (flatMap!1816 lt!2373666 lambda!353425))))

(declare-fun bs!1604905 () Bool)

(assert (= bs!1604905 d!2006719))

(declare-fun m!7198314 () Bool)

(assert (=> bs!1604905 m!7198314))

(assert (=> b!6400330 d!2006719))

(declare-fun d!2006721 () Bool)

(assert (=> d!2006721 (= (head!13113 (t!378840 s!2326)) (h!71556 (t!378840 s!2326)))))

(assert (=> b!6400330 d!2006721))

(declare-fun d!2006723 () Bool)

(assert (=> d!2006723 (= (tail!12198 (t!378840 s!2326)) (t!378840 (t!378840 s!2326)))))

(assert (=> b!6400330 d!2006723))

(declare-fun d!2006725 () Bool)

(assert (=> d!2006725 (= (nullable!6304 lt!2373664) (nullableFct!2250 lt!2373664))))

(declare-fun bs!1604906 () Bool)

(assert (= bs!1604906 d!2006725))

(declare-fun m!7198316 () Bool)

(assert (=> bs!1604906 m!7198316))

(assert (=> b!6400759 d!2006725))

(declare-fun d!2006727 () Bool)

(assert (=> d!2006727 true))

(assert (=> d!2006727 true))

(declare-fun res!2631980 () Bool)

(assert (=> d!2006727 (= (choose!47587 lambda!353315) res!2631980)))

(assert (=> d!2006361 d!2006727))

(declare-fun b!6401141 () Bool)

(declare-fun res!2631982 () Bool)

(declare-fun e!3884753 () Bool)

(assert (=> b!6401141 (=> (not res!2631982) (not e!3884753))))

(declare-fun call!548618 () Bool)

(assert (=> b!6401141 (= res!2631982 call!548618)))

(declare-fun e!3884749 () Bool)

(assert (=> b!6401141 (= e!3884749 e!3884753)))

(declare-fun bm!548611 () Bool)

(declare-fun call!548617 () Bool)

(declare-fun c!1167834 () Bool)

(declare-fun c!1167833 () Bool)

(assert (=> bm!548611 (= call!548617 (validRegex!8047 (ite c!1167833 (reg!16640 lt!2373774) (ite c!1167834 (regTwo!33135 lt!2373774) (regTwo!33134 lt!2373774)))))))

(declare-fun b!6401142 () Bool)

(declare-fun e!3884750 () Bool)

(declare-fun e!3884751 () Bool)

(assert (=> b!6401142 (= e!3884750 e!3884751)))

(declare-fun res!2631984 () Bool)

(assert (=> b!6401142 (= res!2631984 (not (nullable!6304 (reg!16640 lt!2373774))))))

(assert (=> b!6401142 (=> (not res!2631984) (not e!3884751))))

(declare-fun b!6401143 () Bool)

(declare-fun e!3884755 () Bool)

(assert (=> b!6401143 (= e!3884755 e!3884750)))

(assert (=> b!6401143 (= c!1167833 ((_ is Star!16311) lt!2373774))))

(declare-fun b!6401144 () Bool)

(declare-fun res!2631981 () Bool)

(declare-fun e!3884754 () Bool)

(assert (=> b!6401144 (=> res!2631981 e!3884754)))

(assert (=> b!6401144 (= res!2631981 (not ((_ is Concat!25156) lt!2373774)))))

(assert (=> b!6401144 (= e!3884749 e!3884754)))

(declare-fun b!6401145 () Bool)

(assert (=> b!6401145 (= e!3884751 call!548617)))

(declare-fun b!6401146 () Bool)

(assert (=> b!6401146 (= e!3884750 e!3884749)))

(assert (=> b!6401146 (= c!1167834 ((_ is Union!16311) lt!2373774))))

(declare-fun b!6401147 () Bool)

(declare-fun call!548616 () Bool)

(assert (=> b!6401147 (= e!3884753 call!548616)))

(declare-fun b!6401148 () Bool)

(declare-fun e!3884752 () Bool)

(assert (=> b!6401148 (= e!3884752 call!548616)))

(declare-fun bm!548613 () Bool)

(assert (=> bm!548613 (= call!548616 call!548617)))

(declare-fun b!6401149 () Bool)

(assert (=> b!6401149 (= e!3884754 e!3884752)))

(declare-fun res!2631985 () Bool)

(assert (=> b!6401149 (=> (not res!2631985) (not e!3884752))))

(assert (=> b!6401149 (= res!2631985 call!548618)))

(declare-fun bm!548612 () Bool)

(assert (=> bm!548612 (= call!548618 (validRegex!8047 (ite c!1167834 (regOne!33135 lt!2373774) (regOne!33134 lt!2373774))))))

(declare-fun d!2006729 () Bool)

(declare-fun res!2631983 () Bool)

(assert (=> d!2006729 (=> res!2631983 e!3884755)))

(assert (=> d!2006729 (= res!2631983 ((_ is ElementMatch!16311) lt!2373774))))

(assert (=> d!2006729 (= (validRegex!8047 lt!2373774) e!3884755)))

(assert (= (and d!2006729 (not res!2631983)) b!6401143))

(assert (= (and b!6401143 c!1167833) b!6401142))

(assert (= (and b!6401143 (not c!1167833)) b!6401146))

(assert (= (and b!6401142 res!2631984) b!6401145))

(assert (= (and b!6401146 c!1167834) b!6401141))

(assert (= (and b!6401146 (not c!1167834)) b!6401144))

(assert (= (and b!6401141 res!2631982) b!6401147))

(assert (= (and b!6401144 (not res!2631981)) b!6401149))

(assert (= (and b!6401149 res!2631985) b!6401148))

(assert (= (or b!6401147 b!6401148) bm!548613))

(assert (= (or b!6401141 b!6401149) bm!548612))

(assert (= (or b!6401145 bm!548613) bm!548611))

(declare-fun m!7198318 () Bool)

(assert (=> bm!548611 m!7198318))

(declare-fun m!7198320 () Bool)

(assert (=> b!6401142 m!7198320))

(declare-fun m!7198322 () Bool)

(assert (=> bm!548612 m!7198322))

(assert (=> d!2006417 d!2006729))

(declare-fun d!2006731 () Bool)

(declare-fun res!2631986 () Bool)

(declare-fun e!3884756 () Bool)

(assert (=> d!2006731 (=> res!2631986 e!3884756)))

(assert (=> d!2006731 (= res!2631986 ((_ is Nil!65109) (exprs!6195 (h!71558 zl!343))))))

(assert (=> d!2006731 (= (forall!15496 (exprs!6195 (h!71558 zl!343)) lambda!353359) e!3884756)))

(declare-fun b!6401150 () Bool)

(declare-fun e!3884757 () Bool)

(assert (=> b!6401150 (= e!3884756 e!3884757)))

(declare-fun res!2631987 () Bool)

(assert (=> b!6401150 (=> (not res!2631987) (not e!3884757))))

(assert (=> b!6401150 (= res!2631987 (dynLambda!25842 lambda!353359 (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6401151 () Bool)

(assert (=> b!6401151 (= e!3884757 (forall!15496 (t!378841 (exprs!6195 (h!71558 zl!343))) lambda!353359))))

(assert (= (and d!2006731 (not res!2631986)) b!6401150))

(assert (= (and b!6401150 res!2631987) b!6401151))

(declare-fun b_lambda!243247 () Bool)

(assert (=> (not b_lambda!243247) (not b!6401150)))

(declare-fun m!7198324 () Bool)

(assert (=> b!6401150 m!7198324))

(declare-fun m!7198326 () Bool)

(assert (=> b!6401151 m!7198326))

(assert (=> d!2006417 d!2006731))

(declare-fun bs!1604907 () Bool)

(declare-fun d!2006733 () Bool)

(assert (= bs!1604907 (and d!2006733 b!6400830)))

(declare-fun lambda!353428 () Int)

(assert (=> bs!1604907 (not (= lambda!353428 lambda!353411))))

(declare-fun bs!1604908 () Bool)

(assert (= bs!1604908 (and d!2006733 b!6400832)))

(assert (=> bs!1604908 (not (= lambda!353428 lambda!353412))))

(declare-fun bs!1604909 () Bool)

(assert (= bs!1604909 (and d!2006733 b!6400835)))

(assert (=> bs!1604909 (not (= lambda!353428 lambda!353414))))

(declare-fun bs!1604910 () Bool)

(assert (= bs!1604910 (and d!2006733 b!6400837)))

(assert (=> bs!1604910 (not (= lambda!353428 lambda!353415))))

(declare-fun exists!2591 ((InoxSet Context!11390) Int) Bool)

(assert (=> d!2006733 (= (nullableZipper!2076 lt!2373660) (exists!2591 lt!2373660 lambda!353428))))

(declare-fun bs!1604911 () Bool)

(assert (= bs!1604911 d!2006733))

(declare-fun m!7198336 () Bool)

(assert (=> bs!1604911 m!7198336))

(assert (=> b!6400551 d!2006733))

(declare-fun b!6401163 () Bool)

(declare-fun call!548622 () (InoxSet Context!11390))

(declare-fun e!3884766 () (InoxSet Context!11390))

(assert (=> b!6401163 (= e!3884766 ((_ map or) call!548622 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373656)))))) (h!71556 s!2326))))))

(declare-fun d!2006743 () Bool)

(declare-fun c!1167840 () Bool)

(declare-fun e!3884768 () Bool)

(assert (=> d!2006743 (= c!1167840 e!3884768)))

(declare-fun res!2631993 () Bool)

(assert (=> d!2006743 (=> (not res!2631993) (not e!3884768))))

(assert (=> d!2006743 (= res!2631993 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373656))))))))

(assert (=> d!2006743 (= (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 lt!2373656))) (h!71556 s!2326)) e!3884766)))

(declare-fun b!6401164 () Bool)

(assert (=> b!6401164 (= e!3884768 (nullable!6304 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373656)))))))))

(declare-fun b!6401165 () Bool)

(declare-fun e!3884767 () (InoxSet Context!11390))

(assert (=> b!6401165 (= e!3884767 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548617 () Bool)

(assert (=> bm!548617 (= call!548622 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373656))))) (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373656)))))) (h!71556 s!2326)))))

(declare-fun b!6401166 () Bool)

(assert (=> b!6401166 (= e!3884766 e!3884767)))

(declare-fun c!1167841 () Bool)

(assert (=> b!6401166 (= c!1167841 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373656))))))))

(declare-fun b!6401167 () Bool)

(assert (=> b!6401167 (= e!3884767 call!548622)))

(assert (= (and d!2006743 res!2631993) b!6401164))

(assert (= (and d!2006743 c!1167840) b!6401163))

(assert (= (and d!2006743 (not c!1167840)) b!6401166))

(assert (= (and b!6401166 c!1167841) b!6401167))

(assert (= (and b!6401166 (not c!1167841)) b!6401165))

(assert (= (or b!6401163 b!6401167) bm!548617))

(declare-fun m!7198340 () Bool)

(assert (=> b!6401163 m!7198340))

(declare-fun m!7198342 () Bool)

(assert (=> b!6401164 m!7198342))

(declare-fun m!7198346 () Bool)

(assert (=> bm!548617 m!7198346))

(assert (=> b!6400542 d!2006743))

(declare-fun b!6401205 () Bool)

(declare-fun e!3884799 () Bool)

(declare-fun e!3884798 () Bool)

(assert (=> b!6401205 (= e!3884799 e!3884798)))

(declare-fun res!2632016 () Bool)

(assert (=> b!6401205 (=> res!2632016 e!3884798)))

(assert (=> b!6401205 (= res!2632016 ((_ is Star!16311) (regOne!33134 (regOne!33134 r!7292))))))

(declare-fun b!6401206 () Bool)

(declare-fun e!3884801 () Bool)

(declare-fun e!3884800 () Bool)

(assert (=> b!6401206 (= e!3884801 e!3884800)))

(declare-fun res!2632014 () Bool)

(declare-fun call!548635 () Bool)

(assert (=> b!6401206 (= res!2632014 call!548635)))

(assert (=> b!6401206 (=> res!2632014 e!3884800)))

(declare-fun b!6401207 () Bool)

(declare-fun e!3884802 () Bool)

(assert (=> b!6401207 (= e!3884801 e!3884802)))

(declare-fun res!2632017 () Bool)

(assert (=> b!6401207 (= res!2632017 call!548635)))

(assert (=> b!6401207 (=> (not res!2632017) (not e!3884802))))

(declare-fun b!6401208 () Bool)

(declare-fun e!3884797 () Bool)

(assert (=> b!6401208 (= e!3884797 e!3884799)))

(declare-fun res!2632015 () Bool)

(assert (=> b!6401208 (=> (not res!2632015) (not e!3884799))))

(assert (=> b!6401208 (= res!2632015 (and (not ((_ is EmptyLang!16311) (regOne!33134 (regOne!33134 r!7292)))) (not ((_ is ElementMatch!16311) (regOne!33134 (regOne!33134 r!7292))))))))

(declare-fun b!6401209 () Bool)

(assert (=> b!6401209 (= e!3884798 e!3884801)))

(declare-fun c!1167851 () Bool)

(assert (=> b!6401209 (= c!1167851 ((_ is Union!16311) (regOne!33134 (regOne!33134 r!7292))))))

(declare-fun b!6401210 () Bool)

(declare-fun call!548634 () Bool)

(assert (=> b!6401210 (= e!3884800 call!548634)))

(declare-fun bm!548629 () Bool)

(assert (=> bm!548629 (= call!548634 (nullable!6304 (ite c!1167851 (regTwo!33135 (regOne!33134 (regOne!33134 r!7292))) (regTwo!33134 (regOne!33134 (regOne!33134 r!7292))))))))

(declare-fun d!2006747 () Bool)

(declare-fun res!2632013 () Bool)

(assert (=> d!2006747 (=> res!2632013 e!3884797)))

(assert (=> d!2006747 (= res!2632013 ((_ is EmptyExpr!16311) (regOne!33134 (regOne!33134 r!7292))))))

(assert (=> d!2006747 (= (nullableFct!2250 (regOne!33134 (regOne!33134 r!7292))) e!3884797)))

(declare-fun bm!548630 () Bool)

(assert (=> bm!548630 (= call!548635 (nullable!6304 (ite c!1167851 (regOne!33135 (regOne!33134 (regOne!33134 r!7292))) (regOne!33134 (regOne!33134 (regOne!33134 r!7292))))))))

(declare-fun b!6401211 () Bool)

(assert (=> b!6401211 (= e!3884802 call!548634)))

(assert (= (and d!2006747 (not res!2632013)) b!6401208))

(assert (= (and b!6401208 res!2632015) b!6401205))

(assert (= (and b!6401205 (not res!2632016)) b!6401209))

(assert (= (and b!6401209 c!1167851) b!6401206))

(assert (= (and b!6401209 (not c!1167851)) b!6401207))

(assert (= (and b!6401206 (not res!2632014)) b!6401210))

(assert (= (and b!6401207 res!2632017) b!6401211))

(assert (= (or b!6401210 b!6401211) bm!548629))

(assert (= (or b!6401206 b!6401207) bm!548630))

(declare-fun m!7198360 () Bool)

(assert (=> bm!548629 m!7198360))

(declare-fun m!7198362 () Bool)

(assert (=> bm!548630 m!7198362))

(assert (=> d!2006547 d!2006747))

(declare-fun b!6401213 () Bool)

(declare-fun e!3884804 () List!65232)

(assert (=> b!6401213 (= e!3884804 (Cons!65108 (h!71556 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108))) (++!14379 (t!378840 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108))) (t!378840 s!2326))))))

(declare-fun b!6401214 () Bool)

(declare-fun res!2632019 () Bool)

(declare-fun e!3884803 () Bool)

(assert (=> b!6401214 (=> (not res!2632019) (not e!3884803))))

(declare-fun lt!2373868 () List!65232)

(assert (=> b!6401214 (= res!2632019 (= (size!40369 lt!2373868) (+ (size!40369 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108))) (size!40369 (t!378840 s!2326)))))))

(declare-fun b!6401215 () Bool)

(assert (=> b!6401215 (= e!3884803 (or (not (= (t!378840 s!2326) Nil!65108)) (= lt!2373868 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)))))))

(declare-fun b!6401212 () Bool)

(assert (=> b!6401212 (= e!3884804 (t!378840 s!2326))))

(declare-fun d!2006753 () Bool)

(assert (=> d!2006753 e!3884803))

(declare-fun res!2632018 () Bool)

(assert (=> d!2006753 (=> (not res!2632018) (not e!3884803))))

(assert (=> d!2006753 (= res!2632018 (= (content!12334 lt!2373868) ((_ map or) (content!12334 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108))) (content!12334 (t!378840 s!2326)))))))

(assert (=> d!2006753 (= lt!2373868 e!3884804)))

(declare-fun c!1167852 () Bool)

(assert (=> d!2006753 (= c!1167852 ((_ is Nil!65108) (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108))))))

(assert (=> d!2006753 (= (++!14379 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (t!378840 s!2326)) lt!2373868)))

(assert (= (and d!2006753 c!1167852) b!6401212))

(assert (= (and d!2006753 (not c!1167852)) b!6401213))

(assert (= (and d!2006753 res!2632018) b!6401214))

(assert (= (and b!6401214 res!2632019) b!6401215))

(declare-fun m!7198364 () Bool)

(assert (=> b!6401213 m!7198364))

(declare-fun m!7198366 () Bool)

(assert (=> b!6401214 m!7198366))

(assert (=> b!6401214 m!7197474))

(declare-fun m!7198368 () Bool)

(assert (=> b!6401214 m!7198368))

(declare-fun m!7198370 () Bool)

(assert (=> b!6401214 m!7198370))

(declare-fun m!7198372 () Bool)

(assert (=> d!2006753 m!7198372))

(assert (=> d!2006753 m!7197474))

(declare-fun m!7198374 () Bool)

(assert (=> d!2006753 m!7198374))

(declare-fun m!7198376 () Bool)

(assert (=> d!2006753 m!7198376))

(assert (=> b!6400556 d!2006753))

(declare-fun b!6401217 () Bool)

(declare-fun e!3884806 () List!65232)

(assert (=> b!6401217 (= e!3884806 (Cons!65108 (h!71556 Nil!65108) (++!14379 (t!378840 Nil!65108) (Cons!65108 (h!71556 s!2326) Nil!65108))))))

(declare-fun b!6401218 () Bool)

(declare-fun res!2632021 () Bool)

(declare-fun e!3884805 () Bool)

(assert (=> b!6401218 (=> (not res!2632021) (not e!3884805))))

(declare-fun lt!2373869 () List!65232)

(assert (=> b!6401218 (= res!2632021 (= (size!40369 lt!2373869) (+ (size!40369 Nil!65108) (size!40369 (Cons!65108 (h!71556 s!2326) Nil!65108)))))))

(declare-fun b!6401219 () Bool)

(assert (=> b!6401219 (= e!3884805 (or (not (= (Cons!65108 (h!71556 s!2326) Nil!65108) Nil!65108)) (= lt!2373869 Nil!65108)))))

(declare-fun b!6401216 () Bool)

(assert (=> b!6401216 (= e!3884806 (Cons!65108 (h!71556 s!2326) Nil!65108))))

(declare-fun d!2006755 () Bool)

(assert (=> d!2006755 e!3884805))

(declare-fun res!2632020 () Bool)

(assert (=> d!2006755 (=> (not res!2632020) (not e!3884805))))

(assert (=> d!2006755 (= res!2632020 (= (content!12334 lt!2373869) ((_ map or) (content!12334 Nil!65108) (content!12334 (Cons!65108 (h!71556 s!2326) Nil!65108)))))))

(assert (=> d!2006755 (= lt!2373869 e!3884806)))

(declare-fun c!1167853 () Bool)

(assert (=> d!2006755 (= c!1167853 ((_ is Nil!65108) Nil!65108))))

(assert (=> d!2006755 (= (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) lt!2373869)))

(assert (= (and d!2006755 c!1167853) b!6401216))

(assert (= (and d!2006755 (not c!1167853)) b!6401217))

(assert (= (and d!2006755 res!2632020) b!6401218))

(assert (= (and b!6401218 res!2632021) b!6401219))

(declare-fun m!7198378 () Bool)

(assert (=> b!6401217 m!7198378))

(declare-fun m!7198380 () Bool)

(assert (=> b!6401218 m!7198380))

(declare-fun m!7198382 () Bool)

(assert (=> b!6401218 m!7198382))

(declare-fun m!7198384 () Bool)

(assert (=> b!6401218 m!7198384))

(declare-fun m!7198386 () Bool)

(assert (=> d!2006755 m!7198386))

(declare-fun m!7198388 () Bool)

(assert (=> d!2006755 m!7198388))

(declare-fun m!7198390 () Bool)

(assert (=> d!2006755 m!7198390))

(assert (=> b!6400556 d!2006755))

(declare-fun d!2006757 () Bool)

(assert (=> d!2006757 (= (++!14379 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (t!378840 s!2326)) s!2326)))

(declare-fun lt!2373873 () Unit!158575)

(declare-fun choose!47601 (List!65232 C!32892 List!65232 List!65232) Unit!158575)

(assert (=> d!2006757 (= lt!2373873 (choose!47601 Nil!65108 (h!71556 s!2326) (t!378840 s!2326) s!2326))))

(assert (=> d!2006757 (= (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) (t!378840 s!2326))) s!2326)))

(assert (=> d!2006757 (= (lemmaMoveElementToOtherListKeepsConcatEq!2473 Nil!65108 (h!71556 s!2326) (t!378840 s!2326) s!2326) lt!2373873)))

(declare-fun bs!1604913 () Bool)

(assert (= bs!1604913 d!2006757))

(assert (=> bs!1604913 m!7197474))

(assert (=> bs!1604913 m!7197474))

(assert (=> bs!1604913 m!7197476))

(declare-fun m!7198412 () Bool)

(assert (=> bs!1604913 m!7198412))

(declare-fun m!7198414 () Bool)

(assert (=> bs!1604913 m!7198414))

(assert (=> b!6400556 d!2006757))

(declare-fun b!6401245 () Bool)

(declare-fun e!3884827 () Option!16202)

(declare-fun e!3884826 () Option!16202)

(assert (=> b!6401245 (= e!3884827 e!3884826)))

(declare-fun c!1167859 () Bool)

(assert (=> b!6401245 (= c!1167859 ((_ is Nil!65108) (t!378840 s!2326)))))

(declare-fun b!6401246 () Bool)

(declare-fun lt!2373874 () Unit!158575)

(declare-fun lt!2373876 () Unit!158575)

(assert (=> b!6401246 (= lt!2373874 lt!2373876)))

(assert (=> b!6401246 (= (++!14379 (++!14379 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (Cons!65108 (h!71556 (t!378840 s!2326)) Nil!65108)) (t!378840 (t!378840 s!2326))) s!2326)))

(assert (=> b!6401246 (= lt!2373876 (lemmaMoveElementToOtherListKeepsConcatEq!2473 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (h!71556 (t!378840 s!2326)) (t!378840 (t!378840 s!2326)) s!2326))))

(assert (=> b!6401246 (= e!3884826 (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) (++!14379 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (Cons!65108 (h!71556 (t!378840 s!2326)) Nil!65108)) (t!378840 (t!378840 s!2326)) s!2326))))

(declare-fun b!6401247 () Bool)

(declare-fun e!3884823 () Bool)

(declare-fun lt!2373875 () Option!16202)

(assert (=> b!6401247 (= e!3884823 (not (isDefined!12905 lt!2373875)))))

(declare-fun b!6401248 () Bool)

(declare-fun res!2632041 () Bool)

(declare-fun e!3884824 () Bool)

(assert (=> b!6401248 (=> (not res!2632041) (not e!3884824))))

(assert (=> b!6401248 (= res!2632041 (matchR!8494 (regTwo!33134 r!7292) (_2!36593 (get!22550 lt!2373875))))))

(declare-fun b!6401249 () Bool)

(declare-fun e!3884825 () Bool)

(assert (=> b!6401249 (= e!3884825 (matchR!8494 (regTwo!33134 r!7292) (t!378840 s!2326)))))

(declare-fun b!6401250 () Bool)

(assert (=> b!6401250 (= e!3884826 None!16201)))

(declare-fun b!6401251 () Bool)

(assert (=> b!6401251 (= e!3884824 (= (++!14379 (_1!36593 (get!22550 lt!2373875)) (_2!36593 (get!22550 lt!2373875))) s!2326))))

(declare-fun b!6401252 () Bool)

(declare-fun res!2632038 () Bool)

(assert (=> b!6401252 (=> (not res!2632038) (not e!3884824))))

(assert (=> b!6401252 (= res!2632038 (matchR!8494 (regOne!33134 r!7292) (_1!36593 (get!22550 lt!2373875))))))

(declare-fun d!2006769 () Bool)

(assert (=> d!2006769 e!3884823))

(declare-fun res!2632040 () Bool)

(assert (=> d!2006769 (=> res!2632040 e!3884823)))

(assert (=> d!2006769 (= res!2632040 e!3884824)))

(declare-fun res!2632037 () Bool)

(assert (=> d!2006769 (=> (not res!2632037) (not e!3884824))))

(assert (=> d!2006769 (= res!2632037 (isDefined!12905 lt!2373875))))

(assert (=> d!2006769 (= lt!2373875 e!3884827)))

(declare-fun c!1167860 () Bool)

(assert (=> d!2006769 (= c!1167860 e!3884825)))

(declare-fun res!2632039 () Bool)

(assert (=> d!2006769 (=> (not res!2632039) (not e!3884825))))

(assert (=> d!2006769 (= res!2632039 (matchR!8494 (regOne!33134 r!7292) (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108))))))

(assert (=> d!2006769 (validRegex!8047 (regOne!33134 r!7292))))

(assert (=> d!2006769 (= (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (t!378840 s!2326) s!2326) lt!2373875)))

(declare-fun b!6401253 () Bool)

(assert (=> b!6401253 (= e!3884827 (Some!16201 (tuple2!66581 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (t!378840 s!2326))))))

(assert (= (and d!2006769 res!2632039) b!6401249))

(assert (= (and d!2006769 c!1167860) b!6401253))

(assert (= (and d!2006769 (not c!1167860)) b!6401245))

(assert (= (and b!6401245 c!1167859) b!6401250))

(assert (= (and b!6401245 (not c!1167859)) b!6401246))

(assert (= (and d!2006769 res!2632037) b!6401252))

(assert (= (and b!6401252 res!2632038) b!6401248))

(assert (= (and b!6401248 res!2632041) b!6401251))

(assert (= (and d!2006769 (not res!2632040)) b!6401247))

(declare-fun m!7198422 () Bool)

(assert (=> b!6401248 m!7198422))

(declare-fun m!7198424 () Bool)

(assert (=> b!6401248 m!7198424))

(assert (=> b!6401252 m!7198422))

(declare-fun m!7198426 () Bool)

(assert (=> b!6401252 m!7198426))

(declare-fun m!7198428 () Bool)

(assert (=> b!6401249 m!7198428))

(declare-fun m!7198430 () Bool)

(assert (=> d!2006769 m!7198430))

(assert (=> d!2006769 m!7197474))

(declare-fun m!7198432 () Bool)

(assert (=> d!2006769 m!7198432))

(assert (=> d!2006769 m!7197882))

(assert (=> b!6401246 m!7197474))

(declare-fun m!7198434 () Bool)

(assert (=> b!6401246 m!7198434))

(assert (=> b!6401246 m!7198434))

(declare-fun m!7198436 () Bool)

(assert (=> b!6401246 m!7198436))

(assert (=> b!6401246 m!7197474))

(declare-fun m!7198440 () Bool)

(assert (=> b!6401246 m!7198440))

(assert (=> b!6401246 m!7198434))

(declare-fun m!7198444 () Bool)

(assert (=> b!6401246 m!7198444))

(assert (=> b!6401247 m!7198430))

(assert (=> b!6401251 m!7198422))

(declare-fun m!7198446 () Bool)

(assert (=> b!6401251 m!7198446))

(assert (=> b!6400556 d!2006769))

(declare-fun d!2006775 () Bool)

(assert (=> d!2006775 (= (isConcat!1234 lt!2373774) ((_ is Concat!25156) lt!2373774))))

(assert (=> b!6400215 d!2006775))

(declare-fun b!6401256 () Bool)

(declare-fun e!3884831 () (InoxSet Context!11390))

(declare-fun call!548642 () (InoxSet Context!11390))

(declare-fun call!548645 () (InoxSet Context!11390))

(assert (=> b!6401256 (= e!3884831 ((_ map or) call!548642 call!548645))))

(declare-fun b!6401257 () Bool)

(declare-fun c!1167863 () Bool)

(declare-fun e!3884834 () Bool)

(assert (=> b!6401257 (= c!1167863 e!3884834)))

(declare-fun res!2632044 () Bool)

(assert (=> b!6401257 (=> (not res!2632044) (not e!3884834))))

(assert (=> b!6401257 (= res!2632044 ((_ is Concat!25156) (h!71557 (exprs!6195 lt!2373652))))))

(declare-fun e!3884833 () (InoxSet Context!11390))

(assert (=> b!6401257 (= e!3884831 e!3884833)))

(declare-fun bm!548635 () Bool)

(declare-fun call!548644 () (InoxSet Context!11390))

(assert (=> bm!548635 (= call!548644 call!548642)))

(declare-fun bm!548636 () Bool)

(declare-fun call!548640 () List!65233)

(declare-fun c!1167861 () Bool)

(assert (=> bm!548636 (= call!548645 (derivationStepZipperDown!1559 (ite c!1167861 (regTwo!33135 (h!71557 (exprs!6195 lt!2373652))) (regOne!33134 (h!71557 (exprs!6195 lt!2373652)))) (ite c!1167861 (Context!11391 (t!378841 (exprs!6195 lt!2373652))) (Context!11391 call!548640)) (h!71556 s!2326)))))

(declare-fun b!6401258 () Bool)

(declare-fun e!3884832 () (InoxSet Context!11390))

(assert (=> b!6401258 (= e!3884832 e!3884831)))

(assert (=> b!6401258 (= c!1167861 ((_ is Union!16311) (h!71557 (exprs!6195 lt!2373652))))))

(declare-fun b!6401259 () Bool)

(assert (=> b!6401259 (= e!3884833 ((_ map or) call!548645 call!548644))))

(declare-fun bm!548637 () Bool)

(declare-fun call!548641 () List!65233)

(assert (=> bm!548637 (= call!548641 call!548640)))

(declare-fun b!6401260 () Bool)

(declare-fun e!3884835 () (InoxSet Context!11390))

(assert (=> b!6401260 (= e!3884833 e!3884835)))

(declare-fun c!1167864 () Bool)

(assert (=> b!6401260 (= c!1167864 ((_ is Concat!25156) (h!71557 (exprs!6195 lt!2373652))))))

(declare-fun b!6401261 () Bool)

(declare-fun call!548643 () (InoxSet Context!11390))

(assert (=> b!6401261 (= e!3884835 call!548643)))

(declare-fun bm!548638 () Bool)

(assert (=> bm!548638 (= call!548642 (derivationStepZipperDown!1559 (ite c!1167861 (regOne!33135 (h!71557 (exprs!6195 lt!2373652))) (ite c!1167863 (regTwo!33134 (h!71557 (exprs!6195 lt!2373652))) (ite c!1167864 (regOne!33134 (h!71557 (exprs!6195 lt!2373652))) (reg!16640 (h!71557 (exprs!6195 lt!2373652)))))) (ite (or c!1167861 c!1167863) (Context!11391 (t!378841 (exprs!6195 lt!2373652))) (Context!11391 call!548641)) (h!71556 s!2326)))))

(declare-fun b!6401262 () Bool)

(declare-fun e!3884830 () (InoxSet Context!11390))

(assert (=> b!6401262 (= e!3884830 call!548643)))

(declare-fun bm!548639 () Bool)

(assert (=> bm!548639 (= call!548640 ($colon$colon!2172 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373652)))) (ite (or c!1167863 c!1167864) (regTwo!33134 (h!71557 (exprs!6195 lt!2373652))) (h!71557 (exprs!6195 lt!2373652)))))))

(declare-fun d!2006777 () Bool)

(declare-fun c!1167865 () Bool)

(assert (=> d!2006777 (= c!1167865 (and ((_ is ElementMatch!16311) (h!71557 (exprs!6195 lt!2373652))) (= (c!1167428 (h!71557 (exprs!6195 lt!2373652))) (h!71556 s!2326))))))

(assert (=> d!2006777 (= (derivationStepZipperDown!1559 (h!71557 (exprs!6195 lt!2373652)) (Context!11391 (t!378841 (exprs!6195 lt!2373652))) (h!71556 s!2326)) e!3884832)))

(declare-fun b!6401263 () Bool)

(assert (=> b!6401263 (= e!3884830 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6401264 () Bool)

(declare-fun c!1167862 () Bool)

(assert (=> b!6401264 (= c!1167862 ((_ is Star!16311) (h!71557 (exprs!6195 lt!2373652))))))

(assert (=> b!6401264 (= e!3884835 e!3884830)))

(declare-fun b!6401265 () Bool)

(assert (=> b!6401265 (= e!3884832 (store ((as const (Array Context!11390 Bool)) false) (Context!11391 (t!378841 (exprs!6195 lt!2373652))) true))))

(declare-fun b!6401266 () Bool)

(assert (=> b!6401266 (= e!3884834 (nullable!6304 (regOne!33134 (h!71557 (exprs!6195 lt!2373652)))))))

(declare-fun bm!548640 () Bool)

(assert (=> bm!548640 (= call!548643 call!548644)))

(assert (= (and d!2006777 c!1167865) b!6401265))

(assert (= (and d!2006777 (not c!1167865)) b!6401258))

(assert (= (and b!6401258 c!1167861) b!6401256))

(assert (= (and b!6401258 (not c!1167861)) b!6401257))

(assert (= (and b!6401257 res!2632044) b!6401266))

(assert (= (and b!6401257 c!1167863) b!6401259))

(assert (= (and b!6401257 (not c!1167863)) b!6401260))

(assert (= (and b!6401260 c!1167864) b!6401261))

(assert (= (and b!6401260 (not c!1167864)) b!6401264))

(assert (= (and b!6401264 c!1167862) b!6401262))

(assert (= (and b!6401264 (not c!1167862)) b!6401263))

(assert (= (or b!6401261 b!6401262) bm!548637))

(assert (= (or b!6401261 b!6401262) bm!548640))

(assert (= (or b!6401259 bm!548637) bm!548639))

(assert (= (or b!6401259 bm!548640) bm!548635))

(assert (= (or b!6401256 b!6401259) bm!548636))

(assert (= (or b!6401256 bm!548635) bm!548638))

(declare-fun m!7198448 () Bool)

(assert (=> bm!548636 m!7198448))

(declare-fun m!7198450 () Bool)

(assert (=> bm!548638 m!7198450))

(declare-fun m!7198452 () Bool)

(assert (=> b!6401265 m!7198452))

(declare-fun m!7198454 () Bool)

(assert (=> b!6401266 m!7198454))

(declare-fun m!7198456 () Bool)

(assert (=> bm!548639 m!7198456))

(assert (=> bm!548427 d!2006777))

(assert (=> b!6400840 d!2006431))

(declare-fun d!2006779 () Bool)

(declare-fun c!1167866 () Bool)

(assert (=> d!2006779 (= c!1167866 (isEmpty!37253 (tail!12198 (t!378840 s!2326))))))

(declare-fun e!3884838 () Bool)

(assert (=> d!2006779 (= (matchZipper!2323 (derivationStepZipper!2277 lt!2373665 (head!13113 (t!378840 s!2326))) (tail!12198 (t!378840 s!2326))) e!3884838)))

(declare-fun b!6401269 () Bool)

(assert (=> b!6401269 (= e!3884838 (nullableZipper!2076 (derivationStepZipper!2277 lt!2373665 (head!13113 (t!378840 s!2326)))))))

(declare-fun b!6401270 () Bool)

(assert (=> b!6401270 (= e!3884838 (matchZipper!2323 (derivationStepZipper!2277 (derivationStepZipper!2277 lt!2373665 (head!13113 (t!378840 s!2326))) (head!13113 (tail!12198 (t!378840 s!2326)))) (tail!12198 (tail!12198 (t!378840 s!2326)))))))

(assert (= (and d!2006779 c!1167866) b!6401269))

(assert (= (and d!2006779 (not c!1167866)) b!6401270))

(assert (=> d!2006779 m!7197644))

(assert (=> d!2006779 m!7198300))

(assert (=> b!6401269 m!7197866))

(declare-fun m!7198458 () Bool)

(assert (=> b!6401269 m!7198458))

(assert (=> b!6401270 m!7197644))

(assert (=> b!6401270 m!7198305))

(assert (=> b!6401270 m!7197866))

(assert (=> b!6401270 m!7198305))

(declare-fun m!7198460 () Bool)

(assert (=> b!6401270 m!7198460))

(assert (=> b!6401270 m!7197644))

(assert (=> b!6401270 m!7198310))

(assert (=> b!6401270 m!7198460))

(assert (=> b!6401270 m!7198310))

(declare-fun m!7198462 () Bool)

(assert (=> b!6401270 m!7198462))

(assert (=> b!6400554 d!2006779))

(declare-fun bs!1604914 () Bool)

(declare-fun d!2006781 () Bool)

(assert (= bs!1604914 (and d!2006781 b!6399793)))

(declare-fun lambda!353429 () Int)

(assert (=> bs!1604914 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353429 lambda!353313))))

(declare-fun bs!1604915 () Bool)

(assert (= bs!1604915 (and d!2006781 d!2006491)))

(assert (=> bs!1604915 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353429 lambda!353390))))

(declare-fun bs!1604916 () Bool)

(assert (= bs!1604916 (and d!2006781 d!2006529)))

(assert (=> bs!1604916 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353429 lambda!353396))))

(declare-fun bs!1604917 () Bool)

(assert (= bs!1604917 (and d!2006781 d!2006719)))

(assert (=> bs!1604917 (= lambda!353429 lambda!353425)))

(assert (=> d!2006781 true))

(assert (=> d!2006781 (= (derivationStepZipper!2277 lt!2373665 (head!13113 (t!378840 s!2326))) (flatMap!1816 lt!2373665 lambda!353429))))

(declare-fun bs!1604918 () Bool)

(assert (= bs!1604918 d!2006781))

(declare-fun m!7198464 () Bool)

(assert (=> bs!1604918 m!7198464))

(assert (=> b!6400554 d!2006781))

(assert (=> b!6400554 d!2006721))

(assert (=> b!6400554 d!2006723))

(assert (=> d!2006497 d!2006493))

(declare-fun d!2006783 () Bool)

(assert (=> d!2006783 (= (flatMap!1816 lt!2373688 lambda!353313) (dynLambda!25841 lambda!353313 lt!2373656))))

(assert (=> d!2006783 true))

(declare-fun _$13!3594 () Unit!158575)

(assert (=> d!2006783 (= (choose!47593 lt!2373688 lt!2373656 lambda!353313) _$13!3594)))

(declare-fun b_lambda!243255 () Bool)

(assert (=> (not b_lambda!243255) (not d!2006783)))

(declare-fun bs!1604919 () Bool)

(assert (= bs!1604919 d!2006783))

(assert (=> bs!1604919 m!7197208))

(assert (=> bs!1604919 m!7197834))

(assert (=> d!2006497 d!2006783))

(declare-fun d!2006787 () Bool)

(assert (=> d!2006787 (= (head!13113 (_2!36593 lt!2373686)) (h!71556 (_2!36593 lt!2373686)))))

(assert (=> b!6400771 d!2006787))

(assert (=> d!2006505 d!2006655))

(declare-fun d!2006789 () Bool)

(assert (=> d!2006789 (= (isConcat!1234 lt!2373831) ((_ is Concat!25156) lt!2373831))))

(assert (=> b!6400722 d!2006789))

(declare-fun b!6401290 () Bool)

(declare-fun e!3884851 () List!65232)

(assert (=> b!6401290 (= e!3884851 (Cons!65108 (h!71556 (_1!36593 (get!22550 lt!2373821))) (++!14379 (t!378840 (_1!36593 (get!22550 lt!2373821))) (_2!36593 (get!22550 lt!2373821)))))))

(declare-fun b!6401291 () Bool)

(declare-fun res!2632052 () Bool)

(declare-fun e!3884850 () Bool)

(assert (=> b!6401291 (=> (not res!2632052) (not e!3884850))))

(declare-fun lt!2373878 () List!65232)

(assert (=> b!6401291 (= res!2632052 (= (size!40369 lt!2373878) (+ (size!40369 (_1!36593 (get!22550 lt!2373821))) (size!40369 (_2!36593 (get!22550 lt!2373821))))))))

(declare-fun b!6401292 () Bool)

(assert (=> b!6401292 (= e!3884850 (or (not (= (_2!36593 (get!22550 lt!2373821)) Nil!65108)) (= lt!2373878 (_1!36593 (get!22550 lt!2373821)))))))

(declare-fun b!6401289 () Bool)

(assert (=> b!6401289 (= e!3884851 (_2!36593 (get!22550 lt!2373821)))))

(declare-fun d!2006791 () Bool)

(assert (=> d!2006791 e!3884850))

(declare-fun res!2632051 () Bool)

(assert (=> d!2006791 (=> (not res!2632051) (not e!3884850))))

(assert (=> d!2006791 (= res!2632051 (= (content!12334 lt!2373878) ((_ map or) (content!12334 (_1!36593 (get!22550 lt!2373821))) (content!12334 (_2!36593 (get!22550 lt!2373821))))))))

(assert (=> d!2006791 (= lt!2373878 e!3884851)))

(declare-fun c!1167874 () Bool)

(assert (=> d!2006791 (= c!1167874 ((_ is Nil!65108) (_1!36593 (get!22550 lt!2373821))))))

(assert (=> d!2006791 (= (++!14379 (_1!36593 (get!22550 lt!2373821)) (_2!36593 (get!22550 lt!2373821))) lt!2373878)))

(assert (= (and d!2006791 c!1167874) b!6401289))

(assert (= (and d!2006791 (not c!1167874)) b!6401290))

(assert (= (and d!2006791 res!2632051) b!6401291))

(assert (= (and b!6401291 res!2632052) b!6401292))

(declare-fun m!7198468 () Bool)

(assert (=> b!6401290 m!7198468))

(declare-fun m!7198470 () Bool)

(assert (=> b!6401291 m!7198470))

(declare-fun m!7198472 () Bool)

(assert (=> b!6401291 m!7198472))

(declare-fun m!7198474 () Bool)

(assert (=> b!6401291 m!7198474))

(declare-fun m!7198476 () Bool)

(assert (=> d!2006791 m!7198476))

(declare-fun m!7198478 () Bool)

(assert (=> d!2006791 m!7198478))

(declare-fun m!7198480 () Bool)

(assert (=> d!2006791 m!7198480))

(assert (=> b!6400561 d!2006791))

(declare-fun d!2006793 () Bool)

(assert (=> d!2006793 (= (get!22550 lt!2373821) (v!52372 lt!2373821))))

(assert (=> b!6400561 d!2006793))

(declare-fun d!2006795 () Bool)

(assert (=> d!2006795 (= (isUnion!1148 lt!2373783) ((_ is Union!16311) lt!2373783))))

(assert (=> b!6400278 d!2006795))

(declare-fun d!2006797 () Bool)

(assert (=> d!2006797 (= (nullable!6304 (reg!16640 r!7292)) (nullableFct!2250 (reg!16640 r!7292)))))

(declare-fun bs!1604920 () Bool)

(assert (= bs!1604920 d!2006797))

(declare-fun m!7198492 () Bool)

(assert (=> bs!1604920 m!7198492))

(assert (=> b!6400642 d!2006797))

(declare-fun b!6401293 () Bool)

(declare-fun c!1167875 () Bool)

(assert (=> b!6401293 (= c!1167875 ((_ is Union!16311) (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun e!3884859 () Int)

(declare-fun e!3884854 () Int)

(assert (=> b!6401293 (= e!3884859 e!3884854)))

(declare-fun bm!548648 () Bool)

(declare-fun call!548658 () Int)

(assert (=> bm!548648 (= call!548658 (regexDepth!338 (ite c!1167875 (regOne!33135 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (regTwo!33134 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))))

(declare-fun call!548656 () Int)

(declare-fun bm!548649 () Bool)

(declare-fun call!548659 () Int)

(assert (=> bm!548649 (= call!548659 (maxBigInt!0 (ite c!1167875 call!548658 call!548656) (ite c!1167875 call!548656 call!548658)))))

(declare-fun b!6401294 () Bool)

(declare-fun call!548655 () Int)

(assert (=> b!6401294 (= e!3884859 (+ 1 call!548655))))

(declare-fun b!6401295 () Bool)

(declare-fun e!3884855 () Bool)

(declare-fun lt!2373879 () Int)

(assert (=> b!6401295 (= e!3884855 (= lt!2373879 1))))

(declare-fun b!6401297 () Bool)

(declare-fun res!2632054 () Bool)

(declare-fun e!3884853 () Bool)

(assert (=> b!6401297 (=> (not res!2632054) (not e!3884853))))

(declare-fun call!548653 () Int)

(assert (=> b!6401297 (= res!2632054 (> lt!2373879 call!548653))))

(declare-fun e!3884856 () Bool)

(assert (=> b!6401297 (= e!3884856 e!3884853)))

(declare-fun b!6401298 () Bool)

(declare-fun e!3884860 () Int)

(assert (=> b!6401298 (= e!3884860 e!3884859)))

(declare-fun c!1167881 () Bool)

(assert (=> b!6401298 (= c!1167881 ((_ is Star!16311) (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun b!6401299 () Bool)

(declare-fun e!3884858 () Bool)

(assert (=> b!6401299 (= e!3884858 e!3884856)))

(declare-fun c!1167876 () Bool)

(assert (=> b!6401299 (= c!1167876 ((_ is Concat!25156) (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun b!6401300 () Bool)

(declare-fun call!548654 () Int)

(assert (=> b!6401300 (= e!3884853 (> lt!2373879 call!548654))))

(declare-fun b!6401301 () Bool)

(assert (=> b!6401301 (= e!3884854 (+ 1 call!548659))))

(declare-fun b!6401302 () Bool)

(assert (=> b!6401302 (= e!3884855 (> lt!2373879 call!548653))))

(declare-fun b!6401303 () Bool)

(declare-fun e!3884852 () Int)

(assert (=> b!6401303 (= e!3884852 (+ 1 call!548659))))

(declare-fun b!6401304 () Bool)

(declare-fun e!3884857 () Bool)

(declare-fun call!548657 () Int)

(assert (=> b!6401304 (= e!3884857 (> lt!2373879 call!548657))))

(declare-fun b!6401305 () Bool)

(declare-fun e!3884861 () Bool)

(assert (=> b!6401305 (= e!3884861 e!3884858)))

(declare-fun c!1167877 () Bool)

(assert (=> b!6401305 (= c!1167877 ((_ is Union!16311) (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun bm!548650 () Bool)

(assert (=> bm!548650 (= call!548655 (regexDepth!338 (ite c!1167881 (reg!16640 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (ite c!1167875 (regTwo!33135 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (regOne!33134 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661)))))))))

(declare-fun b!6401306 () Bool)

(declare-fun c!1167878 () Bool)

(assert (=> b!6401306 (= c!1167878 ((_ is Star!16311) (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(assert (=> b!6401306 (= e!3884856 e!3884855)))

(declare-fun d!2006801 () Bool)

(assert (=> d!2006801 e!3884861))

(declare-fun res!2632055 () Bool)

(assert (=> d!2006801 (=> (not res!2632055) (not e!3884861))))

(assert (=> d!2006801 (= res!2632055 (> lt!2373879 0))))

(assert (=> d!2006801 (= lt!2373879 e!3884860)))

(declare-fun c!1167879 () Bool)

(assert (=> d!2006801 (= c!1167879 ((_ is ElementMatch!16311) (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(assert (=> d!2006801 (= (regexDepth!338 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) lt!2373879)))

(declare-fun b!6401296 () Bool)

(assert (=> b!6401296 (= e!3884854 e!3884852)))

(declare-fun c!1167880 () Bool)

(assert (=> b!6401296 (= c!1167880 ((_ is Concat!25156) (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))

(declare-fun b!6401307 () Bool)

(assert (=> b!6401307 (= e!3884860 1)))

(declare-fun bm!548651 () Bool)

(assert (=> bm!548651 (= call!548654 (regexDepth!338 (ite c!1167877 (regOne!33135 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (regTwo!33134 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))))))))

(declare-fun b!6401308 () Bool)

(assert (=> b!6401308 (= e!3884858 e!3884857)))

(declare-fun res!2632053 () Bool)

(assert (=> b!6401308 (= res!2632053 (> lt!2373879 call!548654))))

(assert (=> b!6401308 (=> (not res!2632053) (not e!3884857))))

(declare-fun bm!548652 () Bool)

(assert (=> bm!548652 (= call!548657 (regexDepth!338 (ite c!1167877 (regTwo!33135 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (ite c!1167876 (regOne!33134 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661))) (reg!16640 (ite c!1167703 (regOne!33135 lt!2373661) (regTwo!33134 lt!2373661)))))))))

(declare-fun bm!548653 () Bool)

(assert (=> bm!548653 (= call!548653 call!548657)))

(declare-fun bm!548654 () Bool)

(assert (=> bm!548654 (= call!548656 call!548655)))

(declare-fun b!6401309 () Bool)

(assert (=> b!6401309 (= e!3884852 1)))

(assert (= (and d!2006801 c!1167879) b!6401307))

(assert (= (and d!2006801 (not c!1167879)) b!6401298))

(assert (= (and b!6401298 c!1167881) b!6401294))

(assert (= (and b!6401298 (not c!1167881)) b!6401293))

(assert (= (and b!6401293 c!1167875) b!6401301))

(assert (= (and b!6401293 (not c!1167875)) b!6401296))

(assert (= (and b!6401296 c!1167880) b!6401303))

(assert (= (and b!6401296 (not c!1167880)) b!6401309))

(assert (= (or b!6401301 b!6401303) bm!548654))

(assert (= (or b!6401301 b!6401303) bm!548648))

(assert (= (or b!6401301 b!6401303) bm!548649))

(assert (= (or b!6401294 bm!548654) bm!548650))

(assert (= (and d!2006801 res!2632055) b!6401305))

(assert (= (and b!6401305 c!1167877) b!6401308))

(assert (= (and b!6401305 (not c!1167877)) b!6401299))

(assert (= (and b!6401308 res!2632053) b!6401304))

(assert (= (and b!6401299 c!1167876) b!6401297))

(assert (= (and b!6401299 (not c!1167876)) b!6401306))

(assert (= (and b!6401297 res!2632054) b!6401300))

(assert (= (and b!6401306 c!1167878) b!6401302))

(assert (= (and b!6401306 (not c!1167878)) b!6401295))

(assert (= (or b!6401297 b!6401302) bm!548653))

(assert (= (or b!6401304 bm!548653) bm!548652))

(assert (= (or b!6401308 b!6401300) bm!548651))

(declare-fun m!7198494 () Bool)

(assert (=> bm!548649 m!7198494))

(declare-fun m!7198496 () Bool)

(assert (=> bm!548650 m!7198496))

(declare-fun m!7198498 () Bool)

(assert (=> bm!548651 m!7198498))

(declare-fun m!7198500 () Bool)

(assert (=> bm!548652 m!7198500))

(declare-fun m!7198502 () Bool)

(assert (=> bm!548648 m!7198502))

(assert (=> bm!548516 d!2006801))

(declare-fun d!2006803 () Bool)

(declare-fun c!1167884 () Bool)

(assert (=> d!2006803 (= c!1167884 ((_ is Nil!65110) lt!2373826))))

(declare-fun e!3884864 () (InoxSet Context!11390))

(assert (=> d!2006803 (= (content!12335 lt!2373826) e!3884864)))

(declare-fun b!6401314 () Bool)

(assert (=> b!6401314 (= e!3884864 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6401315 () Bool)

(assert (=> b!6401315 (= e!3884864 ((_ map or) (store ((as const (Array Context!11390 Bool)) false) (h!71558 lt!2373826) true) (content!12335 (t!378842 lt!2373826))))))

(assert (= (and d!2006803 c!1167884) b!6401314))

(assert (= (and d!2006803 (not c!1167884)) b!6401315))

(declare-fun m!7198504 () Bool)

(assert (=> b!6401315 m!7198504))

(declare-fun m!7198506 () Bool)

(assert (=> b!6401315 m!7198506))

(assert (=> b!6400650 d!2006803))

(declare-fun b!6401318 () Bool)

(declare-fun res!2632057 () Bool)

(declare-fun e!3884870 () Bool)

(assert (=> b!6401318 (=> (not res!2632057) (not e!3884870))))

(declare-fun call!548662 () Bool)

(assert (=> b!6401318 (= res!2632057 call!548662)))

(declare-fun e!3884866 () Bool)

(assert (=> b!6401318 (= e!3884866 e!3884870)))

(declare-fun call!548661 () Bool)

(declare-fun bm!548655 () Bool)

(declare-fun c!1167887 () Bool)

(declare-fun c!1167886 () Bool)

(assert (=> bm!548655 (= call!548661 (validRegex!8047 (ite c!1167886 (reg!16640 lt!2373837) (ite c!1167887 (regTwo!33135 lt!2373837) (regTwo!33134 lt!2373837)))))))

(declare-fun b!6401319 () Bool)

(declare-fun e!3884867 () Bool)

(declare-fun e!3884868 () Bool)

(assert (=> b!6401319 (= e!3884867 e!3884868)))

(declare-fun res!2632059 () Bool)

(assert (=> b!6401319 (= res!2632059 (not (nullable!6304 (reg!16640 lt!2373837))))))

(assert (=> b!6401319 (=> (not res!2632059) (not e!3884868))))

(declare-fun b!6401320 () Bool)

(declare-fun e!3884872 () Bool)

(assert (=> b!6401320 (= e!3884872 e!3884867)))

(assert (=> b!6401320 (= c!1167886 ((_ is Star!16311) lt!2373837))))

(declare-fun b!6401321 () Bool)

(declare-fun res!2632056 () Bool)

(declare-fun e!3884871 () Bool)

(assert (=> b!6401321 (=> res!2632056 e!3884871)))

(assert (=> b!6401321 (= res!2632056 (not ((_ is Concat!25156) lt!2373837)))))

(assert (=> b!6401321 (= e!3884866 e!3884871)))

(declare-fun b!6401322 () Bool)

(assert (=> b!6401322 (= e!3884868 call!548661)))

(declare-fun b!6401323 () Bool)

(assert (=> b!6401323 (= e!3884867 e!3884866)))

(assert (=> b!6401323 (= c!1167887 ((_ is Union!16311) lt!2373837))))

(declare-fun b!6401324 () Bool)

(declare-fun call!548660 () Bool)

(assert (=> b!6401324 (= e!3884870 call!548660)))

(declare-fun b!6401325 () Bool)

(declare-fun e!3884869 () Bool)

(assert (=> b!6401325 (= e!3884869 call!548660)))

(declare-fun bm!548657 () Bool)

(assert (=> bm!548657 (= call!548660 call!548661)))

(declare-fun b!6401326 () Bool)

(assert (=> b!6401326 (= e!3884871 e!3884869)))

(declare-fun res!2632060 () Bool)

(assert (=> b!6401326 (=> (not res!2632060) (not e!3884869))))

(assert (=> b!6401326 (= res!2632060 call!548662)))

(declare-fun bm!548656 () Bool)

(assert (=> bm!548656 (= call!548662 (validRegex!8047 (ite c!1167887 (regOne!33135 lt!2373837) (regOne!33134 lt!2373837))))))

(declare-fun d!2006805 () Bool)

(declare-fun res!2632058 () Bool)

(assert (=> d!2006805 (=> res!2632058 e!3884872)))

(assert (=> d!2006805 (= res!2632058 ((_ is ElementMatch!16311) lt!2373837))))

(assert (=> d!2006805 (= (validRegex!8047 lt!2373837) e!3884872)))

(assert (= (and d!2006805 (not res!2632058)) b!6401320))

(assert (= (and b!6401320 c!1167886) b!6401319))

(assert (= (and b!6401320 (not c!1167886)) b!6401323))

(assert (= (and b!6401319 res!2632059) b!6401322))

(assert (= (and b!6401323 c!1167887) b!6401318))

(assert (= (and b!6401323 (not c!1167887)) b!6401321))

(assert (= (and b!6401318 res!2632057) b!6401324))

(assert (= (and b!6401321 (not res!2632056)) b!6401326))

(assert (= (and b!6401326 res!2632060) b!6401325))

(assert (= (or b!6401324 b!6401325) bm!548657))

(assert (= (or b!6401318 b!6401326) bm!548656))

(assert (= (or b!6401322 bm!548657) bm!548655))

(declare-fun m!7198520 () Bool)

(assert (=> bm!548655 m!7198520))

(declare-fun m!7198522 () Bool)

(assert (=> b!6401319 m!7198522))

(declare-fun m!7198524 () Bool)

(assert (=> bm!548656 m!7198524))

(assert (=> d!2006571 d!2006805))

(declare-fun bs!1604921 () Bool)

(declare-fun d!2006813 () Bool)

(assert (= bs!1604921 (and d!2006813 d!2006667)))

(declare-fun lambda!353430 () Int)

(assert (=> bs!1604921 (= lambda!353430 lambda!353420)))

(declare-fun bs!1604922 () Bool)

(assert (= bs!1604922 (and d!2006813 d!2006553)))

(assert (=> bs!1604922 (= lambda!353430 lambda!353400)))

(declare-fun bs!1604923 () Bool)

(assert (= bs!1604923 (and d!2006813 d!2006563)))

(assert (=> bs!1604923 (= lambda!353430 lambda!353403)))

(declare-fun bs!1604924 () Bool)

(assert (= bs!1604924 (and d!2006813 d!2006429)))

(assert (=> bs!1604924 (= lambda!353430 lambda!353368)))

(declare-fun bs!1604925 () Bool)

(assert (= bs!1604925 (and d!2006813 d!2006417)))

(assert (=> bs!1604925 (= lambda!353430 lambda!353359)))

(declare-fun bs!1604926 () Bool)

(assert (= bs!1604926 (and d!2006813 d!2006681)))

(assert (=> bs!1604926 (= lambda!353430 lambda!353422)))

(declare-fun bs!1604927 () Bool)

(assert (= bs!1604927 (and d!2006813 d!2006531)))

(assert (=> bs!1604927 (= lambda!353430 lambda!353399)))

(declare-fun bs!1604928 () Bool)

(assert (= bs!1604928 (and d!2006813 d!2006421)))

(assert (=> bs!1604928 (= lambda!353430 lambda!353365)))

(declare-fun b!6401342 () Bool)

(declare-fun e!3884883 () Regex!16311)

(assert (=> b!6401342 (= e!3884883 (Union!16311 (h!71557 (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110))) (generalisedUnion!2155 (t!378841 (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110))))))))

(declare-fun b!6401343 () Bool)

(declare-fun e!3884882 () Bool)

(assert (=> b!6401343 (= e!3884882 (isEmpty!37252 (t!378841 (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110)))))))

(declare-fun b!6401344 () Bool)

(declare-fun e!3884881 () Bool)

(declare-fun lt!2373880 () Regex!16311)

(assert (=> b!6401344 (= e!3884881 (= lt!2373880 (head!13112 (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110)))))))

(declare-fun b!6401345 () Bool)

(assert (=> b!6401345 (= e!3884881 (isUnion!1148 lt!2373880))))

(declare-fun b!6401346 () Bool)

(declare-fun e!3884885 () Bool)

(assert (=> b!6401346 (= e!3884885 e!3884881)))

(declare-fun c!1167896 () Bool)

(assert (=> b!6401346 (= c!1167896 (isEmpty!37252 (tail!12197 (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110)))))))

(declare-fun b!6401347 () Bool)

(assert (=> b!6401347 (= e!3884885 (isEmptyLang!1718 lt!2373880))))

(declare-fun b!6401348 () Bool)

(declare-fun e!3884886 () Bool)

(assert (=> b!6401348 (= e!3884886 e!3884885)))

(declare-fun c!1167898 () Bool)

(assert (=> b!6401348 (= c!1167898 (isEmpty!37252 (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110))))))

(declare-fun b!6401349 () Bool)

(assert (=> b!6401349 (= e!3884883 EmptyLang!16311)))

(declare-fun b!6401350 () Bool)

(declare-fun e!3884884 () Regex!16311)

(assert (=> b!6401350 (= e!3884884 (h!71557 (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110))))))

(assert (=> d!2006813 e!3884886))

(declare-fun res!2632063 () Bool)

(assert (=> d!2006813 (=> (not res!2632063) (not e!3884886))))

(assert (=> d!2006813 (= res!2632063 (validRegex!8047 lt!2373880))))

(assert (=> d!2006813 (= lt!2373880 e!3884884)))

(declare-fun c!1167897 () Bool)

(assert (=> d!2006813 (= c!1167897 e!3884882)))

(declare-fun res!2632062 () Bool)

(assert (=> d!2006813 (=> (not res!2632062) (not e!3884882))))

(assert (=> d!2006813 (= res!2632062 ((_ is Cons!65109) (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110))))))

(assert (=> d!2006813 (forall!15496 (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110)) lambda!353430)))

(assert (=> d!2006813 (= (generalisedUnion!2155 (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110))) lt!2373880)))

(declare-fun b!6401351 () Bool)

(assert (=> b!6401351 (= e!3884884 e!3884883)))

(declare-fun c!1167895 () Bool)

(assert (=> b!6401351 (= c!1167895 ((_ is Cons!65109) (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110))))))

(assert (= (and d!2006813 res!2632062) b!6401343))

(assert (= (and d!2006813 c!1167897) b!6401350))

(assert (= (and d!2006813 (not c!1167897)) b!6401351))

(assert (= (and b!6401351 c!1167895) b!6401342))

(assert (= (and b!6401351 (not c!1167895)) b!6401349))

(assert (= (and d!2006813 res!2632063) b!6401348))

(assert (= (and b!6401348 c!1167898) b!6401347))

(assert (= (and b!6401348 (not c!1167898)) b!6401346))

(assert (= (and b!6401346 c!1167896) b!6401344))

(assert (= (and b!6401346 (not c!1167896)) b!6401345))

(declare-fun m!7198550 () Bool)

(assert (=> d!2006813 m!7198550))

(assert (=> d!2006813 m!7198034))

(declare-fun m!7198552 () Bool)

(assert (=> d!2006813 m!7198552))

(assert (=> b!6401346 m!7198034))

(declare-fun m!7198554 () Bool)

(assert (=> b!6401346 m!7198554))

(assert (=> b!6401346 m!7198554))

(declare-fun m!7198556 () Bool)

(assert (=> b!6401346 m!7198556))

(declare-fun m!7198558 () Bool)

(assert (=> b!6401342 m!7198558))

(assert (=> b!6401348 m!7198034))

(declare-fun m!7198560 () Bool)

(assert (=> b!6401348 m!7198560))

(declare-fun m!7198562 () Bool)

(assert (=> b!6401343 m!7198562))

(declare-fun m!7198564 () Bool)

(assert (=> b!6401345 m!7198564))

(declare-fun m!7198566 () Bool)

(assert (=> b!6401347 m!7198566))

(assert (=> b!6401344 m!7198034))

(declare-fun m!7198568 () Bool)

(assert (=> b!6401344 m!7198568))

(assert (=> d!2006571 d!2006813))

(declare-fun bs!1604929 () Bool)

(declare-fun d!2006821 () Bool)

(assert (= bs!1604929 (and d!2006821 d!2006667)))

(declare-fun lambda!353431 () Int)

(assert (=> bs!1604929 (= lambda!353431 lambda!353420)))

(declare-fun bs!1604930 () Bool)

(assert (= bs!1604930 (and d!2006821 d!2006553)))

(assert (=> bs!1604930 (= lambda!353431 lambda!353400)))

(declare-fun bs!1604931 () Bool)

(assert (= bs!1604931 (and d!2006821 d!2006563)))

(assert (=> bs!1604931 (= lambda!353431 lambda!353403)))

(declare-fun bs!1604933 () Bool)

(assert (= bs!1604933 (and d!2006821 d!2006429)))

(assert (=> bs!1604933 (= lambda!353431 lambda!353368)))

(declare-fun bs!1604935 () Bool)

(assert (= bs!1604935 (and d!2006821 d!2006813)))

(assert (=> bs!1604935 (= lambda!353431 lambda!353430)))

(declare-fun bs!1604937 () Bool)

(assert (= bs!1604937 (and d!2006821 d!2006417)))

(assert (=> bs!1604937 (= lambda!353431 lambda!353359)))

(declare-fun bs!1604939 () Bool)

(assert (= bs!1604939 (and d!2006821 d!2006681)))

(assert (=> bs!1604939 (= lambda!353431 lambda!353422)))

(declare-fun bs!1604940 () Bool)

(assert (= bs!1604940 (and d!2006821 d!2006531)))

(assert (=> bs!1604940 (= lambda!353431 lambda!353399)))

(declare-fun bs!1604942 () Bool)

(assert (= bs!1604942 (and d!2006821 d!2006421)))

(assert (=> bs!1604942 (= lambda!353431 lambda!353365)))

(declare-fun lt!2373882 () List!65233)

(assert (=> d!2006821 (forall!15496 lt!2373882 lambda!353431)))

(declare-fun e!3884890 () List!65233)

(assert (=> d!2006821 (= lt!2373882 e!3884890)))

(declare-fun c!1167901 () Bool)

(assert (=> d!2006821 (= c!1167901 ((_ is Cons!65110) (Cons!65110 lt!2373669 Nil!65110)))))

(assert (=> d!2006821 (= (unfocusZipperList!1732 (Cons!65110 lt!2373669 Nil!65110)) lt!2373882)))

(declare-fun b!6401358 () Bool)

(assert (=> b!6401358 (= e!3884890 (Cons!65109 (generalisedConcat!1908 (exprs!6195 (h!71558 (Cons!65110 lt!2373669 Nil!65110)))) (unfocusZipperList!1732 (t!378842 (Cons!65110 lt!2373669 Nil!65110)))))))

(declare-fun b!6401359 () Bool)

(assert (=> b!6401359 (= e!3884890 Nil!65109)))

(assert (= (and d!2006821 c!1167901) b!6401358))

(assert (= (and d!2006821 (not c!1167901)) b!6401359))

(declare-fun m!7198578 () Bool)

(assert (=> d!2006821 m!7198578))

(declare-fun m!7198580 () Bool)

(assert (=> b!6401358 m!7198580))

(declare-fun m!7198582 () Bool)

(assert (=> b!6401358 m!7198582))

(assert (=> d!2006571 d!2006821))

(declare-fun d!2006827 () Bool)

(assert (=> d!2006827 (= (nullable!6304 (h!71557 (exprs!6195 lt!2373684))) (nullableFct!2250 (h!71557 (exprs!6195 lt!2373684))))))

(declare-fun bs!1604943 () Bool)

(assert (= bs!1604943 d!2006827))

(declare-fun m!7198584 () Bool)

(assert (=> bs!1604943 m!7198584))

(assert (=> b!6400161 d!2006827))

(declare-fun b!6401369 () Bool)

(declare-fun res!2632072 () Bool)

(declare-fun e!3884902 () Bool)

(assert (=> b!6401369 (=> (not res!2632072) (not e!3884902))))

(declare-fun call!548674 () Bool)

(assert (=> b!6401369 (= res!2632072 call!548674)))

(declare-fun e!3884898 () Bool)

(assert (=> b!6401369 (= e!3884898 e!3884902)))

(declare-fun c!1167904 () Bool)

(declare-fun bm!548667 () Bool)

(declare-fun c!1167905 () Bool)

(declare-fun call!548673 () Bool)

(assert (=> bm!548667 (= call!548673 (validRegex!8047 (ite c!1167904 (reg!16640 lt!2373783) (ite c!1167905 (regTwo!33135 lt!2373783) (regTwo!33134 lt!2373783)))))))

(declare-fun b!6401370 () Bool)

(declare-fun e!3884899 () Bool)

(declare-fun e!3884900 () Bool)

(assert (=> b!6401370 (= e!3884899 e!3884900)))

(declare-fun res!2632074 () Bool)

(assert (=> b!6401370 (= res!2632074 (not (nullable!6304 (reg!16640 lt!2373783))))))

(assert (=> b!6401370 (=> (not res!2632074) (not e!3884900))))

(declare-fun b!6401371 () Bool)

(declare-fun e!3884904 () Bool)

(assert (=> b!6401371 (= e!3884904 e!3884899)))

(assert (=> b!6401371 (= c!1167904 ((_ is Star!16311) lt!2373783))))

(declare-fun b!6401372 () Bool)

(declare-fun res!2632071 () Bool)

(declare-fun e!3884903 () Bool)

(assert (=> b!6401372 (=> res!2632071 e!3884903)))

(assert (=> b!6401372 (= res!2632071 (not ((_ is Concat!25156) lt!2373783)))))

(assert (=> b!6401372 (= e!3884898 e!3884903)))

(declare-fun b!6401373 () Bool)

(assert (=> b!6401373 (= e!3884900 call!548673)))

(declare-fun b!6401374 () Bool)

(assert (=> b!6401374 (= e!3884899 e!3884898)))

(assert (=> b!6401374 (= c!1167905 ((_ is Union!16311) lt!2373783))))

(declare-fun b!6401375 () Bool)

(declare-fun call!548672 () Bool)

(assert (=> b!6401375 (= e!3884902 call!548672)))

(declare-fun b!6401376 () Bool)

(declare-fun e!3884901 () Bool)

(assert (=> b!6401376 (= e!3884901 call!548672)))

(declare-fun bm!548669 () Bool)

(assert (=> bm!548669 (= call!548672 call!548673)))

(declare-fun b!6401377 () Bool)

(assert (=> b!6401377 (= e!3884903 e!3884901)))

(declare-fun res!2632075 () Bool)

(assert (=> b!6401377 (=> (not res!2632075) (not e!3884901))))

(assert (=> b!6401377 (= res!2632075 call!548674)))

(declare-fun bm!548668 () Bool)

(assert (=> bm!548668 (= call!548674 (validRegex!8047 (ite c!1167905 (regOne!33135 lt!2373783) (regOne!33134 lt!2373783))))))

(declare-fun d!2006829 () Bool)

(declare-fun res!2632073 () Bool)

(assert (=> d!2006829 (=> res!2632073 e!3884904)))

(assert (=> d!2006829 (= res!2632073 ((_ is ElementMatch!16311) lt!2373783))))

(assert (=> d!2006829 (= (validRegex!8047 lt!2373783) e!3884904)))

(assert (= (and d!2006829 (not res!2632073)) b!6401371))

(assert (= (and b!6401371 c!1167904) b!6401370))

(assert (= (and b!6401371 (not c!1167904)) b!6401374))

(assert (= (and b!6401370 res!2632074) b!6401373))

(assert (= (and b!6401374 c!1167905) b!6401369))

(assert (= (and b!6401374 (not c!1167905)) b!6401372))

(assert (= (and b!6401369 res!2632072) b!6401375))

(assert (= (and b!6401372 (not res!2632071)) b!6401377))

(assert (= (and b!6401377 res!2632075) b!6401376))

(assert (= (or b!6401375 b!6401376) bm!548669))

(assert (= (or b!6401369 b!6401377) bm!548668))

(assert (= (or b!6401373 bm!548669) bm!548667))

(declare-fun m!7198594 () Bool)

(assert (=> bm!548667 m!7198594))

(declare-fun m!7198596 () Bool)

(assert (=> b!6401370 m!7198596))

(declare-fun m!7198598 () Bool)

(assert (=> bm!548668 m!7198598))

(assert (=> d!2006421 d!2006829))

(declare-fun d!2006841 () Bool)

(declare-fun res!2632084 () Bool)

(declare-fun e!3884912 () Bool)

(assert (=> d!2006841 (=> res!2632084 e!3884912)))

(assert (=> d!2006841 (= res!2632084 ((_ is Nil!65109) (unfocusZipperList!1732 zl!343)))))

(assert (=> d!2006841 (= (forall!15496 (unfocusZipperList!1732 zl!343) lambda!353365) e!3884912)))

(declare-fun b!6401392 () Bool)

(declare-fun e!3884913 () Bool)

(assert (=> b!6401392 (= e!3884912 e!3884913)))

(declare-fun res!2632085 () Bool)

(assert (=> b!6401392 (=> (not res!2632085) (not e!3884913))))

(assert (=> b!6401392 (= res!2632085 (dynLambda!25842 lambda!353365 (h!71557 (unfocusZipperList!1732 zl!343))))))

(declare-fun b!6401393 () Bool)

(assert (=> b!6401393 (= e!3884913 (forall!15496 (t!378841 (unfocusZipperList!1732 zl!343)) lambda!353365))))

(assert (= (and d!2006841 (not res!2632084)) b!6401392))

(assert (= (and b!6401392 res!2632085) b!6401393))

(declare-fun b_lambda!243257 () Bool)

(assert (=> (not b_lambda!243257) (not b!6401392)))

(declare-fun m!7198600 () Bool)

(assert (=> b!6401392 m!7198600))

(declare-fun m!7198602 () Bool)

(assert (=> b!6401393 m!7198602))

(assert (=> d!2006421 d!2006841))

(declare-fun d!2006843 () Bool)

(assert (=> d!2006843 (= (isEmpty!37253 s!2326) ((_ is Nil!65108) s!2326))))

(assert (=> bm!548470 d!2006843))

(declare-fun b!6401394 () Bool)

(declare-fun e!3884916 () Bool)

(declare-fun e!3884915 () Bool)

(assert (=> b!6401394 (= e!3884916 e!3884915)))

(declare-fun res!2632089 () Bool)

(assert (=> b!6401394 (=> res!2632089 e!3884915)))

(assert (=> b!6401394 (= res!2632089 ((_ is Star!16311) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6401395 () Bool)

(declare-fun e!3884918 () Bool)

(declare-fun e!3884917 () Bool)

(assert (=> b!6401395 (= e!3884918 e!3884917)))

(declare-fun res!2632087 () Bool)

(declare-fun call!548677 () Bool)

(assert (=> b!6401395 (= res!2632087 call!548677)))

(assert (=> b!6401395 (=> res!2632087 e!3884917)))

(declare-fun b!6401396 () Bool)

(declare-fun e!3884919 () Bool)

(assert (=> b!6401396 (= e!3884918 e!3884919)))

(declare-fun res!2632090 () Bool)

(assert (=> b!6401396 (= res!2632090 call!548677)))

(assert (=> b!6401396 (=> (not res!2632090) (not e!3884919))))

(declare-fun b!6401397 () Bool)

(declare-fun e!3884914 () Bool)

(assert (=> b!6401397 (= e!3884914 e!3884916)))

(declare-fun res!2632088 () Bool)

(assert (=> b!6401397 (=> (not res!2632088) (not e!3884916))))

(assert (=> b!6401397 (= res!2632088 (and (not ((_ is EmptyLang!16311) (h!71557 (exprs!6195 (h!71558 zl!343))))) (not ((_ is ElementMatch!16311) (h!71557 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun b!6401398 () Bool)

(assert (=> b!6401398 (= e!3884915 e!3884918)))

(declare-fun c!1167909 () Bool)

(assert (=> b!6401398 (= c!1167909 ((_ is Union!16311) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6401399 () Bool)

(declare-fun call!548676 () Bool)

(assert (=> b!6401399 (= e!3884917 call!548676)))

(declare-fun bm!548671 () Bool)

(assert (=> bm!548671 (= call!548676 (nullable!6304 (ite c!1167909 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun d!2006845 () Bool)

(declare-fun res!2632086 () Bool)

(assert (=> d!2006845 (=> res!2632086 e!3884914)))

(assert (=> d!2006845 (= res!2632086 ((_ is EmptyExpr!16311) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> d!2006845 (= (nullableFct!2250 (h!71557 (exprs!6195 (h!71558 zl!343)))) e!3884914)))

(declare-fun bm!548672 () Bool)

(assert (=> bm!548672 (= call!548677 (nullable!6304 (ite c!1167909 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun b!6401400 () Bool)

(assert (=> b!6401400 (= e!3884919 call!548676)))

(assert (= (and d!2006845 (not res!2632086)) b!6401397))

(assert (= (and b!6401397 res!2632088) b!6401394))

(assert (= (and b!6401394 (not res!2632089)) b!6401398))

(assert (= (and b!6401398 c!1167909) b!6401395))

(assert (= (and b!6401398 (not c!1167909)) b!6401396))

(assert (= (and b!6401395 (not res!2632087)) b!6401399))

(assert (= (and b!6401396 res!2632090) b!6401400))

(assert (= (or b!6401399 b!6401400) bm!548671))

(assert (= (or b!6401395 b!6401396) bm!548672))

(declare-fun m!7198616 () Bool)

(assert (=> bm!548671 m!7198616))

(declare-fun m!7198620 () Bool)

(assert (=> bm!548672 m!7198620))

(assert (=> d!2006591 d!2006845))

(declare-fun c!1167910 () Bool)

(declare-fun b!6401401 () Bool)

(assert (=> b!6401401 (= c!1167910 ((_ is Union!16311) (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))))))

(declare-fun e!3884927 () Int)

(declare-fun e!3884922 () Int)

(assert (=> b!6401401 (= e!3884927 e!3884922)))

(declare-fun bm!548673 () Bool)

(declare-fun call!548683 () Int)

(assert (=> bm!548673 (= call!548683 (regexDepth!338 (ite c!1167910 (regOne!33135 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))) (regTwo!33134 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))))))))

(declare-fun call!548684 () Int)

(declare-fun call!548681 () Int)

(declare-fun bm!548674 () Bool)

(assert (=> bm!548674 (= call!548684 (maxBigInt!0 (ite c!1167910 call!548683 call!548681) (ite c!1167910 call!548681 call!548683)))))

(declare-fun b!6401402 () Bool)

(declare-fun call!548680 () Int)

(assert (=> b!6401402 (= e!3884927 (+ 1 call!548680))))

(declare-fun b!6401403 () Bool)

(declare-fun e!3884923 () Bool)

(declare-fun lt!2373884 () Int)

(assert (=> b!6401403 (= e!3884923 (= lt!2373884 1))))

(declare-fun b!6401405 () Bool)

(declare-fun res!2632092 () Bool)

(declare-fun e!3884921 () Bool)

(assert (=> b!6401405 (=> (not res!2632092) (not e!3884921))))

(declare-fun call!548678 () Int)

(assert (=> b!6401405 (= res!2632092 (> lt!2373884 call!548678))))

(declare-fun e!3884924 () Bool)

(assert (=> b!6401405 (= e!3884924 e!3884921)))

(declare-fun b!6401406 () Bool)

(declare-fun e!3884928 () Int)

(assert (=> b!6401406 (= e!3884928 e!3884927)))

(declare-fun c!1167916 () Bool)

(assert (=> b!6401406 (= c!1167916 ((_ is Star!16311) (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))))))

(declare-fun b!6401407 () Bool)

(declare-fun e!3884926 () Bool)

(assert (=> b!6401407 (= e!3884926 e!3884924)))

(declare-fun c!1167911 () Bool)

(assert (=> b!6401407 (= c!1167911 ((_ is Concat!25156) (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))))))

(declare-fun b!6401408 () Bool)

(declare-fun call!548679 () Int)

(assert (=> b!6401408 (= e!3884921 (> lt!2373884 call!548679))))

(declare-fun b!6401409 () Bool)

(assert (=> b!6401409 (= e!3884922 (+ 1 call!548684))))

(declare-fun b!6401410 () Bool)

(assert (=> b!6401410 (= e!3884923 (> lt!2373884 call!548678))))

(declare-fun b!6401411 () Bool)

(declare-fun e!3884920 () Int)

(assert (=> b!6401411 (= e!3884920 (+ 1 call!548684))))

(declare-fun b!6401412 () Bool)

(declare-fun e!3884925 () Bool)

(declare-fun call!548682 () Int)

(assert (=> b!6401412 (= e!3884925 (> lt!2373884 call!548682))))

(declare-fun b!6401413 () Bool)

(declare-fun e!3884929 () Bool)

(assert (=> b!6401413 (= e!3884929 e!3884926)))

(declare-fun c!1167912 () Bool)

(assert (=> b!6401413 (= c!1167912 ((_ is Union!16311) (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))))))

(declare-fun bm!548675 () Bool)

(assert (=> bm!548675 (= call!548680 (regexDepth!338 (ite c!1167916 (reg!16640 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))) (ite c!1167910 (regTwo!33135 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))) (regOne!33134 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292))))))))))

(declare-fun c!1167913 () Bool)

(declare-fun b!6401414 () Bool)

(assert (=> b!6401414 (= c!1167913 ((_ is Star!16311) (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))))))

(assert (=> b!6401414 (= e!3884924 e!3884923)))

(declare-fun d!2006847 () Bool)

(assert (=> d!2006847 e!3884929))

(declare-fun res!2632093 () Bool)

(assert (=> d!2006847 (=> (not res!2632093) (not e!3884929))))

(assert (=> d!2006847 (= res!2632093 (> lt!2373884 0))))

(assert (=> d!2006847 (= lt!2373884 e!3884928)))

(declare-fun c!1167914 () Bool)

(assert (=> d!2006847 (= c!1167914 ((_ is ElementMatch!16311) (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))))))

(assert (=> d!2006847 (= (regexDepth!338 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))) lt!2373884)))

(declare-fun b!6401404 () Bool)

(assert (=> b!6401404 (= e!3884922 e!3884920)))

(declare-fun c!1167915 () Bool)

(assert (=> b!6401404 (= c!1167915 ((_ is Concat!25156) (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))))))

(declare-fun b!6401415 () Bool)

(assert (=> b!6401415 (= e!3884928 1)))

(declare-fun bm!548676 () Bool)

(assert (=> bm!548676 (= call!548679 (regexDepth!338 (ite c!1167912 (regOne!33135 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))) (regTwo!33134 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))))))))

(declare-fun b!6401416 () Bool)

(assert (=> b!6401416 (= e!3884926 e!3884925)))

(declare-fun res!2632091 () Bool)

(assert (=> b!6401416 (= res!2632091 (> lt!2373884 call!548679))))

(assert (=> b!6401416 (=> (not res!2632091) (not e!3884925))))

(declare-fun bm!548677 () Bool)

(assert (=> bm!548677 (= call!548682 (regexDepth!338 (ite c!1167912 (regTwo!33135 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))) (ite c!1167911 (regOne!33134 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292)))) (reg!16640 (ite c!1167700 (reg!16640 r!7292) (ite c!1167694 (regTwo!33135 r!7292) (regOne!33134 r!7292))))))))))

(declare-fun bm!548678 () Bool)

(assert (=> bm!548678 (= call!548678 call!548682)))

(declare-fun bm!548679 () Bool)

(assert (=> bm!548679 (= call!548681 call!548680)))

(declare-fun b!6401417 () Bool)

(assert (=> b!6401417 (= e!3884920 1)))

(assert (= (and d!2006847 c!1167914) b!6401415))

(assert (= (and d!2006847 (not c!1167914)) b!6401406))

(assert (= (and b!6401406 c!1167916) b!6401402))

(assert (= (and b!6401406 (not c!1167916)) b!6401401))

(assert (= (and b!6401401 c!1167910) b!6401409))

(assert (= (and b!6401401 (not c!1167910)) b!6401404))

(assert (= (and b!6401404 c!1167915) b!6401411))

(assert (= (and b!6401404 (not c!1167915)) b!6401417))

(assert (= (or b!6401409 b!6401411) bm!548679))

(assert (= (or b!6401409 b!6401411) bm!548673))

(assert (= (or b!6401409 b!6401411) bm!548674))

(assert (= (or b!6401402 bm!548679) bm!548675))

(assert (= (and d!2006847 res!2632093) b!6401413))

(assert (= (and b!6401413 c!1167912) b!6401416))

(assert (= (and b!6401413 (not c!1167912)) b!6401407))

(assert (= (and b!6401416 res!2632091) b!6401412))

(assert (= (and b!6401407 c!1167911) b!6401405))

(assert (= (and b!6401407 (not c!1167911)) b!6401414))

(assert (= (and b!6401405 res!2632092) b!6401408))

(assert (= (and b!6401414 c!1167913) b!6401410))

(assert (= (and b!6401414 (not c!1167913)) b!6401403))

(assert (= (or b!6401405 b!6401410) bm!548678))

(assert (= (or b!6401412 bm!548678) bm!548677))

(assert (= (or b!6401416 b!6401408) bm!548676))

(declare-fun m!7198622 () Bool)

(assert (=> bm!548674 m!7198622))

(declare-fun m!7198624 () Bool)

(assert (=> bm!548675 m!7198624))

(declare-fun m!7198626 () Bool)

(assert (=> bm!548676 m!7198626))

(declare-fun m!7198628 () Bool)

(assert (=> bm!548677 m!7198628))

(declare-fun m!7198630 () Bool)

(assert (=> bm!548673 m!7198630))

(assert (=> bm!548508 d!2006847))

(assert (=> bs!1604850 d!2006595))

(declare-fun d!2006851 () Bool)

(assert (=> d!2006851 (= (isEmpty!37253 (tail!12198 (_1!36593 lt!2373686))) ((_ is Nil!65108) (tail!12198 (_1!36593 lt!2373686))))))

(assert (=> b!6400767 d!2006851))

(assert (=> b!6400767 d!2006651))

(declare-fun b!6401418 () Bool)

(declare-fun res!2632095 () Bool)

(declare-fun e!3884934 () Bool)

(assert (=> b!6401418 (=> (not res!2632095) (not e!3884934))))

(declare-fun call!548687 () Bool)

(assert (=> b!6401418 (= res!2632095 call!548687)))

(declare-fun e!3884930 () Bool)

(assert (=> b!6401418 (= e!3884930 e!3884934)))

(declare-fun c!1167917 () Bool)

(declare-fun bm!548680 () Bool)

(declare-fun call!548686 () Bool)

(declare-fun c!1167918 () Bool)

(assert (=> bm!548680 (= call!548686 (validRegex!8047 (ite c!1167917 (reg!16640 lt!2373831) (ite c!1167918 (regTwo!33135 lt!2373831) (regTwo!33134 lt!2373831)))))))

(declare-fun b!6401419 () Bool)

(declare-fun e!3884931 () Bool)

(declare-fun e!3884932 () Bool)

(assert (=> b!6401419 (= e!3884931 e!3884932)))

(declare-fun res!2632097 () Bool)

(assert (=> b!6401419 (= res!2632097 (not (nullable!6304 (reg!16640 lt!2373831))))))

(assert (=> b!6401419 (=> (not res!2632097) (not e!3884932))))

(declare-fun b!6401420 () Bool)

(declare-fun e!3884936 () Bool)

(assert (=> b!6401420 (= e!3884936 e!3884931)))

(assert (=> b!6401420 (= c!1167917 ((_ is Star!16311) lt!2373831))))

(declare-fun b!6401421 () Bool)

(declare-fun res!2632094 () Bool)

(declare-fun e!3884935 () Bool)

(assert (=> b!6401421 (=> res!2632094 e!3884935)))

(assert (=> b!6401421 (= res!2632094 (not ((_ is Concat!25156) lt!2373831)))))

(assert (=> b!6401421 (= e!3884930 e!3884935)))

(declare-fun b!6401422 () Bool)

(assert (=> b!6401422 (= e!3884932 call!548686)))

(declare-fun b!6401423 () Bool)

(assert (=> b!6401423 (= e!3884931 e!3884930)))

(assert (=> b!6401423 (= c!1167918 ((_ is Union!16311) lt!2373831))))

(declare-fun b!6401424 () Bool)

(declare-fun call!548685 () Bool)

(assert (=> b!6401424 (= e!3884934 call!548685)))

(declare-fun b!6401425 () Bool)

(declare-fun e!3884933 () Bool)

(assert (=> b!6401425 (= e!3884933 call!548685)))

(declare-fun bm!548682 () Bool)

(assert (=> bm!548682 (= call!548685 call!548686)))

(declare-fun b!6401426 () Bool)

(assert (=> b!6401426 (= e!3884935 e!3884933)))

(declare-fun res!2632098 () Bool)

(assert (=> b!6401426 (=> (not res!2632098) (not e!3884933))))

(assert (=> b!6401426 (= res!2632098 call!548687)))

(declare-fun bm!548681 () Bool)

(assert (=> bm!548681 (= call!548687 (validRegex!8047 (ite c!1167918 (regOne!33135 lt!2373831) (regOne!33134 lt!2373831))))))

(declare-fun d!2006853 () Bool)

(declare-fun res!2632096 () Bool)

(assert (=> d!2006853 (=> res!2632096 e!3884936)))

(assert (=> d!2006853 (= res!2632096 ((_ is ElementMatch!16311) lt!2373831))))

(assert (=> d!2006853 (= (validRegex!8047 lt!2373831) e!3884936)))

(assert (= (and d!2006853 (not res!2632096)) b!6401420))

(assert (= (and b!6401420 c!1167917) b!6401419))

(assert (= (and b!6401420 (not c!1167917)) b!6401423))

(assert (= (and b!6401419 res!2632097) b!6401422))

(assert (= (and b!6401423 c!1167918) b!6401418))

(assert (= (and b!6401423 (not c!1167918)) b!6401421))

(assert (= (and b!6401418 res!2632095) b!6401424))

(assert (= (and b!6401421 (not res!2632094)) b!6401426))

(assert (= (and b!6401426 res!2632098) b!6401425))

(assert (= (or b!6401424 b!6401425) bm!548682))

(assert (= (or b!6401418 b!6401426) bm!548681))

(assert (= (or b!6401422 bm!548682) bm!548680))

(declare-fun m!7198632 () Bool)

(assert (=> bm!548680 m!7198632))

(declare-fun m!7198634 () Bool)

(assert (=> b!6401419 m!7198634))

(declare-fun m!7198636 () Bool)

(assert (=> bm!548681 m!7198636))

(assert (=> d!2006553 d!2006853))

(declare-fun d!2006855 () Bool)

(declare-fun res!2632099 () Bool)

(declare-fun e!3884937 () Bool)

(assert (=> d!2006855 (=> res!2632099 e!3884937)))

(assert (=> d!2006855 (= res!2632099 ((_ is Nil!65109) (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> d!2006855 (= (forall!15496 (t!378841 (exprs!6195 (h!71558 zl!343))) lambda!353400) e!3884937)))

(declare-fun b!6401427 () Bool)

(declare-fun e!3884938 () Bool)

(assert (=> b!6401427 (= e!3884937 e!3884938)))

(declare-fun res!2632100 () Bool)

(assert (=> b!6401427 (=> (not res!2632100) (not e!3884938))))

(assert (=> b!6401427 (= res!2632100 (dynLambda!25842 lambda!353400 (h!71557 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun b!6401428 () Bool)

(assert (=> b!6401428 (= e!3884938 (forall!15496 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343)))) lambda!353400))))

(assert (= (and d!2006855 (not res!2632099)) b!6401427))

(assert (= (and b!6401427 res!2632100) b!6401428))

(declare-fun b_lambda!243259 () Bool)

(assert (=> (not b_lambda!243259) (not b!6401427)))

(declare-fun m!7198638 () Bool)

(assert (=> b!6401427 m!7198638))

(declare-fun m!7198640 () Bool)

(assert (=> b!6401428 m!7198640))

(assert (=> d!2006553 d!2006855))

(declare-fun d!2006857 () Bool)

(declare-fun res!2632105 () Bool)

(declare-fun e!3884943 () Bool)

(assert (=> d!2006857 (=> res!2632105 e!3884943)))

(assert (=> d!2006857 (= res!2632105 ((_ is Nil!65110) lt!2373826))))

(assert (=> d!2006857 (= (noDuplicate!2139 lt!2373826) e!3884943)))

(declare-fun b!6401433 () Bool)

(declare-fun e!3884944 () Bool)

(assert (=> b!6401433 (= e!3884943 e!3884944)))

(declare-fun res!2632106 () Bool)

(assert (=> b!6401433 (=> (not res!2632106) (not e!3884944))))

(declare-fun contains!20173 (List!65234 Context!11390) Bool)

(assert (=> b!6401433 (= res!2632106 (not (contains!20173 (t!378842 lt!2373826) (h!71558 lt!2373826))))))

(declare-fun b!6401434 () Bool)

(assert (=> b!6401434 (= e!3884944 (noDuplicate!2139 (t!378842 lt!2373826)))))

(assert (= (and d!2006857 (not res!2632105)) b!6401433))

(assert (= (and b!6401433 res!2632106) b!6401434))

(declare-fun m!7198642 () Bool)

(assert (=> b!6401433 m!7198642))

(declare-fun m!7198644 () Bool)

(assert (=> b!6401434 m!7198644))

(assert (=> d!2006545 d!2006857))

(declare-fun d!2006859 () Bool)

(declare-fun e!3884961 () Bool)

(assert (=> d!2006859 e!3884961))

(declare-fun res!2632111 () Bool)

(assert (=> d!2006859 (=> (not res!2632111) (not e!3884961))))

(declare-fun res!2632112 () List!65234)

(assert (=> d!2006859 (= res!2632111 (noDuplicate!2139 res!2632112))))

(declare-fun e!3884963 () Bool)

(assert (=> d!2006859 e!3884963))

(assert (=> d!2006859 (= (choose!47591 lt!2373688) res!2632112)))

(declare-fun b!6401462 () Bool)

(declare-fun e!3884962 () Bool)

(declare-fun tp!1779324 () Bool)

(assert (=> b!6401462 (= e!3884962 tp!1779324)))

(declare-fun b!6401461 () Bool)

(declare-fun tp!1779323 () Bool)

(assert (=> b!6401461 (= e!3884963 (and (inv!84024 (h!71558 res!2632112)) e!3884962 tp!1779323))))

(declare-fun b!6401463 () Bool)

(assert (=> b!6401463 (= e!3884961 (= (content!12335 res!2632112) lt!2373688))))

(assert (= b!6401461 b!6401462))

(assert (= (and d!2006859 ((_ is Cons!65110) res!2632112)) b!6401461))

(assert (= (and d!2006859 res!2632111) b!6401463))

(declare-fun m!7198646 () Bool)

(assert (=> d!2006859 m!7198646))

(declare-fun m!7198648 () Bool)

(assert (=> b!6401461 m!7198648))

(declare-fun m!7198650 () Bool)

(assert (=> b!6401463 m!7198650))

(assert (=> d!2006545 d!2006859))

(declare-fun b!6401464 () Bool)

(declare-fun e!3884965 () Bool)

(declare-fun e!3884966 () Bool)

(assert (=> b!6401464 (= e!3884965 e!3884966)))

(declare-fun res!2632114 () Bool)

(assert (=> b!6401464 (=> res!2632114 e!3884966)))

(declare-fun call!548696 () Bool)

(assert (=> b!6401464 (= res!2632114 call!548696)))

(declare-fun b!6401465 () Bool)

(declare-fun e!3884968 () Bool)

(assert (=> b!6401465 (= e!3884968 (matchR!8494 (derivativeStep!5015 (derivativeStep!5015 lt!2373658 (head!13113 s!2326)) (head!13113 (tail!12198 s!2326))) (tail!12198 (tail!12198 s!2326))))))

(declare-fun b!6401466 () Bool)

(declare-fun e!3884970 () Bool)

(assert (=> b!6401466 (= e!3884970 e!3884965)))

(declare-fun res!2632115 () Bool)

(assert (=> b!6401466 (=> (not res!2632115) (not e!3884965))))

(declare-fun lt!2373887 () Bool)

(assert (=> b!6401466 (= res!2632115 (not lt!2373887))))

(declare-fun b!6401467 () Bool)

(declare-fun e!3884969 () Bool)

(assert (=> b!6401467 (= e!3884969 (= (head!13113 (tail!12198 s!2326)) (c!1167428 (derivativeStep!5015 lt!2373658 (head!13113 s!2326)))))))

(declare-fun b!6401468 () Bool)

(declare-fun res!2632117 () Bool)

(assert (=> b!6401468 (=> res!2632117 e!3884966)))

(assert (=> b!6401468 (= res!2632117 (not (isEmpty!37253 (tail!12198 (tail!12198 s!2326)))))))

(declare-fun b!6401469 () Bool)

(assert (=> b!6401469 (= e!3884968 (nullable!6304 (derivativeStep!5015 lt!2373658 (head!13113 s!2326))))))

(declare-fun b!6401470 () Bool)

(assert (=> b!6401470 (= e!3884966 (not (= (head!13113 (tail!12198 s!2326)) (c!1167428 (derivativeStep!5015 lt!2373658 (head!13113 s!2326))))))))

(declare-fun b!6401472 () Bool)

(declare-fun res!2632113 () Bool)

(assert (=> b!6401472 (=> res!2632113 e!3884970)))

(assert (=> b!6401472 (= res!2632113 (not ((_ is ElementMatch!16311) (derivativeStep!5015 lt!2373658 (head!13113 s!2326)))))))

(declare-fun e!3884964 () Bool)

(assert (=> b!6401472 (= e!3884964 e!3884970)))

(declare-fun bm!548691 () Bool)

(assert (=> bm!548691 (= call!548696 (isEmpty!37253 (tail!12198 s!2326)))))

(declare-fun b!6401473 () Bool)

(declare-fun e!3884967 () Bool)

(assert (=> b!6401473 (= e!3884967 e!3884964)))

(declare-fun c!1167929 () Bool)

(assert (=> b!6401473 (= c!1167929 ((_ is EmptyLang!16311) (derivativeStep!5015 lt!2373658 (head!13113 s!2326))))))

(declare-fun b!6401474 () Bool)

(declare-fun res!2632116 () Bool)

(assert (=> b!6401474 (=> (not res!2632116) (not e!3884969))))

(assert (=> b!6401474 (= res!2632116 (not call!548696))))

(declare-fun b!6401475 () Bool)

(declare-fun res!2632120 () Bool)

(assert (=> b!6401475 (=> res!2632120 e!3884970)))

(assert (=> b!6401475 (= res!2632120 e!3884969)))

(declare-fun res!2632118 () Bool)

(assert (=> b!6401475 (=> (not res!2632118) (not e!3884969))))

(assert (=> b!6401475 (= res!2632118 lt!2373887)))

(declare-fun d!2006861 () Bool)

(assert (=> d!2006861 e!3884967))

(declare-fun c!1167930 () Bool)

(assert (=> d!2006861 (= c!1167930 ((_ is EmptyExpr!16311) (derivativeStep!5015 lt!2373658 (head!13113 s!2326))))))

(assert (=> d!2006861 (= lt!2373887 e!3884968)))

(declare-fun c!1167931 () Bool)

(assert (=> d!2006861 (= c!1167931 (isEmpty!37253 (tail!12198 s!2326)))))

(assert (=> d!2006861 (validRegex!8047 (derivativeStep!5015 lt!2373658 (head!13113 s!2326)))))

(assert (=> d!2006861 (= (matchR!8494 (derivativeStep!5015 lt!2373658 (head!13113 s!2326)) (tail!12198 s!2326)) lt!2373887)))

(declare-fun b!6401471 () Bool)

(assert (=> b!6401471 (= e!3884967 (= lt!2373887 call!548696))))

(declare-fun b!6401476 () Bool)

(assert (=> b!6401476 (= e!3884964 (not lt!2373887))))

(declare-fun b!6401477 () Bool)

(declare-fun res!2632119 () Bool)

(assert (=> b!6401477 (=> (not res!2632119) (not e!3884969))))

(assert (=> b!6401477 (= res!2632119 (isEmpty!37253 (tail!12198 (tail!12198 s!2326))))))

(assert (= (and d!2006861 c!1167931) b!6401469))

(assert (= (and d!2006861 (not c!1167931)) b!6401465))

(assert (= (and d!2006861 c!1167930) b!6401471))

(assert (= (and d!2006861 (not c!1167930)) b!6401473))

(assert (= (and b!6401473 c!1167929) b!6401476))

(assert (= (and b!6401473 (not c!1167929)) b!6401472))

(assert (= (and b!6401472 (not res!2632113)) b!6401475))

(assert (= (and b!6401475 res!2632118) b!6401474))

(assert (= (and b!6401474 res!2632116) b!6401477))

(assert (= (and b!6401477 res!2632119) b!6401467))

(assert (= (and b!6401475 (not res!2632120)) b!6401466))

(assert (= (and b!6401466 res!2632115) b!6401464))

(assert (= (and b!6401464 (not res!2632114)) b!6401468))

(assert (= (and b!6401468 (not res!2632117)) b!6401470))

(assert (= (or b!6401471 b!6401464 b!6401474) bm!548691))

(assert (=> bm!548691 m!7197728))

(assert (=> bm!548691 m!7197730))

(assert (=> b!6401470 m!7197728))

(declare-fun m!7198652 () Bool)

(assert (=> b!6401470 m!7198652))

(assert (=> b!6401477 m!7197728))

(declare-fun m!7198654 () Bool)

(assert (=> b!6401477 m!7198654))

(assert (=> b!6401477 m!7198654))

(declare-fun m!7198656 () Bool)

(assert (=> b!6401477 m!7198656))

(assert (=> b!6401467 m!7197728))

(assert (=> b!6401467 m!7198652))

(assert (=> b!6401468 m!7197728))

(assert (=> b!6401468 m!7198654))

(assert (=> b!6401468 m!7198654))

(assert (=> b!6401468 m!7198656))

(assert (=> d!2006861 m!7197728))

(assert (=> d!2006861 m!7197730))

(assert (=> d!2006861 m!7197734))

(declare-fun m!7198658 () Bool)

(assert (=> d!2006861 m!7198658))

(assert (=> b!6401465 m!7197728))

(assert (=> b!6401465 m!7198652))

(assert (=> b!6401465 m!7197734))

(assert (=> b!6401465 m!7198652))

(declare-fun m!7198660 () Bool)

(assert (=> b!6401465 m!7198660))

(assert (=> b!6401465 m!7197728))

(assert (=> b!6401465 m!7198654))

(assert (=> b!6401465 m!7198660))

(assert (=> b!6401465 m!7198654))

(declare-fun m!7198662 () Bool)

(assert (=> b!6401465 m!7198662))

(assert (=> b!6401469 m!7197734))

(declare-fun m!7198664 () Bool)

(assert (=> b!6401469 m!7198664))

(assert (=> b!6400415 d!2006861))

(declare-fun b!6401478 () Bool)

(declare-fun e!3884973 () Regex!16311)

(declare-fun call!548698 () Regex!16311)

(assert (=> b!6401478 (= e!3884973 (Union!16311 (Concat!25156 call!548698 (regTwo!33134 lt!2373658)) EmptyLang!16311))))

(declare-fun b!6401479 () Bool)

(declare-fun e!3884975 () Regex!16311)

(assert (=> b!6401479 (= e!3884975 (ite (= (head!13113 s!2326) (c!1167428 lt!2373658)) EmptyExpr!16311 EmptyLang!16311))))

(declare-fun bm!548692 () Bool)

(declare-fun call!548697 () Regex!16311)

(assert (=> bm!548692 (= call!548698 call!548697)))

(declare-fun c!1167932 () Bool)

(declare-fun c!1167933 () Bool)

(declare-fun c!1167935 () Bool)

(declare-fun bm!548693 () Bool)

(declare-fun call!548700 () Regex!16311)

(assert (=> bm!548693 (= call!548700 (derivativeStep!5015 (ite c!1167933 (regTwo!33135 lt!2373658) (ite c!1167935 (reg!16640 lt!2373658) (ite c!1167932 (regTwo!33134 lt!2373658) (regOne!33134 lt!2373658)))) (head!13113 s!2326)))))

(declare-fun bm!548694 () Bool)

(assert (=> bm!548694 (= call!548697 call!548700)))

(declare-fun b!6401480 () Bool)

(assert (=> b!6401480 (= c!1167932 (nullable!6304 (regOne!33134 lt!2373658)))))

(declare-fun e!3884974 () Regex!16311)

(assert (=> b!6401480 (= e!3884974 e!3884973)))

(declare-fun d!2006863 () Bool)

(declare-fun lt!2373888 () Regex!16311)

(assert (=> d!2006863 (validRegex!8047 lt!2373888)))

(declare-fun e!3884971 () Regex!16311)

(assert (=> d!2006863 (= lt!2373888 e!3884971)))

(declare-fun c!1167934 () Bool)

(assert (=> d!2006863 (= c!1167934 (or ((_ is EmptyExpr!16311) lt!2373658) ((_ is EmptyLang!16311) lt!2373658)))))

(assert (=> d!2006863 (validRegex!8047 lt!2373658)))

(assert (=> d!2006863 (= (derivativeStep!5015 lt!2373658 (head!13113 s!2326)) lt!2373888)))

(declare-fun b!6401481 () Bool)

(assert (=> b!6401481 (= e!3884971 e!3884975)))

(declare-fun c!1167936 () Bool)

(assert (=> b!6401481 (= c!1167936 ((_ is ElementMatch!16311) lt!2373658))))

(declare-fun b!6401482 () Bool)

(declare-fun e!3884972 () Regex!16311)

(declare-fun call!548699 () Regex!16311)

(assert (=> b!6401482 (= e!3884972 (Union!16311 call!548699 call!548700))))

(declare-fun bm!548695 () Bool)

(assert (=> bm!548695 (= call!548699 (derivativeStep!5015 (ite c!1167933 (regOne!33135 lt!2373658) (regOne!33134 lt!2373658)) (head!13113 s!2326)))))

(declare-fun b!6401483 () Bool)

(assert (=> b!6401483 (= e!3884972 e!3884974)))

(assert (=> b!6401483 (= c!1167935 ((_ is Star!16311) lt!2373658))))

(declare-fun b!6401484 () Bool)

(assert (=> b!6401484 (= e!3884973 (Union!16311 (Concat!25156 call!548699 (regTwo!33134 lt!2373658)) call!548698))))

(declare-fun b!6401485 () Bool)

(assert (=> b!6401485 (= e!3884971 EmptyLang!16311)))

(declare-fun b!6401486 () Bool)

(assert (=> b!6401486 (= e!3884974 (Concat!25156 call!548697 lt!2373658))))

(declare-fun b!6401487 () Bool)

(assert (=> b!6401487 (= c!1167933 ((_ is Union!16311) lt!2373658))))

(assert (=> b!6401487 (= e!3884975 e!3884972)))

(assert (= (and d!2006863 c!1167934) b!6401485))

(assert (= (and d!2006863 (not c!1167934)) b!6401481))

(assert (= (and b!6401481 c!1167936) b!6401479))

(assert (= (and b!6401481 (not c!1167936)) b!6401487))

(assert (= (and b!6401487 c!1167933) b!6401482))

(assert (= (and b!6401487 (not c!1167933)) b!6401483))

(assert (= (and b!6401483 c!1167935) b!6401486))

(assert (= (and b!6401483 (not c!1167935)) b!6401480))

(assert (= (and b!6401480 c!1167932) b!6401484))

(assert (= (and b!6401480 (not c!1167932)) b!6401478))

(assert (= (or b!6401484 b!6401478) bm!548692))

(assert (= (or b!6401486 bm!548692) bm!548694))

(assert (= (or b!6401482 bm!548694) bm!548693))

(assert (= (or b!6401482 b!6401484) bm!548695))

(assert (=> bm!548693 m!7197726))

(declare-fun m!7198666 () Bool)

(assert (=> bm!548693 m!7198666))

(declare-fun m!7198668 () Bool)

(assert (=> b!6401480 m!7198668))

(declare-fun m!7198670 () Bool)

(assert (=> d!2006863 m!7198670))

(assert (=> d!2006863 m!7197732))

(assert (=> bm!548695 m!7197726))

(declare-fun m!7198672 () Bool)

(assert (=> bm!548695 m!7198672))

(assert (=> b!6400415 d!2006863))

(assert (=> b!6400415 d!2006633))

(assert (=> b!6400415 d!2006671))

(declare-fun d!2006865 () Bool)

(assert (=> d!2006865 (= (maxBigInt!0 (ite c!1167701 call!548523 call!548521) (ite c!1167701 call!548521 call!548523)) (ite (>= (ite c!1167701 call!548523 call!548521) (ite c!1167701 call!548521 call!548523)) (ite c!1167701 call!548523 call!548521) (ite c!1167701 call!548521 call!548523)))))

(assert (=> bm!548514 d!2006865))

(declare-fun d!2006867 () Bool)

(assert (=> d!2006867 (= (isEmpty!37252 (tail!12197 (exprs!6195 (h!71558 zl!343)))) ((_ is Nil!65109) (tail!12197 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> b!6400216 d!2006867))

(declare-fun d!2006869 () Bool)

(assert (=> d!2006869 (= (tail!12197 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))

(assert (=> b!6400216 d!2006869))

(assert (=> d!2006501 d!2006843))

(assert (=> d!2006483 d!2006433))

(assert (=> d!2006483 d!2006459))

(declare-fun d!2006871 () Bool)

(assert (=> d!2006871 (= (matchR!8494 lt!2373658 s!2326) (matchRSpec!3412 lt!2373658 s!2326))))

(assert (=> d!2006871 true))

(declare-fun _$88!5090 () Unit!158575)

(assert (=> d!2006871 (= (choose!47598 lt!2373658 s!2326) _$88!5090)))

(declare-fun bs!1604945 () Bool)

(assert (= bs!1604945 d!2006871))

(assert (=> bs!1604945 m!7197090))

(assert (=> bs!1604945 m!7197092))

(assert (=> d!2006483 d!2006871))

(declare-fun b!6401498 () Bool)

(declare-fun res!2632122 () Bool)

(declare-fun e!3884985 () Bool)

(assert (=> b!6401498 (=> (not res!2632122) (not e!3884985))))

(declare-fun call!548707 () Bool)

(assert (=> b!6401498 (= res!2632122 call!548707)))

(declare-fun e!3884981 () Bool)

(assert (=> b!6401498 (= e!3884981 e!3884985)))

(declare-fun bm!548700 () Bool)

(declare-fun call!548706 () Bool)

(declare-fun c!1167943 () Bool)

(declare-fun c!1167942 () Bool)

(assert (=> bm!548700 (= call!548706 (validRegex!8047 (ite c!1167942 (reg!16640 lt!2373658) (ite c!1167943 (regTwo!33135 lt!2373658) (regTwo!33134 lt!2373658)))))))

(declare-fun b!6401499 () Bool)

(declare-fun e!3884982 () Bool)

(declare-fun e!3884983 () Bool)

(assert (=> b!6401499 (= e!3884982 e!3884983)))

(declare-fun res!2632124 () Bool)

(assert (=> b!6401499 (= res!2632124 (not (nullable!6304 (reg!16640 lt!2373658))))))

(assert (=> b!6401499 (=> (not res!2632124) (not e!3884983))))

(declare-fun b!6401500 () Bool)

(declare-fun e!3884987 () Bool)

(assert (=> b!6401500 (= e!3884987 e!3884982)))

(assert (=> b!6401500 (= c!1167942 ((_ is Star!16311) lt!2373658))))

(declare-fun b!6401501 () Bool)

(declare-fun res!2632121 () Bool)

(declare-fun e!3884986 () Bool)

(assert (=> b!6401501 (=> res!2632121 e!3884986)))

(assert (=> b!6401501 (= res!2632121 (not ((_ is Concat!25156) lt!2373658)))))

(assert (=> b!6401501 (= e!3884981 e!3884986)))

(declare-fun b!6401502 () Bool)

(assert (=> b!6401502 (= e!3884983 call!548706)))

(declare-fun b!6401503 () Bool)

(assert (=> b!6401503 (= e!3884982 e!3884981)))

(assert (=> b!6401503 (= c!1167943 ((_ is Union!16311) lt!2373658))))

(declare-fun b!6401504 () Bool)

(declare-fun call!548705 () Bool)

(assert (=> b!6401504 (= e!3884985 call!548705)))

(declare-fun b!6401505 () Bool)

(declare-fun e!3884984 () Bool)

(assert (=> b!6401505 (= e!3884984 call!548705)))

(declare-fun bm!548702 () Bool)

(assert (=> bm!548702 (= call!548705 call!548706)))

(declare-fun b!6401506 () Bool)

(assert (=> b!6401506 (= e!3884986 e!3884984)))

(declare-fun res!2632125 () Bool)

(assert (=> b!6401506 (=> (not res!2632125) (not e!3884984))))

(assert (=> b!6401506 (= res!2632125 call!548707)))

(declare-fun bm!548701 () Bool)

(assert (=> bm!548701 (= call!548707 (validRegex!8047 (ite c!1167943 (regOne!33135 lt!2373658) (regOne!33134 lt!2373658))))))

(declare-fun d!2006881 () Bool)

(declare-fun res!2632123 () Bool)

(assert (=> d!2006881 (=> res!2632123 e!3884987)))

(assert (=> d!2006881 (= res!2632123 ((_ is ElementMatch!16311) lt!2373658))))

(assert (=> d!2006881 (= (validRegex!8047 lt!2373658) e!3884987)))

(assert (= (and d!2006881 (not res!2632123)) b!6401500))

(assert (= (and b!6401500 c!1167942) b!6401499))

(assert (= (and b!6401500 (not c!1167942)) b!6401503))

(assert (= (and b!6401499 res!2632124) b!6401502))

(assert (= (and b!6401503 c!1167943) b!6401498))

(assert (= (and b!6401503 (not c!1167943)) b!6401501))

(assert (= (and b!6401498 res!2632122) b!6401504))

(assert (= (and b!6401501 (not res!2632121)) b!6401506))

(assert (= (and b!6401506 res!2632125) b!6401505))

(assert (= (or b!6401504 b!6401505) bm!548702))

(assert (= (or b!6401498 b!6401506) bm!548701))

(assert (= (or b!6401502 bm!548702) bm!548700))

(declare-fun m!7198686 () Bool)

(assert (=> bm!548700 m!7198686))

(declare-fun m!7198688 () Bool)

(assert (=> b!6401499 m!7198688))

(declare-fun m!7198690 () Bool)

(assert (=> bm!548701 m!7198690))

(assert (=> d!2006483 d!2006881))

(declare-fun d!2006887 () Bool)

(declare-fun res!2632138 () Bool)

(declare-fun e!3885010 () Bool)

(assert (=> d!2006887 (=> res!2632138 e!3885010)))

(assert (=> d!2006887 (= res!2632138 ((_ is Nil!65110) lt!2373651))))

(assert (=> d!2006887 (= (forall!15497 lt!2373651 lambda!353415) e!3885010)))

(declare-fun b!6401539 () Bool)

(declare-fun e!3885011 () Bool)

(assert (=> b!6401539 (= e!3885010 e!3885011)))

(declare-fun res!2632139 () Bool)

(assert (=> b!6401539 (=> (not res!2632139) (not e!3885011))))

(declare-fun dynLambda!25845 (Int Context!11390) Bool)

(assert (=> b!6401539 (= res!2632139 (dynLambda!25845 lambda!353415 (h!71558 lt!2373651)))))

(declare-fun b!6401540 () Bool)

(assert (=> b!6401540 (= e!3885011 (forall!15497 (t!378842 lt!2373651) lambda!353415))))

(assert (= (and d!2006887 (not res!2632138)) b!6401539))

(assert (= (and b!6401539 res!2632139) b!6401540))

(declare-fun b_lambda!243261 () Bool)

(assert (=> (not b_lambda!243261) (not b!6401539)))

(declare-fun m!7198700 () Bool)

(assert (=> b!6401539 m!7198700))

(declare-fun m!7198702 () Bool)

(assert (=> b!6401540 m!7198702))

(assert (=> b!6400837 d!2006887))

(declare-fun d!2006893 () Bool)

(declare-fun c!1167956 () Bool)

(assert (=> d!2006893 (= c!1167956 ((_ is Nil!65108) lt!2373731))))

(declare-fun e!3885014 () (InoxSet C!32892))

(assert (=> d!2006893 (= (content!12334 lt!2373731) e!3885014)))

(declare-fun b!6401545 () Bool)

(assert (=> b!6401545 (= e!3885014 ((as const (Array C!32892 Bool)) false))))

(declare-fun b!6401546 () Bool)

(assert (=> b!6401546 (= e!3885014 ((_ map or) (store ((as const (Array C!32892 Bool)) false) (h!71556 lt!2373731) true) (content!12334 (t!378840 lt!2373731))))))

(assert (= (and d!2006893 c!1167956) b!6401545))

(assert (= (and d!2006893 (not c!1167956)) b!6401546))

(declare-fun m!7198714 () Bool)

(assert (=> b!6401546 m!7198714))

(declare-fun m!7198716 () Bool)

(assert (=> b!6401546 m!7198716))

(assert (=> d!2006363 d!2006893))

(declare-fun d!2006897 () Bool)

(declare-fun c!1167957 () Bool)

(assert (=> d!2006897 (= c!1167957 ((_ is Nil!65108) (_1!36593 lt!2373686)))))

(declare-fun e!3885015 () (InoxSet C!32892))

(assert (=> d!2006897 (= (content!12334 (_1!36593 lt!2373686)) e!3885015)))

(declare-fun b!6401547 () Bool)

(assert (=> b!6401547 (= e!3885015 ((as const (Array C!32892 Bool)) false))))

(declare-fun b!6401548 () Bool)

(assert (=> b!6401548 (= e!3885015 ((_ map or) (store ((as const (Array C!32892 Bool)) false) (h!71556 (_1!36593 lt!2373686)) true) (content!12334 (t!378840 (_1!36593 lt!2373686)))))))

(assert (= (and d!2006897 c!1167957) b!6401547))

(assert (= (and d!2006897 (not c!1167957)) b!6401548))

(declare-fun m!7198718 () Bool)

(assert (=> b!6401548 m!7198718))

(declare-fun m!7198720 () Bool)

(assert (=> b!6401548 m!7198720))

(assert (=> d!2006363 d!2006897))

(declare-fun d!2006899 () Bool)

(declare-fun c!1167958 () Bool)

(assert (=> d!2006899 (= c!1167958 ((_ is Nil!65108) (_2!36593 lt!2373686)))))

(declare-fun e!3885016 () (InoxSet C!32892))

(assert (=> d!2006899 (= (content!12334 (_2!36593 lt!2373686)) e!3885016)))

(declare-fun b!6401549 () Bool)

(assert (=> b!6401549 (= e!3885016 ((as const (Array C!32892 Bool)) false))))

(declare-fun b!6401550 () Bool)

(assert (=> b!6401550 (= e!3885016 ((_ map or) (store ((as const (Array C!32892 Bool)) false) (h!71556 (_2!36593 lt!2373686)) true) (content!12334 (t!378840 (_2!36593 lt!2373686)))))))

(assert (= (and d!2006899 c!1167958) b!6401549))

(assert (= (and d!2006899 (not c!1167958)) b!6401550))

(declare-fun m!7198722 () Bool)

(assert (=> b!6401550 m!7198722))

(declare-fun m!7198724 () Bool)

(assert (=> b!6401550 m!7198724))

(assert (=> d!2006363 d!2006899))

(declare-fun d!2006901 () Bool)

(assert (=> d!2006901 (= (Exists!3381 lambda!353394) (choose!47587 lambda!353394))))

(declare-fun bs!1604952 () Bool)

(assert (= bs!1604952 d!2006901))

(declare-fun m!7198726 () Bool)

(assert (=> bs!1604952 m!7198726))

(assert (=> d!2006515 d!2006901))

(declare-fun d!2006903 () Bool)

(assert (=> d!2006903 (= (Exists!3381 lambda!353395) (choose!47587 lambda!353395))))

(declare-fun bs!1604953 () Bool)

(assert (= bs!1604953 d!2006903))

(declare-fun m!7198728 () Bool)

(assert (=> bs!1604953 m!7198728))

(assert (=> d!2006515 d!2006903))

(declare-fun bs!1604980 () Bool)

(declare-fun d!2006905 () Bool)

(assert (= bs!1604980 (and d!2006905 b!6399780)))

(declare-fun lambda!353441 () Int)

(assert (=> bs!1604980 (not (= lambda!353441 lambda!353312))))

(declare-fun bs!1604981 () Bool)

(assert (= bs!1604981 (and d!2006905 d!2006515)))

(assert (=> bs!1604981 (not (= lambda!353441 lambda!353395))))

(declare-fun bs!1604983 () Bool)

(assert (= bs!1604983 (and d!2006905 b!6400731)))

(assert (=> bs!1604983 (not (= lambda!353441 lambda!353401))))

(declare-fun bs!1604986 () Bool)

(assert (= bs!1604986 (and d!2006905 d!2006367)))

(assert (=> bs!1604986 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353441 lambda!353347))))

(declare-fun bs!1604987 () Bool)

(assert (= bs!1604987 (and d!2006905 d!2006513)))

(assert (=> bs!1604987 (= lambda!353441 lambda!353393)))

(declare-fun bs!1604988 () Bool)

(assert (= bs!1604988 (and d!2006905 b!6400503)))

(assert (=> bs!1604988 (not (= lambda!353441 lambda!353384))))

(assert (=> bs!1604981 (= lambda!353441 lambda!353394)))

(declare-fun bs!1604989 () Bool)

(assert (= bs!1604989 (and d!2006905 b!6399764)))

(assert (=> bs!1604989 (not (= lambda!353441 lambda!353315))))

(declare-fun bs!1604990 () Bool)

(assert (= bs!1604990 (and d!2006905 b!6400737)))

(assert (=> bs!1604990 (not (= lambda!353441 lambda!353402))))

(assert (=> bs!1604989 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353441 lambda!353314))))

(declare-fun bs!1604991 () Bool)

(assert (= bs!1604991 (and d!2006905 d!2006349)))

(assert (=> bs!1604991 (not (= lambda!353441 lambda!353340))))

(declare-fun bs!1604992 () Bool)

(assert (= bs!1604992 (and d!2006905 b!6400509)))

(assert (=> bs!1604992 (not (= lambda!353441 lambda!353386))))

(assert (=> bs!1604991 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353441 lambda!353337))))

(assert (=> bs!1604980 (= lambda!353441 lambda!353311)))

(assert (=> d!2006905 true))

(assert (=> d!2006905 true))

(assert (=> d!2006905 true))

(declare-fun lambda!353442 () Int)

(assert (=> bs!1604980 (= lambda!353442 lambda!353312)))

(assert (=> bs!1604981 (= lambda!353442 lambda!353395)))

(assert (=> bs!1604983 (not (= lambda!353442 lambda!353401))))

(declare-fun bs!1604993 () Bool)

(assert (= bs!1604993 d!2006905))

(assert (=> bs!1604993 (not (= lambda!353442 lambda!353441))))

(assert (=> bs!1604986 (not (= lambda!353442 lambda!353347))))

(assert (=> bs!1604987 (not (= lambda!353442 lambda!353393))))

(assert (=> bs!1604988 (not (= lambda!353442 lambda!353384))))

(assert (=> bs!1604981 (not (= lambda!353442 lambda!353394))))

(assert (=> bs!1604989 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353442 lambda!353315))))

(assert (=> bs!1604990 (= lambda!353442 lambda!353402)))

(assert (=> bs!1604989 (not (= lambda!353442 lambda!353314))))

(assert (=> bs!1604991 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353442 lambda!353340))))

(assert (=> bs!1604992 (= (and (= (regOne!33134 r!7292) (regOne!33134 lt!2373658)) (= (regTwo!33134 r!7292) (regTwo!33134 lt!2373658))) (= lambda!353442 lambda!353386))))

(assert (=> bs!1604991 (not (= lambda!353442 lambda!353337))))

(assert (=> bs!1604980 (not (= lambda!353442 lambda!353311))))

(assert (=> d!2006905 true))

(assert (=> d!2006905 true))

(assert (=> d!2006905 true))

(assert (=> d!2006905 (= (Exists!3381 lambda!353441) (Exists!3381 lambda!353442))))

(assert (=> d!2006905 true))

(declare-fun _$90!2260 () Unit!158575)

(assert (=> d!2006905 (= (choose!47588 (regOne!33134 r!7292) (regTwo!33134 r!7292) s!2326) _$90!2260)))

(declare-fun m!7198782 () Bool)

(assert (=> bs!1604993 m!7198782))

(declare-fun m!7198784 () Bool)

(assert (=> bs!1604993 m!7198784))

(assert (=> d!2006515 d!2006905))

(declare-fun b!6401598 () Bool)

(declare-fun res!2632166 () Bool)

(declare-fun e!3885051 () Bool)

(assert (=> b!6401598 (=> (not res!2632166) (not e!3885051))))

(declare-fun call!548727 () Bool)

(assert (=> b!6401598 (= res!2632166 call!548727)))

(declare-fun e!3885047 () Bool)

(assert (=> b!6401598 (= e!3885047 e!3885051)))

(declare-fun call!548726 () Bool)

(declare-fun c!1167971 () Bool)

(declare-fun bm!548720 () Bool)

(declare-fun c!1167970 () Bool)

(assert (=> bm!548720 (= call!548726 (validRegex!8047 (ite c!1167970 (reg!16640 (regOne!33134 r!7292)) (ite c!1167971 (regTwo!33135 (regOne!33134 r!7292)) (regTwo!33134 (regOne!33134 r!7292))))))))

(declare-fun b!6401599 () Bool)

(declare-fun e!3885048 () Bool)

(declare-fun e!3885049 () Bool)

(assert (=> b!6401599 (= e!3885048 e!3885049)))

(declare-fun res!2632168 () Bool)

(assert (=> b!6401599 (= res!2632168 (not (nullable!6304 (reg!16640 (regOne!33134 r!7292)))))))

(assert (=> b!6401599 (=> (not res!2632168) (not e!3885049))))

(declare-fun b!6401600 () Bool)

(declare-fun e!3885053 () Bool)

(assert (=> b!6401600 (= e!3885053 e!3885048)))

(assert (=> b!6401600 (= c!1167970 ((_ is Star!16311) (regOne!33134 r!7292)))))

(declare-fun b!6401601 () Bool)

(declare-fun res!2632165 () Bool)

(declare-fun e!3885052 () Bool)

(assert (=> b!6401601 (=> res!2632165 e!3885052)))

(assert (=> b!6401601 (= res!2632165 (not ((_ is Concat!25156) (regOne!33134 r!7292))))))

(assert (=> b!6401601 (= e!3885047 e!3885052)))

(declare-fun b!6401602 () Bool)

(assert (=> b!6401602 (= e!3885049 call!548726)))

(declare-fun b!6401603 () Bool)

(assert (=> b!6401603 (= e!3885048 e!3885047)))

(assert (=> b!6401603 (= c!1167971 ((_ is Union!16311) (regOne!33134 r!7292)))))

(declare-fun b!6401604 () Bool)

(declare-fun call!548725 () Bool)

(assert (=> b!6401604 (= e!3885051 call!548725)))

(declare-fun b!6401605 () Bool)

(declare-fun e!3885050 () Bool)

(assert (=> b!6401605 (= e!3885050 call!548725)))

(declare-fun bm!548722 () Bool)

(assert (=> bm!548722 (= call!548725 call!548726)))

(declare-fun b!6401606 () Bool)

(assert (=> b!6401606 (= e!3885052 e!3885050)))

(declare-fun res!2632169 () Bool)

(assert (=> b!6401606 (=> (not res!2632169) (not e!3885050))))

(assert (=> b!6401606 (= res!2632169 call!548727)))

(declare-fun bm!548721 () Bool)

(assert (=> bm!548721 (= call!548727 (validRegex!8047 (ite c!1167971 (regOne!33135 (regOne!33134 r!7292)) (regOne!33134 (regOne!33134 r!7292)))))))

(declare-fun d!2006931 () Bool)

(declare-fun res!2632167 () Bool)

(assert (=> d!2006931 (=> res!2632167 e!3885053)))

(assert (=> d!2006931 (= res!2632167 ((_ is ElementMatch!16311) (regOne!33134 r!7292)))))

(assert (=> d!2006931 (= (validRegex!8047 (regOne!33134 r!7292)) e!3885053)))

(assert (= (and d!2006931 (not res!2632167)) b!6401600))

(assert (= (and b!6401600 c!1167970) b!6401599))

(assert (= (and b!6401600 (not c!1167970)) b!6401603))

(assert (= (and b!6401599 res!2632168) b!6401602))

(assert (= (and b!6401603 c!1167971) b!6401598))

(assert (= (and b!6401603 (not c!1167971)) b!6401601))

(assert (= (and b!6401598 res!2632166) b!6401604))

(assert (= (and b!6401601 (not res!2632165)) b!6401606))

(assert (= (and b!6401606 res!2632169) b!6401605))

(assert (= (or b!6401604 b!6401605) bm!548722))

(assert (= (or b!6401598 b!6401606) bm!548721))

(assert (= (or b!6401602 bm!548722) bm!548720))

(declare-fun m!7198786 () Bool)

(assert (=> bm!548720 m!7198786))

(declare-fun m!7198788 () Bool)

(assert (=> b!6401599 m!7198788))

(declare-fun m!7198790 () Bool)

(assert (=> bm!548721 m!7198790))

(assert (=> d!2006515 d!2006931))

(assert (=> d!2006559 d!2006843))

(assert (=> d!2006559 d!2006543))

(declare-fun c!1167972 () Bool)

(declare-fun b!6401607 () Bool)

(assert (=> b!6401607 (= c!1167972 ((_ is Union!16311) (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))))))

(declare-fun e!3885061 () Int)

(declare-fun e!3885056 () Int)

(assert (=> b!6401607 (= e!3885061 e!3885056)))

(declare-fun call!548733 () Int)

(declare-fun bm!548723 () Bool)

(assert (=> bm!548723 (= call!548733 (regexDepth!338 (ite c!1167972 (regOne!33135 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))) (regTwo!33134 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))))))))

(declare-fun call!548731 () Int)

(declare-fun call!548734 () Int)

(declare-fun bm!548724 () Bool)

(assert (=> bm!548724 (= call!548734 (maxBigInt!0 (ite c!1167972 call!548733 call!548731) (ite c!1167972 call!548731 call!548733)))))

(declare-fun b!6401608 () Bool)

(declare-fun call!548730 () Int)

(assert (=> b!6401608 (= e!3885061 (+ 1 call!548730))))

(declare-fun b!6401609 () Bool)

(declare-fun e!3885057 () Bool)

(declare-fun lt!2373893 () Int)

(assert (=> b!6401609 (= e!3885057 (= lt!2373893 1))))

(declare-fun b!6401611 () Bool)

(declare-fun res!2632171 () Bool)

(declare-fun e!3885055 () Bool)

(assert (=> b!6401611 (=> (not res!2632171) (not e!3885055))))

(declare-fun call!548728 () Int)

(assert (=> b!6401611 (= res!2632171 (> lt!2373893 call!548728))))

(declare-fun e!3885058 () Bool)

(assert (=> b!6401611 (= e!3885058 e!3885055)))

(declare-fun b!6401612 () Bool)

(declare-fun e!3885062 () Int)

(assert (=> b!6401612 (= e!3885062 e!3885061)))

(declare-fun c!1167978 () Bool)

(assert (=> b!6401612 (= c!1167978 ((_ is Star!16311) (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))))))

(declare-fun b!6401613 () Bool)

(declare-fun e!3885060 () Bool)

(assert (=> b!6401613 (= e!3885060 e!3885058)))

(declare-fun c!1167973 () Bool)

(assert (=> b!6401613 (= c!1167973 ((_ is Concat!25156) (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))))))

(declare-fun b!6401614 () Bool)

(declare-fun call!548729 () Int)

(assert (=> b!6401614 (= e!3885055 (> lt!2373893 call!548729))))

(declare-fun b!6401615 () Bool)

(assert (=> b!6401615 (= e!3885056 (+ 1 call!548734))))

(declare-fun b!6401616 () Bool)

(assert (=> b!6401616 (= e!3885057 (> lt!2373893 call!548728))))

(declare-fun b!6401617 () Bool)

(declare-fun e!3885054 () Int)

(assert (=> b!6401617 (= e!3885054 (+ 1 call!548734))))

(declare-fun b!6401618 () Bool)

(declare-fun e!3885059 () Bool)

(declare-fun call!548732 () Int)

(assert (=> b!6401618 (= e!3885059 (> lt!2373893 call!548732))))

(declare-fun b!6401619 () Bool)

(declare-fun e!3885063 () Bool)

(assert (=> b!6401619 (= e!3885063 e!3885060)))

(declare-fun c!1167974 () Bool)

(assert (=> b!6401619 (= c!1167974 ((_ is Union!16311) (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))))))

(declare-fun bm!548725 () Bool)

(assert (=> bm!548725 (= call!548730 (regexDepth!338 (ite c!1167978 (reg!16640 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))) (ite c!1167972 (regTwo!33135 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))) (regOne!33134 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292))))))))))

(declare-fun b!6401620 () Bool)

(declare-fun c!1167975 () Bool)

(assert (=> b!6401620 (= c!1167975 ((_ is Star!16311) (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))))))

(assert (=> b!6401620 (= e!3885058 e!3885057)))

(declare-fun d!2006933 () Bool)

(assert (=> d!2006933 e!3885063))

(declare-fun res!2632172 () Bool)

(assert (=> d!2006933 (=> (not res!2632172) (not e!3885063))))

(assert (=> d!2006933 (= res!2632172 (> lt!2373893 0))))

(assert (=> d!2006933 (= lt!2373893 e!3885062)))

(declare-fun c!1167976 () Bool)

(assert (=> d!2006933 (= c!1167976 ((_ is ElementMatch!16311) (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))))))

(assert (=> d!2006933 (= (regexDepth!338 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))) lt!2373893)))

(declare-fun b!6401610 () Bool)

(assert (=> b!6401610 (= e!3885056 e!3885054)))

(declare-fun c!1167977 () Bool)

(assert (=> b!6401610 (= c!1167977 ((_ is Concat!25156) (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))))))

(declare-fun b!6401621 () Bool)

(assert (=> b!6401621 (= e!3885062 1)))

(declare-fun bm!548726 () Bool)

(assert (=> bm!548726 (= call!548729 (regexDepth!338 (ite c!1167974 (regOne!33135 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))) (regTwo!33134 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))))))))

(declare-fun b!6401622 () Bool)

(assert (=> b!6401622 (= e!3885060 e!3885059)))

(declare-fun res!2632170 () Bool)

(assert (=> b!6401622 (= res!2632170 (> lt!2373893 call!548729))))

(assert (=> b!6401622 (=> (not res!2632170) (not e!3885059))))

(declare-fun bm!548727 () Bool)

(assert (=> bm!548727 (= call!548732 (regexDepth!338 (ite c!1167974 (regTwo!33135 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))) (ite c!1167973 (regOne!33134 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292)))) (reg!16640 (ite c!1167696 (regTwo!33135 r!7292) (ite c!1167695 (regOne!33134 r!7292) (reg!16640 r!7292))))))))))

(declare-fun bm!548728 () Bool)

(assert (=> bm!548728 (= call!548728 call!548732)))

(declare-fun bm!548729 () Bool)

(assert (=> bm!548729 (= call!548731 call!548730)))

(declare-fun b!6401623 () Bool)

(assert (=> b!6401623 (= e!3885054 1)))

(assert (= (and d!2006933 c!1167976) b!6401621))

(assert (= (and d!2006933 (not c!1167976)) b!6401612))

(assert (= (and b!6401612 c!1167978) b!6401608))

(assert (= (and b!6401612 (not c!1167978)) b!6401607))

(assert (= (and b!6401607 c!1167972) b!6401615))

(assert (= (and b!6401607 (not c!1167972)) b!6401610))

(assert (= (and b!6401610 c!1167977) b!6401617))

(assert (= (and b!6401610 (not c!1167977)) b!6401623))

(assert (= (or b!6401615 b!6401617) bm!548729))

(assert (= (or b!6401615 b!6401617) bm!548723))

(assert (= (or b!6401615 b!6401617) bm!548724))

(assert (= (or b!6401608 bm!548729) bm!548725))

(assert (= (and d!2006933 res!2632172) b!6401619))

(assert (= (and b!6401619 c!1167974) b!6401622))

(assert (= (and b!6401619 (not c!1167974)) b!6401613))

(assert (= (and b!6401622 res!2632170) b!6401618))

(assert (= (and b!6401613 c!1167973) b!6401611))

(assert (= (and b!6401613 (not c!1167973)) b!6401620))

(assert (= (and b!6401611 res!2632171) b!6401614))

(assert (= (and b!6401620 c!1167975) b!6401616))

(assert (= (and b!6401620 (not c!1167975)) b!6401609))

(assert (= (or b!6401611 b!6401616) bm!548728))

(assert (= (or b!6401618 bm!548728) bm!548727))

(assert (= (or b!6401622 b!6401614) bm!548726))

(declare-fun m!7198792 () Bool)

(assert (=> bm!548724 m!7198792))

(declare-fun m!7198794 () Bool)

(assert (=> bm!548725 m!7198794))

(declare-fun m!7198796 () Bool)

(assert (=> bm!548726 m!7198796))

(declare-fun m!7198798 () Bool)

(assert (=> bm!548727 m!7198798))

(declare-fun m!7198800 () Bool)

(assert (=> bm!548723 m!7198800))

(assert (=> bm!548510 d!2006933))

(declare-fun d!2006935 () Bool)

(assert (=> d!2006935 (= (nullable!6304 lt!2373658) (nullableFct!2250 lt!2373658))))

(declare-fun bs!1604994 () Bool)

(assert (= bs!1604994 d!2006935))

(declare-fun m!7198802 () Bool)

(assert (=> bs!1604994 m!7198802))

(assert (=> b!6400419 d!2006935))

(declare-fun d!2006937 () Bool)

(assert (=> d!2006937 (= (isEmpty!37252 (exprs!6195 (h!71558 zl!343))) ((_ is Nil!65109) (exprs!6195 (h!71558 zl!343))))))

(assert (=> b!6400220 d!2006937))

(assert (=> d!2006387 d!2006383))

(declare-fun d!2006939 () Bool)

(assert (=> d!2006939 (= (flatMap!1816 lt!2373683 lambda!353313) (dynLambda!25841 lambda!353313 lt!2373652))))

(assert (=> d!2006939 true))

(declare-fun _$13!3598 () Unit!158575)

(assert (=> d!2006939 (= (choose!47593 lt!2373683 lt!2373652 lambda!353313) _$13!3598)))

(declare-fun b_lambda!243265 () Bool)

(assert (=> (not b_lambda!243265) (not d!2006939)))

(declare-fun bs!1604995 () Bool)

(assert (= bs!1604995 d!2006939))

(assert (=> bs!1604995 m!7197132))

(assert (=> bs!1604995 m!7197498))

(assert (=> d!2006387 d!2006939))

(declare-fun e!3885066 () (InoxSet Context!11390))

(declare-fun call!548735 () (InoxSet Context!11390))

(declare-fun b!6401628 () Bool)

(assert (=> b!6401628 (= e!3885066 ((_ map or) call!548735 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))))))) (h!71556 s!2326))))))

(declare-fun d!2006941 () Bool)

(declare-fun c!1167979 () Bool)

(declare-fun e!3885068 () Bool)

(assert (=> d!2006941 (= c!1167979 e!3885068)))

(declare-fun res!2632177 () Bool)

(assert (=> d!2006941 (=> (not res!2632177) (not e!3885068))))

(assert (=> d!2006941 (= res!2632177 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))))))))

(assert (=> d!2006941 (= (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (h!71556 s!2326)) e!3885066)))

(declare-fun b!6401629 () Bool)

(assert (=> b!6401629 (= e!3885068 (nullable!6304 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))))))))))

(declare-fun b!6401630 () Bool)

(declare-fun e!3885067 () (InoxSet Context!11390))

(assert (=> b!6401630 (= e!3885067 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548730 () Bool)

(assert (=> bm!548730 (= call!548735 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))))) (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))))))) (h!71556 s!2326)))))

(declare-fun b!6401631 () Bool)

(assert (=> b!6401631 (= e!3885066 e!3885067)))

(declare-fun c!1167980 () Bool)

(assert (=> b!6401631 (= c!1167980 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))))))))

(declare-fun b!6401632 () Bool)

(assert (=> b!6401632 (= e!3885067 call!548735)))

(assert (= (and d!2006941 res!2632177) b!6401629))

(assert (= (and d!2006941 c!1167979) b!6401628))

(assert (= (and d!2006941 (not c!1167979)) b!6401631))

(assert (= (and b!6401631 c!1167980) b!6401632))

(assert (= (and b!6401631 (not c!1167980)) b!6401630))

(assert (= (or b!6401628 b!6401632) bm!548730))

(declare-fun m!7198804 () Bool)

(assert (=> b!6401628 m!7198804))

(declare-fun m!7198806 () Bool)

(assert (=> b!6401629 m!7198806))

(declare-fun m!7198808 () Bool)

(assert (=> bm!548730 m!7198808))

(assert (=> b!6400845 d!2006941))

(declare-fun e!3885069 () (InoxSet Context!11390))

(declare-fun call!548736 () (InoxSet Context!11390))

(declare-fun b!6401633 () Bool)

(assert (=> b!6401633 (= e!3885069 ((_ map or) call!548736 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343))))))) (h!71556 s!2326))))))

(declare-fun d!2006943 () Bool)

(declare-fun c!1167981 () Bool)

(declare-fun e!3885071 () Bool)

(assert (=> d!2006943 (= c!1167981 e!3885071)))

(declare-fun res!2632178 () Bool)

(assert (=> d!2006943 (=> (not res!2632178) (not e!3885071))))

(assert (=> d!2006943 (= res!2632178 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))))))))

(assert (=> d!2006943 (= (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))) (h!71556 s!2326)) e!3885069)))

(declare-fun b!6401634 () Bool)

(assert (=> b!6401634 (= e!3885071 (nullable!6304 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343))))))))))

(declare-fun b!6401635 () Bool)

(declare-fun e!3885070 () (InoxSet Context!11390))

(assert (=> b!6401635 (= e!3885070 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548731 () Bool)

(assert (=> bm!548731 (= call!548736 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))))) (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343))))))) (h!71556 s!2326)))))

(declare-fun b!6401636 () Bool)

(assert (=> b!6401636 (= e!3885069 e!3885070)))

(declare-fun c!1167982 () Bool)

(assert (=> b!6401636 (= c!1167982 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun b!6401637 () Bool)

(assert (=> b!6401637 (= e!3885070 call!548736)))

(assert (= (and d!2006943 res!2632178) b!6401634))

(assert (= (and d!2006943 c!1167981) b!6401633))

(assert (= (and d!2006943 (not c!1167981)) b!6401636))

(assert (= (and b!6401636 c!1167982) b!6401637))

(assert (= (and b!6401636 (not c!1167982)) b!6401635))

(assert (= (or b!6401633 b!6401637) bm!548731))

(declare-fun m!7198810 () Bool)

(assert (=> b!6401633 m!7198810))

(declare-fun m!7198812 () Bool)

(assert (=> b!6401634 m!7198812))

(declare-fun m!7198814 () Bool)

(assert (=> bm!548731 m!7198814))

(assert (=> b!6400850 d!2006943))

(declare-fun call!548737 () (InoxSet Context!11390))

(declare-fun e!3885072 () (InoxSet Context!11390))

(declare-fun b!6401638 () Bool)

(assert (=> b!6401638 (= e!3885072 ((_ map or) call!548737 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373652)))))) (h!71556 s!2326))))))

(declare-fun d!2006945 () Bool)

(declare-fun c!1167983 () Bool)

(declare-fun e!3885074 () Bool)

(assert (=> d!2006945 (= c!1167983 e!3885074)))

(declare-fun res!2632179 () Bool)

(assert (=> d!2006945 (=> (not res!2632179) (not e!3885074))))

(assert (=> d!2006945 (= res!2632179 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373652))))))))

(assert (=> d!2006945 (= (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 lt!2373652))) (h!71556 s!2326)) e!3885072)))

(declare-fun b!6401639 () Bool)

(assert (=> b!6401639 (= e!3885074 (nullable!6304 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373652)))))))))

(declare-fun b!6401640 () Bool)

(declare-fun e!3885073 () (InoxSet Context!11390))

(assert (=> b!6401640 (= e!3885073 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548732 () Bool)

(assert (=> bm!548732 (= call!548737 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373652))))) (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373652)))))) (h!71556 s!2326)))))

(declare-fun b!6401641 () Bool)

(assert (=> b!6401641 (= e!3885072 e!3885073)))

(declare-fun c!1167984 () Bool)

(assert (=> b!6401641 (= c!1167984 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373652))))))))

(declare-fun b!6401642 () Bool)

(assert (=> b!6401642 (= e!3885073 call!548737)))

(assert (= (and d!2006945 res!2632179) b!6401639))

(assert (= (and d!2006945 c!1167983) b!6401638))

(assert (= (and d!2006945 (not c!1167983)) b!6401641))

(assert (= (and b!6401641 c!1167984) b!6401642))

(assert (= (and b!6401641 (not c!1167984)) b!6401640))

(assert (= (or b!6401638 b!6401642) bm!548732))

(declare-fun m!7198816 () Bool)

(assert (=> b!6401638 m!7198816))

(declare-fun m!7198818 () Bool)

(assert (=> b!6401639 m!7198818))

(declare-fun m!7198820 () Bool)

(assert (=> bm!548732 m!7198820))

(assert (=> b!6400155 d!2006945))

(assert (=> b!6400760 d!2006649))

(assert (=> b!6400111 d!2006753))

(assert (=> b!6400111 d!2006755))

(assert (=> b!6400111 d!2006757))

(declare-fun b!6401643 () Bool)

(declare-fun e!3885079 () Option!16202)

(declare-fun e!3885078 () Option!16202)

(assert (=> b!6401643 (= e!3885079 e!3885078)))

(declare-fun c!1167985 () Bool)

(assert (=> b!6401643 (= c!1167985 ((_ is Nil!65108) (t!378840 s!2326)))))

(declare-fun b!6401644 () Bool)

(declare-fun lt!2373894 () Unit!158575)

(declare-fun lt!2373896 () Unit!158575)

(assert (=> b!6401644 (= lt!2373894 lt!2373896)))

(assert (=> b!6401644 (= (++!14379 (++!14379 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (Cons!65108 (h!71556 (t!378840 s!2326)) Nil!65108)) (t!378840 (t!378840 s!2326))) s!2326)))

(assert (=> b!6401644 (= lt!2373896 (lemmaMoveElementToOtherListKeepsConcatEq!2473 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (h!71556 (t!378840 s!2326)) (t!378840 (t!378840 s!2326)) s!2326))))

(assert (=> b!6401644 (= e!3885078 (findConcatSeparation!2616 lt!2373664 (regTwo!33134 r!7292) (++!14379 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (Cons!65108 (h!71556 (t!378840 s!2326)) Nil!65108)) (t!378840 (t!378840 s!2326)) s!2326))))

(declare-fun b!6401645 () Bool)

(declare-fun e!3885075 () Bool)

(declare-fun lt!2373895 () Option!16202)

(assert (=> b!6401645 (= e!3885075 (not (isDefined!12905 lt!2373895)))))

(declare-fun b!6401646 () Bool)

(declare-fun res!2632184 () Bool)

(declare-fun e!3885076 () Bool)

(assert (=> b!6401646 (=> (not res!2632184) (not e!3885076))))

(assert (=> b!6401646 (= res!2632184 (matchR!8494 (regTwo!33134 r!7292) (_2!36593 (get!22550 lt!2373895))))))

(declare-fun b!6401647 () Bool)

(declare-fun e!3885077 () Bool)

(assert (=> b!6401647 (= e!3885077 (matchR!8494 (regTwo!33134 r!7292) (t!378840 s!2326)))))

(declare-fun b!6401648 () Bool)

(assert (=> b!6401648 (= e!3885078 None!16201)))

(declare-fun b!6401649 () Bool)

(assert (=> b!6401649 (= e!3885076 (= (++!14379 (_1!36593 (get!22550 lt!2373895)) (_2!36593 (get!22550 lt!2373895))) s!2326))))

(declare-fun b!6401650 () Bool)

(declare-fun res!2632181 () Bool)

(assert (=> b!6401650 (=> (not res!2632181) (not e!3885076))))

(assert (=> b!6401650 (= res!2632181 (matchR!8494 lt!2373664 (_1!36593 (get!22550 lt!2373895))))))

(declare-fun d!2006947 () Bool)

(assert (=> d!2006947 e!3885075))

(declare-fun res!2632183 () Bool)

(assert (=> d!2006947 (=> res!2632183 e!3885075)))

(assert (=> d!2006947 (= res!2632183 e!3885076)))

(declare-fun res!2632180 () Bool)

(assert (=> d!2006947 (=> (not res!2632180) (not e!3885076))))

(assert (=> d!2006947 (= res!2632180 (isDefined!12905 lt!2373895))))

(assert (=> d!2006947 (= lt!2373895 e!3885079)))

(declare-fun c!1167986 () Bool)

(assert (=> d!2006947 (= c!1167986 e!3885077)))

(declare-fun res!2632182 () Bool)

(assert (=> d!2006947 (=> (not res!2632182) (not e!3885077))))

(assert (=> d!2006947 (= res!2632182 (matchR!8494 lt!2373664 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108))))))

(assert (=> d!2006947 (validRegex!8047 lt!2373664)))

(assert (=> d!2006947 (= (findConcatSeparation!2616 lt!2373664 (regTwo!33134 r!7292) (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (t!378840 s!2326) s!2326) lt!2373895)))

(declare-fun b!6401651 () Bool)

(assert (=> b!6401651 (= e!3885079 (Some!16201 (tuple2!66581 (++!14379 Nil!65108 (Cons!65108 (h!71556 s!2326) Nil!65108)) (t!378840 s!2326))))))

(assert (= (and d!2006947 res!2632182) b!6401647))

(assert (= (and d!2006947 c!1167986) b!6401651))

(assert (= (and d!2006947 (not c!1167986)) b!6401643))

(assert (= (and b!6401643 c!1167985) b!6401648))

(assert (= (and b!6401643 (not c!1167985)) b!6401644))

(assert (= (and d!2006947 res!2632180) b!6401650))

(assert (= (and b!6401650 res!2632181) b!6401646))

(assert (= (and b!6401646 res!2632184) b!6401649))

(assert (= (and d!2006947 (not res!2632183)) b!6401645))

(declare-fun m!7198822 () Bool)

(assert (=> b!6401646 m!7198822))

(declare-fun m!7198824 () Bool)

(assert (=> b!6401646 m!7198824))

(assert (=> b!6401650 m!7198822))

(declare-fun m!7198826 () Bool)

(assert (=> b!6401650 m!7198826))

(assert (=> b!6401647 m!7198428))

(declare-fun m!7198828 () Bool)

(assert (=> d!2006947 m!7198828))

(assert (=> d!2006947 m!7197474))

(declare-fun m!7198830 () Bool)

(assert (=> d!2006947 m!7198830))

(assert (=> d!2006947 m!7197394))

(assert (=> b!6401644 m!7197474))

(assert (=> b!6401644 m!7198434))

(assert (=> b!6401644 m!7198434))

(assert (=> b!6401644 m!7198436))

(assert (=> b!6401644 m!7197474))

(assert (=> b!6401644 m!7198440))

(assert (=> b!6401644 m!7198434))

(declare-fun m!7198832 () Bool)

(assert (=> b!6401644 m!7198832))

(assert (=> b!6401645 m!7198828))

(assert (=> b!6401649 m!7198822))

(declare-fun m!7198834 () Bool)

(assert (=> b!6401649 m!7198834))

(assert (=> b!6400111 d!2006947))

(assert (=> b!6400212 d!2006553))

(declare-fun d!2006949 () Bool)

(declare-fun c!1167987 () Bool)

(assert (=> d!2006949 (= c!1167987 (isEmpty!37253 (tail!12198 s!2326)))))

(declare-fun e!3885080 () Bool)

(assert (=> d!2006949 (= (matchZipper!2323 (derivationStepZipper!2277 lt!2373660 (head!13113 s!2326)) (tail!12198 s!2326)) e!3885080)))

(declare-fun b!6401652 () Bool)

(assert (=> b!6401652 (= e!3885080 (nullableZipper!2076 (derivationStepZipper!2277 lt!2373660 (head!13113 s!2326))))))

(declare-fun b!6401653 () Bool)

(assert (=> b!6401653 (= e!3885080 (matchZipper!2323 (derivationStepZipper!2277 (derivationStepZipper!2277 lt!2373660 (head!13113 s!2326)) (head!13113 (tail!12198 s!2326))) (tail!12198 (tail!12198 s!2326))))))

(assert (= (and d!2006949 c!1167987) b!6401652))

(assert (= (and d!2006949 (not c!1167987)) b!6401653))

(assert (=> d!2006949 m!7197728))

(assert (=> d!2006949 m!7197730))

(assert (=> b!6401652 m!7197860))

(declare-fun m!7198836 () Bool)

(assert (=> b!6401652 m!7198836))

(assert (=> b!6401653 m!7197728))

(assert (=> b!6401653 m!7198652))

(assert (=> b!6401653 m!7197860))

(assert (=> b!6401653 m!7198652))

(declare-fun m!7198838 () Bool)

(assert (=> b!6401653 m!7198838))

(assert (=> b!6401653 m!7197728))

(assert (=> b!6401653 m!7198654))

(assert (=> b!6401653 m!7198838))

(assert (=> b!6401653 m!7198654))

(declare-fun m!7198840 () Bool)

(assert (=> b!6401653 m!7198840))

(assert (=> b!6400552 d!2006949))

(declare-fun bs!1605006 () Bool)

(declare-fun d!2006951 () Bool)

(assert (= bs!1605006 (and d!2006951 d!2006719)))

(declare-fun lambda!353449 () Int)

(assert (=> bs!1605006 (= (= (head!13113 s!2326) (head!13113 (t!378840 s!2326))) (= lambda!353449 lambda!353425))))

(declare-fun bs!1605007 () Bool)

(assert (= bs!1605007 (and d!2006951 d!2006491)))

(assert (=> bs!1605007 (= (= (head!13113 s!2326) (h!71556 s!2326)) (= lambda!353449 lambda!353390))))

(declare-fun bs!1605008 () Bool)

(assert (= bs!1605008 (and d!2006951 d!2006529)))

(assert (=> bs!1605008 (= (= (head!13113 s!2326) (h!71556 s!2326)) (= lambda!353449 lambda!353396))))

(declare-fun bs!1605009 () Bool)

(assert (= bs!1605009 (and d!2006951 b!6399793)))

(assert (=> bs!1605009 (= (= (head!13113 s!2326) (h!71556 s!2326)) (= lambda!353449 lambda!353313))))

(declare-fun bs!1605010 () Bool)

(assert (= bs!1605010 (and d!2006951 d!2006781)))

(assert (=> bs!1605010 (= (= (head!13113 s!2326) (head!13113 (t!378840 s!2326))) (= lambda!353449 lambda!353429))))

(assert (=> d!2006951 true))

(assert (=> d!2006951 (= (derivationStepZipper!2277 lt!2373660 (head!13113 s!2326)) (flatMap!1816 lt!2373660 lambda!353449))))

(declare-fun bs!1605012 () Bool)

(assert (= bs!1605012 d!2006951))

(declare-fun m!7198842 () Bool)

(assert (=> bs!1605012 m!7198842))

(assert (=> b!6400552 d!2006951))

(assert (=> b!6400552 d!2006633))

(assert (=> b!6400552 d!2006671))

(declare-fun b!6401654 () Bool)

(declare-fun e!3885082 () (InoxSet Context!11390))

(declare-fun call!548740 () (InoxSet Context!11390))

(declare-fun call!548743 () (InoxSet Context!11390))

(assert (=> b!6401654 (= e!3885082 ((_ map or) call!548740 call!548743))))

(declare-fun b!6401655 () Bool)

(declare-fun c!1167990 () Bool)

(declare-fun e!3885085 () Bool)

(assert (=> b!6401655 (= c!1167990 e!3885085)))

(declare-fun res!2632185 () Bool)

(assert (=> b!6401655 (=> (not res!2632185) (not e!3885085))))

(assert (=> b!6401655 (= res!2632185 ((_ is Concat!25156) (h!71557 (exprs!6195 lt!2373669))))))

(declare-fun e!3885084 () (InoxSet Context!11390))

(assert (=> b!6401655 (= e!3885082 e!3885084)))

(declare-fun bm!548733 () Bool)

(declare-fun call!548742 () (InoxSet Context!11390))

(assert (=> bm!548733 (= call!548742 call!548740)))

(declare-fun bm!548734 () Bool)

(declare-fun call!548738 () List!65233)

(declare-fun c!1167988 () Bool)

(assert (=> bm!548734 (= call!548743 (derivationStepZipperDown!1559 (ite c!1167988 (regTwo!33135 (h!71557 (exprs!6195 lt!2373669))) (regOne!33134 (h!71557 (exprs!6195 lt!2373669)))) (ite c!1167988 (Context!11391 (t!378841 (exprs!6195 lt!2373669))) (Context!11391 call!548738)) (h!71556 s!2326)))))

(declare-fun b!6401656 () Bool)

(declare-fun e!3885083 () (InoxSet Context!11390))

(assert (=> b!6401656 (= e!3885083 e!3885082)))

(assert (=> b!6401656 (= c!1167988 ((_ is Union!16311) (h!71557 (exprs!6195 lt!2373669))))))

(declare-fun b!6401657 () Bool)

(assert (=> b!6401657 (= e!3885084 ((_ map or) call!548743 call!548742))))

(declare-fun bm!548735 () Bool)

(declare-fun call!548739 () List!65233)

(assert (=> bm!548735 (= call!548739 call!548738)))

(declare-fun b!6401658 () Bool)

(declare-fun e!3885086 () (InoxSet Context!11390))

(assert (=> b!6401658 (= e!3885084 e!3885086)))

(declare-fun c!1167991 () Bool)

(assert (=> b!6401658 (= c!1167991 ((_ is Concat!25156) (h!71557 (exprs!6195 lt!2373669))))))

(declare-fun b!6401659 () Bool)

(declare-fun call!548741 () (InoxSet Context!11390))

(assert (=> b!6401659 (= e!3885086 call!548741)))

(declare-fun bm!548736 () Bool)

(assert (=> bm!548736 (= call!548740 (derivationStepZipperDown!1559 (ite c!1167988 (regOne!33135 (h!71557 (exprs!6195 lt!2373669))) (ite c!1167990 (regTwo!33134 (h!71557 (exprs!6195 lt!2373669))) (ite c!1167991 (regOne!33134 (h!71557 (exprs!6195 lt!2373669))) (reg!16640 (h!71557 (exprs!6195 lt!2373669)))))) (ite (or c!1167988 c!1167990) (Context!11391 (t!378841 (exprs!6195 lt!2373669))) (Context!11391 call!548739)) (h!71556 s!2326)))))

(declare-fun b!6401660 () Bool)

(declare-fun e!3885081 () (InoxSet Context!11390))

(assert (=> b!6401660 (= e!3885081 call!548741)))

(declare-fun bm!548737 () Bool)

(assert (=> bm!548737 (= call!548738 ($colon$colon!2172 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373669)))) (ite (or c!1167990 c!1167991) (regTwo!33134 (h!71557 (exprs!6195 lt!2373669))) (h!71557 (exprs!6195 lt!2373669)))))))

(declare-fun d!2006953 () Bool)

(declare-fun c!1167992 () Bool)

(assert (=> d!2006953 (= c!1167992 (and ((_ is ElementMatch!16311) (h!71557 (exprs!6195 lt!2373669))) (= (c!1167428 (h!71557 (exprs!6195 lt!2373669))) (h!71556 s!2326))))))

(assert (=> d!2006953 (= (derivationStepZipperDown!1559 (h!71557 (exprs!6195 lt!2373669)) (Context!11391 (t!378841 (exprs!6195 lt!2373669))) (h!71556 s!2326)) e!3885083)))

(declare-fun b!6401661 () Bool)

(assert (=> b!6401661 (= e!3885081 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6401662 () Bool)

(declare-fun c!1167989 () Bool)

(assert (=> b!6401662 (= c!1167989 ((_ is Star!16311) (h!71557 (exprs!6195 lt!2373669))))))

(assert (=> b!6401662 (= e!3885086 e!3885081)))

(declare-fun b!6401663 () Bool)

(assert (=> b!6401663 (= e!3885083 (store ((as const (Array Context!11390 Bool)) false) (Context!11391 (t!378841 (exprs!6195 lt!2373669))) true))))

(declare-fun b!6401664 () Bool)

(assert (=> b!6401664 (= e!3885085 (nullable!6304 (regOne!33134 (h!71557 (exprs!6195 lt!2373669)))))))

(declare-fun bm!548738 () Bool)

(assert (=> bm!548738 (= call!548741 call!548742)))

(assert (= (and d!2006953 c!1167992) b!6401663))

(assert (= (and d!2006953 (not c!1167992)) b!6401656))

(assert (= (and b!6401656 c!1167988) b!6401654))

(assert (= (and b!6401656 (not c!1167988)) b!6401655))

(assert (= (and b!6401655 res!2632185) b!6401664))

(assert (= (and b!6401655 c!1167990) b!6401657))

(assert (= (and b!6401655 (not c!1167990)) b!6401658))

(assert (= (and b!6401658 c!1167991) b!6401659))

(assert (= (and b!6401658 (not c!1167991)) b!6401662))

(assert (= (and b!6401662 c!1167989) b!6401660))

(assert (= (and b!6401662 (not c!1167989)) b!6401661))

(assert (= (or b!6401659 b!6401660) bm!548735))

(assert (= (or b!6401659 b!6401660) bm!548738))

(assert (= (or b!6401657 bm!548735) bm!548737))

(assert (= (or b!6401657 bm!548738) bm!548733))

(assert (= (or b!6401654 b!6401657) bm!548734))

(assert (= (or b!6401654 bm!548733) bm!548736))

(declare-fun m!7198844 () Bool)

(assert (=> bm!548734 m!7198844))

(declare-fun m!7198846 () Bool)

(assert (=> bm!548736 m!7198846))

(declare-fun m!7198848 () Bool)

(assert (=> b!6401663 m!7198848))

(declare-fun m!7198850 () Bool)

(assert (=> b!6401664 m!7198850))

(declare-fun m!7198852 () Bool)

(assert (=> bm!548737 m!7198852))

(assert (=> bm!548482 d!2006953))

(declare-fun d!2006955 () Bool)

(assert (=> d!2006955 (= (isDefined!12905 lt!2373821) (not (isEmpty!37255 lt!2373821)))))

(declare-fun bs!1605013 () Bool)

(assert (= bs!1605013 d!2006955))

(declare-fun m!7198854 () Bool)

(assert (=> bs!1605013 m!7198854))

(assert (=> b!6400557 d!2006955))

(declare-fun d!2006957 () Bool)

(assert (=> d!2006957 (= (nullable!6304 (h!71557 (exprs!6195 lt!2373656))) (nullableFct!2250 (h!71557 (exprs!6195 lt!2373656))))))

(declare-fun bs!1605014 () Bool)

(assert (= bs!1605014 d!2006957))

(declare-fun m!7198856 () Bool)

(assert (=> bs!1605014 m!7198856))

(assert (=> b!6400543 d!2006957))

(assert (=> b!6400744 d!2006669))

(assert (=> b!6400744 d!2006671))

(assert (=> bs!1604853 d!2006495))

(declare-fun b!6401665 () Bool)

(declare-fun e!3885088 () (InoxSet Context!11390))

(declare-fun call!548746 () (InoxSet Context!11390))

(declare-fun call!548749 () (InoxSet Context!11390))

(assert (=> b!6401665 (= e!3885088 ((_ map or) call!548746 call!548749))))

(declare-fun b!6401666 () Bool)

(declare-fun c!1167995 () Bool)

(declare-fun e!3885091 () Bool)

(assert (=> b!6401666 (= c!1167995 e!3885091)))

(declare-fun res!2632186 () Bool)

(assert (=> b!6401666 (=> (not res!2632186) (not e!3885091))))

(assert (=> b!6401666 (= res!2632186 ((_ is Concat!25156) (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))))))

(declare-fun e!3885090 () (InoxSet Context!11390))

(assert (=> b!6401666 (= e!3885088 e!3885090)))

(declare-fun bm!548739 () Bool)

(declare-fun call!548748 () (InoxSet Context!11390))

(assert (=> bm!548739 (= call!548748 call!548746)))

(declare-fun call!548744 () List!65233)

(declare-fun bm!548740 () Bool)

(declare-fun c!1167993 () Bool)

(assert (=> bm!548740 (= call!548749 (derivationStepZipperDown!1559 (ite c!1167993 (regTwo!33135 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))) (regOne!33134 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292)))))))) (ite c!1167993 (ite (or c!1167735 c!1167737) lt!2373652 (Context!11391 call!548543)) (Context!11391 call!548744)) (h!71556 s!2326)))))

(declare-fun b!6401667 () Bool)

(declare-fun e!3885089 () (InoxSet Context!11390))

(assert (=> b!6401667 (= e!3885089 e!3885088)))

(assert (=> b!6401667 (= c!1167993 ((_ is Union!16311) (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))))))

(declare-fun b!6401668 () Bool)

(assert (=> b!6401668 (= e!3885090 ((_ map or) call!548749 call!548748))))

(declare-fun bm!548741 () Bool)

(declare-fun call!548745 () List!65233)

(assert (=> bm!548741 (= call!548745 call!548744)))

(declare-fun b!6401669 () Bool)

(declare-fun e!3885092 () (InoxSet Context!11390))

(assert (=> b!6401669 (= e!3885090 e!3885092)))

(declare-fun c!1167996 () Bool)

(assert (=> b!6401669 (= c!1167996 ((_ is Concat!25156) (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))))))

(declare-fun b!6401670 () Bool)

(declare-fun call!548747 () (InoxSet Context!11390))

(assert (=> b!6401670 (= e!3885092 call!548747)))

(declare-fun bm!548742 () Bool)

(assert (=> bm!548742 (= call!548746 (derivationStepZipperDown!1559 (ite c!1167993 (regOne!33135 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))) (ite c!1167995 (regTwo!33134 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))) (ite c!1167996 (regOne!33134 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))) (reg!16640 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292)))))))))) (ite (or c!1167993 c!1167995) (ite (or c!1167735 c!1167737) lt!2373652 (Context!11391 call!548543)) (Context!11391 call!548745)) (h!71556 s!2326)))))

(declare-fun b!6401671 () Bool)

(declare-fun e!3885087 () (InoxSet Context!11390))

(assert (=> b!6401671 (= e!3885087 call!548747)))

(declare-fun bm!548743 () Bool)

(assert (=> bm!548743 (= call!548744 ($colon$colon!2172 (exprs!6195 (ite (or c!1167735 c!1167737) lt!2373652 (Context!11391 call!548543))) (ite (or c!1167995 c!1167996) (regTwo!33134 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))) (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292)))))))))))

(declare-fun c!1167997 () Bool)

(declare-fun d!2006959 () Bool)

(assert (=> d!2006959 (= c!1167997 (and ((_ is ElementMatch!16311) (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))) (= (c!1167428 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))) (h!71556 s!2326))))))

(assert (=> d!2006959 (= (derivationStepZipperDown!1559 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292)))))) (ite (or c!1167735 c!1167737) lt!2373652 (Context!11391 call!548543)) (h!71556 s!2326)) e!3885089)))

(declare-fun b!6401672 () Bool)

(assert (=> b!6401672 (= e!3885087 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6401673 () Bool)

(declare-fun c!1167994 () Bool)

(assert (=> b!6401673 (= c!1167994 ((_ is Star!16311) (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292))))))))))

(assert (=> b!6401673 (= e!3885092 e!3885087)))

(declare-fun b!6401674 () Bool)

(assert (=> b!6401674 (= e!3885089 (store ((as const (Array Context!11390 Bool)) false) (ite (or c!1167735 c!1167737) lt!2373652 (Context!11391 call!548543)) true))))

(declare-fun b!6401675 () Bool)

(assert (=> b!6401675 (= e!3885091 (nullable!6304 (regOne!33134 (ite c!1167735 (regOne!33135 (reg!16640 (regOne!33134 r!7292))) (ite c!1167737 (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (ite c!1167738 (regOne!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (reg!16640 (regOne!33134 r!7292)))))))))))

(declare-fun bm!548744 () Bool)

(assert (=> bm!548744 (= call!548747 call!548748)))

(assert (= (and d!2006959 c!1167997) b!6401674))

(assert (= (and d!2006959 (not c!1167997)) b!6401667))

(assert (= (and b!6401667 c!1167993) b!6401665))

(assert (= (and b!6401667 (not c!1167993)) b!6401666))

(assert (= (and b!6401666 res!2632186) b!6401675))

(assert (= (and b!6401666 c!1167995) b!6401668))

(assert (= (and b!6401666 (not c!1167995)) b!6401669))

(assert (= (and b!6401669 c!1167996) b!6401670))

(assert (= (and b!6401669 (not c!1167996)) b!6401673))

(assert (= (and b!6401673 c!1167994) b!6401671))

(assert (= (and b!6401673 (not c!1167994)) b!6401672))

(assert (= (or b!6401670 b!6401671) bm!548741))

(assert (= (or b!6401670 b!6401671) bm!548744))

(assert (= (or b!6401668 bm!548741) bm!548743))

(assert (= (or b!6401668 bm!548744) bm!548739))

(assert (= (or b!6401665 b!6401668) bm!548740))

(assert (= (or b!6401665 bm!548739) bm!548742))

(declare-fun m!7198868 () Bool)

(assert (=> bm!548740 m!7198868))

(declare-fun m!7198870 () Bool)

(assert (=> bm!548742 m!7198870))

(declare-fun m!7198872 () Bool)

(assert (=> b!6401674 m!7198872))

(declare-fun m!7198874 () Bool)

(assert (=> b!6401675 m!7198874))

(declare-fun m!7198876 () Bool)

(assert (=> bm!548743 m!7198876))

(assert (=> bm!548540 d!2006959))

(declare-fun d!2006965 () Bool)

(assert (=> d!2006965 (= (flatMap!1816 lt!2373660 lambda!353396) (choose!47592 lt!2373660 lambda!353396))))

(declare-fun bs!1605015 () Bool)

(assert (= bs!1605015 d!2006965))

(declare-fun m!7198878 () Bool)

(assert (=> bs!1605015 m!7198878))

(assert (=> d!2006529 d!2006965))

(declare-fun b!6401700 () Bool)

(declare-fun e!3885108 () List!65232)

(assert (=> b!6401700 (= e!3885108 (Cons!65108 (h!71556 (t!378840 (_1!36593 lt!2373686))) (++!14379 (t!378840 (t!378840 (_1!36593 lt!2373686))) (_2!36593 lt!2373686))))))

(declare-fun b!6401701 () Bool)

(declare-fun res!2632201 () Bool)

(declare-fun e!3885107 () Bool)

(assert (=> b!6401701 (=> (not res!2632201) (not e!3885107))))

(declare-fun lt!2373898 () List!65232)

(assert (=> b!6401701 (= res!2632201 (= (size!40369 lt!2373898) (+ (size!40369 (t!378840 (_1!36593 lt!2373686))) (size!40369 (_2!36593 lt!2373686)))))))

(declare-fun b!6401702 () Bool)

(assert (=> b!6401702 (= e!3885107 (or (not (= (_2!36593 lt!2373686) Nil!65108)) (= lt!2373898 (t!378840 (_1!36593 lt!2373686)))))))

(declare-fun b!6401699 () Bool)

(assert (=> b!6401699 (= e!3885108 (_2!36593 lt!2373686))))

(declare-fun d!2006967 () Bool)

(assert (=> d!2006967 e!3885107))

(declare-fun res!2632200 () Bool)

(assert (=> d!2006967 (=> (not res!2632200) (not e!3885107))))

(assert (=> d!2006967 (= res!2632200 (= (content!12334 lt!2373898) ((_ map or) (content!12334 (t!378840 (_1!36593 lt!2373686))) (content!12334 (_2!36593 lt!2373686)))))))

(assert (=> d!2006967 (= lt!2373898 e!3885108)))

(declare-fun c!1168003 () Bool)

(assert (=> d!2006967 (= c!1168003 ((_ is Nil!65108) (t!378840 (_1!36593 lt!2373686))))))

(assert (=> d!2006967 (= (++!14379 (t!378840 (_1!36593 lt!2373686)) (_2!36593 lt!2373686)) lt!2373898)))

(assert (= (and d!2006967 c!1168003) b!6401699))

(assert (= (and d!2006967 (not c!1168003)) b!6401700))

(assert (= (and d!2006967 res!2632200) b!6401701))

(assert (= (and b!6401701 res!2632201) b!6401702))

(declare-fun m!7198888 () Bool)

(assert (=> b!6401700 m!7198888))

(declare-fun m!7198890 () Bool)

(assert (=> b!6401701 m!7198890))

(declare-fun m!7198894 () Bool)

(assert (=> b!6401701 m!7198894))

(assert (=> b!6401701 m!7197416))

(declare-fun m!7198896 () Bool)

(assert (=> d!2006967 m!7198896))

(assert (=> d!2006967 m!7198720))

(assert (=> d!2006967 m!7197422))

(assert (=> b!6400054 d!2006967))

(assert (=> d!2006433 d!2006843))

(assert (=> d!2006433 d!2006881))

(assert (=> bs!1604849 d!2006525))

(assert (=> b!6400427 d!2006669))

(assert (=> b!6400427 d!2006671))

(declare-fun d!2006969 () Bool)

(assert (=> d!2006969 (= (isEmpty!37253 (tail!12198 (_2!36593 lt!2373686))) ((_ is Nil!65108) (tail!12198 (_2!36593 lt!2373686))))))

(assert (=> b!6400772 d!2006969))

(declare-fun d!2006971 () Bool)

(assert (=> d!2006971 (= (tail!12198 (_2!36593 lt!2373686)) (t!378840 (_2!36593 lt!2373686)))))

(assert (=> b!6400772 d!2006971))

(declare-fun d!2006973 () Bool)

(assert (=> d!2006973 (= (isEmpty!37252 (tail!12197 (t!378841 (exprs!6195 (h!71558 zl!343))))) ((_ is Nil!65109) (tail!12197 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(assert (=> b!6400723 d!2006973))

(declare-fun d!2006977 () Bool)

(assert (=> d!2006977 (= (tail!12197 (t!378841 (exprs!6195 (h!71558 zl!343)))) (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> b!6400723 d!2006977))

(declare-fun d!2006979 () Bool)

(declare-fun res!2632202 () Bool)

(declare-fun e!3885114 () Bool)

(assert (=> d!2006979 (=> res!2632202 e!3885114)))

(assert (=> d!2006979 (= res!2632202 ((_ is Nil!65109) lt!2373788))))

(assert (=> d!2006979 (= (forall!15496 lt!2373788 lambda!353368) e!3885114)))

(declare-fun b!6401713 () Bool)

(declare-fun e!3885115 () Bool)

(assert (=> b!6401713 (= e!3885114 e!3885115)))

(declare-fun res!2632203 () Bool)

(assert (=> b!6401713 (=> (not res!2632203) (not e!3885115))))

(assert (=> b!6401713 (= res!2632203 (dynLambda!25842 lambda!353368 (h!71557 lt!2373788)))))

(declare-fun b!6401714 () Bool)

(assert (=> b!6401714 (= e!3885115 (forall!15496 (t!378841 lt!2373788) lambda!353368))))

(assert (= (and d!2006979 (not res!2632202)) b!6401713))

(assert (= (and b!6401713 res!2632203) b!6401714))

(declare-fun b_lambda!243267 () Bool)

(assert (=> (not b_lambda!243267) (not b!6401713)))

(declare-fun m!7198902 () Bool)

(assert (=> b!6401713 m!7198902))

(declare-fun m!7198904 () Bool)

(assert (=> b!6401714 m!7198904))

(assert (=> d!2006429 d!2006979))

(declare-fun b!6401715 () Bool)

(declare-fun e!3885117 () Bool)

(declare-fun e!3885118 () Bool)

(assert (=> b!6401715 (= e!3885117 e!3885118)))

(declare-fun res!2632205 () Bool)

(assert (=> b!6401715 (=> res!2632205 e!3885118)))

(declare-fun call!548758 () Bool)

(assert (=> b!6401715 (= res!2632205 call!548758)))

(declare-fun b!6401716 () Bool)

(declare-fun e!3885120 () Bool)

(assert (=> b!6401716 (= e!3885120 (matchR!8494 (derivativeStep!5015 (regOne!33134 r!7292) (head!13113 (_1!36593 (get!22550 lt!2373821)))) (tail!12198 (_1!36593 (get!22550 lt!2373821)))))))

(declare-fun b!6401717 () Bool)

(declare-fun e!3885122 () Bool)

(assert (=> b!6401717 (= e!3885122 e!3885117)))

(declare-fun res!2632206 () Bool)

(assert (=> b!6401717 (=> (not res!2632206) (not e!3885117))))

(declare-fun lt!2373900 () Bool)

(assert (=> b!6401717 (= res!2632206 (not lt!2373900))))

(declare-fun b!6401718 () Bool)

(declare-fun e!3885121 () Bool)

(assert (=> b!6401718 (= e!3885121 (= (head!13113 (_1!36593 (get!22550 lt!2373821))) (c!1167428 (regOne!33134 r!7292))))))

(declare-fun b!6401719 () Bool)

(declare-fun res!2632208 () Bool)

(assert (=> b!6401719 (=> res!2632208 e!3885118)))

(assert (=> b!6401719 (= res!2632208 (not (isEmpty!37253 (tail!12198 (_1!36593 (get!22550 lt!2373821))))))))

(declare-fun b!6401720 () Bool)

(assert (=> b!6401720 (= e!3885120 (nullable!6304 (regOne!33134 r!7292)))))

(declare-fun b!6401721 () Bool)

(assert (=> b!6401721 (= e!3885118 (not (= (head!13113 (_1!36593 (get!22550 lt!2373821))) (c!1167428 (regOne!33134 r!7292)))))))

(declare-fun b!6401723 () Bool)

(declare-fun res!2632204 () Bool)

(assert (=> b!6401723 (=> res!2632204 e!3885122)))

(assert (=> b!6401723 (= res!2632204 (not ((_ is ElementMatch!16311) (regOne!33134 r!7292))))))

(declare-fun e!3885116 () Bool)

(assert (=> b!6401723 (= e!3885116 e!3885122)))

(declare-fun bm!548753 () Bool)

(assert (=> bm!548753 (= call!548758 (isEmpty!37253 (_1!36593 (get!22550 lt!2373821))))))

(declare-fun b!6401724 () Bool)

(declare-fun e!3885119 () Bool)

(assert (=> b!6401724 (= e!3885119 e!3885116)))

(declare-fun c!1168009 () Bool)

(assert (=> b!6401724 (= c!1168009 ((_ is EmptyLang!16311) (regOne!33134 r!7292)))))

(declare-fun b!6401725 () Bool)

(declare-fun res!2632207 () Bool)

(assert (=> b!6401725 (=> (not res!2632207) (not e!3885121))))

(assert (=> b!6401725 (= res!2632207 (not call!548758))))

(declare-fun b!6401726 () Bool)

(declare-fun res!2632211 () Bool)

(assert (=> b!6401726 (=> res!2632211 e!3885122)))

(assert (=> b!6401726 (= res!2632211 e!3885121)))

(declare-fun res!2632209 () Bool)

(assert (=> b!6401726 (=> (not res!2632209) (not e!3885121))))

(assert (=> b!6401726 (= res!2632209 lt!2373900)))

(declare-fun d!2006981 () Bool)

(assert (=> d!2006981 e!3885119))

(declare-fun c!1168010 () Bool)

(assert (=> d!2006981 (= c!1168010 ((_ is EmptyExpr!16311) (regOne!33134 r!7292)))))

(assert (=> d!2006981 (= lt!2373900 e!3885120)))

(declare-fun c!1168011 () Bool)

(assert (=> d!2006981 (= c!1168011 (isEmpty!37253 (_1!36593 (get!22550 lt!2373821))))))

(assert (=> d!2006981 (validRegex!8047 (regOne!33134 r!7292))))

(assert (=> d!2006981 (= (matchR!8494 (regOne!33134 r!7292) (_1!36593 (get!22550 lt!2373821))) lt!2373900)))

(declare-fun b!6401722 () Bool)

(assert (=> b!6401722 (= e!3885119 (= lt!2373900 call!548758))))

(declare-fun b!6401727 () Bool)

(assert (=> b!6401727 (= e!3885116 (not lt!2373900))))

(declare-fun b!6401728 () Bool)

(declare-fun res!2632210 () Bool)

(assert (=> b!6401728 (=> (not res!2632210) (not e!3885121))))

(assert (=> b!6401728 (= res!2632210 (isEmpty!37253 (tail!12198 (_1!36593 (get!22550 lt!2373821)))))))

(assert (= (and d!2006981 c!1168011) b!6401720))

(assert (= (and d!2006981 (not c!1168011)) b!6401716))

(assert (= (and d!2006981 c!1168010) b!6401722))

(assert (= (and d!2006981 (not c!1168010)) b!6401724))

(assert (= (and b!6401724 c!1168009) b!6401727))

(assert (= (and b!6401724 (not c!1168009)) b!6401723))

(assert (= (and b!6401723 (not res!2632204)) b!6401726))

(assert (= (and b!6401726 res!2632209) b!6401725))

(assert (= (and b!6401725 res!2632207) b!6401728))

(assert (= (and b!6401728 res!2632210) b!6401718))

(assert (= (and b!6401726 (not res!2632211)) b!6401717))

(assert (= (and b!6401717 res!2632206) b!6401715))

(assert (= (and b!6401715 (not res!2632205)) b!6401719))

(assert (= (and b!6401719 (not res!2632208)) b!6401721))

(assert (= (or b!6401722 b!6401715 b!6401725) bm!548753))

(declare-fun m!7198914 () Bool)

(assert (=> bm!548753 m!7198914))

(declare-fun m!7198918 () Bool)

(assert (=> b!6401721 m!7198918))

(declare-fun m!7198920 () Bool)

(assert (=> b!6401728 m!7198920))

(assert (=> b!6401728 m!7198920))

(declare-fun m!7198924 () Bool)

(assert (=> b!6401728 m!7198924))

(assert (=> b!6401718 m!7198918))

(assert (=> b!6401719 m!7198920))

(assert (=> b!6401719 m!7198920))

(assert (=> b!6401719 m!7198924))

(assert (=> d!2006981 m!7198914))

(assert (=> d!2006981 m!7197882))

(assert (=> b!6401716 m!7198918))

(assert (=> b!6401716 m!7198918))

(declare-fun m!7198928 () Bool)

(assert (=> b!6401716 m!7198928))

(assert (=> b!6401716 m!7198920))

(assert (=> b!6401716 m!7198928))

(assert (=> b!6401716 m!7198920))

(declare-fun m!7198930 () Bool)

(assert (=> b!6401716 m!7198930))

(declare-fun m!7198932 () Bool)

(assert (=> b!6401720 m!7198932))

(assert (=> b!6400562 d!2006981))

(assert (=> b!6400562 d!2006793))

(assert (=> b!6400851 d!2006591))

(assert (=> bm!548522 d!2006843))

(declare-fun d!2006987 () Bool)

(assert (=> d!2006987 (= (nullable!6304 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (nullableFct!2250 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))))))

(declare-fun bs!1605017 () Bool)

(assert (= bs!1605017 d!2006987))

(declare-fun m!7198934 () Bool)

(assert (=> bs!1605017 m!7198934))

(assert (=> b!6400846 d!2006987))

(assert (=> b!6400420 d!2006633))

(declare-fun d!2006989 () Bool)

(assert (=> d!2006989 (= (isEmpty!37252 (tail!12197 (unfocusZipperList!1732 zl!343))) ((_ is Nil!65109) (tail!12197 (unfocusZipperList!1732 zl!343))))))

(assert (=> b!6400279 d!2006989))

(declare-fun d!2006991 () Bool)

(assert (=> d!2006991 (= (tail!12197 (unfocusZipperList!1732 zl!343)) (t!378841 (unfocusZipperList!1732 zl!343)))))

(assert (=> b!6400279 d!2006991))

(declare-fun c!1168013 () Bool)

(declare-fun b!6401731 () Bool)

(assert (=> b!6401731 (= c!1168013 ((_ is Union!16311) (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))))))

(declare-fun e!3885131 () Int)

(declare-fun e!3885126 () Int)

(assert (=> b!6401731 (= e!3885131 e!3885126)))

(declare-fun call!548764 () Int)

(declare-fun bm!548754 () Bool)

(assert (=> bm!548754 (= call!548764 (regexDepth!338 (ite c!1168013 (regOne!33135 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))) (regTwo!33134 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))))))))

(declare-fun call!548762 () Int)

(declare-fun bm!548755 () Bool)

(declare-fun call!548765 () Int)

(assert (=> bm!548755 (= call!548765 (maxBigInt!0 (ite c!1168013 call!548764 call!548762) (ite c!1168013 call!548762 call!548764)))))

(declare-fun b!6401732 () Bool)

(declare-fun call!548761 () Int)

(assert (=> b!6401732 (= e!3885131 (+ 1 call!548761))))

(declare-fun b!6401733 () Bool)

(declare-fun e!3885127 () Bool)

(declare-fun lt!2373901 () Int)

(assert (=> b!6401733 (= e!3885127 (= lt!2373901 1))))

(declare-fun b!6401735 () Bool)

(declare-fun res!2632213 () Bool)

(declare-fun e!3885125 () Bool)

(assert (=> b!6401735 (=> (not res!2632213) (not e!3885125))))

(declare-fun call!548759 () Int)

(assert (=> b!6401735 (= res!2632213 (> lt!2373901 call!548759))))

(declare-fun e!3885128 () Bool)

(assert (=> b!6401735 (= e!3885128 e!3885125)))

(declare-fun b!6401736 () Bool)

(declare-fun e!3885132 () Int)

(assert (=> b!6401736 (= e!3885132 e!3885131)))

(declare-fun c!1168019 () Bool)

(assert (=> b!6401736 (= c!1168019 ((_ is Star!16311) (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))))))

(declare-fun b!6401737 () Bool)

(declare-fun e!3885130 () Bool)

(assert (=> b!6401737 (= e!3885130 e!3885128)))

(declare-fun c!1168014 () Bool)

(assert (=> b!6401737 (= c!1168014 ((_ is Concat!25156) (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))))))

(declare-fun b!6401738 () Bool)

(declare-fun call!548760 () Int)

(assert (=> b!6401738 (= e!3885125 (> lt!2373901 call!548760))))

(declare-fun b!6401739 () Bool)

(assert (=> b!6401739 (= e!3885126 (+ 1 call!548765))))

(declare-fun b!6401740 () Bool)

(assert (=> b!6401740 (= e!3885127 (> lt!2373901 call!548759))))

(declare-fun b!6401741 () Bool)

(declare-fun e!3885124 () Int)

(assert (=> b!6401741 (= e!3885124 (+ 1 call!548765))))

(declare-fun b!6401742 () Bool)

(declare-fun e!3885129 () Bool)

(declare-fun call!548763 () Int)

(assert (=> b!6401742 (= e!3885129 (> lt!2373901 call!548763))))

(declare-fun b!6401743 () Bool)

(declare-fun e!3885133 () Bool)

(assert (=> b!6401743 (= e!3885133 e!3885130)))

(declare-fun c!1168015 () Bool)

(assert (=> b!6401743 (= c!1168015 ((_ is Union!16311) (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))))))

(declare-fun bm!548756 () Bool)

(assert (=> bm!548756 (= call!548761 (regexDepth!338 (ite c!1168019 (reg!16640 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))) (ite c!1168013 (regTwo!33135 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))) (regOne!33134 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661))))))))))

(declare-fun c!1168016 () Bool)

(declare-fun b!6401744 () Bool)

(assert (=> b!6401744 (= c!1168016 ((_ is Star!16311) (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))))))

(assert (=> b!6401744 (= e!3885128 e!3885127)))

(declare-fun d!2006993 () Bool)

(assert (=> d!2006993 e!3885133))

(declare-fun res!2632214 () Bool)

(assert (=> d!2006993 (=> (not res!2632214) (not e!3885133))))

(assert (=> d!2006993 (= res!2632214 (> lt!2373901 0))))

(assert (=> d!2006993 (= lt!2373901 e!3885132)))

(declare-fun c!1168017 () Bool)

(assert (=> d!2006993 (= c!1168017 ((_ is ElementMatch!16311) (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))))))

(assert (=> d!2006993 (= (regexDepth!338 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))) lt!2373901)))

(declare-fun b!6401734 () Bool)

(assert (=> b!6401734 (= e!3885126 e!3885124)))

(declare-fun c!1168018 () Bool)

(assert (=> b!6401734 (= c!1168018 ((_ is Concat!25156) (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))))))

(declare-fun b!6401745 () Bool)

(assert (=> b!6401745 (= e!3885132 1)))

(declare-fun bm!548757 () Bool)

(assert (=> bm!548757 (= call!548760 (regexDepth!338 (ite c!1168015 (regOne!33135 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))) (regTwo!33134 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))))))))

(declare-fun b!6401746 () Bool)

(assert (=> b!6401746 (= e!3885130 e!3885129)))

(declare-fun res!2632212 () Bool)

(assert (=> b!6401746 (= res!2632212 (> lt!2373901 call!548760))))

(assert (=> b!6401746 (=> (not res!2632212) (not e!3885129))))

(declare-fun bm!548758 () Bool)

(assert (=> bm!548758 (= call!548763 (regexDepth!338 (ite c!1168015 (regTwo!33135 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))) (ite c!1168014 (regOne!33134 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661)))) (reg!16640 (ite c!1167707 (reg!16640 lt!2373661) (ite c!1167701 (regTwo!33135 lt!2373661) (regOne!33134 lt!2373661))))))))))

(declare-fun bm!548759 () Bool)

(assert (=> bm!548759 (= call!548759 call!548763)))

(declare-fun bm!548760 () Bool)

(assert (=> bm!548760 (= call!548762 call!548761)))

(declare-fun b!6401747 () Bool)

(assert (=> b!6401747 (= e!3885124 1)))

(assert (= (and d!2006993 c!1168017) b!6401745))

(assert (= (and d!2006993 (not c!1168017)) b!6401736))

(assert (= (and b!6401736 c!1168019) b!6401732))

(assert (= (and b!6401736 (not c!1168019)) b!6401731))

(assert (= (and b!6401731 c!1168013) b!6401739))

(assert (= (and b!6401731 (not c!1168013)) b!6401734))

(assert (= (and b!6401734 c!1168018) b!6401741))

(assert (= (and b!6401734 (not c!1168018)) b!6401747))

(assert (= (or b!6401739 b!6401741) bm!548760))

(assert (= (or b!6401739 b!6401741) bm!548754))

(assert (= (or b!6401739 b!6401741) bm!548755))

(assert (= (or b!6401732 bm!548760) bm!548756))

(assert (= (and d!2006993 res!2632214) b!6401743))

(assert (= (and b!6401743 c!1168015) b!6401746))

(assert (= (and b!6401743 (not c!1168015)) b!6401737))

(assert (= (and b!6401746 res!2632212) b!6401742))

(assert (= (and b!6401737 c!1168014) b!6401735))

(assert (= (and b!6401737 (not c!1168014)) b!6401744))

(assert (= (and b!6401735 res!2632213) b!6401738))

(assert (= (and b!6401744 c!1168016) b!6401740))

(assert (= (and b!6401744 (not c!1168016)) b!6401733))

(assert (= (or b!6401735 b!6401740) bm!548759))

(assert (= (or b!6401742 bm!548759) bm!548758))

(assert (= (or b!6401746 b!6401738) bm!548757))

(declare-fun m!7198938 () Bool)

(assert (=> bm!548755 m!7198938))

(declare-fun m!7198940 () Bool)

(assert (=> bm!548756 m!7198940))

(declare-fun m!7198942 () Bool)

(assert (=> bm!548757 m!7198942))

(declare-fun m!7198944 () Bool)

(assert (=> bm!548758 m!7198944))

(declare-fun m!7198948 () Bool)

(assert (=> bm!548754 m!7198948))

(assert (=> bm!548515 d!2006993))

(assert (=> b!6400727 d!2006381))

(declare-fun bs!1605024 () Bool)

(declare-fun b!6401759 () Bool)

(assert (= bs!1605024 (and b!6401759 b!6399780)))

(declare-fun lambda!353451 () Int)

(assert (=> bs!1605024 (not (= lambda!353451 lambda!353312))))

(declare-fun bs!1605025 () Bool)

(assert (= bs!1605025 (and b!6401759 d!2006515)))

(assert (=> bs!1605025 (not (= lambda!353451 lambda!353395))))

(declare-fun bs!1605026 () Bool)

(assert (= bs!1605026 (and b!6401759 b!6400731)))

(assert (=> bs!1605026 (= (and (= (reg!16640 (regOne!33135 lt!2373658)) (reg!16640 r!7292)) (= (regOne!33135 lt!2373658) r!7292)) (= lambda!353451 lambda!353401))))

(declare-fun bs!1605027 () Bool)

(assert (= bs!1605027 (and b!6401759 d!2006905)))

(assert (=> bs!1605027 (not (= lambda!353451 lambda!353441))))

(declare-fun bs!1605028 () Bool)

(assert (= bs!1605028 (and b!6401759 d!2006367)))

(assert (=> bs!1605028 (not (= lambda!353451 lambda!353347))))

(declare-fun bs!1605029 () Bool)

(assert (= bs!1605029 (and b!6401759 d!2006513)))

(assert (=> bs!1605029 (not (= lambda!353451 lambda!353393))))

(declare-fun bs!1605030 () Bool)

(assert (= bs!1605030 (and b!6401759 b!6400503)))

(assert (=> bs!1605030 (= (and (= (reg!16640 (regOne!33135 lt!2373658)) (reg!16640 lt!2373658)) (= (regOne!33135 lt!2373658) lt!2373658)) (= lambda!353451 lambda!353384))))

(assert (=> bs!1605025 (not (= lambda!353451 lambda!353394))))

(declare-fun bs!1605032 () Bool)

(assert (= bs!1605032 (and b!6401759 b!6399764)))

(assert (=> bs!1605032 (not (= lambda!353451 lambda!353315))))

(declare-fun bs!1605033 () Bool)

(assert (= bs!1605033 (and b!6401759 b!6400737)))

(assert (=> bs!1605033 (not (= lambda!353451 lambda!353402))))

(declare-fun bs!1605034 () Bool)

(assert (= bs!1605034 (and b!6401759 d!2006349)))

(assert (=> bs!1605034 (not (= lambda!353451 lambda!353340))))

(declare-fun bs!1605035 () Bool)

(assert (= bs!1605035 (and b!6401759 b!6400509)))

(assert (=> bs!1605035 (not (= lambda!353451 lambda!353386))))

(assert (=> bs!1605034 (not (= lambda!353451 lambda!353337))))

(assert (=> bs!1605024 (not (= lambda!353451 lambda!353311))))

(assert (=> bs!1605027 (not (= lambda!353451 lambda!353442))))

(assert (=> bs!1605032 (not (= lambda!353451 lambda!353314))))

(assert (=> b!6401759 true))

(assert (=> b!6401759 true))

(declare-fun bs!1605038 () Bool)

(declare-fun b!6401765 () Bool)

(assert (= bs!1605038 (and b!6401765 b!6399780)))

(declare-fun lambda!353452 () Int)

(assert (=> bs!1605038 (= (and (= (regOne!33134 (regOne!33135 lt!2373658)) (regOne!33134 r!7292)) (= (regTwo!33134 (regOne!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353452 lambda!353312))))

(declare-fun bs!1605039 () Bool)

(assert (= bs!1605039 (and b!6401765 d!2006515)))

(assert (=> bs!1605039 (= (and (= (regOne!33134 (regOne!33135 lt!2373658)) (regOne!33134 r!7292)) (= (regTwo!33134 (regOne!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353452 lambda!353395))))

(declare-fun bs!1605040 () Bool)

(assert (= bs!1605040 (and b!6401765 b!6400731)))

(assert (=> bs!1605040 (not (= lambda!353452 lambda!353401))))

(declare-fun bs!1605041 () Bool)

(assert (= bs!1605041 (and b!6401765 b!6401759)))

(assert (=> bs!1605041 (not (= lambda!353452 lambda!353451))))

(declare-fun bs!1605043 () Bool)

(assert (= bs!1605043 (and b!6401765 d!2006905)))

(assert (=> bs!1605043 (not (= lambda!353452 lambda!353441))))

(declare-fun bs!1605045 () Bool)

(assert (= bs!1605045 (and b!6401765 d!2006367)))

(assert (=> bs!1605045 (not (= lambda!353452 lambda!353347))))

(declare-fun bs!1605047 () Bool)

(assert (= bs!1605047 (and b!6401765 d!2006513)))

(assert (=> bs!1605047 (not (= lambda!353452 lambda!353393))))

(declare-fun bs!1605050 () Bool)

(assert (= bs!1605050 (and b!6401765 b!6400503)))

(assert (=> bs!1605050 (not (= lambda!353452 lambda!353384))))

(assert (=> bs!1605039 (not (= lambda!353452 lambda!353394))))

(declare-fun bs!1605053 () Bool)

(assert (= bs!1605053 (and b!6401765 b!6399764)))

(assert (=> bs!1605053 (= (and (= (regOne!33134 (regOne!33135 lt!2373658)) lt!2373664) (= (regTwo!33134 (regOne!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353452 lambda!353315))))

(declare-fun bs!1605055 () Bool)

(assert (= bs!1605055 (and b!6401765 b!6400737)))

(assert (=> bs!1605055 (= (and (= (regOne!33134 (regOne!33135 lt!2373658)) (regOne!33134 r!7292)) (= (regTwo!33134 (regOne!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353452 lambda!353402))))

(declare-fun bs!1605056 () Bool)

(assert (= bs!1605056 (and b!6401765 d!2006349)))

(assert (=> bs!1605056 (= (and (= (regOne!33134 (regOne!33135 lt!2373658)) lt!2373664) (= (regTwo!33134 (regOne!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353452 lambda!353340))))

(declare-fun bs!1605057 () Bool)

(assert (= bs!1605057 (and b!6401765 b!6400509)))

(assert (=> bs!1605057 (= (and (= (regOne!33134 (regOne!33135 lt!2373658)) (regOne!33134 lt!2373658)) (= (regTwo!33134 (regOne!33135 lt!2373658)) (regTwo!33134 lt!2373658))) (= lambda!353452 lambda!353386))))

(assert (=> bs!1605056 (not (= lambda!353452 lambda!353337))))

(assert (=> bs!1605038 (not (= lambda!353452 lambda!353311))))

(assert (=> bs!1605043 (= (and (= (regOne!33134 (regOne!33135 lt!2373658)) (regOne!33134 r!7292)) (= (regTwo!33134 (regOne!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353452 lambda!353442))))

(assert (=> bs!1605053 (not (= lambda!353452 lambda!353314))))

(assert (=> b!6401765 true))

(assert (=> b!6401765 true))

(declare-fun b!6401757 () Bool)

(declare-fun e!3885143 () Bool)

(assert (=> b!6401757 (= e!3885143 (= s!2326 (Cons!65108 (c!1167428 (regOne!33135 lt!2373658)) Nil!65108)))))

(declare-fun b!6401758 () Bool)

(declare-fun c!1168023 () Bool)

(assert (=> b!6401758 (= c!1168023 ((_ is Union!16311) (regOne!33135 lt!2373658)))))

(declare-fun e!3885141 () Bool)

(assert (=> b!6401758 (= e!3885143 e!3885141)))

(declare-fun e!3885144 () Bool)

(declare-fun call!548770 () Bool)

(assert (=> b!6401759 (= e!3885144 call!548770)))

(declare-fun b!6401760 () Bool)

(declare-fun e!3885142 () Bool)

(assert (=> b!6401760 (= e!3885141 e!3885142)))

(declare-fun c!1168025 () Bool)

(assert (=> b!6401760 (= c!1168025 ((_ is Star!16311) (regOne!33135 lt!2373658)))))

(declare-fun b!6401761 () Bool)

(declare-fun c!1168022 () Bool)

(assert (=> b!6401761 (= c!1168022 ((_ is ElementMatch!16311) (regOne!33135 lt!2373658)))))

(declare-fun e!3885145 () Bool)

(assert (=> b!6401761 (= e!3885145 e!3885143)))

(declare-fun b!6401762 () Bool)

(declare-fun e!3885146 () Bool)

(assert (=> b!6401762 (= e!3885146 e!3885145)))

(declare-fun res!2632220 () Bool)

(assert (=> b!6401762 (= res!2632220 (not ((_ is EmptyLang!16311) (regOne!33135 lt!2373658))))))

(assert (=> b!6401762 (=> (not res!2632220) (not e!3885145))))

(declare-fun d!2006997 () Bool)

(declare-fun c!1168024 () Bool)

(assert (=> d!2006997 (= c!1168024 ((_ is EmptyExpr!16311) (regOne!33135 lt!2373658)))))

(assert (=> d!2006997 (= (matchRSpec!3412 (regOne!33135 lt!2373658) s!2326) e!3885146)))

(declare-fun b!6401763 () Bool)

(declare-fun res!2632221 () Bool)

(assert (=> b!6401763 (=> res!2632221 e!3885144)))

(declare-fun call!548769 () Bool)

(assert (=> b!6401763 (= res!2632221 call!548769)))

(assert (=> b!6401763 (= e!3885142 e!3885144)))

(declare-fun bm!548764 () Bool)

(assert (=> bm!548764 (= call!548770 (Exists!3381 (ite c!1168025 lambda!353451 lambda!353452)))))

(declare-fun bm!548765 () Bool)

(assert (=> bm!548765 (= call!548769 (isEmpty!37253 s!2326))))

(declare-fun b!6401764 () Bool)

(assert (=> b!6401764 (= e!3885146 call!548769)))

(assert (=> b!6401765 (= e!3885142 call!548770)))

(declare-fun b!6401767 () Bool)

(declare-fun e!3885147 () Bool)

(assert (=> b!6401767 (= e!3885141 e!3885147)))

(declare-fun res!2632222 () Bool)

(assert (=> b!6401767 (= res!2632222 (matchRSpec!3412 (regOne!33135 (regOne!33135 lt!2373658)) s!2326))))

(assert (=> b!6401767 (=> res!2632222 e!3885147)))

(declare-fun b!6401768 () Bool)

(assert (=> b!6401768 (= e!3885147 (matchRSpec!3412 (regTwo!33135 (regOne!33135 lt!2373658)) s!2326))))

(assert (= (and d!2006997 c!1168024) b!6401764))

(assert (= (and d!2006997 (not c!1168024)) b!6401762))

(assert (= (and b!6401762 res!2632220) b!6401761))

(assert (= (and b!6401761 c!1168022) b!6401757))

(assert (= (and b!6401761 (not c!1168022)) b!6401758))

(assert (= (and b!6401758 c!1168023) b!6401767))

(assert (= (and b!6401758 (not c!1168023)) b!6401760))

(assert (= (and b!6401767 (not res!2632222)) b!6401768))

(assert (= (and b!6401760 c!1168025) b!6401763))

(assert (= (and b!6401760 (not c!1168025)) b!6401765))

(assert (= (and b!6401763 (not res!2632221)) b!6401759))

(assert (= (or b!6401759 b!6401765) bm!548764))

(assert (= (or b!6401764 b!6401763) bm!548765))

(declare-fun m!7198992 () Bool)

(assert (=> bm!548764 m!7198992))

(assert (=> bm!548765 m!7197724))

(declare-fun m!7198996 () Bool)

(assert (=> b!6401767 m!7198996))

(declare-fun m!7198998 () Bool)

(assert (=> b!6401768 m!7198998))

(assert (=> b!6400510 d!2006997))

(declare-fun b!6401816 () Bool)

(declare-fun call!548778 () (InoxSet Context!11390))

(declare-fun e!3885177 () (InoxSet Context!11390))

(assert (=> b!6401816 (= e!3885177 ((_ map or) call!548778 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373669)))))) (h!71556 s!2326))))))

(declare-fun d!2007027 () Bool)

(declare-fun c!1168036 () Bool)

(declare-fun e!3885179 () Bool)

(assert (=> d!2007027 (= c!1168036 e!3885179)))

(declare-fun res!2632250 () Bool)

(assert (=> d!2007027 (=> (not res!2632250) (not e!3885179))))

(assert (=> d!2007027 (= res!2632250 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373669))))))))

(assert (=> d!2007027 (= (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 lt!2373669))) (h!71556 s!2326)) e!3885177)))

(declare-fun b!6401817 () Bool)

(assert (=> b!6401817 (= e!3885179 (nullable!6304 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373669)))))))))

(declare-fun b!6401818 () Bool)

(declare-fun e!3885178 () (InoxSet Context!11390))

(assert (=> b!6401818 (= e!3885178 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548773 () Bool)

(assert (=> bm!548773 (= call!548778 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373669))))) (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373669)))))) (h!71556 s!2326)))))

(declare-fun b!6401819 () Bool)

(assert (=> b!6401819 (= e!3885177 e!3885178)))

(declare-fun c!1168037 () Bool)

(assert (=> b!6401819 (= c!1168037 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373669))))))))

(declare-fun b!6401820 () Bool)

(assert (=> b!6401820 (= e!3885178 call!548778)))

(assert (= (and d!2007027 res!2632250) b!6401817))

(assert (= (and d!2007027 c!1168036) b!6401816))

(assert (= (and d!2007027 (not c!1168036)) b!6401819))

(assert (= (and b!6401819 c!1168037) b!6401820))

(assert (= (and b!6401819 (not c!1168037)) b!6401818))

(assert (= (or b!6401816 b!6401820) bm!548773))

(declare-fun m!7199000 () Bool)

(assert (=> b!6401816 m!7199000))

(declare-fun m!7199002 () Bool)

(assert (=> b!6401817 m!7199002))

(declare-fun m!7199004 () Bool)

(assert (=> bm!548773 m!7199004))

(assert (=> b!6400600 d!2007027))

(declare-fun d!2007031 () Bool)

(assert (=> d!2007031 true))

(assert (=> d!2007031 true))

(declare-fun res!2632253 () Bool)

(assert (=> d!2007031 (= (choose!47587 lambda!353312) res!2632253)))

(assert (=> d!2006507 d!2007031))

(declare-fun bs!1605058 () Bool)

(declare-fun d!2007033 () Bool)

(assert (= bs!1605058 (and d!2007033 b!6400830)))

(declare-fun lambda!353454 () Int)

(assert (=> bs!1605058 (not (= lambda!353454 lambda!353411))))

(declare-fun bs!1605059 () Bool)

(assert (= bs!1605059 (and d!2007033 b!6400832)))

(assert (=> bs!1605059 (not (= lambda!353454 lambda!353412))))

(declare-fun bs!1605060 () Bool)

(assert (= bs!1605060 (and d!2007033 b!6400837)))

(assert (=> bs!1605060 (not (= lambda!353454 lambda!353415))))

(declare-fun bs!1605061 () Bool)

(assert (= bs!1605061 (and d!2007033 d!2006733)))

(assert (=> bs!1605061 (= lambda!353454 lambda!353428)))

(declare-fun bs!1605062 () Bool)

(assert (= bs!1605062 (and d!2007033 b!6400835)))

(assert (=> bs!1605062 (not (= lambda!353454 lambda!353414))))

(assert (=> d!2007033 (= (nullableZipper!2076 ((_ map or) lt!2373668 lt!2373666)) (exists!2591 ((_ map or) lt!2373668 lt!2373666) lambda!353454))))

(declare-fun bs!1605063 () Bool)

(assert (= bs!1605063 d!2007033))

(declare-fun m!7199010 () Bool)

(assert (=> bs!1605063 m!7199010))

(assert (=> b!6400843 d!2007033))

(declare-fun bs!1605064 () Bool)

(declare-fun d!2007041 () Bool)

(assert (= bs!1605064 (and d!2007041 d!2006667)))

(declare-fun lambda!353455 () Int)

(assert (=> bs!1605064 (= lambda!353455 lambda!353420)))

(declare-fun bs!1605065 () Bool)

(assert (= bs!1605065 (and d!2007041 d!2006553)))

(assert (=> bs!1605065 (= lambda!353455 lambda!353400)))

(declare-fun bs!1605066 () Bool)

(assert (= bs!1605066 (and d!2007041 d!2006563)))

(assert (=> bs!1605066 (= lambda!353455 lambda!353403)))

(declare-fun bs!1605067 () Bool)

(assert (= bs!1605067 (and d!2007041 d!2006429)))

(assert (=> bs!1605067 (= lambda!353455 lambda!353368)))

(declare-fun bs!1605069 () Bool)

(assert (= bs!1605069 (and d!2007041 d!2006417)))

(assert (=> bs!1605069 (= lambda!353455 lambda!353359)))

(declare-fun bs!1605070 () Bool)

(assert (= bs!1605070 (and d!2007041 d!2006681)))

(assert (=> bs!1605070 (= lambda!353455 lambda!353422)))

(declare-fun bs!1605072 () Bool)

(assert (= bs!1605072 (and d!2007041 d!2006531)))

(assert (=> bs!1605072 (= lambda!353455 lambda!353399)))

(declare-fun bs!1605073 () Bool)

(assert (= bs!1605073 (and d!2007041 d!2006421)))

(assert (=> bs!1605073 (= lambda!353455 lambda!353365)))

(declare-fun bs!1605074 () Bool)

(assert (= bs!1605074 (and d!2007041 d!2006813)))

(assert (=> bs!1605074 (= lambda!353455 lambda!353430)))

(declare-fun bs!1605075 () Bool)

(assert (= bs!1605075 (and d!2007041 d!2006821)))

(assert (=> bs!1605075 (= lambda!353455 lambda!353431)))

(declare-fun b!6401823 () Bool)

(declare-fun e!3885184 () Regex!16311)

(assert (=> b!6401823 (= e!3885184 (Union!16311 (h!71557 (t!378841 (unfocusZipperList!1732 zl!343))) (generalisedUnion!2155 (t!378841 (t!378841 (unfocusZipperList!1732 zl!343))))))))

(declare-fun b!6401824 () Bool)

(declare-fun e!3885183 () Bool)

(assert (=> b!6401824 (= e!3885183 (isEmpty!37252 (t!378841 (t!378841 (unfocusZipperList!1732 zl!343)))))))

(declare-fun b!6401825 () Bool)

(declare-fun e!3885182 () Bool)

(declare-fun lt!2373904 () Regex!16311)

(assert (=> b!6401825 (= e!3885182 (= lt!2373904 (head!13112 (t!378841 (unfocusZipperList!1732 zl!343)))))))

(declare-fun b!6401826 () Bool)

(assert (=> b!6401826 (= e!3885182 (isUnion!1148 lt!2373904))))

(declare-fun b!6401827 () Bool)

(declare-fun e!3885186 () Bool)

(assert (=> b!6401827 (= e!3885186 e!3885182)))

(declare-fun c!1168039 () Bool)

(assert (=> b!6401827 (= c!1168039 (isEmpty!37252 (tail!12197 (t!378841 (unfocusZipperList!1732 zl!343)))))))

(declare-fun b!6401828 () Bool)

(assert (=> b!6401828 (= e!3885186 (isEmptyLang!1718 lt!2373904))))

(declare-fun b!6401829 () Bool)

(declare-fun e!3885187 () Bool)

(assert (=> b!6401829 (= e!3885187 e!3885186)))

(declare-fun c!1168041 () Bool)

(assert (=> b!6401829 (= c!1168041 (isEmpty!37252 (t!378841 (unfocusZipperList!1732 zl!343))))))

(declare-fun b!6401830 () Bool)

(assert (=> b!6401830 (= e!3885184 EmptyLang!16311)))

(declare-fun b!6401831 () Bool)

(declare-fun e!3885185 () Regex!16311)

(assert (=> b!6401831 (= e!3885185 (h!71557 (t!378841 (unfocusZipperList!1732 zl!343))))))

(assert (=> d!2007041 e!3885187))

(declare-fun res!2632258 () Bool)

(assert (=> d!2007041 (=> (not res!2632258) (not e!3885187))))

(assert (=> d!2007041 (= res!2632258 (validRegex!8047 lt!2373904))))

(assert (=> d!2007041 (= lt!2373904 e!3885185)))

(declare-fun c!1168040 () Bool)

(assert (=> d!2007041 (= c!1168040 e!3885183)))

(declare-fun res!2632257 () Bool)

(assert (=> d!2007041 (=> (not res!2632257) (not e!3885183))))

(assert (=> d!2007041 (= res!2632257 ((_ is Cons!65109) (t!378841 (unfocusZipperList!1732 zl!343))))))

(assert (=> d!2007041 (forall!15496 (t!378841 (unfocusZipperList!1732 zl!343)) lambda!353455)))

(assert (=> d!2007041 (= (generalisedUnion!2155 (t!378841 (unfocusZipperList!1732 zl!343))) lt!2373904)))

(declare-fun b!6401832 () Bool)

(assert (=> b!6401832 (= e!3885185 e!3885184)))

(declare-fun c!1168038 () Bool)

(assert (=> b!6401832 (= c!1168038 ((_ is Cons!65109) (t!378841 (unfocusZipperList!1732 zl!343))))))

(assert (= (and d!2007041 res!2632257) b!6401824))

(assert (= (and d!2007041 c!1168040) b!6401831))

(assert (= (and d!2007041 (not c!1168040)) b!6401832))

(assert (= (and b!6401832 c!1168038) b!6401823))

(assert (= (and b!6401832 (not c!1168038)) b!6401830))

(assert (= (and d!2007041 res!2632258) b!6401829))

(assert (= (and b!6401829 c!1168041) b!6401828))

(assert (= (and b!6401829 (not c!1168041)) b!6401827))

(assert (= (and b!6401827 c!1168039) b!6401825))

(assert (= (and b!6401827 (not c!1168039)) b!6401826))

(declare-fun m!7199018 () Bool)

(assert (=> d!2007041 m!7199018))

(declare-fun m!7199020 () Bool)

(assert (=> d!2007041 m!7199020))

(declare-fun m!7199022 () Bool)

(assert (=> b!6401827 m!7199022))

(assert (=> b!6401827 m!7199022))

(declare-fun m!7199024 () Bool)

(assert (=> b!6401827 m!7199024))

(declare-fun m!7199026 () Bool)

(assert (=> b!6401823 m!7199026))

(assert (=> b!6401829 m!7197624))

(declare-fun m!7199028 () Bool)

(assert (=> b!6401824 m!7199028))

(declare-fun m!7199030 () Bool)

(assert (=> b!6401826 m!7199030))

(declare-fun m!7199032 () Bool)

(assert (=> b!6401828 m!7199032))

(declare-fun m!7199034 () Bool)

(assert (=> b!6401825 m!7199034))

(assert (=> b!6400275 d!2007041))

(declare-fun b!6401852 () Bool)

(declare-fun e!3885200 () List!65232)

(assert (=> b!6401852 (= e!3885200 (Cons!65108 (h!71556 (_1!36593 (get!22550 lt!2373754))) (++!14379 (t!378840 (_1!36593 (get!22550 lt!2373754))) (_2!36593 (get!22550 lt!2373754)))))))

(declare-fun b!6401853 () Bool)

(declare-fun res!2632264 () Bool)

(declare-fun e!3885199 () Bool)

(assert (=> b!6401853 (=> (not res!2632264) (not e!3885199))))

(declare-fun lt!2373906 () List!65232)

(assert (=> b!6401853 (= res!2632264 (= (size!40369 lt!2373906) (+ (size!40369 (_1!36593 (get!22550 lt!2373754))) (size!40369 (_2!36593 (get!22550 lt!2373754))))))))

(declare-fun b!6401854 () Bool)

(assert (=> b!6401854 (= e!3885199 (or (not (= (_2!36593 (get!22550 lt!2373754)) Nil!65108)) (= lt!2373906 (_1!36593 (get!22550 lt!2373754)))))))

(declare-fun b!6401851 () Bool)

(assert (=> b!6401851 (= e!3885200 (_2!36593 (get!22550 lt!2373754)))))

(declare-fun d!2007051 () Bool)

(assert (=> d!2007051 e!3885199))

(declare-fun res!2632263 () Bool)

(assert (=> d!2007051 (=> (not res!2632263) (not e!3885199))))

(assert (=> d!2007051 (= res!2632263 (= (content!12334 lt!2373906) ((_ map or) (content!12334 (_1!36593 (get!22550 lt!2373754))) (content!12334 (_2!36593 (get!22550 lt!2373754))))))))

(assert (=> d!2007051 (= lt!2373906 e!3885200)))

(declare-fun c!1168049 () Bool)

(assert (=> d!2007051 (= c!1168049 ((_ is Nil!65108) (_1!36593 (get!22550 lt!2373754))))))

(assert (=> d!2007051 (= (++!14379 (_1!36593 (get!22550 lt!2373754)) (_2!36593 (get!22550 lt!2373754))) lt!2373906)))

(assert (= (and d!2007051 c!1168049) b!6401851))

(assert (= (and d!2007051 (not c!1168049)) b!6401852))

(assert (= (and d!2007051 res!2632263) b!6401853))

(assert (= (and b!6401853 res!2632264) b!6401854))

(declare-fun m!7199048 () Bool)

(assert (=> b!6401852 m!7199048))

(declare-fun m!7199050 () Bool)

(assert (=> b!6401853 m!7199050))

(declare-fun m!7199052 () Bool)

(assert (=> b!6401853 m!7199052))

(declare-fun m!7199054 () Bool)

(assert (=> b!6401853 m!7199054))

(declare-fun m!7199056 () Bool)

(assert (=> d!2007051 m!7199056))

(declare-fun m!7199058 () Bool)

(assert (=> d!2007051 m!7199058))

(declare-fun m!7199060 () Bool)

(assert (=> d!2007051 m!7199060))

(assert (=> b!6400116 d!2007051))

(declare-fun d!2007057 () Bool)

(assert (=> d!2007057 (= (get!22550 lt!2373754) (v!52372 lt!2373754))))

(assert (=> b!6400116 d!2007057))

(declare-fun b!6401872 () Bool)

(declare-fun e!3885212 () Bool)

(declare-fun e!3885213 () Bool)

(assert (=> b!6401872 (= e!3885212 e!3885213)))

(declare-fun res!2632269 () Bool)

(assert (=> b!6401872 (=> res!2632269 e!3885213)))

(declare-fun call!548793 () Bool)

(assert (=> b!6401872 (= res!2632269 call!548793)))

(declare-fun b!6401873 () Bool)

(declare-fun e!3885215 () Bool)

(assert (=> b!6401873 (= e!3885215 (matchR!8494 (derivativeStep!5015 (derivativeStep!5015 r!7292 (head!13113 s!2326)) (head!13113 (tail!12198 s!2326))) (tail!12198 (tail!12198 s!2326))))))

(declare-fun b!6401874 () Bool)

(declare-fun e!3885217 () Bool)

(assert (=> b!6401874 (= e!3885217 e!3885212)))

(declare-fun res!2632270 () Bool)

(assert (=> b!6401874 (=> (not res!2632270) (not e!3885212))))

(declare-fun lt!2373908 () Bool)

(assert (=> b!6401874 (= res!2632270 (not lt!2373908))))

(declare-fun b!6401875 () Bool)

(declare-fun e!3885216 () Bool)

(assert (=> b!6401875 (= e!3885216 (= (head!13113 (tail!12198 s!2326)) (c!1167428 (derivativeStep!5015 r!7292 (head!13113 s!2326)))))))

(declare-fun b!6401876 () Bool)

(declare-fun res!2632272 () Bool)

(assert (=> b!6401876 (=> res!2632272 e!3885213)))

(assert (=> b!6401876 (= res!2632272 (not (isEmpty!37253 (tail!12198 (tail!12198 s!2326)))))))

(declare-fun b!6401877 () Bool)

(assert (=> b!6401877 (= e!3885215 (nullable!6304 (derivativeStep!5015 r!7292 (head!13113 s!2326))))))

(declare-fun b!6401878 () Bool)

(assert (=> b!6401878 (= e!3885213 (not (= (head!13113 (tail!12198 s!2326)) (c!1167428 (derivativeStep!5015 r!7292 (head!13113 s!2326))))))))

(declare-fun b!6401880 () Bool)

(declare-fun res!2632268 () Bool)

(assert (=> b!6401880 (=> res!2632268 e!3885217)))

(assert (=> b!6401880 (= res!2632268 (not ((_ is ElementMatch!16311) (derivativeStep!5015 r!7292 (head!13113 s!2326)))))))

(declare-fun e!3885211 () Bool)

(assert (=> b!6401880 (= e!3885211 e!3885217)))

(declare-fun bm!548788 () Bool)

(assert (=> bm!548788 (= call!548793 (isEmpty!37253 (tail!12198 s!2326)))))

(declare-fun b!6401881 () Bool)

(declare-fun e!3885214 () Bool)

(assert (=> b!6401881 (= e!3885214 e!3885211)))

(declare-fun c!1168057 () Bool)

(assert (=> b!6401881 (= c!1168057 ((_ is EmptyLang!16311) (derivativeStep!5015 r!7292 (head!13113 s!2326))))))

(declare-fun b!6401882 () Bool)

(declare-fun res!2632271 () Bool)

(assert (=> b!6401882 (=> (not res!2632271) (not e!3885216))))

(assert (=> b!6401882 (= res!2632271 (not call!548793))))

(declare-fun b!6401883 () Bool)

(declare-fun res!2632275 () Bool)

(assert (=> b!6401883 (=> res!2632275 e!3885217)))

(assert (=> b!6401883 (= res!2632275 e!3885216)))

(declare-fun res!2632273 () Bool)

(assert (=> b!6401883 (=> (not res!2632273) (not e!3885216))))

(assert (=> b!6401883 (= res!2632273 lt!2373908)))

(declare-fun d!2007059 () Bool)

(assert (=> d!2007059 e!3885214))

(declare-fun c!1168058 () Bool)

(assert (=> d!2007059 (= c!1168058 ((_ is EmptyExpr!16311) (derivativeStep!5015 r!7292 (head!13113 s!2326))))))

(assert (=> d!2007059 (= lt!2373908 e!3885215)))

(declare-fun c!1168059 () Bool)

(assert (=> d!2007059 (= c!1168059 (isEmpty!37253 (tail!12198 s!2326)))))

(assert (=> d!2007059 (validRegex!8047 (derivativeStep!5015 r!7292 (head!13113 s!2326)))))

(assert (=> d!2007059 (= (matchR!8494 (derivativeStep!5015 r!7292 (head!13113 s!2326)) (tail!12198 s!2326)) lt!2373908)))

(declare-fun b!6401879 () Bool)

(assert (=> b!6401879 (= e!3885214 (= lt!2373908 call!548793))))

(declare-fun b!6401884 () Bool)

(assert (=> b!6401884 (= e!3885211 (not lt!2373908))))

(declare-fun b!6401885 () Bool)

(declare-fun res!2632274 () Bool)

(assert (=> b!6401885 (=> (not res!2632274) (not e!3885216))))

(assert (=> b!6401885 (= res!2632274 (isEmpty!37253 (tail!12198 (tail!12198 s!2326))))))

(assert (= (and d!2007059 c!1168059) b!6401877))

(assert (= (and d!2007059 (not c!1168059)) b!6401873))

(assert (= (and d!2007059 c!1168058) b!6401879))

(assert (= (and d!2007059 (not c!1168058)) b!6401881))

(assert (= (and b!6401881 c!1168057) b!6401884))

(assert (= (and b!6401881 (not c!1168057)) b!6401880))

(assert (= (and b!6401880 (not res!2632268)) b!6401883))

(assert (= (and b!6401883 res!2632273) b!6401882))

(assert (= (and b!6401882 res!2632271) b!6401885))

(assert (= (and b!6401885 res!2632274) b!6401875))

(assert (= (and b!6401883 (not res!2632275)) b!6401874))

(assert (= (and b!6401874 res!2632270) b!6401872))

(assert (= (and b!6401872 (not res!2632269)) b!6401876))

(assert (= (and b!6401876 (not res!2632272)) b!6401878))

(assert (= (or b!6401879 b!6401872 b!6401882) bm!548788))

(assert (=> bm!548788 m!7197728))

(assert (=> bm!548788 m!7197730))

(assert (=> b!6401878 m!7197728))

(assert (=> b!6401878 m!7198652))

(assert (=> b!6401885 m!7197728))

(assert (=> b!6401885 m!7198654))

(assert (=> b!6401885 m!7198654))

(assert (=> b!6401885 m!7198656))

(assert (=> b!6401875 m!7197728))

(assert (=> b!6401875 m!7198652))

(assert (=> b!6401876 m!7197728))

(assert (=> b!6401876 m!7198654))

(assert (=> b!6401876 m!7198654))

(assert (=> b!6401876 m!7198656))

(assert (=> d!2007059 m!7197728))

(assert (=> d!2007059 m!7197730))

(assert (=> d!2007059 m!7197994))

(declare-fun m!7199072 () Bool)

(assert (=> d!2007059 m!7199072))

(assert (=> b!6401873 m!7197728))

(assert (=> b!6401873 m!7198652))

(assert (=> b!6401873 m!7197994))

(assert (=> b!6401873 m!7198652))

(declare-fun m!7199074 () Bool)

(assert (=> b!6401873 m!7199074))

(assert (=> b!6401873 m!7197728))

(assert (=> b!6401873 m!7198654))

(assert (=> b!6401873 m!7199074))

(assert (=> b!6401873 m!7198654))

(declare-fun m!7199076 () Bool)

(assert (=> b!6401873 m!7199076))

(assert (=> b!6401877 m!7197994))

(declare-fun m!7199078 () Bool)

(assert (=> b!6401877 m!7199078))

(assert (=> b!6400741 d!2007059))

(declare-fun b!6401886 () Bool)

(declare-fun e!3885220 () Regex!16311)

(declare-fun call!548795 () Regex!16311)

(assert (=> b!6401886 (= e!3885220 (Union!16311 (Concat!25156 call!548795 (regTwo!33134 r!7292)) EmptyLang!16311))))

(declare-fun b!6401887 () Bool)

(declare-fun e!3885222 () Regex!16311)

(assert (=> b!6401887 (= e!3885222 (ite (= (head!13113 s!2326) (c!1167428 r!7292)) EmptyExpr!16311 EmptyLang!16311))))

(declare-fun bm!548789 () Bool)

(declare-fun call!548794 () Regex!16311)

(assert (=> bm!548789 (= call!548795 call!548794)))

(declare-fun call!548797 () Regex!16311)

(declare-fun bm!548790 () Bool)

(declare-fun c!1168063 () Bool)

(declare-fun c!1168060 () Bool)

(declare-fun c!1168061 () Bool)

(assert (=> bm!548790 (= call!548797 (derivativeStep!5015 (ite c!1168061 (regTwo!33135 r!7292) (ite c!1168063 (reg!16640 r!7292) (ite c!1168060 (regTwo!33134 r!7292) (regOne!33134 r!7292)))) (head!13113 s!2326)))))

(declare-fun bm!548791 () Bool)

(assert (=> bm!548791 (= call!548794 call!548797)))

(declare-fun b!6401888 () Bool)

(assert (=> b!6401888 (= c!1168060 (nullable!6304 (regOne!33134 r!7292)))))

(declare-fun e!3885221 () Regex!16311)

(assert (=> b!6401888 (= e!3885221 e!3885220)))

(declare-fun d!2007063 () Bool)

(declare-fun lt!2373909 () Regex!16311)

(assert (=> d!2007063 (validRegex!8047 lt!2373909)))

(declare-fun e!3885218 () Regex!16311)

(assert (=> d!2007063 (= lt!2373909 e!3885218)))

(declare-fun c!1168062 () Bool)

(assert (=> d!2007063 (= c!1168062 (or ((_ is EmptyExpr!16311) r!7292) ((_ is EmptyLang!16311) r!7292)))))

(assert (=> d!2007063 (validRegex!8047 r!7292)))

(assert (=> d!2007063 (= (derivativeStep!5015 r!7292 (head!13113 s!2326)) lt!2373909)))

(declare-fun b!6401889 () Bool)

(assert (=> b!6401889 (= e!3885218 e!3885222)))

(declare-fun c!1168064 () Bool)

(assert (=> b!6401889 (= c!1168064 ((_ is ElementMatch!16311) r!7292))))

(declare-fun b!6401890 () Bool)

(declare-fun e!3885219 () Regex!16311)

(declare-fun call!548796 () Regex!16311)

(assert (=> b!6401890 (= e!3885219 (Union!16311 call!548796 call!548797))))

(declare-fun bm!548792 () Bool)

(assert (=> bm!548792 (= call!548796 (derivativeStep!5015 (ite c!1168061 (regOne!33135 r!7292) (regOne!33134 r!7292)) (head!13113 s!2326)))))

(declare-fun b!6401891 () Bool)

(assert (=> b!6401891 (= e!3885219 e!3885221)))

(assert (=> b!6401891 (= c!1168063 ((_ is Star!16311) r!7292))))

(declare-fun b!6401892 () Bool)

(assert (=> b!6401892 (= e!3885220 (Union!16311 (Concat!25156 call!548796 (regTwo!33134 r!7292)) call!548795))))

(declare-fun b!6401893 () Bool)

(assert (=> b!6401893 (= e!3885218 EmptyLang!16311)))

(declare-fun b!6401894 () Bool)

(assert (=> b!6401894 (= e!3885221 (Concat!25156 call!548794 r!7292))))

(declare-fun b!6401895 () Bool)

(assert (=> b!6401895 (= c!1168061 ((_ is Union!16311) r!7292))))

(assert (=> b!6401895 (= e!3885222 e!3885219)))

(assert (= (and d!2007063 c!1168062) b!6401893))

(assert (= (and d!2007063 (not c!1168062)) b!6401889))

(assert (= (and b!6401889 c!1168064) b!6401887))

(assert (= (and b!6401889 (not c!1168064)) b!6401895))

(assert (= (and b!6401895 c!1168061) b!6401890))

(assert (= (and b!6401895 (not c!1168061)) b!6401891))

(assert (= (and b!6401891 c!1168063) b!6401894))

(assert (= (and b!6401891 (not c!1168063)) b!6401888))

(assert (= (and b!6401888 c!1168060) b!6401892))

(assert (= (and b!6401888 (not c!1168060)) b!6401886))

(assert (= (or b!6401892 b!6401886) bm!548789))

(assert (= (or b!6401894 bm!548789) bm!548791))

(assert (= (or b!6401890 bm!548791) bm!548790))

(assert (= (or b!6401890 b!6401892) bm!548792))

(assert (=> bm!548790 m!7197726))

(declare-fun m!7199080 () Bool)

(assert (=> bm!548790 m!7199080))

(assert (=> b!6401888 m!7198932))

(declare-fun m!7199082 () Bool)

(assert (=> d!2007063 m!7199082))

(assert (=> d!2007063 m!7197238))

(assert (=> bm!548792 m!7197726))

(declare-fun m!7199084 () Bool)

(assert (=> bm!548792 m!7199084))

(assert (=> b!6400741 d!2007063))

(assert (=> b!6400741 d!2006633))

(assert (=> b!6400741 d!2006671))

(assert (=> d!2006561 d!2006559))

(assert (=> d!2006561 d!2006557))

(declare-fun d!2007065 () Bool)

(assert (=> d!2007065 (= (matchR!8494 r!7292 s!2326) (matchRSpec!3412 r!7292 s!2326))))

(assert (=> d!2007065 true))

(declare-fun _$88!5094 () Unit!158575)

(assert (=> d!2007065 (= (choose!47598 r!7292 s!2326) _$88!5094)))

(declare-fun bs!1605077 () Bool)

(assert (= bs!1605077 d!2007065))

(assert (=> bs!1605077 m!7197162))

(assert (=> bs!1605077 m!7197160))

(assert (=> d!2006561 d!2007065))

(assert (=> d!2006561 d!2006543))

(assert (=> bs!1604852 d!2006415))

(declare-fun d!2007067 () Bool)

(assert (=> d!2007067 true))

(declare-fun setRes!43702 () Bool)

(assert (=> d!2007067 setRes!43702))

(declare-fun condSetEmpty!43702 () Bool)

(declare-fun res!2632276 () (InoxSet Context!11390))

(assert (=> d!2007067 (= condSetEmpty!43702 (= res!2632276 ((as const (Array Context!11390 Bool)) false)))))

(assert (=> d!2007067 (= (choose!47592 z!1189 lambda!353313) res!2632276)))

(declare-fun setIsEmpty!43702 () Bool)

(assert (=> setIsEmpty!43702 setRes!43702))

(declare-fun e!3885223 () Bool)

(declare-fun setNonEmpty!43702 () Bool)

(declare-fun tp!1779329 () Bool)

(declare-fun setElem!43702 () Context!11390)

(assert (=> setNonEmpty!43702 (= setRes!43702 (and tp!1779329 (inv!84024 setElem!43702) e!3885223))))

(declare-fun setRest!43702 () (InoxSet Context!11390))

(assert (=> setNonEmpty!43702 (= res!2632276 ((_ map or) (store ((as const (Array Context!11390 Bool)) false) setElem!43702 true) setRest!43702))))

(declare-fun b!6401896 () Bool)

(declare-fun tp!1779330 () Bool)

(assert (=> b!6401896 (= e!3885223 tp!1779330)))

(assert (= (and d!2007067 condSetEmpty!43702) setIsEmpty!43702))

(assert (= (and d!2007067 (not condSetEmpty!43702)) setNonEmpty!43702))

(assert (= setNonEmpty!43702 b!6401896))

(declare-fun m!7199086 () Bool)

(assert (=> setNonEmpty!43702 m!7199086))

(assert (=> d!2006599 d!2007067))

(declare-fun c!1168065 () Bool)

(declare-fun b!6401897 () Bool)

(assert (=> b!6401897 (= c!1168065 ((_ is Union!16311) (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))))))

(declare-fun e!3885231 () Int)

(declare-fun e!3885226 () Int)

(assert (=> b!6401897 (= e!3885231 e!3885226)))

(declare-fun bm!548793 () Bool)

(declare-fun call!548803 () Int)

(assert (=> bm!548793 (= call!548803 (regexDepth!338 (ite c!1168065 (regOne!33135 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))) (regTwo!33134 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))))))))

(declare-fun bm!548794 () Bool)

(declare-fun call!548801 () Int)

(declare-fun call!548804 () Int)

(assert (=> bm!548794 (= call!548804 (maxBigInt!0 (ite c!1168065 call!548803 call!548801) (ite c!1168065 call!548801 call!548803)))))

(declare-fun b!6401898 () Bool)

(declare-fun call!548800 () Int)

(assert (=> b!6401898 (= e!3885231 (+ 1 call!548800))))

(declare-fun b!6401899 () Bool)

(declare-fun e!3885227 () Bool)

(declare-fun lt!2373910 () Int)

(assert (=> b!6401899 (= e!3885227 (= lt!2373910 1))))

(declare-fun b!6401901 () Bool)

(declare-fun res!2632278 () Bool)

(declare-fun e!3885225 () Bool)

(assert (=> b!6401901 (=> (not res!2632278) (not e!3885225))))

(declare-fun call!548798 () Int)

(assert (=> b!6401901 (= res!2632278 (> lt!2373910 call!548798))))

(declare-fun e!3885228 () Bool)

(assert (=> b!6401901 (= e!3885228 e!3885225)))

(declare-fun b!6401902 () Bool)

(declare-fun e!3885232 () Int)

(assert (=> b!6401902 (= e!3885232 e!3885231)))

(declare-fun c!1168071 () Bool)

(assert (=> b!6401902 (= c!1168071 ((_ is Star!16311) (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))))))

(declare-fun b!6401903 () Bool)

(declare-fun e!3885230 () Bool)

(assert (=> b!6401903 (= e!3885230 e!3885228)))

(declare-fun c!1168066 () Bool)

(assert (=> b!6401903 (= c!1168066 ((_ is Concat!25156) (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))))))

(declare-fun b!6401904 () Bool)

(declare-fun call!548799 () Int)

(assert (=> b!6401904 (= e!3885225 (> lt!2373910 call!548799))))

(declare-fun b!6401905 () Bool)

(assert (=> b!6401905 (= e!3885226 (+ 1 call!548804))))

(declare-fun b!6401906 () Bool)

(assert (=> b!6401906 (= e!3885227 (> lt!2373910 call!548798))))

(declare-fun b!6401907 () Bool)

(declare-fun e!3885224 () Int)

(assert (=> b!6401907 (= e!3885224 (+ 1 call!548804))))

(declare-fun b!6401908 () Bool)

(declare-fun e!3885229 () Bool)

(declare-fun call!548802 () Int)

(assert (=> b!6401908 (= e!3885229 (> lt!2373910 call!548802))))

(declare-fun b!6401909 () Bool)

(declare-fun e!3885233 () Bool)

(assert (=> b!6401909 (= e!3885233 e!3885230)))

(declare-fun c!1168067 () Bool)

(assert (=> b!6401909 (= c!1168067 ((_ is Union!16311) (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))))))

(declare-fun bm!548795 () Bool)

(assert (=> bm!548795 (= call!548800 (regexDepth!338 (ite c!1168071 (reg!16640 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))) (ite c!1168065 (regTwo!33135 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))) (regOne!33134 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661))))))))))

(declare-fun b!6401910 () Bool)

(declare-fun c!1168068 () Bool)

(assert (=> b!6401910 (= c!1168068 ((_ is Star!16311) (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))))))

(assert (=> b!6401910 (= e!3885228 e!3885227)))

(declare-fun d!2007069 () Bool)

(assert (=> d!2007069 e!3885233))

(declare-fun res!2632279 () Bool)

(assert (=> d!2007069 (=> (not res!2632279) (not e!3885233))))

(assert (=> d!2007069 (= res!2632279 (> lt!2373910 0))))

(assert (=> d!2007069 (= lt!2373910 e!3885232)))

(declare-fun c!1168069 () Bool)

(assert (=> d!2007069 (= c!1168069 ((_ is ElementMatch!16311) (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))))))

(assert (=> d!2007069 (= (regexDepth!338 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))) lt!2373910)))

(declare-fun b!6401900 () Bool)

(assert (=> b!6401900 (= e!3885226 e!3885224)))

(declare-fun c!1168070 () Bool)

(assert (=> b!6401900 (= c!1168070 ((_ is Concat!25156) (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))))))

(declare-fun b!6401911 () Bool)

(assert (=> b!6401911 (= e!3885232 1)))

(declare-fun bm!548796 () Bool)

(assert (=> bm!548796 (= call!548799 (regexDepth!338 (ite c!1168067 (regOne!33135 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))) (regTwo!33134 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))))))))

(declare-fun b!6401912 () Bool)

(assert (=> b!6401912 (= e!3885230 e!3885229)))

(declare-fun res!2632277 () Bool)

(assert (=> b!6401912 (= res!2632277 (> lt!2373910 call!548799))))

(assert (=> b!6401912 (=> (not res!2632277) (not e!3885229))))

(declare-fun bm!548797 () Bool)

(assert (=> bm!548797 (= call!548802 (regexDepth!338 (ite c!1168067 (regTwo!33135 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))) (ite c!1168066 (regOne!33134 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661)))) (reg!16640 (ite c!1167703 (regTwo!33135 lt!2373661) (ite c!1167702 (regOne!33134 lt!2373661) (reg!16640 lt!2373661))))))))))

(declare-fun bm!548798 () Bool)

(assert (=> bm!548798 (= call!548798 call!548802)))

(declare-fun bm!548799 () Bool)

(assert (=> bm!548799 (= call!548801 call!548800)))

(declare-fun b!6401913 () Bool)

(assert (=> b!6401913 (= e!3885224 1)))

(assert (= (and d!2007069 c!1168069) b!6401911))

(assert (= (and d!2007069 (not c!1168069)) b!6401902))

(assert (= (and b!6401902 c!1168071) b!6401898))

(assert (= (and b!6401902 (not c!1168071)) b!6401897))

(assert (= (and b!6401897 c!1168065) b!6401905))

(assert (= (and b!6401897 (not c!1168065)) b!6401900))

(assert (= (and b!6401900 c!1168070) b!6401907))

(assert (= (and b!6401900 (not c!1168070)) b!6401913))

(assert (= (or b!6401905 b!6401907) bm!548799))

(assert (= (or b!6401905 b!6401907) bm!548793))

(assert (= (or b!6401905 b!6401907) bm!548794))

(assert (= (or b!6401898 bm!548799) bm!548795))

(assert (= (and d!2007069 res!2632279) b!6401909))

(assert (= (and b!6401909 c!1168067) b!6401912))

(assert (= (and b!6401909 (not c!1168067)) b!6401903))

(assert (= (and b!6401912 res!2632277) b!6401908))

(assert (= (and b!6401903 c!1168066) b!6401901))

(assert (= (and b!6401903 (not c!1168066)) b!6401910))

(assert (= (and b!6401901 res!2632278) b!6401904))

(assert (= (and b!6401910 c!1168068) b!6401906))

(assert (= (and b!6401910 (not c!1168068)) b!6401899))

(assert (= (or b!6401901 b!6401906) bm!548798))

(assert (= (or b!6401908 bm!548798) bm!548797))

(assert (= (or b!6401912 b!6401904) bm!548796))

(declare-fun m!7199088 () Bool)

(assert (=> bm!548794 m!7199088))

(declare-fun m!7199090 () Bool)

(assert (=> bm!548795 m!7199090))

(declare-fun m!7199092 () Bool)

(assert (=> bm!548796 m!7199092))

(declare-fun m!7199094 () Bool)

(assert (=> bm!548797 m!7199094))

(declare-fun m!7199096 () Bool)

(assert (=> bm!548793 m!7199096))

(assert (=> bm!548517 d!2007069))

(declare-fun d!2007071 () Bool)

(assert (=> d!2007071 true))

(declare-fun setRes!43703 () Bool)

(assert (=> d!2007071 setRes!43703))

(declare-fun condSetEmpty!43703 () Bool)

(declare-fun res!2632282 () (InoxSet Context!11390))

(assert (=> d!2007071 (= condSetEmpty!43703 (= res!2632282 ((as const (Array Context!11390 Bool)) false)))))

(assert (=> d!2007071 (= (choose!47592 lt!2373670 lambda!353313) res!2632282)))

(declare-fun setIsEmpty!43703 () Bool)

(assert (=> setIsEmpty!43703 setRes!43703))

(declare-fun tp!1779331 () Bool)

(declare-fun e!3885236 () Bool)

(declare-fun setNonEmpty!43703 () Bool)

(declare-fun setElem!43703 () Context!11390)

(assert (=> setNonEmpty!43703 (= setRes!43703 (and tp!1779331 (inv!84024 setElem!43703) e!3885236))))

(declare-fun setRest!43703 () (InoxSet Context!11390))

(assert (=> setNonEmpty!43703 (= res!2632282 ((_ map or) (store ((as const (Array Context!11390 Bool)) false) setElem!43703 true) setRest!43703))))

(declare-fun b!6401916 () Bool)

(declare-fun tp!1779332 () Bool)

(assert (=> b!6401916 (= e!3885236 tp!1779332)))

(assert (= (and d!2007071 condSetEmpty!43703) setIsEmpty!43703))

(assert (= (and d!2007071 (not condSetEmpty!43703)) setNonEmpty!43703))

(assert (= setNonEmpty!43703 b!6401916))

(declare-fun m!7199098 () Bool)

(assert (=> setNonEmpty!43703 m!7199098))

(assert (=> d!2006411 d!2007071))

(declare-fun b!6401918 () Bool)

(declare-fun res!2632285 () Bool)

(declare-fun e!3885242 () Bool)

(assert (=> b!6401918 (=> (not res!2632285) (not e!3885242))))

(declare-fun call!548807 () Bool)

(assert (=> b!6401918 (= res!2632285 call!548807)))

(declare-fun e!3885238 () Bool)

(assert (=> b!6401918 (= e!3885238 e!3885242)))

(declare-fun c!1168072 () Bool)

(declare-fun call!548806 () Bool)

(declare-fun bm!548800 () Bool)

(declare-fun c!1168073 () Bool)

(assert (=> bm!548800 (= call!548806 (validRegex!8047 (ite c!1168072 (reg!16640 lt!2373832) (ite c!1168073 (regTwo!33135 lt!2373832) (regTwo!33134 lt!2373832)))))))

(declare-fun b!6401919 () Bool)

(declare-fun e!3885239 () Bool)

(declare-fun e!3885240 () Bool)

(assert (=> b!6401919 (= e!3885239 e!3885240)))

(declare-fun res!2632287 () Bool)

(assert (=> b!6401919 (= res!2632287 (not (nullable!6304 (reg!16640 lt!2373832))))))

(assert (=> b!6401919 (=> (not res!2632287) (not e!3885240))))

(declare-fun b!6401920 () Bool)

(declare-fun e!3885244 () Bool)

(assert (=> b!6401920 (= e!3885244 e!3885239)))

(assert (=> b!6401920 (= c!1168072 ((_ is Star!16311) lt!2373832))))

(declare-fun b!6401921 () Bool)

(declare-fun res!2632284 () Bool)

(declare-fun e!3885243 () Bool)

(assert (=> b!6401921 (=> res!2632284 e!3885243)))

(assert (=> b!6401921 (= res!2632284 (not ((_ is Concat!25156) lt!2373832)))))

(assert (=> b!6401921 (= e!3885238 e!3885243)))

(declare-fun b!6401922 () Bool)

(assert (=> b!6401922 (= e!3885240 call!548806)))

(declare-fun b!6401923 () Bool)

(assert (=> b!6401923 (= e!3885239 e!3885238)))

(assert (=> b!6401923 (= c!1168073 ((_ is Union!16311) lt!2373832))))

(declare-fun b!6401924 () Bool)

(declare-fun call!548805 () Bool)

(assert (=> b!6401924 (= e!3885242 call!548805)))

(declare-fun b!6401925 () Bool)

(declare-fun e!3885241 () Bool)

(assert (=> b!6401925 (= e!3885241 call!548805)))

(declare-fun bm!548802 () Bool)

(assert (=> bm!548802 (= call!548805 call!548806)))

(declare-fun b!6401926 () Bool)

(assert (=> b!6401926 (= e!3885243 e!3885241)))

(declare-fun res!2632288 () Bool)

(assert (=> b!6401926 (=> (not res!2632288) (not e!3885241))))

(assert (=> b!6401926 (= res!2632288 call!548807)))

(declare-fun bm!548801 () Bool)

(assert (=> bm!548801 (= call!548807 (validRegex!8047 (ite c!1168073 (regOne!33135 lt!2373832) (regOne!33134 lt!2373832))))))

(declare-fun d!2007073 () Bool)

(declare-fun res!2632286 () Bool)

(assert (=> d!2007073 (=> res!2632286 e!3885244)))

(assert (=> d!2007073 (= res!2632286 ((_ is ElementMatch!16311) lt!2373832))))

(assert (=> d!2007073 (= (validRegex!8047 lt!2373832) e!3885244)))

(assert (= (and d!2007073 (not res!2632286)) b!6401920))

(assert (= (and b!6401920 c!1168072) b!6401919))

(assert (= (and b!6401920 (not c!1168072)) b!6401923))

(assert (= (and b!6401919 res!2632287) b!6401922))

(assert (= (and b!6401923 c!1168073) b!6401918))

(assert (= (and b!6401923 (not c!1168073)) b!6401921))

(assert (= (and b!6401918 res!2632285) b!6401924))

(assert (= (and b!6401921 (not res!2632284)) b!6401926))

(assert (= (and b!6401926 res!2632288) b!6401925))

(assert (= (or b!6401924 b!6401925) bm!548802))

(assert (= (or b!6401918 b!6401926) bm!548801))

(assert (= (or b!6401922 bm!548802) bm!548800))

(declare-fun m!7199100 () Bool)

(assert (=> bm!548800 m!7199100))

(declare-fun m!7199102 () Bool)

(assert (=> b!6401919 m!7199102))

(declare-fun m!7199104 () Bool)

(assert (=> bm!548801 m!7199104))

(assert (=> d!2006555 d!2007073))

(declare-fun bs!1605078 () Bool)

(declare-fun d!2007079 () Bool)

(assert (= bs!1605078 (and d!2007079 d!2007041)))

(declare-fun lambda!353456 () Int)

(assert (=> bs!1605078 (= lambda!353456 lambda!353455)))

(declare-fun bs!1605079 () Bool)

(assert (= bs!1605079 (and d!2007079 d!2006667)))

(assert (=> bs!1605079 (= lambda!353456 lambda!353420)))

(declare-fun bs!1605080 () Bool)

(assert (= bs!1605080 (and d!2007079 d!2006553)))

(assert (=> bs!1605080 (= lambda!353456 lambda!353400)))

(declare-fun bs!1605081 () Bool)

(assert (= bs!1605081 (and d!2007079 d!2006563)))

(assert (=> bs!1605081 (= lambda!353456 lambda!353403)))

(declare-fun bs!1605082 () Bool)

(assert (= bs!1605082 (and d!2007079 d!2006429)))

(assert (=> bs!1605082 (= lambda!353456 lambda!353368)))

(declare-fun bs!1605083 () Bool)

(assert (= bs!1605083 (and d!2007079 d!2006417)))

(assert (=> bs!1605083 (= lambda!353456 lambda!353359)))

(declare-fun bs!1605085 () Bool)

(assert (= bs!1605085 (and d!2007079 d!2006681)))

(assert (=> bs!1605085 (= lambda!353456 lambda!353422)))

(declare-fun bs!1605087 () Bool)

(assert (= bs!1605087 (and d!2007079 d!2006531)))

(assert (=> bs!1605087 (= lambda!353456 lambda!353399)))

(declare-fun bs!1605089 () Bool)

(assert (= bs!1605089 (and d!2007079 d!2006421)))

(assert (=> bs!1605089 (= lambda!353456 lambda!353365)))

(declare-fun bs!1605091 () Bool)

(assert (= bs!1605091 (and d!2007079 d!2006813)))

(assert (=> bs!1605091 (= lambda!353456 lambda!353430)))

(declare-fun bs!1605092 () Bool)

(assert (= bs!1605092 (and d!2007079 d!2006821)))

(assert (=> bs!1605092 (= lambda!353456 lambda!353431)))

(declare-fun b!6401938 () Bool)

(declare-fun e!3885253 () Regex!16311)

(assert (=> b!6401938 (= e!3885253 (Union!16311 (h!71557 (unfocusZipperList!1732 lt!2373651)) (generalisedUnion!2155 (t!378841 (unfocusZipperList!1732 lt!2373651)))))))

(declare-fun b!6401939 () Bool)

(declare-fun e!3885252 () Bool)

(assert (=> b!6401939 (= e!3885252 (isEmpty!37252 (t!378841 (unfocusZipperList!1732 lt!2373651))))))

(declare-fun b!6401940 () Bool)

(declare-fun e!3885251 () Bool)

(declare-fun lt!2373911 () Regex!16311)

(assert (=> b!6401940 (= e!3885251 (= lt!2373911 (head!13112 (unfocusZipperList!1732 lt!2373651))))))

(declare-fun b!6401941 () Bool)

(assert (=> b!6401941 (= e!3885251 (isUnion!1148 lt!2373911))))

(declare-fun b!6401942 () Bool)

(declare-fun e!3885255 () Bool)

(assert (=> b!6401942 (= e!3885255 e!3885251)))

(declare-fun c!1168080 () Bool)

(assert (=> b!6401942 (= c!1168080 (isEmpty!37252 (tail!12197 (unfocusZipperList!1732 lt!2373651))))))

(declare-fun b!6401943 () Bool)

(assert (=> b!6401943 (= e!3885255 (isEmptyLang!1718 lt!2373911))))

(declare-fun b!6401944 () Bool)

(declare-fun e!3885256 () Bool)

(assert (=> b!6401944 (= e!3885256 e!3885255)))

(declare-fun c!1168082 () Bool)

(assert (=> b!6401944 (= c!1168082 (isEmpty!37252 (unfocusZipperList!1732 lt!2373651)))))

(declare-fun b!6401945 () Bool)

(assert (=> b!6401945 (= e!3885253 EmptyLang!16311)))

(declare-fun b!6401946 () Bool)

(declare-fun e!3885254 () Regex!16311)

(assert (=> b!6401946 (= e!3885254 (h!71557 (unfocusZipperList!1732 lt!2373651)))))

(assert (=> d!2007079 e!3885256))

(declare-fun res!2632291 () Bool)

(assert (=> d!2007079 (=> (not res!2632291) (not e!3885256))))

(assert (=> d!2007079 (= res!2632291 (validRegex!8047 lt!2373911))))

(assert (=> d!2007079 (= lt!2373911 e!3885254)))

(declare-fun c!1168081 () Bool)

(assert (=> d!2007079 (= c!1168081 e!3885252)))

(declare-fun res!2632290 () Bool)

(assert (=> d!2007079 (=> (not res!2632290) (not e!3885252))))

(assert (=> d!2007079 (= res!2632290 ((_ is Cons!65109) (unfocusZipperList!1732 lt!2373651)))))

(assert (=> d!2007079 (forall!15496 (unfocusZipperList!1732 lt!2373651) lambda!353456)))

(assert (=> d!2007079 (= (generalisedUnion!2155 (unfocusZipperList!1732 lt!2373651)) lt!2373911)))

(declare-fun b!6401947 () Bool)

(assert (=> b!6401947 (= e!3885254 e!3885253)))

(declare-fun c!1168079 () Bool)

(assert (=> b!6401947 (= c!1168079 ((_ is Cons!65109) (unfocusZipperList!1732 lt!2373651)))))

(assert (= (and d!2007079 res!2632290) b!6401939))

(assert (= (and d!2007079 c!1168081) b!6401946))

(assert (= (and d!2007079 (not c!1168081)) b!6401947))

(assert (= (and b!6401947 c!1168079) b!6401938))

(assert (= (and b!6401947 (not c!1168079)) b!6401945))

(assert (= (and d!2007079 res!2632291) b!6401944))

(assert (= (and b!6401944 c!1168082) b!6401943))

(assert (= (and b!6401944 (not c!1168082)) b!6401942))

(assert (= (and b!6401942 c!1168080) b!6401940))

(assert (= (and b!6401942 (not c!1168080)) b!6401941))

(declare-fun m!7199116 () Bool)

(assert (=> d!2007079 m!7199116))

(assert (=> d!2007079 m!7197984))

(declare-fun m!7199118 () Bool)

(assert (=> d!2007079 m!7199118))

(assert (=> b!6401942 m!7197984))

(declare-fun m!7199120 () Bool)

(assert (=> b!6401942 m!7199120))

(assert (=> b!6401942 m!7199120))

(declare-fun m!7199122 () Bool)

(assert (=> b!6401942 m!7199122))

(declare-fun m!7199124 () Bool)

(assert (=> b!6401938 m!7199124))

(assert (=> b!6401944 m!7197984))

(declare-fun m!7199126 () Bool)

(assert (=> b!6401944 m!7199126))

(declare-fun m!7199128 () Bool)

(assert (=> b!6401939 m!7199128))

(declare-fun m!7199130 () Bool)

(assert (=> b!6401941 m!7199130))

(declare-fun m!7199132 () Bool)

(assert (=> b!6401943 m!7199132))

(assert (=> b!6401940 m!7197984))

(declare-fun m!7199134 () Bool)

(assert (=> b!6401940 m!7199134))

(assert (=> d!2006555 d!2007079))

(declare-fun bs!1605099 () Bool)

(declare-fun d!2007083 () Bool)

(assert (= bs!1605099 (and d!2007083 d!2007041)))

(declare-fun lambda!353458 () Int)

(assert (=> bs!1605099 (= lambda!353458 lambda!353455)))

(declare-fun bs!1605101 () Bool)

(assert (= bs!1605101 (and d!2007083 d!2006667)))

(assert (=> bs!1605101 (= lambda!353458 lambda!353420)))

(declare-fun bs!1605102 () Bool)

(assert (= bs!1605102 (and d!2007083 d!2006553)))

(assert (=> bs!1605102 (= lambda!353458 lambda!353400)))

(declare-fun bs!1605103 () Bool)

(assert (= bs!1605103 (and d!2007083 d!2006563)))

(assert (=> bs!1605103 (= lambda!353458 lambda!353403)))

(declare-fun bs!1605104 () Bool)

(assert (= bs!1605104 (and d!2007083 d!2006429)))

(assert (=> bs!1605104 (= lambda!353458 lambda!353368)))

(declare-fun bs!1605105 () Bool)

(assert (= bs!1605105 (and d!2007083 d!2007079)))

(assert (=> bs!1605105 (= lambda!353458 lambda!353456)))

(declare-fun bs!1605106 () Bool)

(assert (= bs!1605106 (and d!2007083 d!2006417)))

(assert (=> bs!1605106 (= lambda!353458 lambda!353359)))

(declare-fun bs!1605107 () Bool)

(assert (= bs!1605107 (and d!2007083 d!2006681)))

(assert (=> bs!1605107 (= lambda!353458 lambda!353422)))

(declare-fun bs!1605108 () Bool)

(assert (= bs!1605108 (and d!2007083 d!2006531)))

(assert (=> bs!1605108 (= lambda!353458 lambda!353399)))

(declare-fun bs!1605109 () Bool)

(assert (= bs!1605109 (and d!2007083 d!2006421)))

(assert (=> bs!1605109 (= lambda!353458 lambda!353365)))

(declare-fun bs!1605110 () Bool)

(assert (= bs!1605110 (and d!2007083 d!2006813)))

(assert (=> bs!1605110 (= lambda!353458 lambda!353430)))

(declare-fun bs!1605111 () Bool)

(assert (= bs!1605111 (and d!2007083 d!2006821)))

(assert (=> bs!1605111 (= lambda!353458 lambda!353431)))

(declare-fun lt!2373912 () List!65233)

(assert (=> d!2007083 (forall!15496 lt!2373912 lambda!353458)))

(declare-fun e!3885257 () List!65233)

(assert (=> d!2007083 (= lt!2373912 e!3885257)))

(declare-fun c!1168083 () Bool)

(assert (=> d!2007083 (= c!1168083 ((_ is Cons!65110) lt!2373651))))

(assert (=> d!2007083 (= (unfocusZipperList!1732 lt!2373651) lt!2373912)))

(declare-fun b!6401948 () Bool)

(assert (=> b!6401948 (= e!3885257 (Cons!65109 (generalisedConcat!1908 (exprs!6195 (h!71558 lt!2373651))) (unfocusZipperList!1732 (t!378842 lt!2373651))))))

(declare-fun b!6401949 () Bool)

(assert (=> b!6401949 (= e!3885257 Nil!65109)))

(assert (= (and d!2007083 c!1168083) b!6401948))

(assert (= (and d!2007083 (not c!1168083)) b!6401949))

(declare-fun m!7199146 () Bool)

(assert (=> d!2007083 m!7199146))

(declare-fun m!7199150 () Bool)

(assert (=> b!6401948 m!7199150))

(declare-fun m!7199154 () Bool)

(assert (=> b!6401948 m!7199154))

(assert (=> d!2006555 d!2007083))

(declare-fun d!2007087 () Bool)

(assert (=> d!2007087 (= (isEmpty!37253 (_2!36593 lt!2373686)) ((_ is Nil!65108) (_2!36593 lt!2373686)))))

(assert (=> d!2006569 d!2007087))

(declare-fun b!6401954 () Bool)

(declare-fun res!2632295 () Bool)

(declare-fun e!3885264 () Bool)

(assert (=> b!6401954 (=> (not res!2632295) (not e!3885264))))

(declare-fun call!548816 () Bool)

(assert (=> b!6401954 (= res!2632295 call!548816)))

(declare-fun e!3885260 () Bool)

(assert (=> b!6401954 (= e!3885260 e!3885264)))

(declare-fun call!548815 () Bool)

(declare-fun c!1168085 () Bool)

(declare-fun bm!548809 () Bool)

(declare-fun c!1168086 () Bool)

(assert (=> bm!548809 (= call!548815 (validRegex!8047 (ite c!1168085 (reg!16640 (regTwo!33134 r!7292)) (ite c!1168086 (regTwo!33135 (regTwo!33134 r!7292)) (regTwo!33134 (regTwo!33134 r!7292))))))))

(declare-fun b!6401955 () Bool)

(declare-fun e!3885261 () Bool)

(declare-fun e!3885262 () Bool)

(assert (=> b!6401955 (= e!3885261 e!3885262)))

(declare-fun res!2632297 () Bool)

(assert (=> b!6401955 (= res!2632297 (not (nullable!6304 (reg!16640 (regTwo!33134 r!7292)))))))

(assert (=> b!6401955 (=> (not res!2632297) (not e!3885262))))

(declare-fun b!6401956 () Bool)

(declare-fun e!3885266 () Bool)

(assert (=> b!6401956 (= e!3885266 e!3885261)))

(assert (=> b!6401956 (= c!1168085 ((_ is Star!16311) (regTwo!33134 r!7292)))))

(declare-fun b!6401957 () Bool)

(declare-fun res!2632294 () Bool)

(declare-fun e!3885265 () Bool)

(assert (=> b!6401957 (=> res!2632294 e!3885265)))

(assert (=> b!6401957 (= res!2632294 (not ((_ is Concat!25156) (regTwo!33134 r!7292))))))

(assert (=> b!6401957 (= e!3885260 e!3885265)))

(declare-fun b!6401958 () Bool)

(assert (=> b!6401958 (= e!3885262 call!548815)))

(declare-fun b!6401959 () Bool)

(assert (=> b!6401959 (= e!3885261 e!3885260)))

(assert (=> b!6401959 (= c!1168086 ((_ is Union!16311) (regTwo!33134 r!7292)))))

(declare-fun b!6401960 () Bool)

(declare-fun call!548814 () Bool)

(assert (=> b!6401960 (= e!3885264 call!548814)))

(declare-fun b!6401961 () Bool)

(declare-fun e!3885263 () Bool)

(assert (=> b!6401961 (= e!3885263 call!548814)))

(declare-fun bm!548811 () Bool)

(assert (=> bm!548811 (= call!548814 call!548815)))

(declare-fun b!6401962 () Bool)

(assert (=> b!6401962 (= e!3885265 e!3885263)))

(declare-fun res!2632298 () Bool)

(assert (=> b!6401962 (=> (not res!2632298) (not e!3885263))))

(assert (=> b!6401962 (= res!2632298 call!548816)))

(declare-fun bm!548810 () Bool)

(assert (=> bm!548810 (= call!548816 (validRegex!8047 (ite c!1168086 (regOne!33135 (regTwo!33134 r!7292)) (regOne!33134 (regTwo!33134 r!7292)))))))

(declare-fun d!2007091 () Bool)

(declare-fun res!2632296 () Bool)

(assert (=> d!2007091 (=> res!2632296 e!3885266)))

(assert (=> d!2007091 (= res!2632296 ((_ is ElementMatch!16311) (regTwo!33134 r!7292)))))

(assert (=> d!2007091 (= (validRegex!8047 (regTwo!33134 r!7292)) e!3885266)))

(assert (= (and d!2007091 (not res!2632296)) b!6401956))

(assert (= (and b!6401956 c!1168085) b!6401955))

(assert (= (and b!6401956 (not c!1168085)) b!6401959))

(assert (= (and b!6401955 res!2632297) b!6401958))

(assert (= (and b!6401959 c!1168086) b!6401954))

(assert (= (and b!6401959 (not c!1168086)) b!6401957))

(assert (= (and b!6401954 res!2632295) b!6401960))

(assert (= (and b!6401957 (not res!2632294)) b!6401962))

(assert (= (and b!6401962 res!2632298) b!6401961))

(assert (= (or b!6401960 b!6401961) bm!548811))

(assert (= (or b!6401954 b!6401962) bm!548810))

(assert (= (or b!6401958 bm!548811) bm!548809))

(declare-fun m!7199162 () Bool)

(assert (=> bm!548809 m!7199162))

(declare-fun m!7199166 () Bool)

(assert (=> b!6401955 m!7199166))

(declare-fun m!7199170 () Bool)

(assert (=> bm!548810 m!7199170))

(assert (=> d!2006569 d!2007091))

(declare-fun d!2007093 () Bool)

(assert (=> d!2007093 (= (Exists!3381 (ite c!1167656 lambda!353384 lambda!353386)) (choose!47587 (ite c!1167656 lambda!353384 lambda!353386)))))

(declare-fun bs!1605112 () Bool)

(assert (= bs!1605112 d!2007093))

(declare-fun m!7199178 () Bool)

(assert (=> bs!1605112 m!7199178))

(assert (=> bm!548476 d!2007093))

(declare-fun bs!1605113 () Bool)

(declare-fun d!2007097 () Bool)

(assert (= bs!1605113 (and d!2007097 d!2007041)))

(declare-fun lambda!353459 () Int)

(assert (=> bs!1605113 (= lambda!353459 lambda!353455)))

(declare-fun bs!1605114 () Bool)

(assert (= bs!1605114 (and d!2007097 d!2006667)))

(assert (=> bs!1605114 (= lambda!353459 lambda!353420)))

(declare-fun bs!1605115 () Bool)

(assert (= bs!1605115 (and d!2007097 d!2006553)))

(assert (=> bs!1605115 (= lambda!353459 lambda!353400)))

(declare-fun bs!1605116 () Bool)

(assert (= bs!1605116 (and d!2007097 d!2006563)))

(assert (=> bs!1605116 (= lambda!353459 lambda!353403)))

(declare-fun bs!1605117 () Bool)

(assert (= bs!1605117 (and d!2007097 d!2006429)))

(assert (=> bs!1605117 (= lambda!353459 lambda!353368)))

(declare-fun bs!1605118 () Bool)

(assert (= bs!1605118 (and d!2007097 d!2007079)))

(assert (=> bs!1605118 (= lambda!353459 lambda!353456)))

(declare-fun bs!1605119 () Bool)

(assert (= bs!1605119 (and d!2007097 d!2007083)))

(assert (=> bs!1605119 (= lambda!353459 lambda!353458)))

(declare-fun bs!1605120 () Bool)

(assert (= bs!1605120 (and d!2007097 d!2006417)))

(assert (=> bs!1605120 (= lambda!353459 lambda!353359)))

(declare-fun bs!1605121 () Bool)

(assert (= bs!1605121 (and d!2007097 d!2006681)))

(assert (=> bs!1605121 (= lambda!353459 lambda!353422)))

(declare-fun bs!1605122 () Bool)

(assert (= bs!1605122 (and d!2007097 d!2006531)))

(assert (=> bs!1605122 (= lambda!353459 lambda!353399)))

(declare-fun bs!1605123 () Bool)

(assert (= bs!1605123 (and d!2007097 d!2006421)))

(assert (=> bs!1605123 (= lambda!353459 lambda!353365)))

(declare-fun bs!1605124 () Bool)

(assert (= bs!1605124 (and d!2007097 d!2006813)))

(assert (=> bs!1605124 (= lambda!353459 lambda!353430)))

(declare-fun bs!1605125 () Bool)

(assert (= bs!1605125 (and d!2007097 d!2006821)))

(assert (=> bs!1605125 (= lambda!353459 lambda!353431)))

(declare-fun b!6401967 () Bool)

(declare-fun e!3885272 () Regex!16311)

(assert (=> b!6401967 (= e!3885272 (Concat!25156 (h!71557 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343))))) (generalisedConcat!1908 (t!378841 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343))))))))))

(declare-fun b!6401968 () Bool)

(declare-fun e!3885274 () Bool)

(assert (=> b!6401968 (= e!3885274 (isEmpty!37252 (t!378841 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun e!3885270 () Bool)

(assert (=> d!2007097 e!3885270))

(declare-fun res!2632302 () Bool)

(assert (=> d!2007097 (=> (not res!2632302) (not e!3885270))))

(declare-fun lt!2373915 () Regex!16311)

(assert (=> d!2007097 (= res!2632302 (validRegex!8047 lt!2373915))))

(declare-fun e!3885269 () Regex!16311)

(assert (=> d!2007097 (= lt!2373915 e!3885269)))

(declare-fun c!1168091 () Bool)

(assert (=> d!2007097 (= c!1168091 e!3885274)))

(declare-fun res!2632301 () Bool)

(assert (=> d!2007097 (=> (not res!2632301) (not e!3885274))))

(assert (=> d!2007097 (= res!2632301 ((_ is Cons!65109) (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(assert (=> d!2007097 (forall!15496 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343)))) lambda!353459)))

(assert (=> d!2007097 (= (generalisedConcat!1908 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343))))) lt!2373915)))

(declare-fun b!6401969 () Bool)

(declare-fun e!3885273 () Bool)

(assert (=> b!6401969 (= e!3885273 (= lt!2373915 (head!13112 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun b!6401970 () Bool)

(assert (=> b!6401970 (= e!3885273 (isConcat!1234 lt!2373915))))

(declare-fun b!6401971 () Bool)

(declare-fun e!3885271 () Bool)

(assert (=> b!6401971 (= e!3885271 e!3885273)))

(declare-fun c!1168090 () Bool)

(assert (=> b!6401971 (= c!1168090 (isEmpty!37252 (tail!12197 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun b!6401972 () Bool)

(assert (=> b!6401972 (= e!3885269 (h!71557 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun b!6401973 () Bool)

(assert (=> b!6401973 (= e!3885271 (isEmptyExpr!1711 lt!2373915))))

(declare-fun b!6401974 () Bool)

(assert (=> b!6401974 (= e!3885269 e!3885272)))

(declare-fun c!1168088 () Bool)

(assert (=> b!6401974 (= c!1168088 ((_ is Cons!65109) (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun b!6401975 () Bool)

(assert (=> b!6401975 (= e!3885270 e!3885271)))

(declare-fun c!1168089 () Bool)

(assert (=> b!6401975 (= c!1168089 (isEmpty!37252 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun b!6401976 () Bool)

(assert (=> b!6401976 (= e!3885272 EmptyExpr!16311)))

(assert (= (and d!2007097 res!2632301) b!6401968))

(assert (= (and d!2007097 c!1168091) b!6401972))

(assert (= (and d!2007097 (not c!1168091)) b!6401974))

(assert (= (and b!6401974 c!1168088) b!6401967))

(assert (= (and b!6401974 (not c!1168088)) b!6401976))

(assert (= (and d!2007097 res!2632302) b!6401975))

(assert (= (and b!6401975 c!1168089) b!6401973))

(assert (= (and b!6401975 (not c!1168089)) b!6401971))

(assert (= (and b!6401971 c!1168090) b!6401969))

(assert (= (and b!6401971 (not c!1168090)) b!6401970))

(declare-fun m!7199180 () Bool)

(assert (=> b!6401971 m!7199180))

(assert (=> b!6401971 m!7199180))

(declare-fun m!7199182 () Bool)

(assert (=> b!6401971 m!7199182))

(declare-fun m!7199184 () Bool)

(assert (=> b!6401973 m!7199184))

(declare-fun m!7199186 () Bool)

(assert (=> d!2007097 m!7199186))

(declare-fun m!7199188 () Bool)

(assert (=> d!2007097 m!7199188))

(declare-fun m!7199190 () Bool)

(assert (=> b!6401969 m!7199190))

(declare-fun m!7199192 () Bool)

(assert (=> b!6401970 m!7199192))

(declare-fun m!7199194 () Bool)

(assert (=> b!6401967 m!7199194))

(declare-fun m!7199196 () Bool)

(assert (=> b!6401968 m!7199196))

(assert (=> b!6401975 m!7197980))

(assert (=> b!6400719 d!2007097))

(declare-fun bs!1605145 () Bool)

(declare-fun b!6402027 () Bool)

(assert (= bs!1605145 (and b!6402027 d!2007041)))

(declare-fun lambda!353466 () Int)

(assert (=> bs!1605145 (not (= lambda!353466 lambda!353455))))

(declare-fun bs!1605147 () Bool)

(assert (= bs!1605147 (and b!6402027 d!2007097)))

(assert (=> bs!1605147 (not (= lambda!353466 lambda!353459))))

(declare-fun bs!1605148 () Bool)

(assert (= bs!1605148 (and b!6402027 d!2006667)))

(assert (=> bs!1605148 (not (= lambda!353466 lambda!353420))))

(declare-fun bs!1605149 () Bool)

(assert (= bs!1605149 (and b!6402027 d!2006553)))

(assert (=> bs!1605149 (not (= lambda!353466 lambda!353400))))

(declare-fun bs!1605151 () Bool)

(assert (= bs!1605151 (and b!6402027 d!2006563)))

(assert (=> bs!1605151 (not (= lambda!353466 lambda!353403))))

(declare-fun bs!1605152 () Bool)

(assert (= bs!1605152 (and b!6402027 d!2006429)))

(assert (=> bs!1605152 (not (= lambda!353466 lambda!353368))))

(declare-fun bs!1605153 () Bool)

(assert (= bs!1605153 (and b!6402027 d!2007079)))

(assert (=> bs!1605153 (not (= lambda!353466 lambda!353456))))

(declare-fun bs!1605154 () Bool)

(assert (= bs!1605154 (and b!6402027 d!2007083)))

(assert (=> bs!1605154 (not (= lambda!353466 lambda!353458))))

(declare-fun bs!1605156 () Bool)

(assert (= bs!1605156 (and b!6402027 d!2006417)))

(assert (=> bs!1605156 (not (= lambda!353466 lambda!353359))))

(declare-fun bs!1605157 () Bool)

(assert (= bs!1605157 (and b!6402027 d!2006681)))

(assert (=> bs!1605157 (not (= lambda!353466 lambda!353422))))

(declare-fun bs!1605158 () Bool)

(assert (= bs!1605158 (and b!6402027 d!2006531)))

(assert (=> bs!1605158 (not (= lambda!353466 lambda!353399))))

(declare-fun bs!1605159 () Bool)

(assert (= bs!1605159 (and b!6402027 d!2006421)))

(assert (=> bs!1605159 (not (= lambda!353466 lambda!353365))))

(declare-fun bs!1605161 () Bool)

(assert (= bs!1605161 (and b!6402027 d!2006813)))

(assert (=> bs!1605161 (not (= lambda!353466 lambda!353430))))

(declare-fun bs!1605162 () Bool)

(assert (= bs!1605162 (and b!6402027 d!2006821)))

(assert (=> bs!1605162 (not (= lambda!353466 lambda!353431))))

(assert (=> b!6402027 true))

(declare-fun bs!1605163 () Bool)

(declare-fun b!6402029 () Bool)

(assert (= bs!1605163 (and b!6402029 d!2007041)))

(declare-fun lambda!353467 () Int)

(assert (=> bs!1605163 (not (= lambda!353467 lambda!353455))))

(declare-fun bs!1605164 () Bool)

(assert (= bs!1605164 (and b!6402029 d!2007097)))

(assert (=> bs!1605164 (not (= lambda!353467 lambda!353459))))

(declare-fun bs!1605166 () Bool)

(assert (= bs!1605166 (and b!6402029 d!2006667)))

(assert (=> bs!1605166 (not (= lambda!353467 lambda!353420))))

(declare-fun bs!1605167 () Bool)

(assert (= bs!1605167 (and b!6402029 d!2006553)))

(assert (=> bs!1605167 (not (= lambda!353467 lambda!353400))))

(declare-fun bs!1605168 () Bool)

(assert (= bs!1605168 (and b!6402029 d!2006563)))

(assert (=> bs!1605168 (not (= lambda!353467 lambda!353403))))

(declare-fun bs!1605169 () Bool)

(assert (= bs!1605169 (and b!6402029 d!2006429)))

(assert (=> bs!1605169 (not (= lambda!353467 lambda!353368))))

(declare-fun bs!1605170 () Bool)

(assert (= bs!1605170 (and b!6402029 d!2007079)))

(assert (=> bs!1605170 (not (= lambda!353467 lambda!353456))))

(declare-fun bs!1605171 () Bool)

(assert (= bs!1605171 (and b!6402029 d!2007083)))

(assert (=> bs!1605171 (not (= lambda!353467 lambda!353458))))

(declare-fun bs!1605172 () Bool)

(assert (= bs!1605172 (and b!6402029 b!6402027)))

(declare-fun lt!2373932 () Int)

(declare-fun lt!2373934 () Int)

(assert (=> bs!1605172 (= (= lt!2373932 lt!2373934) (= lambda!353467 lambda!353466))))

(declare-fun bs!1605174 () Bool)

(assert (= bs!1605174 (and b!6402029 d!2006417)))

(assert (=> bs!1605174 (not (= lambda!353467 lambda!353359))))

(declare-fun bs!1605175 () Bool)

(assert (= bs!1605175 (and b!6402029 d!2006681)))

(assert (=> bs!1605175 (not (= lambda!353467 lambda!353422))))

(declare-fun bs!1605176 () Bool)

(assert (= bs!1605176 (and b!6402029 d!2006531)))

(assert (=> bs!1605176 (not (= lambda!353467 lambda!353399))))

(declare-fun bs!1605177 () Bool)

(assert (= bs!1605177 (and b!6402029 d!2006421)))

(assert (=> bs!1605177 (not (= lambda!353467 lambda!353365))))

(declare-fun bs!1605178 () Bool)

(assert (= bs!1605178 (and b!6402029 d!2006813)))

(assert (=> bs!1605178 (not (= lambda!353467 lambda!353430))))

(declare-fun bs!1605179 () Bool)

(assert (= bs!1605179 (and b!6402029 d!2006821)))

(assert (=> bs!1605179 (not (= lambda!353467 lambda!353431))))

(assert (=> b!6402029 true))

(declare-fun d!2007099 () Bool)

(declare-fun e!3885304 () Bool)

(assert (=> d!2007099 e!3885304))

(declare-fun res!2632321 () Bool)

(assert (=> d!2007099 (=> (not res!2632321) (not e!3885304))))

(assert (=> d!2007099 (= res!2632321 (>= lt!2373932 0))))

(declare-fun e!3885303 () Int)

(assert (=> d!2007099 (= lt!2373932 e!3885303)))

(declare-fun c!1168109 () Bool)

(assert (=> d!2007099 (= c!1168109 ((_ is Cons!65109) (exprs!6195 (h!71558 zl!343))))))

(assert (=> d!2007099 (= (contextDepth!269 (h!71558 zl!343)) lt!2373932)))

(assert (=> b!6402027 (= e!3885303 lt!2373934)))

(assert (=> b!6402027 (= lt!2373934 (maxBigInt!0 (regexDepth!338 (h!71557 (exprs!6195 (h!71558 zl!343)))) (contextDepth!269 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))))))))

(declare-fun lt!2373935 () Unit!158575)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!121 (List!65233 Int Int) Unit!158575)

(assert (=> b!6402027 (= lt!2373935 (lemmaForallRegexDepthBiggerThanTransitive!121 (t!378841 (exprs!6195 (h!71558 zl!343))) lt!2373934 (contextDepth!269 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))))))))

(assert (=> b!6402027 (forall!15496 (t!378841 (exprs!6195 (h!71558 zl!343))) lambda!353466)))

(declare-fun lt!2373933 () Unit!158575)

(assert (=> b!6402027 (= lt!2373933 lt!2373935)))

(declare-fun b!6402028 () Bool)

(assert (=> b!6402028 (= e!3885303 0)))

(assert (=> b!6402029 (= e!3885304 (forall!15496 (exprs!6195 (h!71558 zl!343)) lambda!353467))))

(assert (= (and d!2007099 c!1168109) b!6402027))

(assert (= (and d!2007099 (not c!1168109)) b!6402028))

(assert (= (and d!2007099 res!2632321) b!6402029))

(declare-fun m!7199268 () Bool)

(assert (=> b!6402027 m!7199268))

(declare-fun m!7199270 () Bool)

(assert (=> b!6402027 m!7199270))

(declare-fun m!7199272 () Bool)

(assert (=> b!6402027 m!7199272))

(declare-fun m!7199274 () Bool)

(assert (=> b!6402027 m!7199274))

(assert (=> b!6402027 m!7199268))

(assert (=> b!6402027 m!7199270))

(assert (=> b!6402027 m!7199270))

(declare-fun m!7199276 () Bool)

(assert (=> b!6402027 m!7199276))

(declare-fun m!7199278 () Bool)

(assert (=> b!6402029 m!7199278))

(assert (=> b!6400830 d!2007099))

(declare-fun bs!1605180 () Bool)

(declare-fun b!6402032 () Bool)

(assert (= bs!1605180 (and b!6402032 b!6400830)))

(declare-fun lambda!353469 () Int)

(assert (=> bs!1605180 (= lambda!353469 lambda!353410)))

(declare-fun bs!1605181 () Bool)

(assert (= bs!1605181 (and b!6402032 b!6400835)))

(assert (=> bs!1605181 (= lambda!353469 lambda!353413)))

(declare-fun lt!2373937 () Int)

(declare-fun lambda!353470 () Int)

(assert (=> bs!1605180 (= (= lt!2373937 lt!2373847) (= lambda!353470 lambda!353411))))

(declare-fun bs!1605182 () Bool)

(assert (= bs!1605182 (and b!6402032 d!2007033)))

(assert (=> bs!1605182 (not (= lambda!353470 lambda!353454))))

(declare-fun bs!1605183 () Bool)

(assert (= bs!1605183 (and b!6402032 b!6400832)))

(assert (=> bs!1605183 (= (= lt!2373937 lt!2373848) (= lambda!353470 lambda!353412))))

(declare-fun bs!1605184 () Bool)

(assert (= bs!1605184 (and b!6402032 b!6400837)))

(assert (=> bs!1605184 (= (= lt!2373937 lt!2373852) (= lambda!353470 lambda!353415))))

(declare-fun bs!1605185 () Bool)

(assert (= bs!1605185 (and b!6402032 d!2006733)))

(assert (=> bs!1605185 (not (= lambda!353470 lambda!353428))))

(assert (=> bs!1605181 (= (= lt!2373937 lt!2373851) (= lambda!353470 lambda!353414))))

(assert (=> b!6402032 true))

(declare-fun bs!1605186 () Bool)

(declare-fun b!6402034 () Bool)

(assert (= bs!1605186 (and b!6402034 b!6400830)))

(declare-fun lambda!353471 () Int)

(declare-fun lt!2373938 () Int)

(assert (=> bs!1605186 (= (= lt!2373938 lt!2373847) (= lambda!353471 lambda!353411))))

(declare-fun bs!1605187 () Bool)

(assert (= bs!1605187 (and b!6402034 d!2007033)))

(assert (=> bs!1605187 (not (= lambda!353471 lambda!353454))))

(declare-fun bs!1605188 () Bool)

(assert (= bs!1605188 (and b!6402034 b!6400832)))

(assert (=> bs!1605188 (= (= lt!2373938 lt!2373848) (= lambda!353471 lambda!353412))))

(declare-fun bs!1605189 () Bool)

(assert (= bs!1605189 (and b!6402034 b!6400837)))

(assert (=> bs!1605189 (= (= lt!2373938 lt!2373852) (= lambda!353471 lambda!353415))))

(declare-fun bs!1605190 () Bool)

(assert (= bs!1605190 (and b!6402034 d!2006733)))

(assert (=> bs!1605190 (not (= lambda!353471 lambda!353428))))

(declare-fun bs!1605191 () Bool)

(assert (= bs!1605191 (and b!6402034 b!6400835)))

(assert (=> bs!1605191 (= (= lt!2373938 lt!2373851) (= lambda!353471 lambda!353414))))

(declare-fun bs!1605192 () Bool)

(assert (= bs!1605192 (and b!6402034 b!6402032)))

(assert (=> bs!1605192 (= (= lt!2373938 lt!2373937) (= lambda!353471 lambda!353470))))

(assert (=> b!6402034 true))

(declare-fun d!2007117 () Bool)

(declare-fun e!3885306 () Bool)

(assert (=> d!2007117 e!3885306))

(declare-fun res!2632322 () Bool)

(assert (=> d!2007117 (=> (not res!2632322) (not e!3885306))))

(assert (=> d!2007117 (= res!2632322 (>= lt!2373938 0))))

(declare-fun e!3885305 () Int)

(assert (=> d!2007117 (= lt!2373938 e!3885305)))

(declare-fun c!1168110 () Bool)

(assert (=> d!2007117 (= c!1168110 ((_ is Cons!65110) (t!378842 zl!343)))))

(assert (=> d!2007117 (= (zipperDepth!380 (t!378842 zl!343)) lt!2373938)))

(assert (=> b!6402032 (= e!3885305 lt!2373937)))

(assert (=> b!6402032 (= lt!2373937 (maxBigInt!0 (contextDepth!269 (h!71558 (t!378842 zl!343))) (zipperDepth!380 (t!378842 (t!378842 zl!343)))))))

(declare-fun lt!2373936 () Unit!158575)

(assert (=> b!6402032 (= lt!2373936 (lemmaForallContextDepthBiggerThanTransitive!253 (t!378842 (t!378842 zl!343)) lt!2373937 (zipperDepth!380 (t!378842 (t!378842 zl!343))) lambda!353469))))

(assert (=> b!6402032 (forall!15497 (t!378842 (t!378842 zl!343)) lambda!353470)))

(declare-fun lt!2373939 () Unit!158575)

(assert (=> b!6402032 (= lt!2373939 lt!2373936)))

(declare-fun b!6402033 () Bool)

(assert (=> b!6402033 (= e!3885305 0)))

(assert (=> b!6402034 (= e!3885306 (forall!15497 (t!378842 zl!343) lambda!353471))))

(assert (= (and d!2007117 c!1168110) b!6402032))

(assert (= (and d!2007117 (not c!1168110)) b!6402033))

(assert (= (and d!2007117 res!2632322) b!6402034))

(declare-fun m!7199280 () Bool)

(assert (=> b!6402032 m!7199280))

(declare-fun m!7199282 () Bool)

(assert (=> b!6402032 m!7199282))

(assert (=> b!6402032 m!7199282))

(declare-fun m!7199284 () Bool)

(assert (=> b!6402032 m!7199284))

(declare-fun m!7199286 () Bool)

(assert (=> b!6402032 m!7199286))

(assert (=> b!6402032 m!7199284))

(assert (=> b!6402032 m!7199284))

(declare-fun m!7199288 () Bool)

(assert (=> b!6402032 m!7199288))

(declare-fun m!7199290 () Bool)

(assert (=> b!6402034 m!7199290))

(assert (=> b!6400830 d!2007117))

(declare-fun d!2007119 () Bool)

(assert (=> d!2007119 (= (maxBigInt!0 (contextDepth!269 (h!71558 zl!343)) (zipperDepth!380 (t!378842 zl!343))) (ite (>= (contextDepth!269 (h!71558 zl!343)) (zipperDepth!380 (t!378842 zl!343))) (contextDepth!269 (h!71558 zl!343)) (zipperDepth!380 (t!378842 zl!343))))))

(assert (=> b!6400830 d!2007119))

(declare-fun bs!1605197 () Bool)

(declare-fun d!2007121 () Bool)

(assert (= bs!1605197 (and d!2007121 b!6400830)))

(declare-fun lambda!353474 () Int)

(assert (=> bs!1605197 (not (= lambda!353474 lambda!353411))))

(declare-fun bs!1605199 () Bool)

(assert (= bs!1605199 (and d!2007121 d!2007033)))

(assert (=> bs!1605199 (not (= lambda!353474 lambda!353454))))

(declare-fun bs!1605200 () Bool)

(assert (= bs!1605200 (and d!2007121 b!6400832)))

(assert (=> bs!1605200 (not (= lambda!353474 lambda!353412))))

(declare-fun bs!1605201 () Bool)

(assert (= bs!1605201 (and d!2007121 b!6400837)))

(assert (=> bs!1605201 (not (= lambda!353474 lambda!353415))))

(declare-fun bs!1605202 () Bool)

(assert (= bs!1605202 (and d!2007121 d!2006733)))

(assert (=> bs!1605202 (not (= lambda!353474 lambda!353428))))

(declare-fun bs!1605203 () Bool)

(assert (= bs!1605203 (and d!2007121 b!6400835)))

(assert (=> bs!1605203 (not (= lambda!353474 lambda!353414))))

(declare-fun bs!1605205 () Bool)

(assert (= bs!1605205 (and d!2007121 b!6402034)))

(assert (=> bs!1605205 (not (= lambda!353474 lambda!353471))))

(declare-fun bs!1605207 () Bool)

(assert (= bs!1605207 (and d!2007121 b!6402032)))

(assert (=> bs!1605207 (not (= lambda!353474 lambda!353470))))

(assert (=> d!2007121 true))

(assert (=> d!2007121 true))

(declare-fun order!27543 () Int)

(declare-fun order!27541 () Int)

(declare-fun dynLambda!25848 (Int Int) Int)

(declare-fun dynLambda!25849 (Int Int) Int)

(assert (=> d!2007121 (< (dynLambda!25848 order!27541 lambda!353410) (dynLambda!25849 order!27543 lambda!353474))))

(assert (=> d!2007121 (forall!15497 (t!378842 zl!343) lambda!353474)))

(declare-fun lt!2373942 () Unit!158575)

(declare-fun choose!47604 (List!65234 Int Int Int) Unit!158575)

(assert (=> d!2007121 (= lt!2373942 (choose!47604 (t!378842 zl!343) lt!2373847 (zipperDepth!380 (t!378842 zl!343)) lambda!353410))))

(assert (=> d!2007121 (>= lt!2373847 (zipperDepth!380 (t!378842 zl!343)))))

(assert (=> d!2007121 (= (lemmaForallContextDepthBiggerThanTransitive!253 (t!378842 zl!343) lt!2373847 (zipperDepth!380 (t!378842 zl!343)) lambda!353410) lt!2373942)))

(declare-fun bs!1605211 () Bool)

(assert (= bs!1605211 d!2007121))

(declare-fun m!7199308 () Bool)

(assert (=> bs!1605211 m!7199308))

(assert (=> bs!1605211 m!7198056))

(declare-fun m!7199310 () Bool)

(assert (=> bs!1605211 m!7199310))

(assert (=> b!6400830 d!2007121))

(declare-fun d!2007133 () Bool)

(declare-fun res!2632328 () Bool)

(declare-fun e!3885314 () Bool)

(assert (=> d!2007133 (=> res!2632328 e!3885314)))

(assert (=> d!2007133 (= res!2632328 ((_ is Nil!65110) (t!378842 zl!343)))))

(assert (=> d!2007133 (= (forall!15497 (t!378842 zl!343) lambda!353411) e!3885314)))

(declare-fun b!6402046 () Bool)

(declare-fun e!3885315 () Bool)

(assert (=> b!6402046 (= e!3885314 e!3885315)))

(declare-fun res!2632329 () Bool)

(assert (=> b!6402046 (=> (not res!2632329) (not e!3885315))))

(assert (=> b!6402046 (= res!2632329 (dynLambda!25845 lambda!353411 (h!71558 (t!378842 zl!343))))))

(declare-fun b!6402047 () Bool)

(assert (=> b!6402047 (= e!3885315 (forall!15497 (t!378842 (t!378842 zl!343)) lambda!353411))))

(assert (= (and d!2007133 (not res!2632328)) b!6402046))

(assert (= (and b!6402046 res!2632329) b!6402047))

(declare-fun b_lambda!243275 () Bool)

(assert (=> (not b_lambda!243275) (not b!6402046)))

(declare-fun m!7199312 () Bool)

(assert (=> b!6402046 m!7199312))

(declare-fun m!7199314 () Bool)

(assert (=> b!6402047 m!7199314))

(assert (=> b!6400830 d!2007133))

(declare-fun b!6402048 () Bool)

(declare-fun e!3885317 () Bool)

(declare-fun e!3885318 () Bool)

(assert (=> b!6402048 (= e!3885317 e!3885318)))

(declare-fun res!2632331 () Bool)

(assert (=> b!6402048 (=> res!2632331 e!3885318)))

(declare-fun call!548824 () Bool)

(assert (=> b!6402048 (= res!2632331 call!548824)))

(declare-fun b!6402049 () Bool)

(declare-fun e!3885320 () Bool)

(assert (=> b!6402049 (= e!3885320 (matchR!8494 (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 (get!22550 lt!2373821)))) (tail!12198 (_2!36593 (get!22550 lt!2373821)))))))

(declare-fun b!6402050 () Bool)

(declare-fun e!3885322 () Bool)

(assert (=> b!6402050 (= e!3885322 e!3885317)))

(declare-fun res!2632332 () Bool)

(assert (=> b!6402050 (=> (not res!2632332) (not e!3885317))))

(declare-fun lt!2373947 () Bool)

(assert (=> b!6402050 (= res!2632332 (not lt!2373947))))

(declare-fun b!6402051 () Bool)

(declare-fun e!3885321 () Bool)

(assert (=> b!6402051 (= e!3885321 (= (head!13113 (_2!36593 (get!22550 lt!2373821))) (c!1167428 (regTwo!33134 r!7292))))))

(declare-fun b!6402052 () Bool)

(declare-fun res!2632334 () Bool)

(assert (=> b!6402052 (=> res!2632334 e!3885318)))

(assert (=> b!6402052 (= res!2632334 (not (isEmpty!37253 (tail!12198 (_2!36593 (get!22550 lt!2373821))))))))

(declare-fun b!6402053 () Bool)

(assert (=> b!6402053 (= e!3885320 (nullable!6304 (regTwo!33134 r!7292)))))

(declare-fun b!6402054 () Bool)

(assert (=> b!6402054 (= e!3885318 (not (= (head!13113 (_2!36593 (get!22550 lt!2373821))) (c!1167428 (regTwo!33134 r!7292)))))))

(declare-fun b!6402056 () Bool)

(declare-fun res!2632330 () Bool)

(assert (=> b!6402056 (=> res!2632330 e!3885322)))

(assert (=> b!6402056 (= res!2632330 (not ((_ is ElementMatch!16311) (regTwo!33134 r!7292))))))

(declare-fun e!3885316 () Bool)

(assert (=> b!6402056 (= e!3885316 e!3885322)))

(declare-fun bm!548819 () Bool)

(assert (=> bm!548819 (= call!548824 (isEmpty!37253 (_2!36593 (get!22550 lt!2373821))))))

(declare-fun b!6402057 () Bool)

(declare-fun e!3885319 () Bool)

(assert (=> b!6402057 (= e!3885319 e!3885316)))

(declare-fun c!1168114 () Bool)

(assert (=> b!6402057 (= c!1168114 ((_ is EmptyLang!16311) (regTwo!33134 r!7292)))))

(declare-fun b!6402058 () Bool)

(declare-fun res!2632333 () Bool)

(assert (=> b!6402058 (=> (not res!2632333) (not e!3885321))))

(assert (=> b!6402058 (= res!2632333 (not call!548824))))

(declare-fun b!6402059 () Bool)

(declare-fun res!2632337 () Bool)

(assert (=> b!6402059 (=> res!2632337 e!3885322)))

(assert (=> b!6402059 (= res!2632337 e!3885321)))

(declare-fun res!2632335 () Bool)

(assert (=> b!6402059 (=> (not res!2632335) (not e!3885321))))

(assert (=> b!6402059 (= res!2632335 lt!2373947)))

(declare-fun d!2007135 () Bool)

(assert (=> d!2007135 e!3885319))

(declare-fun c!1168115 () Bool)

(assert (=> d!2007135 (= c!1168115 ((_ is EmptyExpr!16311) (regTwo!33134 r!7292)))))

(assert (=> d!2007135 (= lt!2373947 e!3885320)))

(declare-fun c!1168116 () Bool)

(assert (=> d!2007135 (= c!1168116 (isEmpty!37253 (_2!36593 (get!22550 lt!2373821))))))

(assert (=> d!2007135 (validRegex!8047 (regTwo!33134 r!7292))))

(assert (=> d!2007135 (= (matchR!8494 (regTwo!33134 r!7292) (_2!36593 (get!22550 lt!2373821))) lt!2373947)))

(declare-fun b!6402055 () Bool)

(assert (=> b!6402055 (= e!3885319 (= lt!2373947 call!548824))))

(declare-fun b!6402060 () Bool)

(assert (=> b!6402060 (= e!3885316 (not lt!2373947))))

(declare-fun b!6402061 () Bool)

(declare-fun res!2632336 () Bool)

(assert (=> b!6402061 (=> (not res!2632336) (not e!3885321))))

(assert (=> b!6402061 (= res!2632336 (isEmpty!37253 (tail!12198 (_2!36593 (get!22550 lt!2373821)))))))

(assert (= (and d!2007135 c!1168116) b!6402053))

(assert (= (and d!2007135 (not c!1168116)) b!6402049))

(assert (= (and d!2007135 c!1168115) b!6402055))

(assert (= (and d!2007135 (not c!1168115)) b!6402057))

(assert (= (and b!6402057 c!1168114) b!6402060))

(assert (= (and b!6402057 (not c!1168114)) b!6402056))

(assert (= (and b!6402056 (not res!2632330)) b!6402059))

(assert (= (and b!6402059 res!2632335) b!6402058))

(assert (= (and b!6402058 res!2632333) b!6402061))

(assert (= (and b!6402061 res!2632336) b!6402051))

(assert (= (and b!6402059 (not res!2632337)) b!6402050))

(assert (= (and b!6402050 res!2632332) b!6402048))

(assert (= (and b!6402048 (not res!2632331)) b!6402052))

(assert (= (and b!6402052 (not res!2632334)) b!6402054))

(assert (= (or b!6402055 b!6402048 b!6402058) bm!548819))

(declare-fun m!7199328 () Bool)

(assert (=> bm!548819 m!7199328))

(declare-fun m!7199330 () Bool)

(assert (=> b!6402054 m!7199330))

(declare-fun m!7199332 () Bool)

(assert (=> b!6402061 m!7199332))

(assert (=> b!6402061 m!7199332))

(declare-fun m!7199334 () Bool)

(assert (=> b!6402061 m!7199334))

(assert (=> b!6402051 m!7199330))

(assert (=> b!6402052 m!7199332))

(assert (=> b!6402052 m!7199332))

(assert (=> b!6402052 m!7199334))

(assert (=> d!2007135 m!7199328))

(assert (=> d!2007135 m!7198024))

(assert (=> b!6402049 m!7199330))

(assert (=> b!6402049 m!7199330))

(declare-fun m!7199336 () Bool)

(assert (=> b!6402049 m!7199336))

(assert (=> b!6402049 m!7199332))

(assert (=> b!6402049 m!7199336))

(assert (=> b!6402049 m!7199332))

(declare-fun m!7199338 () Bool)

(assert (=> b!6402049 m!7199338))

(assert (=> b!6402053 m!7198030))

(assert (=> b!6400558 d!2007135))

(assert (=> b!6400558 d!2006793))

(assert (=> b!6400213 d!2006381))

(declare-fun d!2007139 () Bool)

(assert (=> d!2007139 (= (nullable!6304 (h!71557 (exprs!6195 lt!2373652))) (nullableFct!2250 (h!71557 (exprs!6195 lt!2373652))))))

(declare-fun bs!1605220 () Bool)

(assert (= bs!1605220 d!2007139))

(declare-fun m!7199340 () Bool)

(assert (=> bs!1605220 m!7199340))

(assert (=> b!6400156 d!2007139))

(declare-fun d!2007141 () Bool)

(assert (=> d!2007141 (= (isDefined!12905 lt!2373754) (not (isEmpty!37255 lt!2373754)))))

(declare-fun bs!1605221 () Bool)

(assert (= bs!1605221 d!2007141))

(declare-fun m!7199342 () Bool)

(assert (=> bs!1605221 m!7199342))

(assert (=> b!6400112 d!2007141))

(declare-fun d!2007143 () Bool)

(assert (=> d!2007143 (= (nullable!6304 r!7292) (nullableFct!2250 r!7292))))

(declare-fun bs!1605222 () Bool)

(assert (= bs!1605222 d!2007143))

(declare-fun m!7199344 () Bool)

(assert (=> bs!1605222 m!7199344))

(assert (=> b!6400745 d!2007143))

(declare-fun b!6402062 () Bool)

(declare-fun e!3885324 () (InoxSet Context!11390))

(declare-fun call!548827 () (InoxSet Context!11390))

(declare-fun call!548830 () (InoxSet Context!11390))

(assert (=> b!6402062 (= e!3885324 ((_ map or) call!548827 call!548830))))

(declare-fun b!6402063 () Bool)

(declare-fun c!1168119 () Bool)

(declare-fun e!3885327 () Bool)

(assert (=> b!6402063 (= c!1168119 e!3885327)))

(declare-fun res!2632338 () Bool)

(assert (=> b!6402063 (=> (not res!2632338) (not e!3885327))))

(assert (=> b!6402063 (= res!2632338 ((_ is Concat!25156) (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))))))

(declare-fun e!3885326 () (InoxSet Context!11390))

(assert (=> b!6402063 (= e!3885324 e!3885326)))

(declare-fun bm!548820 () Bool)

(declare-fun call!548829 () (InoxSet Context!11390))

(assert (=> bm!548820 (= call!548829 call!548827)))

(declare-fun bm!548821 () Bool)

(declare-fun call!548825 () List!65233)

(declare-fun c!1168117 () Bool)

(assert (=> bm!548821 (= call!548830 (derivationStepZipperDown!1559 (ite c!1168117 (regTwo!33135 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))) (regOne!33134 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343))))))))) (ite c!1168117 (ite (or c!1167758 c!1167760) lt!2373656 (Context!11391 call!548554)) (Context!11391 call!548825)) (h!71556 s!2326)))))

(declare-fun b!6402064 () Bool)

(declare-fun e!3885325 () (InoxSet Context!11390))

(assert (=> b!6402064 (= e!3885325 e!3885324)))

(assert (=> b!6402064 (= c!1168117 ((_ is Union!16311) (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))))))

(declare-fun b!6402065 () Bool)

(assert (=> b!6402065 (= e!3885326 ((_ map or) call!548830 call!548829))))

(declare-fun bm!548822 () Bool)

(declare-fun call!548826 () List!65233)

(assert (=> bm!548822 (= call!548826 call!548825)))

(declare-fun b!6402066 () Bool)

(declare-fun e!3885328 () (InoxSet Context!11390))

(assert (=> b!6402066 (= e!3885326 e!3885328)))

(declare-fun c!1168120 () Bool)

(assert (=> b!6402066 (= c!1168120 ((_ is Concat!25156) (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))))))

(declare-fun b!6402067 () Bool)

(declare-fun call!548828 () (InoxSet Context!11390))

(assert (=> b!6402067 (= e!3885328 call!548828)))

(declare-fun bm!548823 () Bool)

(assert (=> bm!548823 (= call!548827 (derivationStepZipperDown!1559 (ite c!1168117 (regOne!33135 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))) (ite c!1168119 (regTwo!33134 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))) (ite c!1168120 (regOne!33134 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))) (reg!16640 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343))))))))))) (ite (or c!1168117 c!1168119) (ite (or c!1167758 c!1167760) lt!2373656 (Context!11391 call!548554)) (Context!11391 call!548826)) (h!71556 s!2326)))))

(declare-fun b!6402068 () Bool)

(declare-fun e!3885323 () (InoxSet Context!11390))

(assert (=> b!6402068 (= e!3885323 call!548828)))

(declare-fun bm!548824 () Bool)

(assert (=> bm!548824 (= call!548825 ($colon$colon!2172 (exprs!6195 (ite (or c!1167758 c!1167760) lt!2373656 (Context!11391 call!548554))) (ite (or c!1168119 c!1168120) (regTwo!33134 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))) (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343))))))))))))

(declare-fun c!1168121 () Bool)

(declare-fun d!2007145 () Bool)

(assert (=> d!2007145 (= c!1168121 (and ((_ is ElementMatch!16311) (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))) (= (c!1167428 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))) (h!71556 s!2326))))))

(assert (=> d!2007145 (= (derivationStepZipperDown!1559 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343))))))) (ite (or c!1167758 c!1167760) lt!2373656 (Context!11391 call!548554)) (h!71556 s!2326)) e!3885325)))

(declare-fun b!6402069 () Bool)

(assert (=> b!6402069 (= e!3885323 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6402070 () Bool)

(declare-fun c!1168118 () Bool)

(assert (=> b!6402070 (= c!1168118 ((_ is Star!16311) (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343)))))))))))

(assert (=> b!6402070 (= e!3885328 e!3885323)))

(declare-fun b!6402071 () Bool)

(assert (=> b!6402071 (= e!3885325 (store ((as const (Array Context!11390 Bool)) false) (ite (or c!1167758 c!1167760) lt!2373656 (Context!11391 call!548554)) true))))

(declare-fun b!6402072 () Bool)

(assert (=> b!6402072 (= e!3885327 (nullable!6304 (regOne!33134 (ite c!1167758 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167760 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1167761 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343))))))))))))

(declare-fun bm!548825 () Bool)

(assert (=> bm!548825 (= call!548828 call!548829)))

(assert (= (and d!2007145 c!1168121) b!6402071))

(assert (= (and d!2007145 (not c!1168121)) b!6402064))

(assert (= (and b!6402064 c!1168117) b!6402062))

(assert (= (and b!6402064 (not c!1168117)) b!6402063))

(assert (= (and b!6402063 res!2632338) b!6402072))

(assert (= (and b!6402063 c!1168119) b!6402065))

(assert (= (and b!6402063 (not c!1168119)) b!6402066))

(assert (= (and b!6402066 c!1168120) b!6402067))

(assert (= (and b!6402066 (not c!1168120)) b!6402070))

(assert (= (and b!6402070 c!1168118) b!6402068))

(assert (= (and b!6402070 (not c!1168118)) b!6402069))

(assert (= (or b!6402067 b!6402068) bm!548822))

(assert (= (or b!6402067 b!6402068) bm!548825))

(assert (= (or b!6402065 bm!548822) bm!548824))

(assert (= (or b!6402065 bm!548825) bm!548820))

(assert (= (or b!6402062 b!6402065) bm!548821))

(assert (= (or b!6402062 bm!548820) bm!548823))

(declare-fun m!7199346 () Bool)

(assert (=> bm!548821 m!7199346))

(declare-fun m!7199348 () Bool)

(assert (=> bm!548823 m!7199348))

(declare-fun m!7199350 () Bool)

(assert (=> b!6402071 m!7199350))

(declare-fun m!7199352 () Bool)

(assert (=> b!6402072 m!7199352))

(declare-fun m!7199354 () Bool)

(assert (=> bm!548824 m!7199354))

(assert (=> bm!548551 d!2007145))

(assert (=> b!6400757 d!2006649))

(declare-fun b!6402073 () Bool)

(declare-fun res!2632340 () Bool)

(declare-fun e!3885333 () Bool)

(assert (=> b!6402073 (=> (not res!2632340) (not e!3885333))))

(declare-fun call!548833 () Bool)

(assert (=> b!6402073 (= res!2632340 call!548833)))

(declare-fun e!3885329 () Bool)

(assert (=> b!6402073 (= e!3885329 e!3885333)))

(declare-fun c!1168123 () Bool)

(declare-fun bm!548826 () Bool)

(declare-fun c!1168122 () Bool)

(declare-fun call!548832 () Bool)

(assert (=> bm!548826 (= call!548832 (validRegex!8047 (ite c!1168122 (reg!16640 lt!2373818) (ite c!1168123 (regTwo!33135 lt!2373818) (regTwo!33134 lt!2373818)))))))

(declare-fun b!6402074 () Bool)

(declare-fun e!3885330 () Bool)

(declare-fun e!3885331 () Bool)

(assert (=> b!6402074 (= e!3885330 e!3885331)))

(declare-fun res!2632342 () Bool)

(assert (=> b!6402074 (= res!2632342 (not (nullable!6304 (reg!16640 lt!2373818))))))

(assert (=> b!6402074 (=> (not res!2632342) (not e!3885331))))

(declare-fun b!6402075 () Bool)

(declare-fun e!3885335 () Bool)

(assert (=> b!6402075 (= e!3885335 e!3885330)))

(assert (=> b!6402075 (= c!1168122 ((_ is Star!16311) lt!2373818))))

(declare-fun b!6402076 () Bool)

(declare-fun res!2632339 () Bool)

(declare-fun e!3885334 () Bool)

(assert (=> b!6402076 (=> res!2632339 e!3885334)))

(assert (=> b!6402076 (= res!2632339 (not ((_ is Concat!25156) lt!2373818)))))

(assert (=> b!6402076 (= e!3885329 e!3885334)))

(declare-fun b!6402077 () Bool)

(assert (=> b!6402077 (= e!3885331 call!548832)))

(declare-fun b!6402078 () Bool)

(assert (=> b!6402078 (= e!3885330 e!3885329)))

(assert (=> b!6402078 (= c!1168123 ((_ is Union!16311) lt!2373818))))

(declare-fun b!6402079 () Bool)

(declare-fun call!548831 () Bool)

(assert (=> b!6402079 (= e!3885333 call!548831)))

(declare-fun b!6402080 () Bool)

(declare-fun e!3885332 () Bool)

(assert (=> b!6402080 (= e!3885332 call!548831)))

(declare-fun bm!548828 () Bool)

(assert (=> bm!548828 (= call!548831 call!548832)))

(declare-fun b!6402081 () Bool)

(assert (=> b!6402081 (= e!3885334 e!3885332)))

(declare-fun res!2632343 () Bool)

(assert (=> b!6402081 (=> (not res!2632343) (not e!3885332))))

(assert (=> b!6402081 (= res!2632343 call!548833)))

(declare-fun bm!548827 () Bool)

(assert (=> bm!548827 (= call!548833 (validRegex!8047 (ite c!1168123 (regOne!33135 lt!2373818) (regOne!33134 lt!2373818))))))

(declare-fun d!2007147 () Bool)

(declare-fun res!2632341 () Bool)

(assert (=> d!2007147 (=> res!2632341 e!3885335)))

(assert (=> d!2007147 (= res!2632341 ((_ is ElementMatch!16311) lt!2373818))))

(assert (=> d!2007147 (= (validRegex!8047 lt!2373818) e!3885335)))

(assert (= (and d!2007147 (not res!2632341)) b!6402075))

(assert (= (and b!6402075 c!1168122) b!6402074))

(assert (= (and b!6402075 (not c!1168122)) b!6402078))

(assert (= (and b!6402074 res!2632342) b!6402077))

(assert (= (and b!6402078 c!1168123) b!6402073))

(assert (= (and b!6402078 (not c!1168123)) b!6402076))

(assert (= (and b!6402073 res!2632340) b!6402079))

(assert (= (and b!6402076 (not res!2632339)) b!6402081))

(assert (= (and b!6402081 res!2632343) b!6402080))

(assert (= (or b!6402079 b!6402080) bm!548828))

(assert (= (or b!6402073 b!6402081) bm!548827))

(assert (= (or b!6402077 bm!548828) bm!548826))

(declare-fun m!7199356 () Bool)

(assert (=> bm!548826 m!7199356))

(declare-fun m!7199358 () Bool)

(assert (=> b!6402074 m!7199358))

(declare-fun m!7199360 () Bool)

(assert (=> bm!548827 m!7199360))

(assert (=> d!2006499 d!2007147))

(declare-fun bs!1605223 () Bool)

(declare-fun d!2007149 () Bool)

(assert (= bs!1605223 (and d!2007149 d!2007041)))

(declare-fun lambda!353478 () Int)

(assert (=> bs!1605223 (= lambda!353478 lambda!353455)))

(declare-fun bs!1605224 () Bool)

(assert (= bs!1605224 (and d!2007149 d!2007097)))

(assert (=> bs!1605224 (= lambda!353478 lambda!353459)))

(declare-fun bs!1605225 () Bool)

(assert (= bs!1605225 (and d!2007149 d!2006667)))

(assert (=> bs!1605225 (= lambda!353478 lambda!353420)))

(declare-fun bs!1605226 () Bool)

(assert (= bs!1605226 (and d!2007149 d!2006553)))

(assert (=> bs!1605226 (= lambda!353478 lambda!353400)))

(declare-fun bs!1605227 () Bool)

(assert (= bs!1605227 (and d!2007149 d!2006563)))

(assert (=> bs!1605227 (= lambda!353478 lambda!353403)))

(declare-fun bs!1605228 () Bool)

(assert (= bs!1605228 (and d!2007149 d!2006429)))

(assert (=> bs!1605228 (= lambda!353478 lambda!353368)))

(declare-fun bs!1605229 () Bool)

(assert (= bs!1605229 (and d!2007149 d!2007079)))

(assert (=> bs!1605229 (= lambda!353478 lambda!353456)))

(declare-fun bs!1605230 () Bool)

(assert (= bs!1605230 (and d!2007149 b!6402029)))

(assert (=> bs!1605230 (not (= lambda!353478 lambda!353467))))

(declare-fun bs!1605231 () Bool)

(assert (= bs!1605231 (and d!2007149 d!2007083)))

(assert (=> bs!1605231 (= lambda!353478 lambda!353458)))

(declare-fun bs!1605232 () Bool)

(assert (= bs!1605232 (and d!2007149 b!6402027)))

(assert (=> bs!1605232 (not (= lambda!353478 lambda!353466))))

(declare-fun bs!1605233 () Bool)

(assert (= bs!1605233 (and d!2007149 d!2006417)))

(assert (=> bs!1605233 (= lambda!353478 lambda!353359)))

(declare-fun bs!1605234 () Bool)

(assert (= bs!1605234 (and d!2007149 d!2006681)))

(assert (=> bs!1605234 (= lambda!353478 lambda!353422)))

(declare-fun bs!1605235 () Bool)

(assert (= bs!1605235 (and d!2007149 d!2006531)))

(assert (=> bs!1605235 (= lambda!353478 lambda!353399)))

(declare-fun bs!1605236 () Bool)

(assert (= bs!1605236 (and d!2007149 d!2006421)))

(assert (=> bs!1605236 (= lambda!353478 lambda!353365)))

(declare-fun bs!1605237 () Bool)

(assert (= bs!1605237 (and d!2007149 d!2006813)))

(assert (=> bs!1605237 (= lambda!353478 lambda!353430)))

(declare-fun bs!1605238 () Bool)

(assert (= bs!1605238 (and d!2007149 d!2006821)))

(assert (=> bs!1605238 (= lambda!353478 lambda!353431)))

(declare-fun b!6402082 () Bool)

(declare-fun e!3885338 () Regex!16311)

(assert (=> b!6402082 (= e!3885338 (Union!16311 (h!71557 (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110))) (generalisedUnion!2155 (t!378841 (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110))))))))

(declare-fun b!6402083 () Bool)

(declare-fun e!3885337 () Bool)

(assert (=> b!6402083 (= e!3885337 (isEmpty!37252 (t!378841 (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110)))))))

(declare-fun b!6402084 () Bool)

(declare-fun e!3885336 () Bool)

(declare-fun lt!2373948 () Regex!16311)

(assert (=> b!6402084 (= e!3885336 (= lt!2373948 (head!13112 (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110)))))))

(declare-fun b!6402085 () Bool)

(assert (=> b!6402085 (= e!3885336 (isUnion!1148 lt!2373948))))

(declare-fun b!6402086 () Bool)

(declare-fun e!3885340 () Bool)

(assert (=> b!6402086 (= e!3885340 e!3885336)))

(declare-fun c!1168125 () Bool)

(assert (=> b!6402086 (= c!1168125 (isEmpty!37252 (tail!12197 (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110)))))))

(declare-fun b!6402087 () Bool)

(assert (=> b!6402087 (= e!3885340 (isEmptyLang!1718 lt!2373948))))

(declare-fun b!6402088 () Bool)

(declare-fun e!3885341 () Bool)

(assert (=> b!6402088 (= e!3885341 e!3885340)))

(declare-fun c!1168127 () Bool)

(assert (=> b!6402088 (= c!1168127 (isEmpty!37252 (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110))))))

(declare-fun b!6402089 () Bool)

(assert (=> b!6402089 (= e!3885338 EmptyLang!16311)))

(declare-fun b!6402090 () Bool)

(declare-fun e!3885339 () Regex!16311)

(assert (=> b!6402090 (= e!3885339 (h!71557 (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110))))))

(assert (=> d!2007149 e!3885341))

(declare-fun res!2632345 () Bool)

(assert (=> d!2007149 (=> (not res!2632345) (not e!3885341))))

(assert (=> d!2007149 (= res!2632345 (validRegex!8047 lt!2373948))))

(assert (=> d!2007149 (= lt!2373948 e!3885339)))

(declare-fun c!1168126 () Bool)

(assert (=> d!2007149 (= c!1168126 e!3885337)))

(declare-fun res!2632344 () Bool)

(assert (=> d!2007149 (=> (not res!2632344) (not e!3885337))))

(assert (=> d!2007149 (= res!2632344 ((_ is Cons!65109) (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110))))))

(assert (=> d!2007149 (forall!15496 (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110)) lambda!353478)))

(assert (=> d!2007149 (= (generalisedUnion!2155 (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110))) lt!2373948)))

(declare-fun b!6402091 () Bool)

(assert (=> b!6402091 (= e!3885339 e!3885338)))

(declare-fun c!1168124 () Bool)

(assert (=> b!6402091 (= c!1168124 ((_ is Cons!65109) (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110))))))

(assert (= (and d!2007149 res!2632344) b!6402083))

(assert (= (and d!2007149 c!1168126) b!6402090))

(assert (= (and d!2007149 (not c!1168126)) b!6402091))

(assert (= (and b!6402091 c!1168124) b!6402082))

(assert (= (and b!6402091 (not c!1168124)) b!6402089))

(assert (= (and d!2007149 res!2632345) b!6402088))

(assert (= (and b!6402088 c!1168127) b!6402087))

(assert (= (and b!6402088 (not c!1168127)) b!6402086))

(assert (= (and b!6402086 c!1168125) b!6402084))

(assert (= (and b!6402086 (not c!1168125)) b!6402085))

(declare-fun m!7199362 () Bool)

(assert (=> d!2007149 m!7199362))

(assert (=> d!2007149 m!7197840))

(declare-fun m!7199364 () Bool)

(assert (=> d!2007149 m!7199364))

(assert (=> b!6402086 m!7197840))

(declare-fun m!7199366 () Bool)

(assert (=> b!6402086 m!7199366))

(assert (=> b!6402086 m!7199366))

(declare-fun m!7199368 () Bool)

(assert (=> b!6402086 m!7199368))

(declare-fun m!7199370 () Bool)

(assert (=> b!6402082 m!7199370))

(assert (=> b!6402088 m!7197840))

(declare-fun m!7199372 () Bool)

(assert (=> b!6402088 m!7199372))

(declare-fun m!7199374 () Bool)

(assert (=> b!6402083 m!7199374))

(declare-fun m!7199376 () Bool)

(assert (=> b!6402085 m!7199376))

(declare-fun m!7199378 () Bool)

(assert (=> b!6402087 m!7199378))

(assert (=> b!6402084 m!7197840))

(declare-fun m!7199380 () Bool)

(assert (=> b!6402084 m!7199380))

(assert (=> d!2006499 d!2007149))

(declare-fun bs!1605239 () Bool)

(declare-fun d!2007151 () Bool)

(assert (= bs!1605239 (and d!2007151 d!2007041)))

(declare-fun lambda!353479 () Int)

(assert (=> bs!1605239 (= lambda!353479 lambda!353455)))

(declare-fun bs!1605240 () Bool)

(assert (= bs!1605240 (and d!2007151 d!2007097)))

(assert (=> bs!1605240 (= lambda!353479 lambda!353459)))

(declare-fun bs!1605241 () Bool)

(assert (= bs!1605241 (and d!2007151 d!2006553)))

(assert (=> bs!1605241 (= lambda!353479 lambda!353400)))

(declare-fun bs!1605242 () Bool)

(assert (= bs!1605242 (and d!2007151 d!2006563)))

(assert (=> bs!1605242 (= lambda!353479 lambda!353403)))

(declare-fun bs!1605243 () Bool)

(assert (= bs!1605243 (and d!2007151 d!2006429)))

(assert (=> bs!1605243 (= lambda!353479 lambda!353368)))

(declare-fun bs!1605244 () Bool)

(assert (= bs!1605244 (and d!2007151 d!2007079)))

(assert (=> bs!1605244 (= lambda!353479 lambda!353456)))

(declare-fun bs!1605245 () Bool)

(assert (= bs!1605245 (and d!2007151 b!6402029)))

(assert (=> bs!1605245 (not (= lambda!353479 lambda!353467))))

(declare-fun bs!1605246 () Bool)

(assert (= bs!1605246 (and d!2007151 d!2007083)))

(assert (=> bs!1605246 (= lambda!353479 lambda!353458)))

(declare-fun bs!1605247 () Bool)

(assert (= bs!1605247 (and d!2007151 b!6402027)))

(assert (=> bs!1605247 (not (= lambda!353479 lambda!353466))))

(declare-fun bs!1605248 () Bool)

(assert (= bs!1605248 (and d!2007151 d!2006417)))

(assert (=> bs!1605248 (= lambda!353479 lambda!353359)))

(declare-fun bs!1605249 () Bool)

(assert (= bs!1605249 (and d!2007151 d!2006681)))

(assert (=> bs!1605249 (= lambda!353479 lambda!353422)))

(declare-fun bs!1605250 () Bool)

(assert (= bs!1605250 (and d!2007151 d!2006531)))

(assert (=> bs!1605250 (= lambda!353479 lambda!353399)))

(declare-fun bs!1605251 () Bool)

(assert (= bs!1605251 (and d!2007151 d!2006421)))

(assert (=> bs!1605251 (= lambda!353479 lambda!353365)))

(declare-fun bs!1605252 () Bool)

(assert (= bs!1605252 (and d!2007151 d!2007149)))

(assert (=> bs!1605252 (= lambda!353479 lambda!353478)))

(declare-fun bs!1605253 () Bool)

(assert (= bs!1605253 (and d!2007151 d!2006667)))

(assert (=> bs!1605253 (= lambda!353479 lambda!353420)))

(declare-fun bs!1605254 () Bool)

(assert (= bs!1605254 (and d!2007151 d!2006813)))

(assert (=> bs!1605254 (= lambda!353479 lambda!353430)))

(declare-fun bs!1605255 () Bool)

(assert (= bs!1605255 (and d!2007151 d!2006821)))

(assert (=> bs!1605255 (= lambda!353479 lambda!353431)))

(declare-fun lt!2373949 () List!65233)

(assert (=> d!2007151 (forall!15496 lt!2373949 lambda!353479)))

(declare-fun e!3885342 () List!65233)

(assert (=> d!2007151 (= lt!2373949 e!3885342)))

(declare-fun c!1168128 () Bool)

(assert (=> d!2007151 (= c!1168128 ((_ is Cons!65110) (Cons!65110 lt!2373652 Nil!65110)))))

(assert (=> d!2007151 (= (unfocusZipperList!1732 (Cons!65110 lt!2373652 Nil!65110)) lt!2373949)))

(declare-fun b!6402092 () Bool)

(assert (=> b!6402092 (= e!3885342 (Cons!65109 (generalisedConcat!1908 (exprs!6195 (h!71558 (Cons!65110 lt!2373652 Nil!65110)))) (unfocusZipperList!1732 (t!378842 (Cons!65110 lt!2373652 Nil!65110)))))))

(declare-fun b!6402093 () Bool)

(assert (=> b!6402093 (= e!3885342 Nil!65109)))

(assert (= (and d!2007151 c!1168128) b!6402092))

(assert (= (and d!2007151 (not c!1168128)) b!6402093))

(declare-fun m!7199382 () Bool)

(assert (=> d!2007151 m!7199382))

(declare-fun m!7199384 () Bool)

(assert (=> b!6402092 m!7199384))

(declare-fun m!7199386 () Bool)

(assert (=> b!6402092 m!7199386))

(assert (=> d!2006499 d!2007151))

(assert (=> b!6400753 d!2006669))

(assert (=> b!6400753 d!2006671))

(declare-fun d!2007153 () Bool)

(declare-fun lt!2373960 () Int)

(assert (=> d!2007153 (>= lt!2373960 0)))

(declare-fun e!3885349 () Int)

(assert (=> d!2007153 (= lt!2373960 e!3885349)))

(declare-fun c!1168134 () Bool)

(assert (=> d!2007153 (= c!1168134 ((_ is Nil!65108) lt!2373731))))

(assert (=> d!2007153 (= (size!40369 lt!2373731) lt!2373960)))

(declare-fun b!6402104 () Bool)

(assert (=> b!6402104 (= e!3885349 0)))

(declare-fun b!6402105 () Bool)

(assert (=> b!6402105 (= e!3885349 (+ 1 (size!40369 (t!378840 lt!2373731))))))

(assert (= (and d!2007153 c!1168134) b!6402104))

(assert (= (and d!2007153 (not c!1168134)) b!6402105))

(declare-fun m!7199388 () Bool)

(assert (=> b!6402105 m!7199388))

(assert (=> b!6400055 d!2007153))

(declare-fun d!2007155 () Bool)

(declare-fun lt!2373961 () Int)

(assert (=> d!2007155 (>= lt!2373961 0)))

(declare-fun e!3885350 () Int)

(assert (=> d!2007155 (= lt!2373961 e!3885350)))

(declare-fun c!1168135 () Bool)

(assert (=> d!2007155 (= c!1168135 ((_ is Nil!65108) (_1!36593 lt!2373686)))))

(assert (=> d!2007155 (= (size!40369 (_1!36593 lt!2373686)) lt!2373961)))

(declare-fun b!6402106 () Bool)

(assert (=> b!6402106 (= e!3885350 0)))

(declare-fun b!6402107 () Bool)

(assert (=> b!6402107 (= e!3885350 (+ 1 (size!40369 (t!378840 (_1!36593 lt!2373686)))))))

(assert (= (and d!2007155 c!1168135) b!6402106))

(assert (= (and d!2007155 (not c!1168135)) b!6402107))

(assert (=> b!6402107 m!7198894))

(assert (=> b!6400055 d!2007155))

(declare-fun d!2007157 () Bool)

(declare-fun lt!2373962 () Int)

(assert (=> d!2007157 (>= lt!2373962 0)))

(declare-fun e!3885351 () Int)

(assert (=> d!2007157 (= lt!2373962 e!3885351)))

(declare-fun c!1168136 () Bool)

(assert (=> d!2007157 (= c!1168136 ((_ is Nil!65108) (_2!36593 lt!2373686)))))

(assert (=> d!2007157 (= (size!40369 (_2!36593 lt!2373686)) lt!2373962)))

(declare-fun b!6402108 () Bool)

(assert (=> b!6402108 (= e!3885351 0)))

(declare-fun b!6402109 () Bool)

(assert (=> b!6402109 (= e!3885351 (+ 1 (size!40369 (t!378840 (_2!36593 lt!2373686)))))))

(assert (= (and d!2007157 c!1168136) b!6402108))

(assert (= (and d!2007157 (not c!1168136)) b!6402109))

(declare-fun m!7199390 () Bool)

(assert (=> b!6402109 m!7199390))

(assert (=> b!6400055 d!2007157))

(declare-fun d!2007159 () Bool)

(assert (=> d!2007159 (= (nullable!6304 (regTwo!33134 r!7292)) (nullableFct!2250 (regTwo!33134 r!7292)))))

(declare-fun bs!1605256 () Bool)

(assert (= bs!1605256 d!2007159))

(declare-fun m!7199392 () Bool)

(assert (=> bs!1605256 m!7199392))

(assert (=> b!6400773 d!2007159))

(declare-fun bs!1605257 () Bool)

(declare-fun d!2007161 () Bool)

(assert (= bs!1605257 (and d!2007161 b!6400830)))

(declare-fun lambda!353484 () Int)

(assert (=> bs!1605257 (not (= lambda!353484 lambda!353411))))

(declare-fun bs!1605258 () Bool)

(assert (= bs!1605258 (and d!2007161 d!2007033)))

(assert (=> bs!1605258 (= lambda!353484 lambda!353454)))

(declare-fun bs!1605259 () Bool)

(assert (= bs!1605259 (and d!2007161 b!6400832)))

(assert (=> bs!1605259 (not (= lambda!353484 lambda!353412))))

(declare-fun bs!1605260 () Bool)

(assert (= bs!1605260 (and d!2007161 d!2006733)))

(assert (=> bs!1605260 (= lambda!353484 lambda!353428)))

(declare-fun bs!1605261 () Bool)

(assert (= bs!1605261 (and d!2007161 b!6400835)))

(assert (=> bs!1605261 (not (= lambda!353484 lambda!353414))))

(declare-fun bs!1605262 () Bool)

(assert (= bs!1605262 (and d!2007161 b!6402034)))

(assert (=> bs!1605262 (not (= lambda!353484 lambda!353471))))

(declare-fun bs!1605263 () Bool)

(assert (= bs!1605263 (and d!2007161 b!6402032)))

(assert (=> bs!1605263 (not (= lambda!353484 lambda!353470))))

(declare-fun bs!1605264 () Bool)

(assert (= bs!1605264 (and d!2007161 b!6400837)))

(assert (=> bs!1605264 (not (= lambda!353484 lambda!353415))))

(declare-fun bs!1605265 () Bool)

(assert (= bs!1605265 (and d!2007161 d!2007121)))

(assert (=> bs!1605265 (not (= lambda!353484 lambda!353474))))

(assert (=> d!2007161 (= (nullableZipper!2076 lt!2373668) (exists!2591 lt!2373668 lambda!353484))))

(declare-fun bs!1605267 () Bool)

(assert (= bs!1605267 d!2007161))

(declare-fun m!7199394 () Bool)

(assert (=> bs!1605267 m!7199394))

(assert (=> b!6400841 d!2007161))

(declare-fun d!2007163 () Bool)

(assert (=> d!2007163 (= (Exists!3381 (ite c!1167715 lambda!353401 lambda!353402)) (choose!47587 (ite c!1167715 lambda!353401 lambda!353402)))))

(declare-fun bs!1605271 () Bool)

(assert (= bs!1605271 d!2007163))

(declare-fun m!7199396 () Bool)

(assert (=> bs!1605271 m!7199396))

(assert (=> bm!548520 d!2007163))

(declare-fun b!6402115 () Bool)

(declare-fun res!2632350 () Bool)

(declare-fun e!3885358 () Bool)

(assert (=> b!6402115 (=> (not res!2632350) (not e!3885358))))

(declare-fun call!548836 () Bool)

(assert (=> b!6402115 (= res!2632350 call!548836)))

(declare-fun e!3885354 () Bool)

(assert (=> b!6402115 (= e!3885354 e!3885358)))

(declare-fun bm!548829 () Bool)

(declare-fun c!1168138 () Bool)

(declare-fun call!548835 () Bool)

(declare-fun c!1168139 () Bool)

(assert (=> bm!548829 (= call!548835 (validRegex!8047 (ite c!1168138 (reg!16640 lt!2373857) (ite c!1168139 (regTwo!33135 lt!2373857) (regTwo!33134 lt!2373857)))))))

(declare-fun b!6402116 () Bool)

(declare-fun e!3885355 () Bool)

(declare-fun e!3885356 () Bool)

(assert (=> b!6402116 (= e!3885355 e!3885356)))

(declare-fun res!2632352 () Bool)

(assert (=> b!6402116 (= res!2632352 (not (nullable!6304 (reg!16640 lt!2373857))))))

(assert (=> b!6402116 (=> (not res!2632352) (not e!3885356))))

(declare-fun b!6402117 () Bool)

(declare-fun e!3885360 () Bool)

(assert (=> b!6402117 (= e!3885360 e!3885355)))

(assert (=> b!6402117 (= c!1168138 ((_ is Star!16311) lt!2373857))))

(declare-fun b!6402118 () Bool)

(declare-fun res!2632349 () Bool)

(declare-fun e!3885359 () Bool)

(assert (=> b!6402118 (=> res!2632349 e!3885359)))

(assert (=> b!6402118 (= res!2632349 (not ((_ is Concat!25156) lt!2373857)))))

(assert (=> b!6402118 (= e!3885354 e!3885359)))

(declare-fun b!6402119 () Bool)

(assert (=> b!6402119 (= e!3885356 call!548835)))

(declare-fun b!6402120 () Bool)

(assert (=> b!6402120 (= e!3885355 e!3885354)))

(assert (=> b!6402120 (= c!1168139 ((_ is Union!16311) lt!2373857))))

(declare-fun b!6402121 () Bool)

(declare-fun call!548834 () Bool)

(assert (=> b!6402121 (= e!3885358 call!548834)))

(declare-fun b!6402122 () Bool)

(declare-fun e!3885357 () Bool)

(assert (=> b!6402122 (= e!3885357 call!548834)))

(declare-fun bm!548831 () Bool)

(assert (=> bm!548831 (= call!548834 call!548835)))

(declare-fun b!6402123 () Bool)

(assert (=> b!6402123 (= e!3885359 e!3885357)))

(declare-fun res!2632353 () Bool)

(assert (=> b!6402123 (=> (not res!2632353) (not e!3885357))))

(assert (=> b!6402123 (= res!2632353 call!548836)))

(declare-fun bm!548830 () Bool)

(assert (=> bm!548830 (= call!548836 (validRegex!8047 (ite c!1168139 (regOne!33135 lt!2373857) (regOne!33134 lt!2373857))))))

(declare-fun d!2007165 () Bool)

(declare-fun res!2632351 () Bool)

(assert (=> d!2007165 (=> res!2632351 e!3885360)))

(assert (=> d!2007165 (= res!2632351 ((_ is ElementMatch!16311) lt!2373857))))

(assert (=> d!2007165 (= (validRegex!8047 lt!2373857) e!3885360)))

(assert (= (and d!2007165 (not res!2632351)) b!6402117))

(assert (= (and b!6402117 c!1168138) b!6402116))

(assert (= (and b!6402117 (not c!1168138)) b!6402120))

(assert (= (and b!6402116 res!2632352) b!6402119))

(assert (= (and b!6402120 c!1168139) b!6402115))

(assert (= (and b!6402120 (not c!1168139)) b!6402118))

(assert (= (and b!6402115 res!2632350) b!6402121))

(assert (= (and b!6402118 (not res!2632349)) b!6402123))

(assert (= (and b!6402123 res!2632353) b!6402122))

(assert (= (or b!6402121 b!6402122) bm!548831))

(assert (= (or b!6402115 b!6402123) bm!548830))

(assert (= (or b!6402119 bm!548831) bm!548829))

(declare-fun m!7199398 () Bool)

(assert (=> bm!548829 m!7199398))

(declare-fun m!7199400 () Bool)

(assert (=> b!6402116 m!7199400))

(declare-fun m!7199402 () Bool)

(assert (=> bm!548830 m!7199402))

(assert (=> d!2006589 d!2007165))

(assert (=> d!2006589 d!2006421))

(assert (=> d!2006589 d!2006429))

(declare-fun d!2007167 () Bool)

(assert (=> d!2007167 (= (nullable!6304 (regOne!33134 (reg!16640 (regOne!33134 r!7292)))) (nullableFct!2250 (regOne!33134 (reg!16640 (regOne!33134 r!7292)))))))

(declare-fun bs!1605281 () Bool)

(assert (= bs!1605281 d!2007167))

(declare-fun m!7199404 () Bool)

(assert (=> bs!1605281 m!7199404))

(assert (=> b!6400814 d!2007167))

(declare-fun b!6402124 () Bool)

(declare-fun res!2632355 () Bool)

(declare-fun e!3885365 () Bool)

(assert (=> b!6402124 (=> (not res!2632355) (not e!3885365))))

(declare-fun call!548839 () Bool)

(assert (=> b!6402124 (= res!2632355 call!548839)))

(declare-fun e!3885361 () Bool)

(assert (=> b!6402124 (= e!3885361 e!3885365)))

(declare-fun call!548838 () Bool)

(declare-fun bm!548832 () Bool)

(declare-fun c!1168140 () Bool)

(declare-fun c!1168141 () Bool)

(assert (=> bm!548832 (= call!548838 (validRegex!8047 (ite c!1168140 (reg!16640 lt!2373764) (ite c!1168141 (regTwo!33135 lt!2373764) (regTwo!33134 lt!2373764)))))))

(declare-fun b!6402125 () Bool)

(declare-fun e!3885362 () Bool)

(declare-fun e!3885363 () Bool)

(assert (=> b!6402125 (= e!3885362 e!3885363)))

(declare-fun res!2632357 () Bool)

(assert (=> b!6402125 (= res!2632357 (not (nullable!6304 (reg!16640 lt!2373764))))))

(assert (=> b!6402125 (=> (not res!2632357) (not e!3885363))))

(declare-fun b!6402126 () Bool)

(declare-fun e!3885367 () Bool)

(assert (=> b!6402126 (= e!3885367 e!3885362)))

(assert (=> b!6402126 (= c!1168140 ((_ is Star!16311) lt!2373764))))

(declare-fun b!6402127 () Bool)

(declare-fun res!2632354 () Bool)

(declare-fun e!3885366 () Bool)

(assert (=> b!6402127 (=> res!2632354 e!3885366)))

(assert (=> b!6402127 (= res!2632354 (not ((_ is Concat!25156) lt!2373764)))))

(assert (=> b!6402127 (= e!3885361 e!3885366)))

(declare-fun b!6402128 () Bool)

(assert (=> b!6402128 (= e!3885363 call!548838)))

(declare-fun b!6402129 () Bool)

(assert (=> b!6402129 (= e!3885362 e!3885361)))

(assert (=> b!6402129 (= c!1168141 ((_ is Union!16311) lt!2373764))))

(declare-fun b!6402130 () Bool)

(declare-fun call!548837 () Bool)

(assert (=> b!6402130 (= e!3885365 call!548837)))

(declare-fun b!6402131 () Bool)

(declare-fun e!3885364 () Bool)

(assert (=> b!6402131 (= e!3885364 call!548837)))

(declare-fun bm!548834 () Bool)

(assert (=> bm!548834 (= call!548837 call!548838)))

(declare-fun b!6402132 () Bool)

(assert (=> b!6402132 (= e!3885366 e!3885364)))

(declare-fun res!2632358 () Bool)

(assert (=> b!6402132 (=> (not res!2632358) (not e!3885364))))

(assert (=> b!6402132 (= res!2632358 call!548839)))

(declare-fun bm!548833 () Bool)

(assert (=> bm!548833 (= call!548839 (validRegex!8047 (ite c!1168141 (regOne!33135 lt!2373764) (regOne!33134 lt!2373764))))))

(declare-fun d!2007169 () Bool)

(declare-fun res!2632356 () Bool)

(assert (=> d!2007169 (=> res!2632356 e!3885367)))

(assert (=> d!2007169 (= res!2632356 ((_ is ElementMatch!16311) lt!2373764))))

(assert (=> d!2007169 (= (validRegex!8047 lt!2373764) e!3885367)))

(assert (= (and d!2007169 (not res!2632356)) b!6402126))

(assert (= (and b!6402126 c!1168140) b!6402125))

(assert (= (and b!6402126 (not c!1168140)) b!6402129))

(assert (= (and b!6402125 res!2632357) b!6402128))

(assert (= (and b!6402129 c!1168141) b!6402124))

(assert (= (and b!6402129 (not c!1168141)) b!6402127))

(assert (= (and b!6402124 res!2632355) b!6402130))

(assert (= (and b!6402127 (not res!2632354)) b!6402132))

(assert (= (and b!6402132 res!2632358) b!6402131))

(assert (= (or b!6402130 b!6402131) bm!548834))

(assert (= (or b!6402124 b!6402132) bm!548833))

(assert (= (or b!6402128 bm!548834) bm!548832))

(declare-fun m!7199406 () Bool)

(assert (=> bm!548832 m!7199406))

(declare-fun m!7199408 () Bool)

(assert (=> b!6402125 m!7199408))

(declare-fun m!7199410 () Bool)

(assert (=> bm!548833 m!7199410))

(assert (=> d!2006385 d!2007169))

(declare-fun bs!1605294 () Bool)

(declare-fun d!2007171 () Bool)

(assert (= bs!1605294 (and d!2007171 d!2007041)))

(declare-fun lambda!353487 () Int)

(assert (=> bs!1605294 (= lambda!353487 lambda!353455)))

(declare-fun bs!1605295 () Bool)

(assert (= bs!1605295 (and d!2007171 d!2007097)))

(assert (=> bs!1605295 (= lambda!353487 lambda!353459)))

(declare-fun bs!1605296 () Bool)

(assert (= bs!1605296 (and d!2007171 d!2007151)))

(assert (=> bs!1605296 (= lambda!353487 lambda!353479)))

(declare-fun bs!1605297 () Bool)

(assert (= bs!1605297 (and d!2007171 d!2006553)))

(assert (=> bs!1605297 (= lambda!353487 lambda!353400)))

(declare-fun bs!1605298 () Bool)

(assert (= bs!1605298 (and d!2007171 d!2006563)))

(assert (=> bs!1605298 (= lambda!353487 lambda!353403)))

(declare-fun bs!1605299 () Bool)

(assert (= bs!1605299 (and d!2007171 d!2006429)))

(assert (=> bs!1605299 (= lambda!353487 lambda!353368)))

(declare-fun bs!1605300 () Bool)

(assert (= bs!1605300 (and d!2007171 d!2007079)))

(assert (=> bs!1605300 (= lambda!353487 lambda!353456)))

(declare-fun bs!1605301 () Bool)

(assert (= bs!1605301 (and d!2007171 b!6402029)))

(assert (=> bs!1605301 (not (= lambda!353487 lambda!353467))))

(declare-fun bs!1605302 () Bool)

(assert (= bs!1605302 (and d!2007171 d!2007083)))

(assert (=> bs!1605302 (= lambda!353487 lambda!353458)))

(declare-fun bs!1605303 () Bool)

(assert (= bs!1605303 (and d!2007171 b!6402027)))

(assert (=> bs!1605303 (not (= lambda!353487 lambda!353466))))

(declare-fun bs!1605304 () Bool)

(assert (= bs!1605304 (and d!2007171 d!2006417)))

(assert (=> bs!1605304 (= lambda!353487 lambda!353359)))

(declare-fun bs!1605305 () Bool)

(assert (= bs!1605305 (and d!2007171 d!2006681)))

(assert (=> bs!1605305 (= lambda!353487 lambda!353422)))

(declare-fun bs!1605306 () Bool)

(assert (= bs!1605306 (and d!2007171 d!2006531)))

(assert (=> bs!1605306 (= lambda!353487 lambda!353399)))

(declare-fun bs!1605307 () Bool)

(assert (= bs!1605307 (and d!2007171 d!2006421)))

(assert (=> bs!1605307 (= lambda!353487 lambda!353365)))

(declare-fun bs!1605308 () Bool)

(assert (= bs!1605308 (and d!2007171 d!2007149)))

(assert (=> bs!1605308 (= lambda!353487 lambda!353478)))

(declare-fun bs!1605309 () Bool)

(assert (= bs!1605309 (and d!2007171 d!2006667)))

(assert (=> bs!1605309 (= lambda!353487 lambda!353420)))

(declare-fun bs!1605310 () Bool)

(assert (= bs!1605310 (and d!2007171 d!2006813)))

(assert (=> bs!1605310 (= lambda!353487 lambda!353430)))

(declare-fun bs!1605311 () Bool)

(assert (= bs!1605311 (and d!2007171 d!2006821)))

(assert (=> bs!1605311 (= lambda!353487 lambda!353431)))

(declare-fun b!6402133 () Bool)

(declare-fun e!3885370 () Regex!16311)

(assert (=> b!6402133 (= e!3885370 (Union!16311 (h!71557 (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110))) (generalisedUnion!2155 (t!378841 (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110))))))))

(declare-fun b!6402134 () Bool)

(declare-fun e!3885369 () Bool)

(assert (=> b!6402134 (= e!3885369 (isEmpty!37252 (t!378841 (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110)))))))

(declare-fun b!6402135 () Bool)

(declare-fun e!3885368 () Bool)

(declare-fun lt!2373967 () Regex!16311)

(assert (=> b!6402135 (= e!3885368 (= lt!2373967 (head!13112 (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110)))))))

(declare-fun b!6402136 () Bool)

(assert (=> b!6402136 (= e!3885368 (isUnion!1148 lt!2373967))))

(declare-fun b!6402137 () Bool)

(declare-fun e!3885372 () Bool)

(assert (=> b!6402137 (= e!3885372 e!3885368)))

(declare-fun c!1168143 () Bool)

(assert (=> b!6402137 (= c!1168143 (isEmpty!37252 (tail!12197 (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110)))))))

(declare-fun b!6402138 () Bool)

(assert (=> b!6402138 (= e!3885372 (isEmptyLang!1718 lt!2373967))))

(declare-fun b!6402139 () Bool)

(declare-fun e!3885373 () Bool)

(assert (=> b!6402139 (= e!3885373 e!3885372)))

(declare-fun c!1168145 () Bool)

(assert (=> b!6402139 (= c!1168145 (isEmpty!37252 (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110))))))

(declare-fun b!6402140 () Bool)

(assert (=> b!6402140 (= e!3885370 EmptyLang!16311)))

(declare-fun b!6402141 () Bool)

(declare-fun e!3885371 () Regex!16311)

(assert (=> b!6402141 (= e!3885371 (h!71557 (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110))))))

(assert (=> d!2007171 e!3885373))

(declare-fun res!2632360 () Bool)

(assert (=> d!2007171 (=> (not res!2632360) (not e!3885373))))

(assert (=> d!2007171 (= res!2632360 (validRegex!8047 lt!2373967))))

(assert (=> d!2007171 (= lt!2373967 e!3885371)))

(declare-fun c!1168144 () Bool)

(assert (=> d!2007171 (= c!1168144 e!3885369)))

(declare-fun res!2632359 () Bool)

(assert (=> d!2007171 (=> (not res!2632359) (not e!3885369))))

(assert (=> d!2007171 (= res!2632359 ((_ is Cons!65109) (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110))))))

(assert (=> d!2007171 (forall!15496 (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110)) lambda!353487)))

(assert (=> d!2007171 (= (generalisedUnion!2155 (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110))) lt!2373967)))

(declare-fun b!6402142 () Bool)

(assert (=> b!6402142 (= e!3885371 e!3885370)))

(declare-fun c!1168142 () Bool)

(assert (=> b!6402142 (= c!1168142 ((_ is Cons!65109) (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110))))))

(assert (= (and d!2007171 res!2632359) b!6402134))

(assert (= (and d!2007171 c!1168144) b!6402141))

(assert (= (and d!2007171 (not c!1168144)) b!6402142))

(assert (= (and b!6402142 c!1168142) b!6402133))

(assert (= (and b!6402142 (not c!1168142)) b!6402140))

(assert (= (and d!2007171 res!2632360) b!6402139))

(assert (= (and b!6402139 c!1168145) b!6402138))

(assert (= (and b!6402139 (not c!1168145)) b!6402137))

(assert (= (and b!6402137 c!1168143) b!6402135))

(assert (= (and b!6402137 (not c!1168143)) b!6402136))

(declare-fun m!7199424 () Bool)

(assert (=> d!2007171 m!7199424))

(assert (=> d!2007171 m!7197494))

(declare-fun m!7199426 () Bool)

(assert (=> d!2007171 m!7199426))

(assert (=> b!6402137 m!7197494))

(declare-fun m!7199428 () Bool)

(assert (=> b!6402137 m!7199428))

(assert (=> b!6402137 m!7199428))

(declare-fun m!7199430 () Bool)

(assert (=> b!6402137 m!7199430))

(declare-fun m!7199432 () Bool)

(assert (=> b!6402133 m!7199432))

(assert (=> b!6402139 m!7197494))

(declare-fun m!7199434 () Bool)

(assert (=> b!6402139 m!7199434))

(declare-fun m!7199436 () Bool)

(assert (=> b!6402134 m!7199436))

(declare-fun m!7199438 () Bool)

(assert (=> b!6402136 m!7199438))

(declare-fun m!7199440 () Bool)

(assert (=> b!6402138 m!7199440))

(assert (=> b!6402135 m!7197494))

(declare-fun m!7199442 () Bool)

(assert (=> b!6402135 m!7199442))

(assert (=> d!2006385 d!2007171))

(declare-fun bs!1605312 () Bool)

(declare-fun d!2007175 () Bool)

(assert (= bs!1605312 (and d!2007175 d!2007041)))

(declare-fun lambda!353488 () Int)

(assert (=> bs!1605312 (= lambda!353488 lambda!353455)))

(declare-fun bs!1605313 () Bool)

(assert (= bs!1605313 (and d!2007175 d!2007097)))

(assert (=> bs!1605313 (= lambda!353488 lambda!353459)))

(declare-fun bs!1605314 () Bool)

(assert (= bs!1605314 (and d!2007175 d!2007151)))

(assert (=> bs!1605314 (= lambda!353488 lambda!353479)))

(declare-fun bs!1605315 () Bool)

(assert (= bs!1605315 (and d!2007175 d!2006553)))

(assert (=> bs!1605315 (= lambda!353488 lambda!353400)))

(declare-fun bs!1605316 () Bool)

(assert (= bs!1605316 (and d!2007175 d!2006563)))

(assert (=> bs!1605316 (= lambda!353488 lambda!353403)))

(declare-fun bs!1605317 () Bool)

(assert (= bs!1605317 (and d!2007175 d!2006429)))

(assert (=> bs!1605317 (= lambda!353488 lambda!353368)))

(declare-fun bs!1605318 () Bool)

(assert (= bs!1605318 (and d!2007175 d!2007079)))

(assert (=> bs!1605318 (= lambda!353488 lambda!353456)))

(declare-fun bs!1605319 () Bool)

(assert (= bs!1605319 (and d!2007175 d!2007171)))

(assert (=> bs!1605319 (= lambda!353488 lambda!353487)))

(declare-fun bs!1605320 () Bool)

(assert (= bs!1605320 (and d!2007175 b!6402029)))

(assert (=> bs!1605320 (not (= lambda!353488 lambda!353467))))

(declare-fun bs!1605321 () Bool)

(assert (= bs!1605321 (and d!2007175 d!2007083)))

(assert (=> bs!1605321 (= lambda!353488 lambda!353458)))

(declare-fun bs!1605322 () Bool)

(assert (= bs!1605322 (and d!2007175 b!6402027)))

(assert (=> bs!1605322 (not (= lambda!353488 lambda!353466))))

(declare-fun bs!1605323 () Bool)

(assert (= bs!1605323 (and d!2007175 d!2006417)))

(assert (=> bs!1605323 (= lambda!353488 lambda!353359)))

(declare-fun bs!1605324 () Bool)

(assert (= bs!1605324 (and d!2007175 d!2006681)))

(assert (=> bs!1605324 (= lambda!353488 lambda!353422)))

(declare-fun bs!1605325 () Bool)

(assert (= bs!1605325 (and d!2007175 d!2006531)))

(assert (=> bs!1605325 (= lambda!353488 lambda!353399)))

(declare-fun bs!1605326 () Bool)

(assert (= bs!1605326 (and d!2007175 d!2006421)))

(assert (=> bs!1605326 (= lambda!353488 lambda!353365)))

(declare-fun bs!1605327 () Bool)

(assert (= bs!1605327 (and d!2007175 d!2007149)))

(assert (=> bs!1605327 (= lambda!353488 lambda!353478)))

(declare-fun bs!1605328 () Bool)

(assert (= bs!1605328 (and d!2007175 d!2006667)))

(assert (=> bs!1605328 (= lambda!353488 lambda!353420)))

(declare-fun bs!1605329 () Bool)

(assert (= bs!1605329 (and d!2007175 d!2006813)))

(assert (=> bs!1605329 (= lambda!353488 lambda!353430)))

(declare-fun bs!1605330 () Bool)

(assert (= bs!1605330 (and d!2007175 d!2006821)))

(assert (=> bs!1605330 (= lambda!353488 lambda!353431)))

(declare-fun lt!2373968 () List!65233)

(assert (=> d!2007175 (forall!15496 lt!2373968 lambda!353488)))

(declare-fun e!3885374 () List!65233)

(assert (=> d!2007175 (= lt!2373968 e!3885374)))

(declare-fun c!1168146 () Bool)

(assert (=> d!2007175 (= c!1168146 ((_ is Cons!65110) (Cons!65110 lt!2373684 Nil!65110)))))

(assert (=> d!2007175 (= (unfocusZipperList!1732 (Cons!65110 lt!2373684 Nil!65110)) lt!2373968)))

(declare-fun b!6402143 () Bool)

(assert (=> b!6402143 (= e!3885374 (Cons!65109 (generalisedConcat!1908 (exprs!6195 (h!71558 (Cons!65110 lt!2373684 Nil!65110)))) (unfocusZipperList!1732 (t!378842 (Cons!65110 lt!2373684 Nil!65110)))))))

(declare-fun b!6402144 () Bool)

(assert (=> b!6402144 (= e!3885374 Nil!65109)))

(assert (= (and d!2007175 c!1168146) b!6402143))

(assert (= (and d!2007175 (not c!1168146)) b!6402144))

(declare-fun m!7199444 () Bool)

(assert (=> d!2007175 m!7199444))

(declare-fun m!7199446 () Bool)

(assert (=> b!6402143 m!7199446))

(declare-fun m!7199448 () Bool)

(assert (=> b!6402143 m!7199448))

(assert (=> d!2006385 d!2007175))

(declare-fun d!2007177 () Bool)

(assert (=> d!2007177 (= (Exists!3381 lambda!353347) (choose!47587 lambda!353347))))

(declare-fun bs!1605333 () Bool)

(assert (= bs!1605333 d!2007177))

(declare-fun m!7199450 () Bool)

(assert (=> bs!1605333 m!7199450))

(assert (=> d!2006367 d!2007177))

(declare-fun b!6402148 () Bool)

(declare-fun res!2632362 () Bool)

(declare-fun e!3885379 () Bool)

(assert (=> b!6402148 (=> (not res!2632362) (not e!3885379))))

(declare-fun call!548842 () Bool)

(assert (=> b!6402148 (= res!2632362 call!548842)))

(declare-fun e!3885375 () Bool)

(assert (=> b!6402148 (= e!3885375 e!3885379)))

(declare-fun c!1168150 () Bool)

(declare-fun bm!548835 () Bool)

(declare-fun c!1168149 () Bool)

(declare-fun call!548841 () Bool)

(assert (=> bm!548835 (= call!548841 (validRegex!8047 (ite c!1168149 (reg!16640 lt!2373664) (ite c!1168150 (regTwo!33135 lt!2373664) (regTwo!33134 lt!2373664)))))))

(declare-fun b!6402149 () Bool)

(declare-fun e!3885376 () Bool)

(declare-fun e!3885377 () Bool)

(assert (=> b!6402149 (= e!3885376 e!3885377)))

(declare-fun res!2632364 () Bool)

(assert (=> b!6402149 (= res!2632364 (not (nullable!6304 (reg!16640 lt!2373664))))))

(assert (=> b!6402149 (=> (not res!2632364) (not e!3885377))))

(declare-fun b!6402150 () Bool)

(declare-fun e!3885381 () Bool)

(assert (=> b!6402150 (= e!3885381 e!3885376)))

(assert (=> b!6402150 (= c!1168149 ((_ is Star!16311) lt!2373664))))

(declare-fun b!6402151 () Bool)

(declare-fun res!2632361 () Bool)

(declare-fun e!3885380 () Bool)

(assert (=> b!6402151 (=> res!2632361 e!3885380)))

(assert (=> b!6402151 (= res!2632361 (not ((_ is Concat!25156) lt!2373664)))))

(assert (=> b!6402151 (= e!3885375 e!3885380)))

(declare-fun b!6402152 () Bool)

(assert (=> b!6402152 (= e!3885377 call!548841)))

(declare-fun b!6402153 () Bool)

(assert (=> b!6402153 (= e!3885376 e!3885375)))

(assert (=> b!6402153 (= c!1168150 ((_ is Union!16311) lt!2373664))))

(declare-fun b!6402154 () Bool)

(declare-fun call!548840 () Bool)

(assert (=> b!6402154 (= e!3885379 call!548840)))

(declare-fun b!6402155 () Bool)

(declare-fun e!3885378 () Bool)

(assert (=> b!6402155 (= e!3885378 call!548840)))

(declare-fun bm!548837 () Bool)

(assert (=> bm!548837 (= call!548840 call!548841)))

(declare-fun b!6402156 () Bool)

(assert (=> b!6402156 (= e!3885380 e!3885378)))

(declare-fun res!2632365 () Bool)

(assert (=> b!6402156 (=> (not res!2632365) (not e!3885378))))

(assert (=> b!6402156 (= res!2632365 call!548842)))

(declare-fun bm!548836 () Bool)

(assert (=> bm!548836 (= call!548842 (validRegex!8047 (ite c!1168150 (regOne!33135 lt!2373664) (regOne!33134 lt!2373664))))))

(declare-fun d!2007179 () Bool)

(declare-fun res!2632363 () Bool)

(assert (=> d!2007179 (=> res!2632363 e!3885381)))

(assert (=> d!2007179 (= res!2632363 ((_ is ElementMatch!16311) lt!2373664))))

(assert (=> d!2007179 (= (validRegex!8047 lt!2373664) e!3885381)))

(assert (= (and d!2007179 (not res!2632363)) b!6402150))

(assert (= (and b!6402150 c!1168149) b!6402149))

(assert (= (and b!6402150 (not c!1168149)) b!6402153))

(assert (= (and b!6402149 res!2632364) b!6402152))

(assert (= (and b!6402153 c!1168150) b!6402148))

(assert (= (and b!6402153 (not c!1168150)) b!6402151))

(assert (= (and b!6402148 res!2632362) b!6402154))

(assert (= (and b!6402151 (not res!2632361)) b!6402156))

(assert (= (and b!6402156 res!2632365) b!6402155))

(assert (= (or b!6402154 b!6402155) bm!548837))

(assert (= (or b!6402148 b!6402156) bm!548836))

(assert (= (or b!6402152 bm!548837) bm!548835))

(declare-fun m!7199452 () Bool)

(assert (=> bm!548835 m!7199452))

(declare-fun m!7199454 () Bool)

(assert (=> b!6402149 m!7199454))

(declare-fun m!7199458 () Bool)

(assert (=> bm!548836 m!7199458))

(assert (=> d!2006367 d!2007179))

(declare-fun bs!1605343 () Bool)

(declare-fun d!2007181 () Bool)

(assert (= bs!1605343 (and d!2007181 b!6399780)))

(declare-fun lambda!353494 () Int)

(assert (=> bs!1605343 (not (= lambda!353494 lambda!353312))))

(declare-fun bs!1605345 () Bool)

(assert (= bs!1605345 (and d!2007181 d!2006515)))

(assert (=> bs!1605345 (not (= lambda!353494 lambda!353395))))

(declare-fun bs!1605347 () Bool)

(assert (= bs!1605347 (and d!2007181 b!6400731)))

(assert (=> bs!1605347 (not (= lambda!353494 lambda!353401))))

(declare-fun bs!1605349 () Bool)

(assert (= bs!1605349 (and d!2007181 b!6401759)))

(assert (=> bs!1605349 (not (= lambda!353494 lambda!353451))))

(declare-fun bs!1605350 () Bool)

(assert (= bs!1605350 (and d!2007181 d!2006905)))

(assert (=> bs!1605350 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353494 lambda!353441))))

(declare-fun bs!1605352 () Bool)

(assert (= bs!1605352 (and d!2007181 d!2006367)))

(assert (=> bs!1605352 (= lambda!353494 lambda!353347)))

(declare-fun bs!1605354 () Bool)

(assert (= bs!1605354 (and d!2007181 d!2006513)))

(assert (=> bs!1605354 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353494 lambda!353393))))

(declare-fun bs!1605356 () Bool)

(assert (= bs!1605356 (and d!2007181 b!6400503)))

(assert (=> bs!1605356 (not (= lambda!353494 lambda!353384))))

(assert (=> bs!1605345 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353494 lambda!353394))))

(declare-fun bs!1605359 () Bool)

(assert (= bs!1605359 (and d!2007181 b!6399764)))

(assert (=> bs!1605359 (not (= lambda!353494 lambda!353315))))

(declare-fun bs!1605361 () Bool)

(assert (= bs!1605361 (and d!2007181 d!2006349)))

(assert (=> bs!1605361 (not (= lambda!353494 lambda!353340))))

(declare-fun bs!1605363 () Bool)

(assert (= bs!1605363 (and d!2007181 b!6400509)))

(assert (=> bs!1605363 (not (= lambda!353494 lambda!353386))))

(assert (=> bs!1605361 (= lambda!353494 lambda!353337)))

(assert (=> bs!1605343 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353494 lambda!353311))))

(declare-fun bs!1605365 () Bool)

(assert (= bs!1605365 (and d!2007181 b!6400737)))

(assert (=> bs!1605365 (not (= lambda!353494 lambda!353402))))

(declare-fun bs!1605366 () Bool)

(assert (= bs!1605366 (and d!2007181 b!6401765)))

(assert (=> bs!1605366 (not (= lambda!353494 lambda!353452))))

(assert (=> bs!1605350 (not (= lambda!353494 lambda!353442))))

(assert (=> bs!1605359 (= lambda!353494 lambda!353314)))

(assert (=> d!2007181 true))

(assert (=> d!2007181 true))

(assert (=> d!2007181 true))

(assert (=> d!2007181 (= (isDefined!12905 (findConcatSeparation!2616 lt!2373664 (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326)) (Exists!3381 lambda!353494))))

(assert (=> d!2007181 true))

(declare-fun _$89!2636 () Unit!158575)

(assert (=> d!2007181 (= (choose!47589 lt!2373664 (regTwo!33134 r!7292) s!2326) _$89!2636)))

(declare-fun bs!1605368 () Bool)

(assert (= bs!1605368 d!2007181))

(assert (=> bs!1605368 m!7197194))

(assert (=> bs!1605368 m!7197194))

(assert (=> bs!1605368 m!7197424))

(declare-fun m!7199508 () Bool)

(assert (=> bs!1605368 m!7199508))

(assert (=> d!2006367 d!2007181))

(declare-fun d!2007207 () Bool)

(assert (=> d!2007207 (= (isDefined!12905 (findConcatSeparation!2616 lt!2373664 (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326)) (not (isEmpty!37255 (findConcatSeparation!2616 lt!2373664 (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326))))))

(declare-fun bs!1605369 () Bool)

(assert (= bs!1605369 d!2007207))

(assert (=> bs!1605369 m!7197194))

(declare-fun m!7199510 () Bool)

(assert (=> bs!1605369 m!7199510))

(assert (=> d!2006367 d!2007207))

(assert (=> d!2006367 d!2006369))

(declare-fun d!2007209 () Bool)

(declare-fun res!2632380 () Bool)

(declare-fun e!3885410 () Bool)

(assert (=> d!2007209 (=> res!2632380 e!3885410)))

(assert (=> d!2007209 (= res!2632380 ((_ is Nil!65110) lt!2373760))))

(assert (=> d!2007209 (= (noDuplicate!2139 lt!2373760) e!3885410)))

(declare-fun b!6402205 () Bool)

(declare-fun e!3885411 () Bool)

(assert (=> b!6402205 (= e!3885410 e!3885411)))

(declare-fun res!2632381 () Bool)

(assert (=> b!6402205 (=> (not res!2632381) (not e!3885411))))

(assert (=> b!6402205 (= res!2632381 (not (contains!20173 (t!378842 lt!2373760) (h!71558 lt!2373760))))))

(declare-fun b!6402206 () Bool)

(assert (=> b!6402206 (= e!3885411 (noDuplicate!2139 (t!378842 lt!2373760)))))

(assert (= (and d!2007209 (not res!2632380)) b!6402205))

(assert (= (and b!6402205 res!2632381) b!6402206))

(declare-fun m!7199512 () Bool)

(assert (=> b!6402205 m!7199512))

(declare-fun m!7199514 () Bool)

(assert (=> b!6402206 m!7199514))

(assert (=> d!2006379 d!2007209))

(declare-fun d!2007211 () Bool)

(declare-fun e!3885412 () Bool)

(assert (=> d!2007211 e!3885412))

(declare-fun res!2632382 () Bool)

(assert (=> d!2007211 (=> (not res!2632382) (not e!3885412))))

(declare-fun res!2632383 () List!65234)

(assert (=> d!2007211 (= res!2632382 (noDuplicate!2139 res!2632383))))

(declare-fun e!3885414 () Bool)

(assert (=> d!2007211 e!3885414))

(assert (=> d!2007211 (= (choose!47591 z!1189) res!2632383)))

(declare-fun b!6402208 () Bool)

(declare-fun e!3885413 () Bool)

(declare-fun tp!1779336 () Bool)

(assert (=> b!6402208 (= e!3885413 tp!1779336)))

(declare-fun b!6402207 () Bool)

(declare-fun tp!1779335 () Bool)

(assert (=> b!6402207 (= e!3885414 (and (inv!84024 (h!71558 res!2632383)) e!3885413 tp!1779335))))

(declare-fun b!6402209 () Bool)

(assert (=> b!6402209 (= e!3885412 (= (content!12335 res!2632383) z!1189))))

(assert (= b!6402207 b!6402208))

(assert (= (and d!2007211 ((_ is Cons!65110) res!2632383)) b!6402207))

(assert (= (and d!2007211 res!2632382) b!6402209))

(declare-fun m!7199516 () Bool)

(assert (=> d!2007211 m!7199516))

(declare-fun m!7199518 () Bool)

(assert (=> b!6402207 m!7199518))

(declare-fun m!7199520 () Bool)

(assert (=> b!6402209 m!7199520))

(assert (=> d!2006379 d!2007211))

(declare-fun d!2007213 () Bool)

(assert (=> d!2007213 (= (isEmptyLang!1718 lt!2373783) ((_ is EmptyLang!16311) lt!2373783))))

(assert (=> b!6400280 d!2007213))

(assert (=> bm!548524 d!2007087))

(declare-fun b!6402210 () Bool)

(declare-fun e!3885416 () (InoxSet Context!11390))

(declare-fun call!548860 () (InoxSet Context!11390))

(declare-fun call!548863 () (InoxSet Context!11390))

(assert (=> b!6402210 (= e!3885416 ((_ map or) call!548860 call!548863))))

(declare-fun b!6402211 () Bool)

(declare-fun c!1168170 () Bool)

(declare-fun e!3885419 () Bool)

(assert (=> b!6402211 (= c!1168170 e!3885419)))

(declare-fun res!2632384 () Bool)

(assert (=> b!6402211 (=> (not res!2632384) (not e!3885419))))

(assert (=> b!6402211 (= res!2632384 ((_ is Concat!25156) (h!71557 (exprs!6195 lt!2373684))))))

(declare-fun e!3885418 () (InoxSet Context!11390))

(assert (=> b!6402211 (= e!3885416 e!3885418)))

(declare-fun bm!548853 () Bool)

(declare-fun call!548862 () (InoxSet Context!11390))

(assert (=> bm!548853 (= call!548862 call!548860)))

(declare-fun call!548858 () List!65233)

(declare-fun c!1168168 () Bool)

(declare-fun bm!548854 () Bool)

(assert (=> bm!548854 (= call!548863 (derivationStepZipperDown!1559 (ite c!1168168 (regTwo!33135 (h!71557 (exprs!6195 lt!2373684))) (regOne!33134 (h!71557 (exprs!6195 lt!2373684)))) (ite c!1168168 (Context!11391 (t!378841 (exprs!6195 lt!2373684))) (Context!11391 call!548858)) (h!71556 s!2326)))))

(declare-fun b!6402212 () Bool)

(declare-fun e!3885417 () (InoxSet Context!11390))

(assert (=> b!6402212 (= e!3885417 e!3885416)))

(assert (=> b!6402212 (= c!1168168 ((_ is Union!16311) (h!71557 (exprs!6195 lt!2373684))))))

(declare-fun b!6402213 () Bool)

(assert (=> b!6402213 (= e!3885418 ((_ map or) call!548863 call!548862))))

(declare-fun bm!548855 () Bool)

(declare-fun call!548859 () List!65233)

(assert (=> bm!548855 (= call!548859 call!548858)))

(declare-fun b!6402214 () Bool)

(declare-fun e!3885420 () (InoxSet Context!11390))

(assert (=> b!6402214 (= e!3885418 e!3885420)))

(declare-fun c!1168171 () Bool)

(assert (=> b!6402214 (= c!1168171 ((_ is Concat!25156) (h!71557 (exprs!6195 lt!2373684))))))

(declare-fun b!6402215 () Bool)

(declare-fun call!548861 () (InoxSet Context!11390))

(assert (=> b!6402215 (= e!3885420 call!548861)))

(declare-fun bm!548856 () Bool)

(assert (=> bm!548856 (= call!548860 (derivationStepZipperDown!1559 (ite c!1168168 (regOne!33135 (h!71557 (exprs!6195 lt!2373684))) (ite c!1168170 (regTwo!33134 (h!71557 (exprs!6195 lt!2373684))) (ite c!1168171 (regOne!33134 (h!71557 (exprs!6195 lt!2373684))) (reg!16640 (h!71557 (exprs!6195 lt!2373684)))))) (ite (or c!1168168 c!1168170) (Context!11391 (t!378841 (exprs!6195 lt!2373684))) (Context!11391 call!548859)) (h!71556 s!2326)))))

(declare-fun b!6402216 () Bool)

(declare-fun e!3885415 () (InoxSet Context!11390))

(assert (=> b!6402216 (= e!3885415 call!548861)))

(declare-fun bm!548857 () Bool)

(assert (=> bm!548857 (= call!548858 ($colon$colon!2172 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373684)))) (ite (or c!1168170 c!1168171) (regTwo!33134 (h!71557 (exprs!6195 lt!2373684))) (h!71557 (exprs!6195 lt!2373684)))))))

(declare-fun d!2007215 () Bool)

(declare-fun c!1168172 () Bool)

(assert (=> d!2007215 (= c!1168172 (and ((_ is ElementMatch!16311) (h!71557 (exprs!6195 lt!2373684))) (= (c!1167428 (h!71557 (exprs!6195 lt!2373684))) (h!71556 s!2326))))))

(assert (=> d!2007215 (= (derivationStepZipperDown!1559 (h!71557 (exprs!6195 lt!2373684)) (Context!11391 (t!378841 (exprs!6195 lt!2373684))) (h!71556 s!2326)) e!3885417)))

(declare-fun b!6402217 () Bool)

(assert (=> b!6402217 (= e!3885415 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6402218 () Bool)

(declare-fun c!1168169 () Bool)

(assert (=> b!6402218 (= c!1168169 ((_ is Star!16311) (h!71557 (exprs!6195 lt!2373684))))))

(assert (=> b!6402218 (= e!3885420 e!3885415)))

(declare-fun b!6402219 () Bool)

(assert (=> b!6402219 (= e!3885417 (store ((as const (Array Context!11390 Bool)) false) (Context!11391 (t!378841 (exprs!6195 lt!2373684))) true))))

(declare-fun b!6402220 () Bool)

(assert (=> b!6402220 (= e!3885419 (nullable!6304 (regOne!33134 (h!71557 (exprs!6195 lt!2373684)))))))

(declare-fun bm!548858 () Bool)

(assert (=> bm!548858 (= call!548861 call!548862)))

(assert (= (and d!2007215 c!1168172) b!6402219))

(assert (= (and d!2007215 (not c!1168172)) b!6402212))

(assert (= (and b!6402212 c!1168168) b!6402210))

(assert (= (and b!6402212 (not c!1168168)) b!6402211))

(assert (= (and b!6402211 res!2632384) b!6402220))

(assert (= (and b!6402211 c!1168170) b!6402213))

(assert (= (and b!6402211 (not c!1168170)) b!6402214))

(assert (= (and b!6402214 c!1168171) b!6402215))

(assert (= (and b!6402214 (not c!1168171)) b!6402218))

(assert (= (and b!6402218 c!1168169) b!6402216))

(assert (= (and b!6402218 (not c!1168169)) b!6402217))

(assert (= (or b!6402215 b!6402216) bm!548855))

(assert (= (or b!6402215 b!6402216) bm!548858))

(assert (= (or b!6402213 bm!548855) bm!548857))

(assert (= (or b!6402213 bm!548858) bm!548853))

(assert (= (or b!6402210 b!6402213) bm!548854))

(assert (= (or b!6402210 bm!548853) bm!548856))

(declare-fun m!7199522 () Bool)

(assert (=> bm!548854 m!7199522))

(declare-fun m!7199524 () Bool)

(assert (=> bm!548856 m!7199524))

(declare-fun m!7199526 () Bool)

(assert (=> b!6402219 m!7199526))

(declare-fun m!7199528 () Bool)

(assert (=> b!6402220 m!7199528))

(declare-fun m!7199530 () Bool)

(assert (=> bm!548857 m!7199530))

(assert (=> bm!548428 d!2007215))

(declare-fun d!2007217 () Bool)

(assert (=> d!2007217 true))

(assert (=> d!2007217 true))

(declare-fun res!2632385 () Bool)

(assert (=> d!2007217 (= (choose!47587 lambda!353311) res!2632385)))

(assert (=> d!2006511 d!2007217))

(declare-fun bs!1605383 () Bool)

(declare-fun b!6402223 () Bool)

(assert (= bs!1605383 (and b!6402223 b!6399780)))

(declare-fun lambda!353497 () Int)

(assert (=> bs!1605383 (not (= lambda!353497 lambda!353312))))

(declare-fun bs!1605384 () Bool)

(assert (= bs!1605384 (and b!6402223 d!2006515)))

(assert (=> bs!1605384 (not (= lambda!353497 lambda!353395))))

(declare-fun bs!1605385 () Bool)

(assert (= bs!1605385 (and b!6402223 b!6400731)))

(assert (=> bs!1605385 (= (and (= (reg!16640 (regOne!33135 r!7292)) (reg!16640 r!7292)) (= (regOne!33135 r!7292) r!7292)) (= lambda!353497 lambda!353401))))

(declare-fun bs!1605387 () Bool)

(assert (= bs!1605387 (and b!6402223 b!6401759)))

(assert (=> bs!1605387 (= (and (= (reg!16640 (regOne!33135 r!7292)) (reg!16640 (regOne!33135 lt!2373658))) (= (regOne!33135 r!7292) (regOne!33135 lt!2373658))) (= lambda!353497 lambda!353451))))

(declare-fun bs!1605389 () Bool)

(assert (= bs!1605389 (and b!6402223 d!2006905)))

(assert (=> bs!1605389 (not (= lambda!353497 lambda!353441))))

(declare-fun bs!1605392 () Bool)

(assert (= bs!1605392 (and b!6402223 d!2006367)))

(assert (=> bs!1605392 (not (= lambda!353497 lambda!353347))))

(declare-fun bs!1605395 () Bool)

(assert (= bs!1605395 (and b!6402223 d!2006513)))

(assert (=> bs!1605395 (not (= lambda!353497 lambda!353393))))

(declare-fun bs!1605398 () Bool)

(assert (= bs!1605398 (and b!6402223 b!6400503)))

(assert (=> bs!1605398 (= (and (= (reg!16640 (regOne!33135 r!7292)) (reg!16640 lt!2373658)) (= (regOne!33135 r!7292) lt!2373658)) (= lambda!353497 lambda!353384))))

(assert (=> bs!1605384 (not (= lambda!353497 lambda!353394))))

(declare-fun bs!1605402 () Bool)

(assert (= bs!1605402 (and b!6402223 b!6399764)))

(assert (=> bs!1605402 (not (= lambda!353497 lambda!353315))))

(declare-fun bs!1605405 () Bool)

(assert (= bs!1605405 (and b!6402223 d!2007181)))

(assert (=> bs!1605405 (not (= lambda!353497 lambda!353494))))

(declare-fun bs!1605407 () Bool)

(assert (= bs!1605407 (and b!6402223 d!2006349)))

(assert (=> bs!1605407 (not (= lambda!353497 lambda!353340))))

(declare-fun bs!1605408 () Bool)

(assert (= bs!1605408 (and b!6402223 b!6400509)))

(assert (=> bs!1605408 (not (= lambda!353497 lambda!353386))))

(assert (=> bs!1605407 (not (= lambda!353497 lambda!353337))))

(assert (=> bs!1605383 (not (= lambda!353497 lambda!353311))))

(declare-fun bs!1605409 () Bool)

(assert (= bs!1605409 (and b!6402223 b!6400737)))

(assert (=> bs!1605409 (not (= lambda!353497 lambda!353402))))

(declare-fun bs!1605410 () Bool)

(assert (= bs!1605410 (and b!6402223 b!6401765)))

(assert (=> bs!1605410 (not (= lambda!353497 lambda!353452))))

(assert (=> bs!1605389 (not (= lambda!353497 lambda!353442))))

(assert (=> bs!1605402 (not (= lambda!353497 lambda!353314))))

(assert (=> b!6402223 true))

(assert (=> b!6402223 true))

(declare-fun bs!1605419 () Bool)

(declare-fun b!6402229 () Bool)

(assert (= bs!1605419 (and b!6402229 b!6399780)))

(declare-fun lambda!353500 () Int)

(assert (=> bs!1605419 (= (and (= (regOne!33134 (regOne!33135 r!7292)) (regOne!33134 r!7292)) (= (regTwo!33134 (regOne!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353500 lambda!353312))))

(declare-fun bs!1605423 () Bool)

(assert (= bs!1605423 (and b!6402229 b!6402223)))

(assert (=> bs!1605423 (not (= lambda!353500 lambda!353497))))

(declare-fun bs!1605425 () Bool)

(assert (= bs!1605425 (and b!6402229 d!2006515)))

(assert (=> bs!1605425 (= (and (= (regOne!33134 (regOne!33135 r!7292)) (regOne!33134 r!7292)) (= (regTwo!33134 (regOne!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353500 lambda!353395))))

(declare-fun bs!1605428 () Bool)

(assert (= bs!1605428 (and b!6402229 b!6400731)))

(assert (=> bs!1605428 (not (= lambda!353500 lambda!353401))))

(declare-fun bs!1605430 () Bool)

(assert (= bs!1605430 (and b!6402229 b!6401759)))

(assert (=> bs!1605430 (not (= lambda!353500 lambda!353451))))

(declare-fun bs!1605431 () Bool)

(assert (= bs!1605431 (and b!6402229 d!2006905)))

(assert (=> bs!1605431 (not (= lambda!353500 lambda!353441))))

(declare-fun bs!1605432 () Bool)

(assert (= bs!1605432 (and b!6402229 d!2006367)))

(assert (=> bs!1605432 (not (= lambda!353500 lambda!353347))))

(declare-fun bs!1605433 () Bool)

(assert (= bs!1605433 (and b!6402229 d!2006513)))

(assert (=> bs!1605433 (not (= lambda!353500 lambda!353393))))

(declare-fun bs!1605435 () Bool)

(assert (= bs!1605435 (and b!6402229 b!6400503)))

(assert (=> bs!1605435 (not (= lambda!353500 lambda!353384))))

(assert (=> bs!1605425 (not (= lambda!353500 lambda!353394))))

(declare-fun bs!1605436 () Bool)

(assert (= bs!1605436 (and b!6402229 b!6399764)))

(assert (=> bs!1605436 (= (and (= (regOne!33134 (regOne!33135 r!7292)) lt!2373664) (= (regTwo!33134 (regOne!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353500 lambda!353315))))

(declare-fun bs!1605437 () Bool)

(assert (= bs!1605437 (and b!6402229 d!2007181)))

(assert (=> bs!1605437 (not (= lambda!353500 lambda!353494))))

(declare-fun bs!1605438 () Bool)

(assert (= bs!1605438 (and b!6402229 d!2006349)))

(assert (=> bs!1605438 (= (and (= (regOne!33134 (regOne!33135 r!7292)) lt!2373664) (= (regTwo!33134 (regOne!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353500 lambda!353340))))

(declare-fun bs!1605439 () Bool)

(assert (= bs!1605439 (and b!6402229 b!6400509)))

(assert (=> bs!1605439 (= (and (= (regOne!33134 (regOne!33135 r!7292)) (regOne!33134 lt!2373658)) (= (regTwo!33134 (regOne!33135 r!7292)) (regTwo!33134 lt!2373658))) (= lambda!353500 lambda!353386))))

(assert (=> bs!1605438 (not (= lambda!353500 lambda!353337))))

(assert (=> bs!1605419 (not (= lambda!353500 lambda!353311))))

(declare-fun bs!1605440 () Bool)

(assert (= bs!1605440 (and b!6402229 b!6400737)))

(assert (=> bs!1605440 (= (and (= (regOne!33134 (regOne!33135 r!7292)) (regOne!33134 r!7292)) (= (regTwo!33134 (regOne!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353500 lambda!353402))))

(declare-fun bs!1605441 () Bool)

(assert (= bs!1605441 (and b!6402229 b!6401765)))

(assert (=> bs!1605441 (= (and (= (regOne!33134 (regOne!33135 r!7292)) (regOne!33134 (regOne!33135 lt!2373658))) (= (regTwo!33134 (regOne!33135 r!7292)) (regTwo!33134 (regOne!33135 lt!2373658)))) (= lambda!353500 lambda!353452))))

(assert (=> bs!1605431 (= (and (= (regOne!33134 (regOne!33135 r!7292)) (regOne!33134 r!7292)) (= (regTwo!33134 (regOne!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353500 lambda!353442))))

(assert (=> bs!1605436 (not (= lambda!353500 lambda!353314))))

(assert (=> b!6402229 true))

(assert (=> b!6402229 true))

(declare-fun b!6402221 () Bool)

(declare-fun e!3885423 () Bool)

(assert (=> b!6402221 (= e!3885423 (= s!2326 (Cons!65108 (c!1167428 (regOne!33135 r!7292)) Nil!65108)))))

(declare-fun b!6402222 () Bool)

(declare-fun c!1168174 () Bool)

(assert (=> b!6402222 (= c!1168174 ((_ is Union!16311) (regOne!33135 r!7292)))))

(declare-fun e!3885421 () Bool)

(assert (=> b!6402222 (= e!3885423 e!3885421)))

(declare-fun e!3885424 () Bool)

(declare-fun call!548865 () Bool)

(assert (=> b!6402223 (= e!3885424 call!548865)))

(declare-fun b!6402224 () Bool)

(declare-fun e!3885422 () Bool)

(assert (=> b!6402224 (= e!3885421 e!3885422)))

(declare-fun c!1168176 () Bool)

(assert (=> b!6402224 (= c!1168176 ((_ is Star!16311) (regOne!33135 r!7292)))))

(declare-fun b!6402225 () Bool)

(declare-fun c!1168173 () Bool)

(assert (=> b!6402225 (= c!1168173 ((_ is ElementMatch!16311) (regOne!33135 r!7292)))))

(declare-fun e!3885425 () Bool)

(assert (=> b!6402225 (= e!3885425 e!3885423)))

(declare-fun b!6402226 () Bool)

(declare-fun e!3885426 () Bool)

(assert (=> b!6402226 (= e!3885426 e!3885425)))

(declare-fun res!2632386 () Bool)

(assert (=> b!6402226 (= res!2632386 (not ((_ is EmptyLang!16311) (regOne!33135 r!7292))))))

(assert (=> b!6402226 (=> (not res!2632386) (not e!3885425))))

(declare-fun d!2007219 () Bool)

(declare-fun c!1168175 () Bool)

(assert (=> d!2007219 (= c!1168175 ((_ is EmptyExpr!16311) (regOne!33135 r!7292)))))

(assert (=> d!2007219 (= (matchRSpec!3412 (regOne!33135 r!7292) s!2326) e!3885426)))

(declare-fun b!6402227 () Bool)

(declare-fun res!2632387 () Bool)

(assert (=> b!6402227 (=> res!2632387 e!3885424)))

(declare-fun call!548864 () Bool)

(assert (=> b!6402227 (= res!2632387 call!548864)))

(assert (=> b!6402227 (= e!3885422 e!3885424)))

(declare-fun bm!548859 () Bool)

(assert (=> bm!548859 (= call!548865 (Exists!3381 (ite c!1168176 lambda!353497 lambda!353500)))))

(declare-fun bm!548860 () Bool)

(assert (=> bm!548860 (= call!548864 (isEmpty!37253 s!2326))))

(declare-fun b!6402228 () Bool)

(assert (=> b!6402228 (= e!3885426 call!548864)))

(assert (=> b!6402229 (= e!3885422 call!548865)))

(declare-fun b!6402230 () Bool)

(declare-fun e!3885427 () Bool)

(assert (=> b!6402230 (= e!3885421 e!3885427)))

(declare-fun res!2632388 () Bool)

(assert (=> b!6402230 (= res!2632388 (matchRSpec!3412 (regOne!33135 (regOne!33135 r!7292)) s!2326))))

(assert (=> b!6402230 (=> res!2632388 e!3885427)))

(declare-fun b!6402231 () Bool)

(assert (=> b!6402231 (= e!3885427 (matchRSpec!3412 (regTwo!33135 (regOne!33135 r!7292)) s!2326))))

(assert (= (and d!2007219 c!1168175) b!6402228))

(assert (= (and d!2007219 (not c!1168175)) b!6402226))

(assert (= (and b!6402226 res!2632386) b!6402225))

(assert (= (and b!6402225 c!1168173) b!6402221))

(assert (= (and b!6402225 (not c!1168173)) b!6402222))

(assert (= (and b!6402222 c!1168174) b!6402230))

(assert (= (and b!6402222 (not c!1168174)) b!6402224))

(assert (= (and b!6402230 (not res!2632388)) b!6402231))

(assert (= (and b!6402224 c!1168176) b!6402227))

(assert (= (and b!6402224 (not c!1168176)) b!6402229))

(assert (= (and b!6402227 (not res!2632387)) b!6402223))

(assert (= (or b!6402223 b!6402229) bm!548859))

(assert (= (or b!6402228 b!6402227) bm!548860))

(declare-fun m!7199572 () Bool)

(assert (=> bm!548859 m!7199572))

(assert (=> bm!548860 m!7197724))

(declare-fun m!7199574 () Bool)

(assert (=> b!6402230 m!7199574))

(declare-fun m!7199576 () Bool)

(assert (=> b!6402231 m!7199576))

(assert (=> b!6400738 d!2007219))

(assert (=> d!2006413 d!2006411))

(declare-fun d!2007231 () Bool)

(assert (=> d!2007231 (= (flatMap!1816 lt!2373670 lambda!353313) (dynLambda!25841 lambda!353313 lt!2373684))))

(assert (=> d!2007231 true))

(declare-fun _$13!3601 () Unit!158575)

(assert (=> d!2007231 (= (choose!47593 lt!2373670 lt!2373684 lambda!353313) _$13!3601)))

(declare-fun b_lambda!243279 () Bool)

(assert (=> (not b_lambda!243279) (not d!2007231)))

(declare-fun bs!1605442 () Bool)

(assert (= bs!1605442 d!2007231))

(assert (=> bs!1605442 m!7197128))

(assert (=> bs!1605442 m!7197558))

(assert (=> d!2006413 d!2007231))

(declare-fun bs!1605443 () Bool)

(declare-fun b!6402255 () Bool)

(assert (= bs!1605443 (and b!6402255 b!6399780)))

(declare-fun lambda!353501 () Int)

(assert (=> bs!1605443 (not (= lambda!353501 lambda!353312))))

(declare-fun bs!1605444 () Bool)

(assert (= bs!1605444 (and b!6402255 b!6402223)))

(assert (=> bs!1605444 (= (and (= (reg!16640 (regTwo!33135 lt!2373658)) (reg!16640 (regOne!33135 r!7292))) (= (regTwo!33135 lt!2373658) (regOne!33135 r!7292))) (= lambda!353501 lambda!353497))))

(declare-fun bs!1605445 () Bool)

(assert (= bs!1605445 (and b!6402255 d!2006515)))

(assert (=> bs!1605445 (not (= lambda!353501 lambda!353395))))

(declare-fun bs!1605446 () Bool)

(assert (= bs!1605446 (and b!6402255 b!6400731)))

(assert (=> bs!1605446 (= (and (= (reg!16640 (regTwo!33135 lt!2373658)) (reg!16640 r!7292)) (= (regTwo!33135 lt!2373658) r!7292)) (= lambda!353501 lambda!353401))))

(declare-fun bs!1605447 () Bool)

(assert (= bs!1605447 (and b!6402255 b!6401759)))

(assert (=> bs!1605447 (= (and (= (reg!16640 (regTwo!33135 lt!2373658)) (reg!16640 (regOne!33135 lt!2373658))) (= (regTwo!33135 lt!2373658) (regOne!33135 lt!2373658))) (= lambda!353501 lambda!353451))))

(declare-fun bs!1605448 () Bool)

(assert (= bs!1605448 (and b!6402255 d!2006905)))

(assert (=> bs!1605448 (not (= lambda!353501 lambda!353441))))

(declare-fun bs!1605449 () Bool)

(assert (= bs!1605449 (and b!6402255 d!2006367)))

(assert (=> bs!1605449 (not (= lambda!353501 lambda!353347))))

(declare-fun bs!1605450 () Bool)

(assert (= bs!1605450 (and b!6402255 d!2006513)))

(assert (=> bs!1605450 (not (= lambda!353501 lambda!353393))))

(declare-fun bs!1605451 () Bool)

(assert (= bs!1605451 (and b!6402255 b!6400503)))

(assert (=> bs!1605451 (= (and (= (reg!16640 (regTwo!33135 lt!2373658)) (reg!16640 lt!2373658)) (= (regTwo!33135 lt!2373658) lt!2373658)) (= lambda!353501 lambda!353384))))

(assert (=> bs!1605445 (not (= lambda!353501 lambda!353394))))

(declare-fun bs!1605452 () Bool)

(assert (= bs!1605452 (and b!6402255 b!6399764)))

(assert (=> bs!1605452 (not (= lambda!353501 lambda!353315))))

(declare-fun bs!1605453 () Bool)

(assert (= bs!1605453 (and b!6402255 d!2007181)))

(assert (=> bs!1605453 (not (= lambda!353501 lambda!353494))))

(declare-fun bs!1605454 () Bool)

(assert (= bs!1605454 (and b!6402255 b!6402229)))

(assert (=> bs!1605454 (not (= lambda!353501 lambda!353500))))

(declare-fun bs!1605455 () Bool)

(assert (= bs!1605455 (and b!6402255 d!2006349)))

(assert (=> bs!1605455 (not (= lambda!353501 lambda!353340))))

(declare-fun bs!1605456 () Bool)

(assert (= bs!1605456 (and b!6402255 b!6400509)))

(assert (=> bs!1605456 (not (= lambda!353501 lambda!353386))))

(assert (=> bs!1605455 (not (= lambda!353501 lambda!353337))))

(assert (=> bs!1605443 (not (= lambda!353501 lambda!353311))))

(declare-fun bs!1605457 () Bool)

(assert (= bs!1605457 (and b!6402255 b!6400737)))

(assert (=> bs!1605457 (not (= lambda!353501 lambda!353402))))

(declare-fun bs!1605458 () Bool)

(assert (= bs!1605458 (and b!6402255 b!6401765)))

(assert (=> bs!1605458 (not (= lambda!353501 lambda!353452))))

(assert (=> bs!1605448 (not (= lambda!353501 lambda!353442))))

(assert (=> bs!1605452 (not (= lambda!353501 lambda!353314))))

(assert (=> b!6402255 true))

(assert (=> b!6402255 true))

(declare-fun bs!1605459 () Bool)

(declare-fun b!6402261 () Bool)

(assert (= bs!1605459 (and b!6402261 b!6399780)))

(declare-fun lambda!353505 () Int)

(assert (=> bs!1605459 (= (and (= (regOne!33134 (regTwo!33135 lt!2373658)) (regOne!33134 r!7292)) (= (regTwo!33134 (regTwo!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353505 lambda!353312))))

(declare-fun bs!1605461 () Bool)

(assert (= bs!1605461 (and b!6402261 b!6402223)))

(assert (=> bs!1605461 (not (= lambda!353505 lambda!353497))))

(declare-fun bs!1605463 () Bool)

(assert (= bs!1605463 (and b!6402261 d!2006515)))

(assert (=> bs!1605463 (= (and (= (regOne!33134 (regTwo!33135 lt!2373658)) (regOne!33134 r!7292)) (= (regTwo!33134 (regTwo!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353505 lambda!353395))))

(declare-fun bs!1605465 () Bool)

(assert (= bs!1605465 (and b!6402261 b!6400731)))

(assert (=> bs!1605465 (not (= lambda!353505 lambda!353401))))

(declare-fun bs!1605467 () Bool)

(assert (= bs!1605467 (and b!6402261 b!6401759)))

(assert (=> bs!1605467 (not (= lambda!353505 lambda!353451))))

(declare-fun bs!1605469 () Bool)

(assert (= bs!1605469 (and b!6402261 b!6402255)))

(assert (=> bs!1605469 (not (= lambda!353505 lambda!353501))))

(declare-fun bs!1605471 () Bool)

(assert (= bs!1605471 (and b!6402261 d!2006905)))

(assert (=> bs!1605471 (not (= lambda!353505 lambda!353441))))

(declare-fun bs!1605473 () Bool)

(assert (= bs!1605473 (and b!6402261 d!2006367)))

(assert (=> bs!1605473 (not (= lambda!353505 lambda!353347))))

(declare-fun bs!1605475 () Bool)

(assert (= bs!1605475 (and b!6402261 d!2006513)))

(assert (=> bs!1605475 (not (= lambda!353505 lambda!353393))))

(declare-fun bs!1605477 () Bool)

(assert (= bs!1605477 (and b!6402261 b!6400503)))

(assert (=> bs!1605477 (not (= lambda!353505 lambda!353384))))

(assert (=> bs!1605463 (not (= lambda!353505 lambda!353394))))

(declare-fun bs!1605478 () Bool)

(assert (= bs!1605478 (and b!6402261 b!6399764)))

(assert (=> bs!1605478 (= (and (= (regOne!33134 (regTwo!33135 lt!2373658)) lt!2373664) (= (regTwo!33134 (regTwo!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353505 lambda!353315))))

(declare-fun bs!1605480 () Bool)

(assert (= bs!1605480 (and b!6402261 d!2007181)))

(assert (=> bs!1605480 (not (= lambda!353505 lambda!353494))))

(declare-fun bs!1605481 () Bool)

(assert (= bs!1605481 (and b!6402261 b!6402229)))

(assert (=> bs!1605481 (= (and (= (regOne!33134 (regTwo!33135 lt!2373658)) (regOne!33134 (regOne!33135 r!7292))) (= (regTwo!33134 (regTwo!33135 lt!2373658)) (regTwo!33134 (regOne!33135 r!7292)))) (= lambda!353505 lambda!353500))))

(declare-fun bs!1605482 () Bool)

(assert (= bs!1605482 (and b!6402261 d!2006349)))

(assert (=> bs!1605482 (= (and (= (regOne!33134 (regTwo!33135 lt!2373658)) lt!2373664) (= (regTwo!33134 (regTwo!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353505 lambda!353340))))

(declare-fun bs!1605484 () Bool)

(assert (= bs!1605484 (and b!6402261 b!6400509)))

(assert (=> bs!1605484 (= (and (= (regOne!33134 (regTwo!33135 lt!2373658)) (regOne!33134 lt!2373658)) (= (regTwo!33134 (regTwo!33135 lt!2373658)) (regTwo!33134 lt!2373658))) (= lambda!353505 lambda!353386))))

(assert (=> bs!1605482 (not (= lambda!353505 lambda!353337))))

(assert (=> bs!1605459 (not (= lambda!353505 lambda!353311))))

(declare-fun bs!1605486 () Bool)

(assert (= bs!1605486 (and b!6402261 b!6400737)))

(assert (=> bs!1605486 (= (and (= (regOne!33134 (regTwo!33135 lt!2373658)) (regOne!33134 r!7292)) (= (regTwo!33134 (regTwo!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353505 lambda!353402))))

(declare-fun bs!1605488 () Bool)

(assert (= bs!1605488 (and b!6402261 b!6401765)))

(assert (=> bs!1605488 (= (and (= (regOne!33134 (regTwo!33135 lt!2373658)) (regOne!33134 (regOne!33135 lt!2373658))) (= (regTwo!33134 (regTwo!33135 lt!2373658)) (regTwo!33134 (regOne!33135 lt!2373658)))) (= lambda!353505 lambda!353452))))

(assert (=> bs!1605471 (= (and (= (regOne!33134 (regTwo!33135 lt!2373658)) (regOne!33134 r!7292)) (= (regTwo!33134 (regTwo!33135 lt!2373658)) (regTwo!33134 r!7292))) (= lambda!353505 lambda!353442))))

(assert (=> bs!1605478 (not (= lambda!353505 lambda!353314))))

(assert (=> b!6402261 true))

(assert (=> b!6402261 true))

(declare-fun b!6402253 () Bool)

(declare-fun e!3885444 () Bool)

(assert (=> b!6402253 (= e!3885444 (= s!2326 (Cons!65108 (c!1167428 (regTwo!33135 lt!2373658)) Nil!65108)))))

(declare-fun b!6402254 () Bool)

(declare-fun c!1168185 () Bool)

(assert (=> b!6402254 (= c!1168185 ((_ is Union!16311) (regTwo!33135 lt!2373658)))))

(declare-fun e!3885442 () Bool)

(assert (=> b!6402254 (= e!3885444 e!3885442)))

(declare-fun e!3885445 () Bool)

(declare-fun call!548870 () Bool)

(assert (=> b!6402255 (= e!3885445 call!548870)))

(declare-fun b!6402256 () Bool)

(declare-fun e!3885443 () Bool)

(assert (=> b!6402256 (= e!3885442 e!3885443)))

(declare-fun c!1168187 () Bool)

(assert (=> b!6402256 (= c!1168187 ((_ is Star!16311) (regTwo!33135 lt!2373658)))))

(declare-fun b!6402257 () Bool)

(declare-fun c!1168184 () Bool)

(assert (=> b!6402257 (= c!1168184 ((_ is ElementMatch!16311) (regTwo!33135 lt!2373658)))))

(declare-fun e!3885446 () Bool)

(assert (=> b!6402257 (= e!3885446 e!3885444)))

(declare-fun b!6402258 () Bool)

(declare-fun e!3885447 () Bool)

(assert (=> b!6402258 (= e!3885447 e!3885446)))

(declare-fun res!2632396 () Bool)

(assert (=> b!6402258 (= res!2632396 (not ((_ is EmptyLang!16311) (regTwo!33135 lt!2373658))))))

(assert (=> b!6402258 (=> (not res!2632396) (not e!3885446))))

(declare-fun d!2007233 () Bool)

(declare-fun c!1168186 () Bool)

(assert (=> d!2007233 (= c!1168186 ((_ is EmptyExpr!16311) (regTwo!33135 lt!2373658)))))

(assert (=> d!2007233 (= (matchRSpec!3412 (regTwo!33135 lt!2373658) s!2326) e!3885447)))

(declare-fun b!6402259 () Bool)

(declare-fun res!2632397 () Bool)

(assert (=> b!6402259 (=> res!2632397 e!3885445)))

(declare-fun call!548869 () Bool)

(assert (=> b!6402259 (= res!2632397 call!548869)))

(assert (=> b!6402259 (= e!3885443 e!3885445)))

(declare-fun bm!548864 () Bool)

(assert (=> bm!548864 (= call!548870 (Exists!3381 (ite c!1168187 lambda!353501 lambda!353505)))))

(declare-fun bm!548865 () Bool)

(assert (=> bm!548865 (= call!548869 (isEmpty!37253 s!2326))))

(declare-fun b!6402260 () Bool)

(assert (=> b!6402260 (= e!3885447 call!548869)))

(assert (=> b!6402261 (= e!3885443 call!548870)))

(declare-fun b!6402262 () Bool)

(declare-fun e!3885448 () Bool)

(assert (=> b!6402262 (= e!3885442 e!3885448)))

(declare-fun res!2632398 () Bool)

(assert (=> b!6402262 (= res!2632398 (matchRSpec!3412 (regOne!33135 (regTwo!33135 lt!2373658)) s!2326))))

(assert (=> b!6402262 (=> res!2632398 e!3885448)))

(declare-fun b!6402263 () Bool)

(assert (=> b!6402263 (= e!3885448 (matchRSpec!3412 (regTwo!33135 (regTwo!33135 lt!2373658)) s!2326))))

(assert (= (and d!2007233 c!1168186) b!6402260))

(assert (= (and d!2007233 (not c!1168186)) b!6402258))

(assert (= (and b!6402258 res!2632396) b!6402257))

(assert (= (and b!6402257 c!1168184) b!6402253))

(assert (= (and b!6402257 (not c!1168184)) b!6402254))

(assert (= (and b!6402254 c!1168185) b!6402262))

(assert (= (and b!6402254 (not c!1168185)) b!6402256))

(assert (= (and b!6402262 (not res!2632398)) b!6402263))

(assert (= (and b!6402256 c!1168187) b!6402259))

(assert (= (and b!6402256 (not c!1168187)) b!6402261))

(assert (= (and b!6402259 (not res!2632397)) b!6402255))

(assert (= (or b!6402255 b!6402261) bm!548864))

(assert (= (or b!6402260 b!6402259) bm!548865))

(declare-fun m!7199582 () Bool)

(assert (=> bm!548864 m!7199582))

(assert (=> bm!548865 m!7197724))

(declare-fun m!7199586 () Bool)

(assert (=> b!6402262 m!7199586))

(declare-fun m!7199588 () Bool)

(assert (=> b!6402263 m!7199588))

(assert (=> b!6400511 d!2007233))

(declare-fun d!2007241 () Bool)

(declare-fun c!1168193 () Bool)

(assert (=> d!2007241 (= c!1168193 (isEmpty!37253 (tail!12198 (t!378840 s!2326))))))

(declare-fun e!3885457 () Bool)

(assert (=> d!2007241 (= (matchZipper!2323 (derivationStepZipper!2277 ((_ map or) lt!2373668 lt!2373666) (head!13113 (t!378840 s!2326))) (tail!12198 (t!378840 s!2326))) e!3885457)))

(declare-fun b!6402279 () Bool)

(assert (=> b!6402279 (= e!3885457 (nullableZipper!2076 (derivationStepZipper!2277 ((_ map or) lt!2373668 lt!2373666) (head!13113 (t!378840 s!2326)))))))

(declare-fun b!6402280 () Bool)

(assert (=> b!6402280 (= e!3885457 (matchZipper!2323 (derivationStepZipper!2277 (derivationStepZipper!2277 ((_ map or) lt!2373668 lt!2373666) (head!13113 (t!378840 s!2326))) (head!13113 (tail!12198 (t!378840 s!2326)))) (tail!12198 (tail!12198 (t!378840 s!2326)))))))

(assert (= (and d!2007241 c!1168193) b!6402279))

(assert (= (and d!2007241 (not c!1168193)) b!6402280))

(assert (=> d!2007241 m!7197644))

(assert (=> d!2007241 m!7198300))

(assert (=> b!6402279 m!7198086))

(declare-fun m!7199590 () Bool)

(assert (=> b!6402279 m!7199590))

(assert (=> b!6402280 m!7197644))

(assert (=> b!6402280 m!7198305))

(assert (=> b!6402280 m!7198086))

(assert (=> b!6402280 m!7198305))

(declare-fun m!7199592 () Bool)

(assert (=> b!6402280 m!7199592))

(assert (=> b!6402280 m!7197644))

(assert (=> b!6402280 m!7198310))

(assert (=> b!6402280 m!7199592))

(assert (=> b!6402280 m!7198310))

(declare-fun m!7199594 () Bool)

(assert (=> b!6402280 m!7199594))

(assert (=> b!6400844 d!2007241))

(declare-fun bs!1605493 () Bool)

(declare-fun d!2007243 () Bool)

(assert (= bs!1605493 (and d!2007243 d!2006951)))

(declare-fun lambda!353506 () Int)

(assert (=> bs!1605493 (= (= (head!13113 (t!378840 s!2326)) (head!13113 s!2326)) (= lambda!353506 lambda!353449))))

(declare-fun bs!1605494 () Bool)

(assert (= bs!1605494 (and d!2007243 d!2006719)))

(assert (=> bs!1605494 (= lambda!353506 lambda!353425)))

(declare-fun bs!1605495 () Bool)

(assert (= bs!1605495 (and d!2007243 d!2006491)))

(assert (=> bs!1605495 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353506 lambda!353390))))

(declare-fun bs!1605496 () Bool)

(assert (= bs!1605496 (and d!2007243 d!2006529)))

(assert (=> bs!1605496 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353506 lambda!353396))))

(declare-fun bs!1605497 () Bool)

(assert (= bs!1605497 (and d!2007243 b!6399793)))

(assert (=> bs!1605497 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353506 lambda!353313))))

(declare-fun bs!1605498 () Bool)

(assert (= bs!1605498 (and d!2007243 d!2006781)))

(assert (=> bs!1605498 (= lambda!353506 lambda!353429)))

(assert (=> d!2007243 true))

(assert (=> d!2007243 (= (derivationStepZipper!2277 ((_ map or) lt!2373668 lt!2373666) (head!13113 (t!378840 s!2326))) (flatMap!1816 ((_ map or) lt!2373668 lt!2373666) lambda!353506))))

(declare-fun bs!1605499 () Bool)

(assert (= bs!1605499 d!2007243))

(declare-fun m!7199606 () Bool)

(assert (=> bs!1605499 m!7199606))

(assert (=> b!6400844 d!2007243))

(assert (=> b!6400844 d!2006721))

(assert (=> b!6400844 d!2006723))

(declare-fun b!6402290 () Bool)

(declare-fun e!3885466 () (InoxSet Context!11390))

(declare-fun call!548882 () (InoxSet Context!11390))

(declare-fun call!548885 () (InoxSet Context!11390))

(assert (=> b!6402290 (= e!3885466 ((_ map or) call!548882 call!548885))))

(declare-fun b!6402291 () Bool)

(declare-fun c!1168198 () Bool)

(declare-fun e!3885469 () Bool)

(assert (=> b!6402291 (= c!1168198 e!3885469)))

(declare-fun res!2632409 () Bool)

(assert (=> b!6402291 (=> (not res!2632409) (not e!3885469))))

(assert (=> b!6402291 (= res!2632409 ((_ is Concat!25156) (h!71557 (exprs!6195 lt!2373656))))))

(declare-fun e!3885468 () (InoxSet Context!11390))

(assert (=> b!6402291 (= e!3885466 e!3885468)))

(declare-fun bm!548875 () Bool)

(declare-fun call!548884 () (InoxSet Context!11390))

(assert (=> bm!548875 (= call!548884 call!548882)))

(declare-fun bm!548876 () Bool)

(declare-fun c!1168196 () Bool)

(declare-fun call!548880 () List!65233)

(assert (=> bm!548876 (= call!548885 (derivationStepZipperDown!1559 (ite c!1168196 (regTwo!33135 (h!71557 (exprs!6195 lt!2373656))) (regOne!33134 (h!71557 (exprs!6195 lt!2373656)))) (ite c!1168196 (Context!11391 (t!378841 (exprs!6195 lt!2373656))) (Context!11391 call!548880)) (h!71556 s!2326)))))

(declare-fun b!6402292 () Bool)

(declare-fun e!3885467 () (InoxSet Context!11390))

(assert (=> b!6402292 (= e!3885467 e!3885466)))

(assert (=> b!6402292 (= c!1168196 ((_ is Union!16311) (h!71557 (exprs!6195 lt!2373656))))))

(declare-fun b!6402293 () Bool)

(assert (=> b!6402293 (= e!3885468 ((_ map or) call!548885 call!548884))))

(declare-fun bm!548877 () Bool)

(declare-fun call!548881 () List!65233)

(assert (=> bm!548877 (= call!548881 call!548880)))

(declare-fun b!6402294 () Bool)

(declare-fun e!3885470 () (InoxSet Context!11390))

(assert (=> b!6402294 (= e!3885468 e!3885470)))

(declare-fun c!1168199 () Bool)

(assert (=> b!6402294 (= c!1168199 ((_ is Concat!25156) (h!71557 (exprs!6195 lt!2373656))))))

(declare-fun b!6402295 () Bool)

(declare-fun call!548883 () (InoxSet Context!11390))

(assert (=> b!6402295 (= e!3885470 call!548883)))

(declare-fun bm!548878 () Bool)

(assert (=> bm!548878 (= call!548882 (derivationStepZipperDown!1559 (ite c!1168196 (regOne!33135 (h!71557 (exprs!6195 lt!2373656))) (ite c!1168198 (regTwo!33134 (h!71557 (exprs!6195 lt!2373656))) (ite c!1168199 (regOne!33134 (h!71557 (exprs!6195 lt!2373656))) (reg!16640 (h!71557 (exprs!6195 lt!2373656)))))) (ite (or c!1168196 c!1168198) (Context!11391 (t!378841 (exprs!6195 lt!2373656))) (Context!11391 call!548881)) (h!71556 s!2326)))))

(declare-fun b!6402296 () Bool)

(declare-fun e!3885465 () (InoxSet Context!11390))

(assert (=> b!6402296 (= e!3885465 call!548883)))

(declare-fun bm!548879 () Bool)

(assert (=> bm!548879 (= call!548880 ($colon$colon!2172 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373656)))) (ite (or c!1168198 c!1168199) (regTwo!33134 (h!71557 (exprs!6195 lt!2373656))) (h!71557 (exprs!6195 lt!2373656)))))))

(declare-fun d!2007249 () Bool)

(declare-fun c!1168200 () Bool)

(assert (=> d!2007249 (= c!1168200 (and ((_ is ElementMatch!16311) (h!71557 (exprs!6195 lt!2373656))) (= (c!1167428 (h!71557 (exprs!6195 lt!2373656))) (h!71556 s!2326))))))

(assert (=> d!2007249 (= (derivationStepZipperDown!1559 (h!71557 (exprs!6195 lt!2373656)) (Context!11391 (t!378841 (exprs!6195 lt!2373656))) (h!71556 s!2326)) e!3885467)))

(declare-fun b!6402297 () Bool)

(assert (=> b!6402297 (= e!3885465 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6402298 () Bool)

(declare-fun c!1168197 () Bool)

(assert (=> b!6402298 (= c!1168197 ((_ is Star!16311) (h!71557 (exprs!6195 lt!2373656))))))

(assert (=> b!6402298 (= e!3885470 e!3885465)))

(declare-fun b!6402299 () Bool)

(assert (=> b!6402299 (= e!3885467 (store ((as const (Array Context!11390 Bool)) false) (Context!11391 (t!378841 (exprs!6195 lt!2373656))) true))))

(declare-fun b!6402300 () Bool)

(assert (=> b!6402300 (= e!3885469 (nullable!6304 (regOne!33134 (h!71557 (exprs!6195 lt!2373656)))))))

(declare-fun bm!548880 () Bool)

(assert (=> bm!548880 (= call!548883 call!548884)))

(assert (= (and d!2007249 c!1168200) b!6402299))

(assert (= (and d!2007249 (not c!1168200)) b!6402292))

(assert (= (and b!6402292 c!1168196) b!6402290))

(assert (= (and b!6402292 (not c!1168196)) b!6402291))

(assert (= (and b!6402291 res!2632409) b!6402300))

(assert (= (and b!6402291 c!1168198) b!6402293))

(assert (= (and b!6402291 (not c!1168198)) b!6402294))

(assert (= (and b!6402294 c!1168199) b!6402295))

(assert (= (and b!6402294 (not c!1168199)) b!6402298))

(assert (= (and b!6402298 c!1168197) b!6402296))

(assert (= (and b!6402298 (not c!1168197)) b!6402297))

(assert (= (or b!6402295 b!6402296) bm!548877))

(assert (= (or b!6402295 b!6402296) bm!548880))

(assert (= (or b!6402293 bm!548877) bm!548879))

(assert (= (or b!6402293 bm!548880) bm!548875))

(assert (= (or b!6402290 b!6402293) bm!548876))

(assert (= (or b!6402290 bm!548875) bm!548878))

(declare-fun m!7199616 () Bool)

(assert (=> bm!548876 m!7199616))

(declare-fun m!7199618 () Bool)

(assert (=> bm!548878 m!7199618))

(declare-fun m!7199620 () Bool)

(assert (=> b!6402299 m!7199620))

(declare-fun m!7199622 () Bool)

(assert (=> b!6402300 m!7199622))

(declare-fun m!7199626 () Bool)

(assert (=> bm!548879 m!7199626))

(assert (=> bm!548481 d!2007249))

(declare-fun b!6402307 () Bool)

(declare-fun c!1168203 () Bool)

(assert (=> b!6402307 (= c!1168203 ((_ is Union!16311) (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun e!3885482 () Int)

(declare-fun e!3885477 () Int)

(assert (=> b!6402307 (= e!3885482 e!3885477)))

(declare-fun bm!548882 () Bool)

(declare-fun call!548892 () Int)

(assert (=> bm!548882 (= call!548892 (regexDepth!338 (ite c!1168203 (regOne!33135 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (regTwo!33134 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))))

(declare-fun bm!548883 () Bool)

(declare-fun call!548890 () Int)

(declare-fun call!548893 () Int)

(assert (=> bm!548883 (= call!548893 (maxBigInt!0 (ite c!1168203 call!548892 call!548890) (ite c!1168203 call!548890 call!548892)))))

(declare-fun b!6402308 () Bool)

(declare-fun call!548889 () Int)

(assert (=> b!6402308 (= e!3885482 (+ 1 call!548889))))

(declare-fun b!6402309 () Bool)

(declare-fun e!3885478 () Bool)

(declare-fun lt!2373975 () Int)

(assert (=> b!6402309 (= e!3885478 (= lt!2373975 1))))

(declare-fun b!6402311 () Bool)

(declare-fun res!2632413 () Bool)

(declare-fun e!3885476 () Bool)

(assert (=> b!6402311 (=> (not res!2632413) (not e!3885476))))

(declare-fun call!548887 () Int)

(assert (=> b!6402311 (= res!2632413 (> lt!2373975 call!548887))))

(declare-fun e!3885479 () Bool)

(assert (=> b!6402311 (= e!3885479 e!3885476)))

(declare-fun b!6402312 () Bool)

(declare-fun e!3885483 () Int)

(assert (=> b!6402312 (= e!3885483 e!3885482)))

(declare-fun c!1168209 () Bool)

(assert (=> b!6402312 (= c!1168209 ((_ is Star!16311) (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun b!6402313 () Bool)

(declare-fun e!3885481 () Bool)

(assert (=> b!6402313 (= e!3885481 e!3885479)))

(declare-fun c!1168204 () Bool)

(assert (=> b!6402313 (= c!1168204 ((_ is Concat!25156) (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun b!6402314 () Bool)

(declare-fun call!548888 () Int)

(assert (=> b!6402314 (= e!3885476 (> lt!2373975 call!548888))))

(declare-fun b!6402315 () Bool)

(assert (=> b!6402315 (= e!3885477 (+ 1 call!548893))))

(declare-fun b!6402316 () Bool)

(assert (=> b!6402316 (= e!3885478 (> lt!2373975 call!548887))))

(declare-fun b!6402317 () Bool)

(declare-fun e!3885475 () Int)

(assert (=> b!6402317 (= e!3885475 (+ 1 call!548893))))

(declare-fun b!6402318 () Bool)

(declare-fun e!3885480 () Bool)

(declare-fun call!548891 () Int)

(assert (=> b!6402318 (= e!3885480 (> lt!2373975 call!548891))))

(declare-fun b!6402319 () Bool)

(declare-fun e!3885484 () Bool)

(assert (=> b!6402319 (= e!3885484 e!3885481)))

(declare-fun c!1168205 () Bool)

(assert (=> b!6402319 (= c!1168205 ((_ is Union!16311) (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun bm!548884 () Bool)

(assert (=> bm!548884 (= call!548889 (regexDepth!338 (ite c!1168209 (reg!16640 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (ite c!1168203 (regTwo!33135 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (regOne!33134 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292)))))))))

(declare-fun b!6402320 () Bool)

(declare-fun c!1168206 () Bool)

(assert (=> b!6402320 (= c!1168206 ((_ is Star!16311) (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(assert (=> b!6402320 (= e!3885479 e!3885478)))

(declare-fun d!2007255 () Bool)

(assert (=> d!2007255 e!3885484))

(declare-fun res!2632414 () Bool)

(assert (=> d!2007255 (=> (not res!2632414) (not e!3885484))))

(assert (=> d!2007255 (= res!2632414 (> lt!2373975 0))))

(assert (=> d!2007255 (= lt!2373975 e!3885483)))

(declare-fun c!1168207 () Bool)

(assert (=> d!2007255 (= c!1168207 ((_ is ElementMatch!16311) (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(assert (=> d!2007255 (= (regexDepth!338 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))) lt!2373975)))

(declare-fun b!6402310 () Bool)

(assert (=> b!6402310 (= e!3885477 e!3885475)))

(declare-fun c!1168208 () Bool)

(assert (=> b!6402310 (= c!1168208 ((_ is Concat!25156) (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun b!6402321 () Bool)

(assert (=> b!6402321 (= e!3885483 1)))

(declare-fun bm!548885 () Bool)

(assert (=> bm!548885 (= call!548888 (regexDepth!338 (ite c!1168205 (regOne!33135 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (regTwo!33134 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))))

(declare-fun b!6402322 () Bool)

(assert (=> b!6402322 (= e!3885481 e!3885480)))

(declare-fun res!2632412 () Bool)

(assert (=> b!6402322 (= res!2632412 (> lt!2373975 call!548888))))

(assert (=> b!6402322 (=> (not res!2632412) (not e!3885480))))

(declare-fun bm!548886 () Bool)

(assert (=> bm!548886 (= call!548891 (regexDepth!338 (ite c!1168205 (regTwo!33135 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (ite c!1168204 (regOne!33134 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (reg!16640 (ite c!1167694 (regOne!33135 r!7292) (regTwo!33134 r!7292)))))))))

(declare-fun bm!548887 () Bool)

(assert (=> bm!548887 (= call!548887 call!548891)))

(declare-fun bm!548888 () Bool)

(assert (=> bm!548888 (= call!548890 call!548889)))

(declare-fun b!6402323 () Bool)

(assert (=> b!6402323 (= e!3885475 1)))

(assert (= (and d!2007255 c!1168207) b!6402321))

(assert (= (and d!2007255 (not c!1168207)) b!6402312))

(assert (= (and b!6402312 c!1168209) b!6402308))

(assert (= (and b!6402312 (not c!1168209)) b!6402307))

(assert (= (and b!6402307 c!1168203) b!6402315))

(assert (= (and b!6402307 (not c!1168203)) b!6402310))

(assert (= (and b!6402310 c!1168208) b!6402317))

(assert (= (and b!6402310 (not c!1168208)) b!6402323))

(assert (= (or b!6402315 b!6402317) bm!548888))

(assert (= (or b!6402315 b!6402317) bm!548882))

(assert (= (or b!6402315 b!6402317) bm!548883))

(assert (= (or b!6402308 bm!548888) bm!548884))

(assert (= (and d!2007255 res!2632414) b!6402319))

(assert (= (and b!6402319 c!1168205) b!6402322))

(assert (= (and b!6402319 (not c!1168205)) b!6402313))

(assert (= (and b!6402322 res!2632412) b!6402318))

(assert (= (and b!6402313 c!1168204) b!6402311))

(assert (= (and b!6402313 (not c!1168204)) b!6402320))

(assert (= (and b!6402311 res!2632413) b!6402314))

(assert (= (and b!6402320 c!1168206) b!6402316))

(assert (= (and b!6402320 (not c!1168206)) b!6402309))

(assert (= (or b!6402311 b!6402316) bm!548887))

(assert (= (or b!6402318 bm!548887) bm!548886))

(assert (= (or b!6402322 b!6402314) bm!548885))

(declare-fun m!7199642 () Bool)

(assert (=> bm!548883 m!7199642))

(declare-fun m!7199644 () Bool)

(assert (=> bm!548884 m!7199644))

(declare-fun m!7199646 () Bool)

(assert (=> bm!548885 m!7199646))

(declare-fun m!7199648 () Bool)

(assert (=> bm!548886 m!7199648))

(declare-fun m!7199650 () Bool)

(assert (=> bm!548882 m!7199650))

(assert (=> bm!548506 d!2007255))

(assert (=> d!2006567 d!2006581))

(assert (=> d!2006567 d!2007179))

(assert (=> b!6400417 d!2006633))

(declare-fun b!6402330 () Bool)

(declare-fun e!3885490 () Bool)

(declare-fun e!3885491 () Bool)

(assert (=> b!6402330 (= e!3885490 e!3885491)))

(declare-fun res!2632420 () Bool)

(assert (=> b!6402330 (=> res!2632420 e!3885491)))

(declare-fun call!548894 () Bool)

(assert (=> b!6402330 (= res!2632420 call!548894)))

(declare-fun b!6402331 () Bool)

(declare-fun e!3885493 () Bool)

(assert (=> b!6402331 (= e!3885493 (matchR!8494 (derivativeStep!5015 lt!2373664 (head!13113 (_1!36593 (get!22550 lt!2373754)))) (tail!12198 (_1!36593 (get!22550 lt!2373754)))))))

(declare-fun b!6402332 () Bool)

(declare-fun e!3885495 () Bool)

(assert (=> b!6402332 (= e!3885495 e!3885490)))

(declare-fun res!2632421 () Bool)

(assert (=> b!6402332 (=> (not res!2632421) (not e!3885490))))

(declare-fun lt!2373977 () Bool)

(assert (=> b!6402332 (= res!2632421 (not lt!2373977))))

(declare-fun b!6402333 () Bool)

(declare-fun e!3885494 () Bool)

(assert (=> b!6402333 (= e!3885494 (= (head!13113 (_1!36593 (get!22550 lt!2373754))) (c!1167428 lt!2373664)))))

(declare-fun b!6402334 () Bool)

(declare-fun res!2632423 () Bool)

(assert (=> b!6402334 (=> res!2632423 e!3885491)))

(assert (=> b!6402334 (= res!2632423 (not (isEmpty!37253 (tail!12198 (_1!36593 (get!22550 lt!2373754))))))))

(declare-fun b!6402335 () Bool)

(assert (=> b!6402335 (= e!3885493 (nullable!6304 lt!2373664))))

(declare-fun b!6402336 () Bool)

(assert (=> b!6402336 (= e!3885491 (not (= (head!13113 (_1!36593 (get!22550 lt!2373754))) (c!1167428 lt!2373664))))))

(declare-fun b!6402338 () Bool)

(declare-fun res!2632419 () Bool)

(assert (=> b!6402338 (=> res!2632419 e!3885495)))

(assert (=> b!6402338 (= res!2632419 (not ((_ is ElementMatch!16311) lt!2373664)))))

(declare-fun e!3885489 () Bool)

(assert (=> b!6402338 (= e!3885489 e!3885495)))

(declare-fun bm!548889 () Bool)

(assert (=> bm!548889 (= call!548894 (isEmpty!37253 (_1!36593 (get!22550 lt!2373754))))))

(declare-fun b!6402339 () Bool)

(declare-fun e!3885492 () Bool)

(assert (=> b!6402339 (= e!3885492 e!3885489)))

(declare-fun c!1168211 () Bool)

(assert (=> b!6402339 (= c!1168211 ((_ is EmptyLang!16311) lt!2373664))))

(declare-fun b!6402340 () Bool)

(declare-fun res!2632422 () Bool)

(assert (=> b!6402340 (=> (not res!2632422) (not e!3885494))))

(assert (=> b!6402340 (= res!2632422 (not call!548894))))

(declare-fun b!6402341 () Bool)

(declare-fun res!2632426 () Bool)

(assert (=> b!6402341 (=> res!2632426 e!3885495)))

(assert (=> b!6402341 (= res!2632426 e!3885494)))

(declare-fun res!2632424 () Bool)

(assert (=> b!6402341 (=> (not res!2632424) (not e!3885494))))

(assert (=> b!6402341 (= res!2632424 lt!2373977)))

(declare-fun d!2007263 () Bool)

(assert (=> d!2007263 e!3885492))

(declare-fun c!1168212 () Bool)

(assert (=> d!2007263 (= c!1168212 ((_ is EmptyExpr!16311) lt!2373664))))

(assert (=> d!2007263 (= lt!2373977 e!3885493)))

(declare-fun c!1168213 () Bool)

(assert (=> d!2007263 (= c!1168213 (isEmpty!37253 (_1!36593 (get!22550 lt!2373754))))))

(assert (=> d!2007263 (validRegex!8047 lt!2373664)))

(assert (=> d!2007263 (= (matchR!8494 lt!2373664 (_1!36593 (get!22550 lt!2373754))) lt!2373977)))

(declare-fun b!6402337 () Bool)

(assert (=> b!6402337 (= e!3885492 (= lt!2373977 call!548894))))

(declare-fun b!6402342 () Bool)

(assert (=> b!6402342 (= e!3885489 (not lt!2373977))))

(declare-fun b!6402343 () Bool)

(declare-fun res!2632425 () Bool)

(assert (=> b!6402343 (=> (not res!2632425) (not e!3885494))))

(assert (=> b!6402343 (= res!2632425 (isEmpty!37253 (tail!12198 (_1!36593 (get!22550 lt!2373754)))))))

(assert (= (and d!2007263 c!1168213) b!6402335))

(assert (= (and d!2007263 (not c!1168213)) b!6402331))

(assert (= (and d!2007263 c!1168212) b!6402337))

(assert (= (and d!2007263 (not c!1168212)) b!6402339))

(assert (= (and b!6402339 c!1168211) b!6402342))

(assert (= (and b!6402339 (not c!1168211)) b!6402338))

(assert (= (and b!6402338 (not res!2632419)) b!6402341))

(assert (= (and b!6402341 res!2632424) b!6402340))

(assert (= (and b!6402340 res!2632422) b!6402343))

(assert (= (and b!6402343 res!2632425) b!6402333))

(assert (= (and b!6402341 (not res!2632426)) b!6402332))

(assert (= (and b!6402332 res!2632421) b!6402330))

(assert (= (and b!6402330 (not res!2632420)) b!6402334))

(assert (= (and b!6402334 (not res!2632423)) b!6402336))

(assert (= (or b!6402337 b!6402330 b!6402340) bm!548889))

(declare-fun m!7199656 () Bool)

(assert (=> bm!548889 m!7199656))

(declare-fun m!7199658 () Bool)

(assert (=> b!6402336 m!7199658))

(declare-fun m!7199660 () Bool)

(assert (=> b!6402343 m!7199660))

(assert (=> b!6402343 m!7199660))

(declare-fun m!7199662 () Bool)

(assert (=> b!6402343 m!7199662))

(assert (=> b!6402333 m!7199658))

(assert (=> b!6402334 m!7199660))

(assert (=> b!6402334 m!7199660))

(assert (=> b!6402334 m!7199662))

(assert (=> d!2007263 m!7199656))

(assert (=> d!2007263 m!7197394))

(assert (=> b!6402331 m!7199658))

(assert (=> b!6402331 m!7199658))

(declare-fun m!7199664 () Bool)

(assert (=> b!6402331 m!7199664))

(assert (=> b!6402331 m!7199660))

(assert (=> b!6402331 m!7199664))

(assert (=> b!6402331 m!7199660))

(declare-fun m!7199666 () Bool)

(assert (=> b!6402331 m!7199666))

(assert (=> b!6402335 m!7198014))

(assert (=> b!6400117 d!2007263))

(assert (=> b!6400117 d!2007057))

(declare-fun d!2007267 () Bool)

(assert (=> d!2007267 (= (isEmptyExpr!1711 lt!2373774) ((_ is EmptyExpr!16311) lt!2373774))))

(assert (=> b!6400218 d!2007267))

(assert (=> b!6400781 d!2006969))

(assert (=> b!6400781 d!2006971))

(declare-fun bs!1605510 () Bool)

(declare-fun b!6402355 () Bool)

(assert (= bs!1605510 (and b!6402355 d!2007041)))

(declare-fun lambda!353508 () Int)

(assert (=> bs!1605510 (not (= lambda!353508 lambda!353455))))

(declare-fun bs!1605511 () Bool)

(assert (= bs!1605511 (and b!6402355 d!2007097)))

(assert (=> bs!1605511 (not (= lambda!353508 lambda!353459))))

(declare-fun bs!1605512 () Bool)

(assert (= bs!1605512 (and b!6402355 d!2007151)))

(assert (=> bs!1605512 (not (= lambda!353508 lambda!353479))))

(declare-fun bs!1605513 () Bool)

(assert (= bs!1605513 (and b!6402355 d!2006553)))

(assert (=> bs!1605513 (not (= lambda!353508 lambda!353400))))

(declare-fun bs!1605515 () Bool)

(assert (= bs!1605515 (and b!6402355 d!2006563)))

(assert (=> bs!1605515 (not (= lambda!353508 lambda!353403))))

(declare-fun bs!1605516 () Bool)

(assert (= bs!1605516 (and b!6402355 d!2006429)))

(assert (=> bs!1605516 (not (= lambda!353508 lambda!353368))))

(declare-fun bs!1605517 () Bool)

(assert (= bs!1605517 (and b!6402355 d!2007079)))

(assert (=> bs!1605517 (not (= lambda!353508 lambda!353456))))

(declare-fun bs!1605518 () Bool)

(assert (= bs!1605518 (and b!6402355 d!2007171)))

(assert (=> bs!1605518 (not (= lambda!353508 lambda!353487))))

(declare-fun bs!1605519 () Bool)

(assert (= bs!1605519 (and b!6402355 d!2007083)))

(assert (=> bs!1605519 (not (= lambda!353508 lambda!353458))))

(declare-fun bs!1605521 () Bool)

(assert (= bs!1605521 (and b!6402355 b!6402027)))

(declare-fun lt!2373980 () Int)

(assert (=> bs!1605521 (= (= lt!2373980 lt!2373934) (= lambda!353508 lambda!353466))))

(declare-fun bs!1605522 () Bool)

(assert (= bs!1605522 (and b!6402355 d!2006417)))

(assert (=> bs!1605522 (not (= lambda!353508 lambda!353359))))

(declare-fun bs!1605524 () Bool)

(assert (= bs!1605524 (and b!6402355 d!2006681)))

(assert (=> bs!1605524 (not (= lambda!353508 lambda!353422))))

(declare-fun bs!1605525 () Bool)

(assert (= bs!1605525 (and b!6402355 d!2006531)))

(assert (=> bs!1605525 (not (= lambda!353508 lambda!353399))))

(declare-fun bs!1605527 () Bool)

(assert (= bs!1605527 (and b!6402355 d!2006421)))

(assert (=> bs!1605527 (not (= lambda!353508 lambda!353365))))

(declare-fun bs!1605528 () Bool)

(assert (= bs!1605528 (and b!6402355 d!2007149)))

(assert (=> bs!1605528 (not (= lambda!353508 lambda!353478))))

(declare-fun bs!1605529 () Bool)

(assert (= bs!1605529 (and b!6402355 d!2006667)))

(assert (=> bs!1605529 (not (= lambda!353508 lambda!353420))))

(declare-fun bs!1605530 () Bool)

(assert (= bs!1605530 (and b!6402355 d!2006813)))

(assert (=> bs!1605530 (not (= lambda!353508 lambda!353430))))

(declare-fun bs!1605531 () Bool)

(assert (= bs!1605531 (and b!6402355 d!2006821)))

(assert (=> bs!1605531 (not (= lambda!353508 lambda!353431))))

(declare-fun bs!1605533 () Bool)

(assert (= bs!1605533 (and b!6402355 d!2007175)))

(assert (=> bs!1605533 (not (= lambda!353508 lambda!353488))))

(declare-fun bs!1605535 () Bool)

(assert (= bs!1605535 (and b!6402355 b!6402029)))

(assert (=> bs!1605535 (= (= lt!2373980 lt!2373932) (= lambda!353508 lambda!353467))))

(assert (=> b!6402355 true))

(declare-fun bs!1605536 () Bool)

(declare-fun b!6402357 () Bool)

(assert (= bs!1605536 (and b!6402357 d!2007041)))

(declare-fun lambda!353509 () Int)

(assert (=> bs!1605536 (not (= lambda!353509 lambda!353455))))

(declare-fun bs!1605537 () Bool)

(assert (= bs!1605537 (and b!6402357 d!2007097)))

(assert (=> bs!1605537 (not (= lambda!353509 lambda!353459))))

(declare-fun bs!1605538 () Bool)

(assert (= bs!1605538 (and b!6402357 d!2007151)))

(assert (=> bs!1605538 (not (= lambda!353509 lambda!353479))))

(declare-fun bs!1605539 () Bool)

(assert (= bs!1605539 (and b!6402357 d!2006553)))

(assert (=> bs!1605539 (not (= lambda!353509 lambda!353400))))

(declare-fun bs!1605540 () Bool)

(assert (= bs!1605540 (and b!6402357 d!2006563)))

(assert (=> bs!1605540 (not (= lambda!353509 lambda!353403))))

(declare-fun bs!1605541 () Bool)

(assert (= bs!1605541 (and b!6402357 d!2006429)))

(assert (=> bs!1605541 (not (= lambda!353509 lambda!353368))))

(declare-fun bs!1605542 () Bool)

(assert (= bs!1605542 (and b!6402357 d!2007079)))

(assert (=> bs!1605542 (not (= lambda!353509 lambda!353456))))

(declare-fun bs!1605543 () Bool)

(assert (= bs!1605543 (and b!6402357 d!2007171)))

(assert (=> bs!1605543 (not (= lambda!353509 lambda!353487))))

(declare-fun bs!1605545 () Bool)

(assert (= bs!1605545 (and b!6402357 d!2007083)))

(assert (=> bs!1605545 (not (= lambda!353509 lambda!353458))))

(declare-fun bs!1605546 () Bool)

(assert (= bs!1605546 (and b!6402357 b!6402027)))

(declare-fun lt!2373978 () Int)

(assert (=> bs!1605546 (= (= lt!2373978 lt!2373934) (= lambda!353509 lambda!353466))))

(declare-fun bs!1605548 () Bool)

(assert (= bs!1605548 (and b!6402357 d!2006417)))

(assert (=> bs!1605548 (not (= lambda!353509 lambda!353359))))

(declare-fun bs!1605550 () Bool)

(assert (= bs!1605550 (and b!6402357 d!2006681)))

(assert (=> bs!1605550 (not (= lambda!353509 lambda!353422))))

(declare-fun bs!1605551 () Bool)

(assert (= bs!1605551 (and b!6402357 d!2006531)))

(assert (=> bs!1605551 (not (= lambda!353509 lambda!353399))))

(declare-fun bs!1605553 () Bool)

(assert (= bs!1605553 (and b!6402357 d!2006421)))

(assert (=> bs!1605553 (not (= lambda!353509 lambda!353365))))

(declare-fun bs!1605555 () Bool)

(assert (= bs!1605555 (and b!6402357 d!2007149)))

(assert (=> bs!1605555 (not (= lambda!353509 lambda!353478))))

(declare-fun bs!1605556 () Bool)

(assert (= bs!1605556 (and b!6402357 d!2006667)))

(assert (=> bs!1605556 (not (= lambda!353509 lambda!353420))))

(declare-fun bs!1605558 () Bool)

(assert (= bs!1605558 (and b!6402357 d!2006813)))

(assert (=> bs!1605558 (not (= lambda!353509 lambda!353430))))

(declare-fun bs!1605559 () Bool)

(assert (= bs!1605559 (and b!6402357 d!2006821)))

(assert (=> bs!1605559 (not (= lambda!353509 lambda!353431))))

(declare-fun bs!1605561 () Bool)

(assert (= bs!1605561 (and b!6402357 b!6402355)))

(assert (=> bs!1605561 (= (= lt!2373978 lt!2373980) (= lambda!353509 lambda!353508))))

(declare-fun bs!1605562 () Bool)

(assert (= bs!1605562 (and b!6402357 d!2007175)))

(assert (=> bs!1605562 (not (= lambda!353509 lambda!353488))))

(declare-fun bs!1605564 () Bool)

(assert (= bs!1605564 (and b!6402357 b!6402029)))

(assert (=> bs!1605564 (= (= lt!2373978 lt!2373932) (= lambda!353509 lambda!353467))))

(assert (=> b!6402357 true))

(declare-fun d!2007269 () Bool)

(declare-fun e!3885504 () Bool)

(assert (=> d!2007269 e!3885504))

(declare-fun res!2632430 () Bool)

(assert (=> d!2007269 (=> (not res!2632430) (not e!3885504))))

(assert (=> d!2007269 (= res!2632430 (>= lt!2373978 0))))

(declare-fun e!3885503 () Int)

(assert (=> d!2007269 (= lt!2373978 e!3885503)))

(declare-fun c!1168218 () Bool)

(assert (=> d!2007269 (= c!1168218 ((_ is Cons!65109) (exprs!6195 (h!71558 lt!2373651))))))

(assert (=> d!2007269 (= (contextDepth!269 (h!71558 lt!2373651)) lt!2373978)))

(assert (=> b!6402355 (= e!3885503 lt!2373980)))

(assert (=> b!6402355 (= lt!2373980 (maxBigInt!0 (regexDepth!338 (h!71557 (exprs!6195 (h!71558 lt!2373651)))) (contextDepth!269 (Context!11391 (t!378841 (exprs!6195 (h!71558 lt!2373651)))))))))

(declare-fun lt!2373981 () Unit!158575)

(assert (=> b!6402355 (= lt!2373981 (lemmaForallRegexDepthBiggerThanTransitive!121 (t!378841 (exprs!6195 (h!71558 lt!2373651))) lt!2373980 (contextDepth!269 (Context!11391 (t!378841 (exprs!6195 (h!71558 lt!2373651)))))))))

(assert (=> b!6402355 (forall!15496 (t!378841 (exprs!6195 (h!71558 lt!2373651))) lambda!353508)))

(declare-fun lt!2373979 () Unit!158575)

(assert (=> b!6402355 (= lt!2373979 lt!2373981)))

(declare-fun b!6402356 () Bool)

(assert (=> b!6402356 (= e!3885503 0)))

(assert (=> b!6402357 (= e!3885504 (forall!15496 (exprs!6195 (h!71558 lt!2373651)) lambda!353509))))

(assert (= (and d!2007269 c!1168218) b!6402355))

(assert (= (and d!2007269 (not c!1168218)) b!6402356))

(assert (= (and d!2007269 res!2632430) b!6402357))

(declare-fun m!7199668 () Bool)

(assert (=> b!6402355 m!7199668))

(declare-fun m!7199670 () Bool)

(assert (=> b!6402355 m!7199670))

(declare-fun m!7199672 () Bool)

(assert (=> b!6402355 m!7199672))

(declare-fun m!7199674 () Bool)

(assert (=> b!6402355 m!7199674))

(assert (=> b!6402355 m!7199668))

(assert (=> b!6402355 m!7199670))

(assert (=> b!6402355 m!7199670))

(declare-fun m!7199676 () Bool)

(assert (=> b!6402355 m!7199676))

(declare-fun m!7199678 () Bool)

(assert (=> b!6402357 m!7199678))

(assert (=> b!6400835 d!2007269))

(declare-fun d!2007271 () Bool)

(declare-fun res!2632431 () Bool)

(declare-fun e!3885505 () Bool)

(assert (=> d!2007271 (=> res!2632431 e!3885505)))

(assert (=> d!2007271 (= res!2632431 ((_ is Nil!65110) (t!378842 lt!2373651)))))

(assert (=> d!2007271 (= (forall!15497 (t!378842 lt!2373651) lambda!353414) e!3885505)))

(declare-fun b!6402358 () Bool)

(declare-fun e!3885506 () Bool)

(assert (=> b!6402358 (= e!3885505 e!3885506)))

(declare-fun res!2632432 () Bool)

(assert (=> b!6402358 (=> (not res!2632432) (not e!3885506))))

(assert (=> b!6402358 (= res!2632432 (dynLambda!25845 lambda!353414 (h!71558 (t!378842 lt!2373651))))))

(declare-fun b!6402359 () Bool)

(assert (=> b!6402359 (= e!3885506 (forall!15497 (t!378842 (t!378842 lt!2373651)) lambda!353414))))

(assert (= (and d!2007271 (not res!2632431)) b!6402358))

(assert (= (and b!6402358 res!2632432) b!6402359))

(declare-fun b_lambda!243283 () Bool)

(assert (=> (not b_lambda!243283) (not b!6402358)))

(declare-fun m!7199680 () Bool)

(assert (=> b!6402358 m!7199680))

(declare-fun m!7199682 () Bool)

(assert (=> b!6402359 m!7199682))

(assert (=> b!6400835 d!2007271))

(declare-fun bs!1605573 () Bool)

(declare-fun b!6402360 () Bool)

(assert (= bs!1605573 (and b!6402360 b!6400830)))

(declare-fun lambda!353511 () Int)

(assert (=> bs!1605573 (= lambda!353511 lambda!353410)))

(declare-fun bs!1605574 () Bool)

(assert (= bs!1605574 (and b!6402360 b!6400835)))

(assert (=> bs!1605574 (= lambda!353511 lambda!353413)))

(declare-fun bs!1605575 () Bool)

(assert (= bs!1605575 (and b!6402360 b!6402032)))

(assert (=> bs!1605575 (= lambda!353511 lambda!353469)))

(declare-fun lt!2373983 () Int)

(declare-fun lambda!353512 () Int)

(assert (=> bs!1605573 (= (= lt!2373983 lt!2373847) (= lambda!353512 lambda!353411))))

(declare-fun bs!1605576 () Bool)

(assert (= bs!1605576 (and b!6402360 d!2007033)))

(assert (=> bs!1605576 (not (= lambda!353512 lambda!353454))))

(declare-fun bs!1605577 () Bool)

(assert (= bs!1605577 (and b!6402360 b!6400832)))

(assert (=> bs!1605577 (= (= lt!2373983 lt!2373848) (= lambda!353512 lambda!353412))))

(declare-fun bs!1605578 () Bool)

(assert (= bs!1605578 (and b!6402360 d!2006733)))

(assert (=> bs!1605578 (not (= lambda!353512 lambda!353428))))

(assert (=> bs!1605574 (= (= lt!2373983 lt!2373851) (= lambda!353512 lambda!353414))))

(declare-fun bs!1605579 () Bool)

(assert (= bs!1605579 (and b!6402360 b!6402034)))

(assert (=> bs!1605579 (= (= lt!2373983 lt!2373938) (= lambda!353512 lambda!353471))))

(assert (=> bs!1605575 (= (= lt!2373983 lt!2373937) (= lambda!353512 lambda!353470))))

(declare-fun bs!1605580 () Bool)

(assert (= bs!1605580 (and b!6402360 d!2007161)))

(assert (=> bs!1605580 (not (= lambda!353512 lambda!353484))))

(declare-fun bs!1605581 () Bool)

(assert (= bs!1605581 (and b!6402360 b!6400837)))

(assert (=> bs!1605581 (= (= lt!2373983 lt!2373852) (= lambda!353512 lambda!353415))))

(declare-fun bs!1605583 () Bool)

(assert (= bs!1605583 (and b!6402360 d!2007121)))

(assert (=> bs!1605583 (not (= lambda!353512 lambda!353474))))

(assert (=> b!6402360 true))

(declare-fun bs!1605584 () Bool)

(declare-fun b!6402362 () Bool)

(assert (= bs!1605584 (and b!6402362 b!6400830)))

(declare-fun lt!2373984 () Int)

(declare-fun lambda!353513 () Int)

(assert (=> bs!1605584 (= (= lt!2373984 lt!2373847) (= lambda!353513 lambda!353411))))

(declare-fun bs!1605585 () Bool)

(assert (= bs!1605585 (and b!6402362 b!6400832)))

(assert (=> bs!1605585 (= (= lt!2373984 lt!2373848) (= lambda!353513 lambda!353412))))

(declare-fun bs!1605586 () Bool)

(assert (= bs!1605586 (and b!6402362 d!2006733)))

(assert (=> bs!1605586 (not (= lambda!353513 lambda!353428))))

(declare-fun bs!1605587 () Bool)

(assert (= bs!1605587 (and b!6402362 b!6400835)))

(assert (=> bs!1605587 (= (= lt!2373984 lt!2373851) (= lambda!353513 lambda!353414))))

(declare-fun bs!1605588 () Bool)

(assert (= bs!1605588 (and b!6402362 b!6402034)))

(assert (=> bs!1605588 (= (= lt!2373984 lt!2373938) (= lambda!353513 lambda!353471))))

(declare-fun bs!1605589 () Bool)

(assert (= bs!1605589 (and b!6402362 b!6402032)))

(assert (=> bs!1605589 (= (= lt!2373984 lt!2373937) (= lambda!353513 lambda!353470))))

(declare-fun bs!1605590 () Bool)

(assert (= bs!1605590 (and b!6402362 d!2007161)))

(assert (=> bs!1605590 (not (= lambda!353513 lambda!353484))))

(declare-fun bs!1605591 () Bool)

(assert (= bs!1605591 (and b!6402362 b!6402360)))

(assert (=> bs!1605591 (= (= lt!2373984 lt!2373983) (= lambda!353513 lambda!353512))))

(declare-fun bs!1605592 () Bool)

(assert (= bs!1605592 (and b!6402362 d!2007033)))

(assert (=> bs!1605592 (not (= lambda!353513 lambda!353454))))

(declare-fun bs!1605593 () Bool)

(assert (= bs!1605593 (and b!6402362 b!6400837)))

(assert (=> bs!1605593 (= (= lt!2373984 lt!2373852) (= lambda!353513 lambda!353415))))

(declare-fun bs!1605594 () Bool)

(assert (= bs!1605594 (and b!6402362 d!2007121)))

(assert (=> bs!1605594 (not (= lambda!353513 lambda!353474))))

(assert (=> b!6402362 true))

(declare-fun d!2007273 () Bool)

(declare-fun e!3885508 () Bool)

(assert (=> d!2007273 e!3885508))

(declare-fun res!2632433 () Bool)

(assert (=> d!2007273 (=> (not res!2632433) (not e!3885508))))

(assert (=> d!2007273 (= res!2632433 (>= lt!2373984 0))))

(declare-fun e!3885507 () Int)

(assert (=> d!2007273 (= lt!2373984 e!3885507)))

(declare-fun c!1168219 () Bool)

(assert (=> d!2007273 (= c!1168219 ((_ is Cons!65110) (t!378842 lt!2373651)))))

(assert (=> d!2007273 (= (zipperDepth!380 (t!378842 lt!2373651)) lt!2373984)))

(assert (=> b!6402360 (= e!3885507 lt!2373983)))

(assert (=> b!6402360 (= lt!2373983 (maxBigInt!0 (contextDepth!269 (h!71558 (t!378842 lt!2373651))) (zipperDepth!380 (t!378842 (t!378842 lt!2373651)))))))

(declare-fun lt!2373982 () Unit!158575)

(assert (=> b!6402360 (= lt!2373982 (lemmaForallContextDepthBiggerThanTransitive!253 (t!378842 (t!378842 lt!2373651)) lt!2373983 (zipperDepth!380 (t!378842 (t!378842 lt!2373651))) lambda!353511))))

(assert (=> b!6402360 (forall!15497 (t!378842 (t!378842 lt!2373651)) lambda!353512)))

(declare-fun lt!2373985 () Unit!158575)

(assert (=> b!6402360 (= lt!2373985 lt!2373982)))

(declare-fun b!6402361 () Bool)

(assert (=> b!6402361 (= e!3885507 0)))

(assert (=> b!6402362 (= e!3885508 (forall!15497 (t!378842 lt!2373651) lambda!353513))))

(assert (= (and d!2007273 c!1168219) b!6402360))

(assert (= (and d!2007273 (not c!1168219)) b!6402361))

(assert (= (and d!2007273 res!2632433) b!6402362))

(declare-fun m!7199696 () Bool)

(assert (=> b!6402360 m!7199696))

(declare-fun m!7199700 () Bool)

(assert (=> b!6402360 m!7199700))

(assert (=> b!6402360 m!7199700))

(declare-fun m!7199704 () Bool)

(assert (=> b!6402360 m!7199704))

(declare-fun m!7199708 () Bool)

(assert (=> b!6402360 m!7199708))

(assert (=> b!6402360 m!7199704))

(assert (=> b!6402360 m!7199704))

(declare-fun m!7199710 () Bool)

(assert (=> b!6402360 m!7199710))

(declare-fun m!7199712 () Bool)

(assert (=> b!6402362 m!7199712))

(assert (=> b!6400835 d!2007273))

(declare-fun bs!1605595 () Bool)

(declare-fun d!2007283 () Bool)

(assert (= bs!1605595 (and d!2007283 b!6400830)))

(declare-fun lambda!353514 () Int)

(assert (=> bs!1605595 (not (= lambda!353514 lambda!353411))))

(declare-fun bs!1605596 () Bool)

(assert (= bs!1605596 (and d!2007283 b!6400832)))

(assert (=> bs!1605596 (not (= lambda!353514 lambda!353412))))

(declare-fun bs!1605597 () Bool)

(assert (= bs!1605597 (and d!2007283 d!2006733)))

(assert (=> bs!1605597 (not (= lambda!353514 lambda!353428))))

(declare-fun bs!1605598 () Bool)

(assert (= bs!1605598 (and d!2007283 b!6400835)))

(assert (=> bs!1605598 (not (= lambda!353514 lambda!353414))))

(declare-fun bs!1605599 () Bool)

(assert (= bs!1605599 (and d!2007283 b!6402034)))

(assert (=> bs!1605599 (not (= lambda!353514 lambda!353471))))

(declare-fun bs!1605600 () Bool)

(assert (= bs!1605600 (and d!2007283 b!6402362)))

(assert (=> bs!1605600 (not (= lambda!353514 lambda!353513))))

(declare-fun bs!1605601 () Bool)

(assert (= bs!1605601 (and d!2007283 b!6402032)))

(assert (=> bs!1605601 (not (= lambda!353514 lambda!353470))))

(declare-fun bs!1605602 () Bool)

(assert (= bs!1605602 (and d!2007283 d!2007161)))

(assert (=> bs!1605602 (not (= lambda!353514 lambda!353484))))

(declare-fun bs!1605603 () Bool)

(assert (= bs!1605603 (and d!2007283 b!6402360)))

(assert (=> bs!1605603 (not (= lambda!353514 lambda!353512))))

(declare-fun bs!1605604 () Bool)

(assert (= bs!1605604 (and d!2007283 d!2007033)))

(assert (=> bs!1605604 (not (= lambda!353514 lambda!353454))))

(declare-fun bs!1605605 () Bool)

(assert (= bs!1605605 (and d!2007283 b!6400837)))

(assert (=> bs!1605605 (not (= lambda!353514 lambda!353415))))

(declare-fun bs!1605606 () Bool)

(assert (= bs!1605606 (and d!2007283 d!2007121)))

(assert (=> bs!1605606 (= (and (= lt!2373851 lt!2373847) (= lambda!353413 lambda!353410)) (= lambda!353514 lambda!353474))))

(assert (=> d!2007283 true))

(assert (=> d!2007283 true))

(assert (=> d!2007283 (< (dynLambda!25848 order!27541 lambda!353413) (dynLambda!25849 order!27543 lambda!353514))))

(assert (=> d!2007283 (forall!15497 (t!378842 lt!2373651) lambda!353514)))

(declare-fun lt!2373988 () Unit!158575)

(assert (=> d!2007283 (= lt!2373988 (choose!47604 (t!378842 lt!2373651) lt!2373851 (zipperDepth!380 (t!378842 lt!2373651)) lambda!353413))))

(assert (=> d!2007283 (>= lt!2373851 (zipperDepth!380 (t!378842 lt!2373651)))))

(assert (=> d!2007283 (= (lemmaForallContextDepthBiggerThanTransitive!253 (t!378842 lt!2373651) lt!2373851 (zipperDepth!380 (t!378842 lt!2373651)) lambda!353413) lt!2373988)))

(declare-fun bs!1605607 () Bool)

(assert (= bs!1605607 d!2007283))

(declare-fun m!7199726 () Bool)

(assert (=> bs!1605607 m!7199726))

(assert (=> bs!1605607 m!7198068))

(declare-fun m!7199728 () Bool)

(assert (=> bs!1605607 m!7199728))

(assert (=> b!6400835 d!2007283))

(declare-fun d!2007287 () Bool)

(assert (=> d!2007287 (= (maxBigInt!0 (contextDepth!269 (h!71558 lt!2373651)) (zipperDepth!380 (t!378842 lt!2373651))) (ite (>= (contextDepth!269 (h!71558 lt!2373651)) (zipperDepth!380 (t!378842 lt!2373651))) (contextDepth!269 (h!71558 lt!2373651)) (zipperDepth!380 (t!378842 lt!2373651))))))

(assert (=> b!6400835 d!2007287))

(declare-fun d!2007289 () Bool)

(assert (=> d!2007289 (= (isEmpty!37252 (t!378841 (unfocusZipperList!1732 zl!343))) ((_ is Nil!65109) (t!378841 (unfocusZipperList!1732 zl!343))))))

(assert (=> b!6400276 d!2007289))

(declare-fun bs!1605612 () Bool)

(declare-fun d!2007291 () Bool)

(assert (= bs!1605612 (and d!2007291 d!2007041)))

(declare-fun lambda!353516 () Int)

(assert (=> bs!1605612 (= lambda!353516 lambda!353455)))

(declare-fun bs!1605614 () Bool)

(assert (= bs!1605614 (and d!2007291 d!2007097)))

(assert (=> bs!1605614 (= lambda!353516 lambda!353459)))

(declare-fun bs!1605616 () Bool)

(assert (= bs!1605616 (and d!2007291 d!2007151)))

(assert (=> bs!1605616 (= lambda!353516 lambda!353479)))

(declare-fun bs!1605618 () Bool)

(assert (= bs!1605618 (and d!2007291 d!2006553)))

(assert (=> bs!1605618 (= lambda!353516 lambda!353400)))

(declare-fun bs!1605620 () Bool)

(assert (= bs!1605620 (and d!2007291 d!2006563)))

(assert (=> bs!1605620 (= lambda!353516 lambda!353403)))

(declare-fun bs!1605622 () Bool)

(assert (= bs!1605622 (and d!2007291 d!2006429)))

(assert (=> bs!1605622 (= lambda!353516 lambda!353368)))

(declare-fun bs!1605624 () Bool)

(assert (= bs!1605624 (and d!2007291 d!2007079)))

(assert (=> bs!1605624 (= lambda!353516 lambda!353456)))

(declare-fun bs!1605626 () Bool)

(assert (= bs!1605626 (and d!2007291 d!2007171)))

(assert (=> bs!1605626 (= lambda!353516 lambda!353487)))

(declare-fun bs!1605628 () Bool)

(assert (= bs!1605628 (and d!2007291 d!2007083)))

(assert (=> bs!1605628 (= lambda!353516 lambda!353458)))

(declare-fun bs!1605630 () Bool)

(assert (= bs!1605630 (and d!2007291 b!6402027)))

(assert (=> bs!1605630 (not (= lambda!353516 lambda!353466))))

(declare-fun bs!1605632 () Bool)

(assert (= bs!1605632 (and d!2007291 d!2006417)))

(assert (=> bs!1605632 (= lambda!353516 lambda!353359)))

(declare-fun bs!1605634 () Bool)

(assert (= bs!1605634 (and d!2007291 d!2006681)))

(assert (=> bs!1605634 (= lambda!353516 lambda!353422)))

(declare-fun bs!1605636 () Bool)

(assert (= bs!1605636 (and d!2007291 d!2006531)))

(assert (=> bs!1605636 (= lambda!353516 lambda!353399)))

(declare-fun bs!1605637 () Bool)

(assert (= bs!1605637 (and d!2007291 d!2006421)))

(assert (=> bs!1605637 (= lambda!353516 lambda!353365)))

(declare-fun bs!1605638 () Bool)

(assert (= bs!1605638 (and d!2007291 d!2007149)))

(assert (=> bs!1605638 (= lambda!353516 lambda!353478)))

(declare-fun bs!1605639 () Bool)

(assert (= bs!1605639 (and d!2007291 d!2006667)))

(assert (=> bs!1605639 (= lambda!353516 lambda!353420)))

(declare-fun bs!1605640 () Bool)

(assert (= bs!1605640 (and d!2007291 d!2006813)))

(assert (=> bs!1605640 (= lambda!353516 lambda!353430)))

(declare-fun bs!1605641 () Bool)

(assert (= bs!1605641 (and d!2007291 d!2006821)))

(assert (=> bs!1605641 (= lambda!353516 lambda!353431)))

(declare-fun bs!1605642 () Bool)

(assert (= bs!1605642 (and d!2007291 b!6402355)))

(assert (=> bs!1605642 (not (= lambda!353516 lambda!353508))))

(declare-fun bs!1605643 () Bool)

(assert (= bs!1605643 (and d!2007291 b!6402357)))

(assert (=> bs!1605643 (not (= lambda!353516 lambda!353509))))

(declare-fun bs!1605644 () Bool)

(assert (= bs!1605644 (and d!2007291 d!2007175)))

(assert (=> bs!1605644 (= lambda!353516 lambda!353488)))

(declare-fun bs!1605645 () Bool)

(assert (= bs!1605645 (and d!2007291 b!6402029)))

(assert (=> bs!1605645 (not (= lambda!353516 lambda!353467))))

(assert (=> d!2007291 (= (inv!84024 setElem!43692) (forall!15496 (exprs!6195 setElem!43692) lambda!353516))))

(declare-fun bs!1605646 () Bool)

(assert (= bs!1605646 d!2007291))

(declare-fun m!7199742 () Bool)

(assert (=> bs!1605646 m!7199742))

(assert (=> setNonEmpty!43692 d!2007291))

(assert (=> d!2006513 d!2006509))

(assert (=> d!2006513 d!2006931))

(assert (=> d!2006513 d!2006521))

(declare-fun d!2007295 () Bool)

(assert (=> d!2007295 (= (Exists!3381 lambda!353393) (choose!47587 lambda!353393))))

(declare-fun bs!1605647 () Bool)

(assert (= bs!1605647 d!2007295))

(declare-fun m!7199750 () Bool)

(assert (=> bs!1605647 m!7199750))

(assert (=> d!2006513 d!2007295))

(declare-fun bs!1605648 () Bool)

(declare-fun d!2007299 () Bool)

(assert (= bs!1605648 (and d!2007299 b!6402261)))

(declare-fun lambda!353517 () Int)

(assert (=> bs!1605648 (not (= lambda!353517 lambda!353505))))

(declare-fun bs!1605649 () Bool)

(assert (= bs!1605649 (and d!2007299 b!6399780)))

(assert (=> bs!1605649 (not (= lambda!353517 lambda!353312))))

(declare-fun bs!1605650 () Bool)

(assert (= bs!1605650 (and d!2007299 b!6402223)))

(assert (=> bs!1605650 (not (= lambda!353517 lambda!353497))))

(declare-fun bs!1605651 () Bool)

(assert (= bs!1605651 (and d!2007299 d!2006515)))

(assert (=> bs!1605651 (not (= lambda!353517 lambda!353395))))

(declare-fun bs!1605653 () Bool)

(assert (= bs!1605653 (and d!2007299 b!6400731)))

(assert (=> bs!1605653 (not (= lambda!353517 lambda!353401))))

(declare-fun bs!1605654 () Bool)

(assert (= bs!1605654 (and d!2007299 b!6401759)))

(assert (=> bs!1605654 (not (= lambda!353517 lambda!353451))))

(declare-fun bs!1605655 () Bool)

(assert (= bs!1605655 (and d!2007299 b!6402255)))

(assert (=> bs!1605655 (not (= lambda!353517 lambda!353501))))

(declare-fun bs!1605656 () Bool)

(assert (= bs!1605656 (and d!2007299 d!2006905)))

(assert (=> bs!1605656 (= lambda!353517 lambda!353441)))

(declare-fun bs!1605657 () Bool)

(assert (= bs!1605657 (and d!2007299 d!2006367)))

(assert (=> bs!1605657 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353517 lambda!353347))))

(declare-fun bs!1605658 () Bool)

(assert (= bs!1605658 (and d!2007299 d!2006513)))

(assert (=> bs!1605658 (= lambda!353517 lambda!353393)))

(declare-fun bs!1605660 () Bool)

(assert (= bs!1605660 (and d!2007299 b!6400503)))

(assert (=> bs!1605660 (not (= lambda!353517 lambda!353384))))

(assert (=> bs!1605651 (= lambda!353517 lambda!353394)))

(declare-fun bs!1605663 () Bool)

(assert (= bs!1605663 (and d!2007299 b!6399764)))

(assert (=> bs!1605663 (not (= lambda!353517 lambda!353315))))

(declare-fun bs!1605666 () Bool)

(assert (= bs!1605666 (and d!2007299 d!2007181)))

(assert (=> bs!1605666 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353517 lambda!353494))))

(declare-fun bs!1605669 () Bool)

(assert (= bs!1605669 (and d!2007299 b!6402229)))

(assert (=> bs!1605669 (not (= lambda!353517 lambda!353500))))

(declare-fun bs!1605671 () Bool)

(assert (= bs!1605671 (and d!2007299 d!2006349)))

(assert (=> bs!1605671 (not (= lambda!353517 lambda!353340))))

(declare-fun bs!1605674 () Bool)

(assert (= bs!1605674 (and d!2007299 b!6400509)))

(assert (=> bs!1605674 (not (= lambda!353517 lambda!353386))))

(assert (=> bs!1605671 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353517 lambda!353337))))

(assert (=> bs!1605649 (= lambda!353517 lambda!353311)))

(declare-fun bs!1605680 () Bool)

(assert (= bs!1605680 (and d!2007299 b!6400737)))

(assert (=> bs!1605680 (not (= lambda!353517 lambda!353402))))

(declare-fun bs!1605682 () Bool)

(assert (= bs!1605682 (and d!2007299 b!6401765)))

(assert (=> bs!1605682 (not (= lambda!353517 lambda!353452))))

(assert (=> bs!1605656 (not (= lambda!353517 lambda!353442))))

(assert (=> bs!1605663 (= (= (regOne!33134 r!7292) lt!2373664) (= lambda!353517 lambda!353314))))

(assert (=> d!2007299 true))

(assert (=> d!2007299 true))

(assert (=> d!2007299 true))

(assert (=> d!2007299 (= (isDefined!12905 (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326)) (Exists!3381 lambda!353517))))

(assert (=> d!2007299 true))

(declare-fun _$89!2640 () Unit!158575)

(assert (=> d!2007299 (= (choose!47589 (regOne!33134 r!7292) (regTwo!33134 r!7292) s!2326) _$89!2640)))

(declare-fun bs!1605689 () Bool)

(assert (= bs!1605689 d!2007299))

(assert (=> bs!1605689 m!7197144))

(assert (=> bs!1605689 m!7197144))

(assert (=> bs!1605689 m!7197146))

(declare-fun m!7199762 () Bool)

(assert (=> bs!1605689 m!7199762))

(assert (=> d!2006513 d!2007299))

(assert (=> d!2006587 d!2006655))

(declare-fun b!6402418 () Bool)

(declare-fun e!3885544 () Bool)

(declare-fun e!3885545 () Bool)

(assert (=> b!6402418 (= e!3885544 e!3885545)))

(declare-fun res!2632457 () Bool)

(assert (=> b!6402418 (=> res!2632457 e!3885545)))

(declare-fun call!548908 () Bool)

(assert (=> b!6402418 (= res!2632457 call!548908)))

(declare-fun b!6402419 () Bool)

(declare-fun e!3885547 () Bool)

(assert (=> b!6402419 (= e!3885547 (matchR!8494 (derivativeStep!5015 (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686))) (head!13113 (tail!12198 (_2!36593 lt!2373686)))) (tail!12198 (tail!12198 (_2!36593 lt!2373686)))))))

(declare-fun b!6402420 () Bool)

(declare-fun e!3885549 () Bool)

(assert (=> b!6402420 (= e!3885549 e!3885544)))

(declare-fun res!2632458 () Bool)

(assert (=> b!6402420 (=> (not res!2632458) (not e!3885544))))

(declare-fun lt!2373994 () Bool)

(assert (=> b!6402420 (= res!2632458 (not lt!2373994))))

(declare-fun b!6402421 () Bool)

(declare-fun e!3885548 () Bool)

(assert (=> b!6402421 (= e!3885548 (= (head!13113 (tail!12198 (_2!36593 lt!2373686))) (c!1167428 (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686))))))))

(declare-fun b!6402422 () Bool)

(declare-fun res!2632460 () Bool)

(assert (=> b!6402422 (=> res!2632460 e!3885545)))

(assert (=> b!6402422 (= res!2632460 (not (isEmpty!37253 (tail!12198 (tail!12198 (_2!36593 lt!2373686))))))))

(declare-fun b!6402423 () Bool)

(assert (=> b!6402423 (= e!3885547 (nullable!6304 (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686)))))))

(declare-fun b!6402424 () Bool)

(assert (=> b!6402424 (= e!3885545 (not (= (head!13113 (tail!12198 (_2!36593 lt!2373686))) (c!1167428 (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686)))))))))

(declare-fun b!6402426 () Bool)

(declare-fun res!2632456 () Bool)

(assert (=> b!6402426 (=> res!2632456 e!3885549)))

(assert (=> b!6402426 (= res!2632456 (not ((_ is ElementMatch!16311) (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686))))))))

(declare-fun e!3885543 () Bool)

(assert (=> b!6402426 (= e!3885543 e!3885549)))

(declare-fun bm!548903 () Bool)

(assert (=> bm!548903 (= call!548908 (isEmpty!37253 (tail!12198 (_2!36593 lt!2373686))))))

(declare-fun b!6402427 () Bool)

(declare-fun e!3885546 () Bool)

(assert (=> b!6402427 (= e!3885546 e!3885543)))

(declare-fun c!1168237 () Bool)

(assert (=> b!6402427 (= c!1168237 ((_ is EmptyLang!16311) (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686)))))))

(declare-fun b!6402428 () Bool)

(declare-fun res!2632459 () Bool)

(assert (=> b!6402428 (=> (not res!2632459) (not e!3885548))))

(assert (=> b!6402428 (= res!2632459 (not call!548908))))

(declare-fun b!6402429 () Bool)

(declare-fun res!2632463 () Bool)

(assert (=> b!6402429 (=> res!2632463 e!3885549)))

(assert (=> b!6402429 (= res!2632463 e!3885548)))

(declare-fun res!2632461 () Bool)

(assert (=> b!6402429 (=> (not res!2632461) (not e!3885548))))

(assert (=> b!6402429 (= res!2632461 lt!2373994)))

(declare-fun d!2007309 () Bool)

(assert (=> d!2007309 e!3885546))

(declare-fun c!1168238 () Bool)

(assert (=> d!2007309 (= c!1168238 ((_ is EmptyExpr!16311) (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686)))))))

(assert (=> d!2007309 (= lt!2373994 e!3885547)))

(declare-fun c!1168239 () Bool)

(assert (=> d!2007309 (= c!1168239 (isEmpty!37253 (tail!12198 (_2!36593 lt!2373686))))))

(assert (=> d!2007309 (validRegex!8047 (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686))))))

(assert (=> d!2007309 (= (matchR!8494 (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686))) (tail!12198 (_2!36593 lt!2373686))) lt!2373994)))

(declare-fun b!6402425 () Bool)

(assert (=> b!6402425 (= e!3885546 (= lt!2373994 call!548908))))

(declare-fun b!6402430 () Bool)

(assert (=> b!6402430 (= e!3885543 (not lt!2373994))))

(declare-fun b!6402431 () Bool)

(declare-fun res!2632462 () Bool)

(assert (=> b!6402431 (=> (not res!2632462) (not e!3885548))))

(assert (=> b!6402431 (= res!2632462 (isEmpty!37253 (tail!12198 (tail!12198 (_2!36593 lt!2373686)))))))

(assert (= (and d!2007309 c!1168239) b!6402423))

(assert (= (and d!2007309 (not c!1168239)) b!6402419))

(assert (= (and d!2007309 c!1168238) b!6402425))

(assert (= (and d!2007309 (not c!1168238)) b!6402427))

(assert (= (and b!6402427 c!1168237) b!6402430))

(assert (= (and b!6402427 (not c!1168237)) b!6402426))

(assert (= (and b!6402426 (not res!2632456)) b!6402429))

(assert (= (and b!6402429 res!2632461) b!6402428))

(assert (= (and b!6402428 res!2632459) b!6402431))

(assert (= (and b!6402431 res!2632462) b!6402421))

(assert (= (and b!6402429 (not res!2632463)) b!6402420))

(assert (= (and b!6402420 res!2632458) b!6402418))

(assert (= (and b!6402418 (not res!2632457)) b!6402422))

(assert (= (and b!6402422 (not res!2632460)) b!6402424))

(assert (= (or b!6402425 b!6402418 b!6402428) bm!548903))

(assert (=> bm!548903 m!7198020))

(assert (=> bm!548903 m!7198022))

(assert (=> b!6402424 m!7198020))

(declare-fun m!7199764 () Bool)

(assert (=> b!6402424 m!7199764))

(assert (=> b!6402431 m!7198020))

(declare-fun m!7199766 () Bool)

(assert (=> b!6402431 m!7199766))

(assert (=> b!6402431 m!7199766))

(declare-fun m!7199768 () Bool)

(assert (=> b!6402431 m!7199768))

(assert (=> b!6402421 m!7198020))

(assert (=> b!6402421 m!7199764))

(assert (=> b!6402422 m!7198020))

(assert (=> b!6402422 m!7199766))

(assert (=> b!6402422 m!7199766))

(assert (=> b!6402422 m!7199768))

(assert (=> d!2007309 m!7198020))

(assert (=> d!2007309 m!7198022))

(assert (=> d!2007309 m!7198026))

(declare-fun m!7199776 () Bool)

(assert (=> d!2007309 m!7199776))

(assert (=> b!6402419 m!7198020))

(assert (=> b!6402419 m!7199764))

(assert (=> b!6402419 m!7198026))

(assert (=> b!6402419 m!7199764))

(declare-fun m!7199782 () Bool)

(assert (=> b!6402419 m!7199782))

(assert (=> b!6402419 m!7198020))

(assert (=> b!6402419 m!7199766))

(assert (=> b!6402419 m!7199782))

(assert (=> b!6402419 m!7199766))

(declare-fun m!7199786 () Bool)

(assert (=> b!6402419 m!7199786))

(assert (=> b!6402423 m!7198026))

(declare-fun m!7199788 () Bool)

(assert (=> b!6402423 m!7199788))

(assert (=> b!6400769 d!2007309))

(declare-fun b!6402435 () Bool)

(declare-fun e!3885554 () Regex!16311)

(declare-fun call!548910 () Regex!16311)

(assert (=> b!6402435 (= e!3885554 (Union!16311 (Concat!25156 call!548910 (regTwo!33134 (regTwo!33134 r!7292))) EmptyLang!16311))))

(declare-fun b!6402436 () Bool)

(declare-fun e!3885556 () Regex!16311)

(assert (=> b!6402436 (= e!3885556 (ite (= (head!13113 (_2!36593 lt!2373686)) (c!1167428 (regTwo!33134 r!7292))) EmptyExpr!16311 EmptyLang!16311))))

(declare-fun bm!548904 () Bool)

(declare-fun call!548909 () Regex!16311)

(assert (=> bm!548904 (= call!548910 call!548909)))

(declare-fun c!1168244 () Bool)

(declare-fun bm!548905 () Bool)

(declare-fun c!1168242 () Bool)

(declare-fun call!548912 () Regex!16311)

(declare-fun c!1168241 () Bool)

(assert (=> bm!548905 (= call!548912 (derivativeStep!5015 (ite c!1168242 (regTwo!33135 (regTwo!33134 r!7292)) (ite c!1168244 (reg!16640 (regTwo!33134 r!7292)) (ite c!1168241 (regTwo!33134 (regTwo!33134 r!7292)) (regOne!33134 (regTwo!33134 r!7292))))) (head!13113 (_2!36593 lt!2373686))))))

(declare-fun bm!548906 () Bool)

(assert (=> bm!548906 (= call!548909 call!548912)))

(declare-fun b!6402437 () Bool)

(assert (=> b!6402437 (= c!1168241 (nullable!6304 (regOne!33134 (regTwo!33134 r!7292))))))

(declare-fun e!3885555 () Regex!16311)

(assert (=> b!6402437 (= e!3885555 e!3885554)))

(declare-fun d!2007313 () Bool)

(declare-fun lt!2373999 () Regex!16311)

(assert (=> d!2007313 (validRegex!8047 lt!2373999)))

(declare-fun e!3885552 () Regex!16311)

(assert (=> d!2007313 (= lt!2373999 e!3885552)))

(declare-fun c!1168243 () Bool)

(assert (=> d!2007313 (= c!1168243 (or ((_ is EmptyExpr!16311) (regTwo!33134 r!7292)) ((_ is EmptyLang!16311) (regTwo!33134 r!7292))))))

(assert (=> d!2007313 (validRegex!8047 (regTwo!33134 r!7292))))

(assert (=> d!2007313 (= (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 lt!2373686))) lt!2373999)))

(declare-fun b!6402438 () Bool)

(assert (=> b!6402438 (= e!3885552 e!3885556)))

(declare-fun c!1168245 () Bool)

(assert (=> b!6402438 (= c!1168245 ((_ is ElementMatch!16311) (regTwo!33134 r!7292)))))

(declare-fun b!6402439 () Bool)

(declare-fun e!3885553 () Regex!16311)

(declare-fun call!548911 () Regex!16311)

(assert (=> b!6402439 (= e!3885553 (Union!16311 call!548911 call!548912))))

(declare-fun bm!548907 () Bool)

(assert (=> bm!548907 (= call!548911 (derivativeStep!5015 (ite c!1168242 (regOne!33135 (regTwo!33134 r!7292)) (regOne!33134 (regTwo!33134 r!7292))) (head!13113 (_2!36593 lt!2373686))))))

(declare-fun b!6402440 () Bool)

(assert (=> b!6402440 (= e!3885553 e!3885555)))

(assert (=> b!6402440 (= c!1168244 ((_ is Star!16311) (regTwo!33134 r!7292)))))

(declare-fun b!6402441 () Bool)

(assert (=> b!6402441 (= e!3885554 (Union!16311 (Concat!25156 call!548911 (regTwo!33134 (regTwo!33134 r!7292))) call!548910))))

(declare-fun b!6402442 () Bool)

(assert (=> b!6402442 (= e!3885552 EmptyLang!16311)))

(declare-fun b!6402443 () Bool)

(assert (=> b!6402443 (= e!3885555 (Concat!25156 call!548909 (regTwo!33134 r!7292)))))

(declare-fun b!6402444 () Bool)

(assert (=> b!6402444 (= c!1168242 ((_ is Union!16311) (regTwo!33134 r!7292)))))

(assert (=> b!6402444 (= e!3885556 e!3885553)))

(assert (= (and d!2007313 c!1168243) b!6402442))

(assert (= (and d!2007313 (not c!1168243)) b!6402438))

(assert (= (and b!6402438 c!1168245) b!6402436))

(assert (= (and b!6402438 (not c!1168245)) b!6402444))

(assert (= (and b!6402444 c!1168242) b!6402439))

(assert (= (and b!6402444 (not c!1168242)) b!6402440))

(assert (= (and b!6402440 c!1168244) b!6402443))

(assert (= (and b!6402440 (not c!1168244)) b!6402437))

(assert (= (and b!6402437 c!1168241) b!6402441))

(assert (= (and b!6402437 (not c!1168241)) b!6402435))

(assert (= (or b!6402441 b!6402435) bm!548904))

(assert (= (or b!6402443 bm!548904) bm!548906))

(assert (= (or b!6402439 bm!548906) bm!548905))

(assert (= (or b!6402439 b!6402441) bm!548907))

(assert (=> bm!548905 m!7198018))

(declare-fun m!7199790 () Bool)

(assert (=> bm!548905 m!7199790))

(declare-fun m!7199792 () Bool)

(assert (=> b!6402437 m!7199792))

(declare-fun m!7199794 () Bool)

(assert (=> d!2007313 m!7199794))

(assert (=> d!2007313 m!7198024))

(assert (=> bm!548907 m!7198018))

(declare-fun m!7199796 () Bool)

(assert (=> bm!548907 m!7199796))

(assert (=> b!6400769 d!2007313))

(assert (=> b!6400769 d!2006787))

(assert (=> b!6400769 d!2006971))

(declare-fun d!2007315 () Bool)

(assert (=> d!2007315 (= (isEmpty!37252 (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343))))) ((_ is Nil!65109) (t!378841 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(assert (=> b!6400720 d!2007315))

(assert (=> d!2006509 d!2006955))

(declare-fun b!6402445 () Bool)

(declare-fun e!3885558 () Bool)

(declare-fun e!3885559 () Bool)

(assert (=> b!6402445 (= e!3885558 e!3885559)))

(declare-fun res!2632466 () Bool)

(assert (=> b!6402445 (=> res!2632466 e!3885559)))

(declare-fun call!548913 () Bool)

(assert (=> b!6402445 (= res!2632466 call!548913)))

(declare-fun b!6402446 () Bool)

(declare-fun e!3885561 () Bool)

(assert (=> b!6402446 (= e!3885561 (matchR!8494 (derivativeStep!5015 (regOne!33134 r!7292) (head!13113 Nil!65108)) (tail!12198 Nil!65108)))))

(declare-fun b!6402447 () Bool)

(declare-fun e!3885563 () Bool)

(assert (=> b!6402447 (= e!3885563 e!3885558)))

(declare-fun res!2632467 () Bool)

(assert (=> b!6402447 (=> (not res!2632467) (not e!3885558))))

(declare-fun lt!2374000 () Bool)

(assert (=> b!6402447 (= res!2632467 (not lt!2374000))))

(declare-fun b!6402448 () Bool)

(declare-fun e!3885562 () Bool)

(assert (=> b!6402448 (= e!3885562 (= (head!13113 Nil!65108) (c!1167428 (regOne!33134 r!7292))))))

(declare-fun b!6402449 () Bool)

(declare-fun res!2632469 () Bool)

(assert (=> b!6402449 (=> res!2632469 e!3885559)))

(assert (=> b!6402449 (= res!2632469 (not (isEmpty!37253 (tail!12198 Nil!65108))))))

(declare-fun b!6402450 () Bool)

(assert (=> b!6402450 (= e!3885561 (nullable!6304 (regOne!33134 r!7292)))))

(declare-fun b!6402451 () Bool)

(assert (=> b!6402451 (= e!3885559 (not (= (head!13113 Nil!65108) (c!1167428 (regOne!33134 r!7292)))))))

(declare-fun b!6402453 () Bool)

(declare-fun res!2632465 () Bool)

(assert (=> b!6402453 (=> res!2632465 e!3885563)))

(assert (=> b!6402453 (= res!2632465 (not ((_ is ElementMatch!16311) (regOne!33134 r!7292))))))

(declare-fun e!3885557 () Bool)

(assert (=> b!6402453 (= e!3885557 e!3885563)))

(declare-fun bm!548908 () Bool)

(assert (=> bm!548908 (= call!548913 (isEmpty!37253 Nil!65108))))

(declare-fun b!6402454 () Bool)

(declare-fun e!3885560 () Bool)

(assert (=> b!6402454 (= e!3885560 e!3885557)))

(declare-fun c!1168246 () Bool)

(assert (=> b!6402454 (= c!1168246 ((_ is EmptyLang!16311) (regOne!33134 r!7292)))))

(declare-fun b!6402455 () Bool)

(declare-fun res!2632468 () Bool)

(assert (=> b!6402455 (=> (not res!2632468) (not e!3885562))))

(assert (=> b!6402455 (= res!2632468 (not call!548913))))

(declare-fun b!6402456 () Bool)

(declare-fun res!2632472 () Bool)

(assert (=> b!6402456 (=> res!2632472 e!3885563)))

(assert (=> b!6402456 (= res!2632472 e!3885562)))

(declare-fun res!2632470 () Bool)

(assert (=> b!6402456 (=> (not res!2632470) (not e!3885562))))

(assert (=> b!6402456 (= res!2632470 lt!2374000)))

(declare-fun d!2007317 () Bool)

(assert (=> d!2007317 e!3885560))

(declare-fun c!1168247 () Bool)

(assert (=> d!2007317 (= c!1168247 ((_ is EmptyExpr!16311) (regOne!33134 r!7292)))))

(assert (=> d!2007317 (= lt!2374000 e!3885561)))

(declare-fun c!1168248 () Bool)

(assert (=> d!2007317 (= c!1168248 (isEmpty!37253 Nil!65108))))

(assert (=> d!2007317 (validRegex!8047 (regOne!33134 r!7292))))

(assert (=> d!2007317 (= (matchR!8494 (regOne!33134 r!7292) Nil!65108) lt!2374000)))

(declare-fun b!6402452 () Bool)

(assert (=> b!6402452 (= e!3885560 (= lt!2374000 call!548913))))

(declare-fun b!6402457 () Bool)

(assert (=> b!6402457 (= e!3885557 (not lt!2374000))))

(declare-fun b!6402458 () Bool)

(declare-fun res!2632471 () Bool)

(assert (=> b!6402458 (=> (not res!2632471) (not e!3885562))))

(assert (=> b!6402458 (= res!2632471 (isEmpty!37253 (tail!12198 Nil!65108)))))

(assert (= (and d!2007317 c!1168248) b!6402450))

(assert (= (and d!2007317 (not c!1168248)) b!6402446))

(assert (= (and d!2007317 c!1168247) b!6402452))

(assert (= (and d!2007317 (not c!1168247)) b!6402454))

(assert (= (and b!6402454 c!1168246) b!6402457))

(assert (= (and b!6402454 (not c!1168246)) b!6402453))

(assert (= (and b!6402453 (not res!2632465)) b!6402456))

(assert (= (and b!6402456 res!2632470) b!6402455))

(assert (= (and b!6402455 res!2632468) b!6402458))

(assert (= (and b!6402458 res!2632471) b!6402448))

(assert (= (and b!6402456 (not res!2632472)) b!6402447))

(assert (= (and b!6402447 res!2632467) b!6402445))

(assert (= (and b!6402445 (not res!2632466)) b!6402449))

(assert (= (and b!6402449 (not res!2632469)) b!6402451))

(assert (= (or b!6402452 b!6402445 b!6402455) bm!548908))

(declare-fun m!7199798 () Bool)

(assert (=> bm!548908 m!7199798))

(declare-fun m!7199800 () Bool)

(assert (=> b!6402451 m!7199800))

(declare-fun m!7199802 () Bool)

(assert (=> b!6402458 m!7199802))

(assert (=> b!6402458 m!7199802))

(declare-fun m!7199804 () Bool)

(assert (=> b!6402458 m!7199804))

(assert (=> b!6402448 m!7199800))

(assert (=> b!6402449 m!7199802))

(assert (=> b!6402449 m!7199802))

(assert (=> b!6402449 m!7199804))

(assert (=> d!2007317 m!7199798))

(assert (=> d!2007317 m!7197882))

(assert (=> b!6402446 m!7199800))

(assert (=> b!6402446 m!7199800))

(declare-fun m!7199806 () Bool)

(assert (=> b!6402446 m!7199806))

(assert (=> b!6402446 m!7199802))

(assert (=> b!6402446 m!7199806))

(assert (=> b!6402446 m!7199802))

(declare-fun m!7199808 () Bool)

(assert (=> b!6402446 m!7199808))

(assert (=> b!6402450 m!7198932))

(assert (=> d!2006509 d!2007317))

(assert (=> d!2006509 d!2006931))

(assert (=> b!6400559 d!2006631))

(declare-fun bs!1605724 () Bool)

(declare-fun d!2007319 () Bool)

(assert (= bs!1605724 (and d!2007319 b!6400830)))

(declare-fun lambda!353523 () Int)

(assert (=> bs!1605724 (not (= lambda!353523 lambda!353411))))

(declare-fun bs!1605725 () Bool)

(assert (= bs!1605725 (and d!2007319 b!6400832)))

(assert (=> bs!1605725 (not (= lambda!353523 lambda!353412))))

(declare-fun bs!1605726 () Bool)

(assert (= bs!1605726 (and d!2007319 d!2006733)))

(assert (=> bs!1605726 (= lambda!353523 lambda!353428)))

(declare-fun bs!1605727 () Bool)

(assert (= bs!1605727 (and d!2007319 b!6400835)))

(assert (=> bs!1605727 (not (= lambda!353523 lambda!353414))))

(declare-fun bs!1605728 () Bool)

(assert (= bs!1605728 (and d!2007319 d!2007283)))

(assert (=> bs!1605728 (not (= lambda!353523 lambda!353514))))

(declare-fun bs!1605729 () Bool)

(assert (= bs!1605729 (and d!2007319 b!6402034)))

(assert (=> bs!1605729 (not (= lambda!353523 lambda!353471))))

(declare-fun bs!1605730 () Bool)

(assert (= bs!1605730 (and d!2007319 b!6402362)))

(assert (=> bs!1605730 (not (= lambda!353523 lambda!353513))))

(declare-fun bs!1605731 () Bool)

(assert (= bs!1605731 (and d!2007319 b!6402032)))

(assert (=> bs!1605731 (not (= lambda!353523 lambda!353470))))

(declare-fun bs!1605732 () Bool)

(assert (= bs!1605732 (and d!2007319 d!2007161)))

(assert (=> bs!1605732 (= lambda!353523 lambda!353484)))

(declare-fun bs!1605734 () Bool)

(assert (= bs!1605734 (and d!2007319 b!6402360)))

(assert (=> bs!1605734 (not (= lambda!353523 lambda!353512))))

(declare-fun bs!1605736 () Bool)

(assert (= bs!1605736 (and d!2007319 d!2007033)))

(assert (=> bs!1605736 (= lambda!353523 lambda!353454)))

(declare-fun bs!1605738 () Bool)

(assert (= bs!1605738 (and d!2007319 b!6400837)))

(assert (=> bs!1605738 (not (= lambda!353523 lambda!353415))))

(declare-fun bs!1605740 () Bool)

(assert (= bs!1605740 (and d!2007319 d!2007121)))

(assert (=> bs!1605740 (not (= lambda!353523 lambda!353474))))

(assert (=> d!2007319 (= (nullableZipper!2076 lt!2373666) (exists!2591 lt!2373666 lambda!353523))))

(declare-fun bs!1605743 () Bool)

(assert (= bs!1605743 d!2007319))

(declare-fun m!7199822 () Bool)

(assert (=> bs!1605743 m!7199822))

(assert (=> b!6400329 d!2007319))

(assert (=> bm!548477 d!2006843))

(assert (=> b!6400746 d!2006633))

(declare-fun d!2007323 () Bool)

(assert (=> d!2007323 (= ($colon$colon!2172 (exprs!6195 lt!2373652) (ite (or c!1167737 c!1167738) (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (regOne!33134 r!7292)))) (Cons!65109 (ite (or c!1167737 c!1167738) (regTwo!33134 (reg!16640 (regOne!33134 r!7292))) (reg!16640 (regOne!33134 r!7292))) (exprs!6195 lt!2373652)))))

(assert (=> bm!548541 d!2007323))

(assert (=> d!2006601 d!2006599))

(declare-fun d!2007325 () Bool)

(assert (=> d!2007325 (= (flatMap!1816 z!1189 lambda!353313) (dynLambda!25841 lambda!353313 (h!71558 zl!343)))))

(assert (=> d!2007325 true))

(declare-fun _$13!3603 () Unit!158575)

(assert (=> d!2007325 (= (choose!47593 z!1189 (h!71558 zl!343) lambda!353313) _$13!3603)))

(declare-fun b_lambda!243289 () Bool)

(assert (=> (not b_lambda!243289) (not d!2007325)))

(declare-fun bs!1605750 () Bool)

(assert (= bs!1605750 d!2007325))

(assert (=> bs!1605750 m!7197106))

(assert (=> bs!1605750 m!7198114))

(assert (=> d!2006601 d!2007325))

(assert (=> b!6400758 d!2006851))

(assert (=> b!6400758 d!2006651))

(declare-fun b!6402459 () Bool)

(declare-fun res!2632474 () Bool)

(declare-fun e!3885568 () Bool)

(assert (=> b!6402459 (=> (not res!2632474) (not e!3885568))))

(declare-fun call!548916 () Bool)

(assert (=> b!6402459 (= res!2632474 call!548916)))

(declare-fun e!3885564 () Bool)

(assert (=> b!6402459 (= e!3885564 e!3885568)))

(declare-fun call!548915 () Bool)

(declare-fun c!1168249 () Bool)

(declare-fun c!1168250 () Bool)

(declare-fun bm!548909 () Bool)

(assert (=> bm!548909 (= call!548915 (validRegex!8047 (ite c!1168249 (reg!16640 (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661))) (ite c!1168250 (regTwo!33135 (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661))) (regTwo!33134 (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661)))))))))

(declare-fun b!6402460 () Bool)

(declare-fun e!3885565 () Bool)

(declare-fun e!3885566 () Bool)

(assert (=> b!6402460 (= e!3885565 e!3885566)))

(declare-fun res!2632476 () Bool)

(assert (=> b!6402460 (= res!2632476 (not (nullable!6304 (reg!16640 (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661))))))))

(assert (=> b!6402460 (=> (not res!2632476) (not e!3885566))))

(declare-fun b!6402461 () Bool)

(declare-fun e!3885570 () Bool)

(assert (=> b!6402461 (= e!3885570 e!3885565)))

(assert (=> b!6402461 (= c!1168249 ((_ is Star!16311) (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661))))))

(declare-fun b!6402462 () Bool)

(declare-fun res!2632473 () Bool)

(declare-fun e!3885569 () Bool)

(assert (=> b!6402462 (=> res!2632473 e!3885569)))

(assert (=> b!6402462 (= res!2632473 (not ((_ is Concat!25156) (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661)))))))

(assert (=> b!6402462 (= e!3885564 e!3885569)))

(declare-fun b!6402463 () Bool)

(assert (=> b!6402463 (= e!3885566 call!548915)))

(declare-fun b!6402464 () Bool)

(assert (=> b!6402464 (= e!3885565 e!3885564)))

(assert (=> b!6402464 (= c!1168250 ((_ is Union!16311) (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661))))))

(declare-fun b!6402465 () Bool)

(declare-fun call!548914 () Bool)

(assert (=> b!6402465 (= e!3885568 call!548914)))

(declare-fun b!6402466 () Bool)

(declare-fun e!3885567 () Bool)

(assert (=> b!6402466 (= e!3885567 call!548914)))

(declare-fun bm!548911 () Bool)

(assert (=> bm!548911 (= call!548914 call!548915)))

(declare-fun b!6402467 () Bool)

(assert (=> b!6402467 (= e!3885569 e!3885567)))

(declare-fun res!2632477 () Bool)

(assert (=> b!6402467 (=> (not res!2632477) (not e!3885567))))

(assert (=> b!6402467 (= res!2632477 call!548916)))

(declare-fun bm!548910 () Bool)

(assert (=> bm!548910 (= call!548916 (validRegex!8047 (ite c!1168250 (regOne!33135 (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661))) (regOne!33134 (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661))))))))

(declare-fun d!2007327 () Bool)

(declare-fun res!2632475 () Bool)

(assert (=> d!2007327 (=> res!2632475 e!3885570)))

(assert (=> d!2007327 (= res!2632475 ((_ is ElementMatch!16311) (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661))))))

(assert (=> d!2007327 (= (validRegex!8047 (ite c!1167741 (regOne!33135 lt!2373661) (regOne!33134 lt!2373661))) e!3885570)))

(assert (= (and d!2007327 (not res!2632475)) b!6402461))

(assert (= (and b!6402461 c!1168249) b!6402460))

(assert (= (and b!6402461 (not c!1168249)) b!6402464))

(assert (= (and b!6402460 res!2632476) b!6402463))

(assert (= (and b!6402464 c!1168250) b!6402459))

(assert (= (and b!6402464 (not c!1168250)) b!6402462))

(assert (= (and b!6402459 res!2632474) b!6402465))

(assert (= (and b!6402462 (not res!2632473)) b!6402467))

(assert (= (and b!6402467 res!2632477) b!6402466))

(assert (= (or b!6402465 b!6402466) bm!548911))

(assert (= (or b!6402459 b!6402467) bm!548910))

(assert (= (or b!6402463 bm!548911) bm!548909))

(declare-fun m!7199832 () Bool)

(assert (=> bm!548909 m!7199832))

(declare-fun m!7199834 () Bool)

(assert (=> b!6402460 m!7199834))

(declare-fun m!7199836 () Bool)

(assert (=> bm!548910 m!7199836))

(assert (=> bm!548544 d!2007327))

(declare-fun b!6402482 () Bool)

(declare-fun e!3885579 () Bool)

(declare-fun e!3885580 () Bool)

(assert (=> b!6402482 (= e!3885579 e!3885580)))

(declare-fun res!2632487 () Bool)

(assert (=> b!6402482 (=> res!2632487 e!3885580)))

(declare-fun call!548918 () Bool)

(assert (=> b!6402482 (= res!2632487 call!548918)))

(declare-fun b!6402483 () Bool)

(declare-fun e!3885582 () Bool)

(assert (=> b!6402483 (= e!3885582 (matchR!8494 (derivativeStep!5015 (regTwo!33134 r!7292) (head!13113 (_2!36593 (get!22550 lt!2373754)))) (tail!12198 (_2!36593 (get!22550 lt!2373754)))))))

(declare-fun b!6402484 () Bool)

(declare-fun e!3885584 () Bool)

(assert (=> b!6402484 (= e!3885584 e!3885579)))

(declare-fun res!2632488 () Bool)

(assert (=> b!6402484 (=> (not res!2632488) (not e!3885579))))

(declare-fun lt!2374003 () Bool)

(assert (=> b!6402484 (= res!2632488 (not lt!2374003))))

(declare-fun b!6402485 () Bool)

(declare-fun e!3885583 () Bool)

(assert (=> b!6402485 (= e!3885583 (= (head!13113 (_2!36593 (get!22550 lt!2373754))) (c!1167428 (regTwo!33134 r!7292))))))

(declare-fun b!6402486 () Bool)

(declare-fun res!2632490 () Bool)

(assert (=> b!6402486 (=> res!2632490 e!3885580)))

(assert (=> b!6402486 (= res!2632490 (not (isEmpty!37253 (tail!12198 (_2!36593 (get!22550 lt!2373754))))))))

(declare-fun b!6402487 () Bool)

(assert (=> b!6402487 (= e!3885582 (nullable!6304 (regTwo!33134 r!7292)))))

(declare-fun b!6402488 () Bool)

(assert (=> b!6402488 (= e!3885580 (not (= (head!13113 (_2!36593 (get!22550 lt!2373754))) (c!1167428 (regTwo!33134 r!7292)))))))

(declare-fun b!6402490 () Bool)

(declare-fun res!2632486 () Bool)

(assert (=> b!6402490 (=> res!2632486 e!3885584)))

(assert (=> b!6402490 (= res!2632486 (not ((_ is ElementMatch!16311) (regTwo!33134 r!7292))))))

(declare-fun e!3885578 () Bool)

(assert (=> b!6402490 (= e!3885578 e!3885584)))

(declare-fun bm!548913 () Bool)

(assert (=> bm!548913 (= call!548918 (isEmpty!37253 (_2!36593 (get!22550 lt!2373754))))))

(declare-fun b!6402491 () Bool)

(declare-fun e!3885581 () Bool)

(assert (=> b!6402491 (= e!3885581 e!3885578)))

(declare-fun c!1168254 () Bool)

(assert (=> b!6402491 (= c!1168254 ((_ is EmptyLang!16311) (regTwo!33134 r!7292)))))

(declare-fun b!6402492 () Bool)

(declare-fun res!2632489 () Bool)

(assert (=> b!6402492 (=> (not res!2632489) (not e!3885583))))

(assert (=> b!6402492 (= res!2632489 (not call!548918))))

(declare-fun b!6402493 () Bool)

(declare-fun res!2632493 () Bool)

(assert (=> b!6402493 (=> res!2632493 e!3885584)))

(assert (=> b!6402493 (= res!2632493 e!3885583)))

(declare-fun res!2632491 () Bool)

(assert (=> b!6402493 (=> (not res!2632491) (not e!3885583))))

(assert (=> b!6402493 (= res!2632491 lt!2374003)))

(declare-fun d!2007337 () Bool)

(assert (=> d!2007337 e!3885581))

(declare-fun c!1168255 () Bool)

(assert (=> d!2007337 (= c!1168255 ((_ is EmptyExpr!16311) (regTwo!33134 r!7292)))))

(assert (=> d!2007337 (= lt!2374003 e!3885582)))

(declare-fun c!1168256 () Bool)

(assert (=> d!2007337 (= c!1168256 (isEmpty!37253 (_2!36593 (get!22550 lt!2373754))))))

(assert (=> d!2007337 (validRegex!8047 (regTwo!33134 r!7292))))

(assert (=> d!2007337 (= (matchR!8494 (regTwo!33134 r!7292) (_2!36593 (get!22550 lt!2373754))) lt!2374003)))

(declare-fun b!6402489 () Bool)

(assert (=> b!6402489 (= e!3885581 (= lt!2374003 call!548918))))

(declare-fun b!6402494 () Bool)

(assert (=> b!6402494 (= e!3885578 (not lt!2374003))))

(declare-fun b!6402495 () Bool)

(declare-fun res!2632492 () Bool)

(assert (=> b!6402495 (=> (not res!2632492) (not e!3885583))))

(assert (=> b!6402495 (= res!2632492 (isEmpty!37253 (tail!12198 (_2!36593 (get!22550 lt!2373754)))))))

(assert (= (and d!2007337 c!1168256) b!6402487))

(assert (= (and d!2007337 (not c!1168256)) b!6402483))

(assert (= (and d!2007337 c!1168255) b!6402489))

(assert (= (and d!2007337 (not c!1168255)) b!6402491))

(assert (= (and b!6402491 c!1168254) b!6402494))

(assert (= (and b!6402491 (not c!1168254)) b!6402490))

(assert (= (and b!6402490 (not res!2632486)) b!6402493))

(assert (= (and b!6402493 res!2632491) b!6402492))

(assert (= (and b!6402492 res!2632489) b!6402495))

(assert (= (and b!6402495 res!2632492) b!6402485))

(assert (= (and b!6402493 (not res!2632493)) b!6402484))

(assert (= (and b!6402484 res!2632488) b!6402482))

(assert (= (and b!6402482 (not res!2632487)) b!6402486))

(assert (= (and b!6402486 (not res!2632490)) b!6402488))

(assert (= (or b!6402489 b!6402482 b!6402492) bm!548913))

(declare-fun m!7199842 () Bool)

(assert (=> bm!548913 m!7199842))

(declare-fun m!7199844 () Bool)

(assert (=> b!6402488 m!7199844))

(declare-fun m!7199846 () Bool)

(assert (=> b!6402495 m!7199846))

(assert (=> b!6402495 m!7199846))

(declare-fun m!7199848 () Bool)

(assert (=> b!6402495 m!7199848))

(assert (=> b!6402485 m!7199844))

(assert (=> b!6402486 m!7199846))

(assert (=> b!6402486 m!7199846))

(assert (=> b!6402486 m!7199848))

(assert (=> d!2007337 m!7199842))

(assert (=> d!2007337 m!7198024))

(assert (=> b!6402483 m!7199844))

(assert (=> b!6402483 m!7199844))

(declare-fun m!7199850 () Bool)

(assert (=> b!6402483 m!7199850))

(assert (=> b!6402483 m!7199846))

(assert (=> b!6402483 m!7199850))

(assert (=> b!6402483 m!7199846))

(declare-fun m!7199852 () Bool)

(assert (=> b!6402483 m!7199852))

(assert (=> b!6402487 m!7198030))

(assert (=> b!6400113 d!2007337))

(assert (=> b!6400113 d!2007057))

(declare-fun d!2007345 () Bool)

(assert (=> d!2007345 (= (head!13112 (exprs!6195 (h!71558 zl!343))) (h!71557 (exprs!6195 (h!71558 zl!343))))))

(assert (=> b!6400214 d!2007345))

(declare-fun b!6402507 () Bool)

(declare-fun res!2632499 () Bool)

(declare-fun e!3885596 () Bool)

(assert (=> b!6402507 (=> (not res!2632499) (not e!3885596))))

(declare-fun call!548923 () Bool)

(assert (=> b!6402507 (= res!2632499 call!548923)))

(declare-fun e!3885592 () Bool)

(assert (=> b!6402507 (= e!3885592 e!3885596)))

(declare-fun c!1168261 () Bool)

(declare-fun c!1168262 () Bool)

(declare-fun call!548922 () Bool)

(declare-fun bm!548916 () Bool)

(assert (=> bm!548916 (= call!548922 (validRegex!8047 (ite c!1168261 (reg!16640 (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292))) (ite c!1168262 (regTwo!33135 (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292))) (regTwo!33134 (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292)))))))))

(declare-fun b!6402508 () Bool)

(declare-fun e!3885593 () Bool)

(declare-fun e!3885594 () Bool)

(assert (=> b!6402508 (= e!3885593 e!3885594)))

(declare-fun res!2632501 () Bool)

(assert (=> b!6402508 (= res!2632501 (not (nullable!6304 (reg!16640 (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292))))))))

(assert (=> b!6402508 (=> (not res!2632501) (not e!3885594))))

(declare-fun b!6402509 () Bool)

(declare-fun e!3885598 () Bool)

(assert (=> b!6402509 (= e!3885598 e!3885593)))

(assert (=> b!6402509 (= c!1168261 ((_ is Star!16311) (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292))))))

(declare-fun b!6402510 () Bool)

(declare-fun res!2632498 () Bool)

(declare-fun e!3885597 () Bool)

(assert (=> b!6402510 (=> res!2632498 e!3885597)))

(assert (=> b!6402510 (= res!2632498 (not ((_ is Concat!25156) (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292)))))))

(assert (=> b!6402510 (= e!3885592 e!3885597)))

(declare-fun b!6402511 () Bool)

(assert (=> b!6402511 (= e!3885594 call!548922)))

(declare-fun b!6402512 () Bool)

(assert (=> b!6402512 (= e!3885593 e!3885592)))

(assert (=> b!6402512 (= c!1168262 ((_ is Union!16311) (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292))))))

(declare-fun b!6402513 () Bool)

(declare-fun call!548921 () Bool)

(assert (=> b!6402513 (= e!3885596 call!548921)))

(declare-fun b!6402514 () Bool)

(declare-fun e!3885595 () Bool)

(assert (=> b!6402514 (= e!3885595 call!548921)))

(declare-fun bm!548918 () Bool)

(assert (=> bm!548918 (= call!548921 call!548922)))

(declare-fun b!6402515 () Bool)

(assert (=> b!6402515 (= e!3885597 e!3885595)))

(declare-fun res!2632502 () Bool)

(assert (=> b!6402515 (=> (not res!2632502) (not e!3885595))))

(assert (=> b!6402515 (= res!2632502 call!548923)))

(declare-fun bm!548917 () Bool)

(assert (=> bm!548917 (= call!548923 (validRegex!8047 (ite c!1168262 (regOne!33135 (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292))) (regOne!33134 (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292))))))))

(declare-fun d!2007347 () Bool)

(declare-fun res!2632500 () Bool)

(assert (=> d!2007347 (=> res!2632500 e!3885598)))

(assert (=> d!2007347 (= res!2632500 ((_ is ElementMatch!16311) (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292))))))

(assert (=> d!2007347 (= (validRegex!8047 (ite c!1167679 (regOne!33135 r!7292) (regOne!33134 r!7292))) e!3885598)))

(assert (= (and d!2007347 (not res!2632500)) b!6402509))

(assert (= (and b!6402509 c!1168261) b!6402508))

(assert (= (and b!6402509 (not c!1168261)) b!6402512))

(assert (= (and b!6402508 res!2632501) b!6402511))

(assert (= (and b!6402512 c!1168262) b!6402507))

(assert (= (and b!6402512 (not c!1168262)) b!6402510))

(assert (= (and b!6402507 res!2632499) b!6402513))

(assert (= (and b!6402510 (not res!2632498)) b!6402515))

(assert (= (and b!6402515 res!2632502) b!6402514))

(assert (= (or b!6402513 b!6402514) bm!548918))

(assert (= (or b!6402507 b!6402515) bm!548917))

(assert (= (or b!6402511 bm!548918) bm!548916))

(declare-fun m!7199854 () Bool)

(assert (=> bm!548916 m!7199854))

(declare-fun m!7199856 () Bool)

(assert (=> b!6402508 m!7199856))

(declare-fun m!7199858 () Bool)

(assert (=> bm!548917 m!7199858))

(assert (=> bm!548490 d!2007347))

(declare-fun d!2007349 () Bool)

(assert (=> d!2007349 (= (nullable!6304 (h!71557 (exprs!6195 lt!2373669))) (nullableFct!2250 (h!71557 (exprs!6195 lt!2373669))))))

(declare-fun bs!1605757 () Bool)

(assert (= bs!1605757 d!2007349))

(declare-fun m!7199860 () Bool)

(assert (=> bs!1605757 m!7199860))

(assert (=> b!6400601 d!2007349))

(assert (=> b!6400774 d!2006787))

(declare-fun bs!1605759 () Bool)

(declare-fun d!2007351 () Bool)

(assert (= bs!1605759 (and d!2007351 b!6400830)))

(declare-fun lambda!353526 () Int)

(assert (=> bs!1605759 (not (= lambda!353526 lambda!353411))))

(declare-fun bs!1605761 () Bool)

(assert (= bs!1605761 (and d!2007351 b!6400832)))

(assert (=> bs!1605761 (not (= lambda!353526 lambda!353412))))

(declare-fun bs!1605763 () Bool)

(assert (= bs!1605763 (and d!2007351 d!2006733)))

(assert (=> bs!1605763 (= lambda!353526 lambda!353428)))

(declare-fun bs!1605764 () Bool)

(assert (= bs!1605764 (and d!2007351 b!6400835)))

(assert (=> bs!1605764 (not (= lambda!353526 lambda!353414))))

(declare-fun bs!1605766 () Bool)

(assert (= bs!1605766 (and d!2007351 d!2007283)))

(assert (=> bs!1605766 (not (= lambda!353526 lambda!353514))))

(declare-fun bs!1605768 () Bool)

(assert (= bs!1605768 (and d!2007351 b!6402034)))

(assert (=> bs!1605768 (not (= lambda!353526 lambda!353471))))

(declare-fun bs!1605769 () Bool)

(assert (= bs!1605769 (and d!2007351 b!6402362)))

(assert (=> bs!1605769 (not (= lambda!353526 lambda!353513))))

(declare-fun bs!1605771 () Bool)

(assert (= bs!1605771 (and d!2007351 b!6402032)))

(assert (=> bs!1605771 (not (= lambda!353526 lambda!353470))))

(declare-fun bs!1605772 () Bool)

(assert (= bs!1605772 (and d!2007351 d!2007319)))

(assert (=> bs!1605772 (= lambda!353526 lambda!353523)))

(declare-fun bs!1605774 () Bool)

(assert (= bs!1605774 (and d!2007351 d!2007161)))

(assert (=> bs!1605774 (= lambda!353526 lambda!353484)))

(declare-fun bs!1605776 () Bool)

(assert (= bs!1605776 (and d!2007351 b!6402360)))

(assert (=> bs!1605776 (not (= lambda!353526 lambda!353512))))

(declare-fun bs!1605777 () Bool)

(assert (= bs!1605777 (and d!2007351 d!2007033)))

(assert (=> bs!1605777 (= lambda!353526 lambda!353454)))

(declare-fun bs!1605778 () Bool)

(assert (= bs!1605778 (and d!2007351 b!6400837)))

(assert (=> bs!1605778 (not (= lambda!353526 lambda!353415))))

(declare-fun bs!1605779 () Bool)

(assert (= bs!1605779 (and d!2007351 d!2007121)))

(assert (=> bs!1605779 (not (= lambda!353526 lambda!353474))))

(assert (=> d!2007351 (= (nullableZipper!2076 lt!2373665) (exists!2591 lt!2373665 lambda!353526))))

(declare-fun bs!1605781 () Bool)

(assert (= bs!1605781 d!2007351))

(declare-fun m!7199862 () Bool)

(assert (=> bs!1605781 m!7199862))

(assert (=> b!6400553 d!2007351))

(declare-fun d!2007353 () Bool)

(assert (=> d!2007353 (= (isEmptyExpr!1711 lt!2373831) ((_ is EmptyExpr!16311) lt!2373831))))

(assert (=> b!6400725 d!2007353))

(assert (=> bm!548521 d!2006843))

(declare-fun d!2007355 () Bool)

(declare-fun c!1168263 () Bool)

(assert (=> d!2007355 (= c!1168263 (isEmpty!37253 (tail!12198 (t!378840 s!2326))))))

(declare-fun e!3885599 () Bool)

(assert (=> d!2007355 (= (matchZipper!2323 (derivationStepZipper!2277 lt!2373668 (head!13113 (t!378840 s!2326))) (tail!12198 (t!378840 s!2326))) e!3885599)))

(declare-fun b!6402516 () Bool)

(assert (=> b!6402516 (= e!3885599 (nullableZipper!2076 (derivationStepZipper!2277 lt!2373668 (head!13113 (t!378840 s!2326)))))))

(declare-fun b!6402517 () Bool)

(assert (=> b!6402517 (= e!3885599 (matchZipper!2323 (derivationStepZipper!2277 (derivationStepZipper!2277 lt!2373668 (head!13113 (t!378840 s!2326))) (head!13113 (tail!12198 (t!378840 s!2326)))) (tail!12198 (tail!12198 (t!378840 s!2326)))))))

(assert (= (and d!2007355 c!1168263) b!6402516))

(assert (= (and d!2007355 (not c!1168263)) b!6402517))

(assert (=> d!2007355 m!7197644))

(assert (=> d!2007355 m!7198300))

(assert (=> b!6402516 m!7198080))

(declare-fun m!7199864 () Bool)

(assert (=> b!6402516 m!7199864))

(assert (=> b!6402517 m!7197644))

(assert (=> b!6402517 m!7198305))

(assert (=> b!6402517 m!7198080))

(assert (=> b!6402517 m!7198305))

(declare-fun m!7199866 () Bool)

(assert (=> b!6402517 m!7199866))

(assert (=> b!6402517 m!7197644))

(assert (=> b!6402517 m!7198310))

(assert (=> b!6402517 m!7199866))

(assert (=> b!6402517 m!7198310))

(declare-fun m!7199868 () Bool)

(assert (=> b!6402517 m!7199868))

(assert (=> b!6400842 d!2007355))

(declare-fun bs!1605786 () Bool)

(declare-fun d!2007357 () Bool)

(assert (= bs!1605786 (and d!2007357 d!2006951)))

(declare-fun lambda!353527 () Int)

(assert (=> bs!1605786 (= (= (head!13113 (t!378840 s!2326)) (head!13113 s!2326)) (= lambda!353527 lambda!353449))))

(declare-fun bs!1605788 () Bool)

(assert (= bs!1605788 (and d!2007357 d!2006719)))

(assert (=> bs!1605788 (= lambda!353527 lambda!353425)))

(declare-fun bs!1605789 () Bool)

(assert (= bs!1605789 (and d!2007357 d!2006491)))

(assert (=> bs!1605789 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353527 lambda!353390))))

(declare-fun bs!1605790 () Bool)

(assert (= bs!1605790 (and d!2007357 d!2006529)))

(assert (=> bs!1605790 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353527 lambda!353396))))

(declare-fun bs!1605791 () Bool)

(assert (= bs!1605791 (and d!2007357 d!2007243)))

(assert (=> bs!1605791 (= lambda!353527 lambda!353506)))

(declare-fun bs!1605792 () Bool)

(assert (= bs!1605792 (and d!2007357 b!6399793)))

(assert (=> bs!1605792 (= (= (head!13113 (t!378840 s!2326)) (h!71556 s!2326)) (= lambda!353527 lambda!353313))))

(declare-fun bs!1605793 () Bool)

(assert (= bs!1605793 (and d!2007357 d!2006781)))

(assert (=> bs!1605793 (= lambda!353527 lambda!353429)))

(assert (=> d!2007357 true))

(assert (=> d!2007357 (= (derivationStepZipper!2277 lt!2373668 (head!13113 (t!378840 s!2326))) (flatMap!1816 lt!2373668 lambda!353527))))

(declare-fun bs!1605794 () Bool)

(assert (= bs!1605794 d!2007357))

(declare-fun m!7199870 () Bool)

(assert (=> bs!1605794 m!7199870))

(assert (=> b!6400842 d!2007357))

(assert (=> b!6400842 d!2006721))

(assert (=> b!6400842 d!2006723))

(declare-fun b!6402518 () Bool)

(declare-fun e!3885601 () (InoxSet Context!11390))

(declare-fun call!548926 () (InoxSet Context!11390))

(declare-fun call!548929 () (InoxSet Context!11390))

(assert (=> b!6402518 (= e!3885601 ((_ map or) call!548926 call!548929))))

(declare-fun b!6402519 () Bool)

(declare-fun c!1168266 () Bool)

(declare-fun e!3885604 () Bool)

(assert (=> b!6402519 (= c!1168266 e!3885604)))

(declare-fun res!2632503 () Bool)

(assert (=> b!6402519 (=> (not res!2632503) (not e!3885604))))

(assert (=> b!6402519 (= res!2632503 ((_ is Concat!25156) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun e!3885603 () (InoxSet Context!11390))

(assert (=> b!6402519 (= e!3885601 e!3885603)))

(declare-fun bm!548919 () Bool)

(declare-fun call!548928 () (InoxSet Context!11390))

(assert (=> bm!548919 (= call!548928 call!548926)))

(declare-fun call!548924 () List!65233)

(declare-fun bm!548920 () Bool)

(declare-fun c!1168264 () Bool)

(assert (=> bm!548920 (= call!548929 (derivationStepZipperDown!1559 (ite c!1168264 (regTwo!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))) (ite c!1168264 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))) (Context!11391 call!548924)) (h!71556 s!2326)))))

(declare-fun b!6402520 () Bool)

(declare-fun e!3885602 () (InoxSet Context!11390))

(assert (=> b!6402520 (= e!3885602 e!3885601)))

(assert (=> b!6402520 (= c!1168264 ((_ is Union!16311) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6402521 () Bool)

(assert (=> b!6402521 (= e!3885603 ((_ map or) call!548929 call!548928))))

(declare-fun bm!548921 () Bool)

(declare-fun call!548925 () List!65233)

(assert (=> bm!548921 (= call!548925 call!548924)))

(declare-fun b!6402522 () Bool)

(declare-fun e!3885605 () (InoxSet Context!11390))

(assert (=> b!6402522 (= e!3885603 e!3885605)))

(declare-fun c!1168267 () Bool)

(assert (=> b!6402522 (= c!1168267 ((_ is Concat!25156) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun b!6402523 () Bool)

(declare-fun call!548927 () (InoxSet Context!11390))

(assert (=> b!6402523 (= e!3885605 call!548927)))

(declare-fun bm!548922 () Bool)

(assert (=> bm!548922 (= call!548926 (derivationStepZipperDown!1559 (ite c!1168264 (regOne!33135 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1168266 (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (ite c!1168267 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (reg!16640 (h!71557 (exprs!6195 (h!71558 zl!343))))))) (ite (or c!1168264 c!1168266) (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))) (Context!11391 call!548925)) (h!71556 s!2326)))))

(declare-fun b!6402524 () Bool)

(declare-fun e!3885600 () (InoxSet Context!11390))

(assert (=> b!6402524 (= e!3885600 call!548927)))

(declare-fun bm!548923 () Bool)

(assert (=> bm!548923 (= call!548924 ($colon$colon!2172 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343))))) (ite (or c!1168266 c!1168267) (regTwo!33134 (h!71557 (exprs!6195 (h!71558 zl!343)))) (h!71557 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun d!2007359 () Bool)

(declare-fun c!1168268 () Bool)

(assert (=> d!2007359 (= c!1168268 (and ((_ is ElementMatch!16311) (h!71557 (exprs!6195 (h!71558 zl!343)))) (= (c!1167428 (h!71557 (exprs!6195 (h!71558 zl!343)))) (h!71556 s!2326))))))

(assert (=> d!2007359 (= (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (h!71558 zl!343))) (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))) (h!71556 s!2326)) e!3885602)))

(declare-fun b!6402525 () Bool)

(assert (=> b!6402525 (= e!3885600 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6402526 () Bool)

(declare-fun c!1168265 () Bool)

(assert (=> b!6402526 (= c!1168265 ((_ is Star!16311) (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> b!6402526 (= e!3885605 e!3885600)))

(declare-fun b!6402527 () Bool)

(assert (=> b!6402527 (= e!3885602 (store ((as const (Array Context!11390 Bool)) false) (Context!11391 (t!378841 (exprs!6195 (h!71558 zl!343)))) true))))

(declare-fun b!6402528 () Bool)

(assert (=> b!6402528 (= e!3885604 (nullable!6304 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun bm!548924 () Bool)

(assert (=> bm!548924 (= call!548927 call!548928)))

(assert (= (and d!2007359 c!1168268) b!6402527))

(assert (= (and d!2007359 (not c!1168268)) b!6402520))

(assert (= (and b!6402520 c!1168264) b!6402518))

(assert (= (and b!6402520 (not c!1168264)) b!6402519))

(assert (= (and b!6402519 res!2632503) b!6402528))

(assert (= (and b!6402519 c!1168266) b!6402521))

(assert (= (and b!6402519 (not c!1168266)) b!6402522))

(assert (= (and b!6402522 c!1168267) b!6402523))

(assert (= (and b!6402522 (not c!1168267)) b!6402526))

(assert (= (and b!6402526 c!1168265) b!6402524))

(assert (= (and b!6402526 (not c!1168265)) b!6402525))

(assert (= (or b!6402523 b!6402524) bm!548921))

(assert (= (or b!6402523 b!6402524) bm!548924))

(assert (= (or b!6402521 bm!548921) bm!548923))

(assert (= (or b!6402521 bm!548924) bm!548919))

(assert (= (or b!6402518 b!6402521) bm!548920))

(assert (= (or b!6402518 bm!548919) bm!548922))

(declare-fun m!7199872 () Bool)

(assert (=> bm!548920 m!7199872))

(declare-fun m!7199874 () Bool)

(assert (=> bm!548922 m!7199874))

(declare-fun m!7199876 () Bool)

(assert (=> b!6402527 m!7199876))

(assert (=> b!6402528 m!7198108))

(declare-fun m!7199878 () Bool)

(assert (=> bm!548923 m!7199878))

(assert (=> bm!548547 d!2007359))

(declare-fun b!6402529 () Bool)

(declare-fun e!3885607 () (InoxSet Context!11390))

(declare-fun call!548932 () (InoxSet Context!11390))

(declare-fun call!548935 () (InoxSet Context!11390))

(assert (=> b!6402529 (= e!3885607 ((_ map or) call!548932 call!548935))))

(declare-fun b!6402530 () Bool)

(declare-fun c!1168271 () Bool)

(declare-fun e!3885610 () Bool)

(assert (=> b!6402530 (= c!1168271 e!3885610)))

(declare-fun res!2632504 () Bool)

(assert (=> b!6402530 (=> (not res!2632504) (not e!3885610))))

(assert (=> b!6402530 (= res!2632504 ((_ is Concat!25156) (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))))))

(declare-fun e!3885609 () (InoxSet Context!11390))

(assert (=> b!6402530 (= e!3885607 e!3885609)))

(declare-fun bm!548925 () Bool)

(declare-fun call!548934 () (InoxSet Context!11390))

(assert (=> bm!548925 (= call!548934 call!548932)))

(declare-fun bm!548926 () Bool)

(declare-fun call!548930 () List!65233)

(declare-fun c!1168269 () Bool)

(assert (=> bm!548926 (= call!548935 (derivationStepZipperDown!1559 (ite c!1168269 (regTwo!33135 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (regOne!33134 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))))) (ite c!1168269 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (Context!11391 call!548930)) (h!71556 s!2326)))))

(declare-fun b!6402531 () Bool)

(declare-fun e!3885608 () (InoxSet Context!11390))

(assert (=> b!6402531 (= e!3885608 e!3885607)))

(assert (=> b!6402531 (= c!1168269 ((_ is Union!16311) (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))))))

(declare-fun b!6402532 () Bool)

(assert (=> b!6402532 (= e!3885609 ((_ map or) call!548935 call!548934))))

(declare-fun bm!548927 () Bool)

(declare-fun call!548931 () List!65233)

(assert (=> bm!548927 (= call!548931 call!548930)))

(declare-fun b!6402533 () Bool)

(declare-fun e!3885611 () (InoxSet Context!11390))

(assert (=> b!6402533 (= e!3885609 e!3885611)))

(declare-fun c!1168272 () Bool)

(assert (=> b!6402533 (= c!1168272 ((_ is Concat!25156) (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))))))

(declare-fun b!6402534 () Bool)

(declare-fun call!548933 () (InoxSet Context!11390))

(assert (=> b!6402534 (= e!3885611 call!548933)))

(declare-fun bm!548928 () Bool)

(assert (=> bm!548928 (= call!548932 (derivationStepZipperDown!1559 (ite c!1168269 (regOne!33135 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (ite c!1168271 (regTwo!33134 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (ite c!1168272 (regOne!33134 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (reg!16640 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))))))) (ite (or c!1168269 c!1168271) (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (Context!11391 call!548931)) (h!71556 s!2326)))))

(declare-fun b!6402535 () Bool)

(declare-fun e!3885606 () (InoxSet Context!11390))

(assert (=> b!6402535 (= e!3885606 call!548933)))

(declare-fun bm!548929 () Bool)

(assert (=> bm!548929 (= call!548930 ($colon$colon!2172 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))))) (ite (or c!1168271 c!1168272) (regTwo!33134 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))))))))

(declare-fun d!2007361 () Bool)

(declare-fun c!1168273 () Bool)

(assert (=> d!2007361 (= c!1168273 (and ((_ is ElementMatch!16311) (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (= (c!1167428 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (h!71556 s!2326))))))

(assert (=> d!2007361 (= (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))) (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) (h!71556 s!2326)) e!3885608)))

(declare-fun b!6402536 () Bool)

(assert (=> b!6402536 (= e!3885606 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6402537 () Bool)

(declare-fun c!1168270 () Bool)

(assert (=> b!6402537 (= c!1168270 ((_ is Star!16311) (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))))))

(assert (=> b!6402537 (= e!3885611 e!3885606)))

(declare-fun b!6402538 () Bool)

(assert (=> b!6402538 (= e!3885608 (store ((as const (Array Context!11390 Bool)) false) (Context!11391 (t!378841 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343)))))))) true))))

(declare-fun b!6402539 () Bool)

(assert (=> b!6402539 (= e!3885610 (nullable!6304 (regOne!33134 (h!71557 (exprs!6195 (Context!11391 (Cons!65109 (h!71557 (exprs!6195 (h!71558 zl!343))) (t!378841 (exprs!6195 (h!71558 zl!343))))))))))))

(declare-fun bm!548930 () Bool)

(assert (=> bm!548930 (= call!548933 call!548934)))

(assert (= (and d!2007361 c!1168273) b!6402538))

(assert (= (and d!2007361 (not c!1168273)) b!6402531))

(assert (= (and b!6402531 c!1168269) b!6402529))

(assert (= (and b!6402531 (not c!1168269)) b!6402530))

(assert (= (and b!6402530 res!2632504) b!6402539))

(assert (= (and b!6402530 c!1168271) b!6402532))

(assert (= (and b!6402530 (not c!1168271)) b!6402533))

(assert (= (and b!6402533 c!1168272) b!6402534))

(assert (= (and b!6402533 (not c!1168272)) b!6402537))

(assert (= (and b!6402537 c!1168270) b!6402535))

(assert (= (and b!6402537 (not c!1168270)) b!6402536))

(assert (= (or b!6402534 b!6402535) bm!548927))

(assert (= (or b!6402534 b!6402535) bm!548930))

(assert (= (or b!6402532 bm!548927) bm!548929))

(assert (= (or b!6402532 bm!548930) bm!548925))

(assert (= (or b!6402529 b!6402532) bm!548926))

(assert (= (or b!6402529 bm!548925) bm!548928))

(declare-fun m!7199880 () Bool)

(assert (=> bm!548926 m!7199880))

(declare-fun m!7199882 () Bool)

(assert (=> bm!548928 m!7199882))

(declare-fun m!7199884 () Bool)

(assert (=> b!6402538 m!7199884))

(declare-fun m!7199886 () Bool)

(assert (=> b!6402539 m!7199886))

(declare-fun m!7199888 () Bool)

(assert (=> bm!548929 m!7199888))

(assert (=> bm!548546 d!2007361))

(declare-fun d!2007363 () Bool)

(assert (=> d!2007363 (= (nullable!6304 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))) (nullableFct!2250 (regOne!33134 (h!71557 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun bs!1605813 () Bool)

(assert (= bs!1605813 d!2007363))

(declare-fun m!7199890 () Bool)

(assert (=> bs!1605813 m!7199890))

(assert (=> b!6400865 d!2007363))

(assert (=> d!2006369 d!2007141))

(declare-fun b!6402540 () Bool)

(declare-fun e!3885613 () Bool)

(declare-fun e!3885614 () Bool)

(assert (=> b!6402540 (= e!3885613 e!3885614)))

(declare-fun res!2632506 () Bool)

(assert (=> b!6402540 (=> res!2632506 e!3885614)))

(declare-fun call!548936 () Bool)

(assert (=> b!6402540 (= res!2632506 call!548936)))

(declare-fun b!6402541 () Bool)

(declare-fun e!3885616 () Bool)

(assert (=> b!6402541 (= e!3885616 (matchR!8494 (derivativeStep!5015 lt!2373664 (head!13113 Nil!65108)) (tail!12198 Nil!65108)))))

(declare-fun b!6402542 () Bool)

(declare-fun e!3885618 () Bool)

(assert (=> b!6402542 (= e!3885618 e!3885613)))

(declare-fun res!2632507 () Bool)

(assert (=> b!6402542 (=> (not res!2632507) (not e!3885613))))

(declare-fun lt!2374004 () Bool)

(assert (=> b!6402542 (= res!2632507 (not lt!2374004))))

(declare-fun b!6402543 () Bool)

(declare-fun e!3885617 () Bool)

(assert (=> b!6402543 (= e!3885617 (= (head!13113 Nil!65108) (c!1167428 lt!2373664)))))

(declare-fun b!6402544 () Bool)

(declare-fun res!2632509 () Bool)

(assert (=> b!6402544 (=> res!2632509 e!3885614)))

(assert (=> b!6402544 (= res!2632509 (not (isEmpty!37253 (tail!12198 Nil!65108))))))

(declare-fun b!6402545 () Bool)

(assert (=> b!6402545 (= e!3885616 (nullable!6304 lt!2373664))))

(declare-fun b!6402546 () Bool)

(assert (=> b!6402546 (= e!3885614 (not (= (head!13113 Nil!65108) (c!1167428 lt!2373664))))))

(declare-fun b!6402548 () Bool)

(declare-fun res!2632505 () Bool)

(assert (=> b!6402548 (=> res!2632505 e!3885618)))

(assert (=> b!6402548 (= res!2632505 (not ((_ is ElementMatch!16311) lt!2373664)))))

(declare-fun e!3885612 () Bool)

(assert (=> b!6402548 (= e!3885612 e!3885618)))

(declare-fun bm!548931 () Bool)

(assert (=> bm!548931 (= call!548936 (isEmpty!37253 Nil!65108))))

(declare-fun b!6402549 () Bool)

(declare-fun e!3885615 () Bool)

(assert (=> b!6402549 (= e!3885615 e!3885612)))

(declare-fun c!1168274 () Bool)

(assert (=> b!6402549 (= c!1168274 ((_ is EmptyLang!16311) lt!2373664))))

(declare-fun b!6402550 () Bool)

(declare-fun res!2632508 () Bool)

(assert (=> b!6402550 (=> (not res!2632508) (not e!3885617))))

(assert (=> b!6402550 (= res!2632508 (not call!548936))))

(declare-fun b!6402551 () Bool)

(declare-fun res!2632512 () Bool)

(assert (=> b!6402551 (=> res!2632512 e!3885618)))

(assert (=> b!6402551 (= res!2632512 e!3885617)))

(declare-fun res!2632510 () Bool)

(assert (=> b!6402551 (=> (not res!2632510) (not e!3885617))))

(assert (=> b!6402551 (= res!2632510 lt!2374004)))

(declare-fun d!2007365 () Bool)

(assert (=> d!2007365 e!3885615))

(declare-fun c!1168275 () Bool)

(assert (=> d!2007365 (= c!1168275 ((_ is EmptyExpr!16311) lt!2373664))))

(assert (=> d!2007365 (= lt!2374004 e!3885616)))

(declare-fun c!1168276 () Bool)

(assert (=> d!2007365 (= c!1168276 (isEmpty!37253 Nil!65108))))

(assert (=> d!2007365 (validRegex!8047 lt!2373664)))

(assert (=> d!2007365 (= (matchR!8494 lt!2373664 Nil!65108) lt!2374004)))

(declare-fun b!6402547 () Bool)

(assert (=> b!6402547 (= e!3885615 (= lt!2374004 call!548936))))

(declare-fun b!6402552 () Bool)

(assert (=> b!6402552 (= e!3885612 (not lt!2374004))))

(declare-fun b!6402553 () Bool)

(declare-fun res!2632511 () Bool)

(assert (=> b!6402553 (=> (not res!2632511) (not e!3885617))))

(assert (=> b!6402553 (= res!2632511 (isEmpty!37253 (tail!12198 Nil!65108)))))

(assert (= (and d!2007365 c!1168276) b!6402545))

(assert (= (and d!2007365 (not c!1168276)) b!6402541))

(assert (= (and d!2007365 c!1168275) b!6402547))

(assert (= (and d!2007365 (not c!1168275)) b!6402549))

(assert (= (and b!6402549 c!1168274) b!6402552))

(assert (= (and b!6402549 (not c!1168274)) b!6402548))

(assert (= (and b!6402548 (not res!2632505)) b!6402551))

(assert (= (and b!6402551 res!2632510) b!6402550))

(assert (= (and b!6402550 res!2632508) b!6402553))

(assert (= (and b!6402553 res!2632511) b!6402543))

(assert (= (and b!6402551 (not res!2632512)) b!6402542))

(assert (= (and b!6402542 res!2632507) b!6402540))

(assert (= (and b!6402540 (not res!2632506)) b!6402544))

(assert (= (and b!6402544 (not res!2632509)) b!6402546))

(assert (= (or b!6402547 b!6402540 b!6402550) bm!548931))

(assert (=> bm!548931 m!7199798))

(assert (=> b!6402546 m!7199800))

(assert (=> b!6402553 m!7199802))

(assert (=> b!6402553 m!7199802))

(assert (=> b!6402553 m!7199804))

(assert (=> b!6402543 m!7199800))

(assert (=> b!6402544 m!7199802))

(assert (=> b!6402544 m!7199802))

(assert (=> b!6402544 m!7199804))

(assert (=> d!2007365 m!7199798))

(assert (=> d!2007365 m!7197394))

(assert (=> b!6402541 m!7199800))

(assert (=> b!6402541 m!7199800))

(declare-fun m!7199900 () Bool)

(assert (=> b!6402541 m!7199900))

(assert (=> b!6402541 m!7199802))

(assert (=> b!6402541 m!7199900))

(assert (=> b!6402541 m!7199802))

(declare-fun m!7199902 () Bool)

(assert (=> b!6402541 m!7199902))

(assert (=> b!6402545 m!7198014))

(assert (=> d!2006369 d!2007365))

(assert (=> d!2006369 d!2007179))

(assert (=> bm!548523 d!2006581))

(declare-fun d!2007373 () Bool)

(assert (=> d!2007373 (= (head!13112 (t!378841 (exprs!6195 (h!71558 zl!343)))) (h!71557 (t!378841 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> b!6400721 d!2007373))

(declare-fun d!2007375 () Bool)

(declare-fun res!2632514 () Bool)

(declare-fun e!3885620 () Bool)

(assert (=> d!2007375 (=> res!2632514 e!3885620)))

(assert (=> d!2007375 (= res!2632514 ((_ is Nil!65110) zl!343))))

(assert (=> d!2007375 (= (forall!15497 zl!343 lambda!353412) e!3885620)))

(declare-fun b!6402555 () Bool)

(declare-fun e!3885621 () Bool)

(assert (=> b!6402555 (= e!3885620 e!3885621)))

(declare-fun res!2632515 () Bool)

(assert (=> b!6402555 (=> (not res!2632515) (not e!3885621))))

(assert (=> b!6402555 (= res!2632515 (dynLambda!25845 lambda!353412 (h!71558 zl!343)))))

(declare-fun b!6402556 () Bool)

(assert (=> b!6402556 (= e!3885621 (forall!15497 (t!378842 zl!343) lambda!353412))))

(assert (= (and d!2007375 (not res!2632514)) b!6402555))

(assert (= (and b!6402555 res!2632515) b!6402556))

(declare-fun b_lambda!243291 () Bool)

(assert (=> (not b_lambda!243291) (not b!6402555)))

(declare-fun m!7199904 () Bool)

(assert (=> b!6402555 m!7199904))

(declare-fun m!7199906 () Bool)

(assert (=> b!6402556 m!7199906))

(assert (=> b!6400832 d!2007375))

(assert (=> bs!1604851 d!2006389))

(declare-fun b!6402557 () Bool)

(declare-fun e!3885623 () (InoxSet Context!11390))

(declare-fun call!548939 () (InoxSet Context!11390))

(declare-fun call!548942 () (InoxSet Context!11390))

(assert (=> b!6402557 (= e!3885623 ((_ map or) call!548939 call!548942))))

(declare-fun b!6402558 () Bool)

(declare-fun c!1168279 () Bool)

(declare-fun e!3885626 () Bool)

(assert (=> b!6402558 (= c!1168279 e!3885626)))

(declare-fun res!2632516 () Bool)

(assert (=> b!6402558 (=> (not res!2632516) (not e!3885626))))

(assert (=> b!6402558 (= res!2632516 ((_ is Concat!25156) (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))))))

(declare-fun e!3885625 () (InoxSet Context!11390))

(assert (=> b!6402558 (= e!3885623 e!3885625)))

(declare-fun bm!548932 () Bool)

(declare-fun call!548941 () (InoxSet Context!11390))

(assert (=> bm!548932 (= call!548941 call!548939)))

(declare-fun c!1168277 () Bool)

(declare-fun bm!548933 () Bool)

(declare-fun call!548937 () List!65233)

(assert (=> bm!548933 (= call!548942 (derivationStepZipperDown!1559 (ite c!1168277 (regTwo!33135 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))) (regOne!33134 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292)))))) (ite c!1168277 (ite c!1167735 lt!2373652 (Context!11391 call!548542)) (Context!11391 call!548937)) (h!71556 s!2326)))))

(declare-fun b!6402559 () Bool)

(declare-fun e!3885624 () (InoxSet Context!11390))

(assert (=> b!6402559 (= e!3885624 e!3885623)))

(assert (=> b!6402559 (= c!1168277 ((_ is Union!16311) (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))))))

(declare-fun b!6402560 () Bool)

(assert (=> b!6402560 (= e!3885625 ((_ map or) call!548942 call!548941))))

(declare-fun bm!548934 () Bool)

(declare-fun call!548938 () List!65233)

(assert (=> bm!548934 (= call!548938 call!548937)))

(declare-fun b!6402561 () Bool)

(declare-fun e!3885627 () (InoxSet Context!11390))

(assert (=> b!6402561 (= e!3885625 e!3885627)))

(declare-fun c!1168280 () Bool)

(assert (=> b!6402561 (= c!1168280 ((_ is Concat!25156) (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))))))

(declare-fun b!6402562 () Bool)

(declare-fun call!548940 () (InoxSet Context!11390))

(assert (=> b!6402562 (= e!3885627 call!548940)))

(declare-fun bm!548935 () Bool)

(assert (=> bm!548935 (= call!548939 (derivationStepZipperDown!1559 (ite c!1168277 (regOne!33135 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))) (ite c!1168279 (regTwo!33134 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))) (ite c!1168280 (regOne!33134 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))) (reg!16640 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292)))))))) (ite (or c!1168277 c!1168279) (ite c!1167735 lt!2373652 (Context!11391 call!548542)) (Context!11391 call!548938)) (h!71556 s!2326)))))

(declare-fun b!6402563 () Bool)

(declare-fun e!3885622 () (InoxSet Context!11390))

(assert (=> b!6402563 (= e!3885622 call!548940)))

(declare-fun bm!548936 () Bool)

(assert (=> bm!548936 (= call!548937 ($colon$colon!2172 (exprs!6195 (ite c!1167735 lt!2373652 (Context!11391 call!548542))) (ite (or c!1168279 c!1168280) (regTwo!33134 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))) (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292)))))))))

(declare-fun d!2007377 () Bool)

(declare-fun c!1168281 () Bool)

(assert (=> d!2007377 (= c!1168281 (and ((_ is ElementMatch!16311) (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))) (= (c!1167428 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))) (h!71556 s!2326))))))

(assert (=> d!2007377 (= (derivationStepZipperDown!1559 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292)))) (ite c!1167735 lt!2373652 (Context!11391 call!548542)) (h!71556 s!2326)) e!3885624)))

(declare-fun b!6402564 () Bool)

(assert (=> b!6402564 (= e!3885622 ((as const (Array Context!11390 Bool)) false))))

(declare-fun b!6402565 () Bool)

(declare-fun c!1168278 () Bool)

(assert (=> b!6402565 (= c!1168278 ((_ is Star!16311) (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292))))))))

(assert (=> b!6402565 (= e!3885627 e!3885622)))

(declare-fun b!6402566 () Bool)

(assert (=> b!6402566 (= e!3885624 (store ((as const (Array Context!11390 Bool)) false) (ite c!1167735 lt!2373652 (Context!11391 call!548542)) true))))

(declare-fun b!6402567 () Bool)

(assert (=> b!6402567 (= e!3885626 (nullable!6304 (regOne!33134 (ite c!1167735 (regTwo!33135 (reg!16640 (regOne!33134 r!7292))) (regOne!33134 (reg!16640 (regOne!33134 r!7292)))))))))

(declare-fun bm!548937 () Bool)

(assert (=> bm!548937 (= call!548940 call!548941)))

(assert (= (and d!2007377 c!1168281) b!6402566))

(assert (= (and d!2007377 (not c!1168281)) b!6402559))

(assert (= (and b!6402559 c!1168277) b!6402557))

(assert (= (and b!6402559 (not c!1168277)) b!6402558))

(assert (= (and b!6402558 res!2632516) b!6402567))

(assert (= (and b!6402558 c!1168279) b!6402560))

(assert (= (and b!6402558 (not c!1168279)) b!6402561))

(assert (= (and b!6402561 c!1168280) b!6402562))

(assert (= (and b!6402561 (not c!1168280)) b!6402565))

(assert (= (and b!6402565 c!1168278) b!6402563))

(assert (= (and b!6402565 (not c!1168278)) b!6402564))

(assert (= (or b!6402562 b!6402563) bm!548934))

(assert (= (or b!6402562 b!6402563) bm!548937))

(assert (= (or b!6402560 bm!548934) bm!548936))

(assert (= (or b!6402560 bm!548937) bm!548932))

(assert (= (or b!6402557 b!6402560) bm!548933))

(assert (= (or b!6402557 bm!548932) bm!548935))

(declare-fun m!7199910 () Bool)

(assert (=> bm!548933 m!7199910))

(declare-fun m!7199912 () Bool)

(assert (=> bm!548935 m!7199912))

(declare-fun m!7199914 () Bool)

(assert (=> b!6402566 m!7199914))

(declare-fun m!7199916 () Bool)

(assert (=> b!6402567 m!7199916))

(declare-fun m!7199920 () Bool)

(assert (=> bm!548936 m!7199920))

(assert (=> bm!548538 d!2007377))

(declare-fun b!6402577 () Bool)

(declare-fun c!1168284 () Bool)

(assert (=> b!6402577 (= c!1168284 ((_ is Union!16311) (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun e!3885642 () Int)

(declare-fun e!3885637 () Int)

(assert (=> b!6402577 (= e!3885642 e!3885637)))

(declare-fun call!548951 () Int)

(declare-fun bm!548941 () Bool)

(assert (=> bm!548941 (= call!548951 (regexDepth!338 (ite c!1168284 (regOne!33135 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (regTwo!33134 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))))

(declare-fun call!548949 () Int)

(declare-fun call!548952 () Int)

(declare-fun bm!548942 () Bool)

(assert (=> bm!548942 (= call!548952 (maxBigInt!0 (ite c!1168284 call!548951 call!548949) (ite c!1168284 call!548949 call!548951)))))

(declare-fun b!6402578 () Bool)

(declare-fun call!548948 () Int)

(assert (=> b!6402578 (= e!3885642 (+ 1 call!548948))))

(declare-fun b!6402579 () Bool)

(declare-fun e!3885638 () Bool)

(declare-fun lt!2374005 () Int)

(assert (=> b!6402579 (= e!3885638 (= lt!2374005 1))))

(declare-fun b!6402581 () Bool)

(declare-fun res!2632523 () Bool)

(declare-fun e!3885636 () Bool)

(assert (=> b!6402581 (=> (not res!2632523) (not e!3885636))))

(declare-fun call!548946 () Int)

(assert (=> b!6402581 (= res!2632523 (> lt!2374005 call!548946))))

(declare-fun e!3885639 () Bool)

(assert (=> b!6402581 (= e!3885639 e!3885636)))

(declare-fun b!6402582 () Bool)

(declare-fun e!3885643 () Int)

(assert (=> b!6402582 (= e!3885643 e!3885642)))

(declare-fun c!1168290 () Bool)

(assert (=> b!6402582 (= c!1168290 ((_ is Star!16311) (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun b!6402583 () Bool)

(declare-fun e!3885641 () Bool)

(assert (=> b!6402583 (= e!3885641 e!3885639)))

(declare-fun c!1168285 () Bool)

(assert (=> b!6402583 (= c!1168285 ((_ is Concat!25156) (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun b!6402584 () Bool)

(declare-fun call!548947 () Int)

(assert (=> b!6402584 (= e!3885636 (> lt!2374005 call!548947))))

(declare-fun b!6402585 () Bool)

(assert (=> b!6402585 (= e!3885637 (+ 1 call!548952))))

(declare-fun b!6402586 () Bool)

(assert (=> b!6402586 (= e!3885638 (> lt!2374005 call!548946))))

(declare-fun b!6402587 () Bool)

(declare-fun e!3885635 () Int)

(assert (=> b!6402587 (= e!3885635 (+ 1 call!548952))))

(declare-fun b!6402588 () Bool)

(declare-fun e!3885640 () Bool)

(declare-fun call!548950 () Int)

(assert (=> b!6402588 (= e!3885640 (> lt!2374005 call!548950))))

(declare-fun b!6402589 () Bool)

(declare-fun e!3885644 () Bool)

(assert (=> b!6402589 (= e!3885644 e!3885641)))

(declare-fun c!1168286 () Bool)

(assert (=> b!6402589 (= c!1168286 ((_ is Union!16311) (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun bm!548943 () Bool)

(assert (=> bm!548943 (= call!548948 (regexDepth!338 (ite c!1168290 (reg!16640 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (ite c!1168284 (regTwo!33135 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (regOne!33134 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292)))))))))

(declare-fun b!6402590 () Bool)

(declare-fun c!1168287 () Bool)

(assert (=> b!6402590 (= c!1168287 ((_ is Star!16311) (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(assert (=> b!6402590 (= e!3885639 e!3885638)))

(declare-fun d!2007385 () Bool)

(assert (=> d!2007385 e!3885644))

(declare-fun res!2632524 () Bool)

(assert (=> d!2007385 (=> (not res!2632524) (not e!3885644))))

(assert (=> d!2007385 (= res!2632524 (> lt!2374005 0))))

(assert (=> d!2007385 (= lt!2374005 e!3885643)))

(declare-fun c!1168288 () Bool)

(assert (=> d!2007385 (= c!1168288 ((_ is ElementMatch!16311) (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(assert (=> d!2007385 (= (regexDepth!338 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))) lt!2374005)))

(declare-fun b!6402580 () Bool)

(assert (=> b!6402580 (= e!3885637 e!3885635)))

(declare-fun c!1168289 () Bool)

(assert (=> b!6402580 (= c!1168289 ((_ is Concat!25156) (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))

(declare-fun b!6402591 () Bool)

(assert (=> b!6402591 (= e!3885643 1)))

(declare-fun bm!548944 () Bool)

(assert (=> bm!548944 (= call!548947 (regexDepth!338 (ite c!1168286 (regOne!33135 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (regTwo!33134 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))))))))

(declare-fun b!6402592 () Bool)

(assert (=> b!6402592 (= e!3885641 e!3885640)))

(declare-fun res!2632522 () Bool)

(assert (=> b!6402592 (= res!2632522 (> lt!2374005 call!548947))))

(assert (=> b!6402592 (=> (not res!2632522) (not e!3885640))))

(declare-fun bm!548945 () Bool)

(assert (=> bm!548945 (= call!548950 (regexDepth!338 (ite c!1168286 (regTwo!33135 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (ite c!1168285 (regOne!33134 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292))) (reg!16640 (ite c!1167696 (regOne!33135 r!7292) (regTwo!33134 r!7292)))))))))

(declare-fun bm!548946 () Bool)

(assert (=> bm!548946 (= call!548946 call!548950)))

(declare-fun bm!548947 () Bool)

(assert (=> bm!548947 (= call!548949 call!548948)))

(declare-fun b!6402593 () Bool)

(assert (=> b!6402593 (= e!3885635 1)))

(assert (= (and d!2007385 c!1168288) b!6402591))

(assert (= (and d!2007385 (not c!1168288)) b!6402582))

(assert (= (and b!6402582 c!1168290) b!6402578))

(assert (= (and b!6402582 (not c!1168290)) b!6402577))

(assert (= (and b!6402577 c!1168284) b!6402585))

(assert (= (and b!6402577 (not c!1168284)) b!6402580))

(assert (= (and b!6402580 c!1168289) b!6402587))

(assert (= (and b!6402580 (not c!1168289)) b!6402593))

(assert (= (or b!6402585 b!6402587) bm!548947))

(assert (= (or b!6402585 b!6402587) bm!548941))

(assert (= (or b!6402585 b!6402587) bm!548942))

(assert (= (or b!6402578 bm!548947) bm!548943))

(assert (= (and d!2007385 res!2632524) b!6402589))

(assert (= (and b!6402589 c!1168286) b!6402592))

(assert (= (and b!6402589 (not c!1168286)) b!6402583))

(assert (= (and b!6402592 res!2632522) b!6402588))

(assert (= (and b!6402583 c!1168285) b!6402581))

(assert (= (and b!6402583 (not c!1168285)) b!6402590))

(assert (= (and b!6402581 res!2632523) b!6402584))

(assert (= (and b!6402590 c!1168287) b!6402586))

(assert (= (and b!6402590 (not c!1168287)) b!6402579))

(assert (= (or b!6402581 b!6402586) bm!548946))

(assert (= (or b!6402588 bm!548946) bm!548945))

(assert (= (or b!6402592 b!6402584) bm!548944))

(declare-fun m!7199926 () Bool)

(assert (=> bm!548942 m!7199926))

(declare-fun m!7199930 () Bool)

(assert (=> bm!548943 m!7199930))

(declare-fun m!7199934 () Bool)

(assert (=> bm!548944 m!7199934))

(declare-fun m!7199940 () Bool)

(assert (=> bm!548945 m!7199940))

(declare-fun m!7199942 () Bool)

(assert (=> bm!548941 m!7199942))

(assert (=> bm!548509 d!2007385))

(declare-fun d!2007393 () Bool)

(assert (=> d!2007393 true))

(assert (=> d!2007393 true))

(declare-fun res!2632533 () Bool)

(assert (=> d!2007393 (= (choose!47587 lambda!353314) res!2632533)))

(assert (=> d!2006345 d!2007393))

(declare-fun b!6402608 () Bool)

(declare-fun res!2632535 () Bool)

(declare-fun e!3885656 () Bool)

(assert (=> b!6402608 (=> (not res!2632535) (not e!3885656))))

(declare-fun call!548956 () Bool)

(assert (=> b!6402608 (= res!2632535 call!548956)))

(declare-fun e!3885652 () Bool)

(assert (=> b!6402608 (= e!3885652 e!3885656)))

(declare-fun c!1168294 () Bool)

(declare-fun bm!548949 () Bool)

(declare-fun call!548955 () Bool)

(declare-fun c!1168295 () Bool)

(assert (=> bm!548949 (= call!548955 (validRegex!8047 (ite c!1168294 (reg!16640 (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661)))) (ite c!1168295 (regTwo!33135 (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661)))) (regTwo!33134 (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661))))))))))

(declare-fun b!6402609 () Bool)

(declare-fun e!3885653 () Bool)

(declare-fun e!3885654 () Bool)

(assert (=> b!6402609 (= e!3885653 e!3885654)))

(declare-fun res!2632537 () Bool)

(assert (=> b!6402609 (= res!2632537 (not (nullable!6304 (reg!16640 (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661)))))))))

(assert (=> b!6402609 (=> (not res!2632537) (not e!3885654))))

(declare-fun b!6402610 () Bool)

(declare-fun e!3885658 () Bool)

(assert (=> b!6402610 (= e!3885658 e!3885653)))

(assert (=> b!6402610 (= c!1168294 ((_ is Star!16311) (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661)))))))

(declare-fun b!6402611 () Bool)

(declare-fun res!2632534 () Bool)

(declare-fun e!3885657 () Bool)

(assert (=> b!6402611 (=> res!2632534 e!3885657)))

(assert (=> b!6402611 (= res!2632534 (not ((_ is Concat!25156) (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661))))))))

(assert (=> b!6402611 (= e!3885652 e!3885657)))

(declare-fun b!6402612 () Bool)

(assert (=> b!6402612 (= e!3885654 call!548955)))

(declare-fun b!6402613 () Bool)

(assert (=> b!6402613 (= e!3885653 e!3885652)))

(assert (=> b!6402613 (= c!1168295 ((_ is Union!16311) (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661)))))))

(declare-fun b!6402614 () Bool)

(declare-fun call!548954 () Bool)

(assert (=> b!6402614 (= e!3885656 call!548954)))

(declare-fun b!6402615 () Bool)

(declare-fun e!3885655 () Bool)

(assert (=> b!6402615 (= e!3885655 call!548954)))

(declare-fun bm!548951 () Bool)

(assert (=> bm!548951 (= call!548954 call!548955)))

(declare-fun b!6402616 () Bool)

(assert (=> b!6402616 (= e!3885657 e!3885655)))

(declare-fun res!2632538 () Bool)

(assert (=> b!6402616 (=> (not res!2632538) (not e!3885655))))

(assert (=> b!6402616 (= res!2632538 call!548956)))

(declare-fun bm!548950 () Bool)

(assert (=> bm!548950 (= call!548956 (validRegex!8047 (ite c!1168295 (regOne!33135 (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661)))) (regOne!33134 (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661)))))))))

(declare-fun d!2007395 () Bool)

(declare-fun res!2632536 () Bool)

(assert (=> d!2007395 (=> res!2632536 e!3885658)))

(assert (=> d!2007395 (= res!2632536 ((_ is ElementMatch!16311) (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661)))))))

(assert (=> d!2007395 (= (validRegex!8047 (ite c!1167740 (reg!16640 lt!2373661) (ite c!1167741 (regTwo!33135 lt!2373661) (regTwo!33134 lt!2373661)))) e!3885658)))

(assert (= (and d!2007395 (not res!2632536)) b!6402610))

(assert (= (and b!6402610 c!1168294) b!6402609))

(assert (= (and b!6402610 (not c!1168294)) b!6402613))

(assert (= (and b!6402609 res!2632537) b!6402612))

(assert (= (and b!6402613 c!1168295) b!6402608))

(assert (= (and b!6402613 (not c!1168295)) b!6402611))

(assert (= (and b!6402608 res!2632535) b!6402614))

(assert (= (and b!6402611 (not res!2632534)) b!6402616))

(assert (= (and b!6402616 res!2632538) b!6402615))

(assert (= (or b!6402614 b!6402615) bm!548951))

(assert (= (or b!6402608 b!6402616) bm!548950))

(assert (= (or b!6402612 bm!548951) bm!548949))

(declare-fun m!7199950 () Bool)

(assert (=> bm!548949 m!7199950))

(declare-fun m!7199952 () Bool)

(assert (=> b!6402609 m!7199952))

(declare-fun m!7199954 () Bool)

(assert (=> bm!548950 m!7199954))

(assert (=> bm!548543 d!2007395))

(declare-fun d!2007399 () Bool)

(assert (=> d!2007399 true))

(declare-fun setRes!43706 () Bool)

(assert (=> d!2007399 setRes!43706))

(declare-fun condSetEmpty!43706 () Bool)

(declare-fun res!2632539 () (InoxSet Context!11390))

(assert (=> d!2007399 (= condSetEmpty!43706 (= res!2632539 ((as const (Array Context!11390 Bool)) false)))))

(assert (=> d!2007399 (= (choose!47592 lt!2373688 lambda!353313) res!2632539)))

(declare-fun setIsEmpty!43706 () Bool)

(assert (=> setIsEmpty!43706 setRes!43706))

(declare-fun setElem!43706 () Context!11390)

(declare-fun tp!1779341 () Bool)

(declare-fun setNonEmpty!43706 () Bool)

(declare-fun e!3885664 () Bool)

(assert (=> setNonEmpty!43706 (= setRes!43706 (and tp!1779341 (inv!84024 setElem!43706) e!3885664))))

(declare-fun setRest!43706 () (InoxSet Context!11390))

(assert (=> setNonEmpty!43706 (= res!2632539 ((_ map or) (store ((as const (Array Context!11390 Bool)) false) setElem!43706 true) setRest!43706))))

(declare-fun b!6402627 () Bool)

(declare-fun tp!1779342 () Bool)

(assert (=> b!6402627 (= e!3885664 tp!1779342)))

(assert (= (and d!2007399 condSetEmpty!43706) setIsEmpty!43706))

(assert (= (and d!2007399 (not condSetEmpty!43706)) setNonEmpty!43706))

(assert (= setNonEmpty!43706 b!6402627))

(declare-fun m!7199964 () Bool)

(assert (=> setNonEmpty!43706 m!7199964))

(assert (=> d!2006493 d!2007399))

(declare-fun b!6402628 () Bool)

(declare-fun call!548961 () (InoxSet Context!11390))

(declare-fun e!3885665 () (InoxSet Context!11390))

(assert (=> b!6402628 (= e!3885665 ((_ map or) call!548961 (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373684)))))) (h!71556 s!2326))))))

(declare-fun d!2007401 () Bool)

(declare-fun c!1168301 () Bool)

(declare-fun e!3885667 () Bool)

(assert (=> d!2007401 (= c!1168301 e!3885667)))

(declare-fun res!2632540 () Bool)

(assert (=> d!2007401 (=> (not res!2632540) (not e!3885667))))

(assert (=> d!2007401 (= res!2632540 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373684))))))))

(assert (=> d!2007401 (= (derivationStepZipperUp!1485 (Context!11391 (t!378841 (exprs!6195 lt!2373684))) (h!71556 s!2326)) e!3885665)))

(declare-fun b!6402629 () Bool)

(assert (=> b!6402629 (= e!3885667 (nullable!6304 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373684)))))))))

(declare-fun b!6402630 () Bool)

(declare-fun e!3885666 () (InoxSet Context!11390))

(assert (=> b!6402630 (= e!3885666 ((as const (Array Context!11390 Bool)) false))))

(declare-fun bm!548956 () Bool)

(assert (=> bm!548956 (= call!548961 (derivationStepZipperDown!1559 (h!71557 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373684))))) (Context!11391 (t!378841 (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373684)))))) (h!71556 s!2326)))))

(declare-fun b!6402631 () Bool)

(assert (=> b!6402631 (= e!3885665 e!3885666)))

(declare-fun c!1168302 () Bool)

(assert (=> b!6402631 (= c!1168302 ((_ is Cons!65109) (exprs!6195 (Context!11391 (t!378841 (exprs!6195 lt!2373684))))))))

(declare-fun b!6402632 () Bool)

(assert (=> b!6402632 (= e!3885666 call!548961)))

(assert (= (and d!2007401 res!2632540) b!6402629))

(assert (= (and d!2007401 c!1168301) b!6402628))

(assert (= (and d!2007401 (not c!1168301)) b!6402631))

(assert (= (and b!6402631 c!1168302) b!6402632))

(assert (= (and b!6402631 (not c!1168302)) b!6402630))

(assert (= (or b!6402628 b!6402632) bm!548956))

(declare-fun m!7199966 () Bool)

(assert (=> b!6402628 m!7199966))

(declare-fun m!7199968 () Bool)

(assert (=> b!6402629 m!7199968))

(declare-fun m!7199970 () Bool)

(assert (=> bm!548956 m!7199970))

(assert (=> b!6400160 d!2007401))

(declare-fun b!6402644 () Bool)

(declare-fun res!2632543 () Bool)

(declare-fun e!3885678 () Bool)

(assert (=> b!6402644 (=> (not res!2632543) (not e!3885678))))

(declare-fun call!548970 () Bool)

(assert (=> b!6402644 (= res!2632543 call!548970)))

(declare-fun e!3885674 () Bool)

(assert (=> b!6402644 (= e!3885674 e!3885678)))

(declare-fun bm!548963 () Bool)

(declare-fun c!1168308 () Bool)

(declare-fun c!1168309 () Bool)

(declare-fun call!548969 () Bool)

(assert (=> bm!548963 (= call!548969 (validRegex!8047 (ite c!1168308 (reg!16640 (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292)))) (ite c!1168309 (regTwo!33135 (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292)))) (regTwo!33134 (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292))))))))))

(declare-fun b!6402645 () Bool)

(declare-fun e!3885675 () Bool)

(declare-fun e!3885676 () Bool)

(assert (=> b!6402645 (= e!3885675 e!3885676)))

(declare-fun res!2632545 () Bool)

(assert (=> b!6402645 (= res!2632545 (not (nullable!6304 (reg!16640 (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292)))))))))

(assert (=> b!6402645 (=> (not res!2632545) (not e!3885676))))

(declare-fun b!6402646 () Bool)

(declare-fun e!3885680 () Bool)

(assert (=> b!6402646 (= e!3885680 e!3885675)))

(assert (=> b!6402646 (= c!1168308 ((_ is Star!16311) (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292)))))))

(declare-fun b!6402647 () Bool)

(declare-fun res!2632542 () Bool)

(declare-fun e!3885679 () Bool)

(assert (=> b!6402647 (=> res!2632542 e!3885679)))

(assert (=> b!6402647 (= res!2632542 (not ((_ is Concat!25156) (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292))))))))

(assert (=> b!6402647 (= e!3885674 e!3885679)))

(declare-fun b!6402648 () Bool)

(assert (=> b!6402648 (= e!3885676 call!548969)))

(declare-fun b!6402649 () Bool)

(assert (=> b!6402649 (= e!3885675 e!3885674)))

(assert (=> b!6402649 (= c!1168309 ((_ is Union!16311) (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292)))))))

(declare-fun b!6402650 () Bool)

(declare-fun call!548968 () Bool)

(assert (=> b!6402650 (= e!3885678 call!548968)))

(declare-fun b!6402651 () Bool)

(declare-fun e!3885677 () Bool)

(assert (=> b!6402651 (= e!3885677 call!548968)))

(declare-fun bm!548965 () Bool)

(assert (=> bm!548965 (= call!548968 call!548969)))

(declare-fun b!6402652 () Bool)

(assert (=> b!6402652 (= e!3885679 e!3885677)))

(declare-fun res!2632546 () Bool)

(assert (=> b!6402652 (=> (not res!2632546) (not e!3885677))))

(assert (=> b!6402652 (= res!2632546 call!548970)))

(declare-fun bm!548964 () Bool)

(assert (=> bm!548964 (= call!548970 (validRegex!8047 (ite c!1168309 (regOne!33135 (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292)))) (regOne!33134 (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292)))))))))

(declare-fun d!2007407 () Bool)

(declare-fun res!2632544 () Bool)

(assert (=> d!2007407 (=> res!2632544 e!3885680)))

(assert (=> d!2007407 (= res!2632544 ((_ is ElementMatch!16311) (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292)))))))

(assert (=> d!2007407 (= (validRegex!8047 (ite c!1167678 (reg!16640 r!7292) (ite c!1167679 (regTwo!33135 r!7292) (regTwo!33134 r!7292)))) e!3885680)))

(assert (= (and d!2007407 (not res!2632544)) b!6402646))

(assert (= (and b!6402646 c!1168308) b!6402645))

(assert (= (and b!6402646 (not c!1168308)) b!6402649))

(assert (= (and b!6402645 res!2632545) b!6402648))

(assert (= (and b!6402649 c!1168309) b!6402644))

(assert (= (and b!6402649 (not c!1168309)) b!6402647))

(assert (= (and b!6402644 res!2632543) b!6402650))

(assert (= (and b!6402647 (not res!2632542)) b!6402652))

(assert (= (and b!6402652 res!2632546) b!6402651))

(assert (= (or b!6402650 b!6402651) bm!548965))

(assert (= (or b!6402644 b!6402652) bm!548964))

(assert (= (or b!6402648 bm!548965) bm!548963))

(declare-fun m!7199976 () Bool)

(assert (=> bm!548963 m!7199976))

(declare-fun m!7199978 () Bool)

(assert (=> b!6402645 m!7199978))

(declare-fun m!7199982 () Bool)

(assert (=> bm!548964 m!7199982))

(assert (=> bm!548489 d!2007407))

(declare-fun d!2007409 () Bool)

(assert (=> d!2007409 (= (isEmpty!37255 (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326)) (not ((_ is Some!16201) (findConcatSeparation!2616 (regOne!33134 r!7292) (regTwo!33134 r!7292) Nil!65108 s!2326 s!2326))))))

(assert (=> d!2006521 d!2007409))

(declare-fun d!2007411 () Bool)

(assert (=> d!2007411 (= (isEmpty!37252 (unfocusZipperList!1732 zl!343)) ((_ is Nil!65109) (unfocusZipperList!1732 zl!343)))))

(assert (=> b!6400281 d!2007411))

(declare-fun d!2007415 () Bool)

(assert (=> d!2007415 (= (Exists!3381 lambda!353337) (choose!47587 lambda!353337))))

(declare-fun bs!1605829 () Bool)

(assert (= bs!1605829 d!2007415))

(declare-fun m!7199988 () Bool)

(assert (=> bs!1605829 m!7199988))

(assert (=> d!2006349 d!2007415))

(declare-fun d!2007417 () Bool)

(assert (=> d!2007417 (= (Exists!3381 lambda!353340) (choose!47587 lambda!353340))))

(declare-fun bs!1605830 () Bool)

(assert (= bs!1605830 d!2007417))

(declare-fun m!7199990 () Bool)

(assert (=> bs!1605830 m!7199990))

(assert (=> d!2006349 d!2007417))

(declare-fun bs!1605832 () Bool)

(declare-fun d!2007419 () Bool)

(assert (= bs!1605832 (and d!2007419 b!6402261)))

(declare-fun lambda!353531 () Int)

(assert (=> bs!1605832 (not (= lambda!353531 lambda!353505))))

(declare-fun bs!1605834 () Bool)

(assert (= bs!1605834 (and d!2007419 b!6399780)))

(assert (=> bs!1605834 (not (= lambda!353531 lambda!353312))))

(declare-fun bs!1605836 () Bool)

(assert (= bs!1605836 (and d!2007419 b!6402223)))

(assert (=> bs!1605836 (not (= lambda!353531 lambda!353497))))

(declare-fun bs!1605838 () Bool)

(assert (= bs!1605838 (and d!2007419 d!2006515)))

(assert (=> bs!1605838 (not (= lambda!353531 lambda!353395))))

(declare-fun bs!1605840 () Bool)

(assert (= bs!1605840 (and d!2007419 b!6400731)))

(assert (=> bs!1605840 (not (= lambda!353531 lambda!353401))))

(declare-fun bs!1605842 () Bool)

(assert (= bs!1605842 (and d!2007419 b!6401759)))

(assert (=> bs!1605842 (not (= lambda!353531 lambda!353451))))

(declare-fun bs!1605844 () Bool)

(assert (= bs!1605844 (and d!2007419 b!6402255)))

(assert (=> bs!1605844 (not (= lambda!353531 lambda!353501))))

(declare-fun bs!1605846 () Bool)

(assert (= bs!1605846 (and d!2007419 d!2006905)))

(assert (=> bs!1605846 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353531 lambda!353441))))

(declare-fun bs!1605848 () Bool)

(assert (= bs!1605848 (and d!2007419 d!2006367)))

(assert (=> bs!1605848 (= lambda!353531 lambda!353347)))

(declare-fun bs!1605850 () Bool)

(assert (= bs!1605850 (and d!2007419 d!2006513)))

(assert (=> bs!1605850 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353531 lambda!353393))))

(declare-fun bs!1605852 () Bool)

(assert (= bs!1605852 (and d!2007419 b!6400503)))

(assert (=> bs!1605852 (not (= lambda!353531 lambda!353384))))

(assert (=> bs!1605838 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353531 lambda!353394))))

(declare-fun bs!1605854 () Bool)

(assert (= bs!1605854 (and d!2007419 b!6399764)))

(assert (=> bs!1605854 (not (= lambda!353531 lambda!353315))))

(declare-fun bs!1605856 () Bool)

(assert (= bs!1605856 (and d!2007419 d!2007181)))

(assert (=> bs!1605856 (= lambda!353531 lambda!353494)))

(declare-fun bs!1605857 () Bool)

(assert (= bs!1605857 (and d!2007419 b!6402229)))

(assert (=> bs!1605857 (not (= lambda!353531 lambda!353500))))

(declare-fun bs!1605858 () Bool)

(assert (= bs!1605858 (and d!2007419 d!2007299)))

(assert (=> bs!1605858 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353531 lambda!353517))))

(declare-fun bs!1605860 () Bool)

(assert (= bs!1605860 (and d!2007419 d!2006349)))

(assert (=> bs!1605860 (not (= lambda!353531 lambda!353340))))

(declare-fun bs!1605862 () Bool)

(assert (= bs!1605862 (and d!2007419 b!6400509)))

(assert (=> bs!1605862 (not (= lambda!353531 lambda!353386))))

(assert (=> bs!1605860 (= lambda!353531 lambda!353337)))

(assert (=> bs!1605834 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353531 lambda!353311))))

(declare-fun bs!1605864 () Bool)

(assert (= bs!1605864 (and d!2007419 b!6400737)))

(assert (=> bs!1605864 (not (= lambda!353531 lambda!353402))))

(declare-fun bs!1605865 () Bool)

(assert (= bs!1605865 (and d!2007419 b!6401765)))

(assert (=> bs!1605865 (not (= lambda!353531 lambda!353452))))

(assert (=> bs!1605846 (not (= lambda!353531 lambda!353442))))

(assert (=> bs!1605854 (= lambda!353531 lambda!353314)))

(assert (=> d!2007419 true))

(assert (=> d!2007419 true))

(assert (=> d!2007419 true))

(declare-fun lambda!353532 () Int)

(assert (=> bs!1605832 (= (and (= lt!2373664 (regOne!33134 (regTwo!33135 lt!2373658))) (= (regTwo!33134 r!7292) (regTwo!33134 (regTwo!33135 lt!2373658)))) (= lambda!353532 lambda!353505))))

(assert (=> bs!1605834 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353532 lambda!353312))))

(assert (=> bs!1605836 (not (= lambda!353532 lambda!353497))))

(assert (=> bs!1605838 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353532 lambda!353395))))

(assert (=> bs!1605840 (not (= lambda!353532 lambda!353401))))

(assert (=> bs!1605842 (not (= lambda!353532 lambda!353451))))

(assert (=> bs!1605844 (not (= lambda!353532 lambda!353501))))

(assert (=> bs!1605846 (not (= lambda!353532 lambda!353441))))

(assert (=> bs!1605848 (not (= lambda!353532 lambda!353347))))

(assert (=> bs!1605850 (not (= lambda!353532 lambda!353393))))

(assert (=> bs!1605852 (not (= lambda!353532 lambda!353384))))

(assert (=> bs!1605838 (not (= lambda!353532 lambda!353394))))

(assert (=> bs!1605854 (= lambda!353532 lambda!353315)))

(assert (=> bs!1605857 (= (and (= lt!2373664 (regOne!33134 (regOne!33135 r!7292))) (= (regTwo!33134 r!7292) (regTwo!33134 (regOne!33135 r!7292)))) (= lambda!353532 lambda!353500))))

(assert (=> bs!1605858 (not (= lambda!353532 lambda!353517))))

(assert (=> bs!1605860 (= lambda!353532 lambda!353340)))

(assert (=> bs!1605862 (= (and (= lt!2373664 (regOne!33134 lt!2373658)) (= (regTwo!33134 r!7292) (regTwo!33134 lt!2373658))) (= lambda!353532 lambda!353386))))

(assert (=> bs!1605860 (not (= lambda!353532 lambda!353337))))

(assert (=> bs!1605834 (not (= lambda!353532 lambda!353311))))

(declare-fun bs!1605883 () Bool)

(assert (= bs!1605883 d!2007419))

(assert (=> bs!1605883 (not (= lambda!353532 lambda!353531))))

(assert (=> bs!1605856 (not (= lambda!353532 lambda!353494))))

(assert (=> bs!1605864 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353532 lambda!353402))))

(assert (=> bs!1605865 (= (and (= lt!2373664 (regOne!33134 (regOne!33135 lt!2373658))) (= (regTwo!33134 r!7292) (regTwo!33134 (regOne!33135 lt!2373658)))) (= lambda!353532 lambda!353452))))

(assert (=> bs!1605846 (= (= lt!2373664 (regOne!33134 r!7292)) (= lambda!353532 lambda!353442))))

(assert (=> bs!1605854 (not (= lambda!353532 lambda!353314))))

(assert (=> d!2007419 true))

(assert (=> d!2007419 true))

(assert (=> d!2007419 true))

(assert (=> d!2007419 (= (Exists!3381 lambda!353531) (Exists!3381 lambda!353532))))

(assert (=> d!2007419 true))

(declare-fun _$90!2265 () Unit!158575)

(assert (=> d!2007419 (= (choose!47588 lt!2373664 (regTwo!33134 r!7292) s!2326) _$90!2265)))

(declare-fun m!7199992 () Bool)

(assert (=> bs!1605883 m!7199992))

(declare-fun m!7199994 () Bool)

(assert (=> bs!1605883 m!7199994))

(assert (=> d!2006349 d!2007419))

(assert (=> d!2006349 d!2007179))

(declare-fun bs!1605890 () Bool)

(declare-fun b!6402666 () Bool)

(assert (= bs!1605890 (and b!6402666 b!6402261)))

(declare-fun lambda!353534 () Int)

(assert (=> bs!1605890 (not (= lambda!353534 lambda!353505))))

(declare-fun bs!1605891 () Bool)

(assert (= bs!1605891 (and b!6402666 b!6399780)))

(assert (=> bs!1605891 (not (= lambda!353534 lambda!353312))))

(declare-fun bs!1605892 () Bool)

(assert (= bs!1605892 (and b!6402666 b!6402223)))

(assert (=> bs!1605892 (= (and (= (reg!16640 (regTwo!33135 r!7292)) (reg!16640 (regOne!33135 r!7292))) (= (regTwo!33135 r!7292) (regOne!33135 r!7292))) (= lambda!353534 lambda!353497))))

(declare-fun bs!1605893 () Bool)

(assert (= bs!1605893 (and b!6402666 b!6400731)))

(assert (=> bs!1605893 (= (and (= (reg!16640 (regTwo!33135 r!7292)) (reg!16640 r!7292)) (= (regTwo!33135 r!7292) r!7292)) (= lambda!353534 lambda!353401))))

(declare-fun bs!1605894 () Bool)

(assert (= bs!1605894 (and b!6402666 b!6401759)))

(assert (=> bs!1605894 (= (and (= (reg!16640 (regTwo!33135 r!7292)) (reg!16640 (regOne!33135 lt!2373658))) (= (regTwo!33135 r!7292) (regOne!33135 lt!2373658))) (= lambda!353534 lambda!353451))))

(declare-fun bs!1605895 () Bool)

(assert (= bs!1605895 (and b!6402666 b!6402255)))

(assert (=> bs!1605895 (= (and (= (reg!16640 (regTwo!33135 r!7292)) (reg!16640 (regTwo!33135 lt!2373658))) (= (regTwo!33135 r!7292) (regTwo!33135 lt!2373658))) (= lambda!353534 lambda!353501))))

(declare-fun bs!1605896 () Bool)

(assert (= bs!1605896 (and b!6402666 d!2006905)))

(assert (=> bs!1605896 (not (= lambda!353534 lambda!353441))))

(declare-fun bs!1605897 () Bool)

(assert (= bs!1605897 (and b!6402666 d!2006367)))

(assert (=> bs!1605897 (not (= lambda!353534 lambda!353347))))

(declare-fun bs!1605898 () Bool)

(assert (= bs!1605898 (and b!6402666 d!2006513)))

(assert (=> bs!1605898 (not (= lambda!353534 lambda!353393))))

(declare-fun bs!1605899 () Bool)

(assert (= bs!1605899 (and b!6402666 b!6400503)))

(assert (=> bs!1605899 (= (and (= (reg!16640 (regTwo!33135 r!7292)) (reg!16640 lt!2373658)) (= (regTwo!33135 r!7292) lt!2373658)) (= lambda!353534 lambda!353384))))

(declare-fun bs!1605900 () Bool)

(assert (= bs!1605900 (and b!6402666 d!2006515)))

(assert (=> bs!1605900 (not (= lambda!353534 lambda!353394))))

(declare-fun bs!1605901 () Bool)

(assert (= bs!1605901 (and b!6402666 b!6399764)))

(assert (=> bs!1605901 (not (= lambda!353534 lambda!353315))))

(declare-fun bs!1605902 () Bool)

(assert (= bs!1605902 (and b!6402666 b!6402229)))

(assert (=> bs!1605902 (not (= lambda!353534 lambda!353500))))

(declare-fun bs!1605903 () Bool)

(assert (= bs!1605903 (and b!6402666 d!2007299)))

(assert (=> bs!1605903 (not (= lambda!353534 lambda!353517))))

(declare-fun bs!1605904 () Bool)

(assert (= bs!1605904 (and b!6402666 d!2007419)))

(assert (=> bs!1605904 (not (= lambda!353534 lambda!353532))))

(assert (=> bs!1605900 (not (= lambda!353534 lambda!353395))))

(declare-fun bs!1605905 () Bool)

(assert (= bs!1605905 (and b!6402666 d!2006349)))

(assert (=> bs!1605905 (not (= lambda!353534 lambda!353340))))

(declare-fun bs!1605906 () Bool)

(assert (= bs!1605906 (and b!6402666 b!6400509)))

(assert (=> bs!1605906 (not (= lambda!353534 lambda!353386))))

(assert (=> bs!1605905 (not (= lambda!353534 lambda!353337))))

(assert (=> bs!1605891 (not (= lambda!353534 lambda!353311))))

(assert (=> bs!1605904 (not (= lambda!353534 lambda!353531))))

(declare-fun bs!1605907 () Bool)

(assert (= bs!1605907 (and b!6402666 d!2007181)))

(assert (=> bs!1605907 (not (= lambda!353534 lambda!353494))))

(declare-fun bs!1605908 () Bool)

(assert (= bs!1605908 (and b!6402666 b!6400737)))

(assert (=> bs!1605908 (not (= lambda!353534 lambda!353402))))

(declare-fun bs!1605909 () Bool)

(assert (= bs!1605909 (and b!6402666 b!6401765)))

(assert (=> bs!1605909 (not (= lambda!353534 lambda!353452))))

(assert (=> bs!1605896 (not (= lambda!353534 lambda!353442))))

(assert (=> bs!1605901 (not (= lambda!353534 lambda!353314))))

(assert (=> b!6402666 true))

(assert (=> b!6402666 true))

(declare-fun bs!1605910 () Bool)

(declare-fun b!6402672 () Bool)

(assert (= bs!1605910 (and b!6402672 b!6402261)))

(declare-fun lambda!353535 () Int)

(assert (=> bs!1605910 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) (regOne!33134 (regTwo!33135 lt!2373658))) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 (regTwo!33135 lt!2373658)))) (= lambda!353535 lambda!353505))))

(declare-fun bs!1605911 () Bool)

(assert (= bs!1605911 (and b!6402672 b!6399780)))

(assert (=> bs!1605911 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) (regOne!33134 r!7292)) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353535 lambda!353312))))

(declare-fun bs!1605912 () Bool)

(assert (= bs!1605912 (and b!6402672 b!6402223)))

(assert (=> bs!1605912 (not (= lambda!353535 lambda!353497))))

(declare-fun bs!1605913 () Bool)

(assert (= bs!1605913 (and b!6402672 b!6400731)))

(assert (=> bs!1605913 (not (= lambda!353535 lambda!353401))))

(declare-fun bs!1605914 () Bool)

(assert (= bs!1605914 (and b!6402672 b!6401759)))

(assert (=> bs!1605914 (not (= lambda!353535 lambda!353451))))

(declare-fun bs!1605915 () Bool)

(assert (= bs!1605915 (and b!6402672 b!6402255)))

(assert (=> bs!1605915 (not (= lambda!353535 lambda!353501))))

(declare-fun bs!1605916 () Bool)

(assert (= bs!1605916 (and b!6402672 d!2006905)))

(assert (=> bs!1605916 (not (= lambda!353535 lambda!353441))))

(declare-fun bs!1605917 () Bool)

(assert (= bs!1605917 (and b!6402672 d!2006367)))

(assert (=> bs!1605917 (not (= lambda!353535 lambda!353347))))

(declare-fun bs!1605918 () Bool)

(assert (= bs!1605918 (and b!6402672 d!2006513)))

(assert (=> bs!1605918 (not (= lambda!353535 lambda!353393))))

(declare-fun bs!1605919 () Bool)

(assert (= bs!1605919 (and b!6402672 b!6400503)))

(assert (=> bs!1605919 (not (= lambda!353535 lambda!353384))))

(declare-fun bs!1605920 () Bool)

(assert (= bs!1605920 (and b!6402672 d!2006515)))

(assert (=> bs!1605920 (not (= lambda!353535 lambda!353394))))

(declare-fun bs!1605921 () Bool)

(assert (= bs!1605921 (and b!6402672 b!6399764)))

(assert (=> bs!1605921 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) lt!2373664) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353535 lambda!353315))))

(declare-fun bs!1605922 () Bool)

(assert (= bs!1605922 (and b!6402672 d!2007299)))

(assert (=> bs!1605922 (not (= lambda!353535 lambda!353517))))

(declare-fun bs!1605924 () Bool)

(assert (= bs!1605924 (and b!6402672 d!2007419)))

(assert (=> bs!1605924 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) lt!2373664) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353535 lambda!353532))))

(assert (=> bs!1605920 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) (regOne!33134 r!7292)) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353535 lambda!353395))))

(declare-fun bs!1605928 () Bool)

(assert (= bs!1605928 (and b!6402672 d!2006349)))

(assert (=> bs!1605928 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) lt!2373664) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353535 lambda!353340))))

(declare-fun bs!1605931 () Bool)

(assert (= bs!1605931 (and b!6402672 b!6400509)))

(assert (=> bs!1605931 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) (regOne!33134 lt!2373658)) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 lt!2373658))) (= lambda!353535 lambda!353386))))

(assert (=> bs!1605928 (not (= lambda!353535 lambda!353337))))

(assert (=> bs!1605911 (not (= lambda!353535 lambda!353311))))

(assert (=> bs!1605924 (not (= lambda!353535 lambda!353531))))

(declare-fun bs!1605939 () Bool)

(assert (= bs!1605939 (and b!6402672 d!2007181)))

(assert (=> bs!1605939 (not (= lambda!353535 lambda!353494))))

(declare-fun bs!1605941 () Bool)

(assert (= bs!1605941 (and b!6402672 b!6400737)))

(assert (=> bs!1605941 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) (regOne!33134 r!7292)) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353535 lambda!353402))))

(declare-fun bs!1605944 () Bool)

(assert (= bs!1605944 (and b!6402672 b!6401765)))

(assert (=> bs!1605944 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) (regOne!33134 (regOne!33135 lt!2373658))) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 (regOne!33135 lt!2373658)))) (= lambda!353535 lambda!353452))))

(declare-fun bs!1605947 () Bool)

(assert (= bs!1605947 (and b!6402672 b!6402666)))

(assert (=> bs!1605947 (not (= lambda!353535 lambda!353534))))

(declare-fun bs!1605949 () Bool)

(assert (= bs!1605949 (and b!6402672 b!6402229)))

(assert (=> bs!1605949 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) (regOne!33134 (regOne!33135 r!7292))) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 (regOne!33135 r!7292)))) (= lambda!353535 lambda!353500))))

(assert (=> bs!1605916 (= (and (= (regOne!33134 (regTwo!33135 r!7292)) (regOne!33134 r!7292)) (= (regTwo!33134 (regTwo!33135 r!7292)) (regTwo!33134 r!7292))) (= lambda!353535 lambda!353442))))

(assert (=> bs!1605921 (not (= lambda!353535 lambda!353314))))

(assert (=> b!6402672 true))

(assert (=> b!6402672 true))

(declare-fun b!6402664 () Bool)

(declare-fun e!3885690 () Bool)

(assert (=> b!6402664 (= e!3885690 (= s!2326 (Cons!65108 (c!1167428 (regTwo!33135 r!7292)) Nil!65108)))))

(declare-fun b!6402665 () Bool)

(declare-fun c!1168315 () Bool)

(assert (=> b!6402665 (= c!1168315 ((_ is Union!16311) (regTwo!33135 r!7292)))))

(declare-fun e!3885688 () Bool)

(assert (=> b!6402665 (= e!3885690 e!3885688)))

(declare-fun e!3885691 () Bool)

(declare-fun call!548974 () Bool)

(assert (=> b!6402666 (= e!3885691 call!548974)))

(declare-fun b!6402667 () Bool)

(declare-fun e!3885689 () Bool)

(assert (=> b!6402667 (= e!3885688 e!3885689)))

(declare-fun c!1168317 () Bool)

(assert (=> b!6402667 (= c!1168317 ((_ is Star!16311) (regTwo!33135 r!7292)))))

(declare-fun b!6402668 () Bool)

(declare-fun c!1168314 () Bool)

(assert (=> b!6402668 (= c!1168314 ((_ is ElementMatch!16311) (regTwo!33135 r!7292)))))

(declare-fun e!3885692 () Bool)

(assert (=> b!6402668 (= e!3885692 e!3885690)))

(declare-fun b!6402669 () Bool)

(declare-fun e!3885693 () Bool)

(assert (=> b!6402669 (= e!3885693 e!3885692)))

(declare-fun res!2632550 () Bool)

(assert (=> b!6402669 (= res!2632550 (not ((_ is EmptyLang!16311) (regTwo!33135 r!7292))))))

(assert (=> b!6402669 (=> (not res!2632550) (not e!3885692))))

(declare-fun d!2007421 () Bool)

(declare-fun c!1168316 () Bool)

(assert (=> d!2007421 (= c!1168316 ((_ is EmptyExpr!16311) (regTwo!33135 r!7292)))))

(assert (=> d!2007421 (= (matchRSpec!3412 (regTwo!33135 r!7292) s!2326) e!3885693)))

(declare-fun b!6402670 () Bool)

(declare-fun res!2632551 () Bool)

(assert (=> b!6402670 (=> res!2632551 e!3885691)))

(declare-fun call!548973 () Bool)

(assert (=> b!6402670 (= res!2632551 call!548973)))

(assert (=> b!6402670 (= e!3885689 e!3885691)))

(declare-fun bm!548968 () Bool)

(assert (=> bm!548968 (= call!548974 (Exists!3381 (ite c!1168317 lambda!353534 lambda!353535)))))

(declare-fun bm!548969 () Bool)

(assert (=> bm!548969 (= call!548973 (isEmpty!37253 s!2326))))

(declare-fun b!6402671 () Bool)

(assert (=> b!6402671 (= e!3885693 call!548973)))

(assert (=> b!6402672 (= e!3885689 call!548974)))

(declare-fun b!6402673 () Bool)

(declare-fun e!3885694 () Bool)

(assert (=> b!6402673 (= e!3885688 e!3885694)))

(declare-fun res!2632552 () Bool)

(assert (=> b!6402673 (= res!2632552 (matchRSpec!3412 (regOne!33135 (regTwo!33135 r!7292)) s!2326))))

(assert (=> b!6402673 (=> res!2632552 e!3885694)))

(declare-fun b!6402674 () Bool)

(assert (=> b!6402674 (= e!3885694 (matchRSpec!3412 (regTwo!33135 (regTwo!33135 r!7292)) s!2326))))

(assert (= (and d!2007421 c!1168316) b!6402671))

(assert (= (and d!2007421 (not c!1168316)) b!6402669))

(assert (= (and b!6402669 res!2632550) b!6402668))

(assert (= (and b!6402668 c!1168314) b!6402664))

(assert (= (and b!6402668 (not c!1168314)) b!6402665))

(assert (= (and b!6402665 c!1168315) b!6402673))

(assert (= (and b!6402665 (not c!1168315)) b!6402667))

(assert (= (and b!6402673 (not res!2632552)) b!6402674))

(assert (= (and b!6402667 c!1168317) b!6402670))

(assert (= (and b!6402667 (not c!1168317)) b!6402672))

(assert (= (and b!6402670 (not res!2632551)) b!6402666))

(assert (= (or b!6402666 b!6402672) bm!548968))

(assert (= (or b!6402671 b!6402670) bm!548969))

(declare-fun m!7200042 () Bool)

(assert (=> bm!548968 m!7200042))

(assert (=> bm!548969 m!7197724))

(declare-fun m!7200044 () Bool)

(assert (=> b!6402673 m!7200044))

(declare-fun m!7200046 () Bool)

(assert (=> b!6402674 m!7200046))

(assert (=> b!6400739 d!2007421))

(declare-fun b!6402723 () Bool)

(declare-fun e!3885724 () Bool)

(declare-fun tp!1779343 () Bool)

(declare-fun tp!1779344 () Bool)

(assert (=> b!6402723 (= e!3885724 (and tp!1779343 tp!1779344))))

(assert (=> b!6400913 (= tp!1779292 e!3885724)))

(assert (= (and b!6400913 ((_ is Cons!65109) (exprs!6195 (h!71558 (t!378842 zl!343))))) b!6402723))

(declare-fun b!6402724 () Bool)

(declare-fun e!3885725 () Bool)

(declare-fun tp!1779345 () Bool)

(declare-fun tp!1779346 () Bool)

(assert (=> b!6402724 (= e!3885725 (and tp!1779345 tp!1779346))))

(assert (=> b!6400892 (= tp!1779271 e!3885725)))

(assert (= (and b!6400892 ((_ is Cons!65109) (exprs!6195 setElem!43692))) b!6402724))

(declare-fun b!6402725 () Bool)

(declare-fun e!3885726 () Bool)

(declare-fun tp!1779347 () Bool)

(assert (=> b!6402725 (= e!3885726 (and tp_is_empty!41875 tp!1779347))))

(assert (=> b!6400919 (= tp!1779298 e!3885726)))

(assert (= (and b!6400919 ((_ is Cons!65108) (t!378840 (t!378840 s!2326)))) b!6402725))

(declare-fun b!6402726 () Bool)

(declare-fun e!3885727 () Bool)

(assert (=> b!6402726 (= e!3885727 tp_is_empty!41875)))

(declare-fun b!6402727 () Bool)

(declare-fun tp!1779352 () Bool)

(declare-fun tp!1779350 () Bool)

(assert (=> b!6402727 (= e!3885727 (and tp!1779352 tp!1779350))))

(declare-fun b!6402729 () Bool)

(declare-fun tp!1779351 () Bool)

(declare-fun tp!1779349 () Bool)

(assert (=> b!6402729 (= e!3885727 (and tp!1779351 tp!1779349))))

(assert (=> b!6400897 (= tp!1779276 e!3885727)))

(declare-fun b!6402728 () Bool)

(declare-fun tp!1779348 () Bool)

(assert (=> b!6402728 (= e!3885727 tp!1779348)))

(assert (= (and b!6400897 ((_ is ElementMatch!16311) (h!71557 (exprs!6195 setElem!43686)))) b!6402726))

(assert (= (and b!6400897 ((_ is Concat!25156) (h!71557 (exprs!6195 setElem!43686)))) b!6402727))

(assert (= (and b!6400897 ((_ is Star!16311) (h!71557 (exprs!6195 setElem!43686)))) b!6402728))

(assert (= (and b!6400897 ((_ is Union!16311) (h!71557 (exprs!6195 setElem!43686)))) b!6402729))

(declare-fun b!6402730 () Bool)

(declare-fun e!3885728 () Bool)

(declare-fun tp!1779353 () Bool)

(declare-fun tp!1779354 () Bool)

(assert (=> b!6402730 (= e!3885728 (and tp!1779353 tp!1779354))))

(assert (=> b!6400897 (= tp!1779277 e!3885728)))

(assert (= (and b!6400897 ((_ is Cons!65109) (t!378841 (exprs!6195 setElem!43686)))) b!6402730))

(declare-fun b!6402732 () Bool)

(declare-fun e!3885730 () Bool)

(declare-fun tp!1779355 () Bool)

(assert (=> b!6402732 (= e!3885730 tp!1779355)))

(declare-fun tp!1779356 () Bool)

(declare-fun b!6402731 () Bool)

(declare-fun e!3885729 () Bool)

(assert (=> b!6402731 (= e!3885729 (and (inv!84024 (h!71558 (t!378842 (t!378842 zl!343)))) e!3885730 tp!1779356))))

(assert (=> b!6400912 (= tp!1779293 e!3885729)))

(assert (= b!6402731 b!6402732))

(assert (= (and b!6400912 ((_ is Cons!65110) (t!378842 (t!378842 zl!343)))) b!6402731))

(declare-fun m!7200048 () Bool)

(assert (=> b!6402731 m!7200048))

(declare-fun condSetEmpty!43707 () Bool)

(assert (=> setNonEmpty!43692 (= condSetEmpty!43707 (= setRest!43692 ((as const (Array Context!11390 Bool)) false)))))

(declare-fun setRes!43707 () Bool)

(assert (=> setNonEmpty!43692 (= tp!1779270 setRes!43707)))

(declare-fun setIsEmpty!43707 () Bool)

(assert (=> setIsEmpty!43707 setRes!43707))

(declare-fun setElem!43707 () Context!11390)

(declare-fun setNonEmpty!43707 () Bool)

(declare-fun e!3885731 () Bool)

(declare-fun tp!1779357 () Bool)

(assert (=> setNonEmpty!43707 (= setRes!43707 (and tp!1779357 (inv!84024 setElem!43707) e!3885731))))

(declare-fun setRest!43707 () (InoxSet Context!11390))

(assert (=> setNonEmpty!43707 (= setRest!43692 ((_ map or) (store ((as const (Array Context!11390 Bool)) false) setElem!43707 true) setRest!43707))))

(declare-fun b!6402733 () Bool)

(declare-fun tp!1779358 () Bool)

(assert (=> b!6402733 (= e!3885731 tp!1779358)))

(assert (= (and setNonEmpty!43692 condSetEmpty!43707) setIsEmpty!43707))

(assert (= (and setNonEmpty!43692 (not condSetEmpty!43707)) setNonEmpty!43707))

(assert (= setNonEmpty!43707 b!6402733))

(declare-fun m!7200056 () Bool)

(assert (=> setNonEmpty!43707 m!7200056))

(declare-fun b!6402734 () Bool)

(declare-fun e!3885732 () Bool)

(assert (=> b!6402734 (= e!3885732 tp_is_empty!41875)))

(declare-fun b!6402735 () Bool)

(declare-fun tp!1779363 () Bool)

(declare-fun tp!1779361 () Bool)

(assert (=> b!6402735 (= e!3885732 (and tp!1779363 tp!1779361))))

(declare-fun b!6402737 () Bool)

(declare-fun tp!1779362 () Bool)

(declare-fun tp!1779360 () Bool)

(assert (=> b!6402737 (= e!3885732 (and tp!1779362 tp!1779360))))

(assert (=> b!6400879 (= tp!1779254 e!3885732)))

(declare-fun b!6402736 () Bool)

(declare-fun tp!1779359 () Bool)

(assert (=> b!6402736 (= e!3885732 tp!1779359)))

(assert (= (and b!6400879 ((_ is ElementMatch!16311) (regOne!33135 (regOne!33134 r!7292)))) b!6402734))

(assert (= (and b!6400879 ((_ is Concat!25156) (regOne!33135 (regOne!33134 r!7292)))) b!6402735))

(assert (= (and b!6400879 ((_ is Star!16311) (regOne!33135 (regOne!33134 r!7292)))) b!6402736))

(assert (= (and b!6400879 ((_ is Union!16311) (regOne!33135 (regOne!33134 r!7292)))) b!6402737))

(declare-fun b!6402755 () Bool)

(declare-fun e!3885743 () Bool)

(assert (=> b!6402755 (= e!3885743 tp_is_empty!41875)))

(declare-fun b!6402756 () Bool)

(declare-fun tp!1779368 () Bool)

(declare-fun tp!1779366 () Bool)

(assert (=> b!6402756 (= e!3885743 (and tp!1779368 tp!1779366))))

(declare-fun b!6402758 () Bool)

(declare-fun tp!1779367 () Bool)

(declare-fun tp!1779365 () Bool)

(assert (=> b!6402758 (= e!3885743 (and tp!1779367 tp!1779365))))

(assert (=> b!6400879 (= tp!1779252 e!3885743)))

(declare-fun b!6402757 () Bool)

(declare-fun tp!1779364 () Bool)

(assert (=> b!6402757 (= e!3885743 tp!1779364)))

(assert (= (and b!6400879 ((_ is ElementMatch!16311) (regTwo!33135 (regOne!33134 r!7292)))) b!6402755))

(assert (= (and b!6400879 ((_ is Concat!25156) (regTwo!33135 (regOne!33134 r!7292)))) b!6402756))

(assert (= (and b!6400879 ((_ is Star!16311) (regTwo!33135 (regOne!33134 r!7292)))) b!6402757))

(assert (= (and b!6400879 ((_ is Union!16311) (regTwo!33135 (regOne!33134 r!7292)))) b!6402758))

(declare-fun b!6402759 () Bool)

(declare-fun e!3885744 () Bool)

(assert (=> b!6402759 (= e!3885744 tp_is_empty!41875)))

(declare-fun b!6402760 () Bool)

(declare-fun tp!1779373 () Bool)

(declare-fun tp!1779371 () Bool)

(assert (=> b!6402760 (= e!3885744 (and tp!1779373 tp!1779371))))

(declare-fun b!6402762 () Bool)

(declare-fun tp!1779372 () Bool)

(declare-fun tp!1779370 () Bool)

(assert (=> b!6402762 (= e!3885744 (and tp!1779372 tp!1779370))))

(assert (=> b!6400900 (= tp!1779278 e!3885744)))

(declare-fun b!6402761 () Bool)

(declare-fun tp!1779369 () Bool)

(assert (=> b!6402761 (= e!3885744 tp!1779369)))

(assert (= (and b!6400900 ((_ is ElementMatch!16311) (reg!16640 (regOne!33135 r!7292)))) b!6402759))

(assert (= (and b!6400900 ((_ is Concat!25156) (reg!16640 (regOne!33135 r!7292)))) b!6402760))

(assert (= (and b!6400900 ((_ is Star!16311) (reg!16640 (regOne!33135 r!7292)))) b!6402761))

(assert (= (and b!6400900 ((_ is Union!16311) (reg!16640 (regOne!33135 r!7292)))) b!6402762))

(declare-fun b!6402763 () Bool)

(declare-fun e!3885745 () Bool)

(assert (=> b!6402763 (= e!3885745 tp_is_empty!41875)))

(declare-fun b!6402764 () Bool)

(declare-fun tp!1779378 () Bool)

(declare-fun tp!1779376 () Bool)

(assert (=> b!6402764 (= e!3885745 (and tp!1779378 tp!1779376))))

(declare-fun b!6402766 () Bool)

(declare-fun tp!1779377 () Bool)

(declare-fun tp!1779375 () Bool)

(assert (=> b!6402766 (= e!3885745 (and tp!1779377 tp!1779375))))

(assert (=> b!6400887 (= tp!1779264 e!3885745)))

(declare-fun b!6402765 () Bool)

(declare-fun tp!1779374 () Bool)

(assert (=> b!6402765 (= e!3885745 tp!1779374)))

(assert (= (and b!6400887 ((_ is ElementMatch!16311) (regOne!33135 (reg!16640 r!7292)))) b!6402763))

(assert (= (and b!6400887 ((_ is Concat!25156) (regOne!33135 (reg!16640 r!7292)))) b!6402764))

(assert (= (and b!6400887 ((_ is Star!16311) (regOne!33135 (reg!16640 r!7292)))) b!6402765))

(assert (= (and b!6400887 ((_ is Union!16311) (regOne!33135 (reg!16640 r!7292)))) b!6402766))

(declare-fun b!6402767 () Bool)

(declare-fun e!3885746 () Bool)

(assert (=> b!6402767 (= e!3885746 tp_is_empty!41875)))

(declare-fun b!6402768 () Bool)

(declare-fun tp!1779383 () Bool)

(declare-fun tp!1779381 () Bool)

(assert (=> b!6402768 (= e!3885746 (and tp!1779383 tp!1779381))))

(declare-fun b!6402770 () Bool)

(declare-fun tp!1779382 () Bool)

(declare-fun tp!1779380 () Bool)

(assert (=> b!6402770 (= e!3885746 (and tp!1779382 tp!1779380))))

(assert (=> b!6400887 (= tp!1779262 e!3885746)))

(declare-fun b!6402769 () Bool)

(declare-fun tp!1779379 () Bool)

(assert (=> b!6402769 (= e!3885746 tp!1779379)))

(assert (= (and b!6400887 ((_ is ElementMatch!16311) (regTwo!33135 (reg!16640 r!7292)))) b!6402767))

(assert (= (and b!6400887 ((_ is Concat!25156) (regTwo!33135 (reg!16640 r!7292)))) b!6402768))

(assert (= (and b!6400887 ((_ is Star!16311) (regTwo!33135 (reg!16640 r!7292)))) b!6402769))

(assert (= (and b!6400887 ((_ is Union!16311) (regTwo!33135 (reg!16640 r!7292)))) b!6402770))

(declare-fun b!6402771 () Bool)

(declare-fun e!3885747 () Bool)

(assert (=> b!6402771 (= e!3885747 tp_is_empty!41875)))

(declare-fun b!6402772 () Bool)

(declare-fun tp!1779388 () Bool)

(declare-fun tp!1779386 () Bool)

(assert (=> b!6402772 (= e!3885747 (and tp!1779388 tp!1779386))))

(declare-fun b!6402774 () Bool)

(declare-fun tp!1779387 () Bool)

(declare-fun tp!1779385 () Bool)

(assert (=> b!6402774 (= e!3885747 (and tp!1779387 tp!1779385))))

(assert (=> b!6400899 (= tp!1779282 e!3885747)))

(declare-fun b!6402773 () Bool)

(declare-fun tp!1779384 () Bool)

(assert (=> b!6402773 (= e!3885747 tp!1779384)))

(assert (= (and b!6400899 ((_ is ElementMatch!16311) (regOne!33134 (regOne!33135 r!7292)))) b!6402771))

(assert (= (and b!6400899 ((_ is Concat!25156) (regOne!33134 (regOne!33135 r!7292)))) b!6402772))

(assert (= (and b!6400899 ((_ is Star!16311) (regOne!33134 (regOne!33135 r!7292)))) b!6402773))

(assert (= (and b!6400899 ((_ is Union!16311) (regOne!33134 (regOne!33135 r!7292)))) b!6402774))

(declare-fun b!6402775 () Bool)

(declare-fun e!3885748 () Bool)

(assert (=> b!6402775 (= e!3885748 tp_is_empty!41875)))

(declare-fun b!6402776 () Bool)

(declare-fun tp!1779393 () Bool)

(declare-fun tp!1779391 () Bool)

(assert (=> b!6402776 (= e!3885748 (and tp!1779393 tp!1779391))))

(declare-fun b!6402778 () Bool)

(declare-fun tp!1779392 () Bool)

(declare-fun tp!1779390 () Bool)

(assert (=> b!6402778 (= e!3885748 (and tp!1779392 tp!1779390))))

(assert (=> b!6400899 (= tp!1779280 e!3885748)))

(declare-fun b!6402777 () Bool)

(declare-fun tp!1779389 () Bool)

(assert (=> b!6402777 (= e!3885748 tp!1779389)))

(assert (= (and b!6400899 ((_ is ElementMatch!16311) (regTwo!33134 (regOne!33135 r!7292)))) b!6402775))

(assert (= (and b!6400899 ((_ is Concat!25156) (regTwo!33134 (regOne!33135 r!7292)))) b!6402776))

(assert (= (and b!6400899 ((_ is Star!16311) (regTwo!33134 (regOne!33135 r!7292)))) b!6402777))

(assert (= (and b!6400899 ((_ is Union!16311) (regTwo!33134 (regOne!33135 r!7292)))) b!6402778))

(declare-fun b!6402779 () Bool)

(declare-fun e!3885749 () Bool)

(assert (=> b!6402779 (= e!3885749 tp_is_empty!41875)))

(declare-fun b!6402780 () Bool)

(declare-fun tp!1779398 () Bool)

(declare-fun tp!1779396 () Bool)

(assert (=> b!6402780 (= e!3885749 (and tp!1779398 tp!1779396))))

(declare-fun b!6402782 () Bool)

(declare-fun tp!1779397 () Bool)

(declare-fun tp!1779395 () Bool)

(assert (=> b!6402782 (= e!3885749 (and tp!1779397 tp!1779395))))

(assert (=> b!6400878 (= tp!1779251 e!3885749)))

(declare-fun b!6402781 () Bool)

(declare-fun tp!1779394 () Bool)

(assert (=> b!6402781 (= e!3885749 tp!1779394)))

(assert (= (and b!6400878 ((_ is ElementMatch!16311) (reg!16640 (regOne!33134 r!7292)))) b!6402779))

(assert (= (and b!6400878 ((_ is Concat!25156) (reg!16640 (regOne!33134 r!7292)))) b!6402780))

(assert (= (and b!6400878 ((_ is Star!16311) (reg!16640 (regOne!33134 r!7292)))) b!6402781))

(assert (= (and b!6400878 ((_ is Union!16311) (reg!16640 (regOne!33134 r!7292)))) b!6402782))

(declare-fun b!6402783 () Bool)

(declare-fun e!3885750 () Bool)

(assert (=> b!6402783 (= e!3885750 tp_is_empty!41875)))

(declare-fun b!6402784 () Bool)

(declare-fun tp!1779403 () Bool)

(declare-fun tp!1779401 () Bool)

(assert (=> b!6402784 (= e!3885750 (and tp!1779403 tp!1779401))))

(declare-fun b!6402786 () Bool)

(declare-fun tp!1779402 () Bool)

(declare-fun tp!1779400 () Bool)

(assert (=> b!6402786 (= e!3885750 (and tp!1779402 tp!1779400))))

(assert (=> b!6400877 (= tp!1779255 e!3885750)))

(declare-fun b!6402785 () Bool)

(declare-fun tp!1779399 () Bool)

(assert (=> b!6402785 (= e!3885750 tp!1779399)))

(assert (= (and b!6400877 ((_ is ElementMatch!16311) (regOne!33134 (regOne!33134 r!7292)))) b!6402783))

(assert (= (and b!6400877 ((_ is Concat!25156) (regOne!33134 (regOne!33134 r!7292)))) b!6402784))

(assert (= (and b!6400877 ((_ is Star!16311) (regOne!33134 (regOne!33134 r!7292)))) b!6402785))

(assert (= (and b!6400877 ((_ is Union!16311) (regOne!33134 (regOne!33134 r!7292)))) b!6402786))

(declare-fun b!6402787 () Bool)

(declare-fun e!3885751 () Bool)

(assert (=> b!6402787 (= e!3885751 tp_is_empty!41875)))

(declare-fun b!6402788 () Bool)

(declare-fun tp!1779408 () Bool)

(declare-fun tp!1779406 () Bool)

(assert (=> b!6402788 (= e!3885751 (and tp!1779408 tp!1779406))))

(declare-fun b!6402790 () Bool)

(declare-fun tp!1779407 () Bool)

(declare-fun tp!1779405 () Bool)

(assert (=> b!6402790 (= e!3885751 (and tp!1779407 tp!1779405))))

(assert (=> b!6400877 (= tp!1779253 e!3885751)))

(declare-fun b!6402789 () Bool)

(declare-fun tp!1779404 () Bool)

(assert (=> b!6402789 (= e!3885751 tp!1779404)))

(assert (= (and b!6400877 ((_ is ElementMatch!16311) (regTwo!33134 (regOne!33134 r!7292)))) b!6402787))

(assert (= (and b!6400877 ((_ is Concat!25156) (regTwo!33134 (regOne!33134 r!7292)))) b!6402788))

(assert (= (and b!6400877 ((_ is Star!16311) (regTwo!33134 (regOne!33134 r!7292)))) b!6402789))

(assert (= (and b!6400877 ((_ is Union!16311) (regTwo!33134 (regOne!33134 r!7292)))) b!6402790))

(declare-fun b!6402791 () Bool)

(declare-fun e!3885752 () Bool)

(assert (=> b!6402791 (= e!3885752 tp_is_empty!41875)))

(declare-fun b!6402792 () Bool)

(declare-fun tp!1779413 () Bool)

(declare-fun tp!1779411 () Bool)

(assert (=> b!6402792 (= e!3885752 (and tp!1779413 tp!1779411))))

(declare-fun b!6402794 () Bool)

(declare-fun tp!1779412 () Bool)

(declare-fun tp!1779410 () Bool)

(assert (=> b!6402794 (= e!3885752 (and tp!1779412 tp!1779410))))

(assert (=> b!6400914 (= tp!1779294 e!3885752)))

(declare-fun b!6402793 () Bool)

(declare-fun tp!1779409 () Bool)

(assert (=> b!6402793 (= e!3885752 tp!1779409)))

(assert (= (and b!6400914 ((_ is ElementMatch!16311) (h!71557 (exprs!6195 (h!71558 zl!343))))) b!6402791))

(assert (= (and b!6400914 ((_ is Concat!25156) (h!71557 (exprs!6195 (h!71558 zl!343))))) b!6402792))

(assert (= (and b!6400914 ((_ is Star!16311) (h!71557 (exprs!6195 (h!71558 zl!343))))) b!6402793))

(assert (= (and b!6400914 ((_ is Union!16311) (h!71557 (exprs!6195 (h!71558 zl!343))))) b!6402794))

(declare-fun b!6402795 () Bool)

(declare-fun e!3885753 () Bool)

(declare-fun tp!1779414 () Bool)

(declare-fun tp!1779415 () Bool)

(assert (=> b!6402795 (= e!3885753 (and tp!1779414 tp!1779415))))

(assert (=> b!6400914 (= tp!1779295 e!3885753)))

(assert (= (and b!6400914 ((_ is Cons!65109) (t!378841 (exprs!6195 (h!71558 zl!343))))) b!6402795))

(declare-fun b!6402796 () Bool)

(declare-fun e!3885754 () Bool)

(assert (=> b!6402796 (= e!3885754 tp_is_empty!41875)))

(declare-fun b!6402797 () Bool)

(declare-fun tp!1779420 () Bool)

(declare-fun tp!1779418 () Bool)

(assert (=> b!6402797 (= e!3885754 (and tp!1779420 tp!1779418))))

(declare-fun b!6402799 () Bool)

(declare-fun tp!1779419 () Bool)

(declare-fun tp!1779417 () Bool)

(assert (=> b!6402799 (= e!3885754 (and tp!1779419 tp!1779417))))

(assert (=> b!6400886 (= tp!1779261 e!3885754)))

(declare-fun b!6402798 () Bool)

(declare-fun tp!1779416 () Bool)

(assert (=> b!6402798 (= e!3885754 tp!1779416)))

(assert (= (and b!6400886 ((_ is ElementMatch!16311) (reg!16640 (reg!16640 r!7292)))) b!6402796))

(assert (= (and b!6400886 ((_ is Concat!25156) (reg!16640 (reg!16640 r!7292)))) b!6402797))

(assert (= (and b!6400886 ((_ is Star!16311) (reg!16640 (reg!16640 r!7292)))) b!6402798))

(assert (= (and b!6400886 ((_ is Union!16311) (reg!16640 (reg!16640 r!7292)))) b!6402799))

(declare-fun b!6402800 () Bool)

(declare-fun e!3885755 () Bool)

(assert (=> b!6402800 (= e!3885755 tp_is_empty!41875)))

(declare-fun b!6402801 () Bool)

(declare-fun tp!1779425 () Bool)

(declare-fun tp!1779423 () Bool)

(assert (=> b!6402801 (= e!3885755 (and tp!1779425 tp!1779423))))

(declare-fun b!6402803 () Bool)

(declare-fun tp!1779424 () Bool)

(declare-fun tp!1779422 () Bool)

(assert (=> b!6402803 (= e!3885755 (and tp!1779424 tp!1779422))))

(assert (=> b!6400885 (= tp!1779265 e!3885755)))

(declare-fun b!6402802 () Bool)

(declare-fun tp!1779421 () Bool)

(assert (=> b!6402802 (= e!3885755 tp!1779421)))

(assert (= (and b!6400885 ((_ is ElementMatch!16311) (regOne!33134 (reg!16640 r!7292)))) b!6402800))

(assert (= (and b!6400885 ((_ is Concat!25156) (regOne!33134 (reg!16640 r!7292)))) b!6402801))

(assert (= (and b!6400885 ((_ is Star!16311) (regOne!33134 (reg!16640 r!7292)))) b!6402802))

(assert (= (and b!6400885 ((_ is Union!16311) (regOne!33134 (reg!16640 r!7292)))) b!6402803))

(declare-fun b!6402804 () Bool)

(declare-fun e!3885756 () Bool)

(assert (=> b!6402804 (= e!3885756 tp_is_empty!41875)))

(declare-fun b!6402805 () Bool)

(declare-fun tp!1779430 () Bool)

(declare-fun tp!1779428 () Bool)

(assert (=> b!6402805 (= e!3885756 (and tp!1779430 tp!1779428))))

(declare-fun b!6402807 () Bool)

(declare-fun tp!1779429 () Bool)

(declare-fun tp!1779427 () Bool)

(assert (=> b!6402807 (= e!3885756 (and tp!1779429 tp!1779427))))

(assert (=> b!6400885 (= tp!1779263 e!3885756)))

(declare-fun b!6402806 () Bool)

(declare-fun tp!1779426 () Bool)

(assert (=> b!6402806 (= e!3885756 tp!1779426)))

(assert (= (and b!6400885 ((_ is ElementMatch!16311) (regTwo!33134 (reg!16640 r!7292)))) b!6402804))

(assert (= (and b!6400885 ((_ is Concat!25156) (regTwo!33134 (reg!16640 r!7292)))) b!6402805))

(assert (= (and b!6400885 ((_ is Star!16311) (regTwo!33134 (reg!16640 r!7292)))) b!6402806))

(assert (= (and b!6400885 ((_ is Union!16311) (regTwo!33134 (reg!16640 r!7292)))) b!6402807))

(declare-fun b!6402808 () Bool)

(declare-fun e!3885757 () Bool)

(assert (=> b!6402808 (= e!3885757 tp_is_empty!41875)))

(declare-fun b!6402809 () Bool)

(declare-fun tp!1779435 () Bool)

(declare-fun tp!1779433 () Bool)

(assert (=> b!6402809 (= e!3885757 (and tp!1779435 tp!1779433))))

(declare-fun b!6402811 () Bool)

(declare-fun tp!1779434 () Bool)

(declare-fun tp!1779432 () Bool)

(assert (=> b!6402811 (= e!3885757 (and tp!1779434 tp!1779432))))

(assert (=> b!6400901 (= tp!1779281 e!3885757)))

(declare-fun b!6402810 () Bool)

(declare-fun tp!1779431 () Bool)

(assert (=> b!6402810 (= e!3885757 tp!1779431)))

(assert (= (and b!6400901 ((_ is ElementMatch!16311) (regOne!33135 (regOne!33135 r!7292)))) b!6402808))

(assert (= (and b!6400901 ((_ is Concat!25156) (regOne!33135 (regOne!33135 r!7292)))) b!6402809))

(assert (= (and b!6400901 ((_ is Star!16311) (regOne!33135 (regOne!33135 r!7292)))) b!6402810))

(assert (= (and b!6400901 ((_ is Union!16311) (regOne!33135 (regOne!33135 r!7292)))) b!6402811))

(declare-fun b!6402812 () Bool)

(declare-fun e!3885758 () Bool)

(assert (=> b!6402812 (= e!3885758 tp_is_empty!41875)))

(declare-fun b!6402813 () Bool)

(declare-fun tp!1779440 () Bool)

(declare-fun tp!1779438 () Bool)

(assert (=> b!6402813 (= e!3885758 (and tp!1779440 tp!1779438))))

(declare-fun b!6402815 () Bool)

(declare-fun tp!1779439 () Bool)

(declare-fun tp!1779437 () Bool)

(assert (=> b!6402815 (= e!3885758 (and tp!1779439 tp!1779437))))

(assert (=> b!6400901 (= tp!1779279 e!3885758)))

(declare-fun b!6402814 () Bool)

(declare-fun tp!1779436 () Bool)

(assert (=> b!6402814 (= e!3885758 tp!1779436)))

(assert (= (and b!6400901 ((_ is ElementMatch!16311) (regTwo!33135 (regOne!33135 r!7292)))) b!6402812))

(assert (= (and b!6400901 ((_ is Concat!25156) (regTwo!33135 (regOne!33135 r!7292)))) b!6402813))

(assert (= (and b!6400901 ((_ is Star!16311) (regTwo!33135 (regOne!33135 r!7292)))) b!6402814))

(assert (= (and b!6400901 ((_ is Union!16311) (regTwo!33135 (regOne!33135 r!7292)))) b!6402815))

(declare-fun b!6402816 () Bool)

(declare-fun e!3885759 () Bool)

(assert (=> b!6402816 (= e!3885759 tp_is_empty!41875)))

(declare-fun b!6402817 () Bool)

(declare-fun tp!1779445 () Bool)

(declare-fun tp!1779443 () Bool)

(assert (=> b!6402817 (= e!3885759 (and tp!1779445 tp!1779443))))

(declare-fun b!6402819 () Bool)

(declare-fun tp!1779444 () Bool)

(declare-fun tp!1779442 () Bool)

(assert (=> b!6402819 (= e!3885759 (and tp!1779444 tp!1779442))))

(assert (=> b!6400905 (= tp!1779286 e!3885759)))

(declare-fun b!6402818 () Bool)

(declare-fun tp!1779441 () Bool)

(assert (=> b!6402818 (= e!3885759 tp!1779441)))

(assert (= (and b!6400905 ((_ is ElementMatch!16311) (regOne!33135 (regTwo!33135 r!7292)))) b!6402816))

(assert (= (and b!6400905 ((_ is Concat!25156) (regOne!33135 (regTwo!33135 r!7292)))) b!6402817))

(assert (= (and b!6400905 ((_ is Star!16311) (regOne!33135 (regTwo!33135 r!7292)))) b!6402818))

(assert (= (and b!6400905 ((_ is Union!16311) (regOne!33135 (regTwo!33135 r!7292)))) b!6402819))

(declare-fun b!6402820 () Bool)

(declare-fun e!3885760 () Bool)

(assert (=> b!6402820 (= e!3885760 tp_is_empty!41875)))

(declare-fun b!6402821 () Bool)

(declare-fun tp!1779450 () Bool)

(declare-fun tp!1779448 () Bool)

(assert (=> b!6402821 (= e!3885760 (and tp!1779450 tp!1779448))))

(declare-fun b!6402823 () Bool)

(declare-fun tp!1779449 () Bool)

(declare-fun tp!1779447 () Bool)

(assert (=> b!6402823 (= e!3885760 (and tp!1779449 tp!1779447))))

(assert (=> b!6400905 (= tp!1779284 e!3885760)))

(declare-fun b!6402822 () Bool)

(declare-fun tp!1779446 () Bool)

(assert (=> b!6402822 (= e!3885760 tp!1779446)))

(assert (= (and b!6400905 ((_ is ElementMatch!16311) (regTwo!33135 (regTwo!33135 r!7292)))) b!6402820))

(assert (= (and b!6400905 ((_ is Concat!25156) (regTwo!33135 (regTwo!33135 r!7292)))) b!6402821))

(assert (= (and b!6400905 ((_ is Star!16311) (regTwo!33135 (regTwo!33135 r!7292)))) b!6402822))

(assert (= (and b!6400905 ((_ is Union!16311) (regTwo!33135 (regTwo!33135 r!7292)))) b!6402823))

(declare-fun b!6402824 () Bool)

(declare-fun e!3885761 () Bool)

(assert (=> b!6402824 (= e!3885761 tp_is_empty!41875)))

(declare-fun b!6402825 () Bool)

(declare-fun tp!1779455 () Bool)

(declare-fun tp!1779453 () Bool)

(assert (=> b!6402825 (= e!3885761 (and tp!1779455 tp!1779453))))

(declare-fun b!6402827 () Bool)

(declare-fun tp!1779454 () Bool)

(declare-fun tp!1779452 () Bool)

(assert (=> b!6402827 (= e!3885761 (and tp!1779454 tp!1779452))))

(assert (=> b!6400883 (= tp!1779259 e!3885761)))

(declare-fun b!6402826 () Bool)

(declare-fun tp!1779451 () Bool)

(assert (=> b!6402826 (= e!3885761 tp!1779451)))

(assert (= (and b!6400883 ((_ is ElementMatch!16311) (regOne!33135 (regTwo!33134 r!7292)))) b!6402824))

(assert (= (and b!6400883 ((_ is Concat!25156) (regOne!33135 (regTwo!33134 r!7292)))) b!6402825))

(assert (= (and b!6400883 ((_ is Star!16311) (regOne!33135 (regTwo!33134 r!7292)))) b!6402826))

(assert (= (and b!6400883 ((_ is Union!16311) (regOne!33135 (regTwo!33134 r!7292)))) b!6402827))

(declare-fun b!6402828 () Bool)

(declare-fun e!3885762 () Bool)

(assert (=> b!6402828 (= e!3885762 tp_is_empty!41875)))

(declare-fun b!6402829 () Bool)

(declare-fun tp!1779460 () Bool)

(declare-fun tp!1779458 () Bool)

(assert (=> b!6402829 (= e!3885762 (and tp!1779460 tp!1779458))))

(declare-fun b!6402831 () Bool)

(declare-fun tp!1779459 () Bool)

(declare-fun tp!1779457 () Bool)

(assert (=> b!6402831 (= e!3885762 (and tp!1779459 tp!1779457))))

(assert (=> b!6400883 (= tp!1779257 e!3885762)))

(declare-fun b!6402830 () Bool)

(declare-fun tp!1779456 () Bool)

(assert (=> b!6402830 (= e!3885762 tp!1779456)))

(assert (= (and b!6400883 ((_ is ElementMatch!16311) (regTwo!33135 (regTwo!33134 r!7292)))) b!6402828))

(assert (= (and b!6400883 ((_ is Concat!25156) (regTwo!33135 (regTwo!33134 r!7292)))) b!6402829))

(assert (= (and b!6400883 ((_ is Star!16311) (regTwo!33135 (regTwo!33134 r!7292)))) b!6402830))

(assert (= (and b!6400883 ((_ is Union!16311) (regTwo!33135 (regTwo!33134 r!7292)))) b!6402831))

(declare-fun b!6402832 () Bool)

(declare-fun e!3885763 () Bool)

(assert (=> b!6402832 (= e!3885763 tp_is_empty!41875)))

(declare-fun b!6402833 () Bool)

(declare-fun tp!1779465 () Bool)

(declare-fun tp!1779463 () Bool)

(assert (=> b!6402833 (= e!3885763 (and tp!1779465 tp!1779463))))

(declare-fun b!6402835 () Bool)

(declare-fun tp!1779464 () Bool)

(declare-fun tp!1779462 () Bool)

(assert (=> b!6402835 (= e!3885763 (and tp!1779464 tp!1779462))))

(assert (=> b!6400904 (= tp!1779283 e!3885763)))

(declare-fun b!6402834 () Bool)

(declare-fun tp!1779461 () Bool)

(assert (=> b!6402834 (= e!3885763 tp!1779461)))

(assert (= (and b!6400904 ((_ is ElementMatch!16311) (reg!16640 (regTwo!33135 r!7292)))) b!6402832))

(assert (= (and b!6400904 ((_ is Concat!25156) (reg!16640 (regTwo!33135 r!7292)))) b!6402833))

(assert (= (and b!6400904 ((_ is Star!16311) (reg!16640 (regTwo!33135 r!7292)))) b!6402834))

(assert (= (and b!6400904 ((_ is Union!16311) (reg!16640 (regTwo!33135 r!7292)))) b!6402835))

(declare-fun b!6402836 () Bool)

(declare-fun e!3885764 () Bool)

(assert (=> b!6402836 (= e!3885764 tp_is_empty!41875)))

(declare-fun b!6402837 () Bool)

(declare-fun tp!1779470 () Bool)

(declare-fun tp!1779468 () Bool)

(assert (=> b!6402837 (= e!3885764 (and tp!1779470 tp!1779468))))

(declare-fun b!6402839 () Bool)

(declare-fun tp!1779469 () Bool)

(declare-fun tp!1779467 () Bool)

(assert (=> b!6402839 (= e!3885764 (and tp!1779469 tp!1779467))))

(assert (=> b!6400903 (= tp!1779287 e!3885764)))

(declare-fun b!6402838 () Bool)

(declare-fun tp!1779466 () Bool)

(assert (=> b!6402838 (= e!3885764 tp!1779466)))

(assert (= (and b!6400903 ((_ is ElementMatch!16311) (regOne!33134 (regTwo!33135 r!7292)))) b!6402836))

(assert (= (and b!6400903 ((_ is Concat!25156) (regOne!33134 (regTwo!33135 r!7292)))) b!6402837))

(assert (= (and b!6400903 ((_ is Star!16311) (regOne!33134 (regTwo!33135 r!7292)))) b!6402838))

(assert (= (and b!6400903 ((_ is Union!16311) (regOne!33134 (regTwo!33135 r!7292)))) b!6402839))

(declare-fun b!6402840 () Bool)

(declare-fun e!3885765 () Bool)

(assert (=> b!6402840 (= e!3885765 tp_is_empty!41875)))

(declare-fun b!6402841 () Bool)

(declare-fun tp!1779475 () Bool)

(declare-fun tp!1779473 () Bool)

(assert (=> b!6402841 (= e!3885765 (and tp!1779475 tp!1779473))))

(declare-fun b!6402843 () Bool)

(declare-fun tp!1779474 () Bool)

(declare-fun tp!1779472 () Bool)

(assert (=> b!6402843 (= e!3885765 (and tp!1779474 tp!1779472))))

(assert (=> b!6400903 (= tp!1779285 e!3885765)))

(declare-fun b!6402842 () Bool)

(declare-fun tp!1779471 () Bool)

(assert (=> b!6402842 (= e!3885765 tp!1779471)))

(assert (= (and b!6400903 ((_ is ElementMatch!16311) (regTwo!33134 (regTwo!33135 r!7292)))) b!6402840))

(assert (= (and b!6400903 ((_ is Concat!25156) (regTwo!33134 (regTwo!33135 r!7292)))) b!6402841))

(assert (= (and b!6400903 ((_ is Star!16311) (regTwo!33134 (regTwo!33135 r!7292)))) b!6402842))

(assert (= (and b!6400903 ((_ is Union!16311) (regTwo!33134 (regTwo!33135 r!7292)))) b!6402843))

(declare-fun b!6402844 () Bool)

(declare-fun e!3885766 () Bool)

(assert (=> b!6402844 (= e!3885766 tp_is_empty!41875)))

(declare-fun b!6402845 () Bool)

(declare-fun tp!1779480 () Bool)

(declare-fun tp!1779478 () Bool)

(assert (=> b!6402845 (= e!3885766 (and tp!1779480 tp!1779478))))

(declare-fun b!6402847 () Bool)

(declare-fun tp!1779479 () Bool)

(declare-fun tp!1779477 () Bool)

(assert (=> b!6402847 (= e!3885766 (and tp!1779479 tp!1779477))))

(assert (=> b!6400882 (= tp!1779256 e!3885766)))

(declare-fun b!6402846 () Bool)

(declare-fun tp!1779476 () Bool)

(assert (=> b!6402846 (= e!3885766 tp!1779476)))

(assert (= (and b!6400882 ((_ is ElementMatch!16311) (reg!16640 (regTwo!33134 r!7292)))) b!6402844))

(assert (= (and b!6400882 ((_ is Concat!25156) (reg!16640 (regTwo!33134 r!7292)))) b!6402845))

(assert (= (and b!6400882 ((_ is Star!16311) (reg!16640 (regTwo!33134 r!7292)))) b!6402846))

(assert (= (and b!6400882 ((_ is Union!16311) (reg!16640 (regTwo!33134 r!7292)))) b!6402847))

(declare-fun b!6402848 () Bool)

(declare-fun e!3885767 () Bool)

(assert (=> b!6402848 (= e!3885767 tp_is_empty!41875)))

(declare-fun b!6402849 () Bool)

(declare-fun tp!1779485 () Bool)

(declare-fun tp!1779483 () Bool)

(assert (=> b!6402849 (= e!3885767 (and tp!1779485 tp!1779483))))

(declare-fun b!6402851 () Bool)

(declare-fun tp!1779484 () Bool)

(declare-fun tp!1779482 () Bool)

(assert (=> b!6402851 (= e!3885767 (and tp!1779484 tp!1779482))))

(assert (=> b!6400881 (= tp!1779260 e!3885767)))

(declare-fun b!6402850 () Bool)

(declare-fun tp!1779481 () Bool)

(assert (=> b!6402850 (= e!3885767 tp!1779481)))

(assert (= (and b!6400881 ((_ is ElementMatch!16311) (regOne!33134 (regTwo!33134 r!7292)))) b!6402848))

(assert (= (and b!6400881 ((_ is Concat!25156) (regOne!33134 (regTwo!33134 r!7292)))) b!6402849))

(assert (= (and b!6400881 ((_ is Star!16311) (regOne!33134 (regTwo!33134 r!7292)))) b!6402850))

(assert (= (and b!6400881 ((_ is Union!16311) (regOne!33134 (regTwo!33134 r!7292)))) b!6402851))

(declare-fun b!6402852 () Bool)

(declare-fun e!3885768 () Bool)

(assert (=> b!6402852 (= e!3885768 tp_is_empty!41875)))

(declare-fun b!6402853 () Bool)

(declare-fun tp!1779490 () Bool)

(declare-fun tp!1779488 () Bool)

(assert (=> b!6402853 (= e!3885768 (and tp!1779490 tp!1779488))))

(declare-fun b!6402855 () Bool)

(declare-fun tp!1779489 () Bool)

(declare-fun tp!1779487 () Bool)

(assert (=> b!6402855 (= e!3885768 (and tp!1779489 tp!1779487))))

(assert (=> b!6400881 (= tp!1779258 e!3885768)))

(declare-fun b!6402854 () Bool)

(declare-fun tp!1779486 () Bool)

(assert (=> b!6402854 (= e!3885768 tp!1779486)))

(assert (= (and b!6400881 ((_ is ElementMatch!16311) (regTwo!33134 (regTwo!33134 r!7292)))) b!6402852))

(assert (= (and b!6400881 ((_ is Concat!25156) (regTwo!33134 (regTwo!33134 r!7292)))) b!6402853))

(assert (= (and b!6400881 ((_ is Star!16311) (regTwo!33134 (regTwo!33134 r!7292)))) b!6402854))

(assert (= (and b!6400881 ((_ is Union!16311) (regTwo!33134 (regTwo!33134 r!7292)))) b!6402855))

(declare-fun b_lambda!243295 () Bool)

(assert (= b_lambda!243267 (or d!2006429 b_lambda!243295)))

(declare-fun bs!1606000 () Bool)

(declare-fun d!2007449 () Bool)

(assert (= bs!1606000 (and d!2007449 d!2006429)))

(assert (=> bs!1606000 (= (dynLambda!25842 lambda!353368 (h!71557 lt!2373788)) (validRegex!8047 (h!71557 lt!2373788)))))

(declare-fun m!7200074 () Bool)

(assert (=> bs!1606000 m!7200074))

(assert (=> b!6401713 d!2007449))

(declare-fun b_lambda!243297 () Bool)

(assert (= b_lambda!243275 (or b!6400830 b_lambda!243297)))

(declare-fun bs!1606001 () Bool)

(declare-fun d!2007451 () Bool)

(assert (= bs!1606001 (and d!2007451 b!6400830)))

(assert (=> bs!1606001 (= (dynLambda!25845 lambda!353411 (h!71558 (t!378842 zl!343))) (>= lt!2373847 (contextDepth!269 (h!71558 (t!378842 zl!343)))))))

(assert (=> bs!1606001 m!7199282))

(assert (=> b!6402046 d!2007451))

(declare-fun b_lambda!243299 () Bool)

(assert (= b_lambda!243283 (or b!6400835 b_lambda!243299)))

(declare-fun bs!1606003 () Bool)

(declare-fun d!2007453 () Bool)

(assert (= bs!1606003 (and d!2007453 b!6400835)))

(assert (=> bs!1606003 (= (dynLambda!25845 lambda!353414 (h!71558 (t!378842 lt!2373651))) (>= lt!2373851 (contextDepth!269 (h!71558 (t!378842 lt!2373651)))))))

(assert (=> bs!1606003 m!7199700))

(assert (=> b!6402358 d!2007453))

(declare-fun b_lambda!243301 () Bool)

(assert (= b_lambda!243261 (or b!6400837 b_lambda!243301)))

(declare-fun bs!1606005 () Bool)

(declare-fun d!2007455 () Bool)

(assert (= bs!1606005 (and d!2007455 b!6400837)))

(assert (=> bs!1606005 (= (dynLambda!25845 lambda!353415 (h!71558 lt!2373651)) (>= lt!2373852 (contextDepth!269 (h!71558 lt!2373651))))))

(assert (=> bs!1606005 m!7198066))

(assert (=> b!6401539 d!2007455))

(declare-fun b_lambda!243303 () Bool)

(assert (= b_lambda!243291 (or b!6400832 b_lambda!243303)))

(declare-fun bs!1606006 () Bool)

(declare-fun d!2007457 () Bool)

(assert (= bs!1606006 (and d!2007457 b!6400832)))

(assert (=> bs!1606006 (= (dynLambda!25845 lambda!353412 (h!71558 zl!343)) (>= lt!2373848 (contextDepth!269 (h!71558 zl!343))))))

(assert (=> bs!1606006 m!7198054))

(assert (=> b!6402555 d!2007457))

(declare-fun b_lambda!243305 () Bool)

(assert (= b_lambda!243289 (or b!6399793 b_lambda!243305)))

(assert (=> d!2007325 d!2006605))

(declare-fun b_lambda!243307 () Bool)

(assert (= b_lambda!243257 (or d!2006421 b_lambda!243307)))

(declare-fun bs!1606008 () Bool)

(declare-fun d!2007459 () Bool)

(assert (= bs!1606008 (and d!2007459 d!2006421)))

(assert (=> bs!1606008 (= (dynLambda!25842 lambda!353365 (h!71557 (unfocusZipperList!1732 zl!343))) (validRegex!8047 (h!71557 (unfocusZipperList!1732 zl!343))))))

(declare-fun m!7200076 () Bool)

(assert (=> bs!1606008 m!7200076))

(assert (=> b!6401392 d!2007459))

(declare-fun b_lambda!243309 () Bool)

(assert (= b_lambda!243255 (or b!6399793 b_lambda!243309)))

(assert (=> d!2006783 d!2006611))

(declare-fun b_lambda!243311 () Bool)

(assert (= b_lambda!243259 (or d!2006553 b_lambda!243311)))

(declare-fun bs!1606011 () Bool)

(declare-fun d!2007461 () Bool)

(assert (= bs!1606011 (and d!2007461 d!2006553)))

(assert (=> bs!1606011 (= (dynLambda!25842 lambda!353400 (h!71557 (t!378841 (exprs!6195 (h!71558 zl!343))))) (validRegex!8047 (h!71557 (t!378841 (exprs!6195 (h!71558 zl!343))))))))

(declare-fun m!7200078 () Bool)

(assert (=> bs!1606011 m!7200078))

(assert (=> b!6401427 d!2007461))

(declare-fun b_lambda!243313 () Bool)

(assert (= b_lambda!243243 (or b!6399793 b_lambda!243313)))

(assert (=> d!2006705 d!2006603))

(declare-fun b_lambda!243315 () Bool)

(assert (= b_lambda!243247 (or d!2006417 b_lambda!243315)))

(declare-fun bs!1606012 () Bool)

(declare-fun d!2007463 () Bool)

(assert (= bs!1606012 (and d!2007463 d!2006417)))

(assert (=> bs!1606012 (= (dynLambda!25842 lambda!353359 (h!71557 (exprs!6195 (h!71558 zl!343)))) (validRegex!8047 (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(declare-fun m!7200080 () Bool)

(assert (=> bs!1606012 m!7200080))

(assert (=> b!6401150 d!2007463))

(declare-fun b_lambda!243317 () Bool)

(assert (= b_lambda!243279 (or b!6399793 b_lambda!243317)))

(assert (=> d!2007231 d!2006609))

(declare-fun b_lambda!243319 () Bool)

(assert (= b_lambda!243239 (or d!2006531 b_lambda!243319)))

(declare-fun bs!1606014 () Bool)

(declare-fun d!2007465 () Bool)

(assert (= bs!1606014 (and d!2007465 d!2006531)))

(assert (=> bs!1606014 (= (dynLambda!25842 lambda!353399 (h!71557 (exprs!6195 (h!71558 zl!343)))) (validRegex!8047 (h!71557 (exprs!6195 (h!71558 zl!343)))))))

(assert (=> bs!1606014 m!7200080))

(assert (=> b!6401095 d!2007465))

(declare-fun b_lambda!243321 () Bool)

(assert (= b_lambda!243265 (or b!6399793 b_lambda!243321)))

(assert (=> d!2006939 d!2006607))

(declare-fun b_lambda!243323 () Bool)

(assert (= b_lambda!243245 (or d!2006563 b_lambda!243323)))

(declare-fun bs!1606015 () Bool)

(declare-fun d!2007467 () Bool)

(assert (= bs!1606015 (and d!2007467 d!2006563)))

(assert (=> bs!1606015 (= (dynLambda!25842 lambda!353403 (h!71557 (exprs!6195 setElem!43686))) (validRegex!8047 (h!71557 (exprs!6195 setElem!43686))))))

(declare-fun m!7200082 () Bool)

(assert (=> bs!1606015 m!7200082))

(assert (=> b!6401128 d!2007467))

(check-sat (not b_lambda!243323) (not b!6402768) (not b!6401948) (not b!6401942) (not b!6401955) (not b!6400980) (not b!6401853) (not d!2006951) (not d!2006755) (not bm!548573) (not d!2007059) (not b_lambda!243295) (not b!6402109) (not b!6402431) (not b!6402825) (not b!6400958) (not b!6402811) (not b!6402116) (not bm!548605) (not b!6402799) (not b!6402483) (not b!6402092) (not bm!548636) (not b!6402061) (not d!2006753) (not bm!548572) (not bm!548793) (not b!6402486) (not d!2007063) (not d!2006779) (not bm!548903) (not b!6402083) (not b!6401919) (not b!6402421) (not b!6401938) (not d!2007093) (not b!6402839) (not b!6402137) (not b_lambda!243233) (not b!6402051) (not b!6401828) (not b!6402805) (not b!6401470) (not b!6402727) (not b!6402843) (not b!6401716) (not b!6402851) (not b!6401290) (not bm!548857) (not bm!548941) (not bm!548593) (not b!6402082) (not d!2006769) (not b!6402784) (not bm!548859) (not bm!548639) (not bm!548964) (not b!6402209) (not d!2007079) (not d!2007041) (not d!2006781) (not b!6401266) (not b!6402335) (not b!6402818) (not b!6401319) (not bm!548695) (not b!6401971) (not bm!548929) (not b!6402422) (not bs!1606008) (not bm!548923) (not b!6401817) (not bm!548671) (not b!6402143) (not bm!548734) (not bm!548753) (not d!2006733) (not bm!548731) (not bm!548969) (not b!6402760) (not b!6402762) (not bm!548755) (not bm!548800) (not d!2007309) (not b!6402845) (not b!6401076) (not d!2007299) (not b!6402343) (not b!6402545) (not b!6402737) (not bm!548949) (not b!6400977) (not b!6401463) (not d!2007097) (not d!2007177) (not b!6401548) (not b!6402773) (not b!6402847) (not b!6402830) (not b!6401646) (not d!2007175) (not b!6401639) (not b!6401728) (not b!6401825) (not bm!548917) (not b!6401142) (not b!6402528) (not b!6401827) (not bm!548889) (not bm!548630) (not b!6402772) (not b!6400979) (not b!6402567) (not b!6402729) (not b!6402774) (not bm!548942) (not d!2006987) (not bm!548830) (not b!6402054) (not bm!548920) (not b!6402829) (not b!6402449) (not b!6402107) (not b_lambda!243303) (not b!6402088) (not bm!548833) (not d!2007313) (not b!6402802) (not d!2006949) (not d!2006681) (not b!6402074) (not b!6401550) (not bm!548908) (not b!6402827) (not b!6400962) (not bm!548829) (not b!6402460) (not b!6401944) (not b!6402206) (not bm!548788) (not bm!548727) (not b!6402450) (not d!2007065) (not b!6402770) (not b!6401599) (not d!2006901) (not bm!548836) (not b!6401428) (not b!6402792) (not bm!548681) (not b!6401633) (not bm!548650) (not b!6402838) (not bm!548617) (not bm!548797) (not b!6400963) (not d!2006821) (not b!6401270) (not b!6402780) (not b!6401344) (not b!6402835) (not b!6401246) (not b!6402516) (not d!2007139) (not setNonEmpty!43702) (not b!6402263) (not b!6401916) (not b!6402765) (not bm!548648) (not b!6402736) (not b!6402795) (not b!6401291) (not b!6402801) (not d!2007033) (not b!6401896) (not b!6402764) (not bm!548876) (not b!6401941) (not d!2007159) (not b!6401885) (not bs!1606011) (not b_lambda!243305) (not bm!548730) (not b!6402756) (not b!6401129) (not b!6402357) (not b!6402458) (not b!6402794) (not b!6402541) (not b!6402084) (not b!6401269) (not b!6402072) (not d!2007207) (not b!6402136) (not b!6402052) (not b_lambda!243227) (not bm!548922) (not b!6402833) (not b!6402336) (not b!6402781) (not b_lambda!243321) (not d!2007295) (not b!6401252) (not d!2007419) (not b!6401700) (not bm!548909) (not d!2007325) (not b!6402032) (not d!2006689) (not d!2006631) (not bm!548742) (not d!2007167) (not d!2006705) (not bm!548612) (not b!6401217) (not bm!548886) (not b!6402139) (not bm!548725) (not b!6402424) (not bm!548675) (not bm!548916) (not b!6402034) (not b!6401650) (not b!6401721) (not d!2006957) (not d!2006667) (not b!6401647) (not b!6401469) (not b_lambda!243313) (not bm!548865) (not b_lambda!243229) (not b!6401701) (not d!2006903) (not bm!548603) (not b!6402803) (not b!6402133) (not b!6402807) (not bm!548700) (not b!6401645) (not d!2007161) (not b!6401719) (not d!2006863) (not d!2007141) (not bm!548724) (not bm!548884) (not b!6401968) (not b!6401816) (not b!6400961) (not b!6402725) (not b!6401218) (not b!6401214) (not b!6402423) (not b!6401136) (not bm!548589) (not b!6402135) (not b!6402778) (not b!6401940) (not bm!548864) (not d!2007135) (not b!6401876) (not b!6401315) (not bm!548882) (not b!6402149) (not b!6401348) (not b!6402776) (not d!2007121) (not bm!548860) (not b!6401628) (not d!2006871) (not b!6402826) (not b!6401247) (not b_lambda!243307) (not b!6402809) (not bm!548933) (not b!6401875) (not b!6402053) (not bm!548655) (not b!6401540) (not b!6402723) (not d!2006813) (not b!6402777) (not b!6402331) (not b!6402732) (not b!6401135) (not d!2006641) (not bm!548651) (not bm!548736) (not b!6401546) (not d!2007365) (not b!6402544) (not b!6402262) (not bm!548956) (not b!6402138) (not b!6402735) (not bm!548737) (not b!6402766) (not d!2007171) (not bm!548910) (not d!2007363) (not b!6402627) (not b!6402810) (not b!6401342) (not b!6402814) (not d!2006757) (not b!6402047) (not b!6402731) (not b!6402134) (not b!6402334) (not bm!548931) (not bm!548835) (not b!6401248) (not d!2006947) (not b!6402517) (not b!6402546) (not b!6401096) (not d!2006939) (not b!6401119) (not bm!548796) (not bm!548732) (not bm!548883) (not b!6401461) (not bm!548680) (not b!6402362) (not b!6402842) (not bm!548590) (not b!6401249) (not b!6401346) (not b!6402448) (not bm!548963) (not b!6401634) tp_is_empty!41875 (not b!6402793) (not b!6402105) (not bm!548792) (not b!6401468) (not d!2006935) (not b!6401480) (not bs!1606015) (not b!6401629) (not bm!548674) (not bm!548652) (not b!6401477) (not b!6402419) (not b!6401888) (not bs!1606014) (not bm!548821) (not b!6401163) (not b!6402823) (not d!2006673) (not bm!548638) (not b!6402488) (not b!6402850) (not bm!548794) (not bm!548823) (not b!6402761) (not d!2007349) (not b!6402609) (not b!6402553) (not b!6402437) (not b!6401878) (not b!6401823) (not bm!548754) (not d!2007357) (not bm!548720) (not b!6402485) (not b_lambda!243301) (not b!6402446) (not b!6402786) (not b!6401718) (not d!2007243) (not bm!548756) (not bm!548968) (not b!6401969) (not d!2006955) (not b!6401087) (not bm!548758) (not bm!548878) (not d!2007241) (not b!6402027) (not b!6402846) (not d!2006859) (not b!6402831) (not b!6401967) (not bm!548743) (not d!2006905) (not b!6402207) (not d!2007417) (not b!6402782) (not b!6402815) (not b!6401644) (not b!6401649) (not b!6400970) (not b!6401975) (not bm!548701) (not bs!1606003) (not bm!548656) (not bm!548905) (not d!2007415) (not bs!1606000) (not bm!548606) (not d!2006725) (not b!6402788) (not b!6402087) (not b!6401213) (not b!6402813) (not bm!548587) (not b!6401852) (not bm!548824) (not b!6401638) (not b_lambda!243235) (not bm!548856) (not d!2006981) (not b!6401768) (not b!6402853) (not b!6400960) (not b!6402797) (not b!6402359) (not bm!548928) (not d!2007143) (not d!2007231) (not bm!548723) (not bm!548854) (not b!6401109) (not d!2007151) (not bm!548676) (not setNonEmpty!43707) (not b!6402539) (not bm!548879) (not b!6401343) (not b!6402231) (not b!6402785) (not b!6401720) (not bm!548726) (not b!6402819) (not bs!1606005) (not b!6402220) (not bm!548672) (not bm!548611) (not bs!1606001) (not b!6402049) (not b!6401251) (not bm!548809) (not b!6401499) (not b!6401347) (not b!6401939) (not b!6402790) (not b!6402728) (not setNonEmpty!43695) (not bm!548810) (not b!6401653) (not b!6402806) (not b!6402355) (not d!2007083) (not bm!548943) (not bm!548591) (not d!2006967) (not d!2006719) (not bm!548795) (not b!6401151) (not bm!548827) (not d!2006791) (not d!2006965) (not d!2007149) (not b!6402674) (not b!6402834) (not b!6402230) (not b!6401370) (not d!2006861) (not b!6401120) (not b!6402798) (not b!6401434) (not setNonEmpty!43696) (not b!6401462) (not bm!548691) (not d!2007263) (not d!2007319) (not b_lambda!243317) (not d!2007163) (not bm!548721) (not b!6402730) (not bm!548935) (not d!2007337) (not b!6402758) (not b!6401714) (not bm!548693) (not b!6401358) (not b!6402451) (not b!6402085) (not d!2006827) (not bm!548832) (not b!6402029) (not d!2007181) (not b!6402817) (not bm!548740) (not d!2006715) (not b!6401826) (not bm!548826) (not b!6402757) (not b!6402837) (not b!6402556) (not bm!548668) (not b!6401345) (not d!2006691) (not b!6402333) (not d!2006783) (not b!6402208) (not b!6401829) (not d!2007355) (not d!2007051) (not b!6402645) (not b!6401652) (not b!6402821) (not bm!548594) (not b_lambda!243309) (not bm!548945) (not b!6402849) (not b!6401873) (not bm!548764) (not b!6401943) (not b!6402508) (not bm!548667) (not d!2007291) (not b!6402854) (not d!2007351) (not bm!548950) (not bm!548592) (not d!2007317) (not bm!548765) (not b!6402487) (not b_lambda!243231) (not b!6402125) (not d!2007283) (not b!6401970) (not b!6401767) (not b_lambda!243311) (not b!6401465) (not b!6401973) (not bm!548913) (not b!6400978) (not bm!548801) (not b!6401419) (not bm!548944) (not b!6402300) (not b!6402733) (not b!6402855) (not bm!548885) (not b!6402628) (not b!6402724) (not b!6402360) (not bs!1606006) (not b!6401877) (not bm!548773) (not b!6401675) (not b!6402629) (not bm!548790) (not setNonEmpty!43706) (not setNonEmpty!43703) (not d!2007211) (not bm!548673) (not bm!548629) (not b!6402822) (not b!6402086) (not b!6401824) (not b!6401033) (not b!6402205) (not b!6402841) (not b_lambda!243299) (not b!6401164) (not b!6402769) (not bm!548757) (not bm!548819) (not d!2006797) (not b!6402789) (not b!6401467) (not b_lambda!243319) (not b!6401433) (not b!6400987) (not b!6402280) (not b!6401393) (not bm!548936) (not bm!548677) (not bm!548649) (not b_lambda!243315) (not b!6402673) (not d!2006637) (not b_lambda!243297) (not b!6401082) (not bm!548907) (not b!6402279) (not b!6402543) (not bs!1606012) (not b!6402495) (not bm!548926) (not b!6401664) (not b!6400975))
(check-sat)
