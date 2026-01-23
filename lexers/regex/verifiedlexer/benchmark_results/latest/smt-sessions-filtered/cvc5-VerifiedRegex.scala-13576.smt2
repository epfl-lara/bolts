; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!730094 () Bool)

(assert start!730094)

(declare-fun b!7550618 () Bool)

(declare-fun e!4497763 () Bool)

(declare-fun e!4497755 () Bool)

(assert (=> b!7550618 (= e!4497763 e!4497755)))

(declare-fun res!3026407 () Bool)

(assert (=> b!7550618 (=> (not res!3026407) (not e!4497755))))

(declare-fun lt!2646736 () Int)

(declare-fun lt!2646742 () Int)

(assert (=> b!7550618 (= res!3026407 (>= lt!2646736 lt!2646742))))

(declare-datatypes ((C!40218 0))(
  ( (C!40219 (val!30549 Int)) )
))
(declare-datatypes ((List!72829 0))(
  ( (Nil!72705) (Cons!72705 (h!79153 C!40218) (t!387548 List!72829)) )
))
(declare-fun testedP!423 () List!72829)

(declare-fun size!42442 (List!72829) Int)

(assert (=> b!7550618 (= lt!2646742 (size!42442 testedP!423))))

(declare-fun knownP!30 () List!72829)

(assert (=> b!7550618 (= lt!2646736 (size!42442 knownP!30))))

(declare-fun b!7550619 () Bool)

(declare-fun res!3026410 () Bool)

(declare-fun e!4497759 () Bool)

(assert (=> b!7550619 (=> res!3026410 e!4497759)))

(assert (=> b!7550619 (= res!3026410 (= lt!2646742 lt!2646736))))

(declare-fun b!7550620 () Bool)

(declare-fun res!3026408 () Bool)

(assert (=> b!7550620 (=> (not res!3026408) (not e!4497763))))

(declare-fun input!7874 () List!72829)

(declare-fun isPrefix!6152 (List!72829 List!72829) Bool)

(assert (=> b!7550620 (= res!3026408 (isPrefix!6152 testedP!423 input!7874))))

(declare-fun b!7550621 () Bool)

(declare-fun e!4497760 () Bool)

(declare-fun tp!2196598 () Bool)

(declare-fun tp!2196591 () Bool)

(assert (=> b!7550621 (= e!4497760 (and tp!2196598 tp!2196591))))

(declare-fun b!7550622 () Bool)

(declare-fun res!3026413 () Bool)

(declare-fun e!4497754 () Bool)

(assert (=> b!7550622 (=> res!3026413 e!4497754)))

(declare-fun lt!2646751 () List!72829)

(declare-fun ++!17462 (List!72829 List!72829) List!72829)

(assert (=> b!7550622 (= res!3026413 (not (= (++!17462 testedP!423 lt!2646751) input!7874)))))

(declare-fun b!7550623 () Bool)

(declare-fun e!4497753 () Bool)

(declare-fun tp_is_empty!50247 () Bool)

(declare-fun tp!2196589 () Bool)

(assert (=> b!7550623 (= e!4497753 (and tp_is_empty!50247 tp!2196589))))

(declare-fun b!7550624 () Bool)

(assert (=> b!7550624 (= e!4497755 (not e!4497759))))

(declare-fun res!3026400 () Bool)

(assert (=> b!7550624 (=> res!3026400 e!4497759)))

(declare-datatypes ((Regex!19946 0))(
  ( (ElementMatch!19946 (c!1393653 C!40218)) (Concat!28791 (regOne!40404 Regex!19946) (regTwo!40404 Regex!19946)) (EmptyExpr!19946) (Star!19946 (reg!20275 Regex!19946)) (EmptyLang!19946) (Union!19946 (regOne!40405 Regex!19946) (regTwo!40405 Regex!19946)) )
))
(declare-fun r!24333 () Regex!19946)

(declare-fun lt!2646737 () List!72829)

(declare-fun matchR!9548 (Regex!19946 List!72829) Bool)

(assert (=> b!7550624 (= res!3026400 (not (matchR!9548 r!24333 lt!2646737)))))

(declare-fun getSuffix!3632 (List!72829 List!72829) List!72829)

(assert (=> b!7550624 (= lt!2646737 (getSuffix!3632 knownP!30 testedP!423))))

(assert (=> b!7550624 (isPrefix!6152 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166830 0))(
  ( (Unit!166831) )
))
(declare-fun lt!2646740 () Unit!166830)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!902 (List!72829 List!72829 List!72829) Unit!166830)

(assert (=> b!7550624 (= lt!2646740 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!902 knownP!30 testedP!423 input!7874))))

(declare-fun res!3026405 () Bool)

(assert (=> start!730094 (=> (not res!3026405) (not e!4497763))))

(declare-fun baseR!101 () Regex!19946)

(declare-fun validRegex!10374 (Regex!19946) Bool)

(assert (=> start!730094 (= res!3026405 (validRegex!10374 baseR!101))))

(assert (=> start!730094 e!4497763))

(declare-fun e!4497761 () Bool)

(assert (=> start!730094 e!4497761))

(declare-fun e!4497762 () Bool)

(assert (=> start!730094 e!4497762))

(assert (=> start!730094 e!4497753))

(declare-fun e!4497758 () Bool)

(assert (=> start!730094 e!4497758))

(assert (=> start!730094 e!4497760))

(declare-fun b!7550625 () Bool)

(assert (=> b!7550625 (= e!4497760 tp_is_empty!50247)))

(declare-fun b!7550626 () Bool)

(declare-fun res!3026406 () Bool)

(assert (=> b!7550626 (=> (not res!3026406) (not e!4497763))))

(assert (=> b!7550626 (= res!3026406 (validRegex!10374 r!24333))))

(declare-fun b!7550627 () Bool)

(declare-fun tp!2196588 () Bool)

(declare-fun tp!2196597 () Bool)

(assert (=> b!7550627 (= e!4497760 (and tp!2196588 tp!2196597))))

(declare-fun b!7550628 () Bool)

(declare-fun tp!2196590 () Bool)

(declare-fun tp!2196595 () Bool)

(assert (=> b!7550628 (= e!4497761 (and tp!2196590 tp!2196595))))

(declare-fun b!7550629 () Bool)

(declare-fun res!3026399 () Bool)

(assert (=> b!7550629 (=> res!3026399 e!4497759)))

(declare-fun lostCause!1738 (Regex!19946) Bool)

(assert (=> b!7550629 (= res!3026399 (lostCause!1738 r!24333))))

(declare-fun b!7550630 () Bool)

(declare-fun tp!2196586 () Bool)

(assert (=> b!7550630 (= e!4497761 tp!2196586)))

(declare-fun b!7550631 () Bool)

(declare-fun res!3026411 () Bool)

(assert (=> b!7550631 (=> res!3026411 e!4497759)))

(declare-fun derivative!478 (Regex!19946 List!72829) Regex!19946)

(assert (=> b!7550631 (= res!3026411 (not (= (derivative!478 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7550632 () Bool)

(declare-fun e!4497752 () Bool)

(assert (=> b!7550632 (= e!4497754 e!4497752)))

(declare-fun res!3026403 () Bool)

(assert (=> b!7550632 (=> res!3026403 e!4497752)))

(declare-fun lt!2646741 () List!72829)

(assert (=> b!7550632 (= res!3026403 (not (= lt!2646741 input!7874)))))

(declare-fun lt!2646739 () List!72829)

(assert (=> b!7550632 (= lt!2646739 lt!2646741)))

(declare-fun lt!2646749 () List!72829)

(assert (=> b!7550632 (= lt!2646741 (++!17462 testedP!423 lt!2646749))))

(declare-fun lt!2646738 () List!72829)

(assert (=> b!7550632 (= lt!2646749 (++!17462 lt!2646737 lt!2646738))))

(declare-fun lt!2646747 () Unit!166830)

(declare-fun lemmaConcatAssociativity!3101 (List!72829 List!72829 List!72829) Unit!166830)

(assert (=> b!7550632 (= lt!2646747 (lemmaConcatAssociativity!3101 testedP!423 lt!2646737 lt!2646738))))

(declare-fun b!7550633 () Bool)

(declare-fun e!4497756 () Bool)

(assert (=> b!7550633 (= e!4497752 e!4497756)))

(declare-fun res!3026401 () Bool)

(assert (=> b!7550633 (=> res!3026401 e!4497756)))

(declare-fun lt!2646748 () C!40218)

(declare-fun head!15536 (List!72829) C!40218)

(assert (=> b!7550633 (= res!3026401 (not (= (head!15536 lt!2646737) lt!2646748)))))

(assert (=> b!7550633 (= lt!2646749 lt!2646751)))

(declare-fun lt!2646752 () Unit!166830)

(declare-fun lemmaSamePrefixThenSameSuffix!2868 (List!72829 List!72829 List!72829 List!72829 List!72829) Unit!166830)

(assert (=> b!7550633 (= lt!2646752 (lemmaSamePrefixThenSameSuffix!2868 testedP!423 lt!2646749 testedP!423 lt!2646751 input!7874))))

(declare-fun b!7550634 () Bool)

(declare-fun res!3026404 () Bool)

(assert (=> b!7550634 (=> res!3026404 e!4497756)))

(declare-fun $colon$colon!3390 (List!72829 C!40218) List!72829)

(declare-fun tail!15078 (List!72829) List!72829)

(assert (=> b!7550634 (= res!3026404 (not (= lt!2646737 ($colon$colon!3390 (tail!15078 lt!2646737) lt!2646748))))))

(declare-fun b!7550635 () Bool)

(declare-fun e!4497757 () Bool)

(assert (=> b!7550635 (= e!4497759 e!4497757)))

(declare-fun res!3026397 () Bool)

(assert (=> b!7550635 (=> res!3026397 e!4497757)))

(assert (=> b!7550635 (= res!3026397 (not (= (++!17462 knownP!30 lt!2646738) input!7874)))))

(assert (=> b!7550635 (= lt!2646738 (getSuffix!3632 input!7874 knownP!30))))

(declare-fun lt!2646750 () List!72829)

(declare-fun lt!2646735 () List!72829)

(assert (=> b!7550635 (= lt!2646750 (getSuffix!3632 knownP!30 lt!2646735))))

(assert (=> b!7550635 (isPrefix!6152 lt!2646735 knownP!30)))

(declare-fun lt!2646743 () Unit!166830)

(assert (=> b!7550635 (= lt!2646743 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!902 knownP!30 lt!2646735 input!7874))))

(declare-fun derivativeStep!5736 (Regex!19946 C!40218) Regex!19946)

(assert (=> b!7550635 (= (derivative!478 baseR!101 lt!2646735) (derivativeStep!5736 r!24333 lt!2646748))))

(declare-fun lt!2646746 () Unit!166830)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!180 (Regex!19946 Regex!19946 List!72829 C!40218) Unit!166830)

(assert (=> b!7550635 (= lt!2646746 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!180 baseR!101 r!24333 testedP!423 lt!2646748))))

(assert (=> b!7550635 (isPrefix!6152 lt!2646735 input!7874)))

(declare-fun lt!2646745 () Unit!166830)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1213 (List!72829 List!72829) Unit!166830)

(assert (=> b!7550635 (= lt!2646745 (lemmaAddHeadSuffixToPrefixStillPrefix!1213 testedP!423 input!7874))))

(assert (=> b!7550635 (= lt!2646735 (++!17462 testedP!423 (Cons!72705 lt!2646748 Nil!72705)))))

(assert (=> b!7550635 (= lt!2646748 (head!15536 lt!2646751))))

(assert (=> b!7550635 (= lt!2646751 (getSuffix!3632 input!7874 testedP!423))))

(declare-fun b!7550636 () Bool)

(declare-fun lt!2646744 () List!72829)

(assert (=> b!7550636 (= e!4497756 (= lt!2646744 knownP!30))))

(declare-fun b!7550637 () Bool)

(declare-fun tp!2196592 () Bool)

(declare-fun tp!2196594 () Bool)

(assert (=> b!7550637 (= e!4497761 (and tp!2196592 tp!2196594))))

(declare-fun b!7550638 () Bool)

(declare-fun tp!2196596 () Bool)

(assert (=> b!7550638 (= e!4497762 (and tp_is_empty!50247 tp!2196596))))

(declare-fun b!7550639 () Bool)

(declare-fun tp!2196587 () Bool)

(assert (=> b!7550639 (= e!4497758 (and tp_is_empty!50247 tp!2196587))))

(declare-fun b!7550640 () Bool)

(assert (=> b!7550640 (= e!4497761 tp_is_empty!50247)))

(declare-fun b!7550641 () Bool)

(declare-fun res!3026402 () Bool)

(assert (=> b!7550641 (=> (not res!3026402) (not e!4497763))))

(assert (=> b!7550641 (= res!3026402 (isPrefix!6152 knownP!30 input!7874))))

(declare-fun b!7550642 () Bool)

(declare-fun res!3026409 () Bool)

(assert (=> b!7550642 (=> res!3026409 e!4497759)))

(assert (=> b!7550642 (= res!3026409 (>= lt!2646742 (size!42442 input!7874)))))

(declare-fun b!7550643 () Bool)

(assert (=> b!7550643 (= e!4497757 e!4497754)))

(declare-fun res!3026398 () Bool)

(assert (=> b!7550643 (=> res!3026398 e!4497754)))

(assert (=> b!7550643 (= res!3026398 (not (= lt!2646739 input!7874)))))

(assert (=> b!7550643 (= lt!2646739 (++!17462 lt!2646744 lt!2646738))))

(assert (=> b!7550643 (= lt!2646744 (++!17462 testedP!423 lt!2646737))))

(declare-fun b!7550644 () Bool)

(declare-fun res!3026412 () Bool)

(assert (=> b!7550644 (=> (not res!3026412) (not e!4497755))))

(assert (=> b!7550644 (= res!3026412 (matchR!9548 baseR!101 knownP!30))))

(declare-fun b!7550645 () Bool)

(declare-fun tp!2196593 () Bool)

(assert (=> b!7550645 (= e!4497760 tp!2196593)))

(assert (= (and start!730094 res!3026405) b!7550626))

(assert (= (and b!7550626 res!3026406) b!7550620))

(assert (= (and b!7550620 res!3026408) b!7550641))

(assert (= (and b!7550641 res!3026402) b!7550618))

(assert (= (and b!7550618 res!3026407) b!7550644))

(assert (= (and b!7550644 res!3026412) b!7550624))

(assert (= (and b!7550624 (not res!3026400)) b!7550631))

(assert (= (and b!7550631 (not res!3026411)) b!7550629))

(assert (= (and b!7550629 (not res!3026399)) b!7550619))

(assert (= (and b!7550619 (not res!3026410)) b!7550642))

(assert (= (and b!7550642 (not res!3026409)) b!7550635))

(assert (= (and b!7550635 (not res!3026397)) b!7550643))

(assert (= (and b!7550643 (not res!3026398)) b!7550622))

(assert (= (and b!7550622 (not res!3026413)) b!7550632))

(assert (= (and b!7550632 (not res!3026403)) b!7550633))

(assert (= (and b!7550633 (not res!3026401)) b!7550634))

(assert (= (and b!7550634 (not res!3026404)) b!7550636))

(assert (= (and start!730094 (is-ElementMatch!19946 baseR!101)) b!7550640))

(assert (= (and start!730094 (is-Concat!28791 baseR!101)) b!7550637))

(assert (= (and start!730094 (is-Star!19946 baseR!101)) b!7550630))

(assert (= (and start!730094 (is-Union!19946 baseR!101)) b!7550628))

(assert (= (and start!730094 (is-Cons!72705 input!7874)) b!7550638))

(assert (= (and start!730094 (is-Cons!72705 knownP!30)) b!7550623))

(assert (= (and start!730094 (is-Cons!72705 testedP!423)) b!7550639))

(assert (= (and start!730094 (is-ElementMatch!19946 r!24333)) b!7550625))

(assert (= (and start!730094 (is-Concat!28791 r!24333)) b!7550621))

(assert (= (and start!730094 (is-Star!19946 r!24333)) b!7550645))

(assert (= (and start!730094 (is-Union!19946 r!24333)) b!7550627))

(declare-fun m!8117638 () Bool)

(assert (=> b!7550631 m!8117638))

(declare-fun m!8117640 () Bool)

(assert (=> b!7550643 m!8117640))

(declare-fun m!8117642 () Bool)

(assert (=> b!7550643 m!8117642))

(declare-fun m!8117644 () Bool)

(assert (=> b!7550618 m!8117644))

(declare-fun m!8117646 () Bool)

(assert (=> b!7550618 m!8117646))

(declare-fun m!8117648 () Bool)

(assert (=> b!7550644 m!8117648))

(declare-fun m!8117650 () Bool)

(assert (=> b!7550634 m!8117650))

(assert (=> b!7550634 m!8117650))

(declare-fun m!8117652 () Bool)

(assert (=> b!7550634 m!8117652))

(declare-fun m!8117654 () Bool)

(assert (=> b!7550641 m!8117654))

(declare-fun m!8117656 () Bool)

(assert (=> b!7550632 m!8117656))

(declare-fun m!8117658 () Bool)

(assert (=> b!7550632 m!8117658))

(declare-fun m!8117660 () Bool)

(assert (=> b!7550632 m!8117660))

(declare-fun m!8117662 () Bool)

(assert (=> b!7550624 m!8117662))

(declare-fun m!8117664 () Bool)

(assert (=> b!7550624 m!8117664))

(declare-fun m!8117666 () Bool)

(assert (=> b!7550624 m!8117666))

(declare-fun m!8117668 () Bool)

(assert (=> b!7550624 m!8117668))

(declare-fun m!8117670 () Bool)

(assert (=> b!7550633 m!8117670))

(declare-fun m!8117672 () Bool)

(assert (=> b!7550633 m!8117672))

(declare-fun m!8117674 () Bool)

(assert (=> b!7550626 m!8117674))

(declare-fun m!8117676 () Bool)

(assert (=> b!7550629 m!8117676))

(declare-fun m!8117678 () Bool)

(assert (=> b!7550620 m!8117678))

(declare-fun m!8117680 () Bool)

(assert (=> start!730094 m!8117680))

(declare-fun m!8117682 () Bool)

(assert (=> b!7550642 m!8117682))

(declare-fun m!8117684 () Bool)

(assert (=> b!7550622 m!8117684))

(declare-fun m!8117686 () Bool)

(assert (=> b!7550635 m!8117686))

(declare-fun m!8117688 () Bool)

(assert (=> b!7550635 m!8117688))

(declare-fun m!8117690 () Bool)

(assert (=> b!7550635 m!8117690))

(declare-fun m!8117692 () Bool)

(assert (=> b!7550635 m!8117692))

(declare-fun m!8117694 () Bool)

(assert (=> b!7550635 m!8117694))

(declare-fun m!8117696 () Bool)

(assert (=> b!7550635 m!8117696))

(declare-fun m!8117698 () Bool)

(assert (=> b!7550635 m!8117698))

(declare-fun m!8117700 () Bool)

(assert (=> b!7550635 m!8117700))

(declare-fun m!8117702 () Bool)

(assert (=> b!7550635 m!8117702))

(declare-fun m!8117704 () Bool)

(assert (=> b!7550635 m!8117704))

(declare-fun m!8117706 () Bool)

(assert (=> b!7550635 m!8117706))

(declare-fun m!8117708 () Bool)

(assert (=> b!7550635 m!8117708))

(declare-fun m!8117710 () Bool)

(assert (=> b!7550635 m!8117710))

(push 1)

(assert (not b!7550639))

(assert (not b!7550635))

(assert (not b!7550644))

(assert (not b!7550645))

(assert (not b!7550626))

(assert (not b!7550632))

(assert (not b!7550630))

(assert (not b!7550634))

(assert (not b!7550641))

(assert (not b!7550628))

(assert (not b!7550624))

(assert (not start!730094))

(assert (not b!7550631))

(assert (not b!7550637))

(assert (not b!7550621))

(assert (not b!7550622))

(assert (not b!7550623))

(assert (not b!7550627))

(assert tp_is_empty!50247)

(assert (not b!7550618))

(assert (not b!7550633))

(assert (not b!7550642))

(assert (not b!7550629))

(assert (not b!7550638))

(assert (not b!7550643))

(assert (not b!7550620))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2312867 () Bool)

