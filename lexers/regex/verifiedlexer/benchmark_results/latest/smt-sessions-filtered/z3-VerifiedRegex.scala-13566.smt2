; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729700 () Bool)

(assert start!729700)

(declare-fun b!7545757 () Bool)

(declare-fun e!4495396 () Bool)

(declare-fun tp_is_empty!50209 () Bool)

(assert (=> b!7545757 (= e!4495396 tp_is_empty!50209)))

(declare-fun b!7545758 () Bool)

(declare-fun e!4495383 () Bool)

(declare-fun e!4495397 () Bool)

(assert (=> b!7545758 (= e!4495383 e!4495397)))

(declare-fun res!3024398 () Bool)

(assert (=> b!7545758 (=> res!3024398 e!4495397)))

(declare-datatypes ((C!40180 0))(
  ( (C!40181 (val!30530 Int)) )
))
(declare-datatypes ((List!72810 0))(
  ( (Nil!72686) (Cons!72686 (h!79134 C!40180) (t!387527 List!72810)) )
))
(declare-fun lt!2645458 () List!72810)

(declare-fun input!7874 () List!72810)

(assert (=> b!7545758 (= res!3024398 (not (= lt!2645458 input!7874)))))

(declare-fun lt!2645453 () List!72810)

(declare-fun lt!2645459 () List!72810)

(declare-fun ++!17444 (List!72810 List!72810) List!72810)

(assert (=> b!7545758 (= lt!2645458 (++!17444 lt!2645453 lt!2645459))))

(declare-fun testedP!423 () List!72810)

(declare-fun lt!2645451 () List!72810)

(assert (=> b!7545758 (= lt!2645453 (++!17444 testedP!423 lt!2645451))))

(declare-fun b!7545759 () Bool)

(declare-fun tp!2194943 () Bool)

(declare-fun tp!2194938 () Bool)

(assert (=> b!7545759 (= e!4495396 (and tp!2194943 tp!2194938))))

(declare-fun b!7545760 () Bool)

(declare-fun e!4495388 () Bool)

(assert (=> b!7545760 (= e!4495388 tp_is_empty!50209)))

(declare-fun b!7545761 () Bool)

(declare-fun res!3024385 () Bool)

(assert (=> b!7545761 (=> res!3024385 e!4495397)))

(declare-fun lt!2645471 () List!72810)

(assert (=> b!7545761 (= res!3024385 (not (= (++!17444 testedP!423 lt!2645471) input!7874)))))

(declare-fun b!7545762 () Bool)

(declare-fun e!4495391 () Bool)

(declare-fun e!4495384 () Bool)

(assert (=> b!7545762 (= e!4495391 (not e!4495384))))

(declare-fun res!3024389 () Bool)

(assert (=> b!7545762 (=> res!3024389 e!4495384)))

(declare-datatypes ((Regex!19927 0))(
  ( (ElementMatch!19927 (c!1392914 C!40180)) (Concat!28772 (regOne!40366 Regex!19927) (regTwo!40366 Regex!19927)) (EmptyExpr!19927) (Star!19927 (reg!20256 Regex!19927)) (EmptyLang!19927) (Union!19927 (regOne!40367 Regex!19927) (regTwo!40367 Regex!19927)) )
))
(declare-fun r!24333 () Regex!19927)

(declare-fun matchR!9529 (Regex!19927 List!72810) Bool)

(assert (=> b!7545762 (= res!3024389 (not (matchR!9529 r!24333 lt!2645451)))))

(declare-fun knownP!30 () List!72810)

(declare-fun getSuffix!3613 (List!72810 List!72810) List!72810)

(assert (=> b!7545762 (= lt!2645451 (getSuffix!3613 knownP!30 testedP!423))))

(declare-fun isPrefix!6133 (List!72810 List!72810) Bool)

(assert (=> b!7545762 (isPrefix!6133 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166792 0))(
  ( (Unit!166793) )
))
(declare-fun lt!2645476 () Unit!166792)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!883 (List!72810 List!72810 List!72810) Unit!166792)

(assert (=> b!7545762 (= lt!2645476 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!883 knownP!30 testedP!423 input!7874))))

(declare-fun b!7545763 () Bool)

(declare-fun res!3024390 () Bool)

(declare-fun e!4495395 () Bool)

(assert (=> b!7545763 (=> (not res!3024390) (not e!4495395))))

