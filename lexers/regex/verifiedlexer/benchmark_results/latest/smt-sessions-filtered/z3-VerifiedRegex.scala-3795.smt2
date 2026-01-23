; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212430 () Bool)

(assert start!212430)

(declare-fun b!2189525 () Bool)

(declare-fun e!1399104 () Bool)

(declare-fun tp!682565 () Bool)

(assert (=> b!2189525 (= e!1399104 tp!682565)))

(declare-fun e!1399101 () Bool)

(declare-fun lt!817864 () Int)

(declare-fun lt!817886 () Int)

(declare-datatypes ((C!12260 0))(
  ( (C!12261 (val!7116 Int)) )
))
(declare-datatypes ((List!25384 0))(
  ( (Nil!25300) (Cons!25300 (h!30701 C!12260) (t!197982 List!25384)) )
))
(declare-fun lt!817868 () List!25384)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6057 0))(
  ( (ElementMatch!6057 (c!348360 C!12260)) (Concat!10359 (regOne!12626 Regex!6057) (regTwo!12626 Regex!6057)) (EmptyExpr!6057) (Star!6057 (reg!6386 Regex!6057)) (EmptyLang!6057) (Union!6057 (regOne!12627 Regex!6057) (regTwo!12627 Regex!6057)) )
))
(declare-datatypes ((List!25385 0))(
  ( (Nil!25301) (Cons!25301 (h!30702 Regex!6057) (t!197983 List!25385)) )
))
(declare-datatypes ((Context!3254 0))(
  ( (Context!3255 (exprs!2127 List!25385)) )
))
(declare-fun z!4055 () (InoxSet Context!3254))

(declare-fun b!2189526 () Bool)

(declare-fun matchZipper!173 ((InoxSet Context!3254) List!25384) Bool)

(declare-fun take!265 (List!25384 Int) List!25384)

(declare-fun drop!1275 (List!25384 Int) List!25384)

(assert (=> b!2189526 (= e!1399101 (matchZipper!173 z!4055 (take!265 (drop!1275 lt!817868 lt!817886) lt!817864)))))

(declare-fun b!2189527 () Bool)

(declare-fun tp!682564 () Bool)

(declare-fun tp!682569 () Bool)

(assert (=> b!2189527 (= e!1399104 (and tp!682564 tp!682569))))

(declare-fun b!2189528 () Bool)

(declare-fun e!1399116 () Bool)

(declare-datatypes ((IArray!16391 0))(
  ( (IArray!16392 (innerList!8253 List!25384)) )
))
(declare-datatypes ((Conc!8193 0))(
  ( (Node!8193 (left!19416 Conc!8193) (right!19746 Conc!8193) (csize!16616 Int) (cheight!8404 Int)) (Leaf!11989 (xs!11135 IArray!16391) (csize!16617 Int)) (Empty!8193) )
))
(declare-datatypes ((BalanceConc!16148 0))(
  ( (BalanceConc!16149 (c!348361 Conc!8193)) )
))
(declare-fun totalInput!977 () BalanceConc!16148)

(declare-fun tp!682568 () Bool)

(declare-fun inv!33657 (Conc!8193) Bool)

(assert (=> b!2189528 (= e!1399116 (and (inv!33657 (c!348361 totalInput!977)) tp!682568))))

(declare-fun b!2189529 () Bool)

(declare-fun e!1399105 () Int)

(assert (=> b!2189529 (= e!1399105 (- lt!817886 1))))

(declare-fun b!2189530 () Bool)

(declare-fun e!1399106 () Bool)

(declare-fun e!1399113 () Bool)

(assert (=> b!2189530 (= e!1399106 e!1399113)))

(declare-fun res!940601 () Bool)

(assert (=> b!2189530 (=> res!940601 e!1399113)))

(declare-fun e!1399107 () Bool)

(assert (=> b!2189530 (= res!940601 e!1399107)))

(declare-fun res!940607 () Bool)

(assert (=> b!2189530 (=> (not res!940607) (not e!1399107))))

(declare-fun lt!817873 () Bool)

(assert (=> b!2189530 (= res!940607 (not lt!817873))))

(declare-fun r!12534 () Regex!6057)