(declare-fun lt!2646813 () Regex!19946)

(assert (=> d!2312867 (validRegex!10374 lt!2646813)))

(declare-fun e!4497820 () Regex!19946)

(assert (=> d!2312867 (= lt!2646813 e!4497820)))

(declare-fun c!1393665 () Bool)

(assert (=> d!2312867 (= c!1393665 (is-Cons!72705 testedP!423))))

(assert (=> d!2312867 (validRegex!10374 baseR!101)))

(assert (=> d!2312867 (= (derivative!478 baseR!101 testedP!423) lt!2646813)))

(declare-fun b!7550760 () Bool)

(assert (=> b!7550760 (= e!4497820 (derivative!478 (derivativeStep!5736 baseR!101 (h!79153 testedP!423)) (t!387548 testedP!423)))))

(declare-fun b!7550761 () Bool)

(assert (=> b!7550761 (= e!4497820 baseR!101)))

(assert (= (and d!2312867 c!1393665) b!7550760))

(assert (= (and d!2312867 (not c!1393665)) b!7550761))

(declare-fun m!8117790 () Bool)

(assert (=> d!2312867 m!8117790))

(assert (=> d!2312867 m!8117680))

(declare-fun m!8117792 () Bool)

(assert (=> b!7550760 m!8117792))

(assert (=> b!7550760 m!8117792))

(declare-fun m!8117794 () Bool)

(assert (=> b!7550760 m!8117794))

(assert (=> b!7550631 d!2312867))

(declare-fun d!2312869 () Bool)

(declare-fun lt!2646816 () Int)

(assert (=> d!2312869 (>= lt!2646816 0)))

(declare-fun e!4497830 () Int)

(assert (=> d!2312869 (= lt!2646816 e!4497830)))

(declare-fun c!1393670 () Bool)

(assert (=> d!2312869 (= c!1393670 (is-Nil!72705 input!7874))))

(assert (=> d!2312869 (= (size!42442 input!7874) lt!2646816)))

(declare-fun b!7550775 () Bool)

(assert (=> b!7550775 (= e!4497830 0)))

(declare-fun b!7550776 () Bool)

(assert (=> b!7550776 (= e!4497830 (+ 1 (size!42442 (t!387548 input!7874))))))

(assert (= (and d!2312869 c!1393670) b!7550775))

(assert (= (and d!2312869 (not c!1393670)) b!7550776))

(declare-fun m!8117802 () Bool)

(assert (=> b!7550776 m!8117802))

(assert (=> b!7550642 d!2312869))

(declare-fun b!7550795 () Bool)

(declare-fun e!4497841 () Bool)

(assert (=> b!7550795 (= e!4497841 (isPrefix!6152 (tail!15078 knownP!30) (tail!15078 input!7874)))))

(declare-fun b!7550796 () Bool)

(declare-fun e!4497842 () Bool)

(assert (=> b!7550796 (= e!4497842 (>= (size!42442 input!7874) (size!42442 knownP!30)))))

(declare-fun d!2312873 () Bool)

(assert (=> d!2312873 e!4497842))

(declare-fun res!3026493 () Bool)

(assert (=> d!2312873 (=> res!3026493 e!4497842)))

(declare-fun lt!2646821 () Bool)

(assert (=> d!2312873 (= res!3026493 (not lt!2646821))))

(declare-fun e!4497843 () Bool)

(assert (=> d!2312873 (= lt!2646821 e!4497843)))

(declare-fun res!3026494 () Bool)

(assert (=> d!2312873 (=> res!3026494 e!4497843)))

(assert (=> d!2312873 (= res!3026494 (is-Nil!72705 knownP!30))))

(assert (=> d!2312873 (= (isPrefix!6152 knownP!30 input!7874) lt!2646821)))

(declare-fun b!7550793 () Bool)

(assert (=> b!7550793 (= e!4497843 e!4497841)))

(declare-fun res!3026492 () Bool)

(assert (=> b!7550793 (=> (not res!3026492) (not e!4497841))))

(assert (=> b!7550793 (= res!3026492 (not (is-Nil!72705 input!7874)))))

(declare-fun b!7550794 () Bool)

(declare-fun res!3026495 () Bool)

(assert (=> b!7550794 (=> (not res!3026495) (not e!4497841))))

(assert (=> b!7550794 (= res!3026495 (= (head!15536 knownP!30) (head!15536 input!7874)))))

(assert (= (and d!2312873 (not res!3026494)) b!7550793))

(assert (= (and b!7550793 res!3026492) b!7550794))

(assert (= (and b!7550794 res!3026495) b!7550795))

(assert (= (and d!2312873 (not res!3026493)) b!7550796))

(declare-fun m!8117804 () Bool)

(assert (=> b!7550795 m!8117804))

(declare-fun m!8117806 () Bool)

(assert (=> b!7550795 m!8117806))

(assert (=> b!7550795 m!8117804))

(assert (=> b!7550795 m!8117806))

(declare-fun m!8117808 () Bool)

(assert (=> b!7550795 m!8117808))

(assert (=> b!7550796 m!8117682))

(assert (=> b!7550796 m!8117646))

(declare-fun m!8117810 () Bool)

(assert (=> b!7550794 m!8117810))

(declare-fun m!8117812 () Bool)

(assert (=> b!7550794 m!8117812))

(assert (=> b!7550641 d!2312873))

(declare-fun b!7550799 () Bool)

(declare-fun e!4497844 () Bool)

(assert (=> b!7550799 (= e!4497844 (isPrefix!6152 (tail!15078 testedP!423) (tail!15078 input!7874)))))

(declare-fun b!7550800 () Bool)

(declare-fun e!4497845 () Bool)

(assert (=> b!7550800 (= e!4497845 (>= (size!42442 input!7874) (size!42442 testedP!423)))))

(declare-fun d!2312875 () Bool)

(assert (=> d!2312875 e!4497845))

(declare-fun res!3026497 () Bool)

(assert (=> d!2312875 (=> res!3026497 e!4497845)))

(declare-fun lt!2646822 () Bool)

(assert (=> d!2312875 (= res!3026497 (not lt!2646822))))

(declare-fun e!4497846 () Bool)

(assert (=> d!2312875 (= lt!2646822 e!4497846)))

(declare-fun res!3026498 () Bool)

(assert (=> d!2312875 (=> res!3026498 e!4497846)))

(assert (=> d!2312875 (= res!3026498 (is-Nil!72705 testedP!423))))

(assert (=> d!2312875 (= (isPrefix!6152 testedP!423 input!7874) lt!2646822)))

(declare-fun b!7550797 () Bool)

(assert (=> b!7550797 (= e!4497846 e!4497844)))

(declare-fun res!3026496 () Bool)

(assert (=> b!7550797 (=> (not res!3026496) (not e!4497844))))

(assert (=> b!7550797 (= res!3026496 (not (is-Nil!72705 input!7874)))))

(declare-fun b!7550798 () Bool)

(declare-fun res!3026499 () Bool)

(assert (=> b!7550798 (=> (not res!3026499) (not e!4497844))))

(assert (=> b!7550798 (= res!3026499 (= (head!15536 testedP!423) (head!15536 input!7874)))))

(assert (= (and d!2312875 (not res!3026498)) b!7550797))

(assert (= (and b!7550797 res!3026496) b!7550798))

(assert (= (and b!7550798 res!3026499) b!7550799))

(assert (= (and d!2312875 (not res!3026497)) b!7550800))

(declare-fun m!8117814 () Bool)

(assert (=> b!7550799 m!8117814))

(assert (=> b!7550799 m!8117806))

(assert (=> b!7550799 m!8117814))

(assert (=> b!7550799 m!8117806))

(declare-fun m!8117816 () Bool)

(assert (=> b!7550799 m!8117816))

(assert (=> b!7550800 m!8117682))

(assert (=> b!7550800 m!8117644))

(declare-fun m!8117818 () Bool)

(assert (=> b!7550798 m!8117818))

(assert (=> b!7550798 m!8117812))

(assert (=> b!7550620 d!2312875))

(declare-fun d!2312877 () Bool)

(declare-fun e!4497856 () Bool)

(assert (=> d!2312877 e!4497856))

(declare-fun res!3026509 () Bool)

(assert (=> d!2312877 (=> (not res!3026509) (not e!4497856))))

(declare-fun lt!2646827 () List!72829)

(declare-fun content!15389 (List!72829) (Set C!40218))

(assert (=> d!2312877 (= res!3026509 (= (content!15389 lt!2646827) (set.union (content!15389 lt!2646744) (content!15389 lt!2646738))))))

(declare-fun e!4497855 () List!72829)

(assert (=> d!2312877 (= lt!2646827 e!4497855)))

(declare-fun c!1393677 () Bool)

(assert (=> d!2312877 (= c!1393677 (is-Nil!72705 lt!2646744))))

(assert (=> d!2312877 (= (++!17462 lt!2646744 lt!2646738) lt!2646827)))

(declare-fun b!7550819 () Bool)

(declare-fun res!3026508 () Bool)

(assert (=> b!7550819 (=> (not res!3026508) (not e!4497856))))

