; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753836 () Bool)

(assert start!753836)

(declare-fun b!8010997 () Bool)

(declare-fun res!3167637 () Bool)

(declare-fun e!4719064 () Bool)

(assert (=> b!8010997 (=> (not res!3167637) (not e!4719064))))

(declare-fun totalInputSize!629 () Int)

(declare-datatypes ((C!43664 0))(
  ( (C!43665 (val!32380 Int)) )
))
(declare-datatypes ((List!74892 0))(
  ( (Nil!74768) (Cons!74768 (h!81216 C!43664) (t!390635 List!74892)) )
))
(declare-fun totalInput!1349 () List!74892)

(declare-fun size!43565 (List!74892) Int)

(assert (=> b!8010997 (= res!3167637 (= totalInputSize!629 (size!43565 totalInput!1349)))))

(declare-fun b!8010999 () Bool)

(declare-fun e!4719063 () Bool)

(declare-fun tp!2397466 () Bool)

(assert (=> b!8010999 (= e!4719063 tp!2397466)))

(declare-fun b!8011000 () Bool)

(declare-fun e!4719066 () Bool)

(declare-fun tp_is_empty!53869 () Bool)

(declare-fun tp!2397462 () Bool)

(assert (=> b!8011000 (= e!4719066 (and tp_is_empty!53869 tp!2397462))))

(declare-fun b!8011001 () Bool)

(declare-fun e!4719065 () Bool)

(declare-fun tp!2397464 () Bool)

(assert (=> b!8011001 (= e!4719065 (and tp_is_empty!53869 tp!2397464))))

(declare-fun b!8011002 () Bool)

(declare-fun tp!2397460 () Bool)

(declare-fun tp!2397465 () Bool)

(assert (=> b!8011002 (= e!4719063 (and tp!2397460 tp!2397465))))

(declare-fun b!8011003 () Bool)

(declare-fun e!4719062 () Bool)

(assert (=> b!8011003 (= e!4719062 true)))

(declare-fun lt!2716831 () List!74892)

(declare-fun testedP!353 () List!74892)

(declare-fun getSuffix!3910 (List!74892 List!74892) List!74892)

(assert (=> b!8011003 (= lt!2716831 (getSuffix!3910 totalInput!1349 testedP!353))))

(declare-fun b!8011004 () Bool)

(declare-fun tp!2397463 () Bool)

(declare-fun tp!2397461 () Bool)

(assert (=> b!8011004 (= e!4719063 (and tp!2397463 tp!2397461))))

(declare-fun b!8011005 () Bool)

(declare-fun res!3167636 () Bool)

(assert (=> b!8011005 (=> (not res!3167636) (not e!4719064))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8011005 (= res!3167636 (= testedPSize!271 (size!43565 testedP!353)))))

(declare-fun b!8011006 () Bool)

(assert (=> b!8011006 (= e!4719064 (not e!4719062))))

(declare-fun res!3167638 () Bool)

(assert (=> b!8011006 (=> res!3167638 e!4719062)))

(declare-fun isPrefix!6715 (List!74892 List!74892) Bool)

(assert (=> b!8011006 (= res!3167638 (not (isPrefix!6715 testedP!353 totalInput!1349)))))

(declare-fun lt!2716829 () List!74892)

(assert (=> b!8011006 (isPrefix!6715 testedP!353 lt!2716829)))

(declare-datatypes ((Unit!170792 0))(
  ( (Unit!170793) )
))
(declare-fun lt!2716830 () Unit!170792)

(declare-fun testedSuffix!271 () List!74892)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3946 (List!74892 List!74892) Unit!170792)

(assert (=> b!8011006 (= lt!2716830 (lemmaConcatTwoListThenFirstIsPrefix!3946 testedP!353 testedSuffix!271))))

(declare-fun res!3167640 () Bool)

(declare-fun e!4719067 () Bool)

(assert (=> start!753836 (=> (not res!3167640) (not e!4719067))))

