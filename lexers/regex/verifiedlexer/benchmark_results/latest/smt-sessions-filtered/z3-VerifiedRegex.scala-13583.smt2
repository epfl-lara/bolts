; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730364 () Bool)

(assert start!730364)

(declare-fun b!7554535 () Bool)

(declare-fun e!4499633 () Bool)

(declare-fun e!4499635 () Bool)

(assert (=> b!7554535 (= e!4499633 e!4499635)))

(declare-fun res!3027855 () Bool)

(assert (=> b!7554535 (=> (not res!3027855) (not e!4499635))))

(declare-fun lt!2647722 () Int)

(declare-fun lt!2647721 () Int)

(assert (=> b!7554535 (= res!3027855 (>= lt!2647722 lt!2647721))))

(declare-datatypes ((C!40248 0))(
  ( (C!40249 (val!30564 Int)) )
))
(declare-datatypes ((List!72844 0))(
  ( (Nil!72720) (Cons!72720 (h!79168 C!40248) (t!387569 List!72844)) )
))
(declare-fun testedP!423 () List!72844)

(declare-fun size!42457 (List!72844) Int)

(assert (=> b!7554535 (= lt!2647721 (size!42457 testedP!423))))

(declare-fun knownP!30 () List!72844)

(assert (=> b!7554535 (= lt!2647722 (size!42457 knownP!30))))

(declare-fun b!7554536 () Bool)

(declare-fun e!4499630 () Bool)

(declare-fun tp!2198075 () Bool)

(declare-fun tp!2198072 () Bool)

(assert (=> b!7554536 (= e!4499630 (and tp!2198075 tp!2198072))))

(declare-fun b!7554537 () Bool)

(declare-fun e!4499634 () Bool)

(declare-fun tp_is_empty!50277 () Bool)

(declare-fun tp!2198077 () Bool)

(assert (=> b!7554537 (= e!4499634 (and tp_is_empty!50277 tp!2198077))))

(declare-fun b!7554538 () Bool)

(declare-fun res!3027851 () Bool)

(declare-fun e!4499632 () Bool)

(assert (=> b!7554538 (=> res!3027851 e!4499632)))

(declare-datatypes ((Regex!19961 0))(
  ( (ElementMatch!19961 (c!1394288 C!40248)) (Concat!28806 (regOne!40434 Regex!19961) (regTwo!40434 Regex!19961)) (EmptyExpr!19961) (Star!19961 (reg!20290 Regex!19961)) (EmptyLang!19961) (Union!19961 (regOne!40435 Regex!19961) (regTwo!40435 Regex!19961)) )
))
(declare-fun r!24333 () Regex!19961)

(declare-fun baseR!101 () Regex!19961)

(declare-fun derivative!491 (Regex!19961 List!72844) Regex!19961)