(assert (=> b!7550819 (= res!3026508 (= (size!42442 lt!2646827) (+ (size!42442 lt!2646744) (size!42442 lt!2646738))))))

(declare-fun b!7550820 () Bool)

(assert (=> b!7550820 (= e!4497856 (or (not (= lt!2646738 Nil!72705)) (= lt!2646827 lt!2646744)))))

(declare-fun b!7550818 () Bool)

(assert (=> b!7550818 (= e!4497855 (Cons!72705 (h!79153 lt!2646744) (++!17462 (t!387548 lt!2646744) lt!2646738)))))

(declare-fun b!7550817 () Bool)

(assert (=> b!7550817 (= e!4497855 lt!2646738)))

(assert (= (and d!2312877 c!1393677) b!7550817))

(assert (= (and d!2312877 (not c!1393677)) b!7550818))

(assert (= (and d!2312877 res!3026509) b!7550819))

(assert (= (and b!7550819 res!3026508) b!7550820))

(declare-fun m!8117846 () Bool)

(assert (=> d!2312877 m!8117846))

(declare-fun m!8117848 () Bool)

(assert (=> d!2312877 m!8117848))

(declare-fun m!8117850 () Bool)

(assert (=> d!2312877 m!8117850))

(declare-fun m!8117852 () Bool)

(assert (=> b!7550819 m!8117852))

(declare-fun m!8117854 () Bool)

(assert (=> b!7550819 m!8117854))

(declare-fun m!8117856 () Bool)

(assert (=> b!7550819 m!8117856))

(declare-fun m!8117858 () Bool)

(assert (=> b!7550818 m!8117858))

(assert (=> b!7550643 d!2312877))

(declare-fun d!2312883 () Bool)

(declare-fun e!4497858 () Bool)

(assert (=> d!2312883 e!4497858))

(declare-fun res!3026511 () Bool)

(assert (=> d!2312883 (=> (not res!3026511) (not e!4497858))))

(declare-fun lt!2646828 () List!72829)

(assert (=> d!2312883 (= res!3026511 (= (content!15389 lt!2646828) (set.union (content!15389 testedP!423) (content!15389 lt!2646737))))))

(declare-fun e!4497857 () List!72829)

(assert (=> d!2312883 (= lt!2646828 e!4497857)))

(declare-fun c!1393678 () Bool)

(assert (=> d!2312883 (= c!1393678 (is-Nil!72705 testedP!423))))

(assert (=> d!2312883 (= (++!17462 testedP!423 lt!2646737) lt!2646828)))

(declare-fun b!7550823 () Bool)

(declare-fun res!3026510 () Bool)

(assert (=> b!7550823 (=> (not res!3026510) (not e!4497858))))

(assert (=> b!7550823 (= res!3026510 (= (size!42442 lt!2646828) (+ (size!42442 testedP!423) (size!42442 lt!2646737))))))

(declare-fun b!7550824 () Bool)

(assert (=> b!7550824 (= e!4497858 (or (not (= lt!2646737 Nil!72705)) (= lt!2646828 testedP!423)))))

(declare-fun b!7550822 () Bool)

(assert (=> b!7550822 (= e!4497857 (Cons!72705 (h!79153 testedP!423) (++!17462 (t!387548 testedP!423) lt!2646737)))))

(declare-fun b!7550821 () Bool)

(assert (=> b!7550821 (= e!4497857 lt!2646737)))

(assert (= (and d!2312883 c!1393678) b!7550821))

(assert (= (and d!2312883 (not c!1393678)) b!7550822))

(assert (= (and d!2312883 res!3026511) b!7550823))

(assert (= (and b!7550823 res!3026510) b!7550824))

(declare-fun m!8117860 () Bool)

(assert (=> d!2312883 m!8117860))

(declare-fun m!8117862 () Bool)

(assert (=> d!2312883 m!8117862))

(declare-fun m!8117864 () Bool)

(assert (=> d!2312883 m!8117864))

(declare-fun m!8117866 () Bool)

(assert (=> b!7550823 m!8117866))

(assert (=> b!7550823 m!8117644))

(declare-fun m!8117868 () Bool)

(assert (=> b!7550823 m!8117868))

(declare-fun m!8117870 () Bool)

(assert (=> b!7550822 m!8117870))

(assert (=> b!7550643 d!2312883))

(declare-fun d!2312885 () Bool)

(declare-fun e!4497860 () Bool)

(assert (=> d!2312885 e!4497860))

(declare-fun res!3026513 () Bool)

(assert (=> d!2312885 (=> (not res!3026513) (not e!4497860))))

(declare-fun lt!2646829 () List!72829)

(assert (=> d!2312885 (= res!3026513 (= (content!15389 lt!2646829) (set.union (content!15389 testedP!423) (content!15389 lt!2646751))))))

(declare-fun e!4497859 () List!72829)

(assert (=> d!2312885 (= lt!2646829 e!4497859)))

(declare-fun c!1393679 () Bool)

(assert (=> d!2312885 (= c!1393679 (is-Nil!72705 testedP!423))))

(assert (=> d!2312885 (= (++!17462 testedP!423 lt!2646751) lt!2646829)))

(declare-fun b!7550827 () Bool)

(declare-fun res!3026512 () Bool)

(assert (=> b!7550827 (=> (not res!3026512) (not e!4497860))))

(assert (=> b!7550827 (= res!3026512 (= (size!42442 lt!2646829) (+ (size!42442 testedP!423) (size!42442 lt!2646751))))))

(declare-fun b!7550828 () Bool)

(assert (=> b!7550828 (= e!4497860 (or (not (= lt!2646751 Nil!72705)) (= lt!2646829 testedP!423)))))

(declare-fun b!7550826 () Bool)

(assert (=> b!7550826 (= e!4497859 (Cons!72705 (h!79153 testedP!423) (++!17462 (t!387548 testedP!423) lt!2646751)))))

(declare-fun b!7550825 () Bool)

(assert (=> b!7550825 (= e!4497859 lt!2646751)))

(assert (= (and d!2312885 c!1393679) b!7550825))

(assert (= (and d!2312885 (not c!1393679)) b!7550826))

(assert (= (and d!2312885 res!3026513) b!7550827))

(assert (= (and b!7550827 res!3026512) b!7550828))

(declare-fun m!8117872 () Bool)

(assert (=> d!2312885 m!8117872))

(assert (=> d!2312885 m!8117862))

(declare-fun m!8117874 () Bool)

(assert (=> d!2312885 m!8117874))

(declare-fun m!8117876 () Bool)

(assert (=> b!7550827 m!8117876))

(assert (=> b!7550827 m!8117644))

(declare-fun m!8117878 () Bool)

(assert (=> b!7550827 m!8117878))

(declare-fun m!8117880 () Bool)

(assert (=> b!7550826 m!8117880))

(assert (=> b!7550622 d!2312885))

(declare-fun d!2312887 () Bool)

(declare-fun e!4497862 () Bool)

(assert (=> d!2312887 e!4497862))

(declare-fun res!3026515 () Bool)

(assert (=> d!2312887 (=> (not res!3026515) (not e!4497862))))

(declare-fun lt!2646830 () List!72829)

(assert (=> d!2312887 (= res!3026515 (= (content!15389 lt!2646830) (set.union (content!15389 testedP!423) (content!15389 lt!2646749))))))

(declare-fun e!4497861 () List!72829)

(assert (=> d!2312887 (= lt!2646830 e!4497861)))

(declare-fun c!1393680 () Bool)

(assert (=> d!2312887 (= c!1393680 (is-Nil!72705 testedP!423))))

(assert (=> d!2312887 (= (++!17462 testedP!423 lt!2646749) lt!2646830)))

(declare-fun b!7550831 () Bool)

(declare-fun res!3026514 () Bool)

(assert (=> b!7550831 (=> (not res!3026514) (not e!4497862))))

(assert (=> b!7550831 (= res!3026514 (= (size!42442 lt!2646830) (+ (size!42442 testedP!423) (size!42442 lt!2646749))))))

(declare-fun b!7550832 () Bool)

(assert (=> b!7550832 (= e!4497862 (or (not (= lt!2646749 Nil!72705)) (= lt!2646830 testedP!423)))))

(declare-fun b!7550830 () Bool)

(assert (=> b!7550830 (= e!4497861 (Cons!72705 (h!79153 testedP!423) (++!17462 (t!387548 testedP!423) lt!2646749)))))

(declare-fun b!7550829 () Bool)

(assert (=> b!7550829 (= e!4497861 lt!2646749)))

(assert (= (and d!2312887 c!1393680) b!7550829))

(assert (= (and d!2312887 (not c!1393680)) b!7550830))

(assert (= (and d!2312887 res!3026515) b!7550831))

(assert (= (and b!7550831 res!3026514) b!7550832))

(declare-fun m!8117882 () Bool)

(assert (=> d!2312887 m!8117882))

(assert (=> d!2312887 m!8117862))

(declare-fun m!8117884 () Bool)

(assert (=> d!2312887 m!8117884))

(declare-fun m!8117886 () Bool)

(assert (=> b!7550831 m!8117886))

(assert (=> b!7550831 m!8117644))

(declare-fun m!8117888 () Bool)

(assert (=> b!7550831 m!8117888))

(declare-fun m!8117890 () Bool)

(assert (=> b!7550830 m!8117890))

(assert (=> b!7550632 d!2312887))

(declare-fun d!2312889 () Bool)

(declare-fun e!4497864 () Bool)

(assert (=> d!2312889 e!4497864))

(declare-fun res!3026517 () Bool)

(assert (=> d!2312889 (=> (not res!3026517) (not e!4497864))))

(declare-fun lt!2646831 () List!72829)

(assert (=> d!2312889 (= res!3026517 (= (content!15389 lt!2646831) (set.union (content!15389 lt!2646737) (content!15389 lt!2646738))))))

(declare-fun e!4497863 () List!72829)

(assert (=> d!2312889 (= lt!2646831 e!4497863)))

(declare-fun c!1393681 () Bool)

(assert (=> d!2312889 (= c!1393681 (is-Nil!72705 lt!2646737))))

(assert (=> d!2312889 (= (++!17462 lt!2646737 lt!2646738) lt!2646831)))

(declare-fun b!7550835 () Bool)

(declare-fun res!3026516 () Bool)

(assert (=> b!7550835 (=> (not res!3026516) (not e!4497864))))

(assert (=> b!7550835 (= res!3026516 (= (size!42442 lt!2646831) (+ (size!42442 lt!2646737) (size!42442 lt!2646738))))))

(declare-fun b!7550836 () Bool)

(assert (=> b!7550836 (= e!4497864 (or (not (= lt!2646738 Nil!72705)) (= lt!2646831 lt!2646737)))))

(declare-fun b!7550834 () Bool)

(assert (=> b!7550834 (= e!4497863 (Cons!72705 (h!79153 lt!2646737) (++!17462 (t!387548 lt!2646737) lt!2646738)))))

(declare-fun b!7550833 () Bool)

(assert (=> b!7550833 (= e!4497863 lt!2646738)))

(assert (= (and d!2312889 c!1393681) b!7550833))

(assert (= (and d!2312889 (not c!1393681)) b!7550834))

(assert (= (and d!2312889 res!3026517) b!7550835))

(assert (= (and b!7550835 res!3026516) b!7550836))

(declare-fun m!8117892 () Bool)

(assert (=> d!2312889 m!8117892))

(assert (=> d!2312889 m!8117864))

(assert (=> d!2312889 m!8117850))

(declare-fun m!8117894 () Bool)

(assert (=> b!7550835 m!8117894))

(assert (=> b!7550835 m!8117868))

(assert (=> b!7550835 m!8117856))

(declare-fun m!8117896 () Bool)

(assert (=> b!7550834 m!8117896))

(assert (=> b!7550632 d!2312889))

(declare-fun d!2312891 () Bool)

(assert (=> d!2312891 (= (++!17462 (++!17462 testedP!423 lt!2646737) lt!2646738) (++!17462 testedP!423 (++!17462 lt!2646737 lt!2646738)))))

(declare-fun lt!2646834 () Unit!166830)

(declare-fun choose!58436 (List!72829 List!72829 List!72829) Unit!166830)

(assert (=> d!2312891 (= lt!2646834 (choose!58436 testedP!423 lt!2646737 lt!2646738))))

(assert (=> d!2312891 (= (lemmaConcatAssociativity!3101 testedP!423 lt!2646737 lt!2646738) lt!2646834)))

(declare-fun bs!1940191 () Bool)

(assert (= bs!1940191 d!2312891))

(assert (=> bs!1940191 m!8117642))

(declare-fun m!8117898 () Bool)

(assert (=> bs!1940191 m!8117898))

(declare-fun m!8117900 () Bool)

(assert (=> bs!1940191 m!8117900))

(assert (=> bs!1940191 m!8117658))

(assert (=> bs!1940191 m!8117658))

(declare-fun m!8117902 () Bool)

(assert (=> bs!1940191 m!8117902))

(assert (=> bs!1940191 m!8117642))

(assert (=> b!7550632 d!2312891))

(declare-fun d!2312893 () Bool)

(declare-fun lt!2646835 () Int)

(assert (=> d!2312893 (>= lt!2646835 0)))

(declare-fun e!4497865 () Int)

(assert (=> d!2312893 (= lt!2646835 e!4497865)))

(declare-fun c!1393682 () Bool)

(assert (=> d!2312893 (= c!1393682 (is-Nil!72705 testedP!423))))

(assert (=> d!2312893 (= (size!42442 testedP!423) lt!2646835)))

(declare-fun b!7550837 () Bool)

(assert (=> b!7550837 (= e!4497865 0)))

(declare-fun b!7550838 () Bool)

(assert (=> b!7550838 (= e!4497865 (+ 1 (size!42442 (t!387548 testedP!423))))))

(assert (= (and d!2312893 c!1393682) b!7550837))

(assert (= (and d!2312893 (not c!1393682)) b!7550838))

(declare-fun m!8117904 () Bool)

(assert (=> b!7550838 m!8117904))

(assert (=> b!7550618 d!2312893))

(declare-fun d!2312895 () Bool)

(declare-fun lt!2646836 () Int)

(assert (=> d!2312895 (>= lt!2646836 0)))

(declare-fun e!4497866 () Int)

(assert (=> d!2312895 (= lt!2646836 e!4497866)))

(declare-fun c!1393683 () Bool)

(assert (=> d!2312895 (= c!1393683 (is-Nil!72705 knownP!30))))

(assert (=> d!2312895 (= (size!42442 knownP!30) lt!2646836)))

(declare-fun b!7550839 () Bool)

(assert (=> b!7550839 (= e!4497866 0)))

(declare-fun b!7550840 () Bool)