(declare-fun validRegex!10355 (Regex!19927) Bool)

(assert (=> b!7545763 (= res!3024390 (validRegex!10355 r!24333))))

(declare-fun b!7545764 () Bool)

(declare-fun e!4495385 () Bool)

(declare-fun tp!2194941 () Bool)

(assert (=> b!7545764 (= e!4495385 (and tp_is_empty!50209 tp!2194941))))

(declare-fun b!7545766 () Bool)

(declare-fun res!3024386 () Bool)

(assert (=> b!7545766 (=> res!3024386 e!4495384)))

(declare-fun baseR!101 () Regex!19927)

(declare-fun derivative!459 (Regex!19927 List!72810) Regex!19927)

(assert (=> b!7545766 (= res!3024386 (not (= (derivative!459 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7545767 () Bool)

(declare-fun tp!2194935 () Bool)

(declare-fun tp!2194945 () Bool)

(assert (=> b!7545767 (= e!4495396 (and tp!2194935 tp!2194945))))

(declare-fun b!7545768 () Bool)

(declare-fun e!4495389 () Bool)

(declare-fun tp!2194939 () Bool)

(assert (=> b!7545768 (= e!4495389 (and tp_is_empty!50209 tp!2194939))))

(declare-fun b!7545769 () Bool)

(declare-fun tp!2194942 () Bool)

(declare-fun tp!2194946 () Bool)

(assert (=> b!7545769 (= e!4495388 (and tp!2194942 tp!2194946))))

(declare-fun b!7545770 () Bool)

(declare-fun res!3024400 () Bool)

(declare-fun e!4495382 () Bool)

(assert (=> b!7545770 (=> res!3024400 e!4495382)))

(assert (=> b!7545770 (= res!3024400 (not (= lt!2645453 knownP!30)))))

(declare-fun b!7545771 () Bool)

(declare-fun e!4495387 () Bool)

(assert (=> b!7545771 (= e!4495384 e!4495387)))

(declare-fun res!3024395 () Bool)

(assert (=> b!7545771 (=> res!3024395 e!4495387)))

(declare-fun lt!2645468 () Int)

(declare-fun lt!2645460 () Int)

(assert (=> b!7545771 (= res!3024395 (>= lt!2645468 lt!2645460))))

(declare-fun size!42423 (List!72810) Int)

(assert (=> b!7545771 (= lt!2645460 (size!42423 input!7874))))

(declare-fun b!7545772 () Bool)

(declare-fun tp!2194940 () Bool)

(declare-fun tp!2194944 () Bool)

(assert (=> b!7545772 (= e!4495388 (and tp!2194940 tp!2194944))))

(declare-fun b!7545773 () Bool)

(declare-fun e!4495386 () Bool)

(declare-fun e!4495394 () Bool)

(assert (=> b!7545773 (= e!4495386 e!4495394)))

(declare-fun res!3024392 () Bool)

(assert (=> b!7545773 (=> res!3024392 e!4495394)))

(declare-fun lt!2645469 () C!40180)

(declare-fun head!15517 (List!72810) C!40180)

(assert (=> b!7545773 (= res!3024392 (not (= (head!15517 lt!2645451) lt!2645469)))))

(declare-fun lt!2645463 () List!72810)

(assert (=> b!7545773 (= lt!2645463 lt!2645471)))

(declare-fun lt!2645470 () Unit!166792)

(declare-fun lemmaSamePrefixThenSameSuffix!2861 (List!72810 List!72810 List!72810 List!72810 List!72810) Unit!166792)

(assert (=> b!7545773 (= lt!2645470 (lemmaSamePrefixThenSameSuffix!2861 testedP!423 lt!2645463 testedP!423 lt!2645471 input!7874))))

(declare-fun b!7545774 () Bool)

(declare-fun res!3024391 () Bool)

(assert (=> b!7545774 (=> res!3024391 e!4495384)))

(declare-fun lt!2645465 () Int)

(assert (=> b!7545774 (= res!3024391 (= lt!2645468 lt!2645465))))

(declare-fun b!7545775 () Bool)

(declare-fun tp!2194937 () Bool)

(assert (=> b!7545775 (= e!4495388 tp!2194937)))

(declare-fun b!7545776 () Bool)

(declare-fun e!4495392 () Bool)

(declare-fun tp!2194947 () Bool)

(assert (=> b!7545776 (= e!4495392 (and tp_is_empty!50209 tp!2194947))))

(declare-fun b!7545777 () Bool)

(declare-fun tp!2194936 () Bool)

(assert (=> b!7545777 (= e!4495396 tp!2194936)))

(declare-fun b!7545778 () Bool)

(declare-fun res!3024396 () Bool)

(assert (=> b!7545778 (=> (not res!3024396) (not e!4495395))))

(assert (=> b!7545778 (= res!3024396 (isPrefix!6133 knownP!30 input!7874))))

(declare-fun b!7545779 () Bool)

(assert (=> b!7545779 (= e!4495387 e!4495383)))

(declare-fun res!3024381 () Bool)

(assert (=> b!7545779 (=> res!3024381 e!4495383)))

(assert (=> b!7545779 (= res!3024381 (not (= (++!17444 knownP!30 lt!2645459) input!7874)))))

(assert (=> b!7545779 (= lt!2645459 (getSuffix!3613 input!7874 knownP!30))))

(declare-fun lt!2645472 () List!72810)

(declare-fun lt!2645461 () List!72810)

(assert (=> b!7545779 (= lt!2645472 (getSuffix!3613 knownP!30 lt!2645461))))

(assert (=> b!7545779 (isPrefix!6133 lt!2645461 knownP!30)))

(declare-fun lt!2645466 () Unit!166792)

(assert (=> b!7545779 (= lt!2645466 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!883 knownP!30 lt!2645461 input!7874))))

(declare-fun lt!2645473 () Regex!19927)

(declare-fun lt!2645457 () Regex!19927)

(assert (=> b!7545779 (= lt!2645473 lt!2645457)))

(declare-fun derivativeStep!5717 (Regex!19927 C!40180) Regex!19927)

(assert (=> b!7545779 (= lt!2645457 (derivativeStep!5717 r!24333 lt!2645469))))

(assert (=> b!7545779 (= lt!2645473 (derivative!459 baseR!101 lt!2645461))))

(declare-fun lt!2645474 () Unit!166792)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!165 (Regex!19927 Regex!19927 List!72810 C!40180) Unit!166792)

(assert (=> b!7545779 (= lt!2645474 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!165 baseR!101 r!24333 testedP!423 lt!2645469))))

(assert (=> b!7545779 (isPrefix!6133 lt!2645461 input!7874)))

(declare-fun lt!2645454 () Unit!166792)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1198 (List!72810 List!72810) Unit!166792)

(assert (=> b!7545779 (= lt!2645454 (lemmaAddHeadSuffixToPrefixStillPrefix!1198 testedP!423 input!7874))))

(declare-fun lt!2645452 () List!72810)

(assert (=> b!7545779 (= lt!2645461 (++!17444 testedP!423 lt!2645452))))

(assert (=> b!7545779 (= lt!2645452 (Cons!72686 lt!2645469 Nil!72686))))

(assert (=> b!7545779 (= lt!2645469 (head!15517 lt!2645471))))

(assert (=> b!7545779 (= lt!2645471 (getSuffix!3613 input!7874 testedP!423))))

(declare-fun b!7545780 () Bool)

(declare-fun e!4495393 () Bool)

(assert (=> b!7545780 (= e!4495382 e!4495393)))

(declare-fun res!3024387 () Bool)

(assert (=> b!7545780 (=> res!3024387 e!4495393)))

(declare-fun lt!2645477 () List!72810)

(assert (=> b!7545780 (= res!3024387 (not (= lt!2645477 knownP!30)))))

(assert (=> b!7545780 (= lt!2645477 (++!17444 lt!2645461 lt!2645472))))

(declare-fun b!7545781 () Bool)

(declare-fun e!4495390 () Bool)

(assert (=> b!7545781 (= e!4495390 true)))

(declare-fun lt!2645450 () Int)

(declare-datatypes ((tuple2!68856 0))(
  ( (tuple2!68857 (_1!37731 List!72810) (_2!37731 List!72810)) )
))
(declare-fun findLongestMatchInner!2136 (Regex!19927 List!72810 Int List!72810 List!72810 Int) tuple2!68856)

(assert (=> b!7545781 (= lt!2645450 (size!42423 (_1!37731 (findLongestMatchInner!2136 r!24333 testedP!423 lt!2645468 lt!2645471 input!7874 lt!2645460))))))

(assert (=> b!7545781 (>= (size!42423 (_1!37731 (findLongestMatchInner!2136 lt!2645457 lt!2645461 (size!42423 lt!2645461) (getSuffix!3613 input!7874 lt!2645461) input!7874 lt!2645460))) lt!2645465)))

(declare-fun lt!2645455 () Unit!166792)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!27 (Regex!19927 Regex!19927 List!72810 List!72810 List!72810) Unit!166792)

