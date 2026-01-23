; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!617820 () Bool)

(assert start!617820)

(declare-fun b!6195245 () Bool)

(assert (=> b!6195245 true))

(assert (=> b!6195245 true))

(declare-fun lambda!338385 () Int)

(declare-fun lambda!338384 () Int)

(assert (=> b!6195245 (not (= lambda!338385 lambda!338384))))

(assert (=> b!6195245 true))

(assert (=> b!6195245 true))

(declare-fun b!6195218 () Bool)

(assert (=> b!6195218 true))

(declare-fun b!6195207 () Bool)

(declare-fun e!3772850 () Bool)

(declare-datatypes ((C!32534 0))(
  ( (C!32535 (val!25969 Int)) )
))
(declare-datatypes ((Regex!16132 0))(
  ( (ElementMatch!16132 (c!1118067 C!32534)) (Concat!24977 (regOne!32776 Regex!16132) (regTwo!32776 Regex!16132)) (EmptyExpr!16132) (Star!16132 (reg!16461 Regex!16132)) (EmptyLang!16132) (Union!16132 (regOne!32777 Regex!16132) (regTwo!32777 Regex!16132)) )
))
(declare-datatypes ((List!64695 0))(
  ( (Nil!64571) (Cons!64571 (h!71019 Regex!16132) (t!378209 List!64695)) )
))
(declare-datatypes ((Context!11032 0))(
  ( (Context!11033 (exprs!6016 List!64695)) )
))
(declare-fun lt!2341504 () (Set Context!11032))

(declare-datatypes ((List!64696 0))(
  ( (Nil!64572) (Cons!64572 (h!71020 C!32534) (t!378210 List!64696)) )
))
(declare-fun s!2326 () List!64696)

(declare-fun matchZipper!2144 ((Set Context!11032) List!64696) Bool)

(assert (=> b!6195207 (= e!3772850 (matchZipper!2144 lt!2341504 (t!378210 s!2326)))))

(declare-fun b!6195208 () Bool)

(declare-fun e!3772852 () Bool)

(declare-fun lt!2341519 () (Set Context!11032))

(assert (=> b!6195208 (= e!3772852 (matchZipper!2144 lt!2341519 (t!378210 s!2326)))))

(declare-fun b!6195209 () Bool)

(declare-fun e!3772851 () Bool)

(declare-fun e!3772854 () Bool)

(assert (=> b!6195209 (= e!3772851 e!3772854)))

(declare-fun res!2562664 () Bool)

(assert (=> b!6195209 (=> res!2562664 e!3772854)))

(declare-fun lt!2341522 () Regex!16132)

(declare-fun r!7292 () Regex!16132)

(declare-fun lt!2341535 () Regex!16132)

(declare-fun lt!2341503 () Regex!16132)

(assert (=> b!6195209 (= res!2562664 (or (not (= lt!2341503 (Concat!24977 (regOne!32777 (regOne!32776 r!7292)) lt!2341522))) (not (= lt!2341535 (Concat!24977 (regTwo!32777 (regOne!32776 r!7292)) lt!2341522))) (not (= (regTwo!32776 r!7292) lt!2341522))))))

(declare-datatypes ((List!64697 0))(
  ( (Nil!64573) (Cons!64573 (h!71021 Context!11032) (t!378211 List!64697)) )
))
(declare-fun zl!343 () List!64697)

(declare-fun generalisedConcat!1729 (List!64695) Regex!16132)

