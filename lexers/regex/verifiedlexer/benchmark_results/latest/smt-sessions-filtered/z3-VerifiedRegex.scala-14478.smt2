; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753348 () Bool)

(assert start!753348)

(declare-fun b!8006438 () Bool)

(declare-fun e!4716475 () Bool)

(declare-fun tp_is_empty!53817 () Bool)

(assert (=> b!8006438 (= e!4716475 tp_is_empty!53817)))

(declare-fun b!8006439 () Bool)

(declare-fun e!4716479 () Bool)

(declare-fun e!4716474 () Bool)

(assert (=> b!8006439 (= e!4716479 (not e!4716474))))

(declare-fun res!3166038 () Bool)

(assert (=> b!8006439 (=> res!3166038 e!4716474)))

(declare-datatypes ((C!43612 0))(
  ( (C!43613 (val!32354 Int)) )
))
(declare-datatypes ((List!74866 0))(
  ( (Nil!74742) (Cons!74742 (h!81190 C!43612) (t!390609 List!74866)) )
))
(declare-fun testedP!353 () List!74866)

(declare-fun totalInput!1349 () List!74866)

(declare-fun isPrefix!6691 (List!74866 List!74866) Bool)

(assert (=> b!8006439 (= res!3166038 (not (isPrefix!6691 testedP!353 totalInput!1349)))))

(declare-fun lt!2715358 () List!74866)

(assert (=> b!8006439 (isPrefix!6691 testedP!353 lt!2715358)))

(declare-datatypes ((Unit!170706 0))(
  ( (Unit!170707) )
))
(declare-fun lt!2715351 () Unit!170706)

(declare-fun testedSuffix!271 () List!74866)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3922 (List!74866 List!74866) Unit!170706)

(assert (=> b!8006439 (= lt!2715351 (lemmaConcatTwoListThenFirstIsPrefix!3922 testedP!353 testedSuffix!271))))

(declare-fun b!8006440 () Bool)

(declare-fun e!4716470 () Bool)

(assert (=> b!8006440 (= e!4716474 e!4716470)))

(declare-fun res!3166040 () Bool)

(assert (=> b!8006440 (=> res!3166040 e!4716470)))

(declare-datatypes ((Regex!21637 0))(
  ( (ElementMatch!21637 (c!1469768 C!43612)) (Concat!30636 (regOne!43786 Regex!21637) (regTwo!43786 Regex!21637)) (EmptyExpr!21637) (Star!21637 (reg!21966 Regex!21637)) (EmptyLang!21637) (Union!21637 (regOne!43787 Regex!21637) (regTwo!43787 Regex!21637)) )
))
(declare-fun r!15422 () Regex!21637)

(declare-fun lostCause!2034 (Regex!21637) Bool)

(assert (=> b!8006440 (= res!3166040 (lostCause!2034 r!15422))))

(declare-fun lt!2715356 () List!74866)

(assert (=> b!8006440 (and (= testedSuffix!271 lt!2715356) (= lt!2715356 testedSuffix!271))))

(declare-fun lt!2715365 () Unit!170706)

(declare-fun lemmaSamePrefixThenSameSuffix!3054 (List!74866 List!74866 List!74866 List!74866 List!74866) Unit!170706)

(assert (=> b!8006440 (= lt!2715365 (lemmaSamePrefixThenSameSuffix!3054 testedP!353 testedSuffix!271 testedP!353 lt!2715356 totalInput!1349))))

(declare-fun getSuffix!3888 (List!74866 List!74866) List!74866)

(assert (=> b!8006440 (= lt!2715356 (getSuffix!3888 totalInput!1349 testedP!353))))

(declare-fun b!8006441 () Bool)

(declare-fun e!4716481 () Unit!170706)

(declare-fun Unit!170708 () Unit!170706)

(assert (=> b!8006441 (= e!4716481 Unit!170708)))

(declare-fun b!8006442 () Bool)

(declare-fun e!4716480 () Bool)

(declare-fun e!4716477 () Bool)

(assert (=> b!8006442 (= e!4716480 e!4716477)))

