; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752996 () Bool)

(assert start!752996)

(declare-fun b!8003717 () Bool)

(declare-fun res!3164883 () Bool)

(declare-fun e!4714772 () Bool)

(assert (=> b!8003717 (=> (not res!3164883) (not e!4714772))))

(declare-fun totalInputSize!629 () Int)

(declare-datatypes ((C!43556 0))(
  ( (C!43557 (val!32326 Int)) )
))
(declare-datatypes ((List!74838 0))(
  ( (Nil!74714) (Cons!74714 (h!81162 C!43556) (t!390581 List!74838)) )
))
(declare-fun totalInput!1349 () List!74838)

(declare-fun size!43511 (List!74838) Int)

(assert (=> b!8003717 (= res!3164883 (= totalInputSize!629 (size!43511 totalInput!1349)))))

(declare-fun b!8003718 () Bool)

(declare-fun e!4714771 () Bool)

(declare-fun tp_is_empty!53761 () Bool)

(declare-fun tp!2394515 () Bool)

(assert (=> b!8003718 (= e!4714771 (and tp_is_empty!53761 tp!2394515))))

(declare-fun b!8003719 () Bool)

(declare-fun e!4714774 () Bool)

(assert (=> b!8003719 (= e!4714774 tp_is_empty!53761)))

(declare-fun b!8003720 () Bool)

(declare-fun e!4714770 () Bool)

(assert (=> b!8003720 (= e!4714770 e!4714772)))

(declare-fun res!3164882 () Bool)

(assert (=> b!8003720 (=> (not res!3164882) (not e!4714772))))

(declare-fun lt!2714015 () List!74838)

(assert (=> b!8003720 (= res!3164882 (= lt!2714015 totalInput!1349))))

(declare-fun testedP!353 () List!74838)

(declare-fun testedSuffix!271 () List!74838)

(declare-fun ++!18435 (List!74838 List!74838) List!74838)

(assert (=> b!8003720 (= lt!2714015 (++!18435 testedP!353 testedSuffix!271))))

(declare-fun b!8003722 () Bool)

(declare-fun e!4714775 () Bool)

(assert (=> b!8003722 (= e!4714775 true)))

(declare-fun lt!2714014 () List!74838)

(assert (=> b!8003722 (= testedSuffix!271 lt!2714014)))

(declare-datatypes ((Unit!170612 0))(
  ( (Unit!170613) )
))
(declare-fun lt!2714012 () Unit!170612)

(declare-fun lemmaSamePrefixThenSameSuffix!3026 (List!74838 List!74838 List!74838 List!74838 List!74838) Unit!170612)

(assert (=> b!8003722 (= lt!2714012 (lemmaSamePrefixThenSameSuffix!3026 testedP!353 testedSuffix!271 testedP!353 lt!2714014 totalInput!1349))))

(declare-fun getSuffix!3860 (List!74838 List!74838) List!74838)

(assert (=> b!8003722 (= lt!2714014 (getSuffix!3860 totalInput!1349 testedP!353))))

(declare-fun b!8003723 () Bool)

(declare-fun tp!2394517 () Bool)

(assert (=> b!8003723 (= e!4714774 tp!2394517)))

(declare-fun b!8003724 () Bool)

(declare-fun tp!2394518 () Bool)

(declare-fun tp!2394516 () Bool)

(assert (=> b!8003724 (= e!4714774 (and tp!2394518 tp!2394516))))

(declare-fun b!8003725 () Bool)

(declare-fun tp!2394519 () Bool)

(declare-fun tp!2394520 () Bool)

(assert (=> b!8003725 (= e!4714774 (and tp!2394519 tp!2394520))))

(declare-fun b!8003726 () Bool)

(assert (=> b!8003726 (= e!4714772 (not e!4714775))))

(declare-fun res!3164884 () Bool)

(assert (=> b!8003726 (=> res!3164884 e!4714775)))

(declare-fun isPrefix!6663 (List!74838 List!74838) Bool)

(assert (=> b!8003726 (= res!3164884 (not (isPrefix!6663 testedP!353 totalInput!1349)))))

(assert (=> b!8003726 (isPrefix!6663 testedP!353 lt!2714015)))