(assert (=> b!7550840 (= e!4497866 (+ 1 (size!42442 (t!387548 knownP!30))))))

(assert (= (and d!2312895 c!1393683) b!7550839))

(assert (= (and d!2312895 (not c!1393683)) b!7550840))

(declare-fun m!8117906 () Bool)

(assert (=> b!7550840 m!8117906))

(assert (=> b!7550618 d!2312895))

(declare-fun d!2312897 () Bool)

(declare-fun lostCauseFct!456 (Regex!19946) Bool)

(assert (=> d!2312897 (= (lostCause!1738 r!24333) (lostCauseFct!456 r!24333))))

(declare-fun bs!1940192 () Bool)

(assert (= bs!1940192 d!2312897))

(declare-fun m!8117908 () Bool)

(assert (=> bs!1940192 m!8117908))

(assert (=> b!7550629 d!2312897))

(declare-fun b!7550887 () Bool)

(declare-fun e!4497897 () Bool)

(declare-fun call!692360 () Bool)

(assert (=> b!7550887 (= e!4497897 call!692360)))

(declare-fun bm!692353 () Bool)

(declare-fun call!692359 () Bool)

(assert (=> bm!692353 (= call!692359 call!692360)))

(declare-fun b!7550888 () Bool)

(declare-fun res!3026548 () Bool)

(declare-fun e!4497896 () Bool)

(assert (=> b!7550888 (=> (not res!3026548) (not e!4497896))))

(declare-fun call!692358 () Bool)

(assert (=> b!7550888 (= res!3026548 call!692358)))

(declare-fun e!4497899 () Bool)

(assert (=> b!7550888 (= e!4497899 e!4497896)))

(declare-fun d!2312899 () Bool)

(declare-fun res!3026546 () Bool)

(declare-fun e!4497898 () Bool)

(assert (=> d!2312899 (=> res!3026546 e!4497898)))

(assert (=> d!2312899 (= res!3026546 (is-ElementMatch!19946 r!24333))))

(assert (=> d!2312899 (= (validRegex!10374 r!24333) e!4497898)))

(declare-fun b!7550889 () Bool)

(declare-fun e!4497895 () Bool)

(assert (=> b!7550889 (= e!4497895 e!4497899)))

(declare-fun c!1393695 () Bool)

(assert (=> b!7550889 (= c!1393695 (is-Union!19946 r!24333))))

(declare-fun b!7550890 () Bool)

(assert (=> b!7550890 (= e!4497898 e!4497895)))

(declare-fun c!1393694 () Bool)

(assert (=> b!7550890 (= c!1393694 (is-Star!19946 r!24333))))

(declare-fun b!7550891 () Bool)

(assert (=> b!7550891 (= e!4497896 call!692359)))

(declare-fun b!7550892 () Bool)

(declare-fun e!4497900 () Bool)

(declare-fun e!4497901 () Bool)

(assert (=> b!7550892 (= e!4497900 e!4497901)))

(declare-fun res!3026544 () Bool)

(assert (=> b!7550892 (=> (not res!3026544) (not e!4497901))))

(assert (=> b!7550892 (= res!3026544 call!692358)))

(declare-fun b!7550893 () Bool)

(assert (=> b!7550893 (= e!4497901 call!692359)))

(declare-fun bm!692354 () Bool)

(assert (=> bm!692354 (= call!692358 (validRegex!10374 (ite c!1393695 (regOne!40405 r!24333) (regOne!40404 r!24333))))))

(declare-fun b!7550894 () Bool)

(declare-fun res!3026545 () Bool)

(assert (=> b!7550894 (=> res!3026545 e!4497900)))

(assert (=> b!7550894 (= res!3026545 (not (is-Concat!28791 r!24333)))))

(assert (=> b!7550894 (= e!4497899 e!4497900)))

(declare-fun bm!692355 () Bool)

(assert (=> bm!692355 (= call!692360 (validRegex!10374 (ite c!1393694 (reg!20275 r!24333) (ite c!1393695 (regTwo!40405 r!24333) (regTwo!40404 r!24333)))))))

(declare-fun b!7550895 () Bool)

(assert (=> b!7550895 (= e!4497895 e!4497897)))

(declare-fun res!3026547 () Bool)

(declare-fun nullable!8702 (Regex!19946) Bool)

(assert (=> b!7550895 (= res!3026547 (not (nullable!8702 (reg!20275 r!24333))))))

(assert (=> b!7550895 (=> (not res!3026547) (not e!4497897))))

(assert (= (and d!2312899 (not res!3026546)) b!7550890))

(assert (= (and b!7550890 c!1393694) b!7550895))

(assert (= (and b!7550890 (not c!1393694)) b!7550889))

(assert (= (and b!7550895 res!3026547) b!7550887))

(assert (= (and b!7550889 c!1393695) b!7550888))

(assert (= (and b!7550889 (not c!1393695)) b!7550894))

(assert (= (and b!7550888 res!3026548) b!7550891))

(assert (= (and b!7550894 (not res!3026545)) b!7550892))

(assert (= (and b!7550892 res!3026544) b!7550893))

(assert (= (or b!7550888 b!7550892) bm!692354))

(assert (= (or b!7550891 b!7550893) bm!692353))

(assert (= (or b!7550887 bm!692353) bm!692355))

(declare-fun m!8117910 () Bool)

(assert (=> bm!692354 m!8117910))

(declare-fun m!8117912 () Bool)

(assert (=> bm!692355 m!8117912))

(declare-fun m!8117914 () Bool)

(assert (=> b!7550895 m!8117914))

(assert (=> b!7550626 d!2312899))

(declare-fun d!2312901 () Bool)

(assert (=> d!2312901 (= ($colon$colon!3390 (tail!15078 lt!2646737) lt!2646748) (Cons!72705 lt!2646748 (tail!15078 lt!2646737)))))

(assert (=> b!7550634 d!2312901))

(declare-fun d!2312903 () Bool)

(assert (=> d!2312903 (= (tail!15078 lt!2646737) (t!387548 lt!2646737))))

(assert (=> b!7550634 d!2312903))

(declare-fun d!2312905 () Bool)

(assert (=> d!2312905 (= (head!15536 lt!2646737) (h!79153 lt!2646737))))

(assert (=> b!7550633 d!2312905))

(declare-fun d!2312907 () Bool)

(assert (=> d!2312907 (= lt!2646749 lt!2646751)))

(declare-fun lt!2646842 () Unit!166830)

(declare-fun choose!58437 (List!72829 List!72829 List!72829 List!72829 List!72829) Unit!166830)

(assert (=> d!2312907 (= lt!2646842 (choose!58437 testedP!423 lt!2646749 testedP!423 lt!2646751 input!7874))))

(assert (=> d!2312907 (isPrefix!6152 testedP!423 input!7874)))

(assert (=> d!2312907 (= (lemmaSamePrefixThenSameSuffix!2868 testedP!423 lt!2646749 testedP!423 lt!2646751 input!7874) lt!2646842)))

(declare-fun bs!1940193 () Bool)

(assert (= bs!1940193 d!2312907))

(declare-fun m!8117926 () Bool)

(assert (=> bs!1940193 m!8117926))

(assert (=> bs!1940193 m!8117678))

(assert (=> b!7550633 d!2312907))

(declare-fun b!7550956 () Bool)

(declare-fun e!4497935 () Bool)

(declare-fun e!4497939 () Bool)

(assert (=> b!7550956 (= e!4497935 e!4497939)))

(declare-fun res!3026587 () Bool)

(assert (=> b!7550956 (=> (not res!3026587) (not e!4497939))))

(declare-fun lt!2646851 () Bool)

(assert (=> b!7550956 (= res!3026587 (not lt!2646851))))

(declare-fun b!7550957 () Bool)

(declare-fun e!4497936 () Bool)

(assert (=> b!7550957 (= e!4497936 (= (head!15536 knownP!30) (c!1393653 baseR!101)))))

(declare-fun b!7550958 () Bool)

(declare-fun e!4497937 () Bool)

(assert (=> b!7550958 (= e!4497937 (not lt!2646851))))

(declare-fun b!7550959 () Bool)

(declare-fun res!3026590 () Bool)

(assert (=> b!7550959 (=> res!3026590 e!4497935)))

(assert (=> b!7550959 (= res!3026590 e!4497936)))

(declare-fun res!3026589 () Bool)

(assert (=> b!7550959 (=> (not res!3026589) (not e!4497936))))

(assert (=> b!7550959 (= res!3026589 lt!2646851)))

(declare-fun bm!692359 () Bool)

(declare-fun call!692364 () Bool)

(declare-fun isEmpty!41398 (List!72829) Bool)

(assert (=> bm!692359 (= call!692364 (isEmpty!41398 knownP!30))))

(declare-fun b!7550960 () Bool)

(declare-fun e!4497940 () Bool)

(assert (=> b!7550960 (= e!4497940 (matchR!9548 (derivativeStep!5736 baseR!101 (head!15536 knownP!30)) (tail!15078 knownP!30)))))

(declare-fun b!7550961 () Bool)

(assert (=> b!7550961 (= e!4497940 (nullable!8702 baseR!101))))

(declare-fun b!7550962 () Bool)

(declare-fun res!3026588 () Bool)

(declare-fun e!4497938 () Bool)

(assert (=> b!7550962 (=> res!3026588 e!4497938)))

(assert (=> b!7550962 (= res!3026588 (not (isEmpty!41398 (tail!15078 knownP!30))))))

(declare-fun b!7550963 () Bool)

(declare-fun e!4497941 () Bool)

(assert (=> b!7550963 (= e!4497941 (= lt!2646851 call!692364))))

(declare-fun b!7550964 () Bool)

(declare-fun res!3026591 () Bool)

(assert (=> b!7550964 (=> res!3026591 e!4497935)))

(assert (=> b!7550964 (= res!3026591 (not (is-ElementMatch!19946 baseR!101)))))

(assert (=> b!7550964 (= e!4497937 e!4497935)))

(declare-fun d!2312911 () Bool)

(assert (=> d!2312911 e!4497941))

(declare-fun c!1393710 () Bool)

(assert (=> d!2312911 (= c!1393710 (is-EmptyExpr!19946 baseR!101))))

(assert (=> d!2312911 (= lt!2646851 e!4497940)))

(declare-fun c!1393708 () Bool)

(assert (=> d!2312911 (= c!1393708 (isEmpty!41398 knownP!30))))

(assert (=> d!2312911 (validRegex!10374 baseR!101)))

(assert (=> d!2312911 (= (matchR!9548 baseR!101 knownP!30) lt!2646851)))

(declare-fun b!7550965 () Bool)

(declare-fun res!3026585 () Bool)

(assert (=> b!7550965 (=> (not res!3026585) (not e!4497936))))

(assert (=> b!7550965 (= res!3026585 (isEmpty!41398 (tail!15078 knownP!30)))))

(declare-fun b!7550966 () Bool)

(assert (=> b!7550966 (= e!4497938 (not (= (head!15536 knownP!30) (c!1393653 baseR!101))))))

(declare-fun b!7550967 () Bool)

(assert (=> b!7550967 (= e!4497941 e!4497937)))

(declare-fun c!1393709 () Bool)

(assert (=> b!7550967 (= c!1393709 (is-EmptyLang!19946 baseR!101))))

(declare-fun b!7550968 () Bool)

(declare-fun res!3026592 () Bool)

(assert (=> b!7550968 (=> (not res!3026592) (not e!4497936))))

(assert (=> b!7550968 (= res!3026592 (not call!692364))))

(declare-fun b!7550969 () Bool)

(assert (=> b!7550969 (= e!4497939 e!4497938)))

(declare-fun res!3026586 () Bool)

(assert (=> b!7550969 (=> res!3026586 e!4497938)))

(assert (=> b!7550969 (= res!3026586 call!692364)))

(assert (= (and d!2312911 c!1393708) b!7550961))

(assert (= (and d!2312911 (not c!1393708)) b!7550960))

(assert (= (and d!2312911 c!1393710) b!7550963))

(assert (= (and d!2312911 (not c!1393710)) b!7550967))

(assert (= (and b!7550967 c!1393709) b!7550958))

(assert (= (and b!7550967 (not c!1393709)) b!7550964))

(assert (= (and b!7550964 (not res!3026591)) b!7550959))

(assert (= (and b!7550959 res!3026589) b!7550968))

(assert (= (and b!7550968 res!3026592) b!7550965))

(assert (= (and b!7550965 res!3026585) b!7550957))

(assert (= (and b!7550959 (not res!3026590)) b!7550956))

(assert (= (and b!7550956 res!3026587) b!7550969))

(assert (= (and b!7550969 (not res!3026586)) b!7550962))

(assert (= (and b!7550962 (not res!3026588)) b!7550966))

(assert (= (or b!7550963 b!7550968 b!7550969) bm!692359))

(assert (=> b!7550957 m!8117810))

(declare-fun m!8117942 () Bool)

(assert (=> d!2312911 m!8117942))

(assert (=> d!2312911 m!8117680))

(assert (=> b!7550962 m!8117804))

(assert (=> b!7550962 m!8117804))

(declare-fun m!8117944 () Bool)

(assert (=> b!7550962 m!8117944))

(assert (=> b!7550965 m!8117804))

(assert (=> b!7550965 m!8117804))

(assert (=> b!7550965 m!8117944))

(declare-fun m!8117946 () Bool)

(assert (=> b!7550961 m!8117946))

(assert (=> bm!692359 m!8117942))

(assert (=> b!7550960 m!8117810))

(assert (=> b!7550960 m!8117810))

(declare-fun m!8117948 () Bool)

(assert (=> b!7550960 m!8117948))

(assert (=> b!7550960 m!8117804))

(assert (=> b!7550960 m!8117948))

(assert (=> b!7550960 m!8117804))

(declare-fun m!8117950 () Bool)

(assert (=> b!7550960 m!8117950))

(assert (=> b!7550966 m!8117810))

(assert (=> b!7550644 d!2312911))

(declare-fun d!2312917 () Bool)

(declare-fun lt!2646857 () List!72829)

(assert (=> d!2312917 (= (++!17462 testedP!423 lt!2646857) input!7874)))

(declare-fun e!4497944 () List!72829)

(assert (=> d!2312917 (= lt!2646857 e!4497944)))

(declare-fun c!1393713 () Bool)

(assert (=> d!2312917 (= c!1393713 (is-Cons!72705 testedP!423))))

(assert (=> d!2312917 (>= (size!42442 input!7874) (size!42442 testedP!423))))

(assert (=> d!2312917 (= (getSuffix!3632 input!7874 testedP!423) lt!2646857)))

(declare-fun b!7550974 () Bool)

(assert (=> b!7550974 (= e!4497944 (getSuffix!3632 (tail!15078 input!7874) (t!387548 testedP!423)))))

