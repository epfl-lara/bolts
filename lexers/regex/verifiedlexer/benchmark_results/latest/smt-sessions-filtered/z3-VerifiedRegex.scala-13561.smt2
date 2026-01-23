; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729680 () Bool)

(assert start!729680)

(declare-fun b!7544810 () Bool)

(declare-fun e!4494915 () Bool)

(declare-fun tp!2194554 () Bool)

(declare-fun tp!2194547 () Bool)

(assert (=> b!7544810 (= e!4494915 (and tp!2194554 tp!2194547))))

(declare-fun b!7544811 () Bool)

(declare-fun tp!2194555 () Bool)

(assert (=> b!7544811 (= e!4494915 tp!2194555)))

(declare-fun b!7544813 () Bool)

(declare-fun e!4494917 () Bool)

(declare-fun e!4494916 () Bool)

(assert (=> b!7544813 (= e!4494917 e!4494916)))

(declare-fun res!3023766 () Bool)

(assert (=> b!7544813 (=> res!3023766 e!4494916)))

(declare-datatypes ((C!40160 0))(
  ( (C!40161 (val!30520 Int)) )
))
(declare-datatypes ((List!72800 0))(
  ( (Nil!72676) (Cons!72676 (h!79124 C!40160) (t!387517 List!72800)) )
))
(declare-fun input!7874 () List!72800)

(declare-fun knownP!30 () List!72800)

(declare-fun lt!2644628 () List!72800)

(declare-fun ++!17434 (List!72800 List!72800) List!72800)

(assert (=> b!7544813 (= res!3023766 (not (= (++!17434 knownP!30 lt!2644628) input!7874)))))

(declare-fun getSuffix!3603 (List!72800 List!72800) List!72800)

(assert (=> b!7544813 (= lt!2644628 (getSuffix!3603 input!7874 knownP!30))))

(declare-fun lt!2644627 () List!72800)

(declare-fun lt!2644637 () List!72800)

(assert (=> b!7544813 (= lt!2644627 (getSuffix!3603 knownP!30 lt!2644637))))

(declare-fun isPrefix!6123 (List!72800 List!72800) Bool)

(assert (=> b!7544813 (isPrefix!6123 lt!2644637 knownP!30)))

(declare-datatypes ((Unit!166772 0))(
  ( (Unit!166773) )
))
(declare-fun lt!2644636 () Unit!166772)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!873 (List!72800 List!72800 List!72800) Unit!166772)

(assert (=> b!7544813 (= lt!2644636 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!873 knownP!30 lt!2644637 input!7874))))

(declare-datatypes ((Regex!19917 0))(
  ( (ElementMatch!19917 (c!1392904 C!40160)) (Concat!28762 (regOne!40346 Regex!19917) (regTwo!40346 Regex!19917)) (EmptyExpr!19917) (Star!19917 (reg!20246 Regex!19917)) (EmptyLang!19917) (Union!19917 (regOne!40347 Regex!19917) (regTwo!40347 Regex!19917)) )
))
(declare-fun baseR!101 () Regex!19917)

(declare-fun lt!2644625 () C!40160)

(declare-fun r!24333 () Regex!19917)

(declare-fun derivative!449 (Regex!19917 List!72800) Regex!19917)

(declare-fun derivativeStep!5707 (Regex!19917 C!40160) Regex!19917)

(assert (=> b!7544813 (= (derivative!449 baseR!101 lt!2644637) (derivativeStep!5707 r!24333 lt!2644625))))

(declare-fun lt!2644621 () Unit!166772)

(declare-fun testedP!423 () List!72800)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!155 (Regex!19917 Regex!19917 List!72800 C!40160) Unit!166772)

(assert (=> b!7544813 (= lt!2644621 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!155 baseR!101 r!24333 testedP!423 lt!2644625))))

(assert (=> b!7544813 (isPrefix!6123 lt!2644637 input!7874)))

(declare-fun lt!2644630 () Unit!166772)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1188 (List!72800 List!72800) Unit!166772)

(assert (=> b!7544813 (= lt!2644630 (lemmaAddHeadSuffixToPrefixStillPrefix!1188 testedP!423 input!7874))))

(declare-fun lt!2644626 () List!72800)

(assert (=> b!7544813 (= lt!2644637 (++!17434 testedP!423 lt!2644626))))

(assert (=> b!7544813 (= lt!2644626 (Cons!72676 lt!2644625 Nil!72676))))

(declare-fun lt!2644622 () List!72800)

(declare-fun head!15507 (List!72800) C!40160)

(assert (=> b!7544813 (= lt!2644625 (head!15507 lt!2644622))))