(declare-fun res!3166039 () Bool)

(assert (=> b!8006442 (=> (not res!3166039) (not e!4716477))))

(assert (=> b!8006442 (= res!3166039 (= lt!2715358 totalInput!1349))))

(declare-fun ++!18463 (List!74866 List!74866) List!74866)

(assert (=> b!8006442 (= lt!2715358 (++!18463 testedP!353 testedSuffix!271))))

(declare-fun b!8006443 () Bool)

(declare-fun res!3166042 () Bool)

(assert (=> b!8006443 (=> res!3166042 e!4716470)))

(declare-fun testedPSize!271 () Int)

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8006443 (= res!3166042 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8006444 () Bool)

(declare-fun e!4716478 () Bool)

(declare-fun tp!2395588 () Bool)

(assert (=> b!8006444 (= e!4716478 (and tp_is_empty!53817 tp!2395588))))

(declare-fun b!8006437 () Bool)

(declare-fun e!4716471 () Bool)

(declare-fun tp!2395589 () Bool)

(assert (=> b!8006437 (= e!4716471 (and tp_is_empty!53817 tp!2395589))))

(declare-fun res!3166041 () Bool)

(assert (=> start!753348 (=> (not res!3166041) (not e!4716480))))

(declare-fun validRegex!11941 (Regex!21637) Bool)

(assert (=> start!753348 (= res!3166041 (validRegex!11941 r!15422))))

(assert (=> start!753348 e!4716480))

(assert (=> start!753348 e!4716471))

(assert (=> start!753348 true))

(assert (=> start!753348 e!4716478))

(assert (=> start!753348 e!4716475))

(declare-fun e!4716469 () Bool)

(assert (=> start!753348 e!4716469))

(declare-fun b!8006445 () Bool)

(declare-fun tp!2395592 () Bool)

(assert (=> b!8006445 (= e!4716469 (and tp_is_empty!53817 tp!2395592))))

(declare-fun b!8006446 () Bool)

(declare-fun e!4716473 () Bool)

(assert (=> b!8006446 (= e!4716470 e!4716473)))

(declare-fun res!3166036 () Bool)

(assert (=> b!8006446 (=> res!3166036 e!4716473)))

(declare-fun lt!2715352 () Int)

(declare-fun lt!2715353 () Int)

(assert (=> b!8006446 (= res!3166036 (>= lt!2715352 lt!2715353))))

(declare-fun lt!2715355 () Unit!170706)

(assert (=> b!8006446 (= lt!2715355 e!4716481)))

(declare-fun c!1469767 () Bool)

(assert (=> b!8006446 (= c!1469767 (= lt!2715352 lt!2715353))))

(assert (=> b!8006446 (<= lt!2715352 lt!2715353)))

(declare-fun lt!2715364 () Unit!170706)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1192 (List!74866 List!74866) Unit!170706)

(assert (=> b!8006446 (= lt!2715364 (lemmaIsPrefixThenSmallerEqSize!1192 testedP!353 totalInput!1349))))

(declare-fun b!8006447 () Bool)

(declare-fun tp!2395590 () Bool)

(declare-fun tp!2395593 () Bool)

(assert (=> b!8006447 (= e!4716475 (and tp!2395590 tp!2395593))))

(declare-fun b!8006448 () Bool)

(declare-fun e!4716472 () Bool)

(assert (=> b!8006448 (= e!4716472 e!4716479)))

(declare-fun res!3166034 () Bool)

(assert (=> b!8006448 (=> (not res!3166034) (not e!4716479))))

(assert (=> b!8006448 (= res!3166034 (= totalInputSize!629 lt!2715353))))

(declare-fun size!43539 (List!74866) Int)

(assert (=> b!8006448 (= lt!2715353 (size!43539 totalInput!1349))))

(declare-fun b!8006449 () Bool)

(declare-fun e!4716476 () Bool)

(assert (=> b!8006449 (= e!4716473 e!4716476)))

(declare-fun res!3166037 () Bool)

(assert (=> b!8006449 (=> res!3166037 e!4716476)))