(declare-fun b!7550975 () Bool)

(assert (=> b!7550975 (= e!4497944 input!7874)))

(assert (= (and d!2312917 c!1393713) b!7550974))

(assert (= (and d!2312917 (not c!1393713)) b!7550975))

(declare-fun m!8117954 () Bool)

(assert (=> d!2312917 m!8117954))

(assert (=> d!2312917 m!8117682))

(assert (=> d!2312917 m!8117644))

(assert (=> b!7550974 m!8117806))

(assert (=> b!7550974 m!8117806))

(declare-fun m!8117956 () Bool)

(assert (=> b!7550974 m!8117956))

(assert (=> b!7550635 d!2312917))

(declare-fun d!2312921 () Bool)

(declare-fun e!4497946 () Bool)

(assert (=> d!2312921 e!4497946))

(declare-fun res!3026594 () Bool)

(assert (=> d!2312921 (=> (not res!3026594) (not e!4497946))))

(declare-fun lt!2646858 () List!72829)

(assert (=> d!2312921 (= res!3026594 (= (content!15389 lt!2646858) (set.union (content!15389 knownP!30) (content!15389 lt!2646738))))))

(declare-fun e!4497945 () List!72829)

(assert (=> d!2312921 (= lt!2646858 e!4497945)))

(declare-fun c!1393714 () Bool)

(assert (=> d!2312921 (= c!1393714 (is-Nil!72705 knownP!30))))

(assert (=> d!2312921 (= (++!17462 knownP!30 lt!2646738) lt!2646858)))

(declare-fun b!7550978 () Bool)

(declare-fun res!3026593 () Bool)

(assert (=> b!7550978 (=> (not res!3026593) (not e!4497946))))

(assert (=> b!7550978 (= res!3026593 (= (size!42442 lt!2646858) (+ (size!42442 knownP!30) (size!42442 lt!2646738))))))

(declare-fun b!7550979 () Bool)

(assert (=> b!7550979 (= e!4497946 (or (not (= lt!2646738 Nil!72705)) (= lt!2646858 knownP!30)))))

(declare-fun b!7550977 () Bool)

(assert (=> b!7550977 (= e!4497945 (Cons!72705 (h!79153 knownP!30) (++!17462 (t!387548 knownP!30) lt!2646738)))))

(declare-fun b!7550976 () Bool)

(assert (=> b!7550976 (= e!4497945 lt!2646738)))

(assert (= (and d!2312921 c!1393714) b!7550976))

(assert (= (and d!2312921 (not c!1393714)) b!7550977))

(assert (= (and d!2312921 res!3026594) b!7550978))

(assert (= (and b!7550978 res!3026593) b!7550979))

(declare-fun m!8117958 () Bool)

(assert (=> d!2312921 m!8117958))

(declare-fun m!8117960 () Bool)

(assert (=> d!2312921 m!8117960))

(assert (=> d!2312921 m!8117850))

(declare-fun m!8117962 () Bool)

(assert (=> b!7550978 m!8117962))

(assert (=> b!7550978 m!8117646))

(assert (=> b!7550978 m!8117856))

(declare-fun m!8117964 () Bool)

(assert (=> b!7550977 m!8117964))

(assert (=> b!7550635 d!2312921))

(declare-fun b!7550982 () Bool)

(declare-fun e!4497947 () Bool)

(assert (=> b!7550982 (= e!4497947 (isPrefix!6152 (tail!15078 lt!2646735) (tail!15078 knownP!30)))))

(declare-fun b!7550983 () Bool)

(declare-fun e!4497948 () Bool)

(assert (=> b!7550983 (= e!4497948 (>= (size!42442 knownP!30) (size!42442 lt!2646735)))))

(declare-fun d!2312923 () Bool)

(assert (=> d!2312923 e!4497948))

(declare-fun res!3026596 () Bool)

(assert (=> d!2312923 (=> res!3026596 e!4497948)))

(declare-fun lt!2646859 () Bool)

(assert (=> d!2312923 (= res!3026596 (not lt!2646859))))

(declare-fun e!4497949 () Bool)

(assert (=> d!2312923 (= lt!2646859 e!4497949)))

(declare-fun res!3026597 () Bool)

(assert (=> d!2312923 (=> res!3026597 e!4497949)))

(assert (=> d!2312923 (= res!3026597 (is-Nil!72705 lt!2646735))))

(assert (=> d!2312923 (= (isPrefix!6152 lt!2646735 knownP!30) lt!2646859)))

(declare-fun b!7550980 () Bool)

(assert (=> b!7550980 (= e!4497949 e!4497947)))

(declare-fun res!3026595 () Bool)

(assert (=> b!7550980 (=> (not res!3026595) (not e!4497947))))

(assert (=> b!7550980 (= res!3026595 (not (is-Nil!72705 knownP!30)))))

(declare-fun b!7550981 () Bool)

(declare-fun res!3026598 () Bool)

(assert (=> b!7550981 (=> (not res!3026598) (not e!4497947))))

(assert (=> b!7550981 (= res!3026598 (= (head!15536 lt!2646735) (head!15536 knownP!30)))))

(assert (= (and d!2312923 (not res!3026597)) b!7550980))

(assert (= (and b!7550980 res!3026595) b!7550981))

(assert (= (and b!7550981 res!3026598) b!7550982))

(assert (= (and d!2312923 (not res!3026596)) b!7550983))

(declare-fun m!8117966 () Bool)

(assert (=> b!7550982 m!8117966))

(assert (=> b!7550982 m!8117804))

(assert (=> b!7550982 m!8117966))

(assert (=> b!7550982 m!8117804))

(declare-fun m!8117968 () Bool)

(assert (=> b!7550982 m!8117968))

(assert (=> b!7550983 m!8117646))

(declare-fun m!8117970 () Bool)

(assert (=> b!7550983 m!8117970))

(declare-fun m!8117972 () Bool)

(assert (=> b!7550981 m!8117972))

(assert (=> b!7550981 m!8117810))

(assert (=> b!7550635 d!2312923))

(declare-fun d!2312927 () Bool)

(assert (=> d!2312927 (= (head!15536 lt!2646751) (h!79153 lt!2646751))))

(assert (=> b!7550635 d!2312927))

(declare-fun d!2312929 () Bool)

(assert (=> d!2312929 (isPrefix!6152 lt!2646735 knownP!30)))

(declare-fun lt!2646863 () Unit!166830)

(declare-fun choose!58438 (List!72829 List!72829 List!72829) Unit!166830)

(assert (=> d!2312929 (= lt!2646863 (choose!58438 knownP!30 lt!2646735 input!7874))))

(assert (=> d!2312929 (isPrefix!6152 knownP!30 input!7874)))

(assert (=> d!2312929 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!902 knownP!30 lt!2646735 input!7874) lt!2646863)))

(declare-fun bs!1940195 () Bool)

(assert (= bs!1940195 d!2312929))

(assert (=> bs!1940195 m!8117706))

(declare-fun m!8117980 () Bool)

(assert (=> bs!1940195 m!8117980))

(assert (=> bs!1940195 m!8117654))

(assert (=> b!7550635 d!2312929))

(declare-fun d!2312935 () Bool)

(assert (=> d!2312935 (isPrefix!6152 (++!17462 testedP!423 (Cons!72705 (head!15536 (getSuffix!3632 input!7874 testedP!423)) Nil!72705)) input!7874)))

(declare-fun lt!2646869 () Unit!166830)

(declare-fun choose!58439 (List!72829 List!72829) Unit!166830)

(assert (=> d!2312935 (= lt!2646869 (choose!58439 testedP!423 input!7874))))

(assert (=> d!2312935 (isPrefix!6152 testedP!423 input!7874)))

(assert (=> d!2312935 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1213 testedP!423 input!7874) lt!2646869)))

(declare-fun bs!1940196 () Bool)

(assert (= bs!1940196 d!2312935))

(assert (=> bs!1940196 m!8117698))

(declare-fun m!8118002 () Bool)

(assert (=> bs!1940196 m!8118002))

(assert (=> bs!1940196 m!8117698))

(declare-fun m!8118006 () Bool)

(assert (=> bs!1940196 m!8118006))

(declare-fun m!8118008 () Bool)

(assert (=> bs!1940196 m!8118008))

(assert (=> bs!1940196 m!8118006))

(assert (=> bs!1940196 m!8117678))

(declare-fun m!8118012 () Bool)

(assert (=> bs!1940196 m!8118012))

(assert (=> b!7550635 d!2312935))

(declare-fun d!2312941 () Bool)

(assert (=> d!2312941 (= (derivative!478 baseR!101 (++!17462 testedP!423 (Cons!72705 lt!2646748 Nil!72705))) (derivativeStep!5736 r!24333 lt!2646748))))

(declare-fun lt!2646872 () Unit!166830)

(declare-fun choose!58440 (Regex!19946 Regex!19946 List!72829 C!40218) Unit!166830)

(assert (=> d!2312941 (= lt!2646872 (choose!58440 baseR!101 r!24333 testedP!423 lt!2646748))))

(assert (=> d!2312941 (validRegex!10374 baseR!101)))

(assert (=> d!2312941 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!180 baseR!101 r!24333 testedP!423 lt!2646748) lt!2646872)))

(declare-fun bs!1940197 () Bool)

(assert (= bs!1940197 d!2312941))

(assert (=> bs!1940197 m!8117700))

(declare-fun m!8118016 () Bool)

(assert (=> bs!1940197 m!8118016))

(assert (=> bs!1940197 m!8117704))

(assert (=> bs!1940197 m!8117700))

(declare-fun m!8118018 () Bool)

(assert (=> bs!1940197 m!8118018))

(assert (=> bs!1940197 m!8117680))

(assert (=> b!7550635 d!2312941))

(declare-fun d!2312945 () Bool)

(declare-fun lt!2646875 () List!72829)

(assert (=> d!2312945 (= (++!17462 knownP!30 lt!2646875) input!7874)))

(declare-fun e!4497959 () List!72829)

(assert (=> d!2312945 (= lt!2646875 e!4497959)))

(declare-fun c!1393719 () Bool)

(assert (=> d!2312945 (= c!1393719 (is-Cons!72705 knownP!30))))

(assert (=> d!2312945 (>= (size!42442 input!7874) (size!42442 knownP!30))))

(assert (=> d!2312945 (= (getSuffix!3632 input!7874 knownP!30) lt!2646875)))

(declare-fun b!7551000 () Bool)

(assert (=> b!7551000 (= e!4497959 (getSuffix!3632 (tail!15078 input!7874) (t!387548 knownP!30)))))

(declare-fun b!7551001 () Bool)

(assert (=> b!7551001 (= e!4497959 input!7874)))

(assert (= (and d!2312945 c!1393719) b!7551000))

(assert (= (and d!2312945 (not c!1393719)) b!7551001))

(declare-fun m!8118020 () Bool)

(assert (=> d!2312945 m!8118020))

(assert (=> d!2312945 m!8117682))

(assert (=> d!2312945 m!8117646))

(assert (=> b!7551000 m!8117806))

(assert (=> b!7551000 m!8117806))

(declare-fun m!8118022 () Bool)

(assert (=> b!7551000 m!8118022))

(assert (=> b!7550635 d!2312945))

(declare-fun d!2312947 () Bool)

(declare-fun lt!2646876 () List!72829)

(assert (=> d!2312947 (= (++!17462 lt!2646735 lt!2646876) knownP!30)))

(declare-fun e!4497960 () List!72829)

(assert (=> d!2312947 (= lt!2646876 e!4497960)))

(declare-fun c!1393720 () Bool)

(assert (=> d!2312947 (= c!1393720 (is-Cons!72705 lt!2646735))))

(assert (=> d!2312947 (>= (size!42442 knownP!30) (size!42442 lt!2646735))))

(assert (=> d!2312947 (= (getSuffix!3632 knownP!30 lt!2646735) lt!2646876)))

(declare-fun b!7551002 () Bool)

(assert (=> b!7551002 (= e!4497960 (getSuffix!3632 (tail!15078 knownP!30) (t!387548 lt!2646735)))))

(declare-fun b!7551003 () Bool)

(assert (=> b!7551003 (= e!4497960 knownP!30)))

(assert (= (and d!2312947 c!1393720) b!7551002))

(assert (= (and d!2312947 (not c!1393720)) b!7551003))

(declare-fun m!8118024 () Bool)

(assert (=> d!2312947 m!8118024))

(assert (=> d!2312947 m!8117646))

(assert (=> d!2312947 m!8117970))

(assert (=> b!7551002 m!8117804))

(assert (=> b!7551002 m!8117804))

(declare-fun m!8118026 () Bool)

(assert (=> b!7551002 m!8118026))

(assert (=> b!7550635 d!2312947))

(declare-fun b!7551006 () Bool)

(declare-fun e!4497961 () Bool)

(assert (=> b!7551006 (= e!4497961 (isPrefix!6152 (tail!15078 lt!2646735) (tail!15078 input!7874)))))

(declare-fun b!7551007 () Bool)

(declare-fun e!4497962 () Bool)

(assert (=> b!7551007 (= e!4497962 (>= (size!42442 input!7874) (size!42442 lt!2646735)))))

(declare-fun d!2312949 () Bool)

(assert (=> d!2312949 e!4497962))

(declare-fun res!3026610 () Bool)

(assert (=> d!2312949 (=> res!3026610 e!4497962)))

(declare-fun lt!2646877 () Bool)

(assert (=> d!2312949 (= res!3026610 (not lt!2646877))))

(declare-fun e!4497963 () Bool)

(assert (=> d!2312949 (= lt!2646877 e!4497963)))

(declare-fun res!3026611 () Bool)

(assert (=> d!2312949 (=> res!3026611 e!4497963)))

(assert (=> d!2312949 (= res!3026611 (is-Nil!72705 lt!2646735))))

(assert (=> d!2312949 (= (isPrefix!6152 lt!2646735 input!7874) lt!2646877)))

(declare-fun b!7551004 () Bool)

(assert (=> b!7551004 (= e!4497963 e!4497961)))

(declare-fun res!3026609 () Bool)

(assert (=> b!7551004 (=> (not res!3026609) (not e!4497961))))

(assert (=> b!7551004 (= res!3026609 (not (is-Nil!72705 input!7874)))))

(declare-fun b!7551005 () Bool)

(declare-fun res!3026612 () Bool)

(assert (=> b!7551005 (=> (not res!3026612) (not e!4497961))))

(assert (=> b!7551005 (= res!3026612 (= (head!15536 lt!2646735) (head!15536 input!7874)))))

(assert (= (and d!2312949 (not res!3026611)) b!7551004))

(assert (= (and b!7551004 res!3026609) b!7551005))

(assert (= (and b!7551005 res!3026612) b!7551006))