(assert (=> b!7545781 (= lt!2645455 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!27 baseR!101 lt!2645457 input!7874 lt!2645461 knownP!30))))

(declare-fun b!7545782 () Bool)

(assert (=> b!7545782 (= e!4495394 e!4495382)))

(declare-fun res!3024383 () Bool)

(assert (=> b!7545782 (=> res!3024383 e!4495382)))

(declare-fun lt!2645464 () List!72810)

(declare-fun $colon$colon!3387 (List!72810 C!40180) List!72810)

(assert (=> b!7545782 (= res!3024383 (not (= lt!2645451 ($colon$colon!3387 lt!2645464 lt!2645469))))))

(declare-fun tail!15063 (List!72810) List!72810)

(assert (=> b!7545782 (= lt!2645464 (tail!15063 lt!2645451))))

(declare-fun b!7545783 () Bool)

(assert (=> b!7545783 (= e!4495393 e!4495390)))

(declare-fun res!3024397 () Bool)

(assert (=> b!7545783 (=> res!3024397 e!4495390)))

(assert (=> b!7545783 (= res!3024397 (not (= lt!2645464 lt!2645472)))))

(declare-fun lt!2645462 () List!72810)

(assert (=> b!7545783 (= lt!2645462 lt!2645451)))

(declare-fun lt!2645478 () Unit!166792)