(declare-datatypes ((Regex!21663 0))(
  ( (ElementMatch!21663 (c!1470468 C!43664)) (Concat!30662 (regOne!43838 Regex!21663) (regTwo!43838 Regex!21663)) (EmptyExpr!21663) (Star!21663 (reg!21992 Regex!21663)) (EmptyLang!21663) (Union!21663 (regOne!43839 Regex!21663) (regTwo!43839 Regex!21663)) )
))
(declare-fun r!15422 () Regex!21663)

(declare-fun validRegex!11967 (Regex!21663) Bool)

(assert (=> start!753836 (= res!3167640 (validRegex!11967 r!15422))))

(assert (=> start!753836 e!4719067))

(assert (=> start!753836 e!4719065))

(assert (=> start!753836 true))

(assert (=> start!753836 e!4719066))

(assert (=> start!753836 e!4719063))

(declare-fun e!4719061 () Bool)

(assert (=> start!753836 e!4719061))

(declare-fun b!8010998 () Bool)

(assert (=> b!8010998 (= e!4719063 tp_is_empty!53869)))

(declare-fun b!8011007 () Bool)

(assert (=> b!8011007 (= e!4719067 e!4719064)))

(declare-fun res!3167639 () Bool)

(assert (=> b!8011007 (=> (not res!3167639) (not e!4719064))))

(assert (=> b!8011007 (= res!3167639 (= lt!2716829 totalInput!1349))))

(declare-fun ++!18489 (List!74892 List!74892) List!74892)

(assert (=> b!8011007 (= lt!2716829 (++!18489 testedP!353 testedSuffix!271))))

(declare-fun b!8011008 () Bool)

(declare-fun tp!2397459 () Bool)

(assert (=> b!8011008 (= e!4719061 (and tp_is_empty!53869 tp!2397459))))

(assert (= (and start!753836 res!3167640) b!8011007))

(assert (= (and b!8011007 res!3167639) b!8011005))

(assert (= (and b!8011005 res!3167636) b!8010997))

(assert (= (and b!8010997 res!3167637) b!8011006))

(assert (= (and b!8011006 (not res!3167638)) b!8011003))

(get-info :version)

(assert (= (and start!753836 ((_ is Cons!74768) totalInput!1349)) b!8011001))

(assert (= (and start!753836 ((_ is Cons!74768) testedSuffix!271)) b!8011000))

(assert (= (and start!753836 ((_ is ElementMatch!21663) r!15422)) b!8010998))

(assert (= (and start!753836 ((_ is Concat!30662) r!15422)) b!8011004))

(assert (= (and start!753836 ((_ is Star!21663) r!15422)) b!8010999))

(assert (= (and start!753836 ((_ is Union!21663) r!15422)) b!8011002))

(assert (= (and start!753836 ((_ is Cons!74768) testedP!353)) b!8011008))

(declare-fun m!8375138 () Bool)

(assert (=> b!8010997 m!8375138))

(declare-fun m!8375140 () Bool)

(assert (=> b!8011003 m!8375140))

(declare-fun m!8375142 () Bool)

(assert (=> b!8011005 m!8375142))

(declare-fun m!8375144 () Bool)

(assert (=> b!8011006 m!8375144))

(declare-fun m!8375146 () Bool)

(assert (=> b!8011006 m!8375146))

(declare-fun m!8375148 () Bool)

(assert (=> b!8011006 m!8375148))

(declare-fun m!8375150 () Bool)

(assert (=> start!753836 m!8375150))

(declare-fun m!8375152 () Bool)

(assert (=> b!8011007 m!8375152))

(check-sat tp_is_empty!53869 (not b!8011006) (not b!8011003) (not b!8011000) (not b!8011005) (not b!8011001) (not b!8011007) (not b!8011004) (not start!753836) (not b!8010997) (not b!8011008) (not b!8010999) (not b!8011002))
(check-sat)
