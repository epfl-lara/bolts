; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546766 () Bool)

(assert start!546766)

(declare-fun b!5167112 () Bool)

(declare-datatypes ((C!29458 0))(
  ( (C!29459 (val!24431 Int)) )
))
(declare-datatypes ((List!60147 0))(
  ( (Nil!60023) (Cons!60023 (h!66471 C!29458) (t!373300 List!60147)) )
))
(declare-fun lt!2125632 () List!60147)

(declare-fun input!5817 () List!60147)

(declare-fun e!3219612 () Bool)

(declare-fun lt!2125636 () List!60147)

(declare-fun ++!13118 (List!60147 List!60147) List!60147)

(declare-fun tail!10127 (List!60147) List!60147)

(assert (=> b!5167112 (= e!3219612 (= (++!13118 lt!2125636 (tail!10127 lt!2125632)) input!5817))))

(declare-fun tp!1449664 () Bool)

(declare-fun setNonEmpty!31801 () Bool)

(declare-fun e!3219615 () Bool)

(declare-datatypes ((Regex!14594 0))(
  ( (ElementMatch!14594 (c!889108 C!29458)) (Concat!23439 (regOne!29700 Regex!14594) (regTwo!29700 Regex!14594)) (EmptyExpr!14594) (Star!14594 (reg!14923 Regex!14594)) (EmptyLang!14594) (Union!14594 (regOne!29701 Regex!14594) (regTwo!29701 Regex!14594)) )
))
(declare-datatypes ((List!60148 0))(
  ( (Nil!60024) (Cons!60024 (h!66472 Regex!14594) (t!373301 List!60148)) )
))
(declare-datatypes ((Context!7956 0))(
  ( (Context!7957 (exprs!4478 List!60148)) )
))
(declare-fun setElem!31802 () Context!7956)

(declare-fun setRes!31802 () Bool)

(declare-fun inv!79733 (Context!7956) Bool)

(assert (=> setNonEmpty!31801 (= setRes!31802 (and tp!1449664 (inv!79733 setElem!31802) e!3219615))))

(declare-fun z!4581 () (Set Context!7956))

(declare-fun setRest!31801 () (Set Context!7956))

(assert (=> setNonEmpty!31801 (= z!4581 (set.union (set.insert setElem!31802 (as set.empty (Set Context!7956))) setRest!31801))))

(declare-fun b!5167113 () Bool)

(declare-fun res!2196463 () Bool)

(declare-fun e!3219613 () Bool)

(assert (=> b!5167113 (=> (not res!2196463) (not e!3219613))))

(declare-fun testedP!294 () List!60147)

(assert (=> b!5167113 (= res!2196463 (not (= testedP!294 input!5817)))))

(declare-fun b!5167114 () Bool)

(declare-fun e!3219614 () Bool)

(assert (=> b!5167114 (= e!3219614 e!3219612)))

(declare-fun res!2196466 () Bool)

(assert (=> b!5167114 (=> res!2196466 e!3219612)))

(declare-fun nullableZipper!1140 ((Set Context!7956)) Bool)

(assert (=> b!5167114 (= res!2196466 (not (nullableZipper!1140 z!4581)))))

(declare-fun isPrefix!5727 (List!60147 List!60147) Bool)

(assert (=> b!5167114 (isPrefix!5727 lt!2125636 input!5817)))

(declare-datatypes ((Unit!151514 0))(
  ( (Unit!151515) )
))
(declare-fun lt!2125634 () Unit!151514)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1040 (List!60147 List!60147) Unit!151514)

(assert (=> b!5167114 (= lt!2125634 (lemmaAddHeadSuffixToPrefixStillPrefix!1040 testedP!294 input!5817))))

(declare-fun head!11018 (List!60147) C!29458)

(assert (=> b!5167114 (= lt!2125636 (++!13118 testedP!294 (Cons!60023 (head!11018 lt!2125632) Nil!60023)))))

(declare-fun b!5167115 () Bool)

(declare-fun e!3219608 () Unit!151514)

(declare-fun Unit!151516 () Unit!151514)

(assert (=> b!5167115 (= e!3219608 Unit!151516)))

(declare-fun setIsEmpty!31801 () Bool)

(assert (=> setIsEmpty!31801 setRes!31802))

(declare-fun setIsEmpty!31802 () Bool)

(declare-fun setRes!31801 () Bool)

(assert (=> setIsEmpty!31802 setRes!31801))

(declare-fun b!5167116 () Bool)

(declare-fun e!3219607 () Bool)

(assert (=> b!5167116 (= e!3219607 e!3219613)))

(declare-fun res!2196464 () Bool)

(assert (=> b!5167116 (=> (not res!2196464) (not e!3219613))))

(declare-fun lt!2125633 () Int)

(declare-fun lt!2125637 () Int)

(declare-fun isEmpty!32136 (List!60147) Bool)

(declare-datatypes ((tuple2!63742 0))(
  ( (tuple2!63743 (_1!35174 List!60147) (_2!35174 List!60147)) )
))
(declare-fun findLongestMatchInnerZipper!252 ((Set Context!7956) List!60147 Int List!60147 List!60147 Int) tuple2!63742)

(assert (=> b!5167116 (= res!2196464 (not (isEmpty!32136 (_1!35174 (findLongestMatchInnerZipper!252 z!4581 testedP!294 lt!2125633 lt!2125632 input!5817 lt!2125637)))))))

(declare-fun size!39630 (List!60147) Int)

(assert (=> b!5167116 (= lt!2125637 (size!39630 input!5817))))

(declare-fun getSuffix!3377 (List!60147 List!60147) List!60147)

(assert (=> b!5167116 (= lt!2125632 (getSuffix!3377 input!5817 testedP!294))))

(assert (=> b!5167116 (= lt!2125633 (size!39630 testedP!294))))

(declare-fun res!2196465 () Bool)

(assert (=> start!546766 (=> (not res!2196465) (not e!3219607))))

(assert (=> start!546766 (= res!2196465 (isPrefix!5727 testedP!294 input!5817))))

(assert (=> start!546766 e!3219607))

(declare-fun e!3219610 () Bool)

(assert (=> start!546766 e!3219610))

(declare-fun e!3219611 () Bool)

(assert (=> start!546766 e!3219611))

(declare-fun condSetEmpty!31801 () Bool)

(declare-fun baseZ!62 () (Set Context!7956))

(assert (=> start!546766 (= condSetEmpty!31801 (= baseZ!62 (as set.empty (Set Context!7956))))))

(assert (=> start!546766 setRes!31801))

(declare-fun condSetEmpty!31802 () Bool)

(assert (=> start!546766 (= condSetEmpty!31802 (= z!4581 (as set.empty (Set Context!7956))))))

(assert (=> start!546766 setRes!31802))

(declare-fun b!5167117 () Bool)

(declare-fun tp!1449661 () Bool)

(assert (=> b!5167117 (= e!3219615 tp!1449661)))

(declare-fun b!5167118 () Bool)

(assert (=> b!5167118 (= e!3219613 (not e!3219614))))

(declare-fun res!2196467 () Bool)

(assert (=> b!5167118 (=> res!2196467 e!3219614)))

(assert (=> b!5167118 (= res!2196467 (>= lt!2125633 lt!2125637))))

(declare-fun lt!2125629 () Unit!151514)

(assert (=> b!5167118 (= lt!2125629 e!3219608)))

(declare-fun c!889107 () Bool)

(assert (=> b!5167118 (= c!889107 (= lt!2125633 lt!2125637))))

(assert (=> b!5167118 (<= lt!2125633 lt!2125637)))