(declare-fun lt!2714013 () Unit!170612)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3894 (List!74838 List!74838) Unit!170612)

(assert (=> b!8003726 (= lt!2714013 (lemmaConcatTwoListThenFirstIsPrefix!3894 testedP!353 testedSuffix!271))))

(declare-fun b!8003727 () Bool)

(declare-fun res!3164886 () Bool)

(assert (=> b!8003727 (=> (not res!3164886) (not e!4714772))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8003727 (= res!3164886 (= testedPSize!271 (size!43511 testedP!353)))))

(declare-fun b!8003728 () Bool)

(declare-fun e!4714773 () Bool)

(declare-fun tp!2394522 () Bool)

(assert (=> b!8003728 (= e!4714773 (and tp_is_empty!53761 tp!2394522))))

(declare-fun b!8003721 () Bool)

(declare-fun e!4714769 () Bool)

(declare-fun tp!2394521 () Bool)

(assert (=> b!8003721 (= e!4714769 (and tp_is_empty!53761 tp!2394521))))

(declare-fun res!3164885 () Bool)

(assert (=> start!752996 (=> (not res!3164885) (not e!4714770))))

(declare-datatypes ((Regex!21609 0))(
  ( (ElementMatch!21609 (c!1469434 C!43556)) (Concat!30608 (regOne!43730 Regex!21609) (regTwo!43730 Regex!21609)) (EmptyExpr!21609) (Star!21609 (reg!21938 Regex!21609)) (EmptyLang!21609) (Union!21609 (regOne!43731 Regex!21609) (regTwo!43731 Regex!21609)) )
))
(declare-fun r!15422 () Regex!21609)

(declare-fun validRegex!11913 (Regex!21609) Bool)

(assert (=> start!752996 (= res!3164885 (validRegex!11913 r!15422))))

(assert (=> start!752996 e!4714770))

(assert (=> start!752996 e!4714769))

(assert (=> start!752996 true))

(assert (=> start!752996 e!4714773))

(assert (=> start!752996 e!4714774))

(assert (=> start!752996 e!4714771))

(assert (= (and start!752996 res!3164885) b!8003720))

(assert (= (and b!8003720 res!3164882) b!8003727))

(assert (= (and b!8003727 res!3164886) b!8003717))

(assert (= (and b!8003717 res!3164883) b!8003726))

(assert (= (and b!8003726 (not res!3164884)) b!8003722))

(get-info :version)

(assert (= (and start!752996 ((_ is Cons!74714) totalInput!1349)) b!8003721))

(assert (= (and start!752996 ((_ is Cons!74714) testedSuffix!271)) b!8003728))

(assert (= (and start!752996 ((_ is ElementMatch!21609) r!15422)) b!8003719))

(assert (= (and start!752996 ((_ is Concat!30608) r!15422)) b!8003724))

(assert (= (and start!752996 ((_ is Star!21609) r!15422)) b!8003723))

(assert (= (and start!752996 ((_ is Union!21609) r!15422)) b!8003725))

(assert (= (and start!752996 ((_ is Cons!74714) testedP!353)) b!8003718))

(declare-fun m!8369600 () Bool)

(assert (=> b!8003726 m!8369600))

(declare-fun m!8369602 () Bool)

(assert (=> b!8003726 m!8369602))

(declare-fun m!8369604 () Bool)

(assert (=> b!8003726 m!8369604))

(declare-fun m!8369606 () Bool)

(assert (=> b!8003722 m!8369606))

(declare-fun m!8369608 () Bool)

(assert (=> b!8003722 m!8369608))

(declare-fun m!8369610 () Bool)

(assert (=> b!8003727 m!8369610))

(declare-fun m!8369612 () Bool)

(assert (=> start!752996 m!8369612))

(declare-fun m!8369614 () Bool)

(assert (=> b!8003717 m!8369614))

(declare-fun m!8369616 () Bool)

(assert (=> b!8003720 m!8369616))

(check-sat (not b!8003717) (not b!8003724) (not b!8003725) (not b!8003726) (not start!752996) tp_is_empty!53761 (not b!8003722) (not b!8003720) (not b!8003721) (not b!8003727) (not b!8003728) (not b!8003718) (not b!8003723))
(check-sat)