(assert (= (and d!2312949 (not res!3026610)) b!7551007))

(assert (=> b!7551006 m!8117966))

(assert (=> b!7551006 m!8117806))

(assert (=> b!7551006 m!8117966))

(assert (=> b!7551006 m!8117806))

(declare-fun m!8118028 () Bool)

(assert (=> b!7551006 m!8118028))

(assert (=> b!7551007 m!8117682))

(assert (=> b!7551007 m!8117970))

(assert (=> b!7551005 m!8117972))

(assert (=> b!7551005 m!8117812))

(assert (=> b!7550635 d!2312949))

(declare-fun d!2312951 () Bool)

(declare-fun e!4497965 () Bool)

(assert (=> d!2312951 e!4497965))

(declare-fun res!3026614 () Bool)

(assert (=> d!2312951 (=> (not res!3026614) (not e!4497965))))

(declare-fun lt!2646878 () List!72829)

(assert (=> d!2312951 (= res!3026614 (= (content!15389 lt!2646878) (set.union (content!15389 testedP!423) (content!15389 (Cons!72705 lt!2646748 Nil!72705)))))))

(declare-fun e!4497964 () List!72829)

(assert (=> d!2312951 (= lt!2646878 e!4497964)))

(declare-fun c!1393721 () Bool)

(assert (=> d!2312951 (= c!1393721 (is-Nil!72705 testedP!423))))

(assert (=> d!2312951 (= (++!17462 testedP!423 (Cons!72705 lt!2646748 Nil!72705)) lt!2646878)))

(declare-fun b!7551010 () Bool)

(declare-fun res!3026613 () Bool)

(assert (=> b!7551010 (=> (not res!3026613) (not e!4497965))))

(assert (=> b!7551010 (= res!3026613 (= (size!42442 lt!2646878) (+ (size!42442 testedP!423) (size!42442 (Cons!72705 lt!2646748 Nil!72705)))))))

(declare-fun b!7551011 () Bool)

(assert (=> b!7551011 (= e!4497965 (or (not (= (Cons!72705 lt!2646748 Nil!72705) Nil!72705)) (= lt!2646878 testedP!423)))))

(declare-fun b!7551009 () Bool)

(assert (=> b!7551009 (= e!4497964 (Cons!72705 (h!79153 testedP!423) (++!17462 (t!387548 testedP!423) (Cons!72705 lt!2646748 Nil!72705))))))

(declare-fun b!7551008 () Bool)

(assert (=> b!7551008 (= e!4497964 (Cons!72705 lt!2646748 Nil!72705))))

(assert (= (and d!2312951 c!1393721) b!7551008))

(assert (= (and d!2312951 (not c!1393721)) b!7551009))

(assert (= (and d!2312951 res!3026614) b!7551010))

(assert (= (and b!7551010 res!3026613) b!7551011))

(declare-fun m!8118030 () Bool)

(assert (=> d!2312951 m!8118030))

(assert (=> d!2312951 m!8117862))

(declare-fun m!8118032 () Bool)

(assert (=> d!2312951 m!8118032))

(declare-fun m!8118034 () Bool)

(assert (=> b!7551010 m!8118034))

(assert (=> b!7551010 m!8117644))

(declare-fun m!8118036 () Bool)

(assert (=> b!7551010 m!8118036))

(declare-fun m!8118038 () Bool)

(assert (=> b!7551009 m!8118038))

(assert (=> b!7550635 d!2312951))

(declare-fun bm!692368 () Bool)

(declare-fun call!692376 () Regex!19946)

(declare-fun call!692375 () Regex!19946)

(assert (=> bm!692368 (= call!692376 call!692375)))

(declare-fun bm!692369 () Bool)

(declare-fun call!692373 () Regex!19946)

(assert (=> bm!692369 (= call!692375 call!692373)))

(declare-fun c!1393738 () Bool)

(declare-fun bm!692370 () Bool)

(declare-fun c!1393735 () Bool)

(assert (=> bm!692370 (= call!692373 (derivativeStep!5736 (ite c!1393738 (regTwo!40405 r!24333) (ite c!1393735 (reg!20275 r!24333) (regOne!40404 r!24333))) lt!2646748))))

(declare-fun b!7551044 () Bool)

(declare-fun e!4497985 () Regex!19946)

(declare-fun call!692374 () Regex!19946)

(assert (=> b!7551044 (= e!4497985 (Union!19946 call!692374 call!692373))))

(declare-fun b!7551045 () Bool)

(declare-fun e!4497987 () Regex!19946)

(declare-fun e!4497983 () Regex!19946)

(assert (=> b!7551045 (= e!4497987 e!4497983)))

(declare-fun c!1393739 () Bool)

(assert (=> b!7551045 (= c!1393739 (is-ElementMatch!19946 r!24333))))

(declare-fun b!7551046 () Bool)

(assert (=> b!7551046 (= e!4497983 (ite (= lt!2646748 (c!1393653 r!24333)) EmptyExpr!19946 EmptyLang!19946))))

(declare-fun b!7551047 () Bool)

(declare-fun c!1393737 () Bool)

(assert (=> b!7551047 (= c!1393737 (nullable!8702 (regOne!40404 r!24333)))))

(declare-fun e!4497986 () Regex!19946)

(declare-fun e!4497984 () Regex!19946)

(assert (=> b!7551047 (= e!4497986 e!4497984)))

(declare-fun b!7551048 () Bool)

(assert (=> b!7551048 (= e!4497984 (Union!19946 (Concat!28791 call!692376 (regTwo!40404 r!24333)) EmptyLang!19946))))

(declare-fun b!7551049 () Bool)

(assert (=> b!7551049 (= e!4497986 (Concat!28791 call!692375 r!24333))))

(declare-fun bm!692371 () Bool)

(assert (=> bm!692371 (= call!692374 (derivativeStep!5736 (ite c!1393738 (regOne!40405 r!24333) (regTwo!40404 r!24333)) lt!2646748))))

(declare-fun d!2312953 () Bool)

(declare-fun lt!2646887 () Regex!19946)

(assert (=> d!2312953 (validRegex!10374 lt!2646887)))

(assert (=> d!2312953 (= lt!2646887 e!4497987)))

(declare-fun c!1393736 () Bool)

(assert (=> d!2312953 (= c!1393736 (or (is-EmptyExpr!19946 r!24333) (is-EmptyLang!19946 r!24333)))))

(assert (=> d!2312953 (validRegex!10374 r!24333)))

(assert (=> d!2312953 (= (derivativeStep!5736 r!24333 lt!2646748) lt!2646887)))

(declare-fun b!7551050 () Bool)

(assert (=> b!7551050 (= c!1393738 (is-Union!19946 r!24333))))

(assert (=> b!7551050 (= e!4497983 e!4497985)))

(declare-fun b!7551051 () Bool)

(assert (=> b!7551051 (= e!4497985 e!4497986)))

(assert (=> b!7551051 (= c!1393735 (is-Star!19946 r!24333))))

(declare-fun b!7551052 () Bool)

(assert (=> b!7551052 (= e!4497984 (Union!19946 (Concat!28791 call!692376 (regTwo!40404 r!24333)) call!692374))))

(declare-fun b!7551053 () Bool)

(assert (=> b!7551053 (= e!4497987 EmptyLang!19946)))

(assert (= (and d!2312953 c!1393736) b!7551053))

(assert (= (and d!2312953 (not c!1393736)) b!7551045))

(assert (= (and b!7551045 c!1393739) b!7551046))

(assert (= (and b!7551045 (not c!1393739)) b!7551050))

(assert (= (and b!7551050 c!1393738) b!7551044))

(assert (= (and b!7551050 (not c!1393738)) b!7551051))

(assert (= (and b!7551051 c!1393735) b!7551049))

(assert (= (and b!7551051 (not c!1393735)) b!7551047))

(assert (= (and b!7551047 c!1393737) b!7551052))

(assert (= (and b!7551047 (not c!1393737)) b!7551048))

(assert (= (or b!7551052 b!7551048) bm!692368))

(assert (= (or b!7551049 bm!692368) bm!692369))

(assert (= (or b!7551044 bm!692369) bm!692370))

(assert (= (or b!7551044 b!7551052) bm!692371))

(declare-fun m!8118074 () Bool)

(assert (=> bm!692370 m!8118074))

(declare-fun m!8118076 () Bool)

(assert (=> b!7551047 m!8118076))

(declare-fun m!8118078 () Bool)

(assert (=> bm!692371 m!8118078))

(declare-fun m!8118080 () Bool)

(assert (=> d!2312953 m!8118080))

(assert (=> d!2312953 m!8117674))

(assert (=> b!7550635 d!2312953))

(declare-fun d!2312967 () Bool)

(declare-fun lt!2646888 () Regex!19946)

(assert (=> d!2312967 (validRegex!10374 lt!2646888)))

(declare-fun e!4497988 () Regex!19946)

(assert (=> d!2312967 (= lt!2646888 e!4497988)))

(declare-fun c!1393740 () Bool)

(assert (=> d!2312967 (= c!1393740 (is-Cons!72705 lt!2646735))))

(assert (=> d!2312967 (validRegex!10374 baseR!101)))

(assert (=> d!2312967 (= (derivative!478 baseR!101 lt!2646735) lt!2646888)))

(declare-fun b!7551054 () Bool)

(assert (=> b!7551054 (= e!4497988 (derivative!478 (derivativeStep!5736 baseR!101 (h!79153 lt!2646735)) (t!387548 lt!2646735)))))

(declare-fun b!7551055 () Bool)

(assert (=> b!7551055 (= e!4497988 baseR!101)))

(assert (= (and d!2312967 c!1393740) b!7551054))

(assert (= (and d!2312967 (not c!1393740)) b!7551055))

(declare-fun m!8118082 () Bool)

(assert (=> d!2312967 m!8118082))

(assert (=> d!2312967 m!8117680))

(declare-fun m!8118084 () Bool)

(assert (=> b!7551054 m!8118084))

(assert (=> b!7551054 m!8118084))

(declare-fun m!8118086 () Bool)

(assert (=> b!7551054 m!8118086))

(assert (=> b!7550635 d!2312967))

(declare-fun b!7551056 () Bool)

(declare-fun e!4497991 () Bool)

(declare-fun call!692379 () Bool)

(assert (=> b!7551056 (= e!4497991 call!692379)))

(declare-fun bm!692372 () Bool)

(declare-fun call!692378 () Bool)

(assert (=> bm!692372 (= call!692378 call!692379)))

(declare-fun b!7551057 () Bool)

(declare-fun res!3026625 () Bool)

(declare-fun e!4497990 () Bool)

(assert (=> b!7551057 (=> (not res!3026625) (not e!4497990))))

(declare-fun call!692377 () Bool)

(assert (=> b!7551057 (= res!3026625 call!692377)))

(declare-fun e!4497993 () Bool)

(assert (=> b!7551057 (= e!4497993 e!4497990)))

(declare-fun d!2312969 () Bool)

(declare-fun res!3026623 () Bool)

(declare-fun e!4497992 () Bool)

(assert (=> d!2312969 (=> res!3026623 e!4497992)))

(assert (=> d!2312969 (= res!3026623 (is-ElementMatch!19946 baseR!101))))

(assert (=> d!2312969 (= (validRegex!10374 baseR!101) e!4497992)))

(declare-fun b!7551058 () Bool)

(declare-fun e!4497989 () Bool)

(assert (=> b!7551058 (= e!4497989 e!4497993)))

(declare-fun c!1393742 () Bool)

(assert (=> b!7551058 (= c!1393742 (is-Union!19946 baseR!101))))

(declare-fun b!7551059 () Bool)

(assert (=> b!7551059 (= e!4497992 e!4497989)))

(declare-fun c!1393741 () Bool)

(assert (=> b!7551059 (= c!1393741 (is-Star!19946 baseR!101))))

(declare-fun b!7551060 () Bool)

(assert (=> b!7551060 (= e!4497990 call!692378)))

(declare-fun b!7551061 () Bool)

(declare-fun e!4497994 () Bool)

(declare-fun e!4497995 () Bool)

(assert (=> b!7551061 (= e!4497994 e!4497995)))

(declare-fun res!3026621 () Bool)

(assert (=> b!7551061 (=> (not res!3026621) (not e!4497995))))

(assert (=> b!7551061 (= res!3026621 call!692377)))

(declare-fun b!7551062 () Bool)

(assert (=> b!7551062 (= e!4497995 call!692378)))

(declare-fun bm!692373 () Bool)

(assert (=> bm!692373 (= call!692377 (validRegex!10374 (ite c!1393742 (regOne!40405 baseR!101) (regOne!40404 baseR!101))))))

(declare-fun b!7551063 () Bool)

(declare-fun res!3026622 () Bool)

(assert (=> b!7551063 (=> res!3026622 e!4497994)))

(assert (=> b!7551063 (= res!3026622 (not (is-Concat!28791 baseR!101)))))

(assert (=> b!7551063 (= e!4497993 e!4497994)))

(declare-fun bm!692374 () Bool)

(assert (=> bm!692374 (= call!692379 (validRegex!10374 (ite c!1393741 (reg!20275 baseR!101) (ite c!1393742 (regTwo!40405 baseR!101) (regTwo!40404 baseR!101)))))))

(declare-fun b!7551064 () Bool)

(assert (=> b!7551064 (= e!4497989 e!4497991)))

(declare-fun res!3026624 () Bool)

(assert (=> b!7551064 (= res!3026624 (not (nullable!8702 (reg!20275 baseR!101))))))

(assert (=> b!7551064 (=> (not res!3026624) (not e!4497991))))

(assert (= (and d!2312969 (not res!3026623)) b!7551059))

(assert (= (and b!7551059 c!1393741) b!7551064))

(assert (= (and b!7551059 (not c!1393741)) b!7551058))

(assert (= (and b!7551064 res!3026624) b!7551056))

(assert (= (and b!7551058 c!1393742) b!7551057))

(assert (= (and b!7551058 (not c!1393742)) b!7551063))

(assert (= (and b!7551057 res!3026625) b!7551060))

(assert (= (and b!7551063 (not res!3026622)) b!7551061))

(assert (= (and b!7551061 res!3026621) b!7551062))

(assert (= (or b!7551057 b!7551061) bm!692373))

(assert (= (or b!7551060 b!7551062) bm!692372))

(assert (= (or b!7551056 bm!692372) bm!692374))

(declare-fun m!8118088 () Bool)

(assert (=> bm!692373 m!8118088))

(declare-fun m!8118090 () Bool)

(assert (=> bm!692374 m!8118090))

(declare-fun m!8118092 () Bool)

(assert (=> b!7551064 m!8118092))

(assert (=> start!730094 d!2312969))

(declare-fun b!7551065 () Bool)