(declare-fun lt!2125631 () Unit!151514)

(declare-fun lemmaIsPrefixThenSmallerEqSize!890 (List!60147 List!60147) Unit!151514)

(assert (=> b!5167118 (= lt!2125631 (lemmaIsPrefixThenSmallerEqSize!890 testedP!294 input!5817))))

(declare-fun b!5167119 () Bool)

(declare-fun tp_is_empty!38441 () Bool)

(declare-fun tp!1449662 () Bool)

(assert (=> b!5167119 (= e!3219611 (and tp_is_empty!38441 tp!1449662))))

(declare-fun b!5167120 () Bool)

(declare-fun Unit!151517 () Unit!151514)

(assert (=> b!5167120 (= e!3219608 Unit!151517)))

(declare-fun lt!2125630 () Unit!151514)

(declare-fun lemmaIsPrefixRefl!3734 (List!60147 List!60147) Unit!151514)

(assert (=> b!5167120 (= lt!2125630 (lemmaIsPrefixRefl!3734 input!5817 input!5817))))

(assert (=> b!5167120 (isPrefix!5727 input!5817 input!5817)))

(declare-fun lt!2125635 () Unit!151514)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1376 (List!60147 List!60147 List!60147) Unit!151514)

(assert (=> b!5167120 (= lt!2125635 (lemmaIsPrefixSameLengthThenSameList!1376 input!5817 testedP!294 input!5817))))

(assert (=> b!5167120 false))

(declare-fun b!5167121 () Bool)

(declare-fun res!2196468 () Bool)

(assert (=> b!5167121 (=> (not res!2196468) (not e!3219607))))

(declare-fun derivationZipper!217 ((Set Context!7956) List!60147) (Set Context!7956))