(assert (=> b!7545783 (= lt!2645478 (lemmaSamePrefixThenSameSuffix!2861 testedP!423 lt!2645462 testedP!423 lt!2645451 knownP!30))))

(assert (=> b!7545783 (= lt!2645477 (++!17444 testedP!423 lt!2645462))))

(assert (=> b!7545783 (= lt!2645462 (++!17444 lt!2645452 lt!2645472))))

(declare-fun lt!2645467 () Unit!166792)

(declare-fun lemmaConcatAssociativity!3092 (List!72810 List!72810 List!72810) Unit!166792)

(assert (=> b!7545783 (= lt!2645467 (lemmaConcatAssociativity!3092 testedP!423 lt!2645452 lt!2645472))))

(declare-fun b!7545784 () Bool)

(declare-fun res!3024399 () Bool)

(assert (=> b!7545784 (=> (not res!3024399) (not e!4495391))))

(assert (=> b!7545784 (= res!3024399 (matchR!9529 baseR!101 knownP!30))))

(declare-fun res!3024393 () Bool)

(assert (=> start!729700 (=> (not res!3024393) (not e!4495395))))

(assert (=> start!729700 (= res!3024393 (validRegex!10355 baseR!101))))

(assert (=> start!729700 e!4495395))

(assert (=> start!729700 e!4495396))

(assert (=> start!729700 e!4495385))

(assert (=> start!729700 e!4495389))

(assert (=> start!729700 e!4495392))

(assert (=> start!729700 e!4495388))

(declare-fun b!7545765 () Bool)

(declare-fun res!3024394 () Bool)

(assert (=> b!7545765 (=> res!3024394 e!4495384)))

(declare-fun lostCause!1719 (Regex!19927) Bool)

(assert (=> b!7545765 (= res!3024394 (lostCause!1719 r!24333))))

(declare-fun b!7545785 () Bool)

(assert (=> b!7545785 (= e!4495397 e!4495386)))

(declare-fun res!3024384 () Bool)

(assert (=> b!7545785 (=> res!3024384 e!4495386)))

(declare-fun lt!2645456 () List!72810)

(assert (=> b!7545785 (= res!3024384 (not (= lt!2645456 input!7874)))))

(assert (=> b!7545785 (= lt!2645458 lt!2645456)))

(assert (=> b!7545785 (= lt!2645456 (++!17444 testedP!423 lt!2645463))))

(assert (=> b!7545785 (= lt!2645463 (++!17444 lt!2645451 lt!2645459))))

(declare-fun lt!2645475 () Unit!166792)