(declare-fun nullable!9695 (Regex!21637) Bool)

(assert (=> b!8006449 (= res!3166037 (not (nullable!9695 r!15422)))))

(declare-fun lt!2715360 () List!74866)

(declare-fun lt!2715362 () List!74866)

(assert (=> b!8006449 (= (++!18463 lt!2715360 lt!2715362) totalInput!1349)))

(declare-fun lt!2715357 () C!43612)

(declare-fun lt!2715359 () Unit!170706)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3572 (List!74866 C!43612 List!74866 List!74866) Unit!170706)

(assert (=> b!8006449 (= lt!2715359 (lemmaMoveElementToOtherListKeepsConcatEq!3572 testedP!353 lt!2715357 lt!2715362 totalInput!1349))))

(declare-fun tail!15852 (List!74866) List!74866)

(assert (=> b!8006449 (= lt!2715362 (tail!15852 testedSuffix!271))))

(declare-fun head!16329 (List!74866) C!43612)

(assert (=> b!8006449 (isPrefix!6691 (++!18463 testedP!353 (Cons!74742 (head!16329 lt!2715356) Nil!74742)) totalInput!1349)))

(declare-fun lt!2715350 () Unit!170706)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1388 (List!74866 List!74866) Unit!170706)

(assert (=> b!8006449 (= lt!2715350 (lemmaAddHeadSuffixToPrefixStillPrefix!1388 testedP!353 totalInput!1349))))

(assert (=> b!8006449 (= lt!2715360 (++!18463 testedP!353 (Cons!74742 lt!2715357 Nil!74742)))))

(assert (=> b!8006449 (= lt!2715357 (head!16329 testedSuffix!271))))

(declare-fun b!8006450 () Bool)

(assert (=> b!8006450 (= e!4716477 e!4716472)))

(declare-fun res!3166035 () Bool)

(assert (=> b!8006450 (=> (not res!3166035) (not e!4716472))))

(assert (=> b!8006450 (= res!3166035 (= testedPSize!271 lt!2715352))))

(assert (=> b!8006450 (= lt!2715352 (size!43539 testedP!353))))

(declare-fun b!8006451 () Bool)

(declare-fun Unit!170709 () Unit!170706)

(assert (=> b!8006451 (= e!4716481 Unit!170709)))

(declare-fun lt!2715363 () Unit!170706)

(declare-fun lemmaIsPrefixRefl!4143 (List!74866 List!74866) Unit!170706)

(assert (=> b!8006451 (= lt!2715363 (lemmaIsPrefixRefl!4143 totalInput!1349 totalInput!1349))))

(assert (=> b!8006451 (isPrefix!6691 totalInput!1349 totalInput!1349)))

(declare-fun lt!2715354 () Unit!170706)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1717 (List!74866 List!74866 List!74866) Unit!170706)