(assert (=> b!5167121 (= res!2196468 (= (derivationZipper!217 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5167122 () Bool)

(declare-fun e!3219609 () Bool)

(declare-fun tp!1449663 () Bool)

(assert (=> b!5167122 (= e!3219609 tp!1449663)))

(declare-fun b!5167123 () Bool)

(declare-fun tp!1449665 () Bool)

(assert (=> b!5167123 (= e!3219610 (and tp_is_empty!38441 tp!1449665))))

(declare-fun tp!1449660 () Bool)

(declare-fun setElem!31801 () Context!7956)

(declare-fun setNonEmpty!31802 () Bool)

(assert (=> setNonEmpty!31802 (= setRes!31801 (and tp!1449660 (inv!79733 setElem!31801) e!3219609))))

(declare-fun setRest!31802 () (Set Context!7956))

(assert (=> setNonEmpty!31802 (= baseZ!62 (set.union (set.insert setElem!31801 (as set.empty (Set Context!7956))) setRest!31802))))

(assert (= (and start!546766 res!2196465) b!5167121))

(assert (= (and b!5167121 res!2196468) b!5167116))

(assert (= (and b!5167116 res!2196464) b!5167113))

(assert (= (and b!5167113 res!2196463) b!5167118))

(assert (= (and b!5167118 c!889107) b!5167120))

(assert (= (and b!5167118 (not c!889107)) b!5167115))

(assert (= (and b!5167118 (not res!2196467)) b!5167114))

(assert (= (and b!5167114 (not res!2196466)) b!5167112))

(assert (= (and start!546766 (is-Cons!60023 testedP!294)) b!5167123))

(assert (= (and start!546766 (is-Cons!60023 input!5817)) b!5167119))

(assert (= (and start!546766 condSetEmpty!31801) setIsEmpty!31802))

(assert (= (and start!546766 (not condSetEmpty!31801)) setNonEmpty!31802))

(assert (= setNonEmpty!31802 b!5167122))

(assert (= (and start!546766 condSetEmpty!31802) setIsEmpty!31801))

(assert (= (and start!546766 (not condSetEmpty!31802)) setNonEmpty!31801))

(assert (= setNonEmpty!31801 b!5167117))

(declare-fun m!6217896 () Bool)

(assert (=> b!5167118 m!6217896))

(declare-fun m!6217898 () Bool)

(assert (=> b!5167121 m!6217898))

(declare-fun m!6217900 () Bool)

(assert (=> b!5167116 m!6217900))

(declare-fun m!6217902 () Bool)

(assert (=> b!5167116 m!6217902))

(declare-fun m!6217904 () Bool)

(assert (=> b!5167116 m!6217904))

(declare-fun m!6217906 () Bool)

(assert (=> b!5167116 m!6217906))

(declare-fun m!6217908 () Bool)

(assert (=> b!5167116 m!6217908))

(declare-fun m!6217910 () Bool)

(assert (=> b!5167114 m!6217910))

(declare-fun m!6217912 () Bool)

(assert (=> b!5167114 m!6217912))

(declare-fun m!6217914 () Bool)

(assert (=> b!5167114 m!6217914))

(declare-fun m!6217916 () Bool)

(assert (=> b!5167114 m!6217916))

(declare-fun m!6217918 () Bool)

(assert (=> b!5167114 m!6217918))

(declare-fun m!6217920 () Bool)

(assert (=> setNonEmpty!31801 m!6217920))

(declare-fun m!6217922 () Bool)

(assert (=> b!5167112 m!6217922))

(assert (=> b!5167112 m!6217922))

(declare-fun m!6217924 () Bool)

(assert (=> b!5167112 m!6217924))

(declare-fun m!6217926 () Bool)

(assert (=> start!546766 m!6217926))

(declare-fun m!6217928 () Bool)

(assert (=> setNonEmpty!31802 m!6217928))

(declare-fun m!6217930 () Bool)

(assert (=> b!5167120 m!6217930))

(declare-fun m!6217932 () Bool)

(assert (=> b!5167120 m!6217932))

(declare-fun m!6217934 () Bool)

(assert (=> b!5167120 m!6217934))

(push 1)

(assert (not b!5167118))

(assert (not b!5167112))

(assert (not b!5167121))

(assert (not b!5167119))

(assert (not b!5167120))

(assert (not b!5167114))

(assert tp_is_empty!38441)

(assert (not setNonEmpty!31801))

(assert (not b!5167122))

(assert (not b!5167123))

(assert (not b!5167116))

(assert (not b!5167117))

(assert (not setNonEmpty!31802))

(assert (not start!546766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1667021 () Bool)

(declare-fun lt!2125667 () Int)

(assert (=> d!1667021 (>= lt!2125667 0)))

(declare-fun e!3219645 () Int)

(assert (=> d!1667021 (= lt!2125667 e!3219645)))

(declare-fun c!889115 () Bool)

(assert (=> d!1667021 (= c!889115 (is-Nil!60023 input!5817))))

(assert (=> d!1667021 (= (size!39630 input!5817) lt!2125667)))

(declare-fun b!5167164 () Bool)

(assert (=> b!5167164 (= e!3219645 0)))

(declare-fun b!5167165 () Bool)

(assert (=> b!5167165 (= e!3219645 (+ 1 (size!39630 (t!373300 input!5817))))))

(assert (= (and d!1667021 c!889115) b!5167164))

(assert (= (and d!1667021 (not c!889115)) b!5167165))

(declare-fun m!6217976 () Bool)

(assert (=> b!5167165 m!6217976))

(assert (=> b!5167116 d!1667021))

(declare-fun d!1667023 () Bool)

(declare-fun lt!2125670 () List!60147)

(assert (=> d!1667023 (= (++!13118 testedP!294 lt!2125670) input!5817)))

(declare-fun e!3219648 () List!60147)

(assert (=> d!1667023 (= lt!2125670 e!3219648)))

(declare-fun c!889118 () Bool)

(assert (=> d!1667023 (= c!889118 (is-Cons!60023 testedP!294))))

(assert (=> d!1667023 (>= (size!39630 input!5817) (size!39630 testedP!294))))

(assert (=> d!1667023 (= (getSuffix!3377 input!5817 testedP!294) lt!2125670)))

(declare-fun b!5167170 () Bool)

(assert (=> b!5167170 (= e!3219648 (getSuffix!3377 (tail!10127 input!5817) (t!373300 testedP!294)))))

(declare-fun b!5167171 () Bool)

(assert (=> b!5167171 (= e!3219648 input!5817)))

(assert (= (and d!1667023 c!889118) b!5167170))

(assert (= (and d!1667023 (not c!889118)) b!5167171))

(declare-fun m!6217978 () Bool)

(assert (=> d!1667023 m!6217978))

(assert (=> d!1667023 m!6217908))

(assert (=> d!1667023 m!6217902))

(declare-fun m!6217980 () Bool)

(assert (=> b!5167170 m!6217980))

(assert (=> b!5167170 m!6217980))

(declare-fun m!6217982 () Bool)

(assert (=> b!5167170 m!6217982))

(assert (=> b!5167116 d!1667023))

(declare-fun d!1667027 () Bool)

(assert (=> d!1667027 (= (isEmpty!32136 (_1!35174 (findLongestMatchInnerZipper!252 z!4581 testedP!294 lt!2125633 lt!2125632 input!5817 lt!2125637))) (is-Nil!60023 (_1!35174 (findLongestMatchInnerZipper!252 z!4581 testedP!294 lt!2125633 lt!2125632 input!5817 lt!2125637))))))

(assert (=> b!5167116 d!1667027))

(declare-fun d!1667029 () Bool)

(declare-fun lt!2125673 () Int)

(assert (=> d!1667029 (>= lt!2125673 0)))

(declare-fun e!3219651 () Int)

(assert (=> d!1667029 (= lt!2125673 e!3219651)))

(declare-fun c!889121 () Bool)

(assert (=> d!1667029 (= c!889121 (is-Nil!60023 testedP!294))))

(assert (=> d!1667029 (= (size!39630 testedP!294) lt!2125673)))

(declare-fun b!5167176 () Bool)

(assert (=> b!5167176 (= e!3219651 0)))

(declare-fun b!5167177 () Bool)

(assert (=> b!5167177 (= e!3219651 (+ 1 (size!39630 (t!373300 testedP!294))))))

(assert (= (and d!1667029 c!889121) b!5167176))

(assert (= (and d!1667029 (not c!889121)) b!5167177))

(declare-fun m!6217984 () Bool)

(assert (=> b!5167177 m!6217984))

(assert (=> b!5167116 d!1667029))

(declare-fun bm!362543 () Bool)

(declare-fun call!362551 () (Set Context!7956))

(declare-fun call!362549 () C!29458)

(declare-fun derivationStepZipper!950 ((Set Context!7956) C!29458) (Set Context!7956))

(assert (=> bm!362543 (= call!362551 (derivationStepZipper!950 z!4581 call!362549))))

(declare-fun b!5167216 () Bool)

(declare-fun e!3219677 () tuple2!63742)

(declare-fun e!3219673 () tuple2!63742)

(assert (=> b!5167216 (= e!3219677 e!3219673)))

(declare-fun lt!2125743 () tuple2!63742)

(declare-fun call!362554 () tuple2!63742)

(assert (=> b!5167216 (= lt!2125743 call!362554)))

(declare-fun c!889144 () Bool)

(assert (=> b!5167216 (= c!889144 (isEmpty!32136 (_1!35174 lt!2125743)))))

(declare-fun b!5167217 () Bool)

(declare-fun e!3219678 () tuple2!63742)

(assert (=> b!5167217 (= e!3219678 (tuple2!63743 Nil!60023 input!5817))))

(declare-fun b!5167218 () Bool)

(declare-fun e!3219676 () tuple2!63742)

(assert (=> b!5167218 (= e!3219678 e!3219676)))

(declare-fun c!889143 () Bool)

(assert (=> b!5167218 (= c!889143 (= lt!2125633 lt!2125637))))

(declare-fun b!5167219 () Bool)

(declare-fun e!3219680 () tuple2!63742)

(assert (=> b!5167219 (= e!3219680 (tuple2!63743 Nil!60023 input!5817))))

(declare-fun bm!362545 () Bool)

(declare-fun call!362548 () Unit!151514)

(assert (=> bm!362545 (= call!362548 (lemmaIsPrefixSameLengthThenSameList!1376 input!5817 testedP!294 input!5817))))

(declare-fun bm!362546 () Bool)

(declare-fun call!362550 () List!60147)

(assert (=> bm!362546 (= call!362550 (tail!10127 lt!2125632))))

(declare-fun bm!362547 () Bool)

(declare-fun call!362555 () Bool)

(assert (=> bm!362547 (= call!362555 (isPrefix!5727 input!5817 input!5817))))

(declare-fun b!5167220 () Bool)

(declare-fun e!3219675 () Bool)

(declare-fun lt!2125744 () tuple2!63742)

(assert (=> b!5167220 (= e!3219675 (>= (size!39630 (_1!35174 lt!2125744)) (size!39630 testedP!294)))))

(declare-fun bm!362548 () Bool)

(assert (=> bm!362548 (= call!362549 (head!11018 lt!2125632))))

(declare-fun lt!2125734 () List!60147)

(declare-fun bm!362549 () Bool)

(assert (=> bm!362549 (= call!362554 (findLongestMatchInnerZipper!252 call!362551 lt!2125734 (+ lt!2125633 1) call!362550 input!5817 lt!2125637))))

(declare-fun b!5167221 () Bool)

(assert (=> b!5167221 (= e!3219680 (tuple2!63743 testedP!294 Nil!60023))))

(declare-fun b!5167222 () Bool)

(declare-fun c!889141 () Bool)

(declare-fun call!362553 () Bool)

(assert (=> b!5167222 (= c!889141 call!362553)))

(declare-fun lt!2125754 () Unit!151514)

(declare-fun lt!2125739 () Unit!151514)

(assert (=> b!5167222 (= lt!2125754 lt!2125739)))

(declare-fun lt!2125741 () List!60147)

(declare-fun lt!2125746 () C!29458)

(assert (=> b!5167222 (= (++!13118 (++!13118 testedP!294 (Cons!60023 lt!2125746 Nil!60023)) lt!2125741) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1565 (List!60147 C!29458 List!60147 List!60147) Unit!151514)

(assert (=> b!5167222 (= lt!2125739 (lemmaMoveElementToOtherListKeepsConcatEq!1565 testedP!294 lt!2125746 lt!2125741 input!5817))))

(assert (=> b!5167222 (= lt!2125741 (tail!10127 lt!2125632))))

(assert (=> b!5167222 (= lt!2125746 (head!11018 lt!2125632))))

(declare-fun lt!2125749 () Unit!151514)

(declare-fun lt!2125752 () Unit!151514)

(assert (=> b!5167222 (= lt!2125749 lt!2125752)))

(assert (=> b!5167222 (isPrefix!5727 (++!13118 testedP!294 (Cons!60023 (head!11018 (getSuffix!3377 input!5817 testedP!294)) Nil!60023)) input!5817)))

(assert (=> b!5167222 (= lt!2125752 (lemmaAddHeadSuffixToPrefixStillPrefix!1040 testedP!294 input!5817))))

(assert (=> b!5167222 (= lt!2125734 (++!13118 testedP!294 (Cons!60023 (head!11018 lt!2125632) Nil!60023)))))

(declare-fun lt!2125731 () Unit!151514)

(declare-fun e!3219674 () Unit!151514)

(assert (=> b!5167222 (= lt!2125731 e!3219674)))

(declare-fun c!889142 () Bool)

(assert (=> b!5167222 (= c!889142 (= (size!39630 testedP!294) (size!39630 input!5817)))))

(declare-fun lt!2125755 () Unit!151514)

(declare-fun lt!2125748 () Unit!151514)

(assert (=> b!5167222 (= lt!2125755 lt!2125748)))

(assert (=> b!5167222 (<= (size!39630 testedP!294) (size!39630 input!5817))))

(assert (=> b!5167222 (= lt!2125748 (lemmaIsPrefixThenSmallerEqSize!890 testedP!294 input!5817))))

(assert (=> b!5167222 (= e!3219676 e!3219677)))

(declare-fun b!5167223 () Bool)

(declare-fun e!3219679 () Bool)

(assert (=> b!5167223 (= e!3219679 e!3219675)))

(declare-fun res!2196492 () Bool)

(assert (=> b!5167223 (=> res!2196492 e!3219675)))

(assert (=> b!5167223 (= res!2196492 (isEmpty!32136 (_1!35174 lt!2125744)))))

(declare-fun b!5167224 () Bool)

(declare-fun c!889139 () Bool)

(assert (=> b!5167224 (= c!889139 call!362553)))

(declare-fun lt!2125735 () Unit!151514)

(declare-fun lt!2125745 () Unit!151514)

(assert (=> b!5167224 (= lt!2125735 lt!2125745)))

(assert (=> b!5167224 (= input!5817 testedP!294)))

(assert (=> b!5167224 (= lt!2125745 call!362548)))

(declare-fun lt!2125742 () Unit!151514)

(declare-fun lt!2125751 () Unit!151514)

(assert (=> b!5167224 (= lt!2125742 lt!2125751)))

(assert (=> b!5167224 call!362555))

(declare-fun call!362552 () Unit!151514)

(assert (=> b!5167224 (= lt!2125751 call!362552)))

(assert (=> b!5167224 (= e!3219676 e!3219680)))

(declare-fun b!5167225 () Bool)

(assert (=> b!5167225 (= e!3219673 (tuple2!63743 testedP!294 lt!2125632))))

(declare-fun b!5167226 () Bool)

(assert (=> b!5167226 (= e!3219673 lt!2125743)))

(declare-fun b!5167227 () Bool)

(declare-fun Unit!151522 () Unit!151514)

(assert (=> b!5167227 (= e!3219674 Unit!151522)))

(declare-fun lt!2125753 () Unit!151514)

(assert (=> b!5167227 (= lt!2125753 call!362552)))

(assert (=> b!5167227 call!362555))

(declare-fun lt!2125750 () Unit!151514)

(assert (=> b!5167227 (= lt!2125750 lt!2125753)))

(declare-fun lt!2125736 () Unit!151514)

(assert (=> b!5167227 (= lt!2125736 call!362548)))

(assert (=> b!5167227 (= input!5817 testedP!294)))

(declare-fun lt!2125747 () Unit!151514)

(assert (=> b!5167227 (= lt!2125747 lt!2125736)))

(assert (=> b!5167227 false))

(declare-fun b!5167228 () Bool)

(assert (=> b!5167228 (= e!3219677 call!362554)))

(declare-fun bm!362544 () Bool)

(assert (=> bm!362544 (= call!362553 (nullableZipper!1140 z!4581))))

(declare-fun d!1667031 () Bool)

(assert (=> d!1667031 e!3219679))

(declare-fun res!2196491 () Bool)

(assert (=> d!1667031 (=> (not res!2196491) (not e!3219679))))

(assert (=> d!1667031 (= res!2196491 (= (++!13118 (_1!35174 lt!2125744) (_2!35174 lt!2125744)) input!5817))))

(assert (=> d!1667031 (= lt!2125744 e!3219678)))

(declare-fun c!889140 () Bool)

(declare-fun lostCauseZipper!1317 ((Set Context!7956)) Bool)

(assert (=> d!1667031 (= c!889140 (lostCauseZipper!1317 z!4581))))

(declare-fun lt!2125738 () Unit!151514)

(declare-fun Unit!151523 () Unit!151514)

(assert (=> d!1667031 (= lt!2125738 Unit!151523)))

(assert (=> d!1667031 (= (getSuffix!3377 input!5817 testedP!294) lt!2125632)))

(declare-fun lt!2125740 () Unit!151514)

(declare-fun lt!2125756 () Unit!151514)

(assert (=> d!1667031 (= lt!2125740 lt!2125756)))

(declare-fun lt!2125732 () List!60147)

(assert (=> d!1667031 (= lt!2125632 lt!2125732)))

(declare-fun lemmaSamePrefixThenSameSuffix!2684 (List!60147 List!60147 List!60147 List!60147 List!60147) Unit!151514)

(assert (=> d!1667031 (= lt!2125756 (lemmaSamePrefixThenSameSuffix!2684 testedP!294 lt!2125632 testedP!294 lt!2125732 input!5817))))

(assert (=> d!1667031 (= lt!2125732 (getSuffix!3377 input!5817 testedP!294))))

(declare-fun lt!2125733 () Unit!151514)

(declare-fun lt!2125737 () Unit!151514)

(assert (=> d!1667031 (= lt!2125733 lt!2125737)))

(assert (=> d!1667031 (isPrefix!5727 testedP!294 (++!13118 testedP!294 lt!2125632))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3578 (List!60147 List!60147) Unit!151514)

(assert (=> d!1667031 (= lt!2125737 (lemmaConcatTwoListThenFirstIsPrefix!3578 testedP!294 lt!2125632))))

(assert (=> d!1667031 (= (++!13118 testedP!294 lt!2125632) input!5817)))

(assert (=> d!1667031 (= (findLongestMatchInnerZipper!252 z!4581 testedP!294 lt!2125633 lt!2125632 input!5817 lt!2125637) lt!2125744)))

(declare-fun b!5167229 () Bool)

(declare-fun Unit!151524 () Unit!151514)

(assert (=> b!5167229 (= e!3219674 Unit!151524)))

(declare-fun bm!362550 () Bool)

(assert (=> bm!362550 (= call!362552 (lemmaIsPrefixRefl!3734 input!5817 input!5817))))

(assert (= (and d!1667031 c!889140) b!5167217))

(assert (= (and d!1667031 (not c!889140)) b!5167218))

(assert (= (and b!5167218 c!889143) b!5167224))

(assert (= (and b!5167218 (not c!889143)) b!5167222))

(assert (= (and b!5167224 c!889139) b!5167221))

(assert (= (and b!5167224 (not c!889139)) b!5167219))

(assert (= (and b!5167222 c!889142) b!5167227))

(assert (= (and b!5167222 (not c!889142)) b!5167229))

(assert (= (and b!5167222 c!889141) b!5167216))

(assert (= (and b!5167222 (not c!889141)) b!5167228))

(assert (= (and b!5167216 c!889144) b!5167225))

(assert (= (and b!5167216 (not c!889144)) b!5167226))

(assert (= (or b!5167216 b!5167228) bm!362546))

(assert (= (or b!5167216 b!5167228) bm!362548))

(assert (= (or b!5167216 b!5167228) bm!362543))

(assert (= (or b!5167216 b!5167228) bm!362549))

(assert (= (or b!5167224 b!5167227) bm!362550))

(assert (= (or b!5167224 b!5167222) bm!362544))

(assert (= (or b!5167224 b!5167227) bm!362547))

(assert (= (or b!5167224 b!5167227) bm!362545))

(assert (= (and d!1667031 res!2196491) b!5167223))

(assert (= (and b!5167223 (not res!2196492)) b!5167220))

(assert (=> b!5167222 m!6217910))

(assert (=> b!5167222 m!6217902))

(assert (=> b!5167222 m!6217912))

(assert (=> b!5167222 m!6217904))

(declare-fun m!6217996 () Bool)

(assert (=> b!5167222 m!6217996))

(declare-fun m!6217998 () Bool)

(assert (=> b!5167222 m!6217998))

(declare-fun m!6218000 () Bool)

(assert (=> b!5167222 m!6218000))

(assert (=> b!5167222 m!6217918))

(declare-fun m!6218002 () Bool)

(assert (=> b!5167222 m!6218002))

(declare-fun m!6218004 () Bool)

(assert (=> b!5167222 m!6218004))

(assert (=> b!5167222 m!6217998))

(declare-fun m!6218006 () Bool)

(assert (=> b!5167222 m!6218006))

(assert (=> b!5167222 m!6217908))

(assert (=> b!5167222 m!6217896))

(assert (=> b!5167222 m!6217922))

(assert (=> b!5167222 m!6218002))

(assert (=> b!5167222 m!6217904))

(declare-fun m!6218008 () Bool)

(assert (=> bm!362543 m!6218008))

(assert (=> bm!362546 m!6217922))

(assert (=> bm!362550 m!6217930))

(declare-fun m!6218010 () Bool)

(assert (=> d!1667031 m!6218010))

(declare-fun m!6218012 () Bool)

(assert (=> d!1667031 m!6218012))

(declare-fun m!6218014 () Bool)

(assert (=> d!1667031 m!6218014))

(assert (=> d!1667031 m!6218012))

(declare-fun m!6218016 () Bool)

(assert (=> d!1667031 m!6218016))

(declare-fun m!6218018 () Bool)

(assert (=> d!1667031 m!6218018))

(assert (=> d!1667031 m!6217904))

(declare-fun m!6218020 () Bool)

(assert (=> d!1667031 m!6218020))

(assert (=> bm!362548 m!6217912))

(declare-fun m!6218022 () Bool)

(assert (=> b!5167220 m!6218022))

(assert (=> b!5167220 m!6217902))

(declare-fun m!6218024 () Bool)

(assert (=> bm!362549 m!6218024))

(assert (=> bm!362547 m!6217932))

(assert (=> bm!362545 m!6217934))

(declare-fun m!6218026 () Bool)

(assert (=> b!5167223 m!6218026))

(declare-fun m!6218028 () Bool)

(assert (=> b!5167216 m!6218028))

(assert (=> bm!362544 m!6217916))

(assert (=> b!5167116 d!1667031))

(declare-fun b!5167238 () Bool)

(declare-fun e!3219687 () Bool)

(declare-fun e!3219689 () Bool)

(assert (=> b!5167238 (= e!3219687 e!3219689)))

(declare-fun res!2196504 () Bool)

(assert (=> b!5167238 (=> (not res!2196504) (not e!3219689))))

(assert (=> b!5167238 (= res!2196504 (not (is-Nil!60023 input!5817)))))

(declare-fun b!5167240 () Bool)

(assert (=> b!5167240 (= e!3219689 (isPrefix!5727 (tail!10127 testedP!294) (tail!10127 input!5817)))))

(declare-fun d!1667041 () Bool)

(declare-fun e!3219688 () Bool)

(assert (=> d!1667041 e!3219688))

(declare-fun res!2196502 () Bool)

(assert (=> d!1667041 (=> res!2196502 e!3219688)))

(declare-fun lt!2125759 () Bool)

(assert (=> d!1667041 (= res!2196502 (not lt!2125759))))

(assert (=> d!1667041 (= lt!2125759 e!3219687)))

(declare-fun res!2196503 () Bool)

(assert (=> d!1667041 (=> res!2196503 e!3219687)))

(assert (=> d!1667041 (= res!2196503 (is-Nil!60023 testedP!294))))

(assert (=> d!1667041 (= (isPrefix!5727 testedP!294 input!5817) lt!2125759)))

(declare-fun b!5167241 () Bool)

(assert (=> b!5167241 (= e!3219688 (>= (size!39630 input!5817) (size!39630 testedP!294)))))

(declare-fun b!5167239 () Bool)

(declare-fun res!2196501 () Bool)

(assert (=> b!5167239 (=> (not res!2196501) (not e!3219689))))

(assert (=> b!5167239 (= res!2196501 (= (head!11018 testedP!294) (head!11018 input!5817)))))

(assert (= (and d!1667041 (not res!2196503)) b!5167238))

(assert (= (and b!5167238 res!2196504) b!5167239))

(assert (= (and b!5167239 res!2196501) b!5167240))

(assert (= (and d!1667041 (not res!2196502)) b!5167241))

(declare-fun m!6218030 () Bool)

(assert (=> b!5167240 m!6218030))

(assert (=> b!5167240 m!6217980))

(assert (=> b!5167240 m!6218030))

(assert (=> b!5167240 m!6217980))

(declare-fun m!6218032 () Bool)

(assert (=> b!5167240 m!6218032))

(assert (=> b!5167241 m!6217908))

(assert (=> b!5167241 m!6217902))

(declare-fun m!6218034 () Bool)

(assert (=> b!5167239 m!6218034))

(declare-fun m!6218036 () Bool)

(assert (=> b!5167239 m!6218036))

(assert (=> start!546766 d!1667041))

(declare-fun d!1667043 () Bool)

(assert (=> d!1667043 (= (head!11018 lt!2125632) (h!66471 lt!2125632))))

(assert (=> b!5167114 d!1667043))

(declare-fun d!1667045 () Bool)

(assert (=> d!1667045 (isPrefix!5727 (++!13118 testedP!294 (Cons!60023 (head!11018 (getSuffix!3377 input!5817 testedP!294)) Nil!60023)) input!5817)))

(declare-fun lt!2125762 () Unit!151514)

(declare-fun choose!38233 (List!60147 List!60147) Unit!151514)

(assert (=> d!1667045 (= lt!2125762 (choose!38233 testedP!294 input!5817))))

(assert (=> d!1667045 (isPrefix!5727 testedP!294 input!5817)))

(assert (=> d!1667045 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1040 testedP!294 input!5817) lt!2125762)))

(declare-fun bs!1202950 () Bool)

(assert (= bs!1202950 d!1667045))

(assert (=> bs!1202950 m!6217904))

(assert (=> bs!1202950 m!6217996))

(assert (=> bs!1202950 m!6217904))

(assert (=> bs!1202950 m!6218002))

(assert (=> bs!1202950 m!6217926))

(declare-fun m!6218038 () Bool)

(assert (=> bs!1202950 m!6218038))

(assert (=> bs!1202950 m!6218002))

(assert (=> bs!1202950 m!6218004))

(assert (=> b!5167114 d!1667045))

(declare-fun d!1667047 () Bool)

(declare-fun lambda!257898 () Int)

(declare-fun exists!1899 ((Set Context!7956) Int) Bool)

(assert (=> d!1667047 (= (nullableZipper!1140 z!4581) (exists!1899 z!4581 lambda!257898))))

(declare-fun bs!1202952 () Bool)

(assert (= bs!1202952 d!1667047))

(declare-fun m!6218102 () Bool)

(assert (=> bs!1202952 m!6218102))

(assert (=> b!5167114 d!1667047))

(declare-fun b!5167314 () Bool)

(declare-fun e!3219732 () Bool)

(declare-fun e!3219734 () Bool)

(assert (=> b!5167314 (= e!3219732 e!3219734)))

(declare-fun res!2196532 () Bool)

(assert (=> b!5167314 (=> (not res!2196532) (not e!3219734))))

(assert (=> b!5167314 (= res!2196532 (not (is-Nil!60023 input!5817)))))

(declare-fun b!5167316 () Bool)

(assert (=> b!5167316 (= e!3219734 (isPrefix!5727 (tail!10127 lt!2125636) (tail!10127 input!5817)))))

(declare-fun d!1667061 () Bool)

(declare-fun e!3219733 () Bool)

(assert (=> d!1667061 e!3219733))

(declare-fun res!2196530 () Bool)

(assert (=> d!1667061 (=> res!2196530 e!3219733)))

(declare-fun lt!2125850 () Bool)

(assert (=> d!1667061 (= res!2196530 (not lt!2125850))))

(assert (=> d!1667061 (= lt!2125850 e!3219732)))

(declare-fun res!2196531 () Bool)

(assert (=> d!1667061 (=> res!2196531 e!3219732)))

(assert (=> d!1667061 (= res!2196531 (is-Nil!60023 lt!2125636))))

(assert (=> d!1667061 (= (isPrefix!5727 lt!2125636 input!5817) lt!2125850)))

(declare-fun b!5167317 () Bool)

(assert (=> b!5167317 (= e!3219733 (>= (size!39630 input!5817) (size!39630 lt!2125636)))))

(declare-fun b!5167315 () Bool)

(declare-fun res!2196529 () Bool)

(assert (=> b!5167315 (=> (not res!2196529) (not e!3219734))))

(assert (=> b!5167315 (= res!2196529 (= (head!11018 lt!2125636) (head!11018 input!5817)))))

(assert (= (and d!1667061 (not res!2196531)) b!5167314))

(assert (= (and b!5167314 res!2196532) b!5167315))

(assert (= (and b!5167315 res!2196529) b!5167316))

(assert (= (and d!1667061 (not res!2196530)) b!5167317))

(declare-fun m!6218104 () Bool)

(assert (=> b!5167316 m!6218104))

(assert (=> b!5167316 m!6217980))

(assert (=> b!5167316 m!6218104))

(assert (=> b!5167316 m!6217980))

(declare-fun m!6218106 () Bool)

(assert (=> b!5167316 m!6218106))

(assert (=> b!5167317 m!6217908))

(declare-fun m!6218108 () Bool)

(assert (=> b!5167317 m!6218108))

(declare-fun m!6218110 () Bool)

(assert (=> b!5167315 m!6218110))

(assert (=> b!5167315 m!6218036))

(assert (=> b!5167114 d!1667061))

(declare-fun b!5167327 () Bool)

(declare-fun e!3219739 () List!60147)

(assert (=> b!5167327 (= e!3219739 (Cons!60023 (h!66471 testedP!294) (++!13118 (t!373300 testedP!294) (Cons!60023 (head!11018 lt!2125632) Nil!60023))))))

(declare-fun e!3219740 () Bool)

(declare-fun b!5167329 () Bool)

(declare-fun lt!2125853 () List!60147)

(assert (=> b!5167329 (= e!3219740 (or (not (= (Cons!60023 (head!11018 lt!2125632) Nil!60023) Nil!60023)) (= lt!2125853 testedP!294)))))

(declare-fun b!5167328 () Bool)

(declare-fun res!2196538 () Bool)

(assert (=> b!5167328 (=> (not res!2196538) (not e!3219740))))

(assert (=> b!5167328 (= res!2196538 (= (size!39630 lt!2125853) (+ (size!39630 testedP!294) (size!39630 (Cons!60023 (head!11018 lt!2125632) Nil!60023)))))))

(declare-fun b!5167326 () Bool)

(assert (=> b!5167326 (= e!3219739 (Cons!60023 (head!11018 lt!2125632) Nil!60023))))

(declare-fun d!1667063 () Bool)

(assert (=> d!1667063 e!3219740))

(declare-fun res!2196537 () Bool)

(assert (=> d!1667063 (=> (not res!2196537) (not e!3219740))))

(declare-fun content!10634 (List!60147) (Set C!29458))

(assert (=> d!1667063 (= res!2196537 (= (content!10634 lt!2125853) (set.union (content!10634 testedP!294) (content!10634 (Cons!60023 (head!11018 lt!2125632) Nil!60023)))))))

(assert (=> d!1667063 (= lt!2125853 e!3219739)))

(declare-fun c!889173 () Bool)

(assert (=> d!1667063 (= c!889173 (is-Nil!60023 testedP!294))))

(assert (=> d!1667063 (= (++!13118 testedP!294 (Cons!60023 (head!11018 lt!2125632) Nil!60023)) lt!2125853)))

(assert (= (and d!1667063 c!889173) b!5167326))

(assert (= (and d!1667063 (not c!889173)) b!5167327))

(assert (= (and d!1667063 res!2196537) b!5167328))

(assert (= (and b!5167328 res!2196538) b!5167329))

(declare-fun m!6218112 () Bool)

(assert (=> b!5167327 m!6218112))

(declare-fun m!6218114 () Bool)

(assert (=> b!5167328 m!6218114))

(assert (=> b!5167328 m!6217902))

(declare-fun m!6218116 () Bool)

(assert (=> b!5167328 m!6218116))

(declare-fun m!6218118 () Bool)

(assert (=> d!1667063 m!6218118))

(declare-fun m!6218120 () Bool)

(assert (=> d!1667063 m!6218120))

(declare-fun m!6218122 () Bool)

(assert (=> d!1667063 m!6218122))

(assert (=> b!5167114 d!1667063))

(declare-fun d!1667065 () Bool)

(assert (=> d!1667065 (<= (size!39630 testedP!294) (size!39630 input!5817))))

(declare-fun lt!2125856 () Unit!151514)

(declare-fun choose!38234 (List!60147 List!60147) Unit!151514)

(assert (=> d!1667065 (= lt!2125856 (choose!38234 testedP!294 input!5817))))

(assert (=> d!1667065 (isPrefix!5727 testedP!294 input!5817)))

(assert (=> d!1667065 (= (lemmaIsPrefixThenSmallerEqSize!890 testedP!294 input!5817) lt!2125856)))

(declare-fun bs!1202953 () Bool)

(assert (= bs!1202953 d!1667065))

(assert (=> bs!1202953 m!6217902))

(assert (=> bs!1202953 m!6217908))

(declare-fun m!6218124 () Bool)

(assert (=> bs!1202953 m!6218124))

(assert (=> bs!1202953 m!6217926))

(assert (=> b!5167118 d!1667065))

(declare-fun d!1667067 () Bool)

(declare-fun lambda!257901 () Int)

(declare-fun forall!14114 (List!60148 Int) Bool)

(assert (=> d!1667067 (= (inv!79733 setElem!31801) (forall!14114 (exprs!4478 setElem!31801) lambda!257901))))

(declare-fun bs!1202954 () Bool)

(assert (= bs!1202954 d!1667067))

(declare-fun m!6218126 () Bool)

(assert (=> bs!1202954 m!6218126))

(assert (=> setNonEmpty!31802 d!1667067))

(declare-fun b!5167331 () Bool)

(declare-fun e!3219741 () List!60147)

(assert (=> b!5167331 (= e!3219741 (Cons!60023 (h!66471 lt!2125636) (++!13118 (t!373300 lt!2125636) (tail!10127 lt!2125632))))))

(declare-fun e!3219742 () Bool)

(declare-fun lt!2125857 () List!60147)

(declare-fun b!5167333 () Bool)

(assert (=> b!5167333 (= e!3219742 (or (not (= (tail!10127 lt!2125632) Nil!60023)) (= lt!2125857 lt!2125636)))))

(declare-fun b!5167332 () Bool)

(declare-fun res!2196540 () Bool)

(assert (=> b!5167332 (=> (not res!2196540) (not e!3219742))))

(assert (=> b!5167332 (= res!2196540 (= (size!39630 lt!2125857) (+ (size!39630 lt!2125636) (size!39630 (tail!10127 lt!2125632)))))))

(declare-fun b!5167330 () Bool)

(assert (=> b!5167330 (= e!3219741 (tail!10127 lt!2125632))))

(declare-fun d!1667069 () Bool)

(assert (=> d!1667069 e!3219742))

(declare-fun res!2196539 () Bool)

(assert (=> d!1667069 (=> (not res!2196539) (not e!3219742))))

(assert (=> d!1667069 (= res!2196539 (= (content!10634 lt!2125857) (set.union (content!10634 lt!2125636) (content!10634 (tail!10127 lt!2125632)))))))

(assert (=> d!1667069 (= lt!2125857 e!3219741)))

(declare-fun c!889174 () Bool)

(assert (=> d!1667069 (= c!889174 (is-Nil!60023 lt!2125636))))

(assert (=> d!1667069 (= (++!13118 lt!2125636 (tail!10127 lt!2125632)) lt!2125857)))

(assert (= (and d!1667069 c!889174) b!5167330))

(assert (= (and d!1667069 (not c!889174)) b!5167331))

(assert (= (and d!1667069 res!2196539) b!5167332))

(assert (= (and b!5167332 res!2196540) b!5167333))

(assert (=> b!5167331 m!6217922))

(declare-fun m!6218128 () Bool)

(assert (=> b!5167331 m!6218128))

(declare-fun m!6218130 () Bool)

(assert (=> b!5167332 m!6218130))

(assert (=> b!5167332 m!6218108))

(assert (=> b!5167332 m!6217922))

(declare-fun m!6218132 () Bool)

(assert (=> b!5167332 m!6218132))

(declare-fun m!6218134 () Bool)

(assert (=> d!1667069 m!6218134))

(declare-fun m!6218136 () Bool)

(assert (=> d!1667069 m!6218136))

(assert (=> d!1667069 m!6217922))

(declare-fun m!6218138 () Bool)

(assert (=> d!1667069 m!6218138))

(assert (=> b!5167112 d!1667069))

(declare-fun d!1667071 () Bool)

(assert (=> d!1667071 (= (tail!10127 lt!2125632) (t!373300 lt!2125632))))

(assert (=> b!5167112 d!1667071))

(declare-fun d!1667073 () Bool)

(assert (=> d!1667073 (isPrefix!5727 input!5817 input!5817)))

(declare-fun lt!2125860 () Unit!151514)

(declare-fun choose!38235 (List!60147 List!60147) Unit!151514)

(assert (=> d!1667073 (= lt!2125860 (choose!38235 input!5817 input!5817))))

(assert (=> d!1667073 (= (lemmaIsPrefixRefl!3734 input!5817 input!5817) lt!2125860)))

(declare-fun bs!1202955 () Bool)

(assert (= bs!1202955 d!1667073))

(assert (=> bs!1202955 m!6217932))

(declare-fun m!6218140 () Bool)

(assert (=> bs!1202955 m!6218140))

(assert (=> b!5167120 d!1667073))

(declare-fun b!5167334 () Bool)

(declare-fun e!3219743 () Bool)

(declare-fun e!3219745 () Bool)

(assert (=> b!5167334 (= e!3219743 e!3219745)))

(declare-fun res!2196544 () Bool)

(assert (=> b!5167334 (=> (not res!2196544) (not e!3219745))))

(assert (=> b!5167334 (= res!2196544 (not (is-Nil!60023 input!5817)))))

(declare-fun b!5167336 () Bool)

(assert (=> b!5167336 (= e!3219745 (isPrefix!5727 (tail!10127 input!5817) (tail!10127 input!5817)))))

(declare-fun d!1667075 () Bool)

(declare-fun e!3219744 () Bool)

(assert (=> d!1667075 e!3219744))

(declare-fun res!2196542 () Bool)

(assert (=> d!1667075 (=> res!2196542 e!3219744)))

(declare-fun lt!2125861 () Bool)

(assert (=> d!1667075 (= res!2196542 (not lt!2125861))))

(assert (=> d!1667075 (= lt!2125861 e!3219743)))

(declare-fun res!2196543 () Bool)

(assert (=> d!1667075 (=> res!2196543 e!3219743)))

(assert (=> d!1667075 (= res!2196543 (is-Nil!60023 input!5817))))

(assert (=> d!1667075 (= (isPrefix!5727 input!5817 input!5817) lt!2125861)))

(declare-fun b!5167337 () Bool)

(assert (=> b!5167337 (= e!3219744 (>= (size!39630 input!5817) (size!39630 input!5817)))))

(declare-fun b!5167335 () Bool)

(declare-fun res!2196541 () Bool)

(assert (=> b!5167335 (=> (not res!2196541) (not e!3219745))))

(assert (=> b!5167335 (= res!2196541 (= (head!11018 input!5817) (head!11018 input!5817)))))

(assert (= (and d!1667075 (not res!2196543)) b!5167334))

(assert (= (and b!5167334 res!2196544) b!5167335))

(assert (= (and b!5167335 res!2196541) b!5167336))

(assert (= (and d!1667075 (not res!2196542)) b!5167337))

(assert (=> b!5167336 m!6217980))

(assert (=> b!5167336 m!6217980))

(assert (=> b!5167336 m!6217980))

(assert (=> b!5167336 m!6217980))

(declare-fun m!6218142 () Bool)

(assert (=> b!5167336 m!6218142))

(assert (=> b!5167337 m!6217908))

(assert (=> b!5167337 m!6217908))

(assert (=> b!5167335 m!6218036))

(assert (=> b!5167335 m!6218036))

(assert (=> b!5167120 d!1667075))

(declare-fun d!1667077 () Bool)

(assert (=> d!1667077 (= input!5817 testedP!294)))

(declare-fun lt!2125864 () Unit!151514)

(declare-fun choose!38236 (List!60147 List!60147 List!60147) Unit!151514)

(assert (=> d!1667077 (= lt!2125864 (choose!38236 input!5817 testedP!294 input!5817))))

(assert (=> d!1667077 (isPrefix!5727 input!5817 input!5817)))

(assert (=> d!1667077 (= (lemmaIsPrefixSameLengthThenSameList!1376 input!5817 testedP!294 input!5817) lt!2125864)))

(declare-fun bs!1202956 () Bool)

(assert (= bs!1202956 d!1667077))

(declare-fun m!6218144 () Bool)

(assert (=> bs!1202956 m!6218144))

(assert (=> bs!1202956 m!6217932))

(assert (=> b!5167120 d!1667077))

(declare-fun bs!1202957 () Bool)

(declare-fun d!1667079 () Bool)

(assert (= bs!1202957 (and d!1667079 d!1667067)))

(declare-fun lambda!257902 () Int)

(assert (=> bs!1202957 (= lambda!257902 lambda!257901)))

(assert (=> d!1667079 (= (inv!79733 setElem!31802) (forall!14114 (exprs!4478 setElem!31802) lambda!257902))))

(declare-fun bs!1202958 () Bool)

(assert (= bs!1202958 d!1667079))

(declare-fun m!6218146 () Bool)

(assert (=> bs!1202958 m!6218146))

(assert (=> setNonEmpty!31801 d!1667079))

(declare-fun d!1667081 () Bool)

(declare-fun c!889177 () Bool)

(assert (=> d!1667081 (= c!889177 (is-Cons!60023 testedP!294))))

(declare-fun e!3219748 () (Set Context!7956))

(assert (=> d!1667081 (= (derivationZipper!217 baseZ!62 testedP!294) e!3219748)))

(declare-fun b!5167342 () Bool)

(assert (=> b!5167342 (= e!3219748 (derivationZipper!217 (derivationStepZipper!950 baseZ!62 (h!66471 testedP!294)) (t!373300 testedP!294)))))

(declare-fun b!5167343 () Bool)

(assert (=> b!5167343 (= e!3219748 baseZ!62)))

(assert (= (and d!1667081 c!889177) b!5167342))

(assert (= (and d!1667081 (not c!889177)) b!5167343))

(declare-fun m!6218148 () Bool)

(assert (=> b!5167342 m!6218148))

(assert (=> b!5167342 m!6218148))

(declare-fun m!6218150 () Bool)

(assert (=> b!5167342 m!6218150))

(assert (=> b!5167121 d!1667081))

(declare-fun b!5167348 () Bool)

(declare-fun e!3219751 () Bool)

(declare-fun tp!1449688 () Bool)

(declare-fun tp!1449689 () Bool)

(assert (=> b!5167348 (= e!3219751 (and tp!1449688 tp!1449689))))

(assert (=> b!5167122 (= tp!1449663 e!3219751)))

(assert (= (and b!5167122 (is-Cons!60024 (exprs!4478 setElem!31801))) b!5167348))

(declare-fun b!5167349 () Bool)

(declare-fun e!3219752 () Bool)

(declare-fun tp!1449690 () Bool)

(declare-fun tp!1449691 () Bool)

(assert (=> b!5167349 (= e!3219752 (and tp!1449690 tp!1449691))))

(assert (=> b!5167117 (= tp!1449661 e!3219752)))

(assert (= (and b!5167117 (is-Cons!60024 (exprs!4478 setElem!31802))) b!5167349))

(declare-fun b!5167354 () Bool)

(declare-fun e!3219755 () Bool)

(declare-fun tp!1449694 () Bool)

(assert (=> b!5167354 (= e!3219755 (and tp_is_empty!38441 tp!1449694))))

(assert (=> b!5167123 (= tp!1449665 e!3219755)))

(assert (= (and b!5167123 (is-Cons!60023 (t!373300 testedP!294))) b!5167354))

(declare-fun condSetEmpty!31811 () Bool)

(assert (=> setNonEmpty!31802 (= condSetEmpty!31811 (= setRest!31802 (as set.empty (Set Context!7956))))))

(declare-fun setRes!31811 () Bool)

(assert (=> setNonEmpty!31802 (= tp!1449660 setRes!31811)))

(declare-fun setIsEmpty!31811 () Bool)

(assert (=> setIsEmpty!31811 setRes!31811))

(declare-fun setNonEmpty!31811 () Bool)

(declare-fun e!3219758 () Bool)

(declare-fun tp!1449700 () Bool)

(declare-fun setElem!31811 () Context!7956)

(assert (=> setNonEmpty!31811 (= setRes!31811 (and tp!1449700 (inv!79733 setElem!31811) e!3219758))))

(declare-fun setRest!31811 () (Set Context!7956))

(assert (=> setNonEmpty!31811 (= setRest!31802 (set.union (set.insert setElem!31811 (as set.empty (Set Context!7956))) setRest!31811))))

(declare-fun b!5167359 () Bool)

(declare-fun tp!1449699 () Bool)

(assert (=> b!5167359 (= e!3219758 tp!1449699)))

(assert (= (and setNonEmpty!31802 condSetEmpty!31811) setIsEmpty!31811))

(assert (= (and setNonEmpty!31802 (not condSetEmpty!31811)) setNonEmpty!31811))

(assert (= setNonEmpty!31811 b!5167359))

(declare-fun m!6218152 () Bool)

(assert (=> setNonEmpty!31811 m!6218152))

(declare-fun b!5167360 () Bool)

(declare-fun e!3219759 () Bool)

(declare-fun tp!1449701 () Bool)

(assert (=> b!5167360 (= e!3219759 (and tp_is_empty!38441 tp!1449701))))

(assert (=> b!5167119 (= tp!1449662 e!3219759)))

(assert (= (and b!5167119 (is-Cons!60023 (t!373300 input!5817))) b!5167360))

(declare-fun condSetEmpty!31812 () Bool)

(assert (=> setNonEmpty!31801 (= condSetEmpty!31812 (= setRest!31801 (as set.empty (Set Context!7956))))))

(declare-fun setRes!31812 () Bool)

(assert (=> setNonEmpty!31801 (= tp!1449664 setRes!31812)))

(declare-fun setIsEmpty!31812 () Bool)

(assert (=> setIsEmpty!31812 setRes!31812))

(declare-fun setElem!31812 () Context!7956)

(declare-fun e!3219760 () Bool)

(declare-fun tp!1449703 () Bool)

(declare-fun setNonEmpty!31812 () Bool)

(assert (=> setNonEmpty!31812 (= setRes!31812 (and tp!1449703 (inv!79733 setElem!31812) e!3219760))))

(declare-fun setRest!31812 () (Set Context!7956))

(assert (=> setNonEmpty!31812 (= setRest!31801 (set.union (set.insert setElem!31812 (as set.empty (Set Context!7956))) setRest!31812))))

(declare-fun b!5167361 () Bool)

(declare-fun tp!1449702 () Bool)

(assert (=> b!5167361 (= e!3219760 tp!1449702)))

(assert (= (and setNonEmpty!31801 condSetEmpty!31812) setIsEmpty!31812))

(assert (= (and setNonEmpty!31801 (not condSetEmpty!31812)) setNonEmpty!31812))

(assert (= setNonEmpty!31812 b!5167361))

(declare-fun m!6218154 () Bool)

(assert (=> setNonEmpty!31812 m!6218154))

(push 1)

(assert (not b!5167240))

(assert (not d!1667047))

(assert (not setNonEmpty!31811))

(assert (not b!5167241))

(assert (not setNonEmpty!31812))

(assert (not b!5167177))

(assert (not b!5167315))

(assert (not b!5167220))

(assert (not d!1667073))

(assert (not bm!362549))

(assert (not bm!362548))

(assert (not bm!362550))

(assert (not bm!362546))

(assert (not b!5167359))

(assert (not b!5167223))

(assert (not d!1667063))

(assert (not d!1667069))

(assert (not b!5167348))

(assert (not d!1667023))

(assert (not b!5167337))

(assert (not b!5167335))

(assert (not d!1667045))

(assert (not d!1667079))

(assert (not bm!362544))

(assert (not b!5167342))

(assert (not bm!362547))

(assert (not b!5167361))

(assert (not b!5167317))

(assert (not bm!362545))

(assert (not b!5167328))

(assert (not b!5167327))

(assert (not b!5167165))

(assert (not d!1667077))

(assert (not b!5167222))

(assert tp_is_empty!38441)

(assert (not d!1667067))

(assert (not b!5167354))

(assert (not d!1667065))

(assert (not b!5167332))

(assert (not b!5167360))

(assert (not d!1667031))

(assert (not b!5167316))

(assert (not b!5167216))

(assert (not b!5167331))

(assert (not bm!362543))

(assert (not b!5167170))

(assert (not b!5167336))

(assert (not b!5167349))

(assert (not b!5167239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