(declare-fun e!4497996 () Bool)

(declare-fun e!4498000 () Bool)

(assert (=> b!7551065 (= e!4497996 e!4498000)))

(declare-fun res!3026628 () Bool)

(assert (=> b!7551065 (=> (not res!3026628) (not e!4498000))))

(declare-fun lt!2646889 () Bool)

(assert (=> b!7551065 (= res!3026628 (not lt!2646889))))

(declare-fun b!7551066 () Bool)

(declare-fun e!4497997 () Bool)

(assert (=> b!7551066 (= e!4497997 (= (head!15536 lt!2646737) (c!1393653 r!24333)))))

(declare-fun b!7551067 () Bool)

(declare-fun e!4497998 () Bool)

(assert (=> b!7551067 (= e!4497998 (not lt!2646889))))

(declare-fun b!7551068 () Bool)

(declare-fun res!3026631 () Bool)

(assert (=> b!7551068 (=> res!3026631 e!4497996)))

(assert (=> b!7551068 (= res!3026631 e!4497997)))

(declare-fun res!3026630 () Bool)

(assert (=> b!7551068 (=> (not res!3026630) (not e!4497997))))

(assert (=> b!7551068 (= res!3026630 lt!2646889)))

(declare-fun bm!692375 () Bool)

(declare-fun call!692380 () Bool)

(assert (=> bm!692375 (= call!692380 (isEmpty!41398 lt!2646737))))

(declare-fun b!7551069 () Bool)

(declare-fun e!4498001 () Bool)

(assert (=> b!7551069 (= e!4498001 (matchR!9548 (derivativeStep!5736 r!24333 (head!15536 lt!2646737)) (tail!15078 lt!2646737)))))

(declare-fun b!7551070 () Bool)

(assert (=> b!7551070 (= e!4498001 (nullable!8702 r!24333))))

(declare-fun b!7551071 () Bool)

(declare-fun res!3026629 () Bool)

(declare-fun e!4497999 () Bool)

(assert (=> b!7551071 (=> res!3026629 e!4497999)))

(assert (=> b!7551071 (= res!3026629 (not (isEmpty!41398 (tail!15078 lt!2646737))))))

(declare-fun b!7551072 () Bool)

(declare-fun e!4498002 () Bool)

(assert (=> b!7551072 (= e!4498002 (= lt!2646889 call!692380))))

(declare-fun b!7551073 () Bool)

(declare-fun res!3026632 () Bool)

(assert (=> b!7551073 (=> res!3026632 e!4497996)))

(assert (=> b!7551073 (= res!3026632 (not (is-ElementMatch!19946 r!24333)))))

(assert (=> b!7551073 (= e!4497998 e!4497996)))

(declare-fun d!2312971 () Bool)

(assert (=> d!2312971 e!4498002))

(declare-fun c!1393745 () Bool)

(assert (=> d!2312971 (= c!1393745 (is-EmptyExpr!19946 r!24333))))

(assert (=> d!2312971 (= lt!2646889 e!4498001)))

(declare-fun c!1393743 () Bool)

(assert (=> d!2312971 (= c!1393743 (isEmpty!41398 lt!2646737))))

(assert (=> d!2312971 (validRegex!10374 r!24333)))

(assert (=> d!2312971 (= (matchR!9548 r!24333 lt!2646737) lt!2646889)))

(declare-fun b!7551074 () Bool)

(declare-fun res!3026626 () Bool)

(assert (=> b!7551074 (=> (not res!3026626) (not e!4497997))))

(assert (=> b!7551074 (= res!3026626 (isEmpty!41398 (tail!15078 lt!2646737)))))

(declare-fun b!7551075 () Bool)

(assert (=> b!7551075 (= e!4497999 (not (= (head!15536 lt!2646737) (c!1393653 r!24333))))))

(declare-fun b!7551076 () Bool)

(assert (=> b!7551076 (= e!4498002 e!4497998)))

(declare-fun c!1393744 () Bool)

(assert (=> b!7551076 (= c!1393744 (is-EmptyLang!19946 r!24333))))

(declare-fun b!7551077 () Bool)

(declare-fun res!3026633 () Bool)

(assert (=> b!7551077 (=> (not res!3026633) (not e!4497997))))

(assert (=> b!7551077 (= res!3026633 (not call!692380))))

(declare-fun b!7551078 () Bool)

(assert (=> b!7551078 (= e!4498000 e!4497999)))

(declare-fun res!3026627 () Bool)

(assert (=> b!7551078 (=> res!3026627 e!4497999)))

(assert (=> b!7551078 (= res!3026627 call!692380)))

(assert (= (and d!2312971 c!1393743) b!7551070))

(assert (= (and d!2312971 (not c!1393743)) b!7551069))

(assert (= (and d!2312971 c!1393745) b!7551072))

(assert (= (and d!2312971 (not c!1393745)) b!7551076))

(assert (= (and b!7551076 c!1393744) b!7551067))

(assert (= (and b!7551076 (not c!1393744)) b!7551073))

(assert (= (and b!7551073 (not res!3026632)) b!7551068))

(assert (= (and b!7551068 res!3026630) b!7551077))

(assert (= (and b!7551077 res!3026633) b!7551074))

(assert (= (and b!7551074 res!3026626) b!7551066))

(assert (= (and b!7551068 (not res!3026631)) b!7551065))

(assert (= (and b!7551065 res!3026628) b!7551078))

(assert (= (and b!7551078 (not res!3026627)) b!7551071))

(assert (= (and b!7551071 (not res!3026629)) b!7551075))

(assert (= (or b!7551072 b!7551077 b!7551078) bm!692375))

(assert (=> b!7551066 m!8117670))

(declare-fun m!8118094 () Bool)

(assert (=> d!2312971 m!8118094))

(assert (=> d!2312971 m!8117674))

(assert (=> b!7551071 m!8117650))

(assert (=> b!7551071 m!8117650))

(declare-fun m!8118096 () Bool)

(assert (=> b!7551071 m!8118096))

(assert (=> b!7551074 m!8117650))

(assert (=> b!7551074 m!8117650))

(assert (=> b!7551074 m!8118096))

(declare-fun m!8118098 () Bool)

(assert (=> b!7551070 m!8118098))

(assert (=> bm!692375 m!8118094))

(assert (=> b!7551069 m!8117670))

(assert (=> b!7551069 m!8117670))

(declare-fun m!8118100 () Bool)

(assert (=> b!7551069 m!8118100))

(assert (=> b!7551069 m!8117650))

(assert (=> b!7551069 m!8118100))

(assert (=> b!7551069 m!8117650))

(declare-fun m!8118102 () Bool)

(assert (=> b!7551069 m!8118102))

(assert (=> b!7551075 m!8117670))

(assert (=> b!7550624 d!2312971))

(declare-fun d!2312973 () Bool)

(declare-fun lt!2646892 () List!72829)

(assert (=> d!2312973 (= (++!17462 testedP!423 lt!2646892) knownP!30)))

(declare-fun e!4498003 () List!72829)

(assert (=> d!2312973 (= lt!2646892 e!4498003)))

(declare-fun c!1393747 () Bool)

(assert (=> d!2312973 (= c!1393747 (is-Cons!72705 testedP!423))))

(assert (=> d!2312973 (>= (size!42442 knownP!30) (size!42442 testedP!423))))

(assert (=> d!2312973 (= (getSuffix!3632 knownP!30 testedP!423) lt!2646892)))

(declare-fun b!7551079 () Bool)

(assert (=> b!7551079 (= e!4498003 (getSuffix!3632 (tail!15078 knownP!30) (t!387548 testedP!423)))))

(declare-fun b!7551080 () Bool)

(assert (=> b!7551080 (= e!4498003 knownP!30)))

(assert (= (and d!2312973 c!1393747) b!7551079))

(assert (= (and d!2312973 (not c!1393747)) b!7551080))

(declare-fun m!8118104 () Bool)

(assert (=> d!2312973 m!8118104))

(assert (=> d!2312973 m!8117646))

(assert (=> d!2312973 m!8117644))

(assert (=> b!7551079 m!8117804))

(assert (=> b!7551079 m!8117804))

(declare-fun m!8118106 () Bool)

(assert (=> b!7551079 m!8118106))

(assert (=> b!7550624 d!2312973))

(declare-fun b!7551083 () Bool)

(declare-fun e!4498004 () Bool)

(assert (=> b!7551083 (= e!4498004 (isPrefix!6152 (tail!15078 testedP!423) (tail!15078 knownP!30)))))

(declare-fun b!7551084 () Bool)

(declare-fun e!4498005 () Bool)

(assert (=> b!7551084 (= e!4498005 (>= (size!42442 knownP!30) (size!42442 testedP!423)))))

(declare-fun d!2312975 () Bool)

(assert (=> d!2312975 e!4498005))

(declare-fun res!3026635 () Bool)

(assert (=> d!2312975 (=> res!3026635 e!4498005)))

(declare-fun lt!2646893 () Bool)

(assert (=> d!2312975 (= res!3026635 (not lt!2646893))))

(declare-fun e!4498006 () Bool)

(assert (=> d!2312975 (= lt!2646893 e!4498006)))

(declare-fun res!3026636 () Bool)

(assert (=> d!2312975 (=> res!3026636 e!4498006)))

(assert (=> d!2312975 (= res!3026636 (is-Nil!72705 testedP!423))))

(assert (=> d!2312975 (= (isPrefix!6152 testedP!423 knownP!30) lt!2646893)))

(declare-fun b!7551081 () Bool)

(assert (=> b!7551081 (= e!4498006 e!4498004)))

(declare-fun res!3026634 () Bool)

(assert (=> b!7551081 (=> (not res!3026634) (not e!4498004))))

(assert (=> b!7551081 (= res!3026634 (not (is-Nil!72705 knownP!30)))))

(declare-fun b!7551082 () Bool)

(declare-fun res!3026637 () Bool)

(assert (=> b!7551082 (=> (not res!3026637) (not e!4498004))))

(assert (=> b!7551082 (= res!3026637 (= (head!15536 testedP!423) (head!15536 knownP!30)))))

(assert (= (and d!2312975 (not res!3026636)) b!7551081))

(assert (= (and b!7551081 res!3026634) b!7551082))

(assert (= (and b!7551082 res!3026637) b!7551083))

(assert (= (and d!2312975 (not res!3026635)) b!7551084))

(assert (=> b!7551083 m!8117814))

(assert (=> b!7551083 m!8117804))

(assert (=> b!7551083 m!8117814))

(assert (=> b!7551083 m!8117804))

(declare-fun m!8118108 () Bool)

(assert (=> b!7551083 m!8118108))

(assert (=> b!7551084 m!8117646))

(assert (=> b!7551084 m!8117644))

(assert (=> b!7551082 m!8117818))

(assert (=> b!7551082 m!8117810))

(assert (=> b!7550624 d!2312975))

(declare-fun d!2312977 () Bool)

(assert (=> d!2312977 (isPrefix!6152 testedP!423 knownP!30)))

(declare-fun lt!2646894 () Unit!166830)

(assert (=> d!2312977 (= lt!2646894 (choose!58438 knownP!30 testedP!423 input!7874))))

(assert (=> d!2312977 (isPrefix!6152 knownP!30 input!7874)))

(assert (=> d!2312977 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!902 knownP!30 testedP!423 input!7874) lt!2646894)))

(declare-fun bs!1940200 () Bool)

(assert (= bs!1940200 d!2312977))

(assert (=> bs!1940200 m!8117666))

(declare-fun m!8118110 () Bool)

(assert (=> bs!1940200 m!8118110))

(assert (=> bs!1940200 m!8117654))

(assert (=> b!7550624 d!2312977))

(declare-fun b!7551100 () Bool)

(declare-fun e!4498010 () Bool)

(declare-fun tp!2196648 () Bool)

(declare-fun tp!2196652 () Bool)

(assert (=> b!7551100 (= e!4498010 (and tp!2196648 tp!2196652))))

(declare-fun b!7551098 () Bool)

(declare-fun tp!2196651 () Bool)

(declare-fun tp!2196650 () Bool)

(assert (=> b!7551098 (= e!4498010 (and tp!2196651 tp!2196650))))

(declare-fun b!7551099 () Bool)

(declare-fun tp!2196649 () Bool)

(assert (=> b!7551099 (= e!4498010 tp!2196649)))

(declare-fun b!7551097 () Bool)

(assert (=> b!7551097 (= e!4498010 tp_is_empty!50247)))

(assert (=> b!7550627 (= tp!2196588 e!4498010)))

(assert (= (and b!7550627 (is-ElementMatch!19946 (regOne!40405 r!24333))) b!7551097))

(assert (= (and b!7550627 (is-Concat!28791 (regOne!40405 r!24333))) b!7551098))

(assert (= (and b!7550627 (is-Star!19946 (regOne!40405 r!24333))) b!7551099))

(assert (= (and b!7550627 (is-Union!19946 (regOne!40405 r!24333))) b!7551100))

(declare-fun b!7551104 () Bool)

(declare-fun e!4498011 () Bool)

(declare-fun tp!2196653 () Bool)

(declare-fun tp!2196657 () Bool)

(assert (=> b!7551104 (= e!4498011 (and tp!2196653 tp!2196657))))

(declare-fun b!7551102 () Bool)

(declare-fun tp!2196656 () Bool)

(declare-fun tp!2196655 () Bool)

(assert (=> b!7551102 (= e!4498011 (and tp!2196656 tp!2196655))))

(declare-fun b!7551103 () Bool)

(declare-fun tp!2196654 () Bool)

(assert (=> b!7551103 (= e!4498011 tp!2196654)))

(declare-fun b!7551101 () Bool)

(assert (=> b!7551101 (= e!4498011 tp_is_empty!50247)))

(assert (=> b!7550627 (= tp!2196597 e!4498011)))

(assert (= (and b!7550627 (is-ElementMatch!19946 (regTwo!40405 r!24333))) b!7551101))

(assert (= (and b!7550627 (is-Concat!28791 (regTwo!40405 r!24333))) b!7551102))

(assert (= (and b!7550627 (is-Star!19946 (regTwo!40405 r!24333))) b!7551103))

(assert (= (and b!7550627 (is-Union!19946 (regTwo!40405 r!24333))) b!7551104))

(declare-fun b!7551109 () Bool)

(declare-fun e!4498014 () Bool)

(declare-fun tp!2196660 () Bool)

(assert (=> b!7551109 (= e!4498014 (and tp_is_empty!50247 tp!2196660))))

(assert (=> b!7550638 (= tp!2196596 e!4498014)))

(assert (= (and b!7550638 (is-Cons!72705 (t!387548 input!7874))) b!7551109))

(declare-fun b!7551113 () Bool)