(assert (=> b!7545785 (= lt!2645475 (lemmaConcatAssociativity!3092 testedP!423 lt!2645451 lt!2645459))))

(declare-fun b!7545786 () Bool)

(declare-fun res!3024382 () Bool)

(assert (=> b!7545786 (=> (not res!3024382) (not e!4495395))))

(assert (=> b!7545786 (= res!3024382 (isPrefix!6133 testedP!423 input!7874))))

(declare-fun b!7545787 () Bool)

(assert (=> b!7545787 (= e!4495395 e!4495391)))

(declare-fun res!3024388 () Bool)

(assert (=> b!7545787 (=> (not res!3024388) (not e!4495391))))

(assert (=> b!7545787 (= res!3024388 (>= lt!2645465 lt!2645468))))

(assert (=> b!7545787 (= lt!2645468 (size!42423 testedP!423))))

(assert (=> b!7545787 (= lt!2645465 (size!42423 knownP!30))))

(assert (= (and start!729700 res!3024393) b!7545763))

(assert (= (and b!7545763 res!3024390) b!7545786))

(assert (= (and b!7545786 res!3024382) b!7545778))

(assert (= (and b!7545778 res!3024396) b!7545787))

(assert (= (and b!7545787 res!3024388) b!7545784))

(assert (= (and b!7545784 res!3024399) b!7545762))

(assert (= (and b!7545762 (not res!3024389)) b!7545766))

(assert (= (and b!7545766 (not res!3024386)) b!7545765))

(assert (= (and b!7545765 (not res!3024394)) b!7545774))

(assert (= (and b!7545774 (not res!3024391)) b!7545771))

(assert (= (and b!7545771 (not res!3024395)) b!7545779))

(assert (= (and b!7545779 (not res!3024381)) b!7545758))

(assert (= (and b!7545758 (not res!3024398)) b!7545761))

(assert (= (and b!7545761 (not res!3024385)) b!7545785))

(assert (= (and b!7545785 (not res!3024384)) b!7545773))

(assert (= (and b!7545773 (not res!3024392)) b!7545782))

(assert (= (and b!7545782 (not res!3024383)) b!7545770))

(assert (= (and b!7545770 (not res!3024400)) b!7545780))

(assert (= (and b!7545780 (not res!3024387)) b!7545783))

(assert (= (and b!7545783 (not res!3024397)) b!7545781))

(get-info :version)

(assert (= (and start!729700 ((_ is ElementMatch!19927) baseR!101)) b!7545757))

(assert (= (and start!729700 ((_ is Concat!28772) baseR!101)) b!7545759))

(assert (= (and start!729700 ((_ is Star!19927) baseR!101)) b!7545777))

(assert (= (and start!729700 ((_ is Union!19927) baseR!101)) b!7545767))

(assert (= (and start!729700 ((_ is Cons!72686) input!7874)) b!7545764))

(assert (= (and start!729700 ((_ is Cons!72686) knownP!30)) b!7545768))

(assert (= (and start!729700 ((_ is Cons!72686) testedP!423)) b!7545776))

(assert (= (and start!729700 ((_ is ElementMatch!19927) r!24333)) b!7545760))

(assert (= (and start!729700 ((_ is Concat!28772) r!24333)) b!7545772))

(assert (= (and start!729700 ((_ is Star!19927) r!24333)) b!7545775))

(assert (= (and start!729700 ((_ is Union!19927) r!24333)) b!7545769))

(declare-fun m!8114372 () Bool)

(assert (=> b!7545782 m!8114372))

(declare-fun m!8114374 () Bool)

(assert (=> b!7545782 m!8114374))

(declare-fun m!8114376 () Bool)

(assert (=> b!7545779 m!8114376))

(declare-fun m!8114378 () Bool)

(assert (=> b!7545779 m!8114378))

(declare-fun m!8114380 () Bool)

(assert (=> b!7545779 m!8114380))

(declare-fun m!8114382 () Bool)

(assert (=> b!7545779 m!8114382))

(declare-fun m!8114384 () Bool)

(assert (=> b!7545779 m!8114384))

(declare-fun m!8114386 () Bool)

(assert (=> b!7545779 m!8114386))

(declare-fun m!8114388 () Bool)

(assert (=> b!7545779 m!8114388))

(declare-fun m!8114390 () Bool)

(assert (=> b!7545779 m!8114390))