(declare-datatypes ((tuple2!25114 0))(
  ( (tuple2!25115 (_1!14927 List!25384) (_2!14927 List!25384)) )
))
(declare-fun lt!817885 () tuple2!25114)

(declare-fun matchR!2806 (Regex!6057 List!25384) Bool)

(assert (=> b!2189530 (= lt!817873 (matchR!2806 r!12534 (_1!14927 lt!817885)))))

(declare-fun b!2189531 () Bool)

(declare-fun e!1399110 () Bool)

(assert (=> b!2189531 (= e!1399113 e!1399110)))

(declare-fun res!940602 () Bool)

(assert (=> b!2189531 (=> res!940602 e!1399110)))

(declare-fun lt!817871 () Int)

(declare-fun lt!817865 () Int)

(assert (=> b!2189531 (= res!940602 (or (> lt!817871 lt!817865) (> lt!817865 lt!817871)))))

(declare-datatypes ((tuple2!25116 0))(
  ( (tuple2!25117 (_1!14928 BalanceConc!16148) (_2!14928 BalanceConc!16148)) )
))
(declare-fun lt!817877 () tuple2!25116)

(declare-fun size!19770 (BalanceConc!16148) Int)

(assert (=> b!2189531 (= lt!817865 (size!19770 (_1!14928 lt!817877)))))

(declare-fun size!19771 (List!25384) Int)

(assert (=> b!2189531 (= lt!817871 (size!19771 (_1!14927 lt!817885)))))

(declare-fun lt!817861 () List!25384)

(declare-fun lt!817880 () Bool)

(assert (=> b!2189531 (= (matchR!2806 r!12534 lt!817861) lt!817880)))

(declare-datatypes ((Unit!38445 0))(
  ( (Unit!38446) )
))
(declare-fun lt!817866 () Unit!38445)

(declare-datatypes ((List!25386 0))(
  ( (Nil!25302) (Cons!25302 (h!30703 Context!3254) (t!197984 List!25386)) )
))
(declare-fun lt!817879 () List!25386)

(declare-fun theoremZipperRegexEquiv!83 ((InoxSet Context!3254) List!25386 Regex!6057 List!25384) Unit!38445)

(assert (=> b!2189531 (= lt!817866 (theoremZipperRegexEquiv!83 z!4055 lt!817879 r!12534 lt!817861))))

(assert (=> b!2189531 (= lt!817873 (matchZipper!173 z!4055 (_1!14927 lt!817885)))))

(declare-fun lt!817869 () Unit!38445)

(assert (=> b!2189531 (= lt!817869 (theoremZipperRegexEquiv!83 z!4055 lt!817879 r!12534 (_1!14927 lt!817885)))))

(declare-fun b!2189533 () Bool)

(declare-fun e!1399111 () Bool)

(declare-fun e!1399117 () Bool)

(assert (=> b!2189533 (= e!1399111 e!1399117)))

(declare-fun res!940603 () Bool)

(assert (=> b!2189533 (=> (not res!940603) (not e!1399117))))

(declare-fun lt!817870 () List!25384)

(declare-fun isSuffix!724 (List!25384 List!25384) Bool)

(assert (=> b!2189533 (= res!940603 (isSuffix!724 lt!817870 lt!817868))))

(declare-fun list!9720 (BalanceConc!16148) List!25384)