(assert (=> b!7544813 (= lt!2644622 (getSuffix!3603 input!7874 testedP!423))))

(declare-fun b!7544814 () Bool)

(declare-fun res!3023773 () Bool)

(assert (=> b!7544814 (=> res!3023773 e!4494917)))

(assert (=> b!7544814 (= res!3023773 (not (= (derivative!449 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7544815 () Bool)

(declare-fun res!3023779 () Bool)

(declare-fun e!4494909 () Bool)

(assert (=> b!7544815 (=> (not res!3023779) (not e!4494909))))

(declare-fun matchR!9519 (Regex!19917 List!72800) Bool)

(assert (=> b!7544815 (= res!3023779 (matchR!9519 baseR!101 knownP!30))))

(declare-fun b!7544816 () Bool)

(declare-fun res!3023772 () Bool)

(declare-fun e!4494912 () Bool)

(assert (=> b!7544816 (=> res!3023772 e!4494912)))

(assert (=> b!7544816 (= res!3023772 (not (= (++!17434 testedP!423 lt!2644622) input!7874)))))

(declare-fun b!7544817 () Bool)

(declare-fun res!3023769 () Bool)

(declare-fun e!4494905 () Bool)

(assert (=> b!7544817 (=> (not res!3023769) (not e!4494905))))

(assert (=> b!7544817 (= res!3023769 (isPrefix!6123 knownP!30 input!7874))))

(declare-fun b!7544818 () Bool)

(declare-fun res!3023777 () Bool)

(assert (=> b!7544818 (=> res!3023777 e!4494917)))

(declare-fun lt!2644631 () Int)

(declare-fun lt!2644623 () Int)

(assert (=> b!7544818 (= res!3023777 (= lt!2644631 lt!2644623))))

(declare-fun b!7544819 () Bool)

(declare-fun e!4494910 () Bool)

(declare-fun e!4494914 () Bool)

(assert (=> b!7544819 (= e!4494910 e!4494914)))

(declare-fun res!3023780 () Bool)

(assert (=> b!7544819 (=> res!3023780 e!4494914)))

(declare-fun lt!2644635 () List!72800)

(assert (=> b!7544819 (= res!3023780 (not (= (head!15507 lt!2644635) lt!2644625)))))

(declare-fun lt!2644638 () List!72800)

(assert (=> b!7544819 (= lt!2644638 lt!2644622)))

(declare-fun lt!2644618 () Unit!166772)

(declare-fun lemmaSamePrefixThenSameSuffix!2851 (List!72800 List!72800 List!72800 List!72800 List!72800) Unit!166772)

(assert (=> b!7544819 (= lt!2644618 (lemmaSamePrefixThenSameSuffix!2851 testedP!423 lt!2644638 testedP!423 lt!2644622 input!7874))))

(declare-fun b!7544820 () Bool)

(declare-fun res!3023767 () Bool)

(assert (=> b!7544820 (=> res!3023767 e!4494917)))

(declare-fun lostCause!1709 (Regex!19917) Bool)

(assert (=> b!7544820 (= res!3023767 (lostCause!1709 r!24333))))

(declare-fun b!7544821 () Bool)

(declare-fun e!4494913 () Bool)

(declare-fun tp!2194549 () Bool)

(declare-fun tp!2194548 () Bool)

(assert (=> b!7544821 (= e!4494913 (and tp!2194549 tp!2194548))))

(declare-fun b!7544822 () Bool)

(declare-fun res!3023770 () Bool)

(assert (=> b!7544822 (=> res!3023770 e!4494914)))

(declare-fun lt!2644617 () List!72800)

(assert (=> b!7544822 (= res!3023770 (not (= lt!2644617 knownP!30)))))

(declare-fun b!7544823 () Bool)

(declare-fun e!4494906 () Bool)

(assert (=> b!7544823 (= e!4494914 e!4494906)))

(declare-fun res!3023775 () Bool)

(assert (=> b!7544823 (=> res!3023775 e!4494906)))

(declare-fun lt!2644629 () List!72800)

(assert (=> b!7544823 (= res!3023775 (not (= lt!2644629 knownP!30)))))

(assert (=> b!7544823 (= lt!2644629 (++!17434 lt!2644637 lt!2644627))))

(declare-fun b!7544824 () Bool)

(declare-fun res!3023782 () Bool)

(assert (=> b!7544824 (=> res!3023782 e!4494917)))

(declare-fun size!42413 (List!72800) Int)

(assert (=> b!7544824 (= res!3023782 (>= lt!2644631 (size!42413 input!7874)))))

(declare-fun b!7544812 () Bool)

(assert (=> b!7544812 (= e!4494909 (not e!4494917))))

(declare-fun res!3023765 () Bool)

(assert (=> b!7544812 (=> res!3023765 e!4494917)))

(assert (=> b!7544812 (= res!3023765 (not (matchR!9519 r!24333 lt!2644635)))))

(assert (=> b!7544812 (= lt!2644635 (getSuffix!3603 knownP!30 testedP!423))))

(assert (=> b!7544812 (isPrefix!6123 testedP!423 knownP!30)))

(declare-fun lt!2644633 () Unit!166772)

(assert (=> b!7544812 (= lt!2644633 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!873 knownP!30 testedP!423 input!7874))))

(declare-fun res!3023774 () Bool)

(assert (=> start!729680 (=> (not res!3023774) (not e!4494905))))

(declare-fun validRegex!10345 (Regex!19917) Bool)

(assert (=> start!729680 (= res!3023774 (validRegex!10345 baseR!101))))

(assert (=> start!729680 e!4494905))

(assert (=> start!729680 e!4494915))

(declare-fun e!4494907 () Bool)

(assert (=> start!729680 e!4494907))

(declare-fun e!4494908 () Bool)

(assert (=> start!729680 e!4494908))

(declare-fun e!4494911 () Bool)

(assert (=> start!729680 e!4494911))

(assert (=> start!729680 e!4494913))

(declare-fun b!7544825 () Bool)

(declare-fun tp!2194552 () Bool)

(declare-fun tp!2194553 () Bool)

(assert (=> b!7544825 (= e!4494913 (and tp!2194552 tp!2194553))))

(declare-fun b!7544826 () Bool)

(assert (=> b!7544826 (= e!4494912 e!4494910)))

(declare-fun res!3023781 () Bool)

(assert (=> b!7544826 (=> res!3023781 e!4494910)))

(declare-fun lt!2644619 () List!72800)

(assert (=> b!7544826 (= res!3023781 (not (= lt!2644619 input!7874)))))

(declare-fun lt!2644634 () List!72800)

(assert (=> b!7544826 (= lt!2644634 lt!2644619)))

(assert (=> b!7544826 (= lt!2644619 (++!17434 testedP!423 lt!2644638))))

(assert (=> b!7544826 (= lt!2644638 (++!17434 lt!2644635 lt!2644628))))

(declare-fun lt!2644616 () Unit!166772)

(declare-fun lemmaConcatAssociativity!3082 (List!72800 List!72800 List!72800) Unit!166772)

(assert (=> b!7544826 (= lt!2644616 (lemmaConcatAssociativity!3082 testedP!423 lt!2644635 lt!2644628))))

(declare-fun b!7544827 () Bool)

(declare-fun res!3023776 () Bool)

(assert (=> b!7544827 (=> (not res!3023776) (not e!4494905))))

(assert (=> b!7544827 (= res!3023776 (validRegex!10345 r!24333))))

(declare-fun b!7544828 () Bool)

(assert (=> b!7544828 (= e!4494905 e!4494909)))

(declare-fun res!3023768 () Bool)

(assert (=> b!7544828 (=> (not res!3023768) (not e!4494909))))

(assert (=> b!7544828 (= res!3023768 (>= lt!2644623 lt!2644631))))

(assert (=> b!7544828 (= lt!2644631 (size!42413 testedP!423))))

(assert (=> b!7544828 (= lt!2644623 (size!42413 knownP!30))))

(declare-fun b!7544829 () Bool)

(declare-fun tp!2194557 () Bool)

(declare-fun tp!2194545 () Bool)

(assert (=> b!7544829 (= e!4494915 (and tp!2194557 tp!2194545))))

(declare-fun b!7544830 () Bool)

(declare-fun res!3023764 () Bool)

(assert (=> b!7544830 (=> res!3023764 e!4494914)))

(declare-fun $colon$colon!3377 (List!72800 C!40160) List!72800)

(declare-fun tail!15053 (List!72800) List!72800)

(assert (=> b!7544830 (= res!3023764 (not (= lt!2644635 ($colon$colon!3377 (tail!15053 lt!2644635) lt!2644625))))))

(declare-fun b!7544831 () Bool)

(declare-fun res!3023778 () Bool)

(assert (=> b!7544831 (=> (not res!3023778) (not e!4494905))))

(assert (=> b!7544831 (= res!3023778 (isPrefix!6123 testedP!423 input!7874))))

(declare-fun b!7544832 () Bool)

(declare-fun tp_is_empty!50189 () Bool)

(declare-fun tp!2194550 () Bool)

(assert (=> b!7544832 (= e!4494907 (and tp_is_empty!50189 tp!2194550))))

(declare-fun b!7544833 () Bool)

(declare-fun tp!2194551 () Bool)

(assert (=> b!7544833 (= e!4494913 tp!2194551)))

(declare-fun b!7544834 () Bool)

(assert (=> b!7544834 (= e!4494906 true)))

(declare-fun lt!2644624 () List!72800)

(assert (=> b!7544834 (= lt!2644624 lt!2644635)))

(declare-fun lt!2644620 () Unit!166772)

(assert (=> b!7544834 (= lt!2644620 (lemmaSamePrefixThenSameSuffix!2851 testedP!423 lt!2644624 testedP!423 lt!2644635 knownP!30))))

(assert (=> b!7544834 (= lt!2644629 (++!17434 testedP!423 lt!2644624))))

(assert (=> b!7544834 (= lt!2644624 (++!17434 lt!2644626 lt!2644627))))

(declare-fun lt!2644632 () Unit!166772)

(assert (=> b!7544834 (= lt!2644632 (lemmaConcatAssociativity!3082 testedP!423 lt!2644626 lt!2644627))))

(declare-fun b!7544835 () Bool)

(assert (=> b!7544835 (= e!4494916 e!4494912)))

(declare-fun res!3023771 () Bool)

(assert (=> b!7544835 (=> res!3023771 e!4494912)))

(assert (=> b!7544835 (= res!3023771 (not (= lt!2644634 input!7874)))))

(assert (=> b!7544835 (= lt!2644634 (++!17434 lt!2644617 lt!2644628))))

(assert (=> b!7544835 (= lt!2644617 (++!17434 testedP!423 lt!2644635))))

(declare-fun b!7544836 () Bool)

(declare-fun tp!2194546 () Bool)

(assert (=> b!7544836 (= e!4494911 (and tp_is_empty!50189 tp!2194546))))

(declare-fun b!7544837 () Bool)

(declare-fun tp!2194556 () Bool)

(assert (=> b!7544837 (= e!4494908 (and tp_is_empty!50189 tp!2194556))))

(declare-fun b!7544838 () Bool)

(assert (=> b!7544838 (= e!4494913 tp_is_empty!50189)))

(declare-fun b!7544839 () Bool)

(assert (=> b!7544839 (= e!4494915 tp_is_empty!50189)))

(assert (= (and start!729680 res!3023774) b!7544827))

(assert (= (and b!7544827 res!3023776) b!7544831))

(assert (= (and b!7544831 res!3023778) b!7544817))

(assert (= (and b!7544817 res!3023769) b!7544828))

(assert (= (and b!7544828 res!3023768) b!7544815))

(assert (= (and b!7544815 res!3023779) b!7544812))

(assert (= (and b!7544812 (not res!3023765)) b!7544814))

(assert (= (and b!7544814 (not res!3023773)) b!7544820))

(assert (= (and b!7544820 (not res!3023767)) b!7544818))

(assert (= (and b!7544818 (not res!3023777)) b!7544824))

(assert (= (and b!7544824 (not res!3023782)) b!7544813))

(assert (= (and b!7544813 (not res!3023766)) b!7544835))

(assert (= (and b!7544835 (not res!3023771)) b!7544816))

(assert (= (and b!7544816 (not res!3023772)) b!7544826))

(assert (= (and b!7544826 (not res!3023781)) b!7544819))

(assert (= (and b!7544819 (not res!3023780)) b!7544830))

(assert (= (and b!7544830 (not res!3023764)) b!7544822))

(assert (= (and b!7544822 (not res!3023770)) b!7544823))

(assert (= (and b!7544823 (not res!3023775)) b!7544834))

(get-info :version)

(assert (= (and start!729680 ((_ is ElementMatch!19917) baseR!101)) b!7544839))

(assert (= (and start!729680 ((_ is Concat!28762) baseR!101)) b!7544829))

(assert (= (and start!729680 ((_ is Star!19917) baseR!101)) b!7544811))

(assert (= (and start!729680 ((_ is Union!19917) baseR!101)) b!7544810))

(assert (= (and start!729680 ((_ is Cons!72676) input!7874)) b!7544832))

(assert (= (and start!729680 ((_ is Cons!72676) knownP!30)) b!7544837))

(assert (= (and start!729680 ((_ is Cons!72676) testedP!423)) b!7544836))

(assert (= (and start!729680 ((_ is ElementMatch!19917) r!24333)) b!7544838))

(assert (= (and start!729680 ((_ is Concat!28762) r!24333)) b!7544821))

(assert (= (and start!729680 ((_ is Star!19917) r!24333)) b!7544833))

(assert (= (and start!729680 ((_ is Union!19917) r!24333)) b!7544825))

(declare-fun m!8113438 () Bool)

(assert (=> b!7544830 m!8113438))

(assert (=> b!7544830 m!8113438))

(declare-fun m!8113440 () Bool)

(assert (=> b!7544830 m!8113440))

(declare-fun m!8113442 () Bool)

(assert (=> b!7544826 m!8113442))

(declare-fun m!8113444 () Bool)

(assert (=> b!7544826 m!8113444))

(declare-fun m!8113446 () Bool)

(assert (=> b!7544826 m!8113446))

(declare-fun m!8113448 () Bool)

(assert (=> b!7544824 m!8113448))

(declare-fun m!8113450 () Bool)

(assert (=> b!7544834 m!8113450))

(declare-fun m!8113452 () Bool)

(assert (=> b!7544834 m!8113452))

(declare-fun m!8113454 () Bool)

(assert (=> b!7544834 m!8113454))

(declare-fun m!8113456 () Bool)

(assert (=> b!7544834 m!8113456))

(declare-fun m!8113458 () Bool)

(assert (=> b!7544812 m!8113458))

(declare-fun m!8113460 () Bool)

(assert (=> b!7544812 m!8113460))

(declare-fun m!8113462 () Bool)

(assert (=> b!7544812 m!8113462))

(declare-fun m!8113464 () Bool)

(assert (=> b!7544812 m!8113464))

(declare-fun m!8113466 () Bool)

(assert (=> b!7544819 m!8113466))

(declare-fun m!8113468 () Bool)

(assert (=> b!7544819 m!8113468))

(declare-fun m!8113470 () Bool)

(assert (=> b!7544827 m!8113470))

(declare-fun m!8113472 () Bool)

(assert (=> b!7544823 m!8113472))

(declare-fun m!8113474 () Bool)

(assert (=> b!7544835 m!8113474))

(declare-fun m!8113476 () Bool)

(assert (=> b!7544835 m!8113476))

(declare-fun m!8113478 () Bool)

(assert (=> b!7544820 m!8113478))

(declare-fun m!8113480 () Bool)

(assert (=> b!7544828 m!8113480))

(declare-fun m!8113482 () Bool)

(assert (=> b!7544828 m!8113482))

(declare-fun m!8113484 () Bool)

(assert (=> b!7544831 m!8113484))

(declare-fun m!8113486 () Bool)

(assert (=> b!7544815 m!8113486))

(declare-fun m!8113488 () Bool)

(assert (=> b!7544817 m!8113488))

(declare-fun m!8113490 () Bool)

(assert (=> start!729680 m!8113490))

(declare-fun m!8113492 () Bool)

(assert (=> b!7544814 m!8113492))

(declare-fun m!8113494 () Bool)

(assert (=> b!7544813 m!8113494))

(declare-fun m!8113496 () Bool)

(assert (=> b!7544813 m!8113496))

(declare-fun m!8113498 () Bool)

(assert (=> b!7544813 m!8113498))

(declare-fun m!8113500 () Bool)

(assert (=> b!7544813 m!8113500))

(declare-fun m!8113502 () Bool)

(assert (=> b!7544813 m!8113502))

(declare-fun m!8113504 () Bool)

(assert (=> b!7544813 m!8113504))

(declare-fun m!8113506 () Bool)

(assert (=> b!7544813 m!8113506))

(declare-fun m!8113508 () Bool)

(assert (=> b!7544813 m!8113508))

(declare-fun m!8113510 () Bool)

(assert (=> b!7544813 m!8113510))

(declare-fun m!8113512 () Bool)

(assert (=> b!7544813 m!8113512))

(declare-fun m!8113514 () Bool)

(assert (=> b!7544813 m!8113514))

(declare-fun m!8113516 () Bool)

(assert (=> b!7544813 m!8113516))

(declare-fun m!8113518 () Bool)

(assert (=> b!7544813 m!8113518))

(declare-fun m!8113520 () Bool)

(assert (=> b!7544816 m!8113520))

(check-sat (not b!7544825) (not b!7544830) (not b!7544815) (not b!7544835) (not b!7544810) (not start!729680) (not b!7544827) (not b!7544819) (not b!7544817) (not b!7544833) (not b!7544816) (not b!7544824) (not b!7544832) (not b!7544813) (not b!7544826) (not b!7544821) (not b!7544820) (not b!7544828) (not b!7544834) (not b!7544831) (not b!7544836) (not b!7544829) (not b!7544823) (not b!7544811) (not b!7544837) (not b!7544812) (not b!7544814) tp_is_empty!50189)
(check-sat)