(assert (=> b!7554538 (= res!3027851 (not (= (derivative!491 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7554539 () Bool)

(declare-fun tp!2198073 () Bool)

(declare-fun tp!2198074 () Bool)

(assert (=> b!7554539 (= e!4499630 (and tp!2198073 tp!2198074))))

(declare-fun b!7554540 () Bool)

(declare-fun e!4499628 () Bool)

(declare-fun tp!2198068 () Bool)

(assert (=> b!7554540 (= e!4499628 tp!2198068)))

(declare-fun b!7554541 () Bool)

(declare-fun res!3027852 () Bool)

(assert (=> b!7554541 (=> (not res!3027852) (not e!4499633))))

(declare-fun validRegex!10389 (Regex!19961) Bool)

(assert (=> b!7554541 (= res!3027852 (validRegex!10389 r!24333))))

(declare-fun b!7554542 () Bool)

(assert (=> b!7554542 (= e!4499635 (not e!4499632))))

(declare-fun res!3027850 () Bool)

(assert (=> b!7554542 (=> res!3027850 e!4499632)))

(declare-fun matchR!9563 (Regex!19961 List!72844) Bool)

(declare-fun getSuffix!3645 (List!72844 List!72844) List!72844)

(assert (=> b!7554542 (= res!3027850 (not (matchR!9563 r!24333 (getSuffix!3645 knownP!30 testedP!423))))))

(declare-fun isPrefix!6167 (List!72844 List!72844) Bool)

(assert (=> b!7554542 (isPrefix!6167 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166856 0))(
  ( (Unit!166857) )
))
(declare-fun lt!2647723 () Unit!166856)

(declare-fun input!7874 () List!72844)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!915 (List!72844 List!72844 List!72844) Unit!166856)

(assert (=> b!7554542 (= lt!2647723 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!915 knownP!30 testedP!423 input!7874))))

(declare-fun b!7554543 () Bool)

(declare-fun tp!2198067 () Bool)

(assert (=> b!7554543 (= e!4499630 tp!2198067)))

(declare-fun b!7554544 () Bool)

(declare-fun e!4499631 () Bool)

(declare-fun tp!2198069 () Bool)

(assert (=> b!7554544 (= e!4499631 (and tp_is_empty!50277 tp!2198069))))

(declare-fun b!7554545 () Bool)

(declare-fun tp!2198071 () Bool)

(declare-fun tp!2198079 () Bool)

(assert (=> b!7554545 (= e!4499628 (and tp!2198071 tp!2198079))))

(declare-fun b!7554546 () Bool)

(declare-fun res!3027849 () Bool)

(assert (=> b!7554546 (=> (not res!3027849) (not e!4499633))))

(assert (=> b!7554546 (= res!3027849 (isPrefix!6167 knownP!30 input!7874))))

(declare-fun b!7554547 () Bool)

(declare-fun res!3027856 () Bool)

(assert (=> b!7554547 (=> (not res!3027856) (not e!4499635))))

(assert (=> b!7554547 (= res!3027856 (matchR!9563 baseR!101 knownP!30))))

(declare-fun b!7554548 () Bool)

(declare-fun res!3027848 () Bool)

(assert (=> b!7554548 (=> res!3027848 e!4499632)))

(declare-fun lostCause!1749 (Regex!19961) Bool)

(assert (=> b!7554548 (= res!3027848 (lostCause!1749 r!24333))))

(declare-fun b!7554549 () Bool)

(assert (=> b!7554549 (= e!4499628 tp_is_empty!50277)))

(declare-fun res!3027847 () Bool)

(assert (=> start!730364 (=> (not res!3027847) (not e!4499633))))

(assert (=> start!730364 (= res!3027847 (validRegex!10389 baseR!101))))

(assert (=> start!730364 e!4499633))

(assert (=> start!730364 e!4499628))

(assert (=> start!730364 e!4499631))

(declare-fun e!4499629 () Bool)

(assert (=> start!730364 e!4499629))

(assert (=> start!730364 e!4499634))

(assert (=> start!730364 e!4499630))

(declare-fun b!7554550 () Bool)

(declare-fun res!3027854 () Bool)

(assert (=> b!7554550 (=> res!3027854 e!4499632)))

(assert (=> b!7554550 (= res!3027854 (not (= lt!2647721 lt!2647722)))))

(declare-fun b!7554551 () Bool)

(declare-fun tp!2198076 () Bool)

(declare-fun tp!2198070 () Bool)

(assert (=> b!7554551 (= e!4499628 (and tp!2198076 tp!2198070))))

(declare-fun b!7554552 () Bool)

(assert (=> b!7554552 (= e!4499630 tp_is_empty!50277)))

(declare-fun b!7554553 () Bool)

(declare-fun res!3027853 () Bool)

(assert (=> b!7554553 (=> (not res!3027853) (not e!4499633))))

(assert (=> b!7554553 (= res!3027853 (isPrefix!6167 testedP!423 input!7874))))

(declare-fun b!7554554 () Bool)

(declare-fun tp!2198078 () Bool)

(assert (=> b!7554554 (= e!4499629 (and tp_is_empty!50277 tp!2198078))))

(declare-fun b!7554555 () Bool)

(assert (=> b!7554555 (= e!4499632 true)))

(assert (=> b!7554555 (= testedP!423 knownP!30)))

(declare-fun lt!2647724 () Unit!166856)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1531 (List!72844 List!72844 List!72844) Unit!166856)

(assert (=> b!7554555 (= lt!2647724 (lemmaIsPrefixSameLengthThenSameList!1531 testedP!423 knownP!30 input!7874))))

(assert (= (and start!730364 res!3027847) b!7554541))

(assert (= (and b!7554541 res!3027852) b!7554553))

(assert (= (and b!7554553 res!3027853) b!7554546))

(assert (= (and b!7554546 res!3027849) b!7554535))

(assert (= (and b!7554535 res!3027855) b!7554547))

(assert (= (and b!7554547 res!3027856) b!7554542))

(assert (= (and b!7554542 (not res!3027850)) b!7554538))

(assert (= (and b!7554538 (not res!3027851)) b!7554548))

(assert (= (and b!7554548 (not res!3027848)) b!7554550))

(assert (= (and b!7554550 (not res!3027854)) b!7554555))

(get-info :version)

(assert (= (and start!730364 ((_ is ElementMatch!19961) baseR!101)) b!7554549))

(assert (= (and start!730364 ((_ is Concat!28806) baseR!101)) b!7554551))

(assert (= (and start!730364 ((_ is Star!19961) baseR!101)) b!7554540))

(assert (= (and start!730364 ((_ is Union!19961) baseR!101)) b!7554545))

(assert (= (and start!730364 ((_ is Cons!72720) input!7874)) b!7554544))

(assert (= (and start!730364 ((_ is Cons!72720) knownP!30)) b!7554554))

(assert (= (and start!730364 ((_ is Cons!72720) testedP!423)) b!7554537))

(assert (= (and start!730364 ((_ is ElementMatch!19961) r!24333)) b!7554552))

(assert (= (and start!730364 ((_ is Concat!28806) r!24333)) b!7554536))

(assert (= (and start!730364 ((_ is Star!19961) r!24333)) b!7554543))

(assert (= (and start!730364 ((_ is Union!19961) r!24333)) b!7554539))

(declare-fun m!8120710 () Bool)

(assert (=> b!7554546 m!8120710))

(declare-fun m!8120712 () Bool)

(assert (=> b!7554542 m!8120712))

(assert (=> b!7554542 m!8120712))

(declare-fun m!8120714 () Bool)

(assert (=> b!7554542 m!8120714))

(declare-fun m!8120716 () Bool)

(assert (=> b!7554542 m!8120716))

(declare-fun m!8120718 () Bool)

(assert (=> b!7554542 m!8120718))

(declare-fun m!8120720 () Bool)

(assert (=> b!7554553 m!8120720))

(declare-fun m!8120722 () Bool)

(assert (=> b!7554555 m!8120722))

(declare-fun m!8120724 () Bool)

(assert (=> b!7554548 m!8120724))

(declare-fun m!8120726 () Bool)

(assert (=> b!7554535 m!8120726))

(declare-fun m!8120728 () Bool)

(assert (=> b!7554535 m!8120728))

(declare-fun m!8120730 () Bool)

(assert (=> start!730364 m!8120730))

(declare-fun m!8120732 () Bool)

(assert (=> b!7554541 m!8120732))

(declare-fun m!8120734 () Bool)

(assert (=> b!7554547 m!8120734))

(declare-fun m!8120736 () Bool)

(assert (=> b!7554538 m!8120736))

(check-sat (not b!7554537) (not b!7554548) (not b!7554547) (not b!7554540) (not b!7554551) (not b!7554544) (not b!7554554) (not b!7554555) (not b!7554545) (not b!7554546) (not start!730364) (not b!7554541) tp_is_empty!50277 (not b!7554535) (not b!7554536) (not b!7554538) (not b!7554542) (not b!7554539) (not b!7554543) (not b!7554553))
(check-sat)