(assert (=> b!2189533 (= lt!817868 (list!9720 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16148)

(assert (=> b!2189533 (= lt!817870 (list!9720 input!5540))))

(declare-fun b!2189534 () Bool)

(declare-fun e!1399115 () Bool)

(assert (=> b!2189534 (= e!1399117 e!1399115)))

(declare-fun res!940608 () Bool)

(assert (=> b!2189534 (=> (not res!940608) (not e!1399115))))

(declare-fun lt!817872 () List!25384)

(assert (=> b!2189534 (= res!940608 (= lt!817872 lt!817870))))

(declare-fun lt!817882 () List!25384)

(declare-fun ++!6418 (List!25384 List!25384) List!25384)

(assert (=> b!2189534 (= lt!817872 (++!6418 lt!817861 lt!817882))))

(assert (=> b!2189534 (= lt!817882 (list!9720 (_2!14928 lt!817877)))))

(assert (=> b!2189534 (= lt!817861 (list!9720 (_1!14928 lt!817877)))))

(declare-fun findLongestMatch!611 (Regex!6057 List!25384) tuple2!25114)

(assert (=> b!2189534 (= lt!817885 (findLongestMatch!611 r!12534 lt!817870))))

(declare-fun lt!817881 () Int)

(assert (=> b!2189534 (= lt!817886 (- lt!817881 (size!19770 input!5540)))))

(assert (=> b!2189534 (= lt!817881 (size!19770 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!106 ((InoxSet Context!3254) BalanceConc!16148 BalanceConc!16148) tuple2!25116)

(assert (=> b!2189534 (= lt!817877 (findLongestMatchZipperSequenceV3!106 z!4055 input!5540 totalInput!977))))

(declare-fun setIsEmpty!18396 () Bool)

(declare-fun setRes!18396 () Bool)

(assert (=> setIsEmpty!18396 setRes!18396))

(declare-fun b!2189535 () Bool)

(declare-fun e!1399114 () Bool)

(declare-fun tp!682567 () Bool)

(assert (=> b!2189535 (= e!1399114 (and (inv!33657 (c!348361 input!5540)) tp!682567))))

(declare-fun b!2189536 () Bool)

(declare-fun e!1399112 () Bool)

(assert (=> b!2189536 (= e!1399112 (not e!1399106))))

(declare-fun res!940611 () Bool)

(assert (=> b!2189536 (=> res!940611 e!1399106)))

(declare-fun e!1399102 () Bool)

(assert (=> b!2189536 (= res!940611 e!1399102)))

(declare-fun res!940610 () Bool)

(assert (=> b!2189536 (=> (not res!940610) (not e!1399102))))

(assert (=> b!2189536 (= res!940610 (not lt!817880))))

(assert (=> b!2189536 (= lt!817880 (matchZipper!173 z!4055 lt!817861))))

(declare-fun e!1399103 () Bool)

(assert (=> b!2189536 e!1399103))

(declare-fun res!940600 () Bool)

(assert (=> b!2189536 (=> res!940600 e!1399103)))

(declare-fun lt!817867 () tuple2!25114)

(declare-fun isEmpty!14553 (List!25384) Bool)

(assert (=> b!2189536 (= res!940600 (isEmpty!14553 (_1!14927 lt!817867)))))

(declare-fun findLongestMatchInner!682 (Regex!6057 List!25384 Int List!25384 List!25384 Int) tuple2!25114)

(assert (=> b!2189536 (= lt!817867 (findLongestMatchInner!682 r!12534 Nil!25300 (size!19771 Nil!25300) lt!817870 lt!817870 (size!19771 lt!817870)))))

(declare-fun lt!817875 () Unit!38445)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!655 (Regex!6057 List!25384) Unit!38445)

(assert (=> b!2189536 (= lt!817875 (longestMatchIsAcceptedByMatchOrIsEmpty!655 r!12534 lt!817870))))

(assert (=> b!2189536 e!1399101))

(declare-fun res!940606 () Bool)

(assert (=> b!2189536 (=> res!940606 e!1399101)))

(assert (=> b!2189536 (= res!940606 (<= lt!817864 0))))

(declare-fun lt!817862 () Int)

(declare-fun furthestNullablePosition!239 ((InoxSet Context!3254) Int BalanceConc!16148 Int Int) Int)

(assert (=> b!2189536 (= lt!817864 (+ 1 (- (furthestNullablePosition!239 z!4055 lt!817886 totalInput!977 lt!817881 lt!817862) lt!817886)))))

(declare-fun lt!817863 () Unit!38445)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!80 ((InoxSet Context!3254) Int BalanceConc!16148 Int) Unit!38445)

(assert (=> b!2189536 (= lt!817863 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!80 z!4055 lt!817886 totalInput!977 lt!817862))))

(assert (=> b!2189536 (= lt!817862 e!1399105)))

(declare-fun c!348359 () Bool)

(declare-fun nullableZipper!337 ((InoxSet Context!3254)) Bool)

(assert (=> b!2189536 (= c!348359 (nullableZipper!337 z!4055))))

(declare-fun isPrefix!2173 (List!25384 List!25384) Bool)

(assert (=> b!2189536 (isPrefix!2173 (take!265 lt!817868 lt!817886) lt!817868)))

(declare-fun lt!817876 () Unit!38445)

(declare-fun lemmaTakeIsPrefix!88 (List!25384 Int) Unit!38445)

(assert (=> b!2189536 (= lt!817876 (lemmaTakeIsPrefix!88 lt!817868 lt!817886))))

(declare-fun lt!817884 () List!25384)

(assert (=> b!2189536 (isPrefix!2173 (_1!14927 lt!817885) lt!817884)))

(declare-fun lt!817883 () Unit!38445)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1456 (List!25384 List!25384) Unit!38445)

(assert (=> b!2189536 (= lt!817883 (lemmaConcatTwoListThenFirstIsPrefix!1456 (_1!14927 lt!817885) (_2!14927 lt!817885)))))

(assert (=> b!2189536 (isPrefix!2173 lt!817861 lt!817872)))

(declare-fun lt!817874 () Unit!38445)

(assert (=> b!2189536 (= lt!817874 (lemmaConcatTwoListThenFirstIsPrefix!1456 lt!817861 lt!817882))))

(declare-fun b!2189537 () Bool)

(assert (=> b!2189537 (= e!1399103 (matchR!2806 r!12534 (_1!14927 lt!817867)))))

(declare-fun b!2189538 () Bool)

(assert (=> b!2189538 (= e!1399115 e!1399112)))

(declare-fun res!940604 () Bool)

(assert (=> b!2189538 (=> (not res!940604) (not e!1399112))))

(assert (=> b!2189538 (= res!940604 (= lt!817884 lt!817870))))

(assert (=> b!2189538 (= lt!817884 (++!6418 (_1!14927 lt!817885) (_2!14927 lt!817885)))))

(declare-fun res!940605 () Bool)

(declare-fun e!1399108 () Bool)

(assert (=> start!212430 (=> (not res!940605) (not e!1399108))))

(declare-fun validRegex!2333 (Regex!6057) Bool)

(assert (=> start!212430 (= res!940605 (validRegex!2333 r!12534))))

(assert (=> start!212430 e!1399108))

(assert (=> start!212430 e!1399104))

(declare-fun inv!33658 (BalanceConc!16148) Bool)

(assert (=> start!212430 (and (inv!33658 totalInput!977) e!1399116)))

(assert (=> start!212430 (and (inv!33658 input!5540) e!1399114)))

(declare-fun condSetEmpty!18396 () Bool)

(assert (=> start!212430 (= condSetEmpty!18396 (= z!4055 ((as const (Array Context!3254 Bool)) false)))))

(assert (=> start!212430 setRes!18396))

(declare-fun b!2189532 () Bool)

(declare-fun tp!682563 () Bool)

(declare-fun tp!682570 () Bool)

(assert (=> b!2189532 (= e!1399104 (and tp!682563 tp!682570))))

(declare-fun b!2189539 () Bool)

(declare-fun e!1399109 () Bool)

(declare-fun tp!682562 () Bool)

(assert (=> b!2189539 (= e!1399109 tp!682562)))

(declare-fun b!2189540 () Bool)

(assert (=> b!2189540 (= e!1399110 (isPrefix!2173 lt!817861 lt!817870))))

(assert (=> b!2189540 (= lt!817861 (_1!14927 lt!817885))))

(declare-fun lt!817878 () Unit!38445)

(declare-fun lemmaIsPrefixSameLengthThenSameList!375 (List!25384 List!25384 List!25384) Unit!38445)

(assert (=> b!2189540 (= lt!817878 (lemmaIsPrefixSameLengthThenSameList!375 lt!817861 (_1!14927 lt!817885) lt!817870))))

(declare-fun tp!682566 () Bool)

(declare-fun setNonEmpty!18396 () Bool)

(declare-fun setElem!18396 () Context!3254)

(declare-fun inv!33659 (Context!3254) Bool)

(assert (=> setNonEmpty!18396 (= setRes!18396 (and tp!682566 (inv!33659 setElem!18396) e!1399109))))

(declare-fun setRest!18396 () (InoxSet Context!3254))

(assert (=> setNonEmpty!18396 (= z!4055 ((_ map or) (store ((as const (Array Context!3254 Bool)) false) setElem!18396 true) setRest!18396))))

(declare-fun b!2189541 () Bool)

(assert (=> b!2189541 (= e!1399108 e!1399111)))

(declare-fun res!940609 () Bool)

(assert (=> b!2189541 (=> (not res!940609) (not e!1399111))))

(declare-fun unfocusZipper!164 (List!25386) Regex!6057)

(assert (=> b!2189541 (= res!940609 (= (unfocusZipper!164 lt!817879) r!12534))))

(declare-fun toList!1240 ((InoxSet Context!3254)) List!25386)

(assert (=> b!2189541 (= lt!817879 (toList!1240 z!4055))))

(declare-fun b!2189542 () Bool)

(declare-fun isEmpty!14554 (BalanceConc!16148) Bool)

(assert (=> b!2189542 (= e!1399102 (not (isEmpty!14554 (_1!14928 lt!817877))))))

(declare-fun b!2189543 () Bool)

(assert (=> b!2189543 (= e!1399107 (not (isEmpty!14553 (_1!14927 lt!817885))))))

(declare-fun b!2189544 () Bool)

(assert (=> b!2189544 (= e!1399105 (- 1))))

(declare-fun b!2189545 () Bool)

(declare-fun tp_is_empty!9721 () Bool)

(assert (=> b!2189545 (= e!1399104 tp_is_empty!9721)))

(assert (= (and start!212430 res!940605) b!2189541))

(assert (= (and b!2189541 res!940609) b!2189533))

(assert (= (and b!2189533 res!940603) b!2189534))

(assert (= (and b!2189534 res!940608) b!2189538))

(assert (= (and b!2189538 res!940604) b!2189536))

(assert (= (and b!2189536 c!348359) b!2189529))

(assert (= (and b!2189536 (not c!348359)) b!2189544))

(assert (= (and b!2189536 (not res!940606)) b!2189526))

(assert (= (and b!2189536 (not res!940600)) b!2189537))

(assert (= (and b!2189536 res!940610) b!2189542))

(assert (= (and b!2189536 (not res!940611)) b!2189530))

(assert (= (and b!2189530 res!940607) b!2189543))

(assert (= (and b!2189530 (not res!940601)) b!2189531))

(assert (= (and b!2189531 (not res!940602)) b!2189540))

(get-info :version)

(assert (= (and start!212430 ((_ is ElementMatch!6057) r!12534)) b!2189545))

(assert (= (and start!212430 ((_ is Concat!10359) r!12534)) b!2189532))

(assert (= (and start!212430 ((_ is Star!6057) r!12534)) b!2189525))

(assert (= (and start!212430 ((_ is Union!6057) r!12534)) b!2189527))

(assert (= start!212430 b!2189528))

(assert (= start!212430 b!2189535))

(assert (= (and start!212430 condSetEmpty!18396) setIsEmpty!18396))

(assert (= (and start!212430 (not condSetEmpty!18396)) setNonEmpty!18396))

(assert (= setNonEmpty!18396 b!2189539))

(declare-fun m!2632447 () Bool)

(assert (=> setNonEmpty!18396 m!2632447))

(declare-fun m!2632449 () Bool)

(assert (=> b!2189528 m!2632449))

(declare-fun m!2632451 () Bool)

(assert (=> b!2189543 m!2632451))

(declare-fun m!2632453 () Bool)

(assert (=> b!2189540 m!2632453))

(declare-fun m!2632455 () Bool)

(assert (=> b!2189540 m!2632455))

(declare-fun m!2632457 () Bool)

(assert (=> b!2189536 m!2632457))

(declare-fun m!2632459 () Bool)

(assert (=> b!2189536 m!2632459))

(declare-fun m!2632461 () Bool)

(assert (=> b!2189536 m!2632461))

(declare-fun m!2632463 () Bool)

(assert (=> b!2189536 m!2632463))

(declare-fun m!2632465 () Bool)

(assert (=> b!2189536 m!2632465))

(declare-fun m!2632467 () Bool)

(assert (=> b!2189536 m!2632467))

(declare-fun m!2632469 () Bool)

(assert (=> b!2189536 m!2632469))

(declare-fun m!2632471 () Bool)

(assert (=> b!2189536 m!2632471))

(declare-fun m!2632473 () Bool)

(assert (=> b!2189536 m!2632473))

(declare-fun m!2632475 () Bool)

(assert (=> b!2189536 m!2632475))

(declare-fun m!2632477 () Bool)

(assert (=> b!2189536 m!2632477))

(declare-fun m!2632479 () Bool)

(assert (=> b!2189536 m!2632479))

(declare-fun m!2632481 () Bool)

(assert (=> b!2189536 m!2632481))

(assert (=> b!2189536 m!2632457))

(declare-fun m!2632483 () Bool)

(assert (=> b!2189536 m!2632483))

(declare-fun m!2632485 () Bool)

(assert (=> b!2189536 m!2632485))

(assert (=> b!2189536 m!2632483))

(assert (=> b!2189536 m!2632475))

(declare-fun m!2632487 () Bool)

(assert (=> b!2189536 m!2632487))

(declare-fun m!2632489 () Bool)

(assert (=> start!212430 m!2632489))

(declare-fun m!2632491 () Bool)

(assert (=> start!212430 m!2632491))

(declare-fun m!2632493 () Bool)

(assert (=> start!212430 m!2632493))

(declare-fun m!2632495 () Bool)

(assert (=> b!2189537 m!2632495))

(declare-fun m!2632497 () Bool)

(assert (=> b!2189535 m!2632497))

(declare-fun m!2632499 () Bool)

(assert (=> b!2189531 m!2632499))

(declare-fun m!2632501 () Bool)

(assert (=> b!2189531 m!2632501))

(declare-fun m!2632503 () Bool)

(assert (=> b!2189531 m!2632503))

(declare-fun m!2632505 () Bool)

(assert (=> b!2189531 m!2632505))

(declare-fun m!2632507 () Bool)

(assert (=> b!2189531 m!2632507))

(declare-fun m!2632509 () Bool)

(assert (=> b!2189531 m!2632509))

(declare-fun m!2632511 () Bool)

(assert (=> b!2189530 m!2632511))

(declare-fun m!2632513 () Bool)

(assert (=> b!2189534 m!2632513))

(declare-fun m!2632515 () Bool)

(assert (=> b!2189534 m!2632515))

(declare-fun m!2632517 () Bool)

(assert (=> b!2189534 m!2632517))

(declare-fun m!2632519 () Bool)

(assert (=> b!2189534 m!2632519))

(declare-fun m!2632521 () Bool)

(assert (=> b!2189534 m!2632521))

(declare-fun m!2632523 () Bool)

(assert (=> b!2189534 m!2632523))

(declare-fun m!2632525 () Bool)

(assert (=> b!2189534 m!2632525))

(declare-fun m!2632527 () Bool)

(assert (=> b!2189533 m!2632527))

(declare-fun m!2632529 () Bool)

(assert (=> b!2189533 m!2632529))

(declare-fun m!2632531 () Bool)

(assert (=> b!2189533 m!2632531))

(declare-fun m!2632533 () Bool)

(assert (=> b!2189538 m!2632533))

(declare-fun m!2632535 () Bool)

(assert (=> b!2189526 m!2632535))

(assert (=> b!2189526 m!2632535))

(declare-fun m!2632537 () Bool)

(assert (=> b!2189526 m!2632537))

(assert (=> b!2189526 m!2632537))

(declare-fun m!2632539 () Bool)

(assert (=> b!2189526 m!2632539))

(declare-fun m!2632541 () Bool)

(assert (=> b!2189542 m!2632541))

(declare-fun m!2632543 () Bool)

(assert (=> b!2189541 m!2632543))

(declare-fun m!2632545 () Bool)

(assert (=> b!2189541 m!2632545))

(check-sat (not b!2189540) (not b!2189537) (not b!2189543) (not b!2189531) (not start!212430) (not b!2189539) (not setNonEmpty!18396) (not b!2189530) (not b!2189528) (not b!2189533) (not b!2189538) (not b!2189526) (not b!2189541) (not b!2189535) (not b!2189536) (not b!2189525) tp_is_empty!9721 (not b!2189527) (not b!2189532) (not b!2189534) (not b!2189542))
(check-sat)