(declare-fun m!8114392 () Bool)

(assert (=> b!7545779 m!8114392))

(declare-fun m!8114394 () Bool)

(assert (=> b!7545779 m!8114394))

(declare-fun m!8114396 () Bool)

(assert (=> b!7545779 m!8114396))

(declare-fun m!8114398 () Bool)

(assert (=> b!7545779 m!8114398))

(declare-fun m!8114400 () Bool)

(assert (=> b!7545779 m!8114400))

(declare-fun m!8114402 () Bool)

(assert (=> b!7545771 m!8114402))

(declare-fun m!8114404 () Bool)

(assert (=> b!7545784 m!8114404))

(declare-fun m!8114406 () Bool)

(assert (=> b!7545785 m!8114406))

(declare-fun m!8114408 () Bool)

(assert (=> b!7545785 m!8114408))

(declare-fun m!8114410 () Bool)

(assert (=> b!7545785 m!8114410))

(declare-fun m!8114412 () Bool)

(assert (=> b!7545766 m!8114412))

(declare-fun m!8114414 () Bool)

(assert (=> b!7545763 m!8114414))

(declare-fun m!8114416 () Bool)

(assert (=> b!7545787 m!8114416))

(declare-fun m!8114418 () Bool)

(assert (=> b!7545787 m!8114418))

(declare-fun m!8114420 () Bool)

(assert (=> b!7545783 m!8114420))

(declare-fun m!8114422 () Bool)

(assert (=> b!7545783 m!8114422))

(declare-fun m!8114424 () Bool)

(assert (=> b!7545783 m!8114424))

(declare-fun m!8114426 () Bool)

(assert (=> b!7545783 m!8114426))

(declare-fun m!8114428 () Bool)

(assert (=> b!7545786 m!8114428))

(declare-fun m!8114430 () Bool)

(assert (=> b!7545761 m!8114430))

(declare-fun m!8114432 () Bool)

(assert (=> b!7545762 m!8114432))

(declare-fun m!8114434 () Bool)

(assert (=> b!7545762 m!8114434))

(declare-fun m!8114436 () Bool)

(assert (=> b!7545762 m!8114436))

(declare-fun m!8114438 () Bool)

(assert (=> b!7545762 m!8114438))

(declare-fun m!8114440 () Bool)

(assert (=> b!7545781 m!8114440))

(declare-fun m!8114442 () Bool)

(assert (=> b!7545781 m!8114442))

(declare-fun m!8114444 () Bool)

(assert (=> b!7545781 m!8114444))

(declare-fun m!8114446 () Bool)

(assert (=> b!7545781 m!8114446))

(declare-fun m!8114448 () Bool)

(assert (=> b!7545781 m!8114448))

(declare-fun m!8114450 () Bool)

(assert (=> b!7545781 m!8114450))

(assert (=> b!7545781 m!8114442))

(assert (=> b!7545781 m!8114448))

(declare-fun m!8114452 () Bool)

(assert (=> b!7545781 m!8114452))

(declare-fun m!8114454 () Bool)

(assert (=> b!7545758 m!8114454))

(declare-fun m!8114456 () Bool)

(assert (=> b!7545758 m!8114456))

(declare-fun m!8114458 () Bool)

(assert (=> b!7545765 m!8114458))

(declare-fun m!8114460 () Bool)

(assert (=> b!7545773 m!8114460))

(declare-fun m!8114462 () Bool)

(assert (=> b!7545773 m!8114462))

(declare-fun m!8114464 () Bool)

(assert (=> b!7545780 m!8114464))

(declare-fun m!8114466 () Bool)

(assert (=> start!729700 m!8114466))

(declare-fun m!8114468 () Bool)

(assert (=> b!7545778 m!8114468))

(check-sat (not b!7545776) (not b!7545767) (not b!7545766) (not b!7545759) (not b!7545771) (not b!7545784) (not b!7545783) (not b!7545779) (not b!7545769) (not b!7545762) (not b!7545772) (not b!7545768) (not b!7545765) (not b!7545787) (not b!7545785) (not b!7545782) (not b!7545758) tp_is_empty!50209 (not b!7545778) (not b!7545763) (not start!729700) (not b!7545761) (not b!7545777) (not b!7545764) (not b!7545773) (not b!7545781) (not b!7545775) (not b!7545786) (not b!7545780))
(check-sat)
