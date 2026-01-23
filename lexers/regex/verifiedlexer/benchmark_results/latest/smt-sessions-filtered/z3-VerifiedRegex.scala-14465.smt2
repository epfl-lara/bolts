; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753000 () Bool)

(assert start!753000)

(declare-fun b!8003789 () Bool)

(declare-fun e!4714813 () Bool)

(declare-fun tp_is_empty!53765 () Bool)

(declare-fun tp!2394570 () Bool)

(assert (=> b!8003789 (= e!4714813 (and tp_is_empty!53765 tp!2394570))))

(declare-fun b!8003790 () Bool)

(declare-fun res!3164915 () Bool)

(declare-fun e!4714817 () Bool)

(assert (=> b!8003790 (=> (not res!3164915) (not e!4714817))))

(declare-fun testedPSize!271 () Int)

(declare-datatypes ((C!43560 0))(
  ( (C!43561 (val!32328 Int)) )
))
(declare-datatypes ((List!74840 0))(
  ( (Nil!74716) (Cons!74716 (h!81164 C!43560) (t!390583 List!74840)) )
))
(declare-fun testedP!353 () List!74840)

(declare-fun size!43513 (List!74840) Int)

(assert (=> b!8003790 (= res!3164915 (= testedPSize!271 (size!43513 testedP!353)))))

(declare-fun res!3164912 () Bool)

(declare-fun e!4714811 () Bool)

(assert (=> start!753000 (=> (not res!3164912) (not e!4714811))))

(declare-datatypes ((Regex!21611 0))(
  ( (ElementMatch!21611 (c!1469436 C!43560)) (Concat!30610 (regOne!43734 Regex!21611) (regTwo!43734 Regex!21611)) (EmptyExpr!21611) (Star!21611 (reg!21940 Regex!21611)) (EmptyLang!21611) (Union!21611 (regOne!43735 Regex!21611) (regTwo!43735 Regex!21611)) )
))
(declare-fun r!15422 () Regex!21611)

(declare-fun validRegex!11915 (Regex!21611) Bool)

(assert (=> start!753000 (= res!3164912 (validRegex!11915 r!15422))))

(assert (=> start!753000 e!4714811))

(assert (=> start!753000 e!4714813))

(assert (=> start!753000 true))

(declare-fun e!4714812 () Bool)

(assert (=> start!753000 e!4714812))

(declare-fun e!4714815 () Bool)

(assert (=> start!753000 e!4714815))

(declare-fun e!4714816 () Bool)

(assert (=> start!753000 e!4714816))

(declare-fun b!8003791 () Bool)

(declare-fun res!3164913 () Bool)

(assert (=> b!8003791 (=> (not res!3164913) (not e!4714817))))

(declare-fun totalInputSize!629 () Int)

(declare-fun totalInput!1349 () List!74840)

(assert (=> b!8003791 (= res!3164913 (= totalInputSize!629 (size!43513 totalInput!1349)))))

(declare-fun b!8003792 () Bool)

(declare-fun e!4714814 () Bool)

(assert (=> b!8003792 (= e!4714817 (not e!4714814))))

(declare-fun res!3164916 () Bool)

(assert (=> b!8003792 (=> res!3164916 e!4714814)))

(declare-fun isPrefix!6665 (List!74840 List!74840) Bool)

(assert (=> b!8003792 (= res!3164916 (not (isPrefix!6665 testedP!353 totalInput!1349)))))

(declare-fun lt!2714043 () List!74840)

(assert (=> b!8003792 (isPrefix!6665 testedP!353 lt!2714043)))

(declare-datatypes ((Unit!170616 0))(
  ( (Unit!170617) )
))
(declare-fun lt!2714042 () Unit!170616)

(declare-fun testedSuffix!271 () List!74840)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3896 (List!74840 List!74840) Unit!170616)

(assert (=> b!8003792 (= lt!2714042 (lemmaConcatTwoListThenFirstIsPrefix!3896 testedP!353 testedSuffix!271))))

(declare-fun b!8003793 () Bool)

(declare-fun tp!2394568 () Bool)

(declare-fun tp!2394567 () Bool)

(assert (=> b!8003793 (= e!4714815 (and tp!2394568 tp!2394567))))

(declare-fun b!8003794 () Bool)

(assert (=> b!8003794 (= e!4714815 tp_is_empty!53765)))

(declare-fun b!8003795 () Bool)

(declare-fun tp!2394569 () Bool)

(assert (=> b!8003795 (= e!4714812 (and tp_is_empty!53765 tp!2394569))))