(declare-fun e!4498015 () Bool)

(declare-fun tp!2196661 () Bool)

(declare-fun tp!2196665 () Bool)

(assert (=> b!7551113 (= e!4498015 (and tp!2196661 tp!2196665))))

(declare-fun b!7551111 () Bool)

(declare-fun tp!2196664 () Bool)

(declare-fun tp!2196663 () Bool)

(assert (=> b!7551111 (= e!4498015 (and tp!2196664 tp!2196663))))

(declare-fun b!7551112 () Bool)

(declare-fun tp!2196662 () Bool)

(assert (=> b!7551112 (= e!4498015 tp!2196662)))

(declare-fun b!7551110 () Bool)

(assert (=> b!7551110 (= e!4498015 tp_is_empty!50247)))

(assert (=> b!7550621 (= tp!2196598 e!4498015)))

(assert (= (and b!7550621 (is-ElementMatch!19946 (regOne!40404 r!24333))) b!7551110))

(assert (= (and b!7550621 (is-Concat!28791 (regOne!40404 r!24333))) b!7551111))

(assert (= (and b!7550621 (is-Star!19946 (regOne!40404 r!24333))) b!7551112))

(assert (= (and b!7550621 (is-Union!19946 (regOne!40404 r!24333))) b!7551113))

(declare-fun b!7551117 () Bool)

(declare-fun e!4498016 () Bool)

(declare-fun tp!2196666 () Bool)

(declare-fun tp!2196670 () Bool)

(assert (=> b!7551117 (= e!4498016 (and tp!2196666 tp!2196670))))

(declare-fun b!7551115 () Bool)

(declare-fun tp!2196669 () Bool)

(declare-fun tp!2196668 () Bool)

(assert (=> b!7551115 (= e!4498016 (and tp!2196669 tp!2196668))))

(declare-fun b!7551116 () Bool)

(declare-fun tp!2196667 () Bool)

(assert (=> b!7551116 (= e!4498016 tp!2196667)))

(declare-fun b!7551114 () Bool)

(assert (=> b!7551114 (= e!4498016 tp_is_empty!50247)))

(assert (=> b!7550621 (= tp!2196591 e!4498016)))

(assert (= (and b!7550621 (is-ElementMatch!19946 (regTwo!40404 r!24333))) b!7551114))

(assert (= (and b!7550621 (is-Concat!28791 (regTwo!40404 r!24333))) b!7551115))

(assert (= (and b!7550621 (is-Star!19946 (regTwo!40404 r!24333))) b!7551116))

(assert (= (and b!7550621 (is-Union!19946 (regTwo!40404 r!24333))) b!7551117))

(declare-fun b!7551121 () Bool)

(declare-fun e!4498017 () Bool)

(declare-fun tp!2196671 () Bool)

(declare-fun tp!2196675 () Bool)

(assert (=> b!7551121 (= e!4498017 (and tp!2196671 tp!2196675))))

(declare-fun b!7551119 () Bool)

(declare-fun tp!2196674 () Bool)

(declare-fun tp!2196673 () Bool)

(assert (=> b!7551119 (= e!4498017 (and tp!2196674 tp!2196673))))

(declare-fun b!7551120 () Bool)

(declare-fun tp!2196672 () Bool)

(assert (=> b!7551120 (= e!4498017 tp!2196672)))

(declare-fun b!7551118 () Bool)

(assert (=> b!7551118 (= e!4498017 tp_is_empty!50247)))

(assert (=> b!7550637 (= tp!2196592 e!4498017)))

(assert (= (and b!7550637 (is-ElementMatch!19946 (regOne!40404 baseR!101))) b!7551118))

(assert (= (and b!7550637 (is-Concat!28791 (regOne!40404 baseR!101))) b!7551119))

(assert (= (and b!7550637 (is-Star!19946 (regOne!40404 baseR!101))) b!7551120))

(assert (= (and b!7550637 (is-Union!19946 (regOne!40404 baseR!101))) b!7551121))

(declare-fun b!7551125 () Bool)

(declare-fun e!4498018 () Bool)

(declare-fun tp!2196676 () Bool)

(declare-fun tp!2196680 () Bool)

(assert (=> b!7551125 (= e!4498018 (and tp!2196676 tp!2196680))))

(declare-fun b!7551123 () Bool)

(declare-fun tp!2196679 () Bool)

(declare-fun tp!2196678 () Bool)

(assert (=> b!7551123 (= e!4498018 (and tp!2196679 tp!2196678))))

(declare-fun b!7551124 () Bool)

(declare-fun tp!2196677 () Bool)

(assert (=> b!7551124 (= e!4498018 tp!2196677)))

(declare-fun b!7551122 () Bool)

(assert (=> b!7551122 (= e!4498018 tp_is_empty!50247)))

(assert (=> b!7550637 (= tp!2196594 e!4498018)))

(assert (= (and b!7550637 (is-ElementMatch!19946 (regTwo!40404 baseR!101))) b!7551122))

(assert (= (and b!7550637 (is-Concat!28791 (regTwo!40404 baseR!101))) b!7551123))

(assert (= (and b!7550637 (is-Star!19946 (regTwo!40404 baseR!101))) b!7551124))

(assert (= (and b!7550637 (is-Union!19946 (regTwo!40404 baseR!101))) b!7551125))

(declare-fun b!7551126 () Bool)

(declare-fun e!4498019 () Bool)

(declare-fun tp!2196681 () Bool)

(assert (=> b!7551126 (= e!4498019 (and tp_is_empty!50247 tp!2196681))))

(assert (=> b!7550623 (= tp!2196589 e!4498019)))

(assert (= (and b!7550623 (is-Cons!72705 (t!387548 knownP!30))) b!7551126))

(declare-fun b!7551127 () Bool)

(declare-fun e!4498020 () Bool)

(declare-fun tp!2196682 () Bool)

(assert (=> b!7551127 (= e!4498020 (and tp_is_empty!50247 tp!2196682))))

(assert (=> b!7550639 (= tp!2196587 e!4498020)))

(assert (= (and b!7550639 (is-Cons!72705 (t!387548 testedP!423))) b!7551127))

(declare-fun b!7551131 () Bool)

(declare-fun e!4498021 () Bool)

(declare-fun tp!2196683 () Bool)

(declare-fun tp!2196687 () Bool)

(assert (=> b!7551131 (= e!4498021 (and tp!2196683 tp!2196687))))

(declare-fun b!7551129 () Bool)

(declare-fun tp!2196686 () Bool)

(declare-fun tp!2196685 () Bool)

(assert (=> b!7551129 (= e!4498021 (and tp!2196686 tp!2196685))))

(declare-fun b!7551130 () Bool)

(declare-fun tp!2196684 () Bool)

(assert (=> b!7551130 (= e!4498021 tp!2196684)))

(declare-fun b!7551128 () Bool)

(assert (=> b!7551128 (= e!4498021 tp_is_empty!50247)))

(assert (=> b!7550628 (= tp!2196590 e!4498021)))

(assert (= (and b!7550628 (is-ElementMatch!19946 (regOne!40405 baseR!101))) b!7551128))

(assert (= (and b!7550628 (is-Concat!28791 (regOne!40405 baseR!101))) b!7551129))

(assert (= (and b!7550628 (is-Star!19946 (regOne!40405 baseR!101))) b!7551130))

(assert (= (and b!7550628 (is-Union!19946 (regOne!40405 baseR!101))) b!7551131))

(declare-fun b!7551139 () Bool)

(declare-fun e!4498025 () Bool)

(declare-fun tp!2196688 () Bool)

(declare-fun tp!2196692 () Bool)

(assert (=> b!7551139 (= e!4498025 (and tp!2196688 tp!2196692))))

(declare-fun b!7551137 () Bool)

(declare-fun tp!2196691 () Bool)

(declare-fun tp!2196690 () Bool)

(assert (=> b!7551137 (= e!4498025 (and tp!2196691 tp!2196690))))

(declare-fun b!7551138 () Bool)

(declare-fun tp!2196689 () Bool)

(assert (=> b!7551138 (= e!4498025 tp!2196689)))

(declare-fun b!7551136 () Bool)

(assert (=> b!7551136 (= e!4498025 tp_is_empty!50247)))

(assert (=> b!7550628 (= tp!2196595 e!4498025)))

(assert (= (and b!7550628 (is-ElementMatch!19946 (regTwo!40405 baseR!101))) b!7551136))

(assert (= (and b!7550628 (is-Concat!28791 (regTwo!40405 baseR!101))) b!7551137))

(assert (= (and b!7550628 (is-Star!19946 (regTwo!40405 baseR!101))) b!7551138))

(assert (= (and b!7550628 (is-Union!19946 (regTwo!40405 baseR!101))) b!7551139))

(declare-fun b!7551143 () Bool)

(declare-fun e!4498026 () Bool)

(declare-fun tp!2196693 () Bool)

(declare-fun tp!2196697 () Bool)

(assert (=> b!7551143 (= e!4498026 (and tp!2196693 tp!2196697))))

(declare-fun b!7551141 () Bool)

(declare-fun tp!2196696 () Bool)

(declare-fun tp!2196695 () Bool)

(assert (=> b!7551141 (= e!4498026 (and tp!2196696 tp!2196695))))

(declare-fun b!7551142 () Bool)

(declare-fun tp!2196694 () Bool)

(assert (=> b!7551142 (= e!4498026 tp!2196694)))

(declare-fun b!7551140 () Bool)

(assert (=> b!7551140 (= e!4498026 tp_is_empty!50247)))

(assert (=> b!7550630 (= tp!2196586 e!4498026)))

(assert (= (and b!7550630 (is-ElementMatch!19946 (reg!20275 baseR!101))) b!7551140))

(assert (= (and b!7550630 (is-Concat!28791 (reg!20275 baseR!101))) b!7551141))

(assert (= (and b!7550630 (is-Star!19946 (reg!20275 baseR!101))) b!7551142))

(assert (= (and b!7550630 (is-Union!19946 (reg!20275 baseR!101))) b!7551143))

(declare-fun b!7551147 () Bool)

(declare-fun e!4498027 () Bool)

(declare-fun tp!2196698 () Bool)

(declare-fun tp!2196702 () Bool)

(assert (=> b!7551147 (= e!4498027 (and tp!2196698 tp!2196702))))

(declare-fun b!7551145 () Bool)

(declare-fun tp!2196701 () Bool)

(declare-fun tp!2196700 () Bool)

(assert (=> b!7551145 (= e!4498027 (and tp!2196701 tp!2196700))))

(declare-fun b!7551146 () Bool)

(declare-fun tp!2196699 () Bool)

(assert (=> b!7551146 (= e!4498027 tp!2196699)))

(declare-fun b!7551144 () Bool)

(assert (=> b!7551144 (= e!4498027 tp_is_empty!50247)))

(assert (=> b!7550645 (= tp!2196593 e!4498027)))

(assert (= (and b!7550645 (is-ElementMatch!19946 (reg!20275 r!24333))) b!7551144))

(assert (= (and b!7550645 (is-Concat!28791 (reg!20275 r!24333))) b!7551145))

(assert (= (and b!7550645 (is-Star!19946 (reg!20275 r!24333))) b!7551146))

(assert (= (and b!7550645 (is-Union!19946 (reg!20275 r!24333))) b!7551147))

(push 1)

(assert (not b!7551109))

(assert (not b!7551145))

(assert (not b!7550966))

(assert (not b!7550800))

(assert (not b!7550838))

(assert (not bm!692375))

(assert (not bm!692373))

(assert (not d!2312971))

(assert (not b!7551082))

(assert (not b!7550818))

(assert (not b!7550965))

(assert (not d!2312941))

(assert (not d!2312883))

(assert (not b!7551126))

(assert (not b!7550823))

(assert (not b!7550981))

(assert (not b!7550776))

(assert (not b!7551131))

(assert (not b!7551137))

(assert (not b!7550835))

(assert (not bm!692354))

(assert (not b!7550798))

(assert (not b!7551125))

(assert (not b!7551069))

(assert (not b!7551141))

(assert (not b!7551084))

(assert (not d!2312897))

(assert (not b!7550830))

(assert (not b!7551113))

(assert (not b!7550822))

(assert (not bm!692359))

(assert (not b!7550819))

(assert (not bm!692370))

(assert (not b!7550760))

(assert (not d!2312917))

(assert (not b!7551102))

(assert (not b!7550799))

(assert (not b!7551115))

(assert (not b!7551009))

(assert (not bm!692355))

(assert (not b!7551103))

(assert (not b!7551006))

(assert (not b!7551147))

(assert (not d!2312867))

(assert (not d!2312911))

(assert (not d!2312945))

(assert (not b!7551074))

(assert (not b!7551064))

(assert (not b!7551146))

(assert (not b!7551079))

(assert (not b!7551121))

(assert (not d!2312929))

(assert (not d!2312947))

(assert (not b!7550840))

(assert (not d!2312889))

(assert (not b!7551117))

(assert (not b!7551119))

(assert (not b!7551098))

(assert (not bm!692371))

(assert (not d!2312951))

(assert tp_is_empty!50247)

(assert (not b!7551007))

(assert (not b!7551071))

(assert (not b!7550831))

(assert (not b!7551124))

(assert (not d!2312921))

(assert (not b!7550795))

(assert (not d!2312977))

(assert (not bm!692374))

(assert (not d!2312887))

(assert (not b!7551047))

(assert (not b!7551143))

(assert (not b!7551066))

(assert (not b!7551099))

(assert (not b!7550794))

(assert (not b!7551120))

(assert (not b!7551070))

(assert (not b!7551116))

(assert (not b!7551010))

(assert (not b!7551127))

(assert (not b!7551111))

(assert (not b!7550834))

(assert (not b!7551130))

(assert (not b!7551142))

(assert (not b!7551054))

(assert (not b!7551129))

(assert (not d!2312907))

(assert (not b!7550826))

(assert (not b!7550796))

(assert (not b!7550957))

(assert (not b!7551100))

(assert (not b!7551000))

(assert (not b!7550977))

(assert (not b!7550827))

(assert (not d!2312935))

(assert (not b!7551075))

(assert (not b!7550982))

(assert (not b!7550962))

(assert (not b!7551083))

(assert (not b!7550974))

(assert (not b!7550961))

(assert (not b!7551123))

(assert (not b!7550978))

(assert (not b!7551002))

(assert (not b!7551104))

(assert (not b!7551005))

(assert (not b!7550983))

(assert (not d!2312877))

(assert (not b!7551112))

(assert (not d!2312967))

(assert (not b!7551138))

(assert (not d!2312953))

(assert (not d!2312891))

(assert (not d!2312885))

(assert (not b!7550960))

(assert (not b!7551139))

(assert (not b!7550895))

(assert (not d!2312973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