(assert (=> b!6195209 (= lt!2341522 (generalisedConcat!1729 (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195210 () Bool)

(declare-fun e!3772847 () Bool)

(assert (=> b!6195210 (= e!3772847 (not (matchZipper!2144 lt!2341504 (t!378210 s!2326))))))

(declare-fun b!6195211 () Bool)

(declare-fun res!2562665 () Bool)

(declare-fun e!3772842 () Bool)

(assert (=> b!6195211 (=> res!2562665 e!3772842)))

(assert (=> b!6195211 (= res!2562665 (not (is-Cons!64571 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195212 () Bool)

(declare-fun e!3772844 () Bool)

(declare-fun e!3772841 () Bool)

(assert (=> b!6195212 (= e!3772844 e!3772841)))

(declare-fun res!2562667 () Bool)

(assert (=> b!6195212 (=> res!2562667 e!3772841)))

(declare-fun lt!2341526 () List!64697)

(declare-fun lt!2341520 () Int)

(declare-fun zipperDepthTotal!315 (List!64697) Int)

(assert (=> b!6195212 (= res!2562667 (>= (zipperDepthTotal!315 lt!2341526) lt!2341520))))

(declare-fun lt!2341533 () Context!11032)

(assert (=> b!6195212 (= lt!2341526 (Cons!64573 lt!2341533 Nil!64573))))

(declare-fun b!6195213 () Bool)

(declare-fun e!3772834 () Bool)

(declare-fun e!3772859 () Bool)

(assert (=> b!6195213 (= e!3772834 e!3772859)))

(declare-fun res!2562652 () Bool)

(assert (=> b!6195213 (=> res!2562652 e!3772859)))

(declare-fun lt!2341540 () (Set Context!11032))

(declare-fun lt!2341524 () (Set Context!11032))

(assert (=> b!6195213 (= res!2562652 (not (= lt!2341540 lt!2341524)))))

(declare-fun lt!2341538 () (Set Context!11032))

(assert (=> b!6195213 (= lt!2341524 (set.union lt!2341538 lt!2341504))))

(declare-fun lt!2341521 () Context!11032)

(declare-fun derivationStepZipperDown!1380 (Regex!16132 Context!11032 C!32534) (Set Context!11032))

(assert (=> b!6195213 (= lt!2341504 (derivationStepZipperDown!1380 (regTwo!32777 (regOne!32776 r!7292)) lt!2341521 (h!71020 s!2326)))))

(assert (=> b!6195213 (= lt!2341538 (derivationStepZipperDown!1380 (regOne!32777 (regOne!32776 r!7292)) lt!2341521 (h!71020 s!2326)))))

(declare-fun b!6195214 () Bool)

(declare-fun e!3772836 () Bool)

(declare-fun tp_is_empty!41517 () Bool)

(assert (=> b!6195214 (= e!3772836 tp_is_empty!41517)))

(declare-fun b!6195215 () Bool)

(declare-fun e!3772849 () Bool)

(assert (=> b!6195215 (= e!3772849 (not e!3772842))))

(declare-fun res!2562672 () Bool)

(assert (=> b!6195215 (=> res!2562672 e!3772842)))

(assert (=> b!6195215 (= res!2562672 (not (is-Cons!64573 zl!343)))))

(declare-fun lt!2341515 () Bool)

(declare-fun matchRSpec!3233 (Regex!16132 List!64696) Bool)

(assert (=> b!6195215 (= lt!2341515 (matchRSpec!3233 r!7292 s!2326))))

(declare-fun matchR!8315 (Regex!16132 List!64696) Bool)

(assert (=> b!6195215 (= lt!2341515 (matchR!8315 r!7292 s!2326))))

(declare-datatypes ((Unit!157835 0))(
  ( (Unit!157836) )
))
(declare-fun lt!2341547 () Unit!157835)

(declare-fun mainMatchTheorem!3233 (Regex!16132 List!64696) Unit!157835)

(assert (=> b!6195215 (= lt!2341547 (mainMatchTheorem!3233 r!7292 s!2326))))

(declare-fun b!6195216 () Bool)

(declare-fun e!3772839 () Unit!157835)

(declare-fun Unit!157837 () Unit!157835)

(assert (=> b!6195216 (= e!3772839 Unit!157837)))

(declare-fun lt!2341530 () Unit!157835)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!963 ((Set Context!11032) (Set Context!11032) List!64696) Unit!157835)

(assert (=> b!6195216 (= lt!2341530 (lemmaZipperConcatMatchesSameAsBothZippers!963 lt!2341504 lt!2341519 (t!378210 s!2326)))))

(declare-fun res!2562674 () Bool)

(assert (=> b!6195216 (= res!2562674 (matchZipper!2144 lt!2341504 (t!378210 s!2326)))))

(declare-fun e!3772853 () Bool)

(assert (=> b!6195216 (=> res!2562674 e!3772853)))

(assert (=> b!6195216 (= (matchZipper!2144 (set.union lt!2341504 lt!2341519) (t!378210 s!2326)) e!3772853)))

(declare-fun b!6195217 () Bool)

(declare-fun res!2562662 () Bool)

(assert (=> b!6195217 (=> res!2562662 e!3772842)))

(assert (=> b!6195217 (= res!2562662 (or (is-EmptyExpr!16132 r!7292) (is-EmptyLang!16132 r!7292) (is-ElementMatch!16132 r!7292) (is-Union!16132 r!7292) (not (is-Concat!24977 r!7292))))))

(declare-fun e!3772845 () Bool)

(assert (=> b!6195218 (= e!3772845 e!3772834)))

(declare-fun res!2562655 () Bool)

(assert (=> b!6195218 (=> res!2562655 e!3772834)))

(assert (=> b!6195218 (= res!2562655 (or (and (is-ElementMatch!16132 (regOne!32776 r!7292)) (= (c!1118067 (regOne!32776 r!7292)) (h!71020 s!2326))) (not (is-Union!16132 (regOne!32776 r!7292)))))))

(declare-fun lt!2341509 () Unit!157835)

(declare-fun e!3772856 () Unit!157835)

(assert (=> b!6195218 (= lt!2341509 e!3772856)))

(declare-fun c!1118066 () Bool)

(declare-fun nullable!6125 (Regex!16132) Bool)

(assert (=> b!6195218 (= c!1118066 (nullable!6125 (h!71019 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun z!1189 () (Set Context!11032))

(declare-fun lambda!338386 () Int)

(declare-fun flatMap!1637 ((Set Context!11032) Int) (Set Context!11032))

(declare-fun derivationStepZipperUp!1306 (Context!11032 C!32534) (Set Context!11032))

(assert (=> b!6195218 (= (flatMap!1637 z!1189 lambda!338386) (derivationStepZipperUp!1306 (h!71021 zl!343) (h!71020 s!2326)))))

(declare-fun lt!2341529 () Unit!157835)

(declare-fun lemmaFlatMapOnSingletonSet!1163 ((Set Context!11032) Context!11032 Int) Unit!157835)

(assert (=> b!6195218 (= lt!2341529 (lemmaFlatMapOnSingletonSet!1163 z!1189 (h!71021 zl!343) lambda!338386))))

(assert (=> b!6195218 (= lt!2341519 (derivationStepZipperUp!1306 lt!2341521 (h!71020 s!2326)))))

(assert (=> b!6195218 (= lt!2341540 (derivationStepZipperDown!1380 (h!71019 (exprs!6016 (h!71021 zl!343))) lt!2341521 (h!71020 s!2326)))))

(assert (=> b!6195218 (= lt!2341521 (Context!11033 (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun lt!2341517 () (Set Context!11032))

(assert (=> b!6195218 (= lt!2341517 (derivationStepZipperUp!1306 (Context!11033 (Cons!64571 (h!71019 (exprs!6016 (h!71021 zl!343))) (t!378209 (exprs!6016 (h!71021 zl!343))))) (h!71020 s!2326)))))

(declare-fun b!6195219 () Bool)

(declare-fun res!2562677 () Bool)

(declare-fun e!3772843 () Bool)

(assert (=> b!6195219 (=> (not res!2562677) (not e!3772843))))

(declare-fun toList!9916 ((Set Context!11032)) List!64697)

(assert (=> b!6195219 (= res!2562677 (= (toList!9916 z!1189) zl!343))))

(declare-fun b!6195220 () Bool)

(declare-fun res!2562675 () Bool)

(declare-fun e!3772848 () Bool)

(assert (=> b!6195220 (=> res!2562675 e!3772848)))

(declare-fun lt!2341523 () Regex!16132)

(assert (=> b!6195220 (= res!2562675 (or (not (= lt!2341523 r!7292)) (not (= (exprs!6016 (h!71021 zl!343)) (Cons!64571 (regOne!32776 r!7292) (t!378209 (exprs!6016 (h!71021 zl!343))))))))))

(declare-fun b!6195221 () Bool)

(declare-fun e!3772855 () Bool)

(declare-fun tp!1728359 () Bool)

(assert (=> b!6195221 (= e!3772855 tp!1728359)))

(declare-fun b!6195222 () Bool)

(declare-fun Unit!157838 () Unit!157835)

(assert (=> b!6195222 (= e!3772856 Unit!157838)))

(declare-fun lt!2341532 () Unit!157835)

(assert (=> b!6195222 (= lt!2341532 (lemmaZipperConcatMatchesSameAsBothZippers!963 lt!2341540 lt!2341519 (t!378210 s!2326)))))

(declare-fun res!2562666 () Bool)

(assert (=> b!6195222 (= res!2562666 (matchZipper!2144 lt!2341540 (t!378210 s!2326)))))

(assert (=> b!6195222 (=> res!2562666 e!3772852)))

(assert (=> b!6195222 (= (matchZipper!2144 (set.union lt!2341540 lt!2341519) (t!378210 s!2326)) e!3772852)))

(declare-fun b!6195223 () Bool)

(declare-fun res!2562651 () Bool)

(assert (=> b!6195223 (=> res!2562651 e!3772854)))

(declare-fun validRegex!7868 (Regex!16132) Bool)

(assert (=> b!6195223 (= res!2562651 (not (validRegex!7868 (regTwo!32777 (regOne!32776 r!7292)))))))

(declare-fun b!6195224 () Bool)

(declare-fun Unit!157839 () Unit!157835)

(assert (=> b!6195224 (= e!3772839 Unit!157839)))

(declare-fun b!6195225 () Bool)

(declare-fun e!3772835 () Unit!157835)

(declare-fun Unit!157840 () Unit!157835)

(assert (=> b!6195225 (= e!3772835 Unit!157840)))

(declare-fun lt!2341513 () Unit!157835)

(assert (=> b!6195225 (= lt!2341513 (lemmaZipperConcatMatchesSameAsBothZippers!963 lt!2341538 lt!2341519 (t!378210 s!2326)))))

(declare-fun res!2562671 () Bool)

(declare-fun lt!2341548 () Bool)

(assert (=> b!6195225 (= res!2562671 lt!2341548)))

(declare-fun e!3772846 () Bool)

(assert (=> b!6195225 (=> res!2562671 e!3772846)))

(assert (=> b!6195225 (= (matchZipper!2144 (set.union lt!2341538 lt!2341519) (t!378210 s!2326)) e!3772846)))

(declare-fun b!6195226 () Bool)

(assert (=> b!6195226 (= e!3772853 (matchZipper!2144 lt!2341519 (t!378210 s!2326)))))

(declare-fun b!6195227 () Bool)

(assert (=> b!6195227 (= e!3772854 (validRegex!7868 (regTwo!32776 r!7292)))))

(declare-fun b!6195228 () Bool)

(declare-fun res!2562654 () Bool)

(assert (=> b!6195228 (=> res!2562654 e!3772842)))

(declare-fun generalisedUnion!1976 (List!64695) Regex!16132)

(declare-fun unfocusZipperList!1553 (List!64697) List!64695)

(assert (=> b!6195228 (= res!2562654 (not (= r!7292 (generalisedUnion!1976 (unfocusZipperList!1553 zl!343)))))))

(declare-fun b!6195229 () Bool)

(declare-fun e!3772840 () Bool)

(declare-fun tp!1728366 () Bool)

(assert (=> b!6195229 (= e!3772840 (and tp_is_empty!41517 tp!1728366))))

(declare-fun b!6195230 () Bool)

(declare-fun Unit!157841 () Unit!157835)

(assert (=> b!6195230 (= e!3772835 Unit!157841)))

(declare-fun b!6195231 () Bool)

(declare-fun res!2562676 () Bool)

(assert (=> b!6195231 (=> res!2562676 e!3772854)))

(assert (=> b!6195231 (= res!2562676 (not (validRegex!7868 (regOne!32777 (regOne!32776 r!7292)))))))

(declare-fun b!6195232 () Bool)

(declare-fun res!2562658 () Bool)

(assert (=> b!6195232 (=> res!2562658 e!3772842)))

(assert (=> b!6195232 (= res!2562658 (not (= r!7292 (generalisedConcat!1729 (exprs!6016 (h!71021 zl!343))))))))

(declare-fun b!6195233 () Bool)

(declare-fun e!3772858 () Bool)

(assert (=> b!6195233 (= e!3772859 e!3772858)))

(declare-fun res!2562650 () Bool)

(assert (=> b!6195233 (=> res!2562650 e!3772858)))

(assert (=> b!6195233 (= res!2562650 e!3772847)))

(declare-fun res!2562668 () Bool)

(assert (=> b!6195233 (=> (not res!2562668) (not e!3772847))))

(assert (=> b!6195233 (= res!2562668 (not (= (matchZipper!2144 lt!2341540 (t!378210 s!2326)) lt!2341548)))))

(assert (=> b!6195233 (= (matchZipper!2144 lt!2341524 (t!378210 s!2326)) e!3772850)))

(declare-fun res!2562669 () Bool)

(assert (=> b!6195233 (=> res!2562669 e!3772850)))

(assert (=> b!6195233 (= res!2562669 lt!2341548)))

(assert (=> b!6195233 (= lt!2341548 (matchZipper!2144 lt!2341538 (t!378210 s!2326)))))

(declare-fun lt!2341516 () Unit!157835)

(assert (=> b!6195233 (= lt!2341516 (lemmaZipperConcatMatchesSameAsBothZippers!963 lt!2341538 lt!2341504 (t!378210 s!2326)))))

(declare-fun setRes!42031 () Bool)

(declare-fun tp!1728364 () Bool)

(declare-fun setNonEmpty!42031 () Bool)

(declare-fun setElem!42031 () Context!11032)

(declare-fun inv!83578 (Context!11032) Bool)

(assert (=> setNonEmpty!42031 (= setRes!42031 (and tp!1728364 (inv!83578 setElem!42031) e!3772855))))

(declare-fun setRest!42031 () (Set Context!11032))

(assert (=> setNonEmpty!42031 (= z!1189 (set.union (set.insert setElem!42031 (as set.empty (Set Context!11032))) setRest!42031))))

(declare-fun b!6195234 () Bool)

(declare-fun tp!1728367 () Bool)

(declare-fun tp!1728361 () Bool)

(assert (=> b!6195234 (= e!3772836 (and tp!1728367 tp!1728361))))

(declare-fun b!6195235 () Bool)

(assert (=> b!6195235 (= e!3772858 e!3772848)))

(declare-fun res!2562661 () Bool)

(assert (=> b!6195235 (=> res!2562661 e!3772848)))

(declare-fun lt!2341534 () Bool)

(declare-fun e!3772838 () Bool)

(assert (=> b!6195235 (= res!2562661 (not (= lt!2341534 e!3772838)))))

(declare-fun res!2562670 () Bool)

(assert (=> b!6195235 (=> res!2562670 e!3772838)))

(declare-fun lt!2341531 () Bool)

(assert (=> b!6195235 (= res!2562670 lt!2341531)))

(assert (=> b!6195235 (= lt!2341534 (matchZipper!2144 z!1189 s!2326))))

(declare-fun lt!2341543 () (Set Context!11032))

(assert (=> b!6195235 (= lt!2341531 (matchZipper!2144 lt!2341543 s!2326))))

(declare-fun lt!2341537 () Unit!157835)

(assert (=> b!6195235 (= lt!2341537 e!3772839)))

(declare-fun c!1118065 () Bool)

(assert (=> b!6195235 (= c!1118065 (nullable!6125 (regTwo!32777 (regOne!32776 r!7292))))))

(declare-fun lt!2341525 () (Set Context!11032))

(assert (=> b!6195235 (= (flatMap!1637 lt!2341525 lambda!338386) (derivationStepZipperUp!1306 lt!2341533 (h!71020 s!2326)))))

(declare-fun lt!2341549 () Unit!157835)

(assert (=> b!6195235 (= lt!2341549 (lemmaFlatMapOnSingletonSet!1163 lt!2341525 lt!2341533 lambda!338386))))

(declare-fun lt!2341527 () (Set Context!11032))

(assert (=> b!6195235 (= lt!2341527 (derivationStepZipperUp!1306 lt!2341533 (h!71020 s!2326)))))

(declare-fun lt!2341518 () Unit!157835)

(assert (=> b!6195235 (= lt!2341518 e!3772835)))

(declare-fun c!1118064 () Bool)

(assert (=> b!6195235 (= c!1118064 (nullable!6125 (regOne!32777 (regOne!32776 r!7292))))))

(declare-fun lt!2341506 () Context!11032)

(assert (=> b!6195235 (= (flatMap!1637 lt!2341543 lambda!338386) (derivationStepZipperUp!1306 lt!2341506 (h!71020 s!2326)))))

(declare-fun lt!2341541 () Unit!157835)

(assert (=> b!6195235 (= lt!2341541 (lemmaFlatMapOnSingletonSet!1163 lt!2341543 lt!2341506 lambda!338386))))

(declare-fun lt!2341546 () (Set Context!11032))

(assert (=> b!6195235 (= lt!2341546 (derivationStepZipperUp!1306 lt!2341506 (h!71020 s!2326)))))

(assert (=> b!6195235 (= lt!2341525 (set.insert lt!2341533 (as set.empty (Set Context!11032))))))

(declare-fun lt!2341514 () List!64695)

(assert (=> b!6195235 (= lt!2341533 (Context!11033 lt!2341514))))

(assert (=> b!6195235 (= lt!2341514 (Cons!64571 (regTwo!32777 (regOne!32776 r!7292)) (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(assert (=> b!6195235 (= lt!2341543 (set.insert lt!2341506 (as set.empty (Set Context!11032))))))

(declare-fun lt!2341528 () List!64695)

(assert (=> b!6195235 (= lt!2341506 (Context!11033 lt!2341528))))

(assert (=> b!6195235 (= lt!2341528 (Cons!64571 (regOne!32777 (regOne!32776 r!7292)) (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195236 () Bool)

(assert (=> b!6195236 (= e!3772843 e!3772849)))

(declare-fun res!2562657 () Bool)

(assert (=> b!6195236 (=> (not res!2562657) (not e!3772849))))

(assert (=> b!6195236 (= res!2562657 (= r!7292 lt!2341523))))

(declare-fun unfocusZipper!1874 (List!64697) Regex!16132)

(assert (=> b!6195236 (= lt!2341523 (unfocusZipper!1874 zl!343))))

(declare-fun b!6195237 () Bool)

(assert (=> b!6195237 (= e!3772848 e!3772844)))

(declare-fun res!2562663 () Bool)

(assert (=> b!6195237 (=> res!2562663 e!3772844)))

(declare-fun lt!2341545 () Int)

(assert (=> b!6195237 (= res!2562663 (>= lt!2341545 lt!2341520))))

(assert (=> b!6195237 (= lt!2341520 (zipperDepthTotal!315 zl!343))))

(declare-fun lt!2341536 () List!64697)

(assert (=> b!6195237 (= lt!2341545 (zipperDepthTotal!315 lt!2341536))))

(assert (=> b!6195237 (= lt!2341536 (Cons!64573 lt!2341506 Nil!64573))))

(declare-fun res!2562659 () Bool)

(assert (=> start!617820 (=> (not res!2562659) (not e!3772843))))

(assert (=> start!617820 (= res!2562659 (validRegex!7868 r!7292))))

(assert (=> start!617820 e!3772843))

(assert (=> start!617820 e!3772836))

(declare-fun condSetEmpty!42031 () Bool)

(assert (=> start!617820 (= condSetEmpty!42031 (= z!1189 (as set.empty (Set Context!11032))))))

(assert (=> start!617820 setRes!42031))

(declare-fun e!3772857 () Bool)

(assert (=> start!617820 e!3772857))

(assert (=> start!617820 e!3772840))

(declare-fun b!6195238 () Bool)

(declare-fun res!2562653 () Bool)

(assert (=> b!6195238 (=> res!2562653 e!3772842)))

(declare-fun isEmpty!36560 (List!64697) Bool)

(assert (=> b!6195238 (= res!2562653 (not (isEmpty!36560 (t!378211 zl!343))))))

(declare-fun b!6195239 () Bool)

(assert (=> b!6195239 (= e!3772838 (matchZipper!2144 lt!2341525 s!2326))))

(declare-fun e!3772837 () Bool)

(declare-fun tp!1728365 () Bool)

(declare-fun b!6195240 () Bool)

(assert (=> b!6195240 (= e!3772857 (and (inv!83578 (h!71021 zl!343)) e!3772837 tp!1728365))))

(declare-fun b!6195241 () Bool)

(declare-fun tp!1728360 () Bool)

(assert (=> b!6195241 (= e!3772837 tp!1728360)))

(declare-fun b!6195242 () Bool)

(assert (=> b!6195242 (= e!3772841 e!3772851)))

(declare-fun res!2562656 () Bool)

(assert (=> b!6195242 (=> res!2562656 e!3772851)))

(declare-fun lt!2341544 () Bool)

(declare-fun lt!2341542 () Bool)

(assert (=> b!6195242 (= res!2562656 (or (and (not (= lt!2341534 lt!2341542)) (not lt!2341544)) (not (= r!7292 (Concat!24977 (Union!16132 (regOne!32777 (regOne!32776 r!7292)) (regTwo!32777 (regOne!32776 r!7292))) (regTwo!32776 r!7292))))))))

(assert (=> b!6195242 (= lt!2341544 (matchRSpec!3233 lt!2341535 s!2326))))

(declare-fun lt!2341505 () Unit!157835)

(assert (=> b!6195242 (= lt!2341505 (mainMatchTheorem!3233 lt!2341535 s!2326))))

(assert (=> b!6195242 (= lt!2341542 (matchRSpec!3233 lt!2341503 s!2326))))

(declare-fun lt!2341510 () Unit!157835)

(assert (=> b!6195242 (= lt!2341510 (mainMatchTheorem!3233 lt!2341503 s!2326))))

(assert (=> b!6195242 (= lt!2341544 (matchZipper!2144 lt!2341525 s!2326))))

(assert (=> b!6195242 (= lt!2341544 (matchR!8315 lt!2341535 s!2326))))

(declare-fun lt!2341508 () Unit!157835)

(declare-fun theoremZipperRegexEquiv!744 ((Set Context!11032) List!64697 Regex!16132 List!64696) Unit!157835)

(assert (=> b!6195242 (= lt!2341508 (theoremZipperRegexEquiv!744 lt!2341525 lt!2341526 lt!2341535 s!2326))))

(assert (=> b!6195242 (= lt!2341535 (generalisedConcat!1729 lt!2341514))))

(assert (=> b!6195242 (= lt!2341542 lt!2341531)))

(assert (=> b!6195242 (= lt!2341542 (matchR!8315 lt!2341503 s!2326))))

(declare-fun lt!2341539 () Unit!157835)

(assert (=> b!6195242 (= lt!2341539 (theoremZipperRegexEquiv!744 lt!2341543 lt!2341536 lt!2341503 s!2326))))

(assert (=> b!6195242 (= lt!2341503 (generalisedConcat!1729 lt!2341528))))

(declare-fun b!6195243 () Bool)

(declare-fun res!2562660 () Bool)

(assert (=> b!6195243 (=> res!2562660 e!3772845)))

(declare-fun isEmpty!36561 (List!64695) Bool)

(assert (=> b!6195243 (= res!2562660 (isEmpty!36561 (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195244 () Bool)

(assert (=> b!6195244 (= e!3772846 (matchZipper!2144 lt!2341519 (t!378210 s!2326)))))

(assert (=> b!6195245 (= e!3772842 e!3772845)))

(declare-fun res!2562673 () Bool)

(assert (=> b!6195245 (=> res!2562673 e!3772845)))

(declare-fun lt!2341512 () Bool)

(assert (=> b!6195245 (= res!2562673 (or (not (= lt!2341515 lt!2341512)) (is-Nil!64572 s!2326)))))

(declare-fun Exists!3202 (Int) Bool)

(assert (=> b!6195245 (= (Exists!3202 lambda!338384) (Exists!3202 lambda!338385))))

(declare-fun lt!2341511 () Unit!157835)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1739 (Regex!16132 Regex!16132 List!64696) Unit!157835)

(assert (=> b!6195245 (= lt!2341511 (lemmaExistCutMatchRandMatchRSpecEquivalent!1739 (regOne!32776 r!7292) (regTwo!32776 r!7292) s!2326))))

(assert (=> b!6195245 (= lt!2341512 (Exists!3202 lambda!338384))))

(declare-datatypes ((tuple2!66222 0))(
  ( (tuple2!66223 (_1!36414 List!64696) (_2!36414 List!64696)) )
))
(declare-datatypes ((Option!16023 0))(
  ( (None!16022) (Some!16022 (v!52165 tuple2!66222)) )
))
(declare-fun isDefined!12726 (Option!16023) Bool)

(declare-fun findConcatSeparation!2437 (Regex!16132 Regex!16132 List!64696 List!64696 List!64696) Option!16023)

(assert (=> b!6195245 (= lt!2341512 (isDefined!12726 (findConcatSeparation!2437 (regOne!32776 r!7292) (regTwo!32776 r!7292) Nil!64572 s!2326 s!2326)))))

(declare-fun lt!2341507 () Unit!157835)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2201 (Regex!16132 Regex!16132 List!64696) Unit!157835)

(assert (=> b!6195245 (= lt!2341507 (lemmaFindConcatSeparationEquivalentToExists!2201 (regOne!32776 r!7292) (regTwo!32776 r!7292) s!2326))))

(declare-fun b!6195246 () Bool)

(declare-fun tp!1728362 () Bool)

(assert (=> b!6195246 (= e!3772836 tp!1728362)))

(declare-fun b!6195247 () Bool)

(declare-fun Unit!157842 () Unit!157835)

(assert (=> b!6195247 (= e!3772856 Unit!157842)))

(declare-fun setIsEmpty!42031 () Bool)

(assert (=> setIsEmpty!42031 setRes!42031))

(declare-fun b!6195248 () Bool)

(declare-fun tp!1728363 () Bool)

(declare-fun tp!1728368 () Bool)

(assert (=> b!6195248 (= e!3772836 (and tp!1728363 tp!1728368))))

(assert (= (and start!617820 res!2562659) b!6195219))

(assert (= (and b!6195219 res!2562677) b!6195236))

(assert (= (and b!6195236 res!2562657) b!6195215))

(assert (= (and b!6195215 (not res!2562672)) b!6195238))

(assert (= (and b!6195238 (not res!2562653)) b!6195232))

(assert (= (and b!6195232 (not res!2562658)) b!6195211))

(assert (= (and b!6195211 (not res!2562665)) b!6195228))

(assert (= (and b!6195228 (not res!2562654)) b!6195217))

(assert (= (and b!6195217 (not res!2562662)) b!6195245))

(assert (= (and b!6195245 (not res!2562673)) b!6195243))

(assert (= (and b!6195243 (not res!2562660)) b!6195218))

(assert (= (and b!6195218 c!1118066) b!6195222))

(assert (= (and b!6195218 (not c!1118066)) b!6195247))

(assert (= (and b!6195222 (not res!2562666)) b!6195208))

(assert (= (and b!6195218 (not res!2562655)) b!6195213))

(assert (= (and b!6195213 (not res!2562652)) b!6195233))

(assert (= (and b!6195233 (not res!2562669)) b!6195207))

(assert (= (and b!6195233 res!2562668) b!6195210))

(assert (= (and b!6195233 (not res!2562650)) b!6195235))

(assert (= (and b!6195235 c!1118064) b!6195225))

(assert (= (and b!6195235 (not c!1118064)) b!6195230))

(assert (= (and b!6195225 (not res!2562671)) b!6195244))

(assert (= (and b!6195235 c!1118065) b!6195216))

(assert (= (and b!6195235 (not c!1118065)) b!6195224))

(assert (= (and b!6195216 (not res!2562674)) b!6195226))

(assert (= (and b!6195235 (not res!2562670)) b!6195239))

(assert (= (and b!6195235 (not res!2562661)) b!6195220))

(assert (= (and b!6195220 (not res!2562675)) b!6195237))

(assert (= (and b!6195237 (not res!2562663)) b!6195212))

(assert (= (and b!6195212 (not res!2562667)) b!6195242))

(assert (= (and b!6195242 (not res!2562656)) b!6195209))

(assert (= (and b!6195209 (not res!2562664)) b!6195231))

(assert (= (and b!6195231 (not res!2562676)) b!6195223))

(assert (= (and b!6195223 (not res!2562651)) b!6195227))

(assert (= (and start!617820 (is-ElementMatch!16132 r!7292)) b!6195214))

(assert (= (and start!617820 (is-Concat!24977 r!7292)) b!6195234))

(assert (= (and start!617820 (is-Star!16132 r!7292)) b!6195246))

(assert (= (and start!617820 (is-Union!16132 r!7292)) b!6195248))

(assert (= (and start!617820 condSetEmpty!42031) setIsEmpty!42031))

(assert (= (and start!617820 (not condSetEmpty!42031)) setNonEmpty!42031))

(assert (= setNonEmpty!42031 b!6195221))

(assert (= b!6195240 b!6195241))

(assert (= (and start!617820 (is-Cons!64573 zl!343)) b!6195240))

(assert (= (and start!617820 (is-Cons!64572 s!2326)) b!6195229))

(declare-fun m!7028970 () Bool)

(assert (=> b!6195227 m!7028970))

(declare-fun m!7028972 () Bool)

(assert (=> b!6195225 m!7028972))

(declare-fun m!7028974 () Bool)

(assert (=> b!6195225 m!7028974))

(declare-fun m!7028976 () Bool)

(assert (=> b!6195236 m!7028976))

(declare-fun m!7028978 () Bool)

(assert (=> b!6195208 m!7028978))

(declare-fun m!7028980 () Bool)

(assert (=> b!6195228 m!7028980))

(assert (=> b!6195228 m!7028980))

(declare-fun m!7028982 () Bool)

(assert (=> b!6195228 m!7028982))

(declare-fun m!7028984 () Bool)

(assert (=> b!6195238 m!7028984))

(declare-fun m!7028986 () Bool)

(assert (=> b!6195235 m!7028986))

(declare-fun m!7028988 () Bool)

(assert (=> b!6195235 m!7028988))

(declare-fun m!7028990 () Bool)

(assert (=> b!6195235 m!7028990))

(declare-fun m!7028992 () Bool)

(assert (=> b!6195235 m!7028992))

(declare-fun m!7028994 () Bool)

(assert (=> b!6195235 m!7028994))

(declare-fun m!7028996 () Bool)

(assert (=> b!6195235 m!7028996))

(declare-fun m!7028998 () Bool)

(assert (=> b!6195235 m!7028998))

(declare-fun m!7029000 () Bool)

(assert (=> b!6195235 m!7029000))

(declare-fun m!7029002 () Bool)

(assert (=> b!6195235 m!7029002))

(declare-fun m!7029004 () Bool)

(assert (=> b!6195235 m!7029004))

(declare-fun m!7029006 () Bool)

(assert (=> b!6195235 m!7029006))

(declare-fun m!7029008 () Bool)

(assert (=> b!6195235 m!7029008))

(declare-fun m!7029010 () Bool)

(assert (=> b!6195213 m!7029010))

(declare-fun m!7029012 () Bool)

(assert (=> b!6195213 m!7029012))

(declare-fun m!7029014 () Bool)

(assert (=> b!6195237 m!7029014))

(declare-fun m!7029016 () Bool)

(assert (=> b!6195237 m!7029016))

(declare-fun m!7029018 () Bool)

(assert (=> b!6195218 m!7029018))

(declare-fun m!7029020 () Bool)

(assert (=> b!6195218 m!7029020))

(declare-fun m!7029022 () Bool)

(assert (=> b!6195218 m!7029022))

(declare-fun m!7029024 () Bool)

(assert (=> b!6195218 m!7029024))

(declare-fun m!7029026 () Bool)

(assert (=> b!6195218 m!7029026))

(declare-fun m!7029028 () Bool)

(assert (=> b!6195218 m!7029028))

(declare-fun m!7029030 () Bool)

(assert (=> b!6195218 m!7029030))

(declare-fun m!7029032 () Bool)

(assert (=> setNonEmpty!42031 m!7029032))

(declare-fun m!7029034 () Bool)

(assert (=> b!6195219 m!7029034))

(declare-fun m!7029036 () Bool)

(assert (=> b!6195240 m!7029036))

(declare-fun m!7029038 () Bool)

(assert (=> b!6195222 m!7029038))

(declare-fun m!7029040 () Bool)

(assert (=> b!6195222 m!7029040))

(declare-fun m!7029042 () Bool)

(assert (=> b!6195222 m!7029042))

(declare-fun m!7029044 () Bool)

(assert (=> b!6195207 m!7029044))

(declare-fun m!7029046 () Bool)

(assert (=> b!6195215 m!7029046))

(declare-fun m!7029048 () Bool)

(assert (=> b!6195215 m!7029048))

(declare-fun m!7029050 () Bool)

(assert (=> b!6195215 m!7029050))

(declare-fun m!7029052 () Bool)

(assert (=> b!6195245 m!7029052))

(assert (=> b!6195245 m!7029052))

(declare-fun m!7029054 () Bool)

(assert (=> b!6195245 m!7029054))

(declare-fun m!7029056 () Bool)

(assert (=> b!6195245 m!7029056))

(declare-fun m!7029058 () Bool)

(assert (=> b!6195245 m!7029058))

(declare-fun m!7029060 () Bool)

(assert (=> b!6195245 m!7029060))

(assert (=> b!6195245 m!7029054))

(declare-fun m!7029062 () Bool)

(assert (=> b!6195245 m!7029062))

(declare-fun m!7029064 () Bool)

(assert (=> b!6195209 m!7029064))

(assert (=> b!6195244 m!7028978))

(assert (=> b!6195226 m!7028978))

(assert (=> b!6195210 m!7029044))

(declare-fun m!7029066 () Bool)

(assert (=> b!6195212 m!7029066))

(declare-fun m!7029068 () Bool)

(assert (=> b!6195223 m!7029068))

(declare-fun m!7029070 () Bool)

(assert (=> b!6195231 m!7029070))

(declare-fun m!7029072 () Bool)

(assert (=> b!6195216 m!7029072))

(assert (=> b!6195216 m!7029044))

(declare-fun m!7029074 () Bool)

(assert (=> b!6195216 m!7029074))

(declare-fun m!7029076 () Bool)

(assert (=> b!6195242 m!7029076))

(declare-fun m!7029078 () Bool)

(assert (=> b!6195242 m!7029078))

(declare-fun m!7029080 () Bool)

(assert (=> b!6195242 m!7029080))

(declare-fun m!7029082 () Bool)

(assert (=> b!6195242 m!7029082))

(declare-fun m!7029084 () Bool)

(assert (=> b!6195242 m!7029084))

(declare-fun m!7029086 () Bool)

(assert (=> b!6195242 m!7029086))

(declare-fun m!7029088 () Bool)

(assert (=> b!6195242 m!7029088))

(declare-fun m!7029090 () Bool)

(assert (=> b!6195242 m!7029090))

(declare-fun m!7029092 () Bool)

(assert (=> b!6195242 m!7029092))

(declare-fun m!7029094 () Bool)

(assert (=> b!6195242 m!7029094))

(declare-fun m!7029096 () Bool)

(assert (=> b!6195242 m!7029096))

(assert (=> b!6195239 m!7029080))

(declare-fun m!7029098 () Bool)

(assert (=> b!6195232 m!7029098))

(declare-fun m!7029100 () Bool)

(assert (=> start!617820 m!7029100))

(assert (=> b!6195233 m!7029040))

(declare-fun m!7029102 () Bool)

(assert (=> b!6195233 m!7029102))

(declare-fun m!7029104 () Bool)

(assert (=> b!6195233 m!7029104))

(declare-fun m!7029106 () Bool)

(assert (=> b!6195233 m!7029106))

(declare-fun m!7029108 () Bool)

(assert (=> b!6195243 m!7029108))

(push 1)

(assert (not b!6195232))

(assert (not b!6195240))

(assert (not b!6195243))

(assert (not b!6195226))

(assert (not b!6195244))

(assert (not b!6195229))

(assert (not b!6195213))

(assert (not b!6195212))

(assert (not b!6195207))

(assert (not b!6195208))

(assert (not b!6195238))

(assert (not b!6195231))

(assert (not b!6195222))

(assert (not b!6195239))

(assert (not b!6195237))

(assert (not b!6195223))

(assert (not b!6195236))

(assert (not start!617820))

(assert (not b!6195248))

(assert (not b!6195241))

(assert (not b!6195242))

(assert (not b!6195245))

(assert (not b!6195228))

(assert (not b!6195227))

(assert (not b!6195221))

(assert (not b!6195225))

(assert (not b!6195233))

(assert (not b!6195234))

(assert (not b!6195218))

(assert tp_is_empty!41517)

(assert (not b!6195246))

(assert (not b!6195235))

(assert (not b!6195219))

(assert (not b!6195215))

(assert (not b!6195216))

(assert (not b!6195210))

(assert (not b!6195209))

(assert (not setNonEmpty!42031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6195427 () Bool)

(declare-fun e!3772961 () Bool)

(declare-fun e!3772958 () Bool)

(assert (=> b!6195427 (= e!3772961 e!3772958)))

(declare-fun res!2562791 () Bool)

(assert (=> b!6195427 (=> res!2562791 e!3772958)))

(declare-fun call!518343 () Bool)

(assert (=> b!6195427 (= res!2562791 call!518343)))

(declare-fun bm!518338 () Bool)

(declare-fun isEmpty!36564 (List!64696) Bool)

(assert (=> bm!518338 (= call!518343 (isEmpty!36564 s!2326))))

(declare-fun b!6195428 () Bool)

(declare-fun res!2562797 () Bool)

(declare-fun e!3772960 () Bool)

(assert (=> b!6195428 (=> (not res!2562797) (not e!3772960))))

(assert (=> b!6195428 (= res!2562797 (not call!518343))))

(declare-fun b!6195429 () Bool)

(declare-fun e!3772959 () Bool)

(assert (=> b!6195429 (= e!3772959 (nullable!6125 lt!2341535))))

(declare-fun b!6195430 () Bool)

(declare-fun e!3772964 () Bool)

(assert (=> b!6195430 (= e!3772964 e!3772961)))

(declare-fun res!2562795 () Bool)

(assert (=> b!6195430 (=> (not res!2562795) (not e!3772961))))

(declare-fun lt!2341693 () Bool)

(assert (=> b!6195430 (= res!2562795 (not lt!2341693))))

(declare-fun b!6195431 () Bool)

(declare-fun res!2562792 () Bool)

(assert (=> b!6195431 (=> res!2562792 e!3772964)))

(assert (=> b!6195431 (= res!2562792 (not (is-ElementMatch!16132 lt!2341535)))))

(declare-fun e!3772962 () Bool)

(assert (=> b!6195431 (= e!3772962 e!3772964)))

(declare-fun b!6195432 () Bool)

(declare-fun e!3772963 () Bool)

(assert (=> b!6195432 (= e!3772963 (= lt!2341693 call!518343))))

(declare-fun b!6195433 () Bool)

(declare-fun res!2562790 () Bool)

(assert (=> b!6195433 (=> res!2562790 e!3772964)))

(assert (=> b!6195433 (= res!2562790 e!3772960)))

(declare-fun res!2562793 () Bool)

(assert (=> b!6195433 (=> (not res!2562793) (not e!3772960))))

(assert (=> b!6195433 (= res!2562793 lt!2341693)))

(declare-fun b!6195434 () Bool)

(declare-fun head!12776 (List!64696) C!32534)

(assert (=> b!6195434 (= e!3772958 (not (= (head!12776 s!2326) (c!1118067 lt!2341535))))))

(declare-fun b!6195435 () Bool)

(declare-fun res!2562794 () Bool)

(assert (=> b!6195435 (=> (not res!2562794) (not e!3772960))))

(declare-fun tail!11861 (List!64696) List!64696)

(assert (=> b!6195435 (= res!2562794 (isEmpty!36564 (tail!11861 s!2326)))))

(declare-fun b!6195436 () Bool)

(declare-fun res!2562796 () Bool)

(assert (=> b!6195436 (=> res!2562796 e!3772958)))

(assert (=> b!6195436 (= res!2562796 (not (isEmpty!36564 (tail!11861 s!2326))))))

(declare-fun b!6195437 () Bool)

(assert (=> b!6195437 (= e!3772960 (= (head!12776 s!2326) (c!1118067 lt!2341535)))))

(declare-fun b!6195438 () Bool)

(declare-fun derivativeStep!4847 (Regex!16132 C!32534) Regex!16132)

(assert (=> b!6195438 (= e!3772959 (matchR!8315 (derivativeStep!4847 lt!2341535 (head!12776 s!2326)) (tail!11861 s!2326)))))

(declare-fun b!6195439 () Bool)

(assert (=> b!6195439 (= e!3772963 e!3772962)))

(declare-fun c!1118091 () Bool)

(assert (=> b!6195439 (= c!1118091 (is-EmptyLang!16132 lt!2341535))))

(declare-fun b!6195440 () Bool)

(assert (=> b!6195440 (= e!3772962 (not lt!2341693))))

(declare-fun d!1942522 () Bool)

(assert (=> d!1942522 e!3772963))

(declare-fun c!1118093 () Bool)

(assert (=> d!1942522 (= c!1118093 (is-EmptyExpr!16132 lt!2341535))))

(assert (=> d!1942522 (= lt!2341693 e!3772959)))

(declare-fun c!1118092 () Bool)

(assert (=> d!1942522 (= c!1118092 (isEmpty!36564 s!2326))))

(assert (=> d!1942522 (validRegex!7868 lt!2341535)))

(assert (=> d!1942522 (= (matchR!8315 lt!2341535 s!2326) lt!2341693)))

(assert (= (and d!1942522 c!1118092) b!6195429))

(assert (= (and d!1942522 (not c!1118092)) b!6195438))

(assert (= (and d!1942522 c!1118093) b!6195432))

(assert (= (and d!1942522 (not c!1118093)) b!6195439))

(assert (= (and b!6195439 c!1118091) b!6195440))

(assert (= (and b!6195439 (not c!1118091)) b!6195431))

(assert (= (and b!6195431 (not res!2562792)) b!6195433))

(assert (= (and b!6195433 res!2562793) b!6195428))

(assert (= (and b!6195428 res!2562797) b!6195435))

(assert (= (and b!6195435 res!2562794) b!6195437))

(assert (= (and b!6195433 (not res!2562790)) b!6195430))

(assert (= (and b!6195430 res!2562795) b!6195427))

(assert (= (and b!6195427 (not res!2562791)) b!6195436))

(assert (= (and b!6195436 (not res!2562796)) b!6195434))

(assert (= (or b!6195432 b!6195427 b!6195428) bm!518338))

(declare-fun m!7029250 () Bool)

(assert (=> d!1942522 m!7029250))

(declare-fun m!7029252 () Bool)

(assert (=> d!1942522 m!7029252))

(declare-fun m!7029254 () Bool)

(assert (=> b!6195438 m!7029254))

(assert (=> b!6195438 m!7029254))

(declare-fun m!7029256 () Bool)

(assert (=> b!6195438 m!7029256))

(declare-fun m!7029258 () Bool)

(assert (=> b!6195438 m!7029258))

(assert (=> b!6195438 m!7029256))

(assert (=> b!6195438 m!7029258))

(declare-fun m!7029260 () Bool)

(assert (=> b!6195438 m!7029260))

(assert (=> b!6195434 m!7029254))

(assert (=> bm!518338 m!7029250))

(assert (=> b!6195437 m!7029254))

(assert (=> b!6195435 m!7029258))

(assert (=> b!6195435 m!7029258))

(declare-fun m!7029262 () Bool)

(assert (=> b!6195435 m!7029262))

(declare-fun m!7029264 () Bool)

(assert (=> b!6195429 m!7029264))

(assert (=> b!6195436 m!7029258))

(assert (=> b!6195436 m!7029258))

(assert (=> b!6195436 m!7029262))

(assert (=> b!6195242 d!1942522))

(declare-fun bs!1537596 () Bool)

(declare-fun b!6195483 () Bool)

(assert (= bs!1537596 (and b!6195483 b!6195245)))

(declare-fun lambda!338406 () Int)

(assert (=> bs!1537596 (not (= lambda!338406 lambda!338384))))

(assert (=> bs!1537596 (not (= lambda!338406 lambda!338385))))

(assert (=> b!6195483 true))

(assert (=> b!6195483 true))

(declare-fun bs!1537597 () Bool)

(declare-fun b!6195473 () Bool)

(assert (= bs!1537597 (and b!6195473 b!6195245)))

(declare-fun lambda!338407 () Int)

(assert (=> bs!1537597 (not (= lambda!338407 lambda!338384))))

(assert (=> bs!1537597 (= (and (= (regOne!32776 lt!2341535) (regOne!32776 r!7292)) (= (regTwo!32776 lt!2341535) (regTwo!32776 r!7292))) (= lambda!338407 lambda!338385))))

(declare-fun bs!1537598 () Bool)

(assert (= bs!1537598 (and b!6195473 b!6195483)))

(assert (=> bs!1537598 (not (= lambda!338407 lambda!338406))))

(assert (=> b!6195473 true))

(assert (=> b!6195473 true))

(declare-fun e!3772986 () Bool)

(declare-fun call!518349 () Bool)

(assert (=> b!6195473 (= e!3772986 call!518349)))

(declare-fun b!6195474 () Bool)

(declare-fun e!3772985 () Bool)

(declare-fun call!518348 () Bool)

(assert (=> b!6195474 (= e!3772985 call!518348)))

(declare-fun b!6195475 () Bool)

(declare-fun e!3772984 () Bool)

(assert (=> b!6195475 (= e!3772985 e!3772984)))

(declare-fun res!2562815 () Bool)

(assert (=> b!6195475 (= res!2562815 (not (is-EmptyLang!16132 lt!2341535)))))

(assert (=> b!6195475 (=> (not res!2562815) (not e!3772984))))

(declare-fun b!6195476 () Bool)

(declare-fun e!3772983 () Bool)

(assert (=> b!6195476 (= e!3772983 (matchRSpec!3233 (regTwo!32777 lt!2341535) s!2326))))

(declare-fun d!1942524 () Bool)

(declare-fun c!1118103 () Bool)

(assert (=> d!1942524 (= c!1118103 (is-EmptyExpr!16132 lt!2341535))))

(assert (=> d!1942524 (= (matchRSpec!3233 lt!2341535 s!2326) e!3772985)))

(declare-fun b!6195477 () Bool)

(declare-fun res!2562816 () Bool)

(declare-fun e!3772988 () Bool)

(assert (=> b!6195477 (=> res!2562816 e!3772988)))

(assert (=> b!6195477 (= res!2562816 call!518348)))

(assert (=> b!6195477 (= e!3772986 e!3772988)))

(declare-fun c!1118104 () Bool)

(declare-fun bm!518343 () Bool)

(assert (=> bm!518343 (= call!518349 (Exists!3202 (ite c!1118104 lambda!338406 lambda!338407)))))

(declare-fun b!6195478 () Bool)

(declare-fun e!3772987 () Bool)

(assert (=> b!6195478 (= e!3772987 e!3772986)))

(assert (=> b!6195478 (= c!1118104 (is-Star!16132 lt!2341535))))

(declare-fun b!6195479 () Bool)

(declare-fun c!1118105 () Bool)

(assert (=> b!6195479 (= c!1118105 (is-Union!16132 lt!2341535))))

(declare-fun e!3772989 () Bool)

(assert (=> b!6195479 (= e!3772989 e!3772987)))

(declare-fun b!6195480 () Bool)

(assert (=> b!6195480 (= e!3772987 e!3772983)))

(declare-fun res!2562814 () Bool)

(assert (=> b!6195480 (= res!2562814 (matchRSpec!3233 (regOne!32777 lt!2341535) s!2326))))

(assert (=> b!6195480 (=> res!2562814 e!3772983)))

(declare-fun b!6195481 () Bool)

(declare-fun c!1118102 () Bool)

(assert (=> b!6195481 (= c!1118102 (is-ElementMatch!16132 lt!2341535))))

(assert (=> b!6195481 (= e!3772984 e!3772989)))

(declare-fun b!6195482 () Bool)

(assert (=> b!6195482 (= e!3772989 (= s!2326 (Cons!64572 (c!1118067 lt!2341535) Nil!64572)))))

(assert (=> b!6195483 (= e!3772988 call!518349)))

(declare-fun bm!518344 () Bool)

(assert (=> bm!518344 (= call!518348 (isEmpty!36564 s!2326))))

(assert (= (and d!1942524 c!1118103) b!6195474))

(assert (= (and d!1942524 (not c!1118103)) b!6195475))

(assert (= (and b!6195475 res!2562815) b!6195481))

(assert (= (and b!6195481 c!1118102) b!6195482))

(assert (= (and b!6195481 (not c!1118102)) b!6195479))

(assert (= (and b!6195479 c!1118105) b!6195480))

(assert (= (and b!6195479 (not c!1118105)) b!6195478))

(assert (= (and b!6195480 (not res!2562814)) b!6195476))

(assert (= (and b!6195478 c!1118104) b!6195477))

(assert (= (and b!6195478 (not c!1118104)) b!6195473))

(assert (= (and b!6195477 (not res!2562816)) b!6195483))

(assert (= (or b!6195483 b!6195473) bm!518343))

(assert (= (or b!6195474 b!6195477) bm!518344))

(declare-fun m!7029266 () Bool)

(assert (=> b!6195476 m!7029266))

(declare-fun m!7029268 () Bool)

(assert (=> bm!518343 m!7029268))

(declare-fun m!7029270 () Bool)

(assert (=> b!6195480 m!7029270))

(assert (=> bm!518344 m!7029250))

(assert (=> b!6195242 d!1942524))

(declare-fun d!1942526 () Bool)

(assert (=> d!1942526 (= (matchR!8315 lt!2341535 s!2326) (matchZipper!2144 lt!2341525 s!2326))))

(declare-fun lt!2341696 () Unit!157835)

(declare-fun choose!46020 ((Set Context!11032) List!64697 Regex!16132 List!64696) Unit!157835)

(assert (=> d!1942526 (= lt!2341696 (choose!46020 lt!2341525 lt!2341526 lt!2341535 s!2326))))

(assert (=> d!1942526 (validRegex!7868 lt!2341535)))

(assert (=> d!1942526 (= (theoremZipperRegexEquiv!744 lt!2341525 lt!2341526 lt!2341535 s!2326) lt!2341696)))

(declare-fun bs!1537599 () Bool)

(assert (= bs!1537599 d!1942526))

(assert (=> bs!1537599 m!7029094))

(assert (=> bs!1537599 m!7029080))

(declare-fun m!7029272 () Bool)

(assert (=> bs!1537599 m!7029272))

(assert (=> bs!1537599 m!7029252))

(assert (=> b!6195242 d!1942526))

(declare-fun bs!1537600 () Bool)

(declare-fun b!6195494 () Bool)

(assert (= bs!1537600 (and b!6195494 b!6195245)))

(declare-fun lambda!338408 () Int)

(assert (=> bs!1537600 (not (= lambda!338408 lambda!338384))))

(assert (=> bs!1537600 (not (= lambda!338408 lambda!338385))))

(declare-fun bs!1537601 () Bool)

(assert (= bs!1537601 (and b!6195494 b!6195483)))

(assert (=> bs!1537601 (= (and (= (reg!16461 lt!2341503) (reg!16461 lt!2341535)) (= lt!2341503 lt!2341535)) (= lambda!338408 lambda!338406))))

(declare-fun bs!1537602 () Bool)

(assert (= bs!1537602 (and b!6195494 b!6195473)))

(assert (=> bs!1537602 (not (= lambda!338408 lambda!338407))))

(assert (=> b!6195494 true))

(assert (=> b!6195494 true))

(declare-fun bs!1537603 () Bool)

(declare-fun b!6195484 () Bool)

(assert (= bs!1537603 (and b!6195484 b!6195245)))

(declare-fun lambda!338409 () Int)

(assert (=> bs!1537603 (not (= lambda!338409 lambda!338384))))

(declare-fun bs!1537604 () Bool)

(assert (= bs!1537604 (and b!6195484 b!6195494)))

(assert (=> bs!1537604 (not (= lambda!338409 lambda!338408))))

(declare-fun bs!1537605 () Bool)

(assert (= bs!1537605 (and b!6195484 b!6195483)))

(assert (=> bs!1537605 (not (= lambda!338409 lambda!338406))))

(assert (=> bs!1537603 (= (and (= (regOne!32776 lt!2341503) (regOne!32776 r!7292)) (= (regTwo!32776 lt!2341503) (regTwo!32776 r!7292))) (= lambda!338409 lambda!338385))))

(declare-fun bs!1537606 () Bool)

(assert (= bs!1537606 (and b!6195484 b!6195473)))

(assert (=> bs!1537606 (= (and (= (regOne!32776 lt!2341503) (regOne!32776 lt!2341535)) (= (regTwo!32776 lt!2341503) (regTwo!32776 lt!2341535))) (= lambda!338409 lambda!338407))))

(assert (=> b!6195484 true))

(assert (=> b!6195484 true))

(declare-fun e!3772993 () Bool)

(declare-fun call!518351 () Bool)

(assert (=> b!6195484 (= e!3772993 call!518351)))

(declare-fun b!6195485 () Bool)

(declare-fun e!3772992 () Bool)

(declare-fun call!518350 () Bool)

(assert (=> b!6195485 (= e!3772992 call!518350)))

(declare-fun b!6195486 () Bool)

(declare-fun e!3772991 () Bool)

(assert (=> b!6195486 (= e!3772992 e!3772991)))

(declare-fun res!2562818 () Bool)

(assert (=> b!6195486 (= res!2562818 (not (is-EmptyLang!16132 lt!2341503)))))

(assert (=> b!6195486 (=> (not res!2562818) (not e!3772991))))

(declare-fun b!6195487 () Bool)

(declare-fun e!3772990 () Bool)

(assert (=> b!6195487 (= e!3772990 (matchRSpec!3233 (regTwo!32777 lt!2341503) s!2326))))

(declare-fun d!1942528 () Bool)

(declare-fun c!1118107 () Bool)

(assert (=> d!1942528 (= c!1118107 (is-EmptyExpr!16132 lt!2341503))))

(assert (=> d!1942528 (= (matchRSpec!3233 lt!2341503 s!2326) e!3772992)))

(declare-fun b!6195488 () Bool)

(declare-fun res!2562819 () Bool)

(declare-fun e!3772995 () Bool)

(assert (=> b!6195488 (=> res!2562819 e!3772995)))

(assert (=> b!6195488 (= res!2562819 call!518350)))

(assert (=> b!6195488 (= e!3772993 e!3772995)))

(declare-fun c!1118108 () Bool)

(declare-fun bm!518345 () Bool)

(assert (=> bm!518345 (= call!518351 (Exists!3202 (ite c!1118108 lambda!338408 lambda!338409)))))

(declare-fun b!6195489 () Bool)

(declare-fun e!3772994 () Bool)

(assert (=> b!6195489 (= e!3772994 e!3772993)))

(assert (=> b!6195489 (= c!1118108 (is-Star!16132 lt!2341503))))

(declare-fun b!6195490 () Bool)

(declare-fun c!1118109 () Bool)

(assert (=> b!6195490 (= c!1118109 (is-Union!16132 lt!2341503))))

(declare-fun e!3772996 () Bool)

(assert (=> b!6195490 (= e!3772996 e!3772994)))

(declare-fun b!6195491 () Bool)

(assert (=> b!6195491 (= e!3772994 e!3772990)))

(declare-fun res!2562817 () Bool)

(assert (=> b!6195491 (= res!2562817 (matchRSpec!3233 (regOne!32777 lt!2341503) s!2326))))

(assert (=> b!6195491 (=> res!2562817 e!3772990)))

(declare-fun b!6195492 () Bool)

(declare-fun c!1118106 () Bool)

(assert (=> b!6195492 (= c!1118106 (is-ElementMatch!16132 lt!2341503))))

(assert (=> b!6195492 (= e!3772991 e!3772996)))

(declare-fun b!6195493 () Bool)

(assert (=> b!6195493 (= e!3772996 (= s!2326 (Cons!64572 (c!1118067 lt!2341503) Nil!64572)))))

(assert (=> b!6195494 (= e!3772995 call!518351)))

(declare-fun bm!518346 () Bool)

(assert (=> bm!518346 (= call!518350 (isEmpty!36564 s!2326))))

(assert (= (and d!1942528 c!1118107) b!6195485))

(assert (= (and d!1942528 (not c!1118107)) b!6195486))

(assert (= (and b!6195486 res!2562818) b!6195492))

(assert (= (and b!6195492 c!1118106) b!6195493))

(assert (= (and b!6195492 (not c!1118106)) b!6195490))

(assert (= (and b!6195490 c!1118109) b!6195491))

(assert (= (and b!6195490 (not c!1118109)) b!6195489))

(assert (= (and b!6195491 (not res!2562817)) b!6195487))

(assert (= (and b!6195489 c!1118108) b!6195488))

(assert (= (and b!6195489 (not c!1118108)) b!6195484))

(assert (= (and b!6195488 (not res!2562819)) b!6195494))

(assert (= (or b!6195494 b!6195484) bm!518345))

(assert (= (or b!6195485 b!6195488) bm!518346))

(declare-fun m!7029274 () Bool)

(assert (=> b!6195487 m!7029274))

(declare-fun m!7029276 () Bool)

(assert (=> bm!518345 m!7029276))

(declare-fun m!7029278 () Bool)

(assert (=> b!6195491 m!7029278))

(assert (=> bm!518346 m!7029250))

(assert (=> b!6195242 d!1942528))

(declare-fun d!1942530 () Bool)

(declare-fun c!1118112 () Bool)

(assert (=> d!1942530 (= c!1118112 (isEmpty!36564 s!2326))))

(declare-fun e!3772999 () Bool)

(assert (=> d!1942530 (= (matchZipper!2144 lt!2341525 s!2326) e!3772999)))

(declare-fun b!6195499 () Bool)

(declare-fun nullableZipper!1908 ((Set Context!11032)) Bool)

(assert (=> b!6195499 (= e!3772999 (nullableZipper!1908 lt!2341525))))

(declare-fun b!6195500 () Bool)

(declare-fun derivationStepZipper!2100 ((Set Context!11032) C!32534) (Set Context!11032))

(assert (=> b!6195500 (= e!3772999 (matchZipper!2144 (derivationStepZipper!2100 lt!2341525 (head!12776 s!2326)) (tail!11861 s!2326)))))

(assert (= (and d!1942530 c!1118112) b!6195499))

(assert (= (and d!1942530 (not c!1118112)) b!6195500))

(assert (=> d!1942530 m!7029250))

(declare-fun m!7029280 () Bool)

(assert (=> b!6195499 m!7029280))

(assert (=> b!6195500 m!7029254))

(assert (=> b!6195500 m!7029254))

(declare-fun m!7029282 () Bool)

(assert (=> b!6195500 m!7029282))

(assert (=> b!6195500 m!7029258))

(assert (=> b!6195500 m!7029282))

(assert (=> b!6195500 m!7029258))

(declare-fun m!7029284 () Bool)

(assert (=> b!6195500 m!7029284))

(assert (=> b!6195242 d!1942530))

(declare-fun d!1942532 () Bool)

(assert (=> d!1942532 (= (matchR!8315 lt!2341535 s!2326) (matchRSpec!3233 lt!2341535 s!2326))))

(declare-fun lt!2341699 () Unit!157835)

(declare-fun choose!46021 (Regex!16132 List!64696) Unit!157835)

(assert (=> d!1942532 (= lt!2341699 (choose!46021 lt!2341535 s!2326))))

(assert (=> d!1942532 (validRegex!7868 lt!2341535)))

(assert (=> d!1942532 (= (mainMatchTheorem!3233 lt!2341535 s!2326) lt!2341699)))

(declare-fun bs!1537607 () Bool)

(assert (= bs!1537607 d!1942532))

(assert (=> bs!1537607 m!7029094))

(assert (=> bs!1537607 m!7029086))

(declare-fun m!7029286 () Bool)

(assert (=> bs!1537607 m!7029286))

(assert (=> bs!1537607 m!7029252))

(assert (=> b!6195242 d!1942532))

(declare-fun d!1942534 () Bool)

(assert (=> d!1942534 (= (matchR!8315 lt!2341503 s!2326) (matchRSpec!3233 lt!2341503 s!2326))))

(declare-fun lt!2341700 () Unit!157835)

(assert (=> d!1942534 (= lt!2341700 (choose!46021 lt!2341503 s!2326))))

(assert (=> d!1942534 (validRegex!7868 lt!2341503)))

(assert (=> d!1942534 (= (mainMatchTheorem!3233 lt!2341503 s!2326) lt!2341700)))

(declare-fun bs!1537608 () Bool)

(assert (= bs!1537608 d!1942534))

(assert (=> bs!1537608 m!7029092))

(assert (=> bs!1537608 m!7029096))

(declare-fun m!7029288 () Bool)

(assert (=> bs!1537608 m!7029288))

(declare-fun m!7029290 () Bool)

(assert (=> bs!1537608 m!7029290))

(assert (=> b!6195242 d!1942534))

(declare-fun d!1942536 () Bool)

(declare-fun e!3773015 () Bool)

(assert (=> d!1942536 e!3773015))

(declare-fun res!2562824 () Bool)

(assert (=> d!1942536 (=> (not res!2562824) (not e!3773015))))

(declare-fun lt!2341703 () Regex!16132)

(assert (=> d!1942536 (= res!2562824 (validRegex!7868 lt!2341703))))

(declare-fun e!3773016 () Regex!16132)

(assert (=> d!1942536 (= lt!2341703 e!3773016)))

(declare-fun c!1118121 () Bool)

(declare-fun e!3773012 () Bool)

(assert (=> d!1942536 (= c!1118121 e!3773012)))

(declare-fun res!2562825 () Bool)

(assert (=> d!1942536 (=> (not res!2562825) (not e!3773012))))

(assert (=> d!1942536 (= res!2562825 (is-Cons!64571 lt!2341528))))

(declare-fun lambda!338412 () Int)

(declare-fun forall!15248 (List!64695 Int) Bool)

(assert (=> d!1942536 (forall!15248 lt!2341528 lambda!338412)))

(assert (=> d!1942536 (= (generalisedConcat!1729 lt!2341528) lt!2341703)))

(declare-fun b!6195521 () Bool)

(declare-fun e!3773017 () Bool)

(assert (=> b!6195521 (= e!3773015 e!3773017)))

(declare-fun c!1118123 () Bool)

(assert (=> b!6195521 (= c!1118123 (isEmpty!36561 lt!2341528))))

(declare-fun b!6195522 () Bool)

(assert (=> b!6195522 (= e!3773012 (isEmpty!36561 (t!378209 lt!2341528)))))

(declare-fun b!6195523 () Bool)

(declare-fun e!3773013 () Bool)

(assert (=> b!6195523 (= e!3773017 e!3773013)))

(declare-fun c!1118122 () Bool)

(declare-fun tail!11862 (List!64695) List!64695)

(assert (=> b!6195523 (= c!1118122 (isEmpty!36561 (tail!11862 lt!2341528)))))

(declare-fun b!6195524 () Bool)

(declare-fun e!3773014 () Regex!16132)

(assert (=> b!6195524 (= e!3773014 (Concat!24977 (h!71019 lt!2341528) (generalisedConcat!1729 (t!378209 lt!2341528))))))

(declare-fun b!6195525 () Bool)

(assert (=> b!6195525 (= e!3773016 (h!71019 lt!2341528))))

(declare-fun b!6195526 () Bool)

(declare-fun isConcat!1067 (Regex!16132) Bool)

(assert (=> b!6195526 (= e!3773013 (isConcat!1067 lt!2341703))))

(declare-fun b!6195527 () Bool)

(declare-fun isEmptyExpr!1544 (Regex!16132) Bool)

(assert (=> b!6195527 (= e!3773017 (isEmptyExpr!1544 lt!2341703))))

(declare-fun b!6195528 () Bool)

(assert (=> b!6195528 (= e!3773016 e!3773014)))

(declare-fun c!1118124 () Bool)

(assert (=> b!6195528 (= c!1118124 (is-Cons!64571 lt!2341528))))

(declare-fun b!6195529 () Bool)

(declare-fun head!12777 (List!64695) Regex!16132)

(assert (=> b!6195529 (= e!3773013 (= lt!2341703 (head!12777 lt!2341528)))))

(declare-fun b!6195530 () Bool)

(assert (=> b!6195530 (= e!3773014 EmptyExpr!16132)))

(assert (= (and d!1942536 res!2562825) b!6195522))

(assert (= (and d!1942536 c!1118121) b!6195525))

(assert (= (and d!1942536 (not c!1118121)) b!6195528))

(assert (= (and b!6195528 c!1118124) b!6195524))

(assert (= (and b!6195528 (not c!1118124)) b!6195530))

(assert (= (and d!1942536 res!2562824) b!6195521))

(assert (= (and b!6195521 c!1118123) b!6195527))

(assert (= (and b!6195521 (not c!1118123)) b!6195523))

(assert (= (and b!6195523 c!1118122) b!6195529))

(assert (= (and b!6195523 (not c!1118122)) b!6195526))

(declare-fun m!7029292 () Bool)

(assert (=> d!1942536 m!7029292))

(declare-fun m!7029294 () Bool)

(assert (=> d!1942536 m!7029294))

(declare-fun m!7029296 () Bool)

(assert (=> b!6195524 m!7029296))

(declare-fun m!7029298 () Bool)

(assert (=> b!6195522 m!7029298))

(declare-fun m!7029300 () Bool)

(assert (=> b!6195527 m!7029300))

(declare-fun m!7029302 () Bool)

(assert (=> b!6195521 m!7029302))

(declare-fun m!7029304 () Bool)

(assert (=> b!6195523 m!7029304))

(assert (=> b!6195523 m!7029304))

(declare-fun m!7029306 () Bool)

(assert (=> b!6195523 m!7029306))

(declare-fun m!7029308 () Bool)

(assert (=> b!6195526 m!7029308))

(declare-fun m!7029310 () Bool)

(assert (=> b!6195529 m!7029310))

(assert (=> b!6195242 d!1942536))

(declare-fun bs!1537609 () Bool)

(declare-fun d!1942538 () Bool)

(assert (= bs!1537609 (and d!1942538 d!1942536)))

(declare-fun lambda!338413 () Int)

(assert (=> bs!1537609 (= lambda!338413 lambda!338412)))

(declare-fun e!3773021 () Bool)

(assert (=> d!1942538 e!3773021))

(declare-fun res!2562826 () Bool)

(assert (=> d!1942538 (=> (not res!2562826) (not e!3773021))))

(declare-fun lt!2341704 () Regex!16132)

(assert (=> d!1942538 (= res!2562826 (validRegex!7868 lt!2341704))))

(declare-fun e!3773022 () Regex!16132)

(assert (=> d!1942538 (= lt!2341704 e!3773022)))

(declare-fun c!1118125 () Bool)

(declare-fun e!3773018 () Bool)

(assert (=> d!1942538 (= c!1118125 e!3773018)))

(declare-fun res!2562827 () Bool)

(assert (=> d!1942538 (=> (not res!2562827) (not e!3773018))))

(assert (=> d!1942538 (= res!2562827 (is-Cons!64571 lt!2341514))))

(assert (=> d!1942538 (forall!15248 lt!2341514 lambda!338413)))

(assert (=> d!1942538 (= (generalisedConcat!1729 lt!2341514) lt!2341704)))

(declare-fun b!6195531 () Bool)

(declare-fun e!3773023 () Bool)

(assert (=> b!6195531 (= e!3773021 e!3773023)))

(declare-fun c!1118127 () Bool)

(assert (=> b!6195531 (= c!1118127 (isEmpty!36561 lt!2341514))))

(declare-fun b!6195532 () Bool)

(assert (=> b!6195532 (= e!3773018 (isEmpty!36561 (t!378209 lt!2341514)))))

(declare-fun b!6195533 () Bool)

(declare-fun e!3773019 () Bool)

(assert (=> b!6195533 (= e!3773023 e!3773019)))

(declare-fun c!1118126 () Bool)

(assert (=> b!6195533 (= c!1118126 (isEmpty!36561 (tail!11862 lt!2341514)))))

(declare-fun b!6195534 () Bool)

(declare-fun e!3773020 () Regex!16132)

(assert (=> b!6195534 (= e!3773020 (Concat!24977 (h!71019 lt!2341514) (generalisedConcat!1729 (t!378209 lt!2341514))))))

(declare-fun b!6195535 () Bool)

(assert (=> b!6195535 (= e!3773022 (h!71019 lt!2341514))))

(declare-fun b!6195536 () Bool)

(assert (=> b!6195536 (= e!3773019 (isConcat!1067 lt!2341704))))

(declare-fun b!6195537 () Bool)

(assert (=> b!6195537 (= e!3773023 (isEmptyExpr!1544 lt!2341704))))

(declare-fun b!6195538 () Bool)

(assert (=> b!6195538 (= e!3773022 e!3773020)))

(declare-fun c!1118128 () Bool)

(assert (=> b!6195538 (= c!1118128 (is-Cons!64571 lt!2341514))))

(declare-fun b!6195539 () Bool)

(assert (=> b!6195539 (= e!3773019 (= lt!2341704 (head!12777 lt!2341514)))))

(declare-fun b!6195540 () Bool)

(assert (=> b!6195540 (= e!3773020 EmptyExpr!16132)))

(assert (= (and d!1942538 res!2562827) b!6195532))

(assert (= (and d!1942538 c!1118125) b!6195535))

(assert (= (and d!1942538 (not c!1118125)) b!6195538))

(assert (= (and b!6195538 c!1118128) b!6195534))

(assert (= (and b!6195538 (not c!1118128)) b!6195540))

(assert (= (and d!1942538 res!2562826) b!6195531))

(assert (= (and b!6195531 c!1118127) b!6195537))

(assert (= (and b!6195531 (not c!1118127)) b!6195533))

(assert (= (and b!6195533 c!1118126) b!6195539))

(assert (= (and b!6195533 (not c!1118126)) b!6195536))

(declare-fun m!7029312 () Bool)

(assert (=> d!1942538 m!7029312))

(declare-fun m!7029314 () Bool)

(assert (=> d!1942538 m!7029314))

(declare-fun m!7029316 () Bool)

(assert (=> b!6195534 m!7029316))

(declare-fun m!7029318 () Bool)

(assert (=> b!6195532 m!7029318))

(declare-fun m!7029320 () Bool)

(assert (=> b!6195537 m!7029320))

(declare-fun m!7029322 () Bool)

(assert (=> b!6195531 m!7029322))

(declare-fun m!7029324 () Bool)

(assert (=> b!6195533 m!7029324))

(assert (=> b!6195533 m!7029324))

(declare-fun m!7029326 () Bool)

(assert (=> b!6195533 m!7029326))

(declare-fun m!7029328 () Bool)

(assert (=> b!6195536 m!7029328))

(declare-fun m!7029330 () Bool)

(assert (=> b!6195539 m!7029330))

(assert (=> b!6195242 d!1942538))

(declare-fun d!1942540 () Bool)

(assert (=> d!1942540 (= (matchR!8315 lt!2341503 s!2326) (matchZipper!2144 lt!2341543 s!2326))))

(declare-fun lt!2341705 () Unit!157835)

(assert (=> d!1942540 (= lt!2341705 (choose!46020 lt!2341543 lt!2341536 lt!2341503 s!2326))))

(assert (=> d!1942540 (validRegex!7868 lt!2341503)))

(assert (=> d!1942540 (= (theoremZipperRegexEquiv!744 lt!2341543 lt!2341536 lt!2341503 s!2326) lt!2341705)))

(declare-fun bs!1537610 () Bool)

(assert (= bs!1537610 d!1942540))

(assert (=> bs!1537610 m!7029092))

(assert (=> bs!1537610 m!7029006))

(declare-fun m!7029332 () Bool)

(assert (=> bs!1537610 m!7029332))

(assert (=> bs!1537610 m!7029290))

(assert (=> b!6195242 d!1942540))

(declare-fun b!6195541 () Bool)

(declare-fun e!3773027 () Bool)

(declare-fun e!3773024 () Bool)

(assert (=> b!6195541 (= e!3773027 e!3773024)))

(declare-fun res!2562829 () Bool)

(assert (=> b!6195541 (=> res!2562829 e!3773024)))

(declare-fun call!518352 () Bool)

(assert (=> b!6195541 (= res!2562829 call!518352)))

(declare-fun bm!518347 () Bool)

(assert (=> bm!518347 (= call!518352 (isEmpty!36564 s!2326))))

(declare-fun b!6195542 () Bool)

(declare-fun res!2562835 () Bool)

(declare-fun e!3773026 () Bool)

(assert (=> b!6195542 (=> (not res!2562835) (not e!3773026))))

(assert (=> b!6195542 (= res!2562835 (not call!518352))))

(declare-fun b!6195543 () Bool)

(declare-fun e!3773025 () Bool)

(assert (=> b!6195543 (= e!3773025 (nullable!6125 lt!2341503))))

(declare-fun b!6195544 () Bool)

(declare-fun e!3773030 () Bool)

(assert (=> b!6195544 (= e!3773030 e!3773027)))

(declare-fun res!2562833 () Bool)

(assert (=> b!6195544 (=> (not res!2562833) (not e!3773027))))

(declare-fun lt!2341706 () Bool)

(assert (=> b!6195544 (= res!2562833 (not lt!2341706))))

(declare-fun b!6195545 () Bool)

(declare-fun res!2562830 () Bool)

(assert (=> b!6195545 (=> res!2562830 e!3773030)))

(assert (=> b!6195545 (= res!2562830 (not (is-ElementMatch!16132 lt!2341503)))))

(declare-fun e!3773028 () Bool)

(assert (=> b!6195545 (= e!3773028 e!3773030)))

(declare-fun b!6195546 () Bool)

(declare-fun e!3773029 () Bool)

(assert (=> b!6195546 (= e!3773029 (= lt!2341706 call!518352))))

(declare-fun b!6195547 () Bool)

(declare-fun res!2562828 () Bool)

(assert (=> b!6195547 (=> res!2562828 e!3773030)))

(assert (=> b!6195547 (= res!2562828 e!3773026)))

(declare-fun res!2562831 () Bool)

(assert (=> b!6195547 (=> (not res!2562831) (not e!3773026))))

(assert (=> b!6195547 (= res!2562831 lt!2341706)))

(declare-fun b!6195548 () Bool)

(assert (=> b!6195548 (= e!3773024 (not (= (head!12776 s!2326) (c!1118067 lt!2341503))))))

(declare-fun b!6195549 () Bool)

(declare-fun res!2562832 () Bool)

(assert (=> b!6195549 (=> (not res!2562832) (not e!3773026))))

(assert (=> b!6195549 (= res!2562832 (isEmpty!36564 (tail!11861 s!2326)))))

(declare-fun b!6195550 () Bool)

(declare-fun res!2562834 () Bool)

(assert (=> b!6195550 (=> res!2562834 e!3773024)))

(assert (=> b!6195550 (= res!2562834 (not (isEmpty!36564 (tail!11861 s!2326))))))

(declare-fun b!6195551 () Bool)

(assert (=> b!6195551 (= e!3773026 (= (head!12776 s!2326) (c!1118067 lt!2341503)))))

(declare-fun b!6195552 () Bool)

(assert (=> b!6195552 (= e!3773025 (matchR!8315 (derivativeStep!4847 lt!2341503 (head!12776 s!2326)) (tail!11861 s!2326)))))

(declare-fun b!6195553 () Bool)

(assert (=> b!6195553 (= e!3773029 e!3773028)))

(declare-fun c!1118129 () Bool)

(assert (=> b!6195553 (= c!1118129 (is-EmptyLang!16132 lt!2341503))))

(declare-fun b!6195554 () Bool)

(assert (=> b!6195554 (= e!3773028 (not lt!2341706))))

(declare-fun d!1942542 () Bool)

(assert (=> d!1942542 e!3773029))

(declare-fun c!1118131 () Bool)

(assert (=> d!1942542 (= c!1118131 (is-EmptyExpr!16132 lt!2341503))))

(assert (=> d!1942542 (= lt!2341706 e!3773025)))

(declare-fun c!1118130 () Bool)

(assert (=> d!1942542 (= c!1118130 (isEmpty!36564 s!2326))))

(assert (=> d!1942542 (validRegex!7868 lt!2341503)))

(assert (=> d!1942542 (= (matchR!8315 lt!2341503 s!2326) lt!2341706)))

(assert (= (and d!1942542 c!1118130) b!6195543))

(assert (= (and d!1942542 (not c!1118130)) b!6195552))

(assert (= (and d!1942542 c!1118131) b!6195546))

(assert (= (and d!1942542 (not c!1118131)) b!6195553))

(assert (= (and b!6195553 c!1118129) b!6195554))

(assert (= (and b!6195553 (not c!1118129)) b!6195545))

(assert (= (and b!6195545 (not res!2562830)) b!6195547))

(assert (= (and b!6195547 res!2562831) b!6195542))

(assert (= (and b!6195542 res!2562835) b!6195549))

(assert (= (and b!6195549 res!2562832) b!6195551))

(assert (= (and b!6195547 (not res!2562828)) b!6195544))

(assert (= (and b!6195544 res!2562833) b!6195541))

(assert (= (and b!6195541 (not res!2562829)) b!6195550))

(assert (= (and b!6195550 (not res!2562834)) b!6195548))

(assert (= (or b!6195546 b!6195541 b!6195542) bm!518347))

(assert (=> d!1942542 m!7029250))

(assert (=> d!1942542 m!7029290))

(assert (=> b!6195552 m!7029254))

(assert (=> b!6195552 m!7029254))

(declare-fun m!7029334 () Bool)

(assert (=> b!6195552 m!7029334))

(assert (=> b!6195552 m!7029258))

(assert (=> b!6195552 m!7029334))

(assert (=> b!6195552 m!7029258))

(declare-fun m!7029336 () Bool)

(assert (=> b!6195552 m!7029336))

(assert (=> b!6195548 m!7029254))

(assert (=> bm!518347 m!7029250))

(assert (=> b!6195551 m!7029254))

(assert (=> b!6195549 m!7029258))

(assert (=> b!6195549 m!7029258))

(assert (=> b!6195549 m!7029262))

(declare-fun m!7029338 () Bool)

(assert (=> b!6195543 m!7029338))

(assert (=> b!6195550 m!7029258))

(assert (=> b!6195550 m!7029258))

(assert (=> b!6195550 m!7029262))

(assert (=> b!6195242 d!1942542))

(declare-fun e!3773033 () Bool)

(declare-fun d!1942544 () Bool)

(assert (=> d!1942544 (= (matchZipper!2144 (set.union lt!2341540 lt!2341519) (t!378210 s!2326)) e!3773033)))

(declare-fun res!2562838 () Bool)

(assert (=> d!1942544 (=> res!2562838 e!3773033)))

(assert (=> d!1942544 (= res!2562838 (matchZipper!2144 lt!2341540 (t!378210 s!2326)))))

(declare-fun lt!2341709 () Unit!157835)

(declare-fun choose!46022 ((Set Context!11032) (Set Context!11032) List!64696) Unit!157835)

(assert (=> d!1942544 (= lt!2341709 (choose!46022 lt!2341540 lt!2341519 (t!378210 s!2326)))))

(assert (=> d!1942544 (= (lemmaZipperConcatMatchesSameAsBothZippers!963 lt!2341540 lt!2341519 (t!378210 s!2326)) lt!2341709)))

(declare-fun b!6195557 () Bool)

(assert (=> b!6195557 (= e!3773033 (matchZipper!2144 lt!2341519 (t!378210 s!2326)))))

(assert (= (and d!1942544 (not res!2562838)) b!6195557))

(assert (=> d!1942544 m!7029042))

(assert (=> d!1942544 m!7029040))

(declare-fun m!7029340 () Bool)

(assert (=> d!1942544 m!7029340))

(assert (=> b!6195557 m!7028978))

(assert (=> b!6195222 d!1942544))

(declare-fun d!1942546 () Bool)

(declare-fun c!1118132 () Bool)

(assert (=> d!1942546 (= c!1118132 (isEmpty!36564 (t!378210 s!2326)))))

(declare-fun e!3773034 () Bool)

(assert (=> d!1942546 (= (matchZipper!2144 lt!2341540 (t!378210 s!2326)) e!3773034)))

(declare-fun b!6195558 () Bool)

(assert (=> b!6195558 (= e!3773034 (nullableZipper!1908 lt!2341540))))

(declare-fun b!6195559 () Bool)

(assert (=> b!6195559 (= e!3773034 (matchZipper!2144 (derivationStepZipper!2100 lt!2341540 (head!12776 (t!378210 s!2326))) (tail!11861 (t!378210 s!2326))))))

(assert (= (and d!1942546 c!1118132) b!6195558))

(assert (= (and d!1942546 (not c!1118132)) b!6195559))

(declare-fun m!7029342 () Bool)

(assert (=> d!1942546 m!7029342))

(declare-fun m!7029344 () Bool)

(assert (=> b!6195558 m!7029344))

(declare-fun m!7029346 () Bool)

(assert (=> b!6195559 m!7029346))

(assert (=> b!6195559 m!7029346))

(declare-fun m!7029348 () Bool)

(assert (=> b!6195559 m!7029348))

(declare-fun m!7029350 () Bool)

(assert (=> b!6195559 m!7029350))

(assert (=> b!6195559 m!7029348))

(assert (=> b!6195559 m!7029350))

(declare-fun m!7029352 () Bool)

(assert (=> b!6195559 m!7029352))

(assert (=> b!6195222 d!1942546))

(declare-fun d!1942548 () Bool)

(declare-fun c!1118133 () Bool)

(assert (=> d!1942548 (= c!1118133 (isEmpty!36564 (t!378210 s!2326)))))

(declare-fun e!3773035 () Bool)

(assert (=> d!1942548 (= (matchZipper!2144 (set.union lt!2341540 lt!2341519) (t!378210 s!2326)) e!3773035)))

(declare-fun b!6195560 () Bool)

(assert (=> b!6195560 (= e!3773035 (nullableZipper!1908 (set.union lt!2341540 lt!2341519)))))

(declare-fun b!6195561 () Bool)

(assert (=> b!6195561 (= e!3773035 (matchZipper!2144 (derivationStepZipper!2100 (set.union lt!2341540 lt!2341519) (head!12776 (t!378210 s!2326))) (tail!11861 (t!378210 s!2326))))))

(assert (= (and d!1942548 c!1118133) b!6195560))

(assert (= (and d!1942548 (not c!1118133)) b!6195561))

(assert (=> d!1942548 m!7029342))

(declare-fun m!7029354 () Bool)

(assert (=> b!6195560 m!7029354))

(assert (=> b!6195561 m!7029346))

(assert (=> b!6195561 m!7029346))

(declare-fun m!7029356 () Bool)

(assert (=> b!6195561 m!7029356))

(assert (=> b!6195561 m!7029350))

(assert (=> b!6195561 m!7029356))

(assert (=> b!6195561 m!7029350))

(declare-fun m!7029358 () Bool)

(assert (=> b!6195561 m!7029358))

(assert (=> b!6195222 d!1942548))

(declare-fun b!6195580 () Bool)

(declare-fun e!3773053 () Bool)

(declare-fun call!518361 () Bool)

(assert (=> b!6195580 (= e!3773053 call!518361)))

(declare-fun d!1942550 () Bool)

(declare-fun res!2562850 () Bool)

(declare-fun e!3773055 () Bool)

(assert (=> d!1942550 (=> res!2562850 e!3773055)))

(assert (=> d!1942550 (= res!2562850 (is-ElementMatch!16132 (regTwo!32777 (regOne!32776 r!7292))))))

(assert (=> d!1942550 (= (validRegex!7868 (regTwo!32777 (regOne!32776 r!7292))) e!3773055)))

(declare-fun bm!518354 () Bool)

(declare-fun call!518360 () Bool)

(assert (=> bm!518354 (= call!518360 call!518361)))

(declare-fun b!6195581 () Bool)

(declare-fun e!3773052 () Bool)

(assert (=> b!6195581 (= e!3773052 call!518360)))

(declare-fun bm!518355 () Bool)

(declare-fun call!518359 () Bool)

(declare-fun c!1118138 () Bool)

(assert (=> bm!518355 (= call!518359 (validRegex!7868 (ite c!1118138 (regOne!32777 (regTwo!32777 (regOne!32776 r!7292))) (regOne!32776 (regTwo!32777 (regOne!32776 r!7292))))))))

(declare-fun b!6195582 () Bool)

(declare-fun res!2562853 () Bool)

(assert (=> b!6195582 (=> (not res!2562853) (not e!3773052))))

(assert (=> b!6195582 (= res!2562853 call!518359)))

(declare-fun e!3773056 () Bool)

(assert (=> b!6195582 (= e!3773056 e!3773052)))

(declare-fun b!6195583 () Bool)

(declare-fun e!3773054 () Bool)

(assert (=> b!6195583 (= e!3773054 e!3773056)))

(assert (=> b!6195583 (= c!1118138 (is-Union!16132 (regTwo!32777 (regOne!32776 r!7292))))))

(declare-fun b!6195584 () Bool)

(declare-fun e!3773051 () Bool)

(assert (=> b!6195584 (= e!3773051 call!518360)))

(declare-fun b!6195585 () Bool)

(assert (=> b!6195585 (= e!3773054 e!3773053)))

(declare-fun res!2562849 () Bool)

(assert (=> b!6195585 (= res!2562849 (not (nullable!6125 (reg!16461 (regTwo!32777 (regOne!32776 r!7292))))))))

(assert (=> b!6195585 (=> (not res!2562849) (not e!3773053))))

(declare-fun b!6195586 () Bool)

(declare-fun res!2562851 () Bool)

(declare-fun e!3773050 () Bool)

(assert (=> b!6195586 (=> res!2562851 e!3773050)))

(assert (=> b!6195586 (= res!2562851 (not (is-Concat!24977 (regTwo!32777 (regOne!32776 r!7292)))))))

(assert (=> b!6195586 (= e!3773056 e!3773050)))

(declare-fun b!6195587 () Bool)

(assert (=> b!6195587 (= e!3773050 e!3773051)))

(declare-fun res!2562852 () Bool)

(assert (=> b!6195587 (=> (not res!2562852) (not e!3773051))))

(assert (=> b!6195587 (= res!2562852 call!518359)))

(declare-fun bm!518356 () Bool)

(declare-fun c!1118139 () Bool)

(assert (=> bm!518356 (= call!518361 (validRegex!7868 (ite c!1118139 (reg!16461 (regTwo!32777 (regOne!32776 r!7292))) (ite c!1118138 (regTwo!32777 (regTwo!32777 (regOne!32776 r!7292))) (regTwo!32776 (regTwo!32777 (regOne!32776 r!7292)))))))))

(declare-fun b!6195588 () Bool)

(assert (=> b!6195588 (= e!3773055 e!3773054)))

(assert (=> b!6195588 (= c!1118139 (is-Star!16132 (regTwo!32777 (regOne!32776 r!7292))))))

(assert (= (and d!1942550 (not res!2562850)) b!6195588))

(assert (= (and b!6195588 c!1118139) b!6195585))

(assert (= (and b!6195588 (not c!1118139)) b!6195583))

(assert (= (and b!6195585 res!2562849) b!6195580))

(assert (= (and b!6195583 c!1118138) b!6195582))

(assert (= (and b!6195583 (not c!1118138)) b!6195586))

(assert (= (and b!6195582 res!2562853) b!6195581))

(assert (= (and b!6195586 (not res!2562851)) b!6195587))

(assert (= (and b!6195587 res!2562852) b!6195584))

(assert (= (or b!6195581 b!6195584) bm!518354))

(assert (= (or b!6195582 b!6195587) bm!518355))

(assert (= (or b!6195580 bm!518354) bm!518356))

(declare-fun m!7029360 () Bool)

(assert (=> bm!518355 m!7029360))

(declare-fun m!7029362 () Bool)

(assert (=> b!6195585 m!7029362))

(declare-fun m!7029364 () Bool)

(assert (=> bm!518356 m!7029364))

(assert (=> b!6195223 d!1942550))

(declare-fun d!1942552 () Bool)

(assert (=> d!1942552 (= (isEmpty!36561 (t!378209 (exprs!6016 (h!71021 zl!343)))) (is-Nil!64571 (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(assert (=> b!6195243 d!1942552))

(declare-fun d!1942554 () Bool)

(declare-fun c!1118140 () Bool)

(assert (=> d!1942554 (= c!1118140 (isEmpty!36564 (t!378210 s!2326)))))

(declare-fun e!3773057 () Bool)

(assert (=> d!1942554 (= (matchZipper!2144 lt!2341519 (t!378210 s!2326)) e!3773057)))

(declare-fun b!6195589 () Bool)

(assert (=> b!6195589 (= e!3773057 (nullableZipper!1908 lt!2341519))))

(declare-fun b!6195590 () Bool)

(assert (=> b!6195590 (= e!3773057 (matchZipper!2144 (derivationStepZipper!2100 lt!2341519 (head!12776 (t!378210 s!2326))) (tail!11861 (t!378210 s!2326))))))

(assert (= (and d!1942554 c!1118140) b!6195589))

(assert (= (and d!1942554 (not c!1118140)) b!6195590))

(assert (=> d!1942554 m!7029342))

(declare-fun m!7029366 () Bool)

(assert (=> b!6195589 m!7029366))

(assert (=> b!6195590 m!7029346))

(assert (=> b!6195590 m!7029346))

(declare-fun m!7029368 () Bool)

(assert (=> b!6195590 m!7029368))

(assert (=> b!6195590 m!7029350))

(assert (=> b!6195590 m!7029368))

(assert (=> b!6195590 m!7029350))

(declare-fun m!7029370 () Bool)

(assert (=> b!6195590 m!7029370))

(assert (=> b!6195244 d!1942554))

(declare-fun d!1942556 () Bool)

(declare-fun e!3773060 () Bool)

(assert (=> d!1942556 e!3773060))

(declare-fun res!2562856 () Bool)

(assert (=> d!1942556 (=> (not res!2562856) (not e!3773060))))

(declare-fun lt!2341712 () List!64697)

(declare-fun noDuplicate!1972 (List!64697) Bool)

(assert (=> d!1942556 (= res!2562856 (noDuplicate!1972 lt!2341712))))

(declare-fun choose!46023 ((Set Context!11032)) List!64697)

(assert (=> d!1942556 (= lt!2341712 (choose!46023 z!1189))))

(assert (=> d!1942556 (= (toList!9916 z!1189) lt!2341712)))

(declare-fun b!6195593 () Bool)

(declare-fun content!12067 (List!64697) (Set Context!11032))

(assert (=> b!6195593 (= e!3773060 (= (content!12067 lt!2341712) z!1189))))

(assert (= (and d!1942556 res!2562856) b!6195593))

(declare-fun m!7029372 () Bool)

(assert (=> d!1942556 m!7029372))

(declare-fun m!7029374 () Bool)

(assert (=> d!1942556 m!7029374))

(declare-fun m!7029376 () Bool)

(assert (=> b!6195593 m!7029376))

(assert (=> b!6195219 d!1942556))

(assert (=> b!6195239 d!1942530))

(declare-fun bs!1537611 () Bool)

(declare-fun d!1942558 () Bool)

(assert (= bs!1537611 (and d!1942558 d!1942536)))

(declare-fun lambda!338416 () Int)

(assert (=> bs!1537611 (= lambda!338416 lambda!338412)))

(declare-fun bs!1537612 () Bool)

(assert (= bs!1537612 (and d!1942558 d!1942538)))

(assert (=> bs!1537612 (= lambda!338416 lambda!338413)))

(assert (=> d!1942558 (= (inv!83578 (h!71021 zl!343)) (forall!15248 (exprs!6016 (h!71021 zl!343)) lambda!338416))))

(declare-fun bs!1537613 () Bool)

(assert (= bs!1537613 d!1942558))

(declare-fun m!7029378 () Bool)

(assert (=> bs!1537613 m!7029378))

(assert (=> b!6195240 d!1942558))

(declare-fun b!6195594 () Bool)

(declare-fun e!3773064 () Bool)

(declare-fun call!518364 () Bool)

(assert (=> b!6195594 (= e!3773064 call!518364)))

(declare-fun d!1942560 () Bool)

(declare-fun res!2562858 () Bool)

(declare-fun e!3773066 () Bool)

(assert (=> d!1942560 (=> res!2562858 e!3773066)))

(assert (=> d!1942560 (= res!2562858 (is-ElementMatch!16132 r!7292))))

(assert (=> d!1942560 (= (validRegex!7868 r!7292) e!3773066)))

(declare-fun bm!518357 () Bool)

(declare-fun call!518363 () Bool)

(assert (=> bm!518357 (= call!518363 call!518364)))

(declare-fun b!6195595 () Bool)

(declare-fun e!3773063 () Bool)

(assert (=> b!6195595 (= e!3773063 call!518363)))

(declare-fun bm!518358 () Bool)

(declare-fun call!518362 () Bool)

(declare-fun c!1118141 () Bool)

(assert (=> bm!518358 (= call!518362 (validRegex!7868 (ite c!1118141 (regOne!32777 r!7292) (regOne!32776 r!7292))))))

(declare-fun b!6195596 () Bool)

(declare-fun res!2562861 () Bool)

(assert (=> b!6195596 (=> (not res!2562861) (not e!3773063))))

(assert (=> b!6195596 (= res!2562861 call!518362)))

(declare-fun e!3773067 () Bool)

(assert (=> b!6195596 (= e!3773067 e!3773063)))

(declare-fun b!6195597 () Bool)

(declare-fun e!3773065 () Bool)

(assert (=> b!6195597 (= e!3773065 e!3773067)))

(assert (=> b!6195597 (= c!1118141 (is-Union!16132 r!7292))))

(declare-fun b!6195598 () Bool)

(declare-fun e!3773062 () Bool)

(assert (=> b!6195598 (= e!3773062 call!518363)))

(declare-fun b!6195599 () Bool)

(assert (=> b!6195599 (= e!3773065 e!3773064)))

(declare-fun res!2562857 () Bool)

(assert (=> b!6195599 (= res!2562857 (not (nullable!6125 (reg!16461 r!7292))))))

(assert (=> b!6195599 (=> (not res!2562857) (not e!3773064))))

(declare-fun b!6195600 () Bool)

(declare-fun res!2562859 () Bool)

(declare-fun e!3773061 () Bool)

(assert (=> b!6195600 (=> res!2562859 e!3773061)))

(assert (=> b!6195600 (= res!2562859 (not (is-Concat!24977 r!7292)))))

(assert (=> b!6195600 (= e!3773067 e!3773061)))

(declare-fun b!6195601 () Bool)

(assert (=> b!6195601 (= e!3773061 e!3773062)))

(declare-fun res!2562860 () Bool)

(assert (=> b!6195601 (=> (not res!2562860) (not e!3773062))))

(assert (=> b!6195601 (= res!2562860 call!518362)))

(declare-fun c!1118142 () Bool)

(declare-fun bm!518359 () Bool)

(assert (=> bm!518359 (= call!518364 (validRegex!7868 (ite c!1118142 (reg!16461 r!7292) (ite c!1118141 (regTwo!32777 r!7292) (regTwo!32776 r!7292)))))))

(declare-fun b!6195602 () Bool)

(assert (=> b!6195602 (= e!3773066 e!3773065)))

(assert (=> b!6195602 (= c!1118142 (is-Star!16132 r!7292))))

(assert (= (and d!1942560 (not res!2562858)) b!6195602))

(assert (= (and b!6195602 c!1118142) b!6195599))

(assert (= (and b!6195602 (not c!1118142)) b!6195597))

(assert (= (and b!6195599 res!2562857) b!6195594))

(assert (= (and b!6195597 c!1118141) b!6195596))

(assert (= (and b!6195597 (not c!1118141)) b!6195600))

(assert (= (and b!6195596 res!2562861) b!6195595))

(assert (= (and b!6195600 (not res!2562859)) b!6195601))

(assert (= (and b!6195601 res!2562860) b!6195598))

(assert (= (or b!6195595 b!6195598) bm!518357))

(assert (= (or b!6195596 b!6195601) bm!518358))

(assert (= (or b!6195594 bm!518357) bm!518359))

(declare-fun m!7029380 () Bool)

(assert (=> bm!518358 m!7029380))

(declare-fun m!7029382 () Bool)

(assert (=> b!6195599 m!7029382))

(declare-fun m!7029384 () Bool)

(assert (=> bm!518359 m!7029384))

(assert (=> start!617820 d!1942560))

(declare-fun d!1942562 () Bool)

(declare-fun e!3773068 () Bool)

(assert (=> d!1942562 (= (matchZipper!2144 (set.union lt!2341504 lt!2341519) (t!378210 s!2326)) e!3773068)))

(declare-fun res!2562862 () Bool)

(assert (=> d!1942562 (=> res!2562862 e!3773068)))

(assert (=> d!1942562 (= res!2562862 (matchZipper!2144 lt!2341504 (t!378210 s!2326)))))

(declare-fun lt!2341713 () Unit!157835)

(assert (=> d!1942562 (= lt!2341713 (choose!46022 lt!2341504 lt!2341519 (t!378210 s!2326)))))

(assert (=> d!1942562 (= (lemmaZipperConcatMatchesSameAsBothZippers!963 lt!2341504 lt!2341519 (t!378210 s!2326)) lt!2341713)))

(declare-fun b!6195603 () Bool)

(assert (=> b!6195603 (= e!3773068 (matchZipper!2144 lt!2341519 (t!378210 s!2326)))))

(assert (= (and d!1942562 (not res!2562862)) b!6195603))

(assert (=> d!1942562 m!7029074))

(assert (=> d!1942562 m!7029044))

(declare-fun m!7029386 () Bool)

(assert (=> d!1942562 m!7029386))

(assert (=> b!6195603 m!7028978))

(assert (=> b!6195216 d!1942562))

(declare-fun d!1942564 () Bool)

(declare-fun c!1118143 () Bool)

(assert (=> d!1942564 (= c!1118143 (isEmpty!36564 (t!378210 s!2326)))))

(declare-fun e!3773069 () Bool)

(assert (=> d!1942564 (= (matchZipper!2144 lt!2341504 (t!378210 s!2326)) e!3773069)))

(declare-fun b!6195604 () Bool)

(assert (=> b!6195604 (= e!3773069 (nullableZipper!1908 lt!2341504))))

(declare-fun b!6195605 () Bool)

(assert (=> b!6195605 (= e!3773069 (matchZipper!2144 (derivationStepZipper!2100 lt!2341504 (head!12776 (t!378210 s!2326))) (tail!11861 (t!378210 s!2326))))))

(assert (= (and d!1942564 c!1118143) b!6195604))

(assert (= (and d!1942564 (not c!1118143)) b!6195605))

(assert (=> d!1942564 m!7029342))

(declare-fun m!7029388 () Bool)

(assert (=> b!6195604 m!7029388))

(assert (=> b!6195605 m!7029346))

(assert (=> b!6195605 m!7029346))

(declare-fun m!7029390 () Bool)

(assert (=> b!6195605 m!7029390))

(assert (=> b!6195605 m!7029350))

(assert (=> b!6195605 m!7029390))

(assert (=> b!6195605 m!7029350))

(declare-fun m!7029392 () Bool)

(assert (=> b!6195605 m!7029392))

(assert (=> b!6195216 d!1942564))

(declare-fun d!1942566 () Bool)

(declare-fun c!1118144 () Bool)

(assert (=> d!1942566 (= c!1118144 (isEmpty!36564 (t!378210 s!2326)))))

(declare-fun e!3773070 () Bool)

(assert (=> d!1942566 (= (matchZipper!2144 (set.union lt!2341504 lt!2341519) (t!378210 s!2326)) e!3773070)))

(declare-fun b!6195606 () Bool)

(assert (=> b!6195606 (= e!3773070 (nullableZipper!1908 (set.union lt!2341504 lt!2341519)))))

(declare-fun b!6195607 () Bool)

(assert (=> b!6195607 (= e!3773070 (matchZipper!2144 (derivationStepZipper!2100 (set.union lt!2341504 lt!2341519) (head!12776 (t!378210 s!2326))) (tail!11861 (t!378210 s!2326))))))

(assert (= (and d!1942566 c!1118144) b!6195606))

(assert (= (and d!1942566 (not c!1118144)) b!6195607))

(assert (=> d!1942566 m!7029342))

(declare-fun m!7029394 () Bool)

(assert (=> b!6195606 m!7029394))

(assert (=> b!6195607 m!7029346))

(assert (=> b!6195607 m!7029346))

(declare-fun m!7029396 () Bool)

(assert (=> b!6195607 m!7029396))

(assert (=> b!6195607 m!7029350))

(assert (=> b!6195607 m!7029396))

(assert (=> b!6195607 m!7029350))

(declare-fun m!7029398 () Bool)

(assert (=> b!6195607 m!7029398))

(assert (=> b!6195216 d!1942566))

(declare-fun d!1942568 () Bool)

(declare-fun lt!2341716 () Int)

(assert (=> d!1942568 (>= lt!2341716 0)))

(declare-fun e!3773073 () Int)

(assert (=> d!1942568 (= lt!2341716 e!3773073)))

(declare-fun c!1118147 () Bool)

(assert (=> d!1942568 (= c!1118147 (is-Cons!64573 zl!343))))

(assert (=> d!1942568 (= (zipperDepthTotal!315 zl!343) lt!2341716)))

(declare-fun b!6195612 () Bool)

(declare-fun contextDepthTotal!285 (Context!11032) Int)

(assert (=> b!6195612 (= e!3773073 (+ (contextDepthTotal!285 (h!71021 zl!343)) (zipperDepthTotal!315 (t!378211 zl!343))))))

(declare-fun b!6195613 () Bool)

(assert (=> b!6195613 (= e!3773073 0)))

(assert (= (and d!1942568 c!1118147) b!6195612))

(assert (= (and d!1942568 (not c!1118147)) b!6195613))

(declare-fun m!7029400 () Bool)

(assert (=> b!6195612 m!7029400))

(declare-fun m!7029402 () Bool)

(assert (=> b!6195612 m!7029402))

(assert (=> b!6195237 d!1942568))

(declare-fun d!1942572 () Bool)

(declare-fun lt!2341717 () Int)

(assert (=> d!1942572 (>= lt!2341717 0)))

(declare-fun e!3773074 () Int)

(assert (=> d!1942572 (= lt!2341717 e!3773074)))

(declare-fun c!1118148 () Bool)

(assert (=> d!1942572 (= c!1118148 (is-Cons!64573 lt!2341536))))

(assert (=> d!1942572 (= (zipperDepthTotal!315 lt!2341536) lt!2341717)))

(declare-fun b!6195614 () Bool)

(assert (=> b!6195614 (= e!3773074 (+ (contextDepthTotal!285 (h!71021 lt!2341536)) (zipperDepthTotal!315 (t!378211 lt!2341536))))))

(declare-fun b!6195615 () Bool)

(assert (=> b!6195615 (= e!3773074 0)))

(assert (= (and d!1942572 c!1118148) b!6195614))

(assert (= (and d!1942572 (not c!1118148)) b!6195615))

(declare-fun m!7029404 () Bool)

(assert (=> b!6195614 m!7029404))

(declare-fun m!7029406 () Bool)

(assert (=> b!6195614 m!7029406))

(assert (=> b!6195237 d!1942572))

(declare-fun d!1942574 () Bool)

(assert (=> d!1942574 (= (isEmpty!36560 (t!378211 zl!343)) (is-Nil!64573 (t!378211 zl!343)))))

(assert (=> b!6195238 d!1942574))

(declare-fun b!6195626 () Bool)

(declare-fun e!3773083 () (Set Context!11032))

(declare-fun call!518367 () (Set Context!11032))

(assert (=> b!6195626 (= e!3773083 call!518367)))

(declare-fun b!6195627 () Bool)

(assert (=> b!6195627 (= e!3773083 (as set.empty (Set Context!11032)))))

(declare-fun bm!518362 () Bool)

(assert (=> bm!518362 (= call!518367 (derivationStepZipperDown!1380 (h!71019 (exprs!6016 lt!2341521)) (Context!11033 (t!378209 (exprs!6016 lt!2341521))) (h!71020 s!2326)))))

(declare-fun b!6195629 () Bool)

(declare-fun e!3773082 () Bool)

(assert (=> b!6195629 (= e!3773082 (nullable!6125 (h!71019 (exprs!6016 lt!2341521))))))

(declare-fun b!6195630 () Bool)

(declare-fun e!3773081 () (Set Context!11032))

(assert (=> b!6195630 (= e!3773081 e!3773083)))

(declare-fun c!1118154 () Bool)

(assert (=> b!6195630 (= c!1118154 (is-Cons!64571 (exprs!6016 lt!2341521)))))

(declare-fun b!6195628 () Bool)

(assert (=> b!6195628 (= e!3773081 (set.union call!518367 (derivationStepZipperUp!1306 (Context!11033 (t!378209 (exprs!6016 lt!2341521))) (h!71020 s!2326))))))

(declare-fun d!1942576 () Bool)

(declare-fun c!1118153 () Bool)

(assert (=> d!1942576 (= c!1118153 e!3773082)))

(declare-fun res!2562865 () Bool)

(assert (=> d!1942576 (=> (not res!2562865) (not e!3773082))))

(assert (=> d!1942576 (= res!2562865 (is-Cons!64571 (exprs!6016 lt!2341521)))))

(assert (=> d!1942576 (= (derivationStepZipperUp!1306 lt!2341521 (h!71020 s!2326)) e!3773081)))

(assert (= (and d!1942576 res!2562865) b!6195629))

(assert (= (and d!1942576 c!1118153) b!6195628))

(assert (= (and d!1942576 (not c!1118153)) b!6195630))

(assert (= (and b!6195630 c!1118154) b!6195626))

(assert (= (and b!6195630 (not c!1118154)) b!6195627))

(assert (= (or b!6195628 b!6195626) bm!518362))

(declare-fun m!7029408 () Bool)

(assert (=> bm!518362 m!7029408))

(declare-fun m!7029410 () Bool)

(assert (=> b!6195629 m!7029410))

(declare-fun m!7029412 () Bool)

(assert (=> b!6195628 m!7029412))

(assert (=> b!6195218 d!1942576))

(declare-fun b!6195631 () Bool)

(declare-fun e!3773086 () (Set Context!11032))

(declare-fun call!518368 () (Set Context!11032))

(assert (=> b!6195631 (= e!3773086 call!518368)))

(declare-fun b!6195632 () Bool)

(assert (=> b!6195632 (= e!3773086 (as set.empty (Set Context!11032)))))

(declare-fun bm!518363 () Bool)

(assert (=> bm!518363 (= call!518368 (derivationStepZipperDown!1380 (h!71019 (exprs!6016 (Context!11033 (Cons!64571 (h!71019 (exprs!6016 (h!71021 zl!343))) (t!378209 (exprs!6016 (h!71021 zl!343))))))) (Context!11033 (t!378209 (exprs!6016 (Context!11033 (Cons!64571 (h!71019 (exprs!6016 (h!71021 zl!343))) (t!378209 (exprs!6016 (h!71021 zl!343)))))))) (h!71020 s!2326)))))

(declare-fun b!6195634 () Bool)

(declare-fun e!3773085 () Bool)

(assert (=> b!6195634 (= e!3773085 (nullable!6125 (h!71019 (exprs!6016 (Context!11033 (Cons!64571 (h!71019 (exprs!6016 (h!71021 zl!343))) (t!378209 (exprs!6016 (h!71021 zl!343)))))))))))

(declare-fun b!6195635 () Bool)

(declare-fun e!3773084 () (Set Context!11032))

(assert (=> b!6195635 (= e!3773084 e!3773086)))

(declare-fun c!1118156 () Bool)

(assert (=> b!6195635 (= c!1118156 (is-Cons!64571 (exprs!6016 (Context!11033 (Cons!64571 (h!71019 (exprs!6016 (h!71021 zl!343))) (t!378209 (exprs!6016 (h!71021 zl!343))))))))))

(declare-fun b!6195633 () Bool)

(assert (=> b!6195633 (= e!3773084 (set.union call!518368 (derivationStepZipperUp!1306 (Context!11033 (t!378209 (exprs!6016 (Context!11033 (Cons!64571 (h!71019 (exprs!6016 (h!71021 zl!343))) (t!378209 (exprs!6016 (h!71021 zl!343)))))))) (h!71020 s!2326))))))

(declare-fun d!1942580 () Bool)

(declare-fun c!1118155 () Bool)

(assert (=> d!1942580 (= c!1118155 e!3773085)))

(declare-fun res!2562866 () Bool)

(assert (=> d!1942580 (=> (not res!2562866) (not e!3773085))))

(assert (=> d!1942580 (= res!2562866 (is-Cons!64571 (exprs!6016 (Context!11033 (Cons!64571 (h!71019 (exprs!6016 (h!71021 zl!343))) (t!378209 (exprs!6016 (h!71021 zl!343))))))))))

(assert (=> d!1942580 (= (derivationStepZipperUp!1306 (Context!11033 (Cons!64571 (h!71019 (exprs!6016 (h!71021 zl!343))) (t!378209 (exprs!6016 (h!71021 zl!343))))) (h!71020 s!2326)) e!3773084)))

(assert (= (and d!1942580 res!2562866) b!6195634))

(assert (= (and d!1942580 c!1118155) b!6195633))

(assert (= (and d!1942580 (not c!1118155)) b!6195635))

(assert (= (and b!6195635 c!1118156) b!6195631))

(assert (= (and b!6195635 (not c!1118156)) b!6195632))

(assert (= (or b!6195633 b!6195631) bm!518363))

(declare-fun m!7029416 () Bool)

(assert (=> bm!518363 m!7029416))

(declare-fun m!7029418 () Bool)

(assert (=> b!6195634 m!7029418))

(declare-fun m!7029420 () Bool)

(assert (=> b!6195633 m!7029420))

(assert (=> b!6195218 d!1942580))

(declare-fun b!6195676 () Bool)

(declare-fun e!3773113 () (Set Context!11032))

(declare-fun e!3773114 () (Set Context!11032))

(assert (=> b!6195676 (= e!3773113 e!3773114)))

(declare-fun c!1118173 () Bool)

(assert (=> b!6195676 (= c!1118173 (is-Concat!24977 (h!71019 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun bm!518382 () Bool)

(declare-fun call!518391 () (Set Context!11032))

(declare-fun call!518392 () (Set Context!11032))

(assert (=> bm!518382 (= call!518391 call!518392)))

(declare-fun b!6195677 () Bool)

(declare-fun e!3773117 () (Set Context!11032))

(declare-fun call!518390 () (Set Context!11032))

(assert (=> b!6195677 (= e!3773117 call!518390)))

(declare-fun c!1118172 () Bool)

(declare-fun bm!518383 () Bool)

(declare-fun call!518389 () (Set Context!11032))

(declare-fun call!518387 () List!64695)

(assert (=> bm!518383 (= call!518389 (derivationStepZipperDown!1380 (ite c!1118172 (regOne!32777 (h!71019 (exprs!6016 (h!71021 zl!343)))) (regOne!32776 (h!71019 (exprs!6016 (h!71021 zl!343))))) (ite c!1118172 lt!2341521 (Context!11033 call!518387)) (h!71020 s!2326)))))

(declare-fun b!6195678 () Bool)

(declare-fun e!3773116 () (Set Context!11032))

(declare-fun e!3773118 () (Set Context!11032))

(assert (=> b!6195678 (= e!3773116 e!3773118)))

(assert (=> b!6195678 (= c!1118172 (is-Union!16132 (h!71019 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195679 () Bool)

(declare-fun c!1118175 () Bool)

(declare-fun e!3773115 () Bool)

(assert (=> b!6195679 (= c!1118175 e!3773115)))

(declare-fun res!2562879 () Bool)

(assert (=> b!6195679 (=> (not res!2562879) (not e!3773115))))

(assert (=> b!6195679 (= res!2562879 (is-Concat!24977 (h!71019 (exprs!6016 (h!71021 zl!343)))))))

(assert (=> b!6195679 (= e!3773118 e!3773113)))

(declare-fun b!6195680 () Bool)

(assert (=> b!6195680 (= e!3773113 (set.union call!518389 call!518391))))

(declare-fun call!518388 () List!64695)

(declare-fun bm!518384 () Bool)

(assert (=> bm!518384 (= call!518392 (derivationStepZipperDown!1380 (ite c!1118172 (regTwo!32777 (h!71019 (exprs!6016 (h!71021 zl!343)))) (ite c!1118175 (regTwo!32776 (h!71019 (exprs!6016 (h!71021 zl!343)))) (ite c!1118173 (regOne!32776 (h!71019 (exprs!6016 (h!71021 zl!343)))) (reg!16461 (h!71019 (exprs!6016 (h!71021 zl!343))))))) (ite (or c!1118172 c!1118175) lt!2341521 (Context!11033 call!518388)) (h!71020 s!2326)))))

(declare-fun b!6195681 () Bool)

(declare-fun c!1118171 () Bool)

(assert (=> b!6195681 (= c!1118171 (is-Star!16132 (h!71019 (exprs!6016 (h!71021 zl!343)))))))

(assert (=> b!6195681 (= e!3773114 e!3773117)))

(declare-fun b!6195682 () Bool)

(assert (=> b!6195682 (= e!3773116 (set.insert lt!2341521 (as set.empty (Set Context!11032))))))

(declare-fun b!6195683 () Bool)

(assert (=> b!6195683 (= e!3773114 call!518390)))

(declare-fun b!6195684 () Bool)

(assert (=> b!6195684 (= e!3773118 (set.union call!518389 call!518392))))

(declare-fun bm!518385 () Bool)

(declare-fun $colon$colon!2003 (List!64695 Regex!16132) List!64695)

(assert (=> bm!518385 (= call!518387 ($colon$colon!2003 (exprs!6016 lt!2341521) (ite (or c!1118175 c!1118173) (regTwo!32776 (h!71019 (exprs!6016 (h!71021 zl!343)))) (h!71019 (exprs!6016 (h!71021 zl!343))))))))

(declare-fun b!6195685 () Bool)

(assert (=> b!6195685 (= e!3773115 (nullable!6125 (regOne!32776 (h!71019 (exprs!6016 (h!71021 zl!343))))))))

(declare-fun d!1942584 () Bool)

(declare-fun c!1118174 () Bool)

(assert (=> d!1942584 (= c!1118174 (and (is-ElementMatch!16132 (h!71019 (exprs!6016 (h!71021 zl!343)))) (= (c!1118067 (h!71019 (exprs!6016 (h!71021 zl!343)))) (h!71020 s!2326))))))

(assert (=> d!1942584 (= (derivationStepZipperDown!1380 (h!71019 (exprs!6016 (h!71021 zl!343))) lt!2341521 (h!71020 s!2326)) e!3773116)))

(declare-fun bm!518386 () Bool)

(assert (=> bm!518386 (= call!518388 call!518387)))

(declare-fun bm!518387 () Bool)

(assert (=> bm!518387 (= call!518390 call!518391)))

(declare-fun b!6195686 () Bool)

(assert (=> b!6195686 (= e!3773117 (as set.empty (Set Context!11032)))))

(assert (= (and d!1942584 c!1118174) b!6195682))

(assert (= (and d!1942584 (not c!1118174)) b!6195678))

(assert (= (and b!6195678 c!1118172) b!6195684))

(assert (= (and b!6195678 (not c!1118172)) b!6195679))

(assert (= (and b!6195679 res!2562879) b!6195685))

(assert (= (and b!6195679 c!1118175) b!6195680))

(assert (= (and b!6195679 (not c!1118175)) b!6195676))

(assert (= (and b!6195676 c!1118173) b!6195683))

(assert (= (and b!6195676 (not c!1118173)) b!6195681))

(assert (= (and b!6195681 c!1118171) b!6195677))

(assert (= (and b!6195681 (not c!1118171)) b!6195686))

(assert (= (or b!6195683 b!6195677) bm!518386))

(assert (= (or b!6195683 b!6195677) bm!518387))

(assert (= (or b!6195680 bm!518386) bm!518385))

(assert (= (or b!6195680 bm!518387) bm!518382))

(assert (= (or b!6195684 bm!518382) bm!518384))

(assert (= (or b!6195684 b!6195680) bm!518383))

(declare-fun m!7029422 () Bool)

(assert (=> b!6195685 m!7029422))

(declare-fun m!7029424 () Bool)

(assert (=> bm!518385 m!7029424))

(declare-fun m!7029426 () Bool)

(assert (=> bm!518384 m!7029426))

(declare-fun m!7029428 () Bool)

(assert (=> bm!518383 m!7029428))

(declare-fun m!7029430 () Bool)

(assert (=> b!6195682 m!7029430))

(assert (=> b!6195218 d!1942584))

(declare-fun d!1942586 () Bool)

(declare-fun dynLambda!25466 (Int Context!11032) (Set Context!11032))

(assert (=> d!1942586 (= (flatMap!1637 z!1189 lambda!338386) (dynLambda!25466 lambda!338386 (h!71021 zl!343)))))

(declare-fun lt!2341720 () Unit!157835)

(declare-fun choose!46024 ((Set Context!11032) Context!11032 Int) Unit!157835)

(assert (=> d!1942586 (= lt!2341720 (choose!46024 z!1189 (h!71021 zl!343) lambda!338386))))

(assert (=> d!1942586 (= z!1189 (set.insert (h!71021 zl!343) (as set.empty (Set Context!11032))))))

(assert (=> d!1942586 (= (lemmaFlatMapOnSingletonSet!1163 z!1189 (h!71021 zl!343) lambda!338386) lt!2341720)))

(declare-fun b_lambda!235717 () Bool)

(assert (=> (not b_lambda!235717) (not d!1942586)))

(declare-fun bs!1537615 () Bool)

(assert (= bs!1537615 d!1942586))

(assert (=> bs!1537615 m!7029030))

(declare-fun m!7029434 () Bool)

(assert (=> bs!1537615 m!7029434))

(declare-fun m!7029438 () Bool)

(assert (=> bs!1537615 m!7029438))

(declare-fun m!7029440 () Bool)

(assert (=> bs!1537615 m!7029440))

(assert (=> b!6195218 d!1942586))

(declare-fun b!6195696 () Bool)

(declare-fun e!3773128 () (Set Context!11032))

(declare-fun call!518396 () (Set Context!11032))

(assert (=> b!6195696 (= e!3773128 call!518396)))

(declare-fun b!6195697 () Bool)

(assert (=> b!6195697 (= e!3773128 (as set.empty (Set Context!11032)))))

(declare-fun bm!518391 () Bool)

(assert (=> bm!518391 (= call!518396 (derivationStepZipperDown!1380 (h!71019 (exprs!6016 (h!71021 zl!343))) (Context!11033 (t!378209 (exprs!6016 (h!71021 zl!343)))) (h!71020 s!2326)))))

(declare-fun b!6195699 () Bool)

(declare-fun e!3773127 () Bool)

(assert (=> b!6195699 (= e!3773127 (nullable!6125 (h!71019 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195700 () Bool)

(declare-fun e!3773126 () (Set Context!11032))

(assert (=> b!6195700 (= e!3773126 e!3773128)))

(declare-fun c!1118179 () Bool)

(assert (=> b!6195700 (= c!1118179 (is-Cons!64571 (exprs!6016 (h!71021 zl!343))))))

(declare-fun b!6195698 () Bool)

(assert (=> b!6195698 (= e!3773126 (set.union call!518396 (derivationStepZipperUp!1306 (Context!11033 (t!378209 (exprs!6016 (h!71021 zl!343)))) (h!71020 s!2326))))))

(declare-fun d!1942588 () Bool)

(declare-fun c!1118178 () Bool)

(assert (=> d!1942588 (= c!1118178 e!3773127)))

(declare-fun res!2562885 () Bool)

(assert (=> d!1942588 (=> (not res!2562885) (not e!3773127))))

(assert (=> d!1942588 (= res!2562885 (is-Cons!64571 (exprs!6016 (h!71021 zl!343))))))

(assert (=> d!1942588 (= (derivationStepZipperUp!1306 (h!71021 zl!343) (h!71020 s!2326)) e!3773126)))

(assert (= (and d!1942588 res!2562885) b!6195699))

(assert (= (and d!1942588 c!1118178) b!6195698))

(assert (= (and d!1942588 (not c!1118178)) b!6195700))

(assert (= (and b!6195700 c!1118179) b!6195696))

(assert (= (and b!6195700 (not c!1118179)) b!6195697))

(assert (= (or b!6195698 b!6195696) bm!518391))

(declare-fun m!7029444 () Bool)

(assert (=> bm!518391 m!7029444))

(assert (=> b!6195699 m!7029028))

(declare-fun m!7029446 () Bool)

(assert (=> b!6195698 m!7029446))

(assert (=> b!6195218 d!1942588))

(declare-fun d!1942592 () Bool)

(declare-fun nullableFct!2083 (Regex!16132) Bool)

(assert (=> d!1942592 (= (nullable!6125 (h!71019 (exprs!6016 (h!71021 zl!343)))) (nullableFct!2083 (h!71019 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun bs!1537616 () Bool)

(assert (= bs!1537616 d!1942592))

(declare-fun m!7029448 () Bool)

(assert (=> bs!1537616 m!7029448))

(assert (=> b!6195218 d!1942592))

(declare-fun d!1942594 () Bool)

(declare-fun choose!46025 ((Set Context!11032) Int) (Set Context!11032))

(assert (=> d!1942594 (= (flatMap!1637 z!1189 lambda!338386) (choose!46025 z!1189 lambda!338386))))

(declare-fun bs!1537617 () Bool)

(assert (= bs!1537617 d!1942594))

(declare-fun m!7029450 () Bool)

(assert (=> bs!1537617 m!7029450))

(assert (=> b!6195218 d!1942594))

(declare-fun bs!1537618 () Bool)

(declare-fun b!6195711 () Bool)

(assert (= bs!1537618 (and b!6195711 b!6195245)))

(declare-fun lambda!338420 () Int)

(assert (=> bs!1537618 (not (= lambda!338420 lambda!338384))))

(declare-fun bs!1537619 () Bool)

(assert (= bs!1537619 (and b!6195711 b!6195494)))

(assert (=> bs!1537619 (= (and (= (reg!16461 r!7292) (reg!16461 lt!2341503)) (= r!7292 lt!2341503)) (= lambda!338420 lambda!338408))))

(declare-fun bs!1537620 () Bool)

(assert (= bs!1537620 (and b!6195711 b!6195483)))

(assert (=> bs!1537620 (= (and (= (reg!16461 r!7292) (reg!16461 lt!2341535)) (= r!7292 lt!2341535)) (= lambda!338420 lambda!338406))))

(assert (=> bs!1537618 (not (= lambda!338420 lambda!338385))))

(declare-fun bs!1537621 () Bool)

(assert (= bs!1537621 (and b!6195711 b!6195473)))

(assert (=> bs!1537621 (not (= lambda!338420 lambda!338407))))

(declare-fun bs!1537622 () Bool)

(assert (= bs!1537622 (and b!6195711 b!6195484)))

(assert (=> bs!1537622 (not (= lambda!338420 lambda!338409))))

(assert (=> b!6195711 true))

(assert (=> b!6195711 true))

(declare-fun bs!1537623 () Bool)

(declare-fun b!6195701 () Bool)

(assert (= bs!1537623 (and b!6195701 b!6195245)))

(declare-fun lambda!338421 () Int)

(assert (=> bs!1537623 (not (= lambda!338421 lambda!338384))))

(declare-fun bs!1537624 () Bool)

(assert (= bs!1537624 (and b!6195701 b!6195494)))

(assert (=> bs!1537624 (not (= lambda!338421 lambda!338408))))

(declare-fun bs!1537625 () Bool)

(assert (= bs!1537625 (and b!6195701 b!6195483)))

(assert (=> bs!1537625 (not (= lambda!338421 lambda!338406))))

(assert (=> bs!1537623 (= lambda!338421 lambda!338385)))

(declare-fun bs!1537626 () Bool)

(assert (= bs!1537626 (and b!6195701 b!6195473)))

(assert (=> bs!1537626 (= (and (= (regOne!32776 r!7292) (regOne!32776 lt!2341535)) (= (regTwo!32776 r!7292) (regTwo!32776 lt!2341535))) (= lambda!338421 lambda!338407))))

(declare-fun bs!1537627 () Bool)

(assert (= bs!1537627 (and b!6195701 b!6195484)))

(assert (=> bs!1537627 (= (and (= (regOne!32776 r!7292) (regOne!32776 lt!2341503)) (= (regTwo!32776 r!7292) (regTwo!32776 lt!2341503))) (= lambda!338421 lambda!338409))))

(declare-fun bs!1537628 () Bool)

(assert (= bs!1537628 (and b!6195701 b!6195711)))

(assert (=> bs!1537628 (not (= lambda!338421 lambda!338420))))

(assert (=> b!6195701 true))

(assert (=> b!6195701 true))

(declare-fun e!3773132 () Bool)

(declare-fun call!518398 () Bool)

(assert (=> b!6195701 (= e!3773132 call!518398)))

(declare-fun b!6195702 () Bool)

(declare-fun e!3773131 () Bool)

(declare-fun call!518397 () Bool)

(assert (=> b!6195702 (= e!3773131 call!518397)))

(declare-fun b!6195703 () Bool)

(declare-fun e!3773130 () Bool)

(assert (=> b!6195703 (= e!3773131 e!3773130)))

(declare-fun res!2562887 () Bool)

(assert (=> b!6195703 (= res!2562887 (not (is-EmptyLang!16132 r!7292)))))

(assert (=> b!6195703 (=> (not res!2562887) (not e!3773130))))

(declare-fun b!6195704 () Bool)

(declare-fun e!3773129 () Bool)

(assert (=> b!6195704 (= e!3773129 (matchRSpec!3233 (regTwo!32777 r!7292) s!2326))))

(declare-fun d!1942596 () Bool)

(declare-fun c!1118181 () Bool)

(assert (=> d!1942596 (= c!1118181 (is-EmptyExpr!16132 r!7292))))

(assert (=> d!1942596 (= (matchRSpec!3233 r!7292 s!2326) e!3773131)))

(declare-fun b!6195705 () Bool)

(declare-fun res!2562888 () Bool)

(declare-fun e!3773134 () Bool)

(assert (=> b!6195705 (=> res!2562888 e!3773134)))

(assert (=> b!6195705 (= res!2562888 call!518397)))

(assert (=> b!6195705 (= e!3773132 e!3773134)))

(declare-fun c!1118182 () Bool)

(declare-fun bm!518392 () Bool)

(assert (=> bm!518392 (= call!518398 (Exists!3202 (ite c!1118182 lambda!338420 lambda!338421)))))

(declare-fun b!6195706 () Bool)

(declare-fun e!3773133 () Bool)

(assert (=> b!6195706 (= e!3773133 e!3773132)))

(assert (=> b!6195706 (= c!1118182 (is-Star!16132 r!7292))))

(declare-fun b!6195707 () Bool)

(declare-fun c!1118183 () Bool)

(assert (=> b!6195707 (= c!1118183 (is-Union!16132 r!7292))))

(declare-fun e!3773135 () Bool)

(assert (=> b!6195707 (= e!3773135 e!3773133)))

(declare-fun b!6195708 () Bool)

(assert (=> b!6195708 (= e!3773133 e!3773129)))

(declare-fun res!2562886 () Bool)

(assert (=> b!6195708 (= res!2562886 (matchRSpec!3233 (regOne!32777 r!7292) s!2326))))

(assert (=> b!6195708 (=> res!2562886 e!3773129)))

(declare-fun b!6195709 () Bool)

(declare-fun c!1118180 () Bool)

(assert (=> b!6195709 (= c!1118180 (is-ElementMatch!16132 r!7292))))

(assert (=> b!6195709 (= e!3773130 e!3773135)))

(declare-fun b!6195710 () Bool)

(assert (=> b!6195710 (= e!3773135 (= s!2326 (Cons!64572 (c!1118067 r!7292) Nil!64572)))))

(assert (=> b!6195711 (= e!3773134 call!518398)))

(declare-fun bm!518393 () Bool)

(assert (=> bm!518393 (= call!518397 (isEmpty!36564 s!2326))))

(assert (= (and d!1942596 c!1118181) b!6195702))

(assert (= (and d!1942596 (not c!1118181)) b!6195703))

(assert (= (and b!6195703 res!2562887) b!6195709))

(assert (= (and b!6195709 c!1118180) b!6195710))

(assert (= (and b!6195709 (not c!1118180)) b!6195707))

(assert (= (and b!6195707 c!1118183) b!6195708))

(assert (= (and b!6195707 (not c!1118183)) b!6195706))

(assert (= (and b!6195708 (not res!2562886)) b!6195704))

(assert (= (and b!6195706 c!1118182) b!6195705))

(assert (= (and b!6195706 (not c!1118182)) b!6195701))

(assert (= (and b!6195705 (not res!2562888)) b!6195711))

(assert (= (or b!6195711 b!6195701) bm!518392))

(assert (= (or b!6195702 b!6195705) bm!518393))

(declare-fun m!7029452 () Bool)

(assert (=> b!6195704 m!7029452))

(declare-fun m!7029454 () Bool)

(assert (=> bm!518392 m!7029454))

(declare-fun m!7029456 () Bool)

(assert (=> b!6195708 m!7029456))

(assert (=> bm!518393 m!7029250))

(assert (=> b!6195215 d!1942596))

(declare-fun b!6195712 () Bool)

(declare-fun e!3773139 () Bool)

(declare-fun e!3773136 () Bool)

(assert (=> b!6195712 (= e!3773139 e!3773136)))

(declare-fun res!2562890 () Bool)

(assert (=> b!6195712 (=> res!2562890 e!3773136)))

(declare-fun call!518399 () Bool)

(assert (=> b!6195712 (= res!2562890 call!518399)))

(declare-fun bm!518394 () Bool)

(assert (=> bm!518394 (= call!518399 (isEmpty!36564 s!2326))))

(declare-fun b!6195713 () Bool)

(declare-fun res!2562896 () Bool)

(declare-fun e!3773138 () Bool)

(assert (=> b!6195713 (=> (not res!2562896) (not e!3773138))))

(assert (=> b!6195713 (= res!2562896 (not call!518399))))

(declare-fun b!6195714 () Bool)

(declare-fun e!3773137 () Bool)

(assert (=> b!6195714 (= e!3773137 (nullable!6125 r!7292))))

(declare-fun b!6195715 () Bool)

(declare-fun e!3773142 () Bool)

(assert (=> b!6195715 (= e!3773142 e!3773139)))

(declare-fun res!2562894 () Bool)

(assert (=> b!6195715 (=> (not res!2562894) (not e!3773139))))

(declare-fun lt!2341721 () Bool)

(assert (=> b!6195715 (= res!2562894 (not lt!2341721))))

(declare-fun b!6195716 () Bool)

(declare-fun res!2562891 () Bool)

(assert (=> b!6195716 (=> res!2562891 e!3773142)))

(assert (=> b!6195716 (= res!2562891 (not (is-ElementMatch!16132 r!7292)))))

(declare-fun e!3773140 () Bool)

(assert (=> b!6195716 (= e!3773140 e!3773142)))

(declare-fun b!6195717 () Bool)

(declare-fun e!3773141 () Bool)

(assert (=> b!6195717 (= e!3773141 (= lt!2341721 call!518399))))

(declare-fun b!6195718 () Bool)

(declare-fun res!2562889 () Bool)

(assert (=> b!6195718 (=> res!2562889 e!3773142)))

(assert (=> b!6195718 (= res!2562889 e!3773138)))

(declare-fun res!2562892 () Bool)

(assert (=> b!6195718 (=> (not res!2562892) (not e!3773138))))

(assert (=> b!6195718 (= res!2562892 lt!2341721)))

(declare-fun b!6195719 () Bool)

(assert (=> b!6195719 (= e!3773136 (not (= (head!12776 s!2326) (c!1118067 r!7292))))))

(declare-fun b!6195720 () Bool)

(declare-fun res!2562893 () Bool)

(assert (=> b!6195720 (=> (not res!2562893) (not e!3773138))))

(assert (=> b!6195720 (= res!2562893 (isEmpty!36564 (tail!11861 s!2326)))))

(declare-fun b!6195721 () Bool)

(declare-fun res!2562895 () Bool)

(assert (=> b!6195721 (=> res!2562895 e!3773136)))

(assert (=> b!6195721 (= res!2562895 (not (isEmpty!36564 (tail!11861 s!2326))))))

(declare-fun b!6195722 () Bool)

(assert (=> b!6195722 (= e!3773138 (= (head!12776 s!2326) (c!1118067 r!7292)))))

(declare-fun b!6195723 () Bool)

(assert (=> b!6195723 (= e!3773137 (matchR!8315 (derivativeStep!4847 r!7292 (head!12776 s!2326)) (tail!11861 s!2326)))))

(declare-fun b!6195724 () Bool)

(assert (=> b!6195724 (= e!3773141 e!3773140)))

(declare-fun c!1118184 () Bool)

(assert (=> b!6195724 (= c!1118184 (is-EmptyLang!16132 r!7292))))

(declare-fun b!6195725 () Bool)

(assert (=> b!6195725 (= e!3773140 (not lt!2341721))))

(declare-fun d!1942598 () Bool)

(assert (=> d!1942598 e!3773141))

(declare-fun c!1118186 () Bool)

(assert (=> d!1942598 (= c!1118186 (is-EmptyExpr!16132 r!7292))))

(assert (=> d!1942598 (= lt!2341721 e!3773137)))

(declare-fun c!1118185 () Bool)

(assert (=> d!1942598 (= c!1118185 (isEmpty!36564 s!2326))))

(assert (=> d!1942598 (validRegex!7868 r!7292)))

(assert (=> d!1942598 (= (matchR!8315 r!7292 s!2326) lt!2341721)))

(assert (= (and d!1942598 c!1118185) b!6195714))

(assert (= (and d!1942598 (not c!1118185)) b!6195723))

(assert (= (and d!1942598 c!1118186) b!6195717))

(assert (= (and d!1942598 (not c!1118186)) b!6195724))

(assert (= (and b!6195724 c!1118184) b!6195725))

(assert (= (and b!6195724 (not c!1118184)) b!6195716))

(assert (= (and b!6195716 (not res!2562891)) b!6195718))

(assert (= (and b!6195718 res!2562892) b!6195713))

(assert (= (and b!6195713 res!2562896) b!6195720))

(assert (= (and b!6195720 res!2562893) b!6195722))

(assert (= (and b!6195718 (not res!2562889)) b!6195715))

(assert (= (and b!6195715 res!2562894) b!6195712))

(assert (= (and b!6195712 (not res!2562890)) b!6195721))

(assert (= (and b!6195721 (not res!2562895)) b!6195719))

(assert (= (or b!6195717 b!6195712 b!6195713) bm!518394))

(assert (=> d!1942598 m!7029250))

(assert (=> d!1942598 m!7029100))

(assert (=> b!6195723 m!7029254))

(assert (=> b!6195723 m!7029254))

(declare-fun m!7029458 () Bool)

(assert (=> b!6195723 m!7029458))

(assert (=> b!6195723 m!7029258))

(assert (=> b!6195723 m!7029458))

(assert (=> b!6195723 m!7029258))

(declare-fun m!7029460 () Bool)

(assert (=> b!6195723 m!7029460))

(assert (=> b!6195719 m!7029254))

(assert (=> bm!518394 m!7029250))

(assert (=> b!6195722 m!7029254))

(assert (=> b!6195720 m!7029258))

(assert (=> b!6195720 m!7029258))

(assert (=> b!6195720 m!7029262))

(declare-fun m!7029462 () Bool)

(assert (=> b!6195714 m!7029462))

(assert (=> b!6195721 m!7029258))

(assert (=> b!6195721 m!7029258))

(assert (=> b!6195721 m!7029262))

(assert (=> b!6195215 d!1942598))

(declare-fun d!1942600 () Bool)

(assert (=> d!1942600 (= (matchR!8315 r!7292 s!2326) (matchRSpec!3233 r!7292 s!2326))))

(declare-fun lt!2341722 () Unit!157835)

(assert (=> d!1942600 (= lt!2341722 (choose!46021 r!7292 s!2326))))

(assert (=> d!1942600 (validRegex!7868 r!7292)))

(assert (=> d!1942600 (= (mainMatchTheorem!3233 r!7292 s!2326) lt!2341722)))

(declare-fun bs!1537629 () Bool)

(assert (= bs!1537629 d!1942600))

(assert (=> bs!1537629 m!7029048))

(assert (=> bs!1537629 m!7029046))

(declare-fun m!7029464 () Bool)

(assert (=> bs!1537629 m!7029464))

(assert (=> bs!1537629 m!7029100))

(assert (=> b!6195215 d!1942600))

(declare-fun d!1942602 () Bool)

(assert (=> d!1942602 (= (nullable!6125 (regTwo!32777 (regOne!32776 r!7292))) (nullableFct!2083 (regTwo!32777 (regOne!32776 r!7292))))))

(declare-fun bs!1537630 () Bool)

(assert (= bs!1537630 d!1942602))

(declare-fun m!7029466 () Bool)

(assert (=> bs!1537630 m!7029466))

(assert (=> b!6195235 d!1942602))

(declare-fun d!1942604 () Bool)

(assert (=> d!1942604 (= (flatMap!1637 lt!2341525 lambda!338386) (choose!46025 lt!2341525 lambda!338386))))

(declare-fun bs!1537631 () Bool)

(assert (= bs!1537631 d!1942604))

(declare-fun m!7029468 () Bool)

(assert (=> bs!1537631 m!7029468))

(assert (=> b!6195235 d!1942604))

(declare-fun d!1942606 () Bool)

(assert (=> d!1942606 (= (flatMap!1637 lt!2341543 lambda!338386) (dynLambda!25466 lambda!338386 lt!2341506))))

(declare-fun lt!2341723 () Unit!157835)

(assert (=> d!1942606 (= lt!2341723 (choose!46024 lt!2341543 lt!2341506 lambda!338386))))

(assert (=> d!1942606 (= lt!2341543 (set.insert lt!2341506 (as set.empty (Set Context!11032))))))

(assert (=> d!1942606 (= (lemmaFlatMapOnSingletonSet!1163 lt!2341543 lt!2341506 lambda!338386) lt!2341723)))

(declare-fun b_lambda!235719 () Bool)

(assert (=> (not b_lambda!235719) (not d!1942606)))

(declare-fun bs!1537632 () Bool)

(assert (= bs!1537632 d!1942606))

(assert (=> bs!1537632 m!7028994))

(declare-fun m!7029470 () Bool)

(assert (=> bs!1537632 m!7029470))

(declare-fun m!7029472 () Bool)

(assert (=> bs!1537632 m!7029472))

(assert (=> bs!1537632 m!7028990))

(assert (=> b!6195235 d!1942606))

(declare-fun d!1942608 () Bool)

(declare-fun c!1118187 () Bool)

(assert (=> d!1942608 (= c!1118187 (isEmpty!36564 s!2326))))

(declare-fun e!3773143 () Bool)

(assert (=> d!1942608 (= (matchZipper!2144 z!1189 s!2326) e!3773143)))

(declare-fun b!6195726 () Bool)

(assert (=> b!6195726 (= e!3773143 (nullableZipper!1908 z!1189))))

(declare-fun b!6195727 () Bool)

(assert (=> b!6195727 (= e!3773143 (matchZipper!2144 (derivationStepZipper!2100 z!1189 (head!12776 s!2326)) (tail!11861 s!2326)))))

(assert (= (and d!1942608 c!1118187) b!6195726))

(assert (= (and d!1942608 (not c!1118187)) b!6195727))

(assert (=> d!1942608 m!7029250))

(declare-fun m!7029474 () Bool)

(assert (=> b!6195726 m!7029474))

(assert (=> b!6195727 m!7029254))

(assert (=> b!6195727 m!7029254))

(declare-fun m!7029476 () Bool)

(assert (=> b!6195727 m!7029476))

(assert (=> b!6195727 m!7029258))

(assert (=> b!6195727 m!7029476))

(assert (=> b!6195727 m!7029258))

(declare-fun m!7029478 () Bool)

(assert (=> b!6195727 m!7029478))

(assert (=> b!6195235 d!1942608))

(declare-fun d!1942610 () Bool)

(assert (=> d!1942610 (= (flatMap!1637 lt!2341525 lambda!338386) (dynLambda!25466 lambda!338386 lt!2341533))))

(declare-fun lt!2341724 () Unit!157835)

(assert (=> d!1942610 (= lt!2341724 (choose!46024 lt!2341525 lt!2341533 lambda!338386))))

(assert (=> d!1942610 (= lt!2341525 (set.insert lt!2341533 (as set.empty (Set Context!11032))))))

(assert (=> d!1942610 (= (lemmaFlatMapOnSingletonSet!1163 lt!2341525 lt!2341533 lambda!338386) lt!2341724)))

(declare-fun b_lambda!235721 () Bool)

(assert (=> (not b_lambda!235721) (not d!1942610)))

(declare-fun bs!1537633 () Bool)

(assert (= bs!1537633 d!1942610))

(assert (=> bs!1537633 m!7029004))

(declare-fun m!7029480 () Bool)

(assert (=> bs!1537633 m!7029480))

(declare-fun m!7029482 () Bool)

(assert (=> bs!1537633 m!7029482))

(assert (=> bs!1537633 m!7028998))

(assert (=> b!6195235 d!1942610))

(declare-fun d!1942612 () Bool)

(declare-fun c!1118188 () Bool)

(assert (=> d!1942612 (= c!1118188 (isEmpty!36564 s!2326))))

(declare-fun e!3773144 () Bool)

(assert (=> d!1942612 (= (matchZipper!2144 lt!2341543 s!2326) e!3773144)))

(declare-fun b!6195728 () Bool)

(assert (=> b!6195728 (= e!3773144 (nullableZipper!1908 lt!2341543))))

(declare-fun b!6195729 () Bool)

(assert (=> b!6195729 (= e!3773144 (matchZipper!2144 (derivationStepZipper!2100 lt!2341543 (head!12776 s!2326)) (tail!11861 s!2326)))))

(assert (= (and d!1942612 c!1118188) b!6195728))

(assert (= (and d!1942612 (not c!1118188)) b!6195729))

(assert (=> d!1942612 m!7029250))

(declare-fun m!7029484 () Bool)

(assert (=> b!6195728 m!7029484))

(assert (=> b!6195729 m!7029254))

(assert (=> b!6195729 m!7029254))

(declare-fun m!7029486 () Bool)

(assert (=> b!6195729 m!7029486))

(assert (=> b!6195729 m!7029258))

(assert (=> b!6195729 m!7029486))

(assert (=> b!6195729 m!7029258))

(declare-fun m!7029488 () Bool)

(assert (=> b!6195729 m!7029488))

(assert (=> b!6195235 d!1942612))

(declare-fun b!6195732 () Bool)

(declare-fun e!3773147 () (Set Context!11032))

(declare-fun call!518400 () (Set Context!11032))

(assert (=> b!6195732 (= e!3773147 call!518400)))

(declare-fun b!6195733 () Bool)

(assert (=> b!6195733 (= e!3773147 (as set.empty (Set Context!11032)))))

(declare-fun bm!518395 () Bool)

(assert (=> bm!518395 (= call!518400 (derivationStepZipperDown!1380 (h!71019 (exprs!6016 lt!2341533)) (Context!11033 (t!378209 (exprs!6016 lt!2341533))) (h!71020 s!2326)))))

(declare-fun b!6195735 () Bool)

(declare-fun e!3773146 () Bool)

(assert (=> b!6195735 (= e!3773146 (nullable!6125 (h!71019 (exprs!6016 lt!2341533))))))

(declare-fun b!6195736 () Bool)

(declare-fun e!3773145 () (Set Context!11032))

(assert (=> b!6195736 (= e!3773145 e!3773147)))

(declare-fun c!1118190 () Bool)

(assert (=> b!6195736 (= c!1118190 (is-Cons!64571 (exprs!6016 lt!2341533)))))

(declare-fun b!6195734 () Bool)

(assert (=> b!6195734 (= e!3773145 (set.union call!518400 (derivationStepZipperUp!1306 (Context!11033 (t!378209 (exprs!6016 lt!2341533))) (h!71020 s!2326))))))

(declare-fun d!1942614 () Bool)

(declare-fun c!1118189 () Bool)

(assert (=> d!1942614 (= c!1118189 e!3773146)))

(declare-fun res!2562897 () Bool)

(assert (=> d!1942614 (=> (not res!2562897) (not e!3773146))))

(assert (=> d!1942614 (= res!2562897 (is-Cons!64571 (exprs!6016 lt!2341533)))))

(assert (=> d!1942614 (= (derivationStepZipperUp!1306 lt!2341533 (h!71020 s!2326)) e!3773145)))

(assert (= (and d!1942614 res!2562897) b!6195735))

(assert (= (and d!1942614 c!1118189) b!6195734))

(assert (= (and d!1942614 (not c!1118189)) b!6195736))

(assert (= (and b!6195736 c!1118190) b!6195732))

(assert (= (and b!6195736 (not c!1118190)) b!6195733))

(assert (= (or b!6195734 b!6195732) bm!518395))

(declare-fun m!7029490 () Bool)

(assert (=> bm!518395 m!7029490))

(declare-fun m!7029492 () Bool)

(assert (=> b!6195735 m!7029492))

(declare-fun m!7029494 () Bool)

(assert (=> b!6195734 m!7029494))

(assert (=> b!6195235 d!1942614))

(declare-fun d!1942616 () Bool)

(assert (=> d!1942616 (= (nullable!6125 (regOne!32777 (regOne!32776 r!7292))) (nullableFct!2083 (regOne!32777 (regOne!32776 r!7292))))))

(declare-fun bs!1537634 () Bool)

(assert (= bs!1537634 d!1942616))

(declare-fun m!7029496 () Bool)

(assert (=> bs!1537634 m!7029496))

(assert (=> b!6195235 d!1942616))

(declare-fun b!6195743 () Bool)

(declare-fun e!3773154 () (Set Context!11032))

(declare-fun call!518401 () (Set Context!11032))

(assert (=> b!6195743 (= e!3773154 call!518401)))

(declare-fun b!6195744 () Bool)

(assert (=> b!6195744 (= e!3773154 (as set.empty (Set Context!11032)))))

(declare-fun bm!518396 () Bool)

(assert (=> bm!518396 (= call!518401 (derivationStepZipperDown!1380 (h!71019 (exprs!6016 lt!2341506)) (Context!11033 (t!378209 (exprs!6016 lt!2341506))) (h!71020 s!2326)))))

(declare-fun b!6195746 () Bool)

(declare-fun e!3773153 () Bool)

(assert (=> b!6195746 (= e!3773153 (nullable!6125 (h!71019 (exprs!6016 lt!2341506))))))

(declare-fun b!6195747 () Bool)

(declare-fun e!3773152 () (Set Context!11032))

(assert (=> b!6195747 (= e!3773152 e!3773154)))

(declare-fun c!1118196 () Bool)

(assert (=> b!6195747 (= c!1118196 (is-Cons!64571 (exprs!6016 lt!2341506)))))

(declare-fun b!6195745 () Bool)

(assert (=> b!6195745 (= e!3773152 (set.union call!518401 (derivationStepZipperUp!1306 (Context!11033 (t!378209 (exprs!6016 lt!2341506))) (h!71020 s!2326))))))

(declare-fun d!1942618 () Bool)

(declare-fun c!1118195 () Bool)

(assert (=> d!1942618 (= c!1118195 e!3773153)))

(declare-fun res!2562898 () Bool)

(assert (=> d!1942618 (=> (not res!2562898) (not e!3773153))))

(assert (=> d!1942618 (= res!2562898 (is-Cons!64571 (exprs!6016 lt!2341506)))))

(assert (=> d!1942618 (= (derivationStepZipperUp!1306 lt!2341506 (h!71020 s!2326)) e!3773152)))

(assert (= (and d!1942618 res!2562898) b!6195746))

(assert (= (and d!1942618 c!1118195) b!6195745))

(assert (= (and d!1942618 (not c!1118195)) b!6195747))

(assert (= (and b!6195747 c!1118196) b!6195743))

(assert (= (and b!6195747 (not c!1118196)) b!6195744))

(assert (= (or b!6195745 b!6195743) bm!518396))

(declare-fun m!7029498 () Bool)

(assert (=> bm!518396 m!7029498))

(declare-fun m!7029500 () Bool)

(assert (=> b!6195746 m!7029500))

(declare-fun m!7029502 () Bool)

(assert (=> b!6195745 m!7029502))

(assert (=> b!6195235 d!1942618))

(declare-fun d!1942620 () Bool)

(assert (=> d!1942620 (= (flatMap!1637 lt!2341543 lambda!338386) (choose!46025 lt!2341543 lambda!338386))))

(declare-fun bs!1537635 () Bool)

(assert (= bs!1537635 d!1942620))

(declare-fun m!7029504 () Bool)

(assert (=> bs!1537635 m!7029504))

(assert (=> b!6195235 d!1942620))

(declare-fun d!1942622 () Bool)

(declare-fun lt!2341727 () Regex!16132)

(assert (=> d!1942622 (validRegex!7868 lt!2341727)))

(assert (=> d!1942622 (= lt!2341727 (generalisedUnion!1976 (unfocusZipperList!1553 zl!343)))))

(assert (=> d!1942622 (= (unfocusZipper!1874 zl!343) lt!2341727)))

(declare-fun bs!1537636 () Bool)

(assert (= bs!1537636 d!1942622))

(declare-fun m!7029506 () Bool)

(assert (=> bs!1537636 m!7029506))

(assert (=> bs!1537636 m!7028980))

(assert (=> bs!1537636 m!7028980))

(assert (=> bs!1537636 m!7028982))

(assert (=> b!6195236 d!1942622))

(declare-fun bs!1537637 () Bool)

(declare-fun d!1942624 () Bool)

(assert (= bs!1537637 (and d!1942624 d!1942536)))

(declare-fun lambda!338422 () Int)

(assert (=> bs!1537637 (= lambda!338422 lambda!338412)))

(declare-fun bs!1537638 () Bool)

(assert (= bs!1537638 (and d!1942624 d!1942538)))

(assert (=> bs!1537638 (= lambda!338422 lambda!338413)))

(declare-fun bs!1537639 () Bool)

(assert (= bs!1537639 (and d!1942624 d!1942558)))

(assert (=> bs!1537639 (= lambda!338422 lambda!338416)))

(declare-fun e!3773166 () Bool)

(assert (=> d!1942624 e!3773166))

(declare-fun res!2562901 () Bool)

(assert (=> d!1942624 (=> (not res!2562901) (not e!3773166))))

(declare-fun lt!2341728 () Regex!16132)

(assert (=> d!1942624 (= res!2562901 (validRegex!7868 lt!2341728))))

(declare-fun e!3773167 () Regex!16132)

(assert (=> d!1942624 (= lt!2341728 e!3773167)))

(declare-fun c!1118203 () Bool)

(declare-fun e!3773163 () Bool)

(assert (=> d!1942624 (= c!1118203 e!3773163)))

(declare-fun res!2562902 () Bool)

(assert (=> d!1942624 (=> (not res!2562902) (not e!3773163))))

(assert (=> d!1942624 (= res!2562902 (is-Cons!64571 (exprs!6016 (h!71021 zl!343))))))

(assert (=> d!1942624 (forall!15248 (exprs!6016 (h!71021 zl!343)) lambda!338422)))

(assert (=> d!1942624 (= (generalisedConcat!1729 (exprs!6016 (h!71021 zl!343))) lt!2341728)))

(declare-fun b!6195762 () Bool)

(declare-fun e!3773168 () Bool)

(assert (=> b!6195762 (= e!3773166 e!3773168)))

(declare-fun c!1118205 () Bool)

(assert (=> b!6195762 (= c!1118205 (isEmpty!36561 (exprs!6016 (h!71021 zl!343))))))

(declare-fun b!6195763 () Bool)

(assert (=> b!6195763 (= e!3773163 (isEmpty!36561 (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195764 () Bool)

(declare-fun e!3773164 () Bool)

(assert (=> b!6195764 (= e!3773168 e!3773164)))

(declare-fun c!1118204 () Bool)

(assert (=> b!6195764 (= c!1118204 (isEmpty!36561 (tail!11862 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195765 () Bool)

(declare-fun e!3773165 () Regex!16132)

(assert (=> b!6195765 (= e!3773165 (Concat!24977 (h!71019 (exprs!6016 (h!71021 zl!343))) (generalisedConcat!1729 (t!378209 (exprs!6016 (h!71021 zl!343))))))))

(declare-fun b!6195766 () Bool)

(assert (=> b!6195766 (= e!3773167 (h!71019 (exprs!6016 (h!71021 zl!343))))))

(declare-fun b!6195767 () Bool)

(assert (=> b!6195767 (= e!3773164 (isConcat!1067 lt!2341728))))

(declare-fun b!6195768 () Bool)

(assert (=> b!6195768 (= e!3773168 (isEmptyExpr!1544 lt!2341728))))

(declare-fun b!6195769 () Bool)

(assert (=> b!6195769 (= e!3773167 e!3773165)))

(declare-fun c!1118206 () Bool)

(assert (=> b!6195769 (= c!1118206 (is-Cons!64571 (exprs!6016 (h!71021 zl!343))))))

(declare-fun b!6195770 () Bool)

(assert (=> b!6195770 (= e!3773164 (= lt!2341728 (head!12777 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195771 () Bool)

(assert (=> b!6195771 (= e!3773165 EmptyExpr!16132)))

(assert (= (and d!1942624 res!2562902) b!6195763))

(assert (= (and d!1942624 c!1118203) b!6195766))

(assert (= (and d!1942624 (not c!1118203)) b!6195769))

(assert (= (and b!6195769 c!1118206) b!6195765))

(assert (= (and b!6195769 (not c!1118206)) b!6195771))

(assert (= (and d!1942624 res!2562901) b!6195762))

(assert (= (and b!6195762 c!1118205) b!6195768))

(assert (= (and b!6195762 (not c!1118205)) b!6195764))

(assert (= (and b!6195764 c!1118204) b!6195770))

(assert (= (and b!6195764 (not c!1118204)) b!6195767))

(declare-fun m!7029508 () Bool)

(assert (=> d!1942624 m!7029508))

(declare-fun m!7029510 () Bool)

(assert (=> d!1942624 m!7029510))

(assert (=> b!6195765 m!7029064))

(assert (=> b!6195763 m!7029108))

(declare-fun m!7029512 () Bool)

(assert (=> b!6195768 m!7029512))

(declare-fun m!7029514 () Bool)

(assert (=> b!6195762 m!7029514))

(declare-fun m!7029516 () Bool)

(assert (=> b!6195764 m!7029516))

(assert (=> b!6195764 m!7029516))

(declare-fun m!7029518 () Bool)

(assert (=> b!6195764 m!7029518))

(declare-fun m!7029520 () Bool)

(assert (=> b!6195767 m!7029520))

(declare-fun m!7029522 () Bool)

(assert (=> b!6195770 m!7029522))

(assert (=> b!6195232 d!1942624))

(assert (=> b!6195233 d!1942546))

(declare-fun d!1942626 () Bool)

(declare-fun c!1118207 () Bool)

(assert (=> d!1942626 (= c!1118207 (isEmpty!36564 (t!378210 s!2326)))))

(declare-fun e!3773169 () Bool)

(assert (=> d!1942626 (= (matchZipper!2144 lt!2341524 (t!378210 s!2326)) e!3773169)))

(declare-fun b!6195772 () Bool)

(assert (=> b!6195772 (= e!3773169 (nullableZipper!1908 lt!2341524))))

(declare-fun b!6195773 () Bool)

(assert (=> b!6195773 (= e!3773169 (matchZipper!2144 (derivationStepZipper!2100 lt!2341524 (head!12776 (t!378210 s!2326))) (tail!11861 (t!378210 s!2326))))))

(assert (= (and d!1942626 c!1118207) b!6195772))

(assert (= (and d!1942626 (not c!1118207)) b!6195773))

(assert (=> d!1942626 m!7029342))

(declare-fun m!7029524 () Bool)

(assert (=> b!6195772 m!7029524))

(assert (=> b!6195773 m!7029346))

(assert (=> b!6195773 m!7029346))

(declare-fun m!7029526 () Bool)

(assert (=> b!6195773 m!7029526))

(assert (=> b!6195773 m!7029350))

(assert (=> b!6195773 m!7029526))

(assert (=> b!6195773 m!7029350))

(declare-fun m!7029528 () Bool)

(assert (=> b!6195773 m!7029528))

(assert (=> b!6195233 d!1942626))

(declare-fun d!1942628 () Bool)

(declare-fun c!1118208 () Bool)

(assert (=> d!1942628 (= c!1118208 (isEmpty!36564 (t!378210 s!2326)))))

(declare-fun e!3773170 () Bool)

(assert (=> d!1942628 (= (matchZipper!2144 lt!2341538 (t!378210 s!2326)) e!3773170)))

(declare-fun b!6195774 () Bool)

(assert (=> b!6195774 (= e!3773170 (nullableZipper!1908 lt!2341538))))

(declare-fun b!6195775 () Bool)

(assert (=> b!6195775 (= e!3773170 (matchZipper!2144 (derivationStepZipper!2100 lt!2341538 (head!12776 (t!378210 s!2326))) (tail!11861 (t!378210 s!2326))))))

(assert (= (and d!1942628 c!1118208) b!6195774))

(assert (= (and d!1942628 (not c!1118208)) b!6195775))

(assert (=> d!1942628 m!7029342))

(declare-fun m!7029530 () Bool)

(assert (=> b!6195774 m!7029530))

(assert (=> b!6195775 m!7029346))

(assert (=> b!6195775 m!7029346))

(declare-fun m!7029532 () Bool)

(assert (=> b!6195775 m!7029532))

(assert (=> b!6195775 m!7029350))

(assert (=> b!6195775 m!7029532))

(assert (=> b!6195775 m!7029350))

(declare-fun m!7029534 () Bool)

(assert (=> b!6195775 m!7029534))

(assert (=> b!6195233 d!1942628))

(declare-fun e!3773171 () Bool)

(declare-fun d!1942630 () Bool)

(assert (=> d!1942630 (= (matchZipper!2144 (set.union lt!2341538 lt!2341504) (t!378210 s!2326)) e!3773171)))

(declare-fun res!2562903 () Bool)

(assert (=> d!1942630 (=> res!2562903 e!3773171)))

(assert (=> d!1942630 (= res!2562903 (matchZipper!2144 lt!2341538 (t!378210 s!2326)))))

(declare-fun lt!2341729 () Unit!157835)

(assert (=> d!1942630 (= lt!2341729 (choose!46022 lt!2341538 lt!2341504 (t!378210 s!2326)))))

(assert (=> d!1942630 (= (lemmaZipperConcatMatchesSameAsBothZippers!963 lt!2341538 lt!2341504 (t!378210 s!2326)) lt!2341729)))

(declare-fun b!6195776 () Bool)

(assert (=> b!6195776 (= e!3773171 (matchZipper!2144 lt!2341504 (t!378210 s!2326)))))

(assert (= (and d!1942630 (not res!2562903)) b!6195776))

(declare-fun m!7029536 () Bool)

(assert (=> d!1942630 m!7029536))

(assert (=> d!1942630 m!7029104))

(declare-fun m!7029538 () Bool)

(assert (=> d!1942630 m!7029538))

(assert (=> b!6195776 m!7029044))

(assert (=> b!6195233 d!1942630))

(declare-fun d!1942632 () Bool)

(declare-fun lt!2341730 () Int)

(assert (=> d!1942632 (>= lt!2341730 0)))

(declare-fun e!3773172 () Int)

(assert (=> d!1942632 (= lt!2341730 e!3773172)))

(declare-fun c!1118209 () Bool)

(assert (=> d!1942632 (= c!1118209 (is-Cons!64573 lt!2341526))))

(assert (=> d!1942632 (= (zipperDepthTotal!315 lt!2341526) lt!2341730)))

(declare-fun b!6195777 () Bool)

(assert (=> b!6195777 (= e!3773172 (+ (contextDepthTotal!285 (h!71021 lt!2341526)) (zipperDepthTotal!315 (t!378211 lt!2341526))))))

(declare-fun b!6195778 () Bool)

(assert (=> b!6195778 (= e!3773172 0)))

(assert (= (and d!1942632 c!1118209) b!6195777))

(assert (= (and d!1942632 (not c!1118209)) b!6195778))

(declare-fun m!7029540 () Bool)

(assert (=> b!6195777 m!7029540))

(declare-fun m!7029542 () Bool)

(assert (=> b!6195777 m!7029542))

(assert (=> b!6195212 d!1942632))

(declare-fun b!6195779 () Bool)

(declare-fun e!3773173 () (Set Context!11032))

(declare-fun e!3773174 () (Set Context!11032))

(assert (=> b!6195779 (= e!3773173 e!3773174)))

(declare-fun c!1118212 () Bool)

(assert (=> b!6195779 (= c!1118212 (is-Concat!24977 (regTwo!32777 (regOne!32776 r!7292))))))

(declare-fun bm!518405 () Bool)

(declare-fun call!518414 () (Set Context!11032))

(declare-fun call!518415 () (Set Context!11032))

(assert (=> bm!518405 (= call!518414 call!518415)))

(declare-fun b!6195780 () Bool)

(declare-fun e!3773177 () (Set Context!11032))

(declare-fun call!518413 () (Set Context!11032))

(assert (=> b!6195780 (= e!3773177 call!518413)))

(declare-fun c!1118211 () Bool)

(declare-fun bm!518406 () Bool)

(declare-fun call!518410 () List!64695)

(declare-fun call!518412 () (Set Context!11032))

(assert (=> bm!518406 (= call!518412 (derivationStepZipperDown!1380 (ite c!1118211 (regOne!32777 (regTwo!32777 (regOne!32776 r!7292))) (regOne!32776 (regTwo!32777 (regOne!32776 r!7292)))) (ite c!1118211 lt!2341521 (Context!11033 call!518410)) (h!71020 s!2326)))))

(declare-fun b!6195781 () Bool)

(declare-fun e!3773176 () (Set Context!11032))

(declare-fun e!3773178 () (Set Context!11032))

(assert (=> b!6195781 (= e!3773176 e!3773178)))

(assert (=> b!6195781 (= c!1118211 (is-Union!16132 (regTwo!32777 (regOne!32776 r!7292))))))

(declare-fun b!6195782 () Bool)

(declare-fun c!1118214 () Bool)

(declare-fun e!3773175 () Bool)

(assert (=> b!6195782 (= c!1118214 e!3773175)))

(declare-fun res!2562904 () Bool)

(assert (=> b!6195782 (=> (not res!2562904) (not e!3773175))))

(assert (=> b!6195782 (= res!2562904 (is-Concat!24977 (regTwo!32777 (regOne!32776 r!7292))))))

(assert (=> b!6195782 (= e!3773178 e!3773173)))

(declare-fun b!6195783 () Bool)

(assert (=> b!6195783 (= e!3773173 (set.union call!518412 call!518414))))

(declare-fun call!518411 () List!64695)

(declare-fun bm!518407 () Bool)

(assert (=> bm!518407 (= call!518415 (derivationStepZipperDown!1380 (ite c!1118211 (regTwo!32777 (regTwo!32777 (regOne!32776 r!7292))) (ite c!1118214 (regTwo!32776 (regTwo!32777 (regOne!32776 r!7292))) (ite c!1118212 (regOne!32776 (regTwo!32777 (regOne!32776 r!7292))) (reg!16461 (regTwo!32777 (regOne!32776 r!7292)))))) (ite (or c!1118211 c!1118214) lt!2341521 (Context!11033 call!518411)) (h!71020 s!2326)))))

(declare-fun b!6195784 () Bool)

(declare-fun c!1118210 () Bool)

(assert (=> b!6195784 (= c!1118210 (is-Star!16132 (regTwo!32777 (regOne!32776 r!7292))))))

(assert (=> b!6195784 (= e!3773174 e!3773177)))

(declare-fun b!6195785 () Bool)

(assert (=> b!6195785 (= e!3773176 (set.insert lt!2341521 (as set.empty (Set Context!11032))))))

(declare-fun b!6195786 () Bool)

(assert (=> b!6195786 (= e!3773174 call!518413)))

(declare-fun b!6195787 () Bool)

(assert (=> b!6195787 (= e!3773178 (set.union call!518412 call!518415))))

(declare-fun bm!518408 () Bool)

(assert (=> bm!518408 (= call!518410 ($colon$colon!2003 (exprs!6016 lt!2341521) (ite (or c!1118214 c!1118212) (regTwo!32776 (regTwo!32777 (regOne!32776 r!7292))) (regTwo!32777 (regOne!32776 r!7292)))))))

(declare-fun b!6195788 () Bool)

(assert (=> b!6195788 (= e!3773175 (nullable!6125 (regOne!32776 (regTwo!32777 (regOne!32776 r!7292)))))))

(declare-fun d!1942634 () Bool)

(declare-fun c!1118213 () Bool)

(assert (=> d!1942634 (= c!1118213 (and (is-ElementMatch!16132 (regTwo!32777 (regOne!32776 r!7292))) (= (c!1118067 (regTwo!32777 (regOne!32776 r!7292))) (h!71020 s!2326))))))

(assert (=> d!1942634 (= (derivationStepZipperDown!1380 (regTwo!32777 (regOne!32776 r!7292)) lt!2341521 (h!71020 s!2326)) e!3773176)))

(declare-fun bm!518409 () Bool)

(assert (=> bm!518409 (= call!518411 call!518410)))

(declare-fun bm!518410 () Bool)

(assert (=> bm!518410 (= call!518413 call!518414)))

(declare-fun b!6195789 () Bool)

(assert (=> b!6195789 (= e!3773177 (as set.empty (Set Context!11032)))))

(assert (= (and d!1942634 c!1118213) b!6195785))

(assert (= (and d!1942634 (not c!1118213)) b!6195781))

(assert (= (and b!6195781 c!1118211) b!6195787))

(assert (= (and b!6195781 (not c!1118211)) b!6195782))

(assert (= (and b!6195782 res!2562904) b!6195788))

(assert (= (and b!6195782 c!1118214) b!6195783))

(assert (= (and b!6195782 (not c!1118214)) b!6195779))

(assert (= (and b!6195779 c!1118212) b!6195786))

(assert (= (and b!6195779 (not c!1118212)) b!6195784))

(assert (= (and b!6195784 c!1118210) b!6195780))

(assert (= (and b!6195784 (not c!1118210)) b!6195789))

(assert (= (or b!6195786 b!6195780) bm!518409))

(assert (= (or b!6195786 b!6195780) bm!518410))

(assert (= (or b!6195783 bm!518409) bm!518408))

(assert (= (or b!6195783 bm!518410) bm!518405))

(assert (= (or b!6195787 bm!518405) bm!518407))

(assert (= (or b!6195787 b!6195783) bm!518406))

(declare-fun m!7029544 () Bool)

(assert (=> b!6195788 m!7029544))

(declare-fun m!7029546 () Bool)

(assert (=> bm!518408 m!7029546))

(declare-fun m!7029548 () Bool)

(assert (=> bm!518407 m!7029548))

(declare-fun m!7029550 () Bool)

(assert (=> bm!518406 m!7029550))

(assert (=> b!6195785 m!7029430))

(assert (=> b!6195213 d!1942634))

(declare-fun b!6195790 () Bool)

(declare-fun e!3773179 () (Set Context!11032))

(declare-fun e!3773180 () (Set Context!11032))

(assert (=> b!6195790 (= e!3773179 e!3773180)))

(declare-fun c!1118217 () Bool)

(assert (=> b!6195790 (= c!1118217 (is-Concat!24977 (regOne!32777 (regOne!32776 r!7292))))))

(declare-fun bm!518413 () Bool)

(declare-fun call!518424 () (Set Context!11032))

(declare-fun call!518425 () (Set Context!11032))

(assert (=> bm!518413 (= call!518424 call!518425)))

(declare-fun b!6195791 () Bool)

(declare-fun e!3773183 () (Set Context!11032))

(declare-fun call!518423 () (Set Context!11032))

(assert (=> b!6195791 (= e!3773183 call!518423)))

(declare-fun c!1118216 () Bool)

(declare-fun call!518422 () (Set Context!11032))

(declare-fun bm!518414 () Bool)

(declare-fun call!518420 () List!64695)

(assert (=> bm!518414 (= call!518422 (derivationStepZipperDown!1380 (ite c!1118216 (regOne!32777 (regOne!32777 (regOne!32776 r!7292))) (regOne!32776 (regOne!32777 (regOne!32776 r!7292)))) (ite c!1118216 lt!2341521 (Context!11033 call!518420)) (h!71020 s!2326)))))

(declare-fun b!6195792 () Bool)

(declare-fun e!3773182 () (Set Context!11032))

(declare-fun e!3773184 () (Set Context!11032))

(assert (=> b!6195792 (= e!3773182 e!3773184)))

(assert (=> b!6195792 (= c!1118216 (is-Union!16132 (regOne!32777 (regOne!32776 r!7292))))))

(declare-fun b!6195793 () Bool)

(declare-fun c!1118219 () Bool)

(declare-fun e!3773181 () Bool)

(assert (=> b!6195793 (= c!1118219 e!3773181)))

(declare-fun res!2562905 () Bool)

(assert (=> b!6195793 (=> (not res!2562905) (not e!3773181))))

(assert (=> b!6195793 (= res!2562905 (is-Concat!24977 (regOne!32777 (regOne!32776 r!7292))))))

(assert (=> b!6195793 (= e!3773184 e!3773179)))

(declare-fun b!6195794 () Bool)

(assert (=> b!6195794 (= e!3773179 (set.union call!518422 call!518424))))

(declare-fun bm!518415 () Bool)

(declare-fun call!518421 () List!64695)

(assert (=> bm!518415 (= call!518425 (derivationStepZipperDown!1380 (ite c!1118216 (regTwo!32777 (regOne!32777 (regOne!32776 r!7292))) (ite c!1118219 (regTwo!32776 (regOne!32777 (regOne!32776 r!7292))) (ite c!1118217 (regOne!32776 (regOne!32777 (regOne!32776 r!7292))) (reg!16461 (regOne!32777 (regOne!32776 r!7292)))))) (ite (or c!1118216 c!1118219) lt!2341521 (Context!11033 call!518421)) (h!71020 s!2326)))))

(declare-fun b!6195795 () Bool)

(declare-fun c!1118215 () Bool)

(assert (=> b!6195795 (= c!1118215 (is-Star!16132 (regOne!32777 (regOne!32776 r!7292))))))

(assert (=> b!6195795 (= e!3773180 e!3773183)))

(declare-fun b!6195796 () Bool)

(assert (=> b!6195796 (= e!3773182 (set.insert lt!2341521 (as set.empty (Set Context!11032))))))

(declare-fun b!6195797 () Bool)

(assert (=> b!6195797 (= e!3773180 call!518423)))

(declare-fun b!6195798 () Bool)

(assert (=> b!6195798 (= e!3773184 (set.union call!518422 call!518425))))

(declare-fun bm!518416 () Bool)

(assert (=> bm!518416 (= call!518420 ($colon$colon!2003 (exprs!6016 lt!2341521) (ite (or c!1118219 c!1118217) (regTwo!32776 (regOne!32777 (regOne!32776 r!7292))) (regOne!32777 (regOne!32776 r!7292)))))))

(declare-fun b!6195799 () Bool)

(assert (=> b!6195799 (= e!3773181 (nullable!6125 (regOne!32776 (regOne!32777 (regOne!32776 r!7292)))))))

(declare-fun d!1942636 () Bool)

(declare-fun c!1118218 () Bool)

(assert (=> d!1942636 (= c!1118218 (and (is-ElementMatch!16132 (regOne!32777 (regOne!32776 r!7292))) (= (c!1118067 (regOne!32777 (regOne!32776 r!7292))) (h!71020 s!2326))))))

(assert (=> d!1942636 (= (derivationStepZipperDown!1380 (regOne!32777 (regOne!32776 r!7292)) lt!2341521 (h!71020 s!2326)) e!3773182)))

(declare-fun bm!518417 () Bool)

(assert (=> bm!518417 (= call!518421 call!518420)))

(declare-fun bm!518418 () Bool)

(assert (=> bm!518418 (= call!518423 call!518424)))

(declare-fun b!6195800 () Bool)

(assert (=> b!6195800 (= e!3773183 (as set.empty (Set Context!11032)))))

(assert (= (and d!1942636 c!1118218) b!6195796))

(assert (= (and d!1942636 (not c!1118218)) b!6195792))

(assert (= (and b!6195792 c!1118216) b!6195798))

(assert (= (and b!6195792 (not c!1118216)) b!6195793))

(assert (= (and b!6195793 res!2562905) b!6195799))

(assert (= (and b!6195793 c!1118219) b!6195794))

(assert (= (and b!6195793 (not c!1118219)) b!6195790))

(assert (= (and b!6195790 c!1118217) b!6195797))

(assert (= (and b!6195790 (not c!1118217)) b!6195795))

(assert (= (and b!6195795 c!1118215) b!6195791))

(assert (= (and b!6195795 (not c!1118215)) b!6195800))

(assert (= (or b!6195797 b!6195791) bm!518417))

(assert (= (or b!6195797 b!6195791) bm!518418))

(assert (= (or b!6195794 bm!518417) bm!518416))

(assert (= (or b!6195794 bm!518418) bm!518413))

(assert (= (or b!6195798 bm!518413) bm!518415))

(assert (= (or b!6195798 b!6195794) bm!518414))

(declare-fun m!7029552 () Bool)

(assert (=> b!6195799 m!7029552))

(declare-fun m!7029554 () Bool)

(assert (=> bm!518416 m!7029554))

(declare-fun m!7029556 () Bool)

(assert (=> bm!518415 m!7029556))

(declare-fun m!7029558 () Bool)

(assert (=> bm!518414 m!7029558))

(assert (=> b!6195796 m!7029430))

(assert (=> b!6195213 d!1942636))

(declare-fun bs!1537640 () Bool)

(declare-fun d!1942638 () Bool)

(assert (= bs!1537640 (and d!1942638 d!1942536)))

(declare-fun lambda!338423 () Int)

(assert (=> bs!1537640 (= lambda!338423 lambda!338412)))

(declare-fun bs!1537641 () Bool)

(assert (= bs!1537641 (and d!1942638 d!1942538)))

(assert (=> bs!1537641 (= lambda!338423 lambda!338413)))

(declare-fun bs!1537642 () Bool)

(assert (= bs!1537642 (and d!1942638 d!1942558)))

(assert (=> bs!1537642 (= lambda!338423 lambda!338416)))

(declare-fun bs!1537643 () Bool)

(assert (= bs!1537643 (and d!1942638 d!1942624)))

(assert (=> bs!1537643 (= lambda!338423 lambda!338422)))

(assert (=> d!1942638 (= (inv!83578 setElem!42031) (forall!15248 (exprs!6016 setElem!42031) lambda!338423))))

(declare-fun bs!1537644 () Bool)

(assert (= bs!1537644 d!1942638))

(declare-fun m!7029560 () Bool)

(assert (=> bs!1537644 m!7029560))

(assert (=> setNonEmpty!42031 d!1942638))

(assert (=> b!6195208 d!1942554))

(declare-fun bs!1537645 () Bool)

(declare-fun d!1942640 () Bool)

(assert (= bs!1537645 (and d!1942640 d!1942558)))

(declare-fun lambda!338424 () Int)

(assert (=> bs!1537645 (= lambda!338424 lambda!338416)))

(declare-fun bs!1537646 () Bool)

(assert (= bs!1537646 (and d!1942640 d!1942624)))

(assert (=> bs!1537646 (= lambda!338424 lambda!338422)))

(declare-fun bs!1537647 () Bool)

(assert (= bs!1537647 (and d!1942640 d!1942638)))

(assert (=> bs!1537647 (= lambda!338424 lambda!338423)))

(declare-fun bs!1537648 () Bool)

(assert (= bs!1537648 (and d!1942640 d!1942536)))

(assert (=> bs!1537648 (= lambda!338424 lambda!338412)))

(declare-fun bs!1537649 () Bool)

(assert (= bs!1537649 (and d!1942640 d!1942538)))

(assert (=> bs!1537649 (= lambda!338424 lambda!338413)))

(declare-fun e!3773188 () Bool)

(assert (=> d!1942640 e!3773188))

(declare-fun res!2562906 () Bool)

(assert (=> d!1942640 (=> (not res!2562906) (not e!3773188))))

(declare-fun lt!2341731 () Regex!16132)

(assert (=> d!1942640 (= res!2562906 (validRegex!7868 lt!2341731))))

(declare-fun e!3773189 () Regex!16132)

(assert (=> d!1942640 (= lt!2341731 e!3773189)))

(declare-fun c!1118220 () Bool)

(declare-fun e!3773185 () Bool)

(assert (=> d!1942640 (= c!1118220 e!3773185)))

(declare-fun res!2562907 () Bool)

(assert (=> d!1942640 (=> (not res!2562907) (not e!3773185))))

(assert (=> d!1942640 (= res!2562907 (is-Cons!64571 (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(assert (=> d!1942640 (forall!15248 (t!378209 (exprs!6016 (h!71021 zl!343))) lambda!338424)))

(assert (=> d!1942640 (= (generalisedConcat!1729 (t!378209 (exprs!6016 (h!71021 zl!343)))) lt!2341731)))

(declare-fun b!6195801 () Bool)

(declare-fun e!3773190 () Bool)

(assert (=> b!6195801 (= e!3773188 e!3773190)))

(declare-fun c!1118222 () Bool)

(assert (=> b!6195801 (= c!1118222 (isEmpty!36561 (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195802 () Bool)

(assert (=> b!6195802 (= e!3773185 (isEmpty!36561 (t!378209 (t!378209 (exprs!6016 (h!71021 zl!343))))))))

(declare-fun b!6195803 () Bool)

(declare-fun e!3773186 () Bool)

(assert (=> b!6195803 (= e!3773190 e!3773186)))

(declare-fun c!1118221 () Bool)

(assert (=> b!6195803 (= c!1118221 (isEmpty!36561 (tail!11862 (t!378209 (exprs!6016 (h!71021 zl!343))))))))

(declare-fun b!6195804 () Bool)

(declare-fun e!3773187 () Regex!16132)

(assert (=> b!6195804 (= e!3773187 (Concat!24977 (h!71019 (t!378209 (exprs!6016 (h!71021 zl!343)))) (generalisedConcat!1729 (t!378209 (t!378209 (exprs!6016 (h!71021 zl!343)))))))))

(declare-fun b!6195805 () Bool)

(assert (=> b!6195805 (= e!3773189 (h!71019 (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195806 () Bool)

(assert (=> b!6195806 (= e!3773186 (isConcat!1067 lt!2341731))))

(declare-fun b!6195807 () Bool)

(assert (=> b!6195807 (= e!3773190 (isEmptyExpr!1544 lt!2341731))))

(declare-fun b!6195808 () Bool)

(assert (=> b!6195808 (= e!3773189 e!3773187)))

(declare-fun c!1118223 () Bool)

(assert (=> b!6195808 (= c!1118223 (is-Cons!64571 (t!378209 (exprs!6016 (h!71021 zl!343)))))))

(declare-fun b!6195809 () Bool)

(assert (=> b!6195809 (= e!3773186 (= lt!2341731 (head!12777 (t!378209 (exprs!6016 (h!71021 zl!343))))))))

(declare-fun b!6195810 () Bool)

(assert (=> b!6195810 (= e!3773187 EmptyExpr!16132)))

(assert (= (and d!1942640 res!2562907) b!6195802))

(assert (= (and d!1942640 c!1118220) b!6195805))

(assert (= (and d!1942640 (not c!1118220)) b!6195808))

(assert (= (and b!6195808 c!1118223) b!6195804))

(assert (= (and b!6195808 (not c!1118223)) b!6195810))

(assert (= (and d!1942640 res!2562906) b!6195801))

(assert (= (and b!6195801 c!1118222) b!6195807))

(assert (= (and b!6195801 (not c!1118222)) b!6195803))

(assert (= (and b!6195803 c!1118221) b!6195809))

(assert (= (and b!6195803 (not c!1118221)) b!6195806))

(declare-fun m!7029562 () Bool)

(assert (=> d!1942640 m!7029562))

(declare-fun m!7029564 () Bool)

(assert (=> d!1942640 m!7029564))

(declare-fun m!7029566 () Bool)

(assert (=> b!6195804 m!7029566))

(declare-fun m!7029568 () Bool)

(assert (=> b!6195802 m!7029568))

(declare-fun m!7029570 () Bool)

(assert (=> b!6195807 m!7029570))

(assert (=> b!6195801 m!7029108))

(declare-fun m!7029572 () Bool)

(assert (=> b!6195803 m!7029572))

(assert (=> b!6195803 m!7029572))

(declare-fun m!7029574 () Bool)

(assert (=> b!6195803 m!7029574))

(declare-fun m!7029576 () Bool)

(assert (=> b!6195806 m!7029576))

(declare-fun m!7029578 () Bool)

(assert (=> b!6195809 m!7029578))

(assert (=> b!6195209 d!1942640))

(declare-fun b!6195811 () Bool)

(declare-fun e!3773194 () Bool)

(declare-fun call!518428 () Bool)

(assert (=> b!6195811 (= e!3773194 call!518428)))

(declare-fun d!1942642 () Bool)

(declare-fun res!2562909 () Bool)

(declare-fun e!3773196 () Bool)

(assert (=> d!1942642 (=> res!2562909 e!3773196)))

(assert (=> d!1942642 (= res!2562909 (is-ElementMatch!16132 (regOne!32777 (regOne!32776 r!7292))))))

(assert (=> d!1942642 (= (validRegex!7868 (regOne!32777 (regOne!32776 r!7292))) e!3773196)))

(declare-fun bm!518421 () Bool)

(declare-fun call!518427 () Bool)

(assert (=> bm!518421 (= call!518427 call!518428)))

(declare-fun b!6195812 () Bool)

(declare-fun e!3773193 () Bool)

(assert (=> b!6195812 (= e!3773193 call!518427)))

(declare-fun bm!518422 () Bool)

(declare-fun call!518426 () Bool)

(declare-fun c!1118224 () Bool)

(assert (=> bm!518422 (= call!518426 (validRegex!7868 (ite c!1118224 (regOne!32777 (regOne!32777 (regOne!32776 r!7292))) (regOne!32776 (regOne!32777 (regOne!32776 r!7292))))))))

(declare-fun b!6195813 () Bool)

(declare-fun res!2562912 () Bool)

(assert (=> b!6195813 (=> (not res!2562912) (not e!3773193))))

(assert (=> b!6195813 (= res!2562912 call!518426)))

(declare-fun e!3773197 () Bool)

(assert (=> b!6195813 (= e!3773197 e!3773193)))

(declare-fun b!6195814 () Bool)

(declare-fun e!3773195 () Bool)

(assert (=> b!6195814 (= e!3773195 e!3773197)))

(assert (=> b!6195814 (= c!1118224 (is-Union!16132 (regOne!32777 (regOne!32776 r!7292))))))

(declare-fun b!6195815 () Bool)

(declare-fun e!3773192 () Bool)

(assert (=> b!6195815 (= e!3773192 call!518427)))

(declare-fun b!6195816 () Bool)

(assert (=> b!6195816 (= e!3773195 e!3773194)))

(declare-fun res!2562908 () Bool)

(assert (=> b!6195816 (= res!2562908 (not (nullable!6125 (reg!16461 (regOne!32777 (regOne!32776 r!7292))))))))

(assert (=> b!6195816 (=> (not res!2562908) (not e!3773194))))

(declare-fun b!6195817 () Bool)

(declare-fun res!2562910 () Bool)

(declare-fun e!3773191 () Bool)

(assert (=> b!6195817 (=> res!2562910 e!3773191)))

(assert (=> b!6195817 (= res!2562910 (not (is-Concat!24977 (regOne!32777 (regOne!32776 r!7292)))))))

(assert (=> b!6195817 (= e!3773197 e!3773191)))

(declare-fun b!6195818 () Bool)

(assert (=> b!6195818 (= e!3773191 e!3773192)))

(declare-fun res!2562911 () Bool)

(assert (=> b!6195818 (=> (not res!2562911) (not e!3773192))))

(assert (=> b!6195818 (= res!2562911 call!518426)))

(declare-fun bm!518423 () Bool)

(declare-fun c!1118225 () Bool)

(assert (=> bm!518423 (= call!518428 (validRegex!7868 (ite c!1118225 (reg!16461 (regOne!32777 (regOne!32776 r!7292))) (ite c!1118224 (regTwo!32777 (regOne!32777 (regOne!32776 r!7292))) (regTwo!32776 (regOne!32777 (regOne!32776 r!7292)))))))))

(declare-fun b!6195819 () Bool)

(assert (=> b!6195819 (= e!3773196 e!3773195)))

(assert (=> b!6195819 (= c!1118225 (is-Star!16132 (regOne!32777 (regOne!32776 r!7292))))))

(assert (= (and d!1942642 (not res!2562909)) b!6195819))

(assert (= (and b!6195819 c!1118225) b!6195816))

(assert (= (and b!6195819 (not c!1118225)) b!6195814))

(assert (= (and b!6195816 res!2562908) b!6195811))

(assert (= (and b!6195814 c!1118224) b!6195813))

(assert (= (and b!6195814 (not c!1118224)) b!6195817))

(assert (= (and b!6195813 res!2562912) b!6195812))

(assert (= (and b!6195817 (not res!2562910)) b!6195818))

(assert (= (and b!6195818 res!2562911) b!6195815))

(assert (= (or b!6195812 b!6195815) bm!518421))

(assert (= (or b!6195813 b!6195818) bm!518422))

(assert (= (or b!6195811 bm!518421) bm!518423))

(declare-fun m!7029580 () Bool)

(assert (=> bm!518422 m!7029580))

(declare-fun m!7029582 () Bool)

(assert (=> b!6195816 m!7029582))

(declare-fun m!7029584 () Bool)

(assert (=> bm!518423 m!7029584))

(assert (=> b!6195231 d!1942642))

(assert (=> b!6195210 d!1942564))

(declare-fun b!6195820 () Bool)

(declare-fun e!3773201 () Bool)

(declare-fun call!518431 () Bool)

(assert (=> b!6195820 (= e!3773201 call!518431)))

(declare-fun d!1942644 () Bool)

(declare-fun res!2562914 () Bool)

(declare-fun e!3773203 () Bool)

(assert (=> d!1942644 (=> res!2562914 e!3773203)))

(assert (=> d!1942644 (= res!2562914 (is-ElementMatch!16132 (regTwo!32776 r!7292)))))

(assert (=> d!1942644 (= (validRegex!7868 (regTwo!32776 r!7292)) e!3773203)))

(declare-fun bm!518424 () Bool)

(declare-fun call!518430 () Bool)

(assert (=> bm!518424 (= call!518430 call!518431)))

(declare-fun b!6195821 () Bool)

(declare-fun e!3773200 () Bool)

(assert (=> b!6195821 (= e!3773200 call!518430)))

(declare-fun bm!518425 () Bool)

(declare-fun call!518429 () Bool)

(declare-fun c!1118226 () Bool)

(assert (=> bm!518425 (= call!518429 (validRegex!7868 (ite c!1118226 (regOne!32777 (regTwo!32776 r!7292)) (regOne!32776 (regTwo!32776 r!7292)))))))

(declare-fun b!6195822 () Bool)

(declare-fun res!2562917 () Bool)

(assert (=> b!6195822 (=> (not res!2562917) (not e!3773200))))

(assert (=> b!6195822 (= res!2562917 call!518429)))

(declare-fun e!3773204 () Bool)

(assert (=> b!6195822 (= e!3773204 e!3773200)))

(declare-fun b!6195823 () Bool)

(declare-fun e!3773202 () Bool)

(assert (=> b!6195823 (= e!3773202 e!3773204)))

(assert (=> b!6195823 (= c!1118226 (is-Union!16132 (regTwo!32776 r!7292)))))

(declare-fun b!6195824 () Bool)

(declare-fun e!3773199 () Bool)

(assert (=> b!6195824 (= e!3773199 call!518430)))

(declare-fun b!6195825 () Bool)

(assert (=> b!6195825 (= e!3773202 e!3773201)))

(declare-fun res!2562913 () Bool)

(assert (=> b!6195825 (= res!2562913 (not (nullable!6125 (reg!16461 (regTwo!32776 r!7292)))))))

(assert (=> b!6195825 (=> (not res!2562913) (not e!3773201))))

(declare-fun b!6195826 () Bool)

(declare-fun res!2562915 () Bool)

(declare-fun e!3773198 () Bool)

(assert (=> b!6195826 (=> res!2562915 e!3773198)))

(assert (=> b!6195826 (= res!2562915 (not (is-Concat!24977 (regTwo!32776 r!7292))))))

(assert (=> b!6195826 (= e!3773204 e!3773198)))

(declare-fun b!6195827 () Bool)

(assert (=> b!6195827 (= e!3773198 e!3773199)))

(declare-fun res!2562916 () Bool)

(assert (=> b!6195827 (=> (not res!2562916) (not e!3773199))))

(assert (=> b!6195827 (= res!2562916 call!518429)))

(declare-fun c!1118227 () Bool)

(declare-fun bm!518426 () Bool)

(assert (=> bm!518426 (= call!518431 (validRegex!7868 (ite c!1118227 (reg!16461 (regTwo!32776 r!7292)) (ite c!1118226 (regTwo!32777 (regTwo!32776 r!7292)) (regTwo!32776 (regTwo!32776 r!7292))))))))

(declare-fun b!6195828 () Bool)

(assert (=> b!6195828 (= e!3773203 e!3773202)))

(assert (=> b!6195828 (= c!1118227 (is-Star!16132 (regTwo!32776 r!7292)))))

(assert (= (and d!1942644 (not res!2562914)) b!6195828))

(assert (= (and b!6195828 c!1118227) b!6195825))

(assert (= (and b!6195828 (not c!1118227)) b!6195823))

(assert (= (and b!6195825 res!2562913) b!6195820))

(assert (= (and b!6195823 c!1118226) b!6195822))

(assert (= (and b!6195823 (not c!1118226)) b!6195826))

(assert (= (and b!6195822 res!2562917) b!6195821))

(assert (= (and b!6195826 (not res!2562915)) b!6195827))

(assert (= (and b!6195827 res!2562916) b!6195824))

(assert (= (or b!6195821 b!6195824) bm!518424))

(assert (= (or b!6195822 b!6195827) bm!518425))

(assert (= (or b!6195820 bm!518424) bm!518426))

(declare-fun m!7029586 () Bool)

(assert (=> bm!518425 m!7029586))

(declare-fun m!7029588 () Bool)

(assert (=> b!6195825 m!7029588))

(declare-fun m!7029590 () Bool)

(assert (=> bm!518426 m!7029590))

(assert (=> b!6195227 d!1942644))

(assert (=> b!6195207 d!1942564))

(declare-fun bs!1537650 () Bool)

(declare-fun d!1942646 () Bool)

(assert (= bs!1537650 (and d!1942646 d!1942640)))

(declare-fun lambda!338427 () Int)

(assert (=> bs!1537650 (= lambda!338427 lambda!338424)))

(declare-fun bs!1537651 () Bool)

(assert (= bs!1537651 (and d!1942646 d!1942558)))

(assert (=> bs!1537651 (= lambda!338427 lambda!338416)))

(declare-fun bs!1537652 () Bool)

(assert (= bs!1537652 (and d!1942646 d!1942624)))

(assert (=> bs!1537652 (= lambda!338427 lambda!338422)))

(declare-fun bs!1537653 () Bool)

(assert (= bs!1537653 (and d!1942646 d!1942638)))

(assert (=> bs!1537653 (= lambda!338427 lambda!338423)))

(declare-fun bs!1537654 () Bool)

(assert (= bs!1537654 (and d!1942646 d!1942536)))

(assert (=> bs!1537654 (= lambda!338427 lambda!338412)))

(declare-fun bs!1537655 () Bool)

(assert (= bs!1537655 (and d!1942646 d!1942538)))

(assert (=> bs!1537655 (= lambda!338427 lambda!338413)))

(declare-fun b!6195860 () Bool)

(declare-fun e!3773225 () Bool)

(declare-fun e!3773227 () Bool)

(assert (=> b!6195860 (= e!3773225 e!3773227)))

(declare-fun c!1118241 () Bool)

(assert (=> b!6195860 (= c!1118241 (isEmpty!36561 (tail!11862 (unfocusZipperList!1553 zl!343))))))

(declare-fun e!3773223 () Bool)

(assert (=> d!1942646 e!3773223))

(declare-fun res!2562924 () Bool)

(assert (=> d!1942646 (=> (not res!2562924) (not e!3773223))))

(declare-fun lt!2341734 () Regex!16132)

(assert (=> d!1942646 (= res!2562924 (validRegex!7868 lt!2341734))))

(declare-fun e!3773226 () Regex!16132)

(assert (=> d!1942646 (= lt!2341734 e!3773226)))

(declare-fun c!1118243 () Bool)

(declare-fun e!3773228 () Bool)

(assert (=> d!1942646 (= c!1118243 e!3773228)))

(declare-fun res!2562923 () Bool)

(assert (=> d!1942646 (=> (not res!2562923) (not e!3773228))))

(assert (=> d!1942646 (= res!2562923 (is-Cons!64571 (unfocusZipperList!1553 zl!343)))))

(assert (=> d!1942646 (forall!15248 (unfocusZipperList!1553 zl!343) lambda!338427)))

(assert (=> d!1942646 (= (generalisedUnion!1976 (unfocusZipperList!1553 zl!343)) lt!2341734)))

(declare-fun b!6195861 () Bool)

(assert (=> b!6195861 (= e!3773223 e!3773225)))

(declare-fun c!1118244 () Bool)

(assert (=> b!6195861 (= c!1118244 (isEmpty!36561 (unfocusZipperList!1553 zl!343)))))

(declare-fun b!6195862 () Bool)

(declare-fun e!3773224 () Regex!16132)

(assert (=> b!6195862 (= e!3773224 (Union!16132 (h!71019 (unfocusZipperList!1553 zl!343)) (generalisedUnion!1976 (t!378209 (unfocusZipperList!1553 zl!343)))))))

(declare-fun b!6195863 () Bool)

(assert (=> b!6195863 (= e!3773228 (isEmpty!36561 (t!378209 (unfocusZipperList!1553 zl!343))))))

(declare-fun b!6195864 () Bool)

(declare-fun isUnion!983 (Regex!16132) Bool)

(assert (=> b!6195864 (= e!3773227 (isUnion!983 lt!2341734))))

(declare-fun b!6195865 () Bool)

(declare-fun isEmptyLang!1553 (Regex!16132) Bool)

(assert (=> b!6195865 (= e!3773225 (isEmptyLang!1553 lt!2341734))))

(declare-fun b!6195866 () Bool)

(assert (=> b!6195866 (= e!3773226 e!3773224)))

(declare-fun c!1118242 () Bool)

(assert (=> b!6195866 (= c!1118242 (is-Cons!64571 (unfocusZipperList!1553 zl!343)))))

(declare-fun b!6195867 () Bool)

(assert (=> b!6195867 (= e!3773226 (h!71019 (unfocusZipperList!1553 zl!343)))))

(declare-fun b!6195868 () Bool)

(assert (=> b!6195868 (= e!3773227 (= lt!2341734 (head!12777 (unfocusZipperList!1553 zl!343))))))

(declare-fun b!6195869 () Bool)

(assert (=> b!6195869 (= e!3773224 EmptyLang!16132)))

(assert (= (and d!1942646 res!2562923) b!6195863))

(assert (= (and d!1942646 c!1118243) b!6195867))

(assert (= (and d!1942646 (not c!1118243)) b!6195866))

(assert (= (and b!6195866 c!1118242) b!6195862))

(assert (= (and b!6195866 (not c!1118242)) b!6195869))

(assert (= (and d!1942646 res!2562924) b!6195861))

(assert (= (and b!6195861 c!1118244) b!6195865))

(assert (= (and b!6195861 (not c!1118244)) b!6195860))

(assert (= (and b!6195860 c!1118241) b!6195868))

(assert (= (and b!6195860 (not c!1118241)) b!6195864))

(assert (=> b!6195868 m!7028980))

(declare-fun m!7029602 () Bool)

(assert (=> b!6195868 m!7029602))

(declare-fun m!7029604 () Bool)

(assert (=> b!6195865 m!7029604))

(assert (=> b!6195860 m!7028980))

(declare-fun m!7029606 () Bool)

(assert (=> b!6195860 m!7029606))

(assert (=> b!6195860 m!7029606))

(declare-fun m!7029608 () Bool)

(assert (=> b!6195860 m!7029608))

(declare-fun m!7029610 () Bool)

(assert (=> b!6195863 m!7029610))

(assert (=> b!6195861 m!7028980))

(declare-fun m!7029612 () Bool)

(assert (=> b!6195861 m!7029612))

(declare-fun m!7029614 () Bool)

(assert (=> b!6195864 m!7029614))

(declare-fun m!7029616 () Bool)

(assert (=> b!6195862 m!7029616))

(declare-fun m!7029618 () Bool)

(assert (=> d!1942646 m!7029618))

(assert (=> d!1942646 m!7028980))

(declare-fun m!7029620 () Bool)

(assert (=> d!1942646 m!7029620))

(assert (=> b!6195228 d!1942646))

(declare-fun bs!1537656 () Bool)

(declare-fun d!1942650 () Bool)

(assert (= bs!1537656 (and d!1942650 d!1942640)))

(declare-fun lambda!338430 () Int)

(assert (=> bs!1537656 (= lambda!338430 lambda!338424)))

(declare-fun bs!1537657 () Bool)

(assert (= bs!1537657 (and d!1942650 d!1942558)))

(assert (=> bs!1537657 (= lambda!338430 lambda!338416)))

(declare-fun bs!1537658 () Bool)

(assert (= bs!1537658 (and d!1942650 d!1942624)))

(assert (=> bs!1537658 (= lambda!338430 lambda!338422)))

(declare-fun bs!1537659 () Bool)

(assert (= bs!1537659 (and d!1942650 d!1942638)))

(assert (=> bs!1537659 (= lambda!338430 lambda!338423)))

(declare-fun bs!1537660 () Bool)

(assert (= bs!1537660 (and d!1942650 d!1942536)))

(assert (=> bs!1537660 (= lambda!338430 lambda!338412)))

(declare-fun bs!1537661 () Bool)

(assert (= bs!1537661 (and d!1942650 d!1942646)))

(assert (=> bs!1537661 (= lambda!338430 lambda!338427)))

(declare-fun bs!1537662 () Bool)

(assert (= bs!1537662 (and d!1942650 d!1942538)))

(assert (=> bs!1537662 (= lambda!338430 lambda!338413)))

(declare-fun lt!2341737 () List!64695)

(assert (=> d!1942650 (forall!15248 lt!2341737 lambda!338430)))

(declare-fun e!3773244 () List!64695)

(assert (=> d!1942650 (= lt!2341737 e!3773244)))

(declare-fun c!1118254 () Bool)

(assert (=> d!1942650 (= c!1118254 (is-Cons!64573 zl!343))))

(assert (=> d!1942650 (= (unfocusZipperList!1553 zl!343) lt!2341737)))

(declare-fun b!6195894 () Bool)

(assert (=> b!6195894 (= e!3773244 (Cons!64571 (generalisedConcat!1729 (exprs!6016 (h!71021 zl!343))) (unfocusZipperList!1553 (t!378211 zl!343))))))

(declare-fun b!6195895 () Bool)

(assert (=> b!6195895 (= e!3773244 Nil!64571)))

(assert (= (and d!1942650 c!1118254) b!6195894))

(assert (= (and d!1942650 (not c!1118254)) b!6195895))

(declare-fun m!7029636 () Bool)

(assert (=> d!1942650 m!7029636))

(assert (=> b!6195894 m!7029098))

(declare-fun m!7029638 () Bool)

(assert (=> b!6195894 m!7029638))

(assert (=> b!6195228 d!1942650))

(declare-fun e!3773245 () Bool)

(declare-fun d!1942656 () Bool)

(assert (=> d!1942656 (= (matchZipper!2144 (set.union lt!2341538 lt!2341519) (t!378210 s!2326)) e!3773245)))

(declare-fun res!2562931 () Bool)

(assert (=> d!1942656 (=> res!2562931 e!3773245)))

(assert (=> d!1942656 (= res!2562931 (matchZipper!2144 lt!2341538 (t!378210 s!2326)))))

(declare-fun lt!2341738 () Unit!157835)

(assert (=> d!1942656 (= lt!2341738 (choose!46022 lt!2341538 lt!2341519 (t!378210 s!2326)))))

(assert (=> d!1942656 (= (lemmaZipperConcatMatchesSameAsBothZippers!963 lt!2341538 lt!2341519 (t!378210 s!2326)) lt!2341738)))

(declare-fun b!6195896 () Bool)

(assert (=> b!6195896 (= e!3773245 (matchZipper!2144 lt!2341519 (t!378210 s!2326)))))

(assert (= (and d!1942656 (not res!2562931)) b!6195896))

(assert (=> d!1942656 m!7028974))

(assert (=> d!1942656 m!7029104))

(declare-fun m!7029640 () Bool)

(assert (=> d!1942656 m!7029640))

(assert (=> b!6195896 m!7028978))

(assert (=> b!6195225 d!1942656))

(declare-fun d!1942658 () Bool)

(declare-fun c!1118255 () Bool)

(assert (=> d!1942658 (= c!1118255 (isEmpty!36564 (t!378210 s!2326)))))

(declare-fun e!3773246 () Bool)

(assert (=> d!1942658 (= (matchZipper!2144 (set.union lt!2341538 lt!2341519) (t!378210 s!2326)) e!3773246)))

(declare-fun b!6195897 () Bool)

(assert (=> b!6195897 (= e!3773246 (nullableZipper!1908 (set.union lt!2341538 lt!2341519)))))

(declare-fun b!6195898 () Bool)

(assert (=> b!6195898 (= e!3773246 (matchZipper!2144 (derivationStepZipper!2100 (set.union lt!2341538 lt!2341519) (head!12776 (t!378210 s!2326))) (tail!11861 (t!378210 s!2326))))))

(assert (= (and d!1942658 c!1118255) b!6195897))

(assert (= (and d!1942658 (not c!1118255)) b!6195898))

(assert (=> d!1942658 m!7029342))

(declare-fun m!7029642 () Bool)

(assert (=> b!6195897 m!7029642))

(assert (=> b!6195898 m!7029346))

(assert (=> b!6195898 m!7029346))

(declare-fun m!7029644 () Bool)

(assert (=> b!6195898 m!7029644))

(assert (=> b!6195898 m!7029350))

(assert (=> b!6195898 m!7029644))

(assert (=> b!6195898 m!7029350))

(declare-fun m!7029646 () Bool)

(assert (=> b!6195898 m!7029646))

(assert (=> b!6195225 d!1942658))

(declare-fun b!6195930 () Bool)

(declare-fun e!3773267 () Option!16023)

(assert (=> b!6195930 (= e!3773267 (Some!16022 (tuple2!66223 Nil!64572 s!2326)))))

(declare-fun b!6195931 () Bool)

(declare-fun e!3773268 () Bool)

(declare-fun lt!2341748 () Option!16023)

(declare-fun ++!14212 (List!64696 List!64696) List!64696)

(declare-fun get!22294 (Option!16023) tuple2!66222)

(assert (=> b!6195931 (= e!3773268 (= (++!14212 (_1!36414 (get!22294 lt!2341748)) (_2!36414 (get!22294 lt!2341748))) s!2326))))

(declare-fun b!6195932 () Bool)

(declare-fun res!2562947 () Bool)

(assert (=> b!6195932 (=> (not res!2562947) (not e!3773268))))

(assert (=> b!6195932 (= res!2562947 (matchR!8315 (regOne!32776 r!7292) (_1!36414 (get!22294 lt!2341748))))))

(declare-fun d!1942660 () Bool)

(declare-fun e!3773265 () Bool)

(assert (=> d!1942660 e!3773265))

(declare-fun res!2562948 () Bool)

(assert (=> d!1942660 (=> res!2562948 e!3773265)))

(assert (=> d!1942660 (= res!2562948 e!3773268)))

(declare-fun res!2562949 () Bool)

(assert (=> d!1942660 (=> (not res!2562949) (not e!3773268))))

(assert (=> d!1942660 (= res!2562949 (isDefined!12726 lt!2341748))))

(assert (=> d!1942660 (= lt!2341748 e!3773267)))

(declare-fun c!1118265 () Bool)

(declare-fun e!3773269 () Bool)

(assert (=> d!1942660 (= c!1118265 e!3773269)))

(declare-fun res!2562946 () Bool)

(assert (=> d!1942660 (=> (not res!2562946) (not e!3773269))))

(assert (=> d!1942660 (= res!2562946 (matchR!8315 (regOne!32776 r!7292) Nil!64572))))

(assert (=> d!1942660 (validRegex!7868 (regOne!32776 r!7292))))

(assert (=> d!1942660 (= (findConcatSeparation!2437 (regOne!32776 r!7292) (regTwo!32776 r!7292) Nil!64572 s!2326 s!2326) lt!2341748)))

(declare-fun b!6195933 () Bool)

(declare-fun e!3773266 () Option!16023)

(assert (=> b!6195933 (= e!3773266 None!16022)))

(declare-fun b!6195934 () Bool)

(assert (=> b!6195934 (= e!3773265 (not (isDefined!12726 lt!2341748)))))

(declare-fun b!6195935 () Bool)

(declare-fun lt!2341750 () Unit!157835)

(declare-fun lt!2341749 () Unit!157835)

(assert (=> b!6195935 (= lt!2341750 lt!2341749)))

(assert (=> b!6195935 (= (++!14212 (++!14212 Nil!64572 (Cons!64572 (h!71020 s!2326) Nil!64572)) (t!378210 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2307 (List!64696 C!32534 List!64696 List!64696) Unit!157835)

(assert (=> b!6195935 (= lt!2341749 (lemmaMoveElementToOtherListKeepsConcatEq!2307 Nil!64572 (h!71020 s!2326) (t!378210 s!2326) s!2326))))

(assert (=> b!6195935 (= e!3773266 (findConcatSeparation!2437 (regOne!32776 r!7292) (regTwo!32776 r!7292) (++!14212 Nil!64572 (Cons!64572 (h!71020 s!2326) Nil!64572)) (t!378210 s!2326) s!2326))))

(declare-fun b!6195936 () Bool)

(assert (=> b!6195936 (= e!3773267 e!3773266)))

(declare-fun c!1118266 () Bool)

(assert (=> b!6195936 (= c!1118266 (is-Nil!64572 s!2326))))

(declare-fun b!6195937 () Bool)

(declare-fun res!2562945 () Bool)

(assert (=> b!6195937 (=> (not res!2562945) (not e!3773268))))

(assert (=> b!6195937 (= res!2562945 (matchR!8315 (regTwo!32776 r!7292) (_2!36414 (get!22294 lt!2341748))))))

(declare-fun b!6195938 () Bool)

(assert (=> b!6195938 (= e!3773269 (matchR!8315 (regTwo!32776 r!7292) s!2326))))

(assert (= (and d!1942660 res!2562946) b!6195938))

(assert (= (and d!1942660 c!1118265) b!6195930))

(assert (= (and d!1942660 (not c!1118265)) b!6195936))

(assert (= (and b!6195936 c!1118266) b!6195933))

(assert (= (and b!6195936 (not c!1118266)) b!6195935))

(assert (= (and d!1942660 res!2562949) b!6195932))

(assert (= (and b!6195932 res!2562947) b!6195937))

(assert (= (and b!6195937 res!2562945) b!6195931))

(assert (= (and d!1942660 (not res!2562948)) b!6195934))

(declare-fun m!7029676 () Bool)

(assert (=> b!6195938 m!7029676))

(declare-fun m!7029678 () Bool)

(assert (=> b!6195931 m!7029678))

(declare-fun m!7029680 () Bool)

(assert (=> b!6195931 m!7029680))

(declare-fun m!7029682 () Bool)

(assert (=> b!6195934 m!7029682))

(assert (=> d!1942660 m!7029682))

(declare-fun m!7029684 () Bool)

(assert (=> d!1942660 m!7029684))

(declare-fun m!7029686 () Bool)

(assert (=> d!1942660 m!7029686))

(declare-fun m!7029688 () Bool)

(assert (=> b!6195935 m!7029688))

(assert (=> b!6195935 m!7029688))

(declare-fun m!7029690 () Bool)

(assert (=> b!6195935 m!7029690))

(declare-fun m!7029692 () Bool)

(assert (=> b!6195935 m!7029692))

(assert (=> b!6195935 m!7029688))

(declare-fun m!7029694 () Bool)

(assert (=> b!6195935 m!7029694))

(assert (=> b!6195932 m!7029678))

(declare-fun m!7029696 () Bool)

(assert (=> b!6195932 m!7029696))

(assert (=> b!6195937 m!7029678))

(declare-fun m!7029698 () Bool)

(assert (=> b!6195937 m!7029698))

(assert (=> b!6195245 d!1942660))

(declare-fun d!1942670 () Bool)

(declare-fun choose!46030 (Int) Bool)

(assert (=> d!1942670 (= (Exists!3202 lambda!338384) (choose!46030 lambda!338384))))

(declare-fun bs!1537663 () Bool)

(assert (= bs!1537663 d!1942670))

(declare-fun m!7029700 () Bool)

(assert (=> bs!1537663 m!7029700))

(assert (=> b!6195245 d!1942670))

(declare-fun d!1942672 () Bool)

(assert (=> d!1942672 (= (Exists!3202 lambda!338385) (choose!46030 lambda!338385))))

(declare-fun bs!1537664 () Bool)

(assert (= bs!1537664 d!1942672))

(declare-fun m!7029702 () Bool)

(assert (=> bs!1537664 m!7029702))

(assert (=> b!6195245 d!1942672))

(declare-fun bs!1537665 () Bool)

(declare-fun d!1942674 () Bool)

(assert (= bs!1537665 (and d!1942674 b!6195245)))

(declare-fun lambda!338433 () Int)

(assert (=> bs!1537665 (= lambda!338433 lambda!338384)))

(declare-fun bs!1537666 () Bool)

(assert (= bs!1537666 (and d!1942674 b!6195494)))

(assert (=> bs!1537666 (not (= lambda!338433 lambda!338408))))

(declare-fun bs!1537667 () Bool)

(assert (= bs!1537667 (and d!1942674 b!6195483)))

(assert (=> bs!1537667 (not (= lambda!338433 lambda!338406))))

(assert (=> bs!1537665 (not (= lambda!338433 lambda!338385))))

(declare-fun bs!1537668 () Bool)

(assert (= bs!1537668 (and d!1942674 b!6195701)))

(assert (=> bs!1537668 (not (= lambda!338433 lambda!338421))))

(declare-fun bs!1537669 () Bool)

(assert (= bs!1537669 (and d!1942674 b!6195473)))

(assert (=> bs!1537669 (not (= lambda!338433 lambda!338407))))

(declare-fun bs!1537670 () Bool)

(assert (= bs!1537670 (and d!1942674 b!6195484)))

(assert (=> bs!1537670 (not (= lambda!338433 lambda!338409))))

(declare-fun bs!1537671 () Bool)

(assert (= bs!1537671 (and d!1942674 b!6195711)))

(assert (=> bs!1537671 (not (= lambda!338433 lambda!338420))))

(assert (=> d!1942674 true))

(assert (=> d!1942674 true))

(assert (=> d!1942674 true))

(assert (=> d!1942674 (= (isDefined!12726 (findConcatSeparation!2437 (regOne!32776 r!7292) (regTwo!32776 r!7292) Nil!64572 s!2326 s!2326)) (Exists!3202 lambda!338433))))

(declare-fun lt!2341758 () Unit!157835)

(declare-fun choose!46031 (Regex!16132 Regex!16132 List!64696) Unit!157835)

(assert (=> d!1942674 (= lt!2341758 (choose!46031 (regOne!32776 r!7292) (regTwo!32776 r!7292) s!2326))))

(assert (=> d!1942674 (validRegex!7868 (regOne!32776 r!7292))))

(assert (=> d!1942674 (= (lemmaFindConcatSeparationEquivalentToExists!2201 (regOne!32776 r!7292) (regTwo!32776 r!7292) s!2326) lt!2341758)))

(declare-fun bs!1537672 () Bool)

(assert (= bs!1537672 d!1942674))

(assert (=> bs!1537672 m!7029054))

(declare-fun m!7029730 () Bool)

(assert (=> bs!1537672 m!7029730))

(declare-fun m!7029732 () Bool)

(assert (=> bs!1537672 m!7029732))

(assert (=> bs!1537672 m!7029054))

(assert (=> bs!1537672 m!7029056))

(assert (=> bs!1537672 m!7029686))

(assert (=> b!6195245 d!1942674))

(declare-fun bs!1537673 () Bool)

(declare-fun d!1942688 () Bool)

(assert (= bs!1537673 (and d!1942688 d!1942674)))

(declare-fun lambda!338438 () Int)

(assert (=> bs!1537673 (= lambda!338438 lambda!338433)))

(declare-fun bs!1537674 () Bool)

(assert (= bs!1537674 (and d!1942688 b!6195245)))

(assert (=> bs!1537674 (= lambda!338438 lambda!338384)))

(declare-fun bs!1537675 () Bool)

(assert (= bs!1537675 (and d!1942688 b!6195494)))

(assert (=> bs!1537675 (not (= lambda!338438 lambda!338408))))

(declare-fun bs!1537676 () Bool)

(assert (= bs!1537676 (and d!1942688 b!6195483)))

(assert (=> bs!1537676 (not (= lambda!338438 lambda!338406))))

(assert (=> bs!1537674 (not (= lambda!338438 lambda!338385))))

(declare-fun bs!1537677 () Bool)

(assert (= bs!1537677 (and d!1942688 b!6195701)))

(assert (=> bs!1537677 (not (= lambda!338438 lambda!338421))))

(declare-fun bs!1537678 () Bool)

(assert (= bs!1537678 (and d!1942688 b!6195473)))

(assert (=> bs!1537678 (not (= lambda!338438 lambda!338407))))

(declare-fun bs!1537679 () Bool)

(assert (= bs!1537679 (and d!1942688 b!6195484)))

(assert (=> bs!1537679 (not (= lambda!338438 lambda!338409))))

(declare-fun bs!1537680 () Bool)

(assert (= bs!1537680 (and d!1942688 b!6195711)))

(assert (=> bs!1537680 (not (= lambda!338438 lambda!338420))))

(assert (=> d!1942688 true))

(assert (=> d!1942688 true))

(assert (=> d!1942688 true))

(declare-fun lambda!338439 () Int)

(assert (=> bs!1537673 (not (= lambda!338439 lambda!338433))))

(assert (=> bs!1537674 (not (= lambda!338439 lambda!338384))))

(assert (=> bs!1537675 (not (= lambda!338439 lambda!338408))))

(assert (=> bs!1537676 (not (= lambda!338439 lambda!338406))))

(assert (=> bs!1537674 (= lambda!338439 lambda!338385)))

(assert (=> bs!1537677 (= lambda!338439 lambda!338421)))

(assert (=> bs!1537678 (= (and (= (regOne!32776 r!7292) (regOne!32776 lt!2341535)) (= (regTwo!32776 r!7292) (regTwo!32776 lt!2341535))) (= lambda!338439 lambda!338407))))

(declare-fun bs!1537681 () Bool)

(assert (= bs!1537681 d!1942688))

(assert (=> bs!1537681 (not (= lambda!338439 lambda!338438))))

(assert (=> bs!1537679 (= (and (= (regOne!32776 r!7292) (regOne!32776 lt!2341503)) (= (regTwo!32776 r!7292) (regTwo!32776 lt!2341503))) (= lambda!338439 lambda!338409))))

(assert (=> bs!1537680 (not (= lambda!338439 lambda!338420))))

(assert (=> d!1942688 true))

(assert (=> d!1942688 true))

(assert (=> d!1942688 true))

(assert (=> d!1942688 (= (Exists!3202 lambda!338438) (Exists!3202 lambda!338439))))

(declare-fun lt!2341763 () Unit!157835)

(declare-fun choose!46032 (Regex!16132 Regex!16132 List!64696) Unit!157835)

(assert (=> d!1942688 (= lt!2341763 (choose!46032 (regOne!32776 r!7292) (regTwo!32776 r!7292) s!2326))))

(assert (=> d!1942688 (validRegex!7868 (regOne!32776 r!7292))))

(assert (=> d!1942688 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1739 (regOne!32776 r!7292) (regTwo!32776 r!7292) s!2326) lt!2341763)))

(declare-fun m!7029734 () Bool)

(assert (=> bs!1537681 m!7029734))

(declare-fun m!7029736 () Bool)

(assert (=> bs!1537681 m!7029736))

(declare-fun m!7029738 () Bool)

(assert (=> bs!1537681 m!7029738))

(assert (=> bs!1537681 m!7029686))

(assert (=> b!6195245 d!1942688))

(declare-fun d!1942690 () Bool)

(declare-fun isEmpty!36566 (Option!16023) Bool)

(assert (=> d!1942690 (= (isDefined!12726 (findConcatSeparation!2437 (regOne!32776 r!7292) (regTwo!32776 r!7292) Nil!64572 s!2326 s!2326)) (not (isEmpty!36566 (findConcatSeparation!2437 (regOne!32776 r!7292) (regTwo!32776 r!7292) Nil!64572 s!2326 s!2326))))))

(declare-fun bs!1537682 () Bool)

(assert (= bs!1537682 d!1942690))

(assert (=> bs!1537682 m!7029054))

(declare-fun m!7029740 () Bool)

(assert (=> bs!1537682 m!7029740))

(assert (=> b!6195245 d!1942690))

(assert (=> b!6195226 d!1942554))

(declare-fun b!6195997 () Bool)

(declare-fun e!3773300 () Bool)

(declare-fun tp!1728401 () Bool)

(assert (=> b!6195997 (= e!3773300 (and tp_is_empty!41517 tp!1728401))))

(assert (=> b!6195229 (= tp!1728366 e!3773300)))

(assert (= (and b!6195229 (is-Cons!64572 (t!378210 s!2326))) b!6195997))

(declare-fun condSetEmpty!42037 () Bool)

(assert (=> setNonEmpty!42031 (= condSetEmpty!42037 (= setRest!42031 (as set.empty (Set Context!11032))))))

(declare-fun setRes!42037 () Bool)

(assert (=> setNonEmpty!42031 (= tp!1728364 setRes!42037)))

(declare-fun setIsEmpty!42037 () Bool)

(assert (=> setIsEmpty!42037 setRes!42037))

(declare-fun tp!1728406 () Bool)

(declare-fun e!3773303 () Bool)

(declare-fun setNonEmpty!42037 () Bool)

(declare-fun setElem!42037 () Context!11032)

(assert (=> setNonEmpty!42037 (= setRes!42037 (and tp!1728406 (inv!83578 setElem!42037) e!3773303))))

(declare-fun setRest!42037 () (Set Context!11032))

(assert (=> setNonEmpty!42037 (= setRest!42031 (set.union (set.insert setElem!42037 (as set.empty (Set Context!11032))) setRest!42037))))

(declare-fun b!6196002 () Bool)

(declare-fun tp!1728407 () Bool)

(assert (=> b!6196002 (= e!3773303 tp!1728407)))

(assert (= (and setNonEmpty!42031 condSetEmpty!42037) setIsEmpty!42037))

(assert (= (and setNonEmpty!42031 (not condSetEmpty!42037)) setNonEmpty!42037))

(assert (= setNonEmpty!42037 b!6196002))

(declare-fun m!7029742 () Bool)

(assert (=> setNonEmpty!42037 m!7029742))

(declare-fun b!6196029 () Bool)

(declare-fun e!3773313 () Bool)

(declare-fun tp!1728418 () Bool)

(assert (=> b!6196029 (= e!3773313 tp!1728418)))

(declare-fun b!6196030 () Bool)

(declare-fun tp!1728421 () Bool)

(declare-fun tp!1728420 () Bool)

(assert (=> b!6196030 (= e!3773313 (and tp!1728421 tp!1728420))))

(declare-fun b!6196027 () Bool)

(assert (=> b!6196027 (= e!3773313 tp_is_empty!41517)))

(assert (=> b!6195248 (= tp!1728363 e!3773313)))

(declare-fun b!6196028 () Bool)

(declare-fun tp!1728422 () Bool)

(declare-fun tp!1728419 () Bool)

(assert (=> b!6196028 (= e!3773313 (and tp!1728422 tp!1728419))))

(assert (= (and b!6195248 (is-ElementMatch!16132 (regOne!32777 r!7292))) b!6196027))

(assert (= (and b!6195248 (is-Concat!24977 (regOne!32777 r!7292))) b!6196028))

(assert (= (and b!6195248 (is-Star!16132 (regOne!32777 r!7292))) b!6196029))

(assert (= (and b!6195248 (is-Union!16132 (regOne!32777 r!7292))) b!6196030))

(declare-fun b!6196033 () Bool)

(declare-fun e!3773314 () Bool)

(declare-fun tp!1728423 () Bool)

(assert (=> b!6196033 (= e!3773314 tp!1728423)))

(declare-fun b!6196034 () Bool)

(declare-fun tp!1728426 () Bool)

(declare-fun tp!1728425 () Bool)

(assert (=> b!6196034 (= e!3773314 (and tp!1728426 tp!1728425))))

(declare-fun b!6196031 () Bool)

(assert (=> b!6196031 (= e!3773314 tp_is_empty!41517)))

(assert (=> b!6195248 (= tp!1728368 e!3773314)))

(declare-fun b!6196032 () Bool)

(declare-fun tp!1728427 () Bool)

(declare-fun tp!1728424 () Bool)

(assert (=> b!6196032 (= e!3773314 (and tp!1728427 tp!1728424))))

(assert (= (and b!6195248 (is-ElementMatch!16132 (regTwo!32777 r!7292))) b!6196031))

(assert (= (and b!6195248 (is-Concat!24977 (regTwo!32777 r!7292))) b!6196032))

(assert (= (and b!6195248 (is-Star!16132 (regTwo!32777 r!7292))) b!6196033))

(assert (= (and b!6195248 (is-Union!16132 (regTwo!32777 r!7292))) b!6196034))

(declare-fun b!6196037 () Bool)

(declare-fun e!3773315 () Bool)

(declare-fun tp!1728428 () Bool)

(assert (=> b!6196037 (= e!3773315 tp!1728428)))

(declare-fun b!6196038 () Bool)

(declare-fun tp!1728431 () Bool)

(declare-fun tp!1728430 () Bool)

(assert (=> b!6196038 (= e!3773315 (and tp!1728431 tp!1728430))))

(declare-fun b!6196035 () Bool)

(assert (=> b!6196035 (= e!3773315 tp_is_empty!41517)))

(assert (=> b!6195234 (= tp!1728367 e!3773315)))

(declare-fun b!6196036 () Bool)

(declare-fun tp!1728432 () Bool)

(declare-fun tp!1728429 () Bool)

(assert (=> b!6196036 (= e!3773315 (and tp!1728432 tp!1728429))))

(assert (= (and b!6195234 (is-ElementMatch!16132 (regOne!32776 r!7292))) b!6196035))

(assert (= (and b!6195234 (is-Concat!24977 (regOne!32776 r!7292))) b!6196036))

(assert (= (and b!6195234 (is-Star!16132 (regOne!32776 r!7292))) b!6196037))

(assert (= (and b!6195234 (is-Union!16132 (regOne!32776 r!7292))) b!6196038))

(declare-fun b!6196041 () Bool)

(declare-fun e!3773316 () Bool)

(declare-fun tp!1728433 () Bool)

(assert (=> b!6196041 (= e!3773316 tp!1728433)))

(declare-fun b!6196042 () Bool)

(declare-fun tp!1728436 () Bool)

(declare-fun tp!1728435 () Bool)

(assert (=> b!6196042 (= e!3773316 (and tp!1728436 tp!1728435))))

(declare-fun b!6196039 () Bool)

(assert (=> b!6196039 (= e!3773316 tp_is_empty!41517)))

(assert (=> b!6195234 (= tp!1728361 e!3773316)))

(declare-fun b!6196040 () Bool)

(declare-fun tp!1728437 () Bool)

(declare-fun tp!1728434 () Bool)

(assert (=> b!6196040 (= e!3773316 (and tp!1728437 tp!1728434))))

(assert (= (and b!6195234 (is-ElementMatch!16132 (regTwo!32776 r!7292))) b!6196039))

(assert (= (and b!6195234 (is-Concat!24977 (regTwo!32776 r!7292))) b!6196040))

(assert (= (and b!6195234 (is-Star!16132 (regTwo!32776 r!7292))) b!6196041))

(assert (= (and b!6195234 (is-Union!16132 (regTwo!32776 r!7292))) b!6196042))

(declare-fun b!6196050 () Bool)

(declare-fun e!3773322 () Bool)

(declare-fun tp!1728442 () Bool)

(assert (=> b!6196050 (= e!3773322 tp!1728442)))

(declare-fun e!3773321 () Bool)

(declare-fun b!6196049 () Bool)

(declare-fun tp!1728443 () Bool)

(assert (=> b!6196049 (= e!3773321 (and (inv!83578 (h!71021 (t!378211 zl!343))) e!3773322 tp!1728443))))

(assert (=> b!6195240 (= tp!1728365 e!3773321)))

(assert (= b!6196049 b!6196050))

(assert (= (and b!6195240 (is-Cons!64573 (t!378211 zl!343))) b!6196049))

(declare-fun m!7029760 () Bool)

(assert (=> b!6196049 m!7029760))

(declare-fun b!6196053 () Bool)

(declare-fun e!3773323 () Bool)

(declare-fun tp!1728444 () Bool)

(assert (=> b!6196053 (= e!3773323 tp!1728444)))

(declare-fun b!6196054 () Bool)

(declare-fun tp!1728447 () Bool)

(declare-fun tp!1728446 () Bool)

(assert (=> b!6196054 (= e!3773323 (and tp!1728447 tp!1728446))))

(declare-fun b!6196051 () Bool)

(assert (=> b!6196051 (= e!3773323 tp_is_empty!41517)))

(assert (=> b!6195246 (= tp!1728362 e!3773323)))

(declare-fun b!6196052 () Bool)

(declare-fun tp!1728448 () Bool)

(declare-fun tp!1728445 () Bool)

(assert (=> b!6196052 (= e!3773323 (and tp!1728448 tp!1728445))))

(assert (= (and b!6195246 (is-ElementMatch!16132 (reg!16461 r!7292))) b!6196051))

(assert (= (and b!6195246 (is-Concat!24977 (reg!16461 r!7292))) b!6196052))

(assert (= (and b!6195246 (is-Star!16132 (reg!16461 r!7292))) b!6196053))

(assert (= (and b!6195246 (is-Union!16132 (reg!16461 r!7292))) b!6196054))

(declare-fun b!6196059 () Bool)

(declare-fun e!3773326 () Bool)

(declare-fun tp!1728453 () Bool)

(declare-fun tp!1728454 () Bool)

(assert (=> b!6196059 (= e!3773326 (and tp!1728453 tp!1728454))))

(assert (=> b!6195221 (= tp!1728359 e!3773326)))

(assert (= (and b!6195221 (is-Cons!64571 (exprs!6016 setElem!42031))) b!6196059))

(declare-fun b!6196060 () Bool)

(declare-fun e!3773327 () Bool)

(declare-fun tp!1728455 () Bool)

(declare-fun tp!1728456 () Bool)

(assert (=> b!6196060 (= e!3773327 (and tp!1728455 tp!1728456))))

(assert (=> b!6195241 (= tp!1728360 e!3773327)))

(assert (= (and b!6195241 (is-Cons!64571 (exprs!6016 (h!71021 zl!343)))) b!6196060))

(declare-fun b_lambda!235723 () Bool)

(assert (= b_lambda!235717 (or b!6195218 b_lambda!235723)))

(declare-fun bs!1537683 () Bool)

(declare-fun d!1942694 () Bool)

(assert (= bs!1537683 (and d!1942694 b!6195218)))

(assert (=> bs!1537683 (= (dynLambda!25466 lambda!338386 (h!71021 zl!343)) (derivationStepZipperUp!1306 (h!71021 zl!343) (h!71020 s!2326)))))

(assert (=> bs!1537683 m!7029024))

(assert (=> d!1942586 d!1942694))

(declare-fun b_lambda!235725 () Bool)

(assert (= b_lambda!235719 (or b!6195218 b_lambda!235725)))

(declare-fun bs!1537684 () Bool)

(declare-fun d!1942696 () Bool)

(assert (= bs!1537684 (and d!1942696 b!6195218)))

(assert (=> bs!1537684 (= (dynLambda!25466 lambda!338386 lt!2341506) (derivationStepZipperUp!1306 lt!2341506 (h!71020 s!2326)))))

(assert (=> bs!1537684 m!7028992))

(assert (=> d!1942606 d!1942696))

(declare-fun b_lambda!235727 () Bool)

(assert (= b_lambda!235721 (or b!6195218 b_lambda!235727)))

(declare-fun bs!1537685 () Bool)

(declare-fun d!1942698 () Bool)

(assert (= bs!1537685 (and d!1942698 b!6195218)))

(assert (=> bs!1537685 (= (dynLambda!25466 lambda!338386 lt!2341533) (derivationStepZipperUp!1306 lt!2341533 (h!71020 s!2326)))))

(assert (=> bs!1537685 m!7028988))

(assert (=> d!1942610 d!1942698))

(push 1)

(assert (not bm!518345))

(assert (not b!6195685))

(assert (not b!6195533))

(assert (not b!6195734))

(assert (not b!6195551))

(assert (not b!6196028))

(assert (not bm!518408))

(assert (not d!1942658))

(assert (not b!6195776))

(assert (not b!6195634))

(assert (not b!6195934))

(assert (not b!6196029))

(assert (not b!6195557))

(assert (not b!6195721))

(assert (not d!1942540))

(assert (not bm!518415))

(assert (not b!6195550))

(assert (not d!1942598))

(assert (not b!6195629))

(assert (not b!6195720))

(assert (not d!1942660))

(assert (not bm!518346))

(assert (not b!6196059))

(assert (not b!6196040))

(assert (not b!6195746))

(assert (not b!6195593))

(assert (not b!6196041))

(assert (not b!6195612))

(assert (not d!1942670))

(assert (not b!6196032))

(assert (not b!6196052))

(assert (not bm!518385))

(assert (not b!6195599))

(assert (not b!6195534))

(assert (not b!6195764))

(assert (not b!6195436))

(assert (not b!6195938))

(assert (not d!1942556))

(assert (not b!6195532))

(assert (not d!1942592))

(assert (not b!6196030))

(assert (not d!1942646))

(assert (not bm!518355))

(assert (not bs!1537684))

(assert (not bm!518392))

(assert (not b!6195825))

(assert (not b!6196060))

(assert (not bm!518358))

(assert (not b!6195807))

(assert (not d!1942604))

(assert (not d!1942650))

(assert (not bm!518393))

(assert (not b!6195559))

(assert (not b!6195531))

(assert (not b!6195491))

(assert (not b!6195767))

(assert (not d!1942542))

(assert (not d!1942656))

(assert (not b!6195861))

(assert (not b!6195735))

(assert (not d!1942612))

(assert (not b!6195865))

(assert (not d!1942538))

(assert (not b!6195723))

(assert (not b!6196037))

(assert (not bm!518391))

(assert (not b!6195487))

(assert (not b!6195604))

(assert (not b_lambda!235727))

(assert (not b!6196054))

(assert (not d!1942608))

(assert (not bm!518338))

(assert (not bm!518384))

(assert (not b!6196049))

(assert (not b!6195804))

(assert (not bm!518426))

(assert (not b!6195708))

(assert (not b_lambda!235723))

(assert (not b!6195799))

(assert (not d!1942526))

(assert (not bm!518425))

(assert (not b!6195745))

(assert (not b!6195614))

(assert (not bm!518363))

(assert (not b!6196050))

(assert (not d!1942600))

(assert (not b!6195480))

(assert (not b!6195729))

(assert (not d!1942558))

(assert (not d!1942688))

(assert (not d!1942616))

(assert (not b!6195806))

(assert (not b!6195777))

(assert (not bm!518347))

(assert (not d!1942672))

(assert (not bm!518394))

(assert (not b_lambda!235725))

(assert (not d!1942554))

(assert (not d!1942610))

(assert (not b!6195773))

(assert (not b!6195543))

(assert (not b!6195774))

(assert (not b!6195763))

(assert (not d!1942586))

(assert (not b!6195537))

(assert (not b!6195897))

(assert (not b!6196038))

(assert (not b!6195633))

(assert (not b!6195603))

(assert (not bm!518359))

(assert (not b!6195438))

(assert (not bm!518356))

(assert (not bm!518407))

(assert (not b!6195605))

(assert (not b!6195772))

(assert (not b!6195699))

(assert (not b!6195801))

(assert (not b!6196002))

(assert (not d!1942532))

(assert (not bs!1537685))

(assert (not bm!518423))

(assert (not d!1942544))

(assert (not b!6195536))

(assert (not b!6195997))

(assert (not d!1942530))

(assert tp_is_empty!41517)

(assert (not b!6195549))

(assert (not d!1942562))

(assert (not b!6195526))

(assert (not b!6195809))

(assert (not b!6195523))

(assert (not bm!518343))

(assert (not d!1942674))

(assert (not b!6195935))

(assert (not b!6195698))

(assert (not b!6196036))

(assert (not setNonEmpty!42037))

(assert (not b!6195589))

(assert (not d!1942638))

(assert (not b!6195527))

(assert (not d!1942566))

(assert (not b!6196042))

(assert (not d!1942564))

(assert (not b!6195714))

(assert (not b!6195524))

(assert (not d!1942640))

(assert (not b!6195500))

(assert (not b!6195529))

(assert (not d!1942546))

(assert (not d!1942622))

(assert (not d!1942628))

(assert (not b!6195704))

(assert (not b!6195521))

(assert (not d!1942548))

(assert (not bm!518344))

(assert (not b!6195728))

(assert (not d!1942620))

(assert (not d!1942626))

(assert (not b!6195816))

(assert (not b!6195719))

(assert (not b!6196034))

(assert (not b!6195722))

(assert (not b!6195727))

(assert (not b!6195606))

(assert (not d!1942594))

(assert (not b!6195775))

(assert (not b!6195590))

(assert (not b!6195435))

(assert (not b!6195931))

(assert (not b!6195726))

(assert (not b!6195762))

(assert (not b!6195937))

(assert (not bs!1537683))

(assert (not bm!518383))

(assert (not b!6195894))

(assert (not b!6196053))

(assert (not b!6195862))

(assert (not b!6195522))

(assert (not b!6195539))

(assert (not b!6195788))

(assert (not b!6195868))

(assert (not b!6195898))

(assert (not bm!518406))

(assert (not bm!518362))

(assert (not b!6195768))

(assert (not b!6195628))

(assert (not b!6195552))

(assert (not b!6195803))

(assert (not bm!518396))

(assert (not d!1942602))

(assert (not bm!518416))

(assert (not b!6195802))

(assert (not d!1942534))

(assert (not d!1942536))

(assert (not d!1942606))

(assert (not b!6195585))

(assert (not b!6195770))

(assert (not b!6195429))

(assert (not b!6195561))

(assert (not b!6195607))

(assert (not d!1942624))

(assert (not b!6195548))

(assert (not b!6195560))

(assert (not b!6195932))

(assert (not b!6195860))

(assert (not b!6195558))

(assert (not d!1942522))

(assert (not b!6195499))

(assert (not d!1942690))

(assert (not b!6195864))

(assert (not bm!518422))

(assert (not bm!518395))

(assert (not b!6196033))

(assert (not bm!518414))

(assert (not b!6195896))

(assert (not b!6195863))

(assert (not b!6195765))

(assert (not d!1942630))

(assert (not b!6195437))

(assert (not b!6195476))

(assert (not b!6195434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