(assert (=> b!8006451 (= lt!2715354 (lemmaIsPrefixSameLengthThenSameList!1717 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8006451 false))

(declare-fun b!8006452 () Bool)

(declare-fun tp!2395587 () Bool)

(assert (=> b!8006452 (= e!4716475 tp!2395587)))

(declare-fun b!8006453 () Bool)

(assert (=> b!8006453 (= e!4716476 true)))

(declare-fun lt!2715361 () Bool)

(declare-fun derivativeStep!6618 (Regex!21637 C!43612) Regex!21637)

(assert (=> b!8006453 (= lt!2715361 (validRegex!11941 (derivativeStep!6618 r!15422 lt!2715357)))))

(declare-fun b!8006454 () Bool)

(declare-fun tp!2395591 () Bool)

(declare-fun tp!2395594 () Bool)

(assert (=> b!8006454 (= e!4716475 (and tp!2395591 tp!2395594))))

(assert (= (and start!753348 res!3166041) b!8006442))

(assert (= (and b!8006442 res!3166039) b!8006450))

(assert (= (and b!8006450 res!3166035) b!8006448))

(assert (= (and b!8006448 res!3166034) b!8006439))

(assert (= (and b!8006439 (not res!3166038)) b!8006440))

(assert (= (and b!8006440 (not res!3166040)) b!8006443))

(assert (= (and b!8006443 (not res!3166042)) b!8006446))

(assert (= (and b!8006446 c!1469767) b!8006451))

(assert (= (and b!8006446 (not c!1469767)) b!8006441))

(assert (= (and b!8006446 (not res!3166036)) b!8006449))

(assert (= (and b!8006449 (not res!3166037)) b!8006453))

(get-info :version)

(assert (= (and start!753348 ((_ is Cons!74742) totalInput!1349)) b!8006437))

(assert (= (and start!753348 ((_ is Cons!74742) testedSuffix!271)) b!8006444))

(assert (= (and start!753348 ((_ is ElementMatch!21637) r!15422)) b!8006438))

(assert (= (and start!753348 ((_ is Concat!30636) r!15422)) b!8006454))

(assert (= (and start!753348 ((_ is Star!21637) r!15422)) b!8006452))

(assert (= (and start!753348 ((_ is Union!21637) r!15422)) b!8006447))

(assert (= (and start!753348 ((_ is Cons!74742) testedP!353)) b!8006445))

(declare-fun m!8371678 () Bool)

(assert (=> b!8006451 m!8371678))

(declare-fun m!8371680 () Bool)

(assert (=> b!8006451 m!8371680))

(declare-fun m!8371682 () Bool)

(assert (=> b!8006451 m!8371682))

(declare-fun m!8371684 () Bool)

(assert (=> b!8006439 m!8371684))

(declare-fun m!8371686 () Bool)

(assert (=> b!8006439 m!8371686))

(declare-fun m!8371688 () Bool)

(assert (=> b!8006439 m!8371688))

(declare-fun m!8371690 () Bool)

(assert (=> b!8006450 m!8371690))

(declare-fun m!8371692 () Bool)

(assert (=> b!8006440 m!8371692))

(declare-fun m!8371694 () Bool)

(assert (=> b!8006440 m!8371694))

(declare-fun m!8371696 () Bool)

(assert (=> b!8006440 m!8371696))

(declare-fun m!8371698 () Bool)

(assert (=> start!753348 m!8371698))

(declare-fun m!8371700 () Bool)

(assert (=> b!8006442 m!8371700))

(declare-fun m!8371702 () Bool)

(assert (=> b!8006448 m!8371702))

(declare-fun m!8371704 () Bool)

(assert (=> b!8006446 m!8371704))

(declare-fun m!8371706 () Bool)

(assert (=> b!8006453 m!8371706))

(assert (=> b!8006453 m!8371706))

(declare-fun m!8371708 () Bool)

(assert (=> b!8006453 m!8371708))

(declare-fun m!8371710 () Bool)

(assert (=> b!8006449 m!8371710))

(declare-fun m!8371712 () Bool)

(assert (=> b!8006449 m!8371712))

(declare-fun m!8371714 () Bool)

(assert (=> b!8006449 m!8371714))

(declare-fun m!8371716 () Bool)

(assert (=> b!8006449 m!8371716))

(declare-fun m!8371718 () Bool)

(assert (=> b!8006449 m!8371718))

(declare-fun m!8371720 () Bool)

(assert (=> b!8006449 m!8371720))

(declare-fun m!8371722 () Bool)

(assert (=> b!8006449 m!8371722))

(declare-fun m!8371724 () Bool)

(assert (=> b!8006449 m!8371724))

(declare-fun m!8371726 () Bool)

(assert (=> b!8006449 m!8371726))

(declare-fun m!8371728 () Bool)

(assert (=> b!8006449 m!8371728))

(assert (=> b!8006449 m!8371714))

(check-sat (not b!8006451) (not b!8006446) (not b!8006447) (not b!8006448) (not b!8006440) (not b!8006450) tp_is_empty!53817 (not b!8006439) (not b!8006445) (not b!8006442) (not b!8006454) (not b!8006453) (not b!8006452) (not b!8006437) (not start!753348) (not b!8006444) (not b!8006449))
(check-sat)