(declare-fun b!8003796 () Bool)

(declare-fun tp!2394566 () Bool)

(assert (=> b!8003796 (= e!4714816 (and tp_is_empty!53765 tp!2394566))))

(declare-fun b!8003797 () Bool)

(assert (=> b!8003797 (= e!4714814 true)))

(declare-fun lt!2714041 () Bool)

(declare-fun lostCause!2008 (Regex!21611) Bool)

(assert (=> b!8003797 (= lt!2714041 (lostCause!2008 r!15422))))

(declare-fun lt!2714044 () List!74840)

(assert (=> b!8003797 (and (= testedSuffix!271 lt!2714044) (= lt!2714044 testedSuffix!271))))

(declare-fun lt!2714045 () Unit!170616)

(declare-fun lemmaSamePrefixThenSameSuffix!3028 (List!74840 List!74840 List!74840 List!74840 List!74840) Unit!170616)

(assert (=> b!8003797 (= lt!2714045 (lemmaSamePrefixThenSameSuffix!3028 testedP!353 testedSuffix!271 testedP!353 lt!2714044 totalInput!1349))))

(declare-fun getSuffix!3862 (List!74840 List!74840) List!74840)

(assert (=> b!8003797 (= lt!2714044 (getSuffix!3862 totalInput!1349 testedP!353))))

(declare-fun b!8003798 () Bool)

(assert (=> b!8003798 (= e!4714811 e!4714817)))

(declare-fun res!3164914 () Bool)

(assert (=> b!8003798 (=> (not res!3164914) (not e!4714817))))

(assert (=> b!8003798 (= res!3164914 (= lt!2714043 totalInput!1349))))

(declare-fun ++!18437 (List!74840 List!74840) List!74840)

(assert (=> b!8003798 (= lt!2714043 (++!18437 testedP!353 testedSuffix!271))))

(declare-fun b!8003799 () Bool)

(declare-fun tp!2394564 () Bool)

(assert (=> b!8003799 (= e!4714815 tp!2394564)))

(declare-fun b!8003800 () Bool)

(declare-fun tp!2394565 () Bool)

(declare-fun tp!2394563 () Bool)

(assert (=> b!8003800 (= e!4714815 (and tp!2394565 tp!2394563))))

(assert (= (and start!753000 res!3164912) b!8003798))

(assert (= (and b!8003798 res!3164914) b!8003790))

(assert (= (and b!8003790 res!3164915) b!8003791))

(assert (= (and b!8003791 res!3164913) b!8003792))

(assert (= (and b!8003792 (not res!3164916)) b!8003797))

(get-info :version)

(assert (= (and start!753000 ((_ is Cons!74716) totalInput!1349)) b!8003789))

(assert (= (and start!753000 ((_ is Cons!74716) testedSuffix!271)) b!8003795))

(assert (= (and start!753000 ((_ is ElementMatch!21611) r!15422)) b!8003794))

(assert (= (and start!753000 ((_ is Concat!30610) r!15422)) b!8003793))

(assert (= (and start!753000 ((_ is Star!21611) r!15422)) b!8003799))

(assert (= (and start!753000 ((_ is Union!21611) r!15422)) b!8003800))

(assert (= (and start!753000 ((_ is Cons!74716) testedP!353)) b!8003796))

(declare-fun m!8369638 () Bool)

(assert (=> b!8003791 m!8369638))

(declare-fun m!8369640 () Bool)

(assert (=> b!8003797 m!8369640))

(declare-fun m!8369642 () Bool)

(assert (=> b!8003797 m!8369642))

(declare-fun m!8369644 () Bool)

(assert (=> b!8003797 m!8369644))

(declare-fun m!8369646 () Bool)

(assert (=> b!8003798 m!8369646))

(declare-fun m!8369648 () Bool)

(assert (=> start!753000 m!8369648))

(declare-fun m!8369650 () Bool)

(assert (=> b!8003792 m!8369650))

(declare-fun m!8369652 () Bool)

(assert (=> b!8003792 m!8369652))

(declare-fun m!8369654 () Bool)

(assert (=> b!8003792 m!8369654))

(declare-fun m!8369656 () Bool)

(assert (=> b!8003790 m!8369656))

(check-sat (not b!8003792) (not b!8003795) tp_is_empty!53765 (not b!8003798) (not b!8003797) (not b!8003791) (not b!8003790) (not start!753000) (not b!8003800) (not b!8003793) (not b!8003789) (not b!8003799) (not b!8003796))
(check-sat)
